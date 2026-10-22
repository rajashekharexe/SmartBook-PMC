package com.evernote.android.job;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.text.TextUtils;
import android.util.SparseArray;
import com.evernote.android.job.Job;
import com.evernote.android.job.JobCreator;
import com.evernote.android.job.JobProxy;
import com.evernote.android.job.util.JobCat;
import com.evernote.android.job.util.JobPreconditions;
import com.evernote.android.job.util.JobUtil;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* loaded from: classes.dex */
public final class JobManager {
    private static final JobCat CAT = new JobCat("JobManager");
    private static volatile JobManager instance;
    private final Context mContext;
    private final JobCreatorHolder mJobCreatorHolder = new JobCreatorHolder();
    private final JobExecutor mJobExecutor = new JobExecutor();
    private final JobStorage mJobStorage;

    public static JobManager create(Context context) throws JobManagerCreateException {
        if (instance == null) {
            synchronized (JobManager.class) {
                if (instance == null) {
                    JobPreconditions.checkNotNull(context, "Context cannot be null");
                    if (context.getApplicationContext() != null) {
                        context = context.getApplicationContext();
                    }
                    JobApi jobApi = JobApi.getDefault(context);
                    if (jobApi == JobApi.V_14 && !jobApi.isSupported(context)) {
                        throw new JobManagerCreateException("All APIs are disabled, cannot schedule any job");
                    }
                    instance = new JobManager(context);
                    if (!JobUtil.hasWakeLockPermission(context)) {
                        CAT.w("No wake lock permission");
                    }
                    if (!JobUtil.hasBootPermission(context)) {
                        CAT.w("No boot permission");
                    }
                    sendAddJobCreatorIntent(context);
                }
            }
        }
        return instance;
    }

    public static JobManager instance() {
        if (instance == null) {
            synchronized (JobManager.class) {
                if (instance == null) {
                    throw new IllegalStateException("You need to call create() at least once to create the singleton");
                }
            }
        }
        return instance;
    }

    private JobManager(Context context) {
        this.mContext = context;
        this.mJobStorage = new JobStorage(context);
        if (JobConfig.isSkipJobReschedule()) {
            return;
        }
        JobRescheduleService.startService(context);
    }

    public synchronized void schedule(JobRequest jobRequest) {
        if (this.mJobCreatorHolder.isEmpty()) {
            CAT.w("you haven't registered a JobCreator with addJobCreator(), it's likely that your job never will be executed");
        }
        if (jobRequest.getScheduledAt() > 0) {
            return;
        }
        if (jobRequest.isUpdateCurrent()) {
            cancelAllForTag(jobRequest.getTag());
        }
        JobProxy.Common.cleanUpOrphanedJob(this.mContext, jobRequest.getJobId());
        JobApi jobApi = jobRequest.getJobApi();
        boolean isPeriodic = jobRequest.isPeriodic();
        boolean z = isPeriodic && jobApi.isFlexSupport() && jobRequest.getFlexMs() < jobRequest.getIntervalMs();
        jobRequest.setScheduledAt(JobConfig.getClock().currentTimeMillis());
        jobRequest.setFlexSupport(z);
        this.mJobStorage.put(jobRequest);
        try {
            try {
                scheduleWithApi(jobRequest, jobApi, isPeriodic, z);
            } catch (Exception e) {
                if (jobApi == JobApi.V_14 || jobApi == JobApi.V_19) {
                    this.mJobStorage.remove(jobRequest);
                    throw e;
                }
                try {
                    scheduleWithApi(jobRequest, JobApi.V_19.isSupported(this.mContext) ? JobApi.V_19 : JobApi.V_14, isPeriodic, z);
                } catch (Exception e2) {
                    this.mJobStorage.remove(jobRequest);
                    throw e2;
                }
            }
        } catch (JobProxyIllegalStateException unused) {
            jobApi.invalidateCachedProxy();
            scheduleWithApi(jobRequest, jobApi, isPeriodic, z);
        } catch (Exception e3) {
            this.mJobStorage.remove(jobRequest);
            throw e3;
        }
    }

    private void scheduleWithApi(JobRequest jobRequest, JobApi jobApi, boolean z, boolean z2) {
        JobProxy jobProxy = getJobProxy(jobApi);
        if (!z) {
            jobProxy.plantOneOff(jobRequest);
        } else if (z2) {
            jobProxy.plantPeriodicFlexSupport(jobRequest);
        } else {
            jobProxy.plantPeriodic(jobRequest);
        }
    }

    public JobRequest getJobRequest(int i) {
        JobRequest jobRequest = getJobRequest(i, false);
        if (jobRequest == null || !jobRequest.isTransient() || jobRequest.getJobApi().getProxy(this.mContext).isPlatformJobScheduled(jobRequest)) {
            return jobRequest;
        }
        getJobStorage().remove(jobRequest);
        return null;
    }

    JobRequest getJobRequest(int i, boolean z) {
        JobRequest jobRequest = this.mJobStorage.get(i);
        if (z || jobRequest == null || !jobRequest.isStarted()) {
            return jobRequest;
        }
        return null;
    }

    public Set<JobRequest> getAllJobRequests() {
        return getAllJobRequests(null, false, true);
    }

    public Set<JobRequest> getAllJobRequestsForTag(String str) {
        return getAllJobRequests(str, false, true);
    }

    Set<JobRequest> getAllJobRequests(String str, boolean z, boolean z2) {
        Set<JobRequest> allJobRequests = this.mJobStorage.getAllJobRequests(str, z);
        if (z2) {
            Iterator<JobRequest> it = allJobRequests.iterator();
            while (it.hasNext()) {
                JobRequest next = it.next();
                if (next.isTransient() && !next.getJobApi().getProxy(this.mContext).isPlatformJobScheduled(next)) {
                    this.mJobStorage.remove(next);
                    it.remove();
                }
            }
        }
        return allJobRequests;
    }

    public Job getJob(int i) {
        return this.mJobExecutor.getJob(i);
    }

    public Set<Job> getAllJobs() {
        return this.mJobExecutor.getAllJobs();
    }

    public Set<Job> getAllJobsForTag(String str) {
        return this.mJobExecutor.getAllJobsForTag(str);
    }

    public SparseArray<Job.Result> getAllJobResults() {
        return this.mJobExecutor.getAllJobResults();
    }

    public boolean cancel(int i) {
        boolean cancelInner = cancelInner(getJobRequest(i, true)) | cancelInner(getJob(i));
        JobProxy.Common.cleanUpOrphanedJob(this.mContext, i);
        return cancelInner;
    }

    public int cancelAll() {
        return cancelAllInner(null);
    }

    public int cancelAllForTag(String str) {
        return cancelAllInner(str);
    }

    private boolean cancelInner(JobRequest jobRequest) {
        if (jobRequest == null) {
            return false;
        }
        CAT.i("Found pending job %s, canceling", jobRequest);
        getJobProxy(jobRequest.getJobApi()).cancel(jobRequest.getJobId());
        getJobStorage().remove(jobRequest);
        jobRequest.setScheduledAt(0L);
        return true;
    }

    private boolean cancelInner(Job job) {
        if (job == null || !job.cancel(true)) {
            return false;
        }
        CAT.i("Cancel running %s", job);
        return true;
    }

    private synchronized int cancelAllInner(String str) {
        int i;
        i = 0;
        Iterator<JobRequest> it = getAllJobRequests(str, true, false).iterator();
        while (it.hasNext()) {
            if (cancelInner(it.next())) {
                i++;
            }
        }
        Iterator<Job> it2 = (TextUtils.isEmpty(str) ? getAllJobs() : getAllJobsForTag(str)).iterator();
        while (it2.hasNext()) {
            if (cancelInner(it2.next())) {
                i++;
            }
        }
        return i;
    }

    public void addJobCreator(JobCreator jobCreator) {
        this.mJobCreatorHolder.addJobCreator(jobCreator);
    }

    public void removeJobCreator(JobCreator jobCreator) {
        this.mJobCreatorHolder.removeJobCreator(jobCreator);
    }

    JobStorage getJobStorage() {
        return this.mJobStorage;
    }

    JobExecutor getJobExecutor() {
        return this.mJobExecutor;
    }

    JobCreatorHolder getJobCreatorHolder() {
        return this.mJobCreatorHolder;
    }

    Context getContext() {
        return this.mContext;
    }

    void destroy() {
        synchronized (JobManager.class) {
            instance = null;
            for (JobApi jobApi : JobApi.values()) {
                jobApi.invalidateCachedProxy();
            }
        }
    }

    JobProxy getJobProxy(JobApi jobApi) {
        return jobApi.getProxy(this.mContext);
    }

    private static void sendAddJobCreatorIntent(Context context) {
        List<ResolveInfo> emptyList;
        String packageName = context.getPackageName();
        Intent intent = new Intent(JobCreator.ACTION_ADD_JOB_CREATOR);
        intent.setPackage(packageName);
        try {
            emptyList = context.getPackageManager().queryBroadcastReceivers(intent, 0);
        } catch (Exception unused) {
            emptyList = Collections.emptyList();
        }
        Iterator<ResolveInfo> it = emptyList.iterator();
        while (it.hasNext()) {
            ActivityInfo activityInfo = it.next().activityInfo;
            if (activityInfo != null && !activityInfo.exported && packageName.equals(activityInfo.packageName) && !TextUtils.isEmpty(activityInfo.name)) {
                try {
                    ((JobCreator.AddJobCreatorReceiver) Class.forName(activityInfo.name).newInstance()).addJobCreator(context, instance);
                } catch (Exception unused2) {
                }
            }
        }
    }
}

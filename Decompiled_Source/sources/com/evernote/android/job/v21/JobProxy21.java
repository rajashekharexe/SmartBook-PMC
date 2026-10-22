package com.evernote.android.job.v21;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import com.evernote.android.job.JobProxy;
import com.evernote.android.job.JobProxyIllegalStateException;
import com.evernote.android.job.JobRequest;
import com.evernote.android.job.util.JobCat;
import com.evernote.android.job.util.JobUtil;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class JobProxy21 implements JobProxy {
    private static final int ERROR_BOOT_PERMISSION = -123;
    private static final String TAG = "JobProxy21";
    protected final JobCat mCat;
    protected final Context mContext;

    public JobProxy21(Context context) {
        this(context, TAG);
    }

    protected JobProxy21(Context context, String str) {
        this.mContext = context;
        this.mCat = new JobCat(str);
    }

    @Override // com.evernote.android.job.JobProxy
    public void plantOneOff(JobRequest jobRequest) {
        long startMs = JobProxy.Common.getStartMs(jobRequest);
        long endMs = JobProxy.Common.getEndMs(jobRequest, true);
        int schedule = schedule(createBuilderOneOff(createBaseBuilder(jobRequest, true), startMs, endMs).build());
        if (schedule == ERROR_BOOT_PERMISSION) {
            schedule = schedule(createBuilderOneOff(createBaseBuilder(jobRequest, false), startMs, endMs).build());
        }
        this.mCat.d("Schedule one-off jobInfo %s, %s, start %s, end %s (from now), reschedule count %d", scheduleResultToString(schedule), jobRequest, JobUtil.timeToString(startMs), JobUtil.timeToString(JobProxy.Common.getEndMs(jobRequest, false)), Integer.valueOf(JobProxy.Common.getRescheduleCount(jobRequest)));
    }

    @Override // com.evernote.android.job.JobProxy
    public void plantPeriodic(JobRequest jobRequest) {
        long intervalMs = jobRequest.getIntervalMs();
        long flexMs = jobRequest.getFlexMs();
        int schedule = schedule(createBuilderPeriodic(createBaseBuilder(jobRequest, true), intervalMs, flexMs).build());
        if (schedule == ERROR_BOOT_PERMISSION) {
            schedule = schedule(createBuilderPeriodic(createBaseBuilder(jobRequest, false), intervalMs, flexMs).build());
        }
        this.mCat.d("Schedule periodic jobInfo %s, %s, interval %s, flex %s", scheduleResultToString(schedule), jobRequest, JobUtil.timeToString(intervalMs), JobUtil.timeToString(flexMs));
    }

    @Override // com.evernote.android.job.JobProxy
    public void plantPeriodicFlexSupport(JobRequest jobRequest) {
        long startMsSupportFlex = JobProxy.Common.getStartMsSupportFlex(jobRequest);
        long endMsSupportFlex = JobProxy.Common.getEndMsSupportFlex(jobRequest);
        int schedule = schedule(createBuilderOneOff(createBaseBuilder(jobRequest, true), startMsSupportFlex, endMsSupportFlex).build());
        if (schedule == ERROR_BOOT_PERMISSION) {
            schedule = schedule(createBuilderOneOff(createBaseBuilder(jobRequest, false), startMsSupportFlex, endMsSupportFlex).build());
        }
        this.mCat.d("Schedule periodic (flex support) jobInfo %s, %s, start %s, end %s, flex %s", scheduleResultToString(schedule), jobRequest, JobUtil.timeToString(startMsSupportFlex), JobUtil.timeToString(endMsSupportFlex), JobUtil.timeToString(jobRequest.getFlexMs()));
    }

    @Override // com.evernote.android.job.JobProxy
    public void cancel(int i) {
        try {
            getJobScheduler().cancel(i);
        } catch (Exception e) {
            this.mCat.e(e);
        }
        TransientBundleCompat.cancel(this.mContext, i, null);
    }

    @Override // com.evernote.android.job.JobProxy
    public boolean isPlatformJobScheduled(JobRequest jobRequest) {
        try {
            List<JobInfo> allPendingJobs = getJobScheduler().getAllPendingJobs();
            if (allPendingJobs != null && !allPendingJobs.isEmpty()) {
                Iterator<JobInfo> it = allPendingJobs.iterator();
                while (it.hasNext()) {
                    if (isJobInfoScheduled(it.next(), jobRequest)) {
                        return true;
                    }
                }
            }
            return false;
        } catch (Exception e) {
            this.mCat.e(e);
            return false;
        }
    }

    protected boolean isJobInfoScheduled(JobInfo jobInfo, JobRequest jobRequest) {
        if (jobInfo == null || jobInfo.getId() != jobRequest.getJobId()) {
            return false;
        }
        return !jobRequest.isTransient() || TransientBundleCompat.isScheduled(this.mContext, jobRequest.getJobId());
    }

    protected JobInfo.Builder createBaseBuilder(JobRequest jobRequest, boolean z) {
        return setTransientBundle(jobRequest, new JobInfo.Builder(jobRequest.getJobId(), new ComponentName(this.mContext, (Class<?>) PlatformJobService.class)).setRequiresCharging(jobRequest.requiresCharging()).setRequiresDeviceIdle(jobRequest.requiresDeviceIdle()).setRequiredNetworkType(convertNetworkType(jobRequest.requiredNetworkType())).setPersisted(z && !jobRequest.isTransient() && JobUtil.hasBootPermission(this.mContext)));
    }

    protected JobInfo.Builder createBuilderOneOff(JobInfo.Builder builder, long j, long j2) {
        return builder.setMinimumLatency(j).setOverrideDeadline(j2);
    }

    protected JobInfo.Builder createBuilderPeriodic(JobInfo.Builder builder, long j, long j2) {
        return builder.setPeriodic(j);
    }

    protected JobInfo.Builder setTransientBundle(JobRequest jobRequest, JobInfo.Builder builder) {
        if (jobRequest.isTransient()) {
            TransientBundleCompat.persistBundle(this.mContext, jobRequest);
        }
        return builder;
    }

    /* renamed from: com.evernote.android.job.v21.JobProxy21$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$evernote$android$job$JobRequest$NetworkType;

        static {
            int[] iArr = new int[JobRequest.NetworkType.values().length];
            $SwitchMap$com$evernote$android$job$JobRequest$NetworkType = iArr;
            try {
                iArr[JobRequest.NetworkType.ANY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$evernote$android$job$JobRequest$NetworkType[JobRequest.NetworkType.CONNECTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$evernote$android$job$JobRequest$NetworkType[JobRequest.NetworkType.UNMETERED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$evernote$android$job$JobRequest$NetworkType[JobRequest.NetworkType.NOT_ROAMING.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$evernote$android$job$JobRequest$NetworkType[JobRequest.NetworkType.METERED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    protected int convertNetworkType(JobRequest.NetworkType networkType) {
        int i = AnonymousClass1.$SwitchMap$com$evernote$android$job$JobRequest$NetworkType[networkType.ordinal()];
        if (i == 1) {
            return 0;
        }
        if (i == 2) {
            return 1;
        }
        if (i == 3 || i == 4) {
            return 2;
        }
        if (i == 5) {
            return 1;
        }
        throw new IllegalStateException("not implemented");
    }

    protected final JobScheduler getJobScheduler() {
        return (JobScheduler) this.mContext.getSystemService("jobscheduler");
    }

    protected final int schedule(JobInfo jobInfo) {
        JobScheduler jobScheduler = getJobScheduler();
        if (jobScheduler == null) {
            throw new JobProxyIllegalStateException("JobScheduler is null");
        }
        try {
            return jobScheduler.schedule(jobInfo);
        } catch (IllegalArgumentException e) {
            this.mCat.e(e);
            String message = e.getMessage();
            if (message != null && message.contains("RECEIVE_BOOT_COMPLETED")) {
                return ERROR_BOOT_PERMISSION;
            }
            if (message != null && message.contains("No such service ComponentInfo")) {
                throw new JobProxyIllegalStateException(e);
            }
            throw e;
        } catch (NullPointerException e2) {
            this.mCat.e(e2);
            throw new JobProxyIllegalStateException(e2);
        }
    }

    protected static String scheduleResultToString(int i) {
        return i == 1 ? FirebaseAnalytics.Param.SUCCESS : "failure";
    }
}

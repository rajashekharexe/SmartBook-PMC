package com.evernote.android.job;

import android.content.Context;
import android.os.Bundle;
import android.os.PowerManager;
import android.util.LruCache;
import android.util.SparseArray;
import com.evernote.android.job.Job;
import com.evernote.android.job.util.JobCat;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
class JobExecutor {
    private static final JobCat CAT = new JobCat("JobExecutor");
    private static final long WAKE_LOCK_TIMEOUT = TimeUnit.MINUTES.toMillis(3);
    private final SparseArray<Job> mJobs = new SparseArray<>();
    private final LruCache<Integer, WeakReference<Job>> mFinishedJobsCache = new LruCache<>(20);
    private final SparseArray<Job.Result> mFinishedJobResults = new SparseArray<>();
    private final Set<JobRequest> mStartingRequests = new HashSet();

    public synchronized Future<Job.Result> execute(Context context, JobRequest jobRequest, Job job, Bundle bundle) {
        this.mStartingRequests.remove(jobRequest);
        if (job == null) {
            CAT.w("JobCreator returned null for tag %s", jobRequest.getTag());
            return null;
        }
        if (job.isFinished()) {
            throw new IllegalStateException(String.format(Locale.ENGLISH, "Job for tag %s was already run, a creator should always create a new Job instance", jobRequest.getTag()));
        }
        job.setContext(context).setRequest(jobRequest, bundle);
        CAT.i("Executing %s, context %s", jobRequest, context.getClass().getSimpleName());
        this.mJobs.put(jobRequest.getJobId(), job);
        return JobConfig.getExecutorService().submit(new JobCallable(job));
    }

    public synchronized Job getJob(int i) {
        Job job = this.mJobs.get(i);
        if (job != null) {
            return job;
        }
        WeakReference<Job> weakReference = this.mFinishedJobsCache.get(Integer.valueOf(i));
        return weakReference != null ? weakReference.get() : null;
    }

    public synchronized Set<Job> getAllJobs() {
        return getAllJobsForTag(null);
    }

    public synchronized Set<Job> getAllJobsForTag(String str) {
        HashSet hashSet;
        hashSet = new HashSet();
        for (int i = 0; i < this.mJobs.size(); i++) {
            Job valueAt = this.mJobs.valueAt(i);
            if (str == null || str.equals(valueAt.getParams().getTag())) {
                hashSet.add(valueAt);
            }
        }
        Iterator<WeakReference<Job>> it = this.mFinishedJobsCache.snapshot().values().iterator();
        while (it.hasNext()) {
            Job job = it.next().get();
            if (job != null && (str == null || str.equals(job.getParams().getTag()))) {
                hashSet.add(job);
            }
        }
        return hashSet;
    }

    public SparseArray<Job.Result> getAllJobResults() {
        return this.mFinishedJobResults.clone();
    }

    public synchronized void markJobRequestStarting(JobRequest jobRequest) {
        this.mStartingRequests.add(jobRequest);
    }

    public synchronized boolean isRequestStarting(JobRequest jobRequest) {
        boolean z;
        if (jobRequest != null) {
            z = this.mStartingRequests.contains(jobRequest);
        }
        return z;
    }

    synchronized void markJobAsFinished(Job job) {
        int id = job.getParams().getId();
        this.mJobs.remove(id);
        cleanUpRoutine(this.mFinishedJobsCache);
        this.mFinishedJobResults.put(id, job.getResult());
        this.mFinishedJobsCache.put(Integer.valueOf(id), new WeakReference<>(job));
    }

    void cleanUpRoutine(LruCache<Integer, WeakReference<Job>> lruCache) {
        HashMap hashMap = new HashMap(lruCache.snapshot());
        for (Integer num : hashMap.keySet()) {
            if (hashMap.get(num) == null || ((WeakReference) hashMap.get(num)).get() == null) {
                lruCache.remove(num);
            }
        }
    }

    private final class JobCallable implements Callable<Job.Result> {
        private final Job mJob;
        private final PowerManager.WakeLock mWakeLock;

        private JobCallable(Job job) {
            this.mJob = job;
            this.mWakeLock = WakeLockUtil.acquireWakeLock(job.getContext(), "JobExecutor", JobExecutor.WAKE_LOCK_TIMEOUT);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public Job.Result call() throws Exception {
            try {
                WakeLockUtil.acquireWakeLock(this.mJob.getContext(), this.mWakeLock, JobExecutor.WAKE_LOCK_TIMEOUT);
                Job.Result runJob = runJob();
                JobExecutor.this.markJobAsFinished(this.mJob);
                PowerManager.WakeLock wakeLock = this.mWakeLock;
                if (wakeLock == null || !wakeLock.isHeld()) {
                    JobExecutor.CAT.w("Wake lock was not held after job %s was done. The job took too long to complete. This could have unintended side effects on your app.", this.mJob);
                }
                WakeLockUtil.releaseWakeLock(this.mWakeLock);
                return runJob;
            } catch (Throwable th) {
                JobExecutor.this.markJobAsFinished(this.mJob);
                PowerManager.WakeLock wakeLock2 = this.mWakeLock;
                if (wakeLock2 == null || !wakeLock2.isHeld()) {
                    JobExecutor.CAT.w("Wake lock was not held after job %s was done. The job took too long to complete. This could have unintended side effects on your app.", this.mJob);
                }
                WakeLockUtil.releaseWakeLock(this.mWakeLock);
                throw th;
            }
        }

        private Job.Result runJob() {
            try {
                Job.Result runJob = this.mJob.runJob();
                JobExecutor.CAT.i("Finished %s", this.mJob);
                handleResult(this.mJob, runJob);
                return runJob;
            } catch (Throwable th) {
                JobExecutor.CAT.e(th, "Crashed %s", this.mJob);
                return this.mJob.getResult();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:22:0x003a, code lost:
        
            if (com.evernote.android.job.Job.Result.SUCCESS.equals(r6) == false) goto L15;
         */
        /* JADX WARN: Removed duplicated region for block: B:12:0x0047  */
        /* JADX WARN: Removed duplicated region for block: B:18:? A[RETURN, SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private void handleResult(com.evernote.android.job.Job r5, com.evernote.android.job.Job.Result r6) {
            /*
                r4 = this;
                com.evernote.android.job.Job r0 = r4.mJob
                com.evernote.android.job.Job$Params r0 = r0.getParams()
                com.evernote.android.job.JobRequest r0 = r0.getRequest()
                boolean r1 = r0.isPeriodic()
                r2 = 1
                r3 = 0
                if (r1 != 0) goto L2e
                com.evernote.android.job.Job$Result r1 = com.evernote.android.job.Job.Result.RESCHEDULE
                boolean r1 = r1.equals(r6)
                if (r1 == 0) goto L2e
                boolean r1 = r5.isDeleted()
                if (r1 != 0) goto L2e
                com.evernote.android.job.JobRequest r0 = r0.reschedule(r2, r2)
                com.evernote.android.job.Job r6 = r4.mJob
                int r1 = r0.getJobId()
                r6.onReschedule(r1)
                goto L3d
            L2e:
                boolean r1 = r0.isPeriodic()
                if (r1 == 0) goto L40
                com.evernote.android.job.Job$Result r1 = com.evernote.android.job.Job.Result.SUCCESS
                boolean r6 = r1.equals(r6)
                if (r6 != 0) goto L3d
                goto L3e
            L3d:
                r2 = 0
            L3e:
                r3 = 1
                goto L41
            L40:
                r2 = 0
            L41:
                boolean r5 = r5.isDeleted()
                if (r5 != 0) goto L4e
                if (r2 != 0) goto L4b
                if (r3 == 0) goto L4e
            L4b:
                r0.updateStats(r2, r3)
            L4e:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.evernote.android.job.JobExecutor.JobCallable.handleResult(com.evernote.android.job.Job, com.evernote.android.job.Job$Result):void");
        }
    }
}

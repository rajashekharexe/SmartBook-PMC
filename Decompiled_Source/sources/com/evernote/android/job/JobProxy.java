package com.evernote.android.job;

import android.app.Service;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import com.evernote.android.job.Job;
import com.evernote.android.job.util.JobCat;
import com.evernote.android.job.util.JobUtil;
import java.util.Locale;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import kotlin.jvm.internal.LongCompanionObject;

/* loaded from: classes.dex */
public interface JobProxy {
    void cancel(int i);

    boolean isPlatformJobScheduled(JobRequest jobRequest);

    void plantOneOff(JobRequest jobRequest);

    void plantPeriodic(JobRequest jobRequest);

    void plantPeriodicFlexSupport(JobRequest jobRequest);

    public static final class Common {
        private static final Object COMMON_MONITOR = new Object();
        private final JobCat mCat;
        private final Context mContext;
        private final int mJobId;
        private final JobManager mJobManager;

        private static long checkNoOverflow(long j, boolean z) {
            return z ? j : LongCompanionObject.MAX_VALUE;
        }

        private static long checkedAdd(long j, long j2) {
            long j3 = j + j2;
            return checkNoOverflow(j3, ((j2 ^ j) < 0) | ((j ^ j3) >= 0));
        }

        private static long checkedMultiply(long j, long j2) {
            int numberOfLeadingZeros = Long.numberOfLeadingZeros(j) + Long.numberOfLeadingZeros(~j) + Long.numberOfLeadingZeros(j2) + Long.numberOfLeadingZeros(~j2);
            if (numberOfLeadingZeros > 65) {
                return j * j2;
            }
            boolean z = true;
            long checkNoOverflow = checkNoOverflow(checkNoOverflow(j * j2, numberOfLeadingZeros >= 64), (j >= 0) | (j2 != Long.MIN_VALUE));
            if (j != 0 && checkNoOverflow / j != j2) {
                z = false;
            }
            return checkNoOverflow(checkNoOverflow, z);
        }

        public static long getStartMs(JobRequest jobRequest) {
            if (jobRequest.getFailureCount() > 0) {
                return jobRequest.getBackoffOffset();
            }
            return jobRequest.getStartMs();
        }

        public static long getEndMs(JobRequest jobRequest) {
            return getEndMs(jobRequest, false);
        }

        public static long getEndMs(JobRequest jobRequest, boolean z) {
            long endMs;
            if (jobRequest.getFailureCount() > 0) {
                endMs = jobRequest.getBackoffOffset();
            } else {
                endMs = jobRequest.getEndMs();
            }
            return (z && jobRequest.requirementsEnforced() && jobRequest.hasRequirements()) ? checkedMultiply(endMs, 100L) : endMs;
        }

        public static long getAverageDelayMs(JobRequest jobRequest) {
            return checkedAdd(getStartMs(jobRequest), (getEndMs(jobRequest) - getStartMs(jobRequest)) / 2);
        }

        public static long getStartMsSupportFlex(JobRequest jobRequest) {
            return Math.max(1L, jobRequest.getIntervalMs() - jobRequest.getFlexMs());
        }

        public static long getEndMsSupportFlex(JobRequest jobRequest) {
            return jobRequest.getIntervalMs();
        }

        public static long getAverageDelayMsSupportFlex(JobRequest jobRequest) {
            return checkedAdd(getStartMsSupportFlex(jobRequest), (getEndMsSupportFlex(jobRequest) - getStartMsSupportFlex(jobRequest)) / 2);
        }

        public static int getRescheduleCount(JobRequest jobRequest) {
            return jobRequest.getFailureCount();
        }

        public Common(Service service, JobCat jobCat, int i) {
            this((Context) service, jobCat, i);
        }

        Common(Context context, JobCat jobCat, int i) {
            JobManager jobManager;
            this.mContext = context;
            this.mJobId = i;
            this.mCat = jobCat;
            try {
                jobManager = JobManager.create(context);
            } catch (JobManagerCreateException e) {
                this.mCat.e(e);
                jobManager = null;
            }
            this.mJobManager = jobManager;
        }

        public JobRequest getPendingRequest(boolean z, boolean z2) {
            synchronized (COMMON_MONITOR) {
                JobManager jobManager = this.mJobManager;
                if (jobManager == null) {
                    return null;
                }
                JobRequest jobRequest = jobManager.getJobRequest(this.mJobId, true);
                Job job = this.mJobManager.getJob(this.mJobId);
                boolean z3 = jobRequest != null && jobRequest.isPeriodic();
                if (job != null && !job.isFinished()) {
                    this.mCat.d("Job %d is already running, %s", Integer.valueOf(this.mJobId), jobRequest);
                    return null;
                }
                if (job != null && !z3) {
                    this.mCat.d("Job %d already finished, %s", Integer.valueOf(this.mJobId), jobRequest);
                    cleanUpOrphanedJob(z);
                    return null;
                }
                if (job != null && System.currentTimeMillis() - job.getFinishedTimeStamp() < 2000) {
                    this.mCat.d("Job %d is periodic and just finished, %s", Integer.valueOf(this.mJobId), jobRequest);
                    return null;
                }
                if (jobRequest != null && jobRequest.isStarted()) {
                    this.mCat.d("Request %d already started, %s", Integer.valueOf(this.mJobId), jobRequest);
                    return null;
                }
                if (jobRequest != null && this.mJobManager.getJobExecutor().isRequestStarting(jobRequest)) {
                    this.mCat.d("Request %d is in the queue to start, %s", Integer.valueOf(this.mJobId), jobRequest);
                    return null;
                }
                if (jobRequest == null) {
                    this.mCat.d("Request for ID %d was null", Integer.valueOf(this.mJobId));
                    cleanUpOrphanedJob(z);
                    return null;
                }
                if (z2) {
                    markStarting(jobRequest);
                }
                return jobRequest;
            }
        }

        public void markStarting(JobRequest jobRequest) {
            this.mJobManager.getJobExecutor().markJobRequestStarting(jobRequest);
        }

        public Job.Result executeJobRequest(JobRequest jobRequest, Bundle bundle) {
            String str;
            long currentTimeMillis = System.currentTimeMillis() - jobRequest.getScheduledAt();
            if (jobRequest.isPeriodic()) {
                str = String.format(Locale.US, "interval %s, flex %s", JobUtil.timeToString(jobRequest.getIntervalMs()), JobUtil.timeToString(jobRequest.getFlexMs()));
            } else if (jobRequest.getJobApi().supportsExecutionWindow()) {
                str = String.format(Locale.US, "start %s, end %s", JobUtil.timeToString(getStartMs(jobRequest)), JobUtil.timeToString(getEndMs(jobRequest)));
            } else {
                str = "delay " + JobUtil.timeToString(getAverageDelayMs(jobRequest));
            }
            if (Looper.myLooper() == Looper.getMainLooper()) {
                this.mCat.w("Running JobRequest on a main thread, this could cause stutter or ANR in your app.");
            }
            this.mCat.d("Run job, %s, waited %s, %s", jobRequest, JobUtil.timeToString(currentTimeMillis), str);
            JobExecutor jobExecutor = this.mJobManager.getJobExecutor();
            Job job = null;
            try {
                try {
                    Job createJob = this.mJobManager.getJobCreatorHolder().createJob(jobRequest.getTag());
                    if (!jobRequest.isPeriodic()) {
                        jobRequest.setStarted(true);
                    }
                    if (bundle == null) {
                        bundle = Bundle.EMPTY;
                    }
                    Future<Job.Result> execute = jobExecutor.execute(this.mContext, jobRequest, createJob, bundle);
                    if (execute == null) {
                        Job.Result result = Job.Result.FAILURE;
                        if (createJob == null) {
                            this.mJobManager.getJobStorage().remove(jobRequest);
                        } else if (!jobRequest.isPeriodic()) {
                            this.mJobManager.getJobStorage().remove(jobRequest);
                        } else if (jobRequest.isFlexSupport() && !createJob.isDeleted()) {
                            this.mJobManager.getJobStorage().remove(jobRequest);
                            jobRequest.reschedule(false, false);
                        }
                        return result;
                    }
                    Job.Result result2 = execute.get();
                    this.mCat.d("Finished job, %s %s", jobRequest, result2);
                    if (createJob == null) {
                        this.mJobManager.getJobStorage().remove(jobRequest);
                    } else if (!jobRequest.isPeriodic()) {
                        this.mJobManager.getJobStorage().remove(jobRequest);
                    } else if (jobRequest.isFlexSupport() && !createJob.isDeleted()) {
                        this.mJobManager.getJobStorage().remove(jobRequest);
                        jobRequest.reschedule(false, false);
                    }
                    return result2;
                } catch (Throwable th) {
                    if (0 == 0) {
                        this.mJobManager.getJobStorage().remove(jobRequest);
                    } else if (!jobRequest.isPeriodic()) {
                        this.mJobManager.getJobStorage().remove(jobRequest);
                    } else if (jobRequest.isFlexSupport() && !job.isDeleted()) {
                        this.mJobManager.getJobStorage().remove(jobRequest);
                        jobRequest.reschedule(false, false);
                    }
                    throw th;
                }
            } catch (InterruptedException | ExecutionException e) {
                this.mCat.e(e);
                if (0 != 0) {
                    job.cancel();
                    this.mCat.e("Canceled %s", jobRequest);
                }
                Job.Result result3 = Job.Result.FAILURE;
                if (0 == 0) {
                    this.mJobManager.getJobStorage().remove(jobRequest);
                } else if (!jobRequest.isPeriodic()) {
                    this.mJobManager.getJobStorage().remove(jobRequest);
                } else if (jobRequest.isFlexSupport() && !job.isDeleted()) {
                    this.mJobManager.getJobStorage().remove(jobRequest);
                    jobRequest.reschedule(false, false);
                }
                return result3;
            }
        }

        private void cleanUpOrphanedJob(boolean z) {
            if (z) {
                cleanUpOrphanedJob(this.mContext, this.mJobId);
            }
        }

        static void cleanUpOrphanedJob(Context context, int i) {
            for (JobApi jobApi : JobApi.values()) {
                if (jobApi.isSupported(context)) {
                    try {
                        jobApi.getProxy(context).cancel(i);
                    } catch (Exception unused) {
                    }
                }
            }
        }

        public static ComponentName startWakefulService(Context context, Intent intent) {
            return WakeLockUtil.startWakefulService(context, intent);
        }

        public static boolean completeWakefulIntent(Intent intent) {
            return WakeLockUtil.completeWakefulIntent(intent);
        }
    }
}

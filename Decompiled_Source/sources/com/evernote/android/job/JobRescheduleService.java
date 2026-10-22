package com.evernote.android.job;

import android.content.Context;
import android.content.Intent;
import android.os.SystemClock;
import androidx.core.app.JobIntentService;
import com.evernote.android.job.util.JobCat;
import java.util.Collection;
import java.util.Set;
import java.util.concurrent.CountDownLatch;

/* loaded from: classes.dex */
public final class JobRescheduleService extends JobIntentService {
    private static final JobCat CAT = new JobCat("JobRescheduleService", false);
    static CountDownLatch latch;

    static void startService(Context context) {
        try {
            enqueueWork(context, (Class<?>) JobRescheduleService.class, 2147480000, new Intent());
            latch = new CountDownLatch(1);
        } catch (Exception e) {
            CAT.e(e);
        }
    }

    @Override // androidx.core.app.JobIntentService
    protected void onHandleWork(Intent intent) {
        try {
            JobCat jobCat = CAT;
            jobCat.d("Reschedule service started");
            SystemClock.sleep(JobConfig.getJobReschedulePause());
            try {
                JobManager create = JobManager.create(this);
                Set<JobRequest> allJobRequests = create.getAllJobRequests(null, true, true);
                jobCat.d("Reschedule %d jobs of %d jobs", Integer.valueOf(rescheduleJobs(create, allJobRequests)), Integer.valueOf(allJobRequests.size()));
            } catch (JobManagerCreateException unused) {
                if (latch != null) {
                    latch.countDown();
                }
            }
        } finally {
            CountDownLatch countDownLatch = latch;
            if (countDownLatch != null) {
                countDownLatch.countDown();
            }
        }
    }

    int rescheduleJobs(JobManager jobManager) {
        return rescheduleJobs(jobManager, jobManager.getAllJobRequests(null, true, true));
    }

    int rescheduleJobs(JobManager jobManager, Collection<JobRequest> collection) {
        boolean z;
        int i = 0;
        boolean z2 = false;
        for (JobRequest jobRequest : collection) {
            if (jobRequest.isStarted()) {
                z = jobManager.getJob(jobRequest.getJobId()) == null;
            } else {
                z = !jobManager.getJobProxy(jobRequest.getJobApi()).isPlatformJobScheduled(jobRequest);
            }
            if (z) {
                try {
                    jobRequest.cancelAndEdit().build().schedule();
                } catch (Exception e) {
                    if (!z2) {
                        CAT.e(e);
                        z2 = true;
                    }
                }
                i++;
            }
        }
        return i;
    }
}

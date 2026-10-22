package com.evernote.android.job.v21;

import android.app.Service;
import android.app.job.JobParameters;
import android.app.job.JobService;
import android.os.Build;
import android.os.Bundle;
import com.evernote.android.job.Job;
import com.evernote.android.job.JobConfig;
import com.evernote.android.job.JobManager;
import com.evernote.android.job.JobProxy;
import com.evernote.android.job.JobRequest;
import com.evernote.android.job.util.JobCat;

/* loaded from: classes.dex */
public class PlatformJobService extends JobService {
    private static final JobCat CAT = new JobCat("PlatformJobService");

    @Override // android.app.job.JobService
    public boolean onStartJob(final JobParameters jobParameters) {
        JobConfig.getExecutorService().execute(new Runnable() { // from class: com.evernote.android.job.v21.PlatformJobService.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    JobProxy.Common common = new JobProxy.Common((Service) PlatformJobService.this, PlatformJobService.CAT, jobParameters.getJobId());
                    JobRequest pendingRequest = common.getPendingRequest(true, false);
                    if (pendingRequest != null) {
                        if (pendingRequest.isTransient()) {
                            if (TransientBundleCompat.startWithTransientBundle(PlatformJobService.this, pendingRequest)) {
                                if (Build.VERSION.SDK_INT >= 26) {
                                    PlatformJobService.CAT.d("PendingIntent for transient bundle is not null although running on O, using compat mode, request %s", pendingRequest);
                                }
                            } else if (Build.VERSION.SDK_INT < 26) {
                                PlatformJobService.CAT.d("PendingIntent for transient job %s expired", pendingRequest);
                            }
                        }
                        common.markStarting(pendingRequest);
                        common.executeJobRequest(pendingRequest, PlatformJobService.this.getTransientBundle(jobParameters));
                    }
                } finally {
                    PlatformJobService.this.jobFinished(jobParameters, false);
                }
            }
        });
        return true;
    }

    @Override // android.app.job.JobService
    public boolean onStopJob(JobParameters jobParameters) {
        Job job = JobManager.create(this).getJob(jobParameters.getJobId());
        if (job != null) {
            job.cancel();
            CAT.d("Called onStopJob for %s", job);
        } else {
            CAT.d("Called onStopJob, job %d not found", Integer.valueOf(jobParameters.getJobId()));
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Bundle getTransientBundle(JobParameters jobParameters) {
        Bundle transientExtras;
        if (Build.VERSION.SDK_INT >= 26) {
            transientExtras = jobParameters.getTransientExtras();
            return transientExtras;
        }
        return Bundle.EMPTY;
    }
}

package com.evernote.android.job.gcm;

import android.app.Service;
import com.evernote.android.job.Job;
import com.evernote.android.job.JobManager;
import com.evernote.android.job.JobManagerCreateException;
import com.evernote.android.job.JobProxy;
import com.evernote.android.job.JobRequest;
import com.evernote.android.job.util.JobCat;
import com.google.android.gms.gcm.GcmTaskService;
import com.google.android.gms.gcm.TaskParams;

/* loaded from: classes.dex */
public class PlatformGcmService extends GcmTaskService {
    private static final JobCat CAT = new JobCat("PlatformGcmService");

    @Override // com.google.android.gms.gcm.GcmTaskService
    public int onRunTask(TaskParams taskParams) {
        JobProxy.Common common = new JobProxy.Common((Service) this, CAT, Integer.parseInt(taskParams.getTag()));
        JobRequest pendingRequest = common.getPendingRequest(true, true);
        if (pendingRequest == null) {
            return 2;
        }
        return Job.Result.SUCCESS.equals(common.executeJobRequest(pendingRequest, taskParams.getExtras())) ? 0 : 2;
    }

    @Override // com.google.android.gms.gcm.GcmTaskService
    public void onInitializeTasks() {
        super.onInitializeTasks();
        try {
            JobManager.create(getApplicationContext());
        } catch (JobManagerCreateException unused) {
        }
    }
}

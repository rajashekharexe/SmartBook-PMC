package com.evernote.android.job.v14;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.core.app.JobIntentService;
import com.evernote.android.job.JobIdsInternal;
import com.evernote.android.job.JobProxy;
import com.evernote.android.job.JobRequest;
import com.evernote.android.job.util.JobCat;

/* loaded from: classes.dex */
public final class PlatformAlarmService extends JobIntentService {
    private static final JobCat CAT = new JobCat("PlatformAlarmService");

    public static void start(Context context, int i, Bundle bundle) {
        Intent intent = new Intent();
        intent.putExtra("EXTRA_JOB_ID", i);
        if (bundle != null) {
            intent.putExtra("EXTRA_TRANSIENT_EXTRAS", bundle);
        }
        enqueueWork(context, (Class<?>) PlatformAlarmService.class, JobIdsInternal.JOB_ID_PLATFORM_ALARM_SERVICE, intent);
    }

    @Override // androidx.core.app.JobIntentService
    protected void onHandleWork(Intent intent) {
        runJob(intent, this, CAT);
    }

    static void runJob(Intent intent, Service service, JobCat jobCat) {
        if (intent == null) {
            jobCat.i("Delivered intent is null");
            return;
        }
        int intExtra = intent.getIntExtra("EXTRA_JOB_ID", -1);
        Bundle bundleExtra = intent.getBundleExtra("EXTRA_TRANSIENT_EXTRAS");
        JobProxy.Common common = new JobProxy.Common(service, jobCat, intExtra);
        JobRequest pendingRequest = common.getPendingRequest(true, true);
        if (pendingRequest != null) {
            common.executeJobRequest(pendingRequest, bundleExtra);
        }
    }
}

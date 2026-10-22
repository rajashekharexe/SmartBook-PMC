package com.evernote.android.job.v14;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.evernote.android.job.JobProxy;

/* loaded from: classes.dex */
public class PlatformAlarmReceiver extends BroadcastReceiver {
    static final String EXTRA_JOB_EXACT = "EXTRA_JOB_EXACT";
    static final String EXTRA_JOB_ID = "EXTRA_JOB_ID";
    static final String EXTRA_TRANSIENT_EXTRAS = "EXTRA_TRANSIENT_EXTRAS";

    static Intent createIntent(Context context, int i, boolean z, Bundle bundle) {
        Intent putExtra = new Intent(context, (Class<?>) PlatformAlarmReceiver.class).putExtra(EXTRA_JOB_ID, i).putExtra(EXTRA_JOB_EXACT, z);
        if (bundle != null) {
            putExtra.putExtra(EXTRA_TRANSIENT_EXTRAS, bundle);
        }
        return putExtra;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent != null && intent.hasExtra(EXTRA_JOB_ID) && intent.hasExtra(EXTRA_JOB_EXACT)) {
            int intExtra = intent.getIntExtra(EXTRA_JOB_ID, -1);
            Bundle bundleExtra = intent.getBundleExtra(EXTRA_TRANSIENT_EXTRAS);
            if (intent.getBooleanExtra(EXTRA_JOB_EXACT, false)) {
                JobProxy.Common.startWakefulService(context, PlatformAlarmServiceExact.createIntent(context, intExtra, bundleExtra));
            } else {
                PlatformAlarmService.start(context, intExtra, bundleExtra);
            }
        }
    }
}

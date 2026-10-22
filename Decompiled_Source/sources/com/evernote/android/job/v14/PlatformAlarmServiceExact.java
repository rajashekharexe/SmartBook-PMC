package com.evernote.android.job.v14;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import com.evernote.android.job.JobConfig;
import com.evernote.android.job.JobProxy;
import com.evernote.android.job.util.JobCat;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes.dex */
public final class PlatformAlarmServiceExact extends Service {
    private static final JobCat CAT = new JobCat("PlatformAlarmServiceExact");
    private volatile int mLastStartId;
    private final Object mMonitor = new Object();
    private volatile Set<Integer> mStartIds;

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return null;
    }

    public static Intent createIntent(Context context, int i, Bundle bundle) {
        Intent intent = new Intent(context, (Class<?>) PlatformAlarmServiceExact.class);
        intent.putExtra("EXTRA_JOB_ID", i);
        if (bundle != null) {
            intent.putExtra("EXTRA_TRANSIENT_EXTRAS", bundle);
        }
        return intent;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        this.mStartIds = new HashSet();
    }

    @Override // android.app.Service
    public int onStartCommand(final Intent intent, int i, final int i2) {
        synchronized (this.mMonitor) {
            this.mStartIds.add(Integer.valueOf(i2));
            this.mLastStartId = i2;
        }
        JobConfig.getExecutorService().execute(new Runnable() { // from class: com.evernote.android.job.v14.PlatformAlarmServiceExact.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    PlatformAlarmService.runJob(intent, PlatformAlarmServiceExact.this, PlatformAlarmServiceExact.CAT);
                } finally {
                    JobProxy.Common.completeWakefulIntent(intent);
                    PlatformAlarmServiceExact.this.stopSelfIfNecessary(i2);
                }
            }
        });
        return 2;
    }

    @Override // android.app.Service
    public void onDestroy() {
        synchronized (this.mMonitor) {
            this.mStartIds = null;
            this.mLastStartId = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopSelfIfNecessary(int i) {
        synchronized (this.mMonitor) {
            Set<Integer> set = this.mStartIds;
            if (set != null) {
                set.remove(Integer.valueOf(i));
                if (set.isEmpty()) {
                    stopSelfResult(this.mLastStartId);
                }
            }
        }
    }
}

package com.evernote.android.job.v21;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import androidx.core.app.NotificationCompat;
import com.evernote.android.job.JobRequest;
import com.evernote.android.job.util.JobCat;
import com.evernote.android.job.v14.PlatformAlarmServiceExact;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
final class TransientBundleCompat {
    private static final JobCat CAT = new JobCat("TransientBundleCompat");

    private TransientBundleCompat() {
        throw new UnsupportedOperationException();
    }

    public static void persistBundle(Context context, JobRequest jobRequest) {
        PendingIntent service = PendingIntent.getService(context, jobRequest.getJobId(), PlatformAlarmServiceExact.createIntent(context, jobRequest.getJobId(), jobRequest.getTransientExtras()), 134217728);
        ((AlarmManager) context.getSystemService(NotificationCompat.CATEGORY_ALARM)).setExact(1, System.currentTimeMillis() + TimeUnit.DAYS.toMillis(1000L), service);
    }

    public static boolean startWithTransientBundle(Context context, JobRequest jobRequest) {
        PendingIntent service = PendingIntent.getService(context, jobRequest.getJobId(), PlatformAlarmServiceExact.createIntent(context, jobRequest.getJobId(), null), 536870912);
        if (service == null) {
            return false;
        }
        try {
            CAT.i("Delegating transient job %s to API 14", jobRequest);
            service.send();
            if (!jobRequest.isPeriodic()) {
                cancel(context, jobRequest.getJobId(), service);
            }
            return true;
        } catch (PendingIntent.CanceledException e) {
            CAT.e(e);
            return false;
        }
    }

    public static boolean isScheduled(Context context, int i) {
        return PendingIntent.getService(context, i, PlatformAlarmServiceExact.createIntent(context, i, null), 536870912) != null;
    }

    public static void cancel(Context context, int i, PendingIntent pendingIntent) {
        if (pendingIntent == null) {
            try {
                pendingIntent = PendingIntent.getService(context, i, PlatformAlarmServiceExact.createIntent(context, i, null), 536870912);
                if (pendingIntent == null) {
                    return;
                }
            } catch (Exception e) {
                CAT.e(e);
                return;
            }
        }
        ((AlarmManager) context.getSystemService(NotificationCompat.CATEGORY_ALARM)).cancel(pendingIntent);
        pendingIntent.cancel();
    }
}

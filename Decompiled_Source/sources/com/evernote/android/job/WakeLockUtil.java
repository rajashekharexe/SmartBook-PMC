package com.evernote.android.job;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.PowerManager;
import android.util.SparseArray;
import com.evernote.android.job.util.JobCat;
import com.evernote.android.job.util.JobUtil;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
final class WakeLockUtil {
    private static final String EXTRA_WAKE_LOCK_ID = "com.evernote.android.job.wakelockid";
    private static final JobCat CAT = new JobCat("WakeLockUtil");
    private static final SparseArray<PowerManager.WakeLock> ACTIVE_WAKE_LOCKS = new SparseArray<>();
    private static int nextId = 1;

    private WakeLockUtil() {
    }

    static PowerManager.WakeLock acquireWakeLock(Context context, String str, long j) {
        PowerManager.WakeLock newWakeLock = ((PowerManager) context.getSystemService("power")).newWakeLock(1, str);
        newWakeLock.setReferenceCounted(false);
        if (acquireWakeLock(context, newWakeLock, j)) {
            return newWakeLock;
        }
        return null;
    }

    static boolean acquireWakeLock(Context context, PowerManager.WakeLock wakeLock, long j) {
        if (wakeLock == null || wakeLock.isHeld() || !JobUtil.hasWakeLockPermission(context)) {
            return false;
        }
        try {
            wakeLock.acquire(j);
            return true;
        } catch (Exception e) {
            CAT.e(e);
            return false;
        }
    }

    static void releaseWakeLock(PowerManager.WakeLock wakeLock) {
        if (wakeLock != null) {
            try {
                if (wakeLock.isHeld()) {
                    wakeLock.release();
                }
            } catch (Exception e) {
                CAT.e(e);
            }
        }
    }

    public static ComponentName startWakefulService(Context context, Intent intent) {
        SparseArray<PowerManager.WakeLock> sparseArray = ACTIVE_WAKE_LOCKS;
        synchronized (sparseArray) {
            int i = nextId;
            int i2 = i + 1;
            nextId = i2;
            if (i2 <= 0) {
                nextId = 1;
            }
            intent.putExtra(EXTRA_WAKE_LOCK_ID, i);
            ComponentName startService = context.startService(intent);
            if (startService == null) {
                return null;
            }
            PowerManager.WakeLock acquireWakeLock = acquireWakeLock(context, "wake:" + startService.flattenToShortString(), TimeUnit.MINUTES.toMillis(3L));
            if (acquireWakeLock != null) {
                sparseArray.put(i, acquireWakeLock);
            }
            return startService;
        }
    }

    public static boolean completeWakefulIntent(Intent intent) {
        int intExtra;
        if (intent == null || (intExtra = intent.getIntExtra(EXTRA_WAKE_LOCK_ID, 0)) == 0) {
            return false;
        }
        SparseArray<PowerManager.WakeLock> sparseArray = ACTIVE_WAKE_LOCKS;
        synchronized (sparseArray) {
            releaseWakeLock(sparseArray.get(intExtra));
            sparseArray.remove(intExtra);
        }
        return true;
    }
}

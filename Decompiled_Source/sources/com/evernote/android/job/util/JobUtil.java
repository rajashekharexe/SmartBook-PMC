package com.evernote.android.job.util;

import android.content.Context;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class JobUtil {
    private static final ThreadLocal<SimpleDateFormat> FORMAT = new ThreadLocal<>();
    private static final long ONE_DAY = TimeUnit.DAYS.toMillis(1);
    private static final JobCat CAT = new JobCat("JobUtil");

    private JobUtil() {
    }

    public static String timeToString(long j) {
        ThreadLocal<SimpleDateFormat> threadLocal = FORMAT;
        SimpleDateFormat simpleDateFormat = threadLocal.get();
        if (simpleDateFormat == null) {
            simpleDateFormat = new SimpleDateFormat("HH:mm:ss", Locale.US);
            threadLocal.set(simpleDateFormat);
        }
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
        String format = simpleDateFormat.format(new Date(j));
        long j2 = j / ONE_DAY;
        if (j2 == 1) {
            return format + " (+1 day)";
        }
        if (j2 <= 1) {
            return format;
        }
        return format + " (+" + j2 + " days)";
    }

    public static boolean hasBootPermission(Context context) {
        return hasPermission(context, "android.permission.RECEIVE_BOOT_COMPLETED", 0);
    }

    public static boolean hasWakeLockPermission(Context context) {
        return hasPermission(context, "android.permission.WAKE_LOCK", 0);
    }

    private static boolean hasPermission(Context context, String str, int i) {
        try {
            return context.getPackageManager().checkPermission(str, context.getPackageName()) == 0;
        } catch (Exception e) {
            CAT.e(e);
            return i < 1 && hasPermission(context.getApplicationContext(), str, i + 1);
        }
    }
}

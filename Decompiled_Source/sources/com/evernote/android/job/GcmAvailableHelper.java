package com.evernote.android.job;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import com.evernote.android.job.gcm.JobProxyGcm;
import com.evernote.android.job.gcm.PlatformGcmService;
import com.evernote.android.job.util.JobCat;
import com.google.android.gms.common.GoogleApiAvailability;
import java.util.List;

/* loaded from: classes.dex */
final class GcmAvailableHelper {
    private static final String ACTION_TASK_READY = "com.google.android.gms.gcm.ACTION_TASK_READY";
    private static final boolean GCM_IN_CLASSPATH;
    private static final String GCM_PERMISSION = "com.google.android.gms.permission.BIND_NETWORK_TASK_SERVICE";
    private static boolean checkedServiceEnabled;
    private static final JobCat CAT = new JobCat("GcmAvailableHelper");
    private static int gcmServiceAvailable = -1;

    static {
        boolean z;
        try {
            Class.forName("com.google.android.gms.gcm.GcmNetworkManager");
            z = true;
        } catch (Throwable unused) {
            z = false;
        }
        GCM_IN_CLASSPATH = z;
    }

    public static boolean isGcmApiSupported(Context context) {
        try {
            if (!checkedServiceEnabled) {
                checkedServiceEnabled = true;
                setServiceEnabled(context, GCM_IN_CLASSPATH);
            }
            if (GCM_IN_CLASSPATH && GoogleApiAvailability.getInstance().isGooglePlayServicesAvailable(context) == 0) {
                return isGcmServiceRegistered(context) == 0;
            }
            return false;
        } catch (Throwable unused) {
            return false;
        }
    }

    private static int isGcmServiceRegistered(Context context) {
        if (gcmServiceAvailable < 0) {
            synchronized (JobApi.class) {
                if (gcmServiceAvailable < 0) {
                    if (!hasPermission(context.getPackageManager().queryIntentServices(new Intent(context, (Class<?>) PlatformGcmService.class), 0))) {
                        gcmServiceAvailable = 1;
                        return 1;
                    }
                    Intent intent = new Intent("com.google.android.gms.gcm.ACTION_TASK_READY");
                    intent.setPackage(context.getPackageName());
                    if (!hasPermission(context.getPackageManager().queryIntentServices(intent, 0))) {
                        gcmServiceAvailable = 1;
                        return 1;
                    }
                    gcmServiceAvailable = 0;
                }
            }
        }
        return gcmServiceAvailable;
    }

    private static boolean hasPermission(List<ResolveInfo> list) {
        if (list != null && !list.isEmpty()) {
            for (ResolveInfo resolveInfo : list) {
                if (resolveInfo.serviceInfo != null && "com.google.android.gms.permission.BIND_NETWORK_TASK_SERVICE".equals(resolveInfo.serviceInfo.permission) && resolveInfo.serviceInfo.exported) {
                    return true;
                }
            }
        }
        return false;
    }

    private static void setServiceEnabled(Context context, boolean z) {
        try {
            PackageManager packageManager = context.getPackageManager();
            ComponentName componentName = new ComponentName(context, JobProxyGcm.class.getPackage().getName() + ".PlatformGcmService");
            int componentEnabledSetting = packageManager.getComponentEnabledSetting(componentName);
            if (componentEnabledSetting != 0) {
                if (componentEnabledSetting != 1) {
                    if (componentEnabledSetting != 2) {
                    }
                } else if (!z) {
                    packageManager.setComponentEnabledSetting(componentName, 2, 1);
                    CAT.i("GCM service disabled");
                }
            }
            if (z) {
                packageManager.setComponentEnabledSetting(componentName, 1, 1);
                CAT.i("GCM service enabled");
            }
        } catch (Throwable unused) {
        }
    }

    private GcmAvailableHelper() {
    }
}

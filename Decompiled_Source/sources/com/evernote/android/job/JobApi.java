package com.evernote.android.job;

import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.os.Build;
import com.evernote.android.job.gcm.JobProxyGcm;
import com.evernote.android.job.v14.JobProxy14;
import com.evernote.android.job.v14.PlatformAlarmReceiver;
import com.evernote.android.job.v14.PlatformAlarmService;
import com.evernote.android.job.v14.PlatformAlarmServiceExact;
import com.evernote.android.job.v19.JobProxy19;
import com.evernote.android.job.v21.JobProxy21;
import com.evernote.android.job.v21.PlatformJobService;
import com.evernote.android.job.v24.JobProxy24;
import com.evernote.android.job.v26.JobProxy26;
import java.util.List;

/* loaded from: classes.dex */
public enum JobApi {
    V_26(true, false, true),
    V_24(true, false, false),
    V_21(true, true, false),
    V_19(true, true, true),
    V_14(false, true, true),
    GCM(true, false, true);

    private static final String JOB_SCHEDULER_PERMISSION = "android.permission.BIND_JOB_SERVICE";
    private volatile JobProxy mCachedProxy;
    private final boolean mFlexSupport;
    private final boolean mSupportsExecutionWindow;
    private final boolean mSupportsTransientJobs;

    JobApi(boolean z, boolean z2, boolean z3) {
        this.mSupportsExecutionWindow = z;
        this.mFlexSupport = z2;
        this.mSupportsTransientJobs = z3;
    }

    boolean supportsExecutionWindow() {
        return this.mSupportsExecutionWindow;
    }

    boolean isFlexSupport() {
        return this.mFlexSupport;
    }

    boolean supportsTransientJobs() {
        return this.mSupportsTransientJobs;
    }

    /* renamed from: com.evernote.android.job.JobApi$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$evernote$android$job$JobApi;

        static {
            int[] iArr = new int[JobApi.values().length];
            $SwitchMap$com$evernote$android$job$JobApi = iArr;
            try {
                iArr[JobApi.V_26.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$evernote$android$job$JobApi[JobApi.V_24.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$evernote$android$job$JobApi[JobApi.V_21.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$evernote$android$job$JobApi[JobApi.V_19.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$evernote$android$job$JobApi[JobApi.V_14.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$evernote$android$job$JobApi[JobApi.GCM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public boolean isSupported(Context context) {
        switch (AnonymousClass1.$SwitchMap$com$evernote$android$job$JobApi[ordinal()]) {
            case 1:
                return Build.VERSION.SDK_INT >= 26 && isServiceEnabled(context, PlatformJobService.class);
            case 2:
                return Build.VERSION.SDK_INT >= 24 && isServiceEnabledAndHasPermission(context, PlatformJobService.class, JOB_SCHEDULER_PERMISSION);
            case 3:
                return isServiceEnabledAndHasPermission(context, PlatformJobService.class, JOB_SCHEDULER_PERMISSION);
            case 4:
                return isServiceEnabled(context, PlatformAlarmService.class) && isBroadcastEnabled(context, PlatformAlarmReceiver.class);
            case 5:
                if (JobConfig.isForceAllowApi14()) {
                    return true;
                }
                return isServiceEnabled(context, PlatformAlarmService.class) && isServiceEnabled(context, PlatformAlarmServiceExact.class) && isBroadcastEnabled(context, PlatformAlarmReceiver.class);
            case 6:
                return GcmAvailableHelper.isGcmApiSupported(context);
            default:
                throw new IllegalStateException("not implemented");
        }
    }

    private JobProxy createProxy(Context context) {
        switch (AnonymousClass1.$SwitchMap$com$evernote$android$job$JobApi[ordinal()]) {
            case 1:
                return new JobProxy26(context);
            case 2:
                return new JobProxy24(context);
            case 3:
                return new JobProxy21(context);
            case 4:
                return new JobProxy19(context);
            case 5:
                return new JobProxy14(context);
            case 6:
                return new JobProxyGcm(context);
            default:
                throw new IllegalStateException("not implemented");
        }
    }

    synchronized JobProxy getProxy(Context context) {
        if (this.mCachedProxy == null) {
            this.mCachedProxy = createProxy(context);
        }
        return this.mCachedProxy;
    }

    public synchronized void invalidateCachedProxy() {
        this.mCachedProxy = null;
    }

    private boolean isServiceEnabled(Context context, Class<? extends Service> cls) {
        try {
            List<ResolveInfo> queryIntentServices = context.getPackageManager().queryIntentServices(new Intent(context, cls), 0);
            if (queryIntentServices != null) {
                return !queryIntentServices.isEmpty();
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    private static boolean isServiceEnabledAndHasPermission(Context context, Class<? extends Service> cls, String str) {
        try {
            List<ResolveInfo> queryIntentServices = context.getPackageManager().queryIntentServices(new Intent(context, cls), 0);
            if (queryIntentServices != null && !queryIntentServices.isEmpty()) {
                for (ResolveInfo resolveInfo : queryIntentServices) {
                    if (resolveInfo.serviceInfo != null && str.equals(resolveInfo.serviceInfo.permission)) {
                        return true;
                    }
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }

    private boolean isBroadcastEnabled(Context context, Class<? extends BroadcastReceiver> cls) {
        try {
            List<ResolveInfo> queryBroadcastReceivers = context.getPackageManager().queryBroadcastReceivers(new Intent(context, cls), 0);
            if (queryBroadcastReceivers != null) {
                return !queryBroadcastReceivers.isEmpty();
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    public static JobApi getDefault(Context context) {
        JobApi jobApi = V_26;
        if (jobApi.isSupported(context) && JobConfig.isApiEnabled(jobApi)) {
            return jobApi;
        }
        JobApi jobApi2 = V_24;
        if (jobApi2.isSupported(context) && JobConfig.isApiEnabled(jobApi2)) {
            return jobApi2;
        }
        JobApi jobApi3 = V_21;
        if (jobApi3.isSupported(context) && JobConfig.isApiEnabled(jobApi3)) {
            return jobApi3;
        }
        JobApi jobApi4 = GCM;
        if (jobApi4.isSupported(context) && JobConfig.isApiEnabled(jobApi4)) {
            return jobApi4;
        }
        JobApi jobApi5 = V_19;
        if (jobApi5.isSupported(context) && JobConfig.isApiEnabled(jobApi5)) {
            return jobApi5;
        }
        JobApi jobApi6 = V_14;
        if (JobConfig.isApiEnabled(jobApi6)) {
            return jobApi6;
        }
        throw new IllegalStateException("All supported APIs are disabled");
    }
}

package com.google.android.gms.internal.measurement;

import java.lang.reflect.Method;

/* compiled from: com.google.android.gms:play-services-measurement@@21.1.1 */
/* loaded from: classes2.dex */
public final class zzbt {
    private static final Method zza;
    private static final Method zzb;

    /* JADX WARN: Removed duplicated region for block: B:11:0x003b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    static {
        /*
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 6
            java.lang.String r2 = "JobSchedulerCompat"
            r3 = 0
            r4 = 24
            if (r0 < r4) goto L34
            r0 = 4
            java.lang.Class[] r0 = new java.lang.Class[r0]     // Catch: java.lang.NoSuchMethodException -> L28
            java.lang.Class<android.app.job.JobInfo> r5 = android.app.job.JobInfo.class
            r6 = 0
            r0[r6] = r5     // Catch: java.lang.NoSuchMethodException -> L28
            java.lang.Class<java.lang.String> r5 = java.lang.String.class
            r6 = 1
            r0[r6] = r5     // Catch: java.lang.NoSuchMethodException -> L28
            java.lang.Class r6 = java.lang.Integer.TYPE     // Catch: java.lang.NoSuchMethodException -> L28
            r7 = 2
            r0[r7] = r6     // Catch: java.lang.NoSuchMethodException -> L28
            r6 = 3
            r0[r6] = r5     // Catch: java.lang.NoSuchMethodException -> L28
            java.lang.Class<android.app.job.JobScheduler> r5 = android.app.job.JobScheduler.class
            java.lang.String r6 = "scheduleAsPackage"
            java.lang.reflect.Method r0 = r5.getDeclaredMethod(r6, r0)     // Catch: java.lang.NoSuchMethodException -> L28
            goto L35
        L28:
            boolean r0 = android.util.Log.isLoggable(r2, r1)
            if (r0 == 0) goto L34
            java.lang.String r0 = "No scheduleAsPackage method available, falling back to schedule"
            android.util.Log.e(r2, r0)
        L34:
            r0 = r3
        L35:
            com.google.android.gms.internal.measurement.zzbt.zza = r0
            int r0 = android.os.Build.VERSION.SDK_INT
            if (r0 < r4) goto L50
            java.lang.Class<android.os.UserHandle> r0 = android.os.UserHandle.class
            java.lang.String r4 = "myUserId"
            java.lang.reflect.Method r3 = r0.getDeclaredMethod(r4, r3)     // Catch: java.lang.NoSuchMethodException -> L44
            goto L50
        L44:
            boolean r0 = android.util.Log.isLoggable(r2, r1)
            if (r0 == 0) goto L50
            java.lang.String r0 = "No myUserId method available"
            android.util.Log.e(r2, r0)
        L50:
            com.google.android.gms.internal.measurement.zzbt.zzb = r3
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzbt.<clinit>():void");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0045 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int zza(android.content.Context r5, android.app.job.JobInfo r6, java.lang.String r7, java.lang.String r8) {
        /*
            java.lang.String r7 = "jobscheduler"
            java.lang.Object r7 = r5.getSystemService(r7)
            android.app.job.JobScheduler r7 = (android.app.job.JobScheduler) r7
            r7.getClass()
            java.lang.reflect.Method r8 = com.google.android.gms.internal.measurement.zzbt.zza
            if (r8 == 0) goto L73
            java.lang.String r8 = "android.permission.UPDATE_DEVICE_STATS"
            int r5 = androidx.print.PrintHelper$$ExternalSyntheticApiModelOutline0.m(r5, r8)
            if (r5 == 0) goto L18
            goto L73
        L18:
            java.lang.reflect.Method r5 = com.google.android.gms.internal.measurement.zzbt.zzb
            r8 = 0
            if (r5 == 0) goto L3e
            java.lang.Class<android.os.UserHandle> r0 = android.os.UserHandle.class
            r1 = 0
            java.lang.Object r5 = r5.invoke(r0, r1)     // Catch: java.lang.reflect.InvocationTargetException -> L2d java.lang.IllegalAccessException -> L2f
            java.lang.Integer r5 = (java.lang.Integer) r5     // Catch: java.lang.reflect.InvocationTargetException -> L2d java.lang.IllegalAccessException -> L2f
            if (r5 == 0) goto L3e
            int r5 = r5.intValue()     // Catch: java.lang.reflect.InvocationTargetException -> L2d java.lang.IllegalAccessException -> L2f
            goto L3f
        L2d:
            r5 = move-exception
            goto L30
        L2f:
            r5 = move-exception
        L30:
            r0 = 6
            java.lang.String r1 = "JobSchedulerCompat"
            boolean r0 = android.util.Log.isLoggable(r1, r0)
            if (r0 == 0) goto L3e
            java.lang.String r0 = "myUserId invocation illegal"
            android.util.Log.e(r1, r0, r5)
        L3e:
            r5 = 0
        L3f:
            java.lang.reflect.Method r0 = com.google.android.gms.internal.measurement.zzbt.zza
            java.lang.String r1 = "UploadAlarm"
            if (r0 == 0) goto L6e
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)     // Catch: java.lang.reflect.InvocationTargetException -> L66 java.lang.IllegalAccessException -> L68
            r2 = 4
            java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch: java.lang.reflect.InvocationTargetException -> L66 java.lang.IllegalAccessException -> L68
            r2[r8] = r6     // Catch: java.lang.reflect.InvocationTargetException -> L66 java.lang.IllegalAccessException -> L68
            java.lang.String r3 = "com.google.android.gms"
            r4 = 1
            r2[r4] = r3     // Catch: java.lang.reflect.InvocationTargetException -> L66 java.lang.IllegalAccessException -> L68
            r3 = 2
            r2[r3] = r5     // Catch: java.lang.reflect.InvocationTargetException -> L66 java.lang.IllegalAccessException -> L68
            r5 = 3
            r2[r5] = r1     // Catch: java.lang.reflect.InvocationTargetException -> L66 java.lang.IllegalAccessException -> L68
            java.lang.Object r5 = r0.invoke(r7, r2)     // Catch: java.lang.reflect.InvocationTargetException -> L66 java.lang.IllegalAccessException -> L68
            java.lang.Integer r5 = (java.lang.Integer) r5     // Catch: java.lang.reflect.InvocationTargetException -> L66 java.lang.IllegalAccessException -> L68
            if (r5 == 0) goto L72
            int r8 = r5.intValue()     // Catch: java.lang.reflect.InvocationTargetException -> L66 java.lang.IllegalAccessException -> L68
            goto L72
        L66:
            r5 = move-exception
            goto L69
        L68:
            r5 = move-exception
        L69:
            java.lang.String r8 = "error calling scheduleAsPackage"
            android.util.Log.e(r1, r8, r5)
        L6e:
            int r8 = r7.schedule(r6)
        L72:
            return r8
        L73:
            int r5 = r7.schedule(r6)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzbt.zza(android.content.Context, android.app.job.JobInfo, java.lang.String, java.lang.String):int");
    }
}

package com.google.android.gms.internal.measurement;

/* compiled from: com.google.android.gms:play-services-measurement-base@@21.1.1 */
/* loaded from: classes2.dex */
final class zzlr {
    private static final zzlq zza;
    private static final zzlq zzb;

    static {
        zzlq zzlqVar = null;
        try {
            zzlqVar = (zzlq) Class.forName("com.google.protobuf.NewInstanceSchemaFull").getDeclaredConstructor(null).newInstance(null);
        } catch (Exception unused) {
        }
        zza = zzlqVar;
        zzb = new zzlq();
    }

    static zzlq zza() {
        return zza;
    }

    static zzlq zzb() {
        return zzb;
    }
}

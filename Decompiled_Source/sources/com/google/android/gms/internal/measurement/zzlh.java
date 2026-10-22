package com.google.android.gms.internal.measurement;

/* compiled from: com.google.android.gms:play-services-measurement-base@@21.1.1 */
/* loaded from: classes2.dex */
final class zzlh {
    private static final zzlg zza;
    private static final zzlg zzb;

    static {
        zzlg zzlgVar = null;
        try {
            zzlgVar = (zzlg) Class.forName("com.google.protobuf.MapFieldSchemaFull").getDeclaredConstructor(null).newInstance(null);
        } catch (Exception unused) {
        }
        zza = zzlgVar;
        zzb = new zzlg();
    }

    static zzlg zza() {
        return zza;
    }

    static zzlg zzb() {
        return zzb;
    }
}

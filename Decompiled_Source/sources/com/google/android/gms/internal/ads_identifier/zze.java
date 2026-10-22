package com.google.android.gms.internal.ads_identifier;

import android.os.IBinder;
import android.os.IInterface;
import io.fabric.sdk.android.services.common.AdvertisingInfoServiceStrategy;

/* compiled from: com.google.android.gms:play-services-ads-identifier@@17.1.0 */
/* loaded from: classes2.dex */
public abstract class zze extends zzb implements zzf {
    public static zzf zza(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface(AdvertisingInfoServiceStrategy.AdvertisingInterface.ADVERTISING_ID_SERVICE_INTERFACE_TOKEN);
        return queryLocalInterface instanceof zzf ? (zzf) queryLocalInterface : new zzd(iBinder);
    }
}

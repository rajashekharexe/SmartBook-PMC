package com.google.android.gms.gcm;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import com.google.firebase.messaging.Constants;
import java.util.MissingFormatArgumentException;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONArray;
import org.json.JSONException;

/* loaded from: classes2.dex */
final class zzd {
    static zzd zzk;
    private final Context zzl;
    private String zzm;
    private final AtomicInteger zzn = new AtomicInteger((int) SystemClock.elapsedRealtime());

    static synchronized zzd zzd(Context context) {
        zzd zzdVar;
        synchronized (zzd.class) {
            if (zzk == null) {
                zzk = new zzd(context);
            }
            zzdVar = zzk;
        }
        return zzdVar;
    }

    static String zzd(Bundle bundle, String str) {
        String string = bundle.getString(str);
        return string == null ? bundle.getString(str.replace(Constants.MessageNotificationKeys.NOTIFICATION_PREFIX, Constants.MessageNotificationKeys.NOTIFICATION_PREFIX_OLD)) : string;
    }

    private zzd(Context context) {
        this.zzl = context.getApplicationContext();
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x017d  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x019b  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x01cb  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0226  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x022f  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0244  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x024d  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0252  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0257  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x026a  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x027f  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0116  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x009e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final boolean zze(android.os.Bundle r13) {
        /*
            Method dump skipped, instructions count: 667
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.gcm.zzd.zze(android.os.Bundle):boolean");
    }

    private final String zze(Bundle bundle, String str) {
        String zzd = zzd(bundle, str);
        if (!TextUtils.isEmpty(zzd)) {
            return zzd;
        }
        String valueOf = String.valueOf(str);
        String zzd2 = zzd(bundle, Constants.MessageNotificationKeys.TEXT_RESOURCE_SUFFIX.length() != 0 ? valueOf.concat(Constants.MessageNotificationKeys.TEXT_RESOURCE_SUFFIX) : new String(valueOf));
        if (TextUtils.isEmpty(zzd2)) {
            return null;
        }
        Resources resources = this.zzl.getResources();
        int identifier = resources.getIdentifier(zzd2, "string", this.zzl.getPackageName());
        if (identifier == 0) {
            String valueOf2 = String.valueOf(str);
            String substring = (Constants.MessageNotificationKeys.TEXT_RESOURCE_SUFFIX.length() != 0 ? valueOf2.concat(Constants.MessageNotificationKeys.TEXT_RESOURCE_SUFFIX) : new String(valueOf2)).substring(6);
            StringBuilder sb = new StringBuilder(String.valueOf(substring).length() + 49 + String.valueOf(zzd2).length());
            sb.append(substring);
            sb.append(" resource not found: ");
            sb.append(zzd2);
            sb.append(" Default value will be used.");
            Log.w("GcmNotification", sb.toString());
            return null;
        }
        String valueOf3 = String.valueOf(str);
        String zzd3 = zzd(bundle, Constants.MessageNotificationKeys.TEXT_ARGS_SUFFIX.length() != 0 ? valueOf3.concat(Constants.MessageNotificationKeys.TEXT_ARGS_SUFFIX) : new String(valueOf3));
        if (TextUtils.isEmpty(zzd3)) {
            return resources.getString(identifier);
        }
        try {
            JSONArray jSONArray = new JSONArray(zzd3);
            int length = jSONArray.length();
            Object[] objArr = new String[length];
            for (int i = 0; i < length; i++) {
                objArr[i] = jSONArray.opt(i);
            }
            return resources.getString(identifier, objArr);
        } catch (MissingFormatArgumentException e) {
            StringBuilder sb2 = new StringBuilder(String.valueOf(zzd2).length() + 58 + String.valueOf(zzd3).length());
            sb2.append("Missing format argument for ");
            sb2.append(zzd2);
            sb2.append(": ");
            sb2.append(zzd3);
            sb2.append(" Default value will be used.");
            Log.w("GcmNotification", sb2.toString(), e);
            return null;
        } catch (JSONException unused) {
            String valueOf4 = String.valueOf(str);
            String substring2 = (Constants.MessageNotificationKeys.TEXT_ARGS_SUFFIX.length() != 0 ? valueOf4.concat(Constants.MessageNotificationKeys.TEXT_ARGS_SUFFIX) : new String(valueOf4)).substring(6);
            StringBuilder sb3 = new StringBuilder(String.valueOf(substring2).length() + 41 + String.valueOf(zzd3).length());
            sb3.append("Malformed ");
            sb3.append(substring2);
            sb3.append(": ");
            sb3.append(zzd3);
            sb3.append("  Default value will be used.");
            Log.w("GcmNotification", sb3.toString());
            return null;
        }
    }

    private final Bundle zzf() {
        ApplicationInfo applicationInfo;
        try {
            applicationInfo = this.zzl.getPackageManager().getApplicationInfo(this.zzl.getPackageName(), 128);
        } catch (PackageManager.NameNotFoundException unused) {
            applicationInfo = null;
        }
        if (applicationInfo != null && applicationInfo.metaData != null) {
            return applicationInfo.metaData;
        }
        return Bundle.EMPTY;
    }
}

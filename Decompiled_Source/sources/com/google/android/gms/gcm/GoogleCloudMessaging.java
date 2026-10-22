package com.google.android.gms.gcm;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.util.Log;
import androidx.collection.ArrayMap;
import com.google.android.gms.iid.InstanceID;
import com.google.android.gms.iid.zzaf;
import com.google.firebase.messaging.Constants;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.io.IOException;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

@Deprecated
/* loaded from: classes2.dex */
public class GoogleCloudMessaging {
    public static final String ERROR_MAIN_THREAD = "MAIN_THREAD";
    public static final String ERROR_SERVICE_NOT_AVAILABLE = "SERVICE_NOT_AVAILABLE";
    public static final String INSTANCE_ID_SCOPE = "GCM";

    @Deprecated
    public static final String MESSAGE_TYPE_DELETED = "deleted_messages";

    @Deprecated
    public static final String MESSAGE_TYPE_MESSAGE = "gcm";

    @Deprecated
    public static final String MESSAGE_TYPE_SEND_ERROR = "send_error";

    @Deprecated
    public static final String MESSAGE_TYPE_SEND_EVENT = "send_event";
    private static GoogleCloudMessaging zzae;
    private static final AtomicInteger zzah = new AtomicInteger(1);
    private PendingIntent zzaf;
    private final Map<String, Handler> zzag = Collections.synchronizedMap(new ArrayMap());
    private final BlockingQueue<Intent> zzai = new LinkedBlockingQueue();
    private final Messenger zzaj = new Messenger(new zzf(this, Looper.getMainLooper()));
    private Context zzl;

    @Deprecated
    public static synchronized GoogleCloudMessaging getInstance(Context context) {
        GoogleCloudMessaging googleCloudMessaging;
        synchronized (GoogleCloudMessaging.class) {
            if (zzae == null) {
                zze(context);
                GoogleCloudMessaging googleCloudMessaging2 = new GoogleCloudMessaging();
                zzae = googleCloudMessaging2;
                googleCloudMessaging2.zzl = context.getApplicationContext();
            }
            googleCloudMessaging = zzae;
        }
        return googleCloudMessaging;
    }

    static void zze(Context context) {
        String packageName = context.getPackageName();
        StringBuilder sb = new StringBuilder(String.valueOf(packageName).length() + 48);
        sb.append("GCM SDK is deprecated, ");
        sb.append(packageName);
        sb.append(" should update to use FCM");
        Log.w("GCM", sb.toString());
    }

    @Deprecated
    public void close() {
        zzae = null;
        zzd.zzk = null;
        zzh();
    }

    @Deprecated
    public void send(String str, String str2, Bundle bundle) throws IOException {
        send(str, str2, -1L, bundle);
    }

    @Deprecated
    public void send(String str, String str2, long j, Bundle bundle) throws IOException {
        if (str == null) {
            throw new IllegalArgumentException("Missing 'to'");
        }
        String zzl = zzaf.zzl(this.zzl);
        if (zzl == null) {
            throw new IOException("SERVICE_NOT_AVAILABLE");
        }
        Intent intent = new Intent("com.google.android.gcm.intent.SEND");
        if (bundle != null) {
            intent.putExtras(bundle);
        }
        zze(intent);
        intent.setPackage(zzl);
        intent.putExtra(Constants.MessagePayloadKeys.TO, str);
        intent.putExtra(Constants.MessagePayloadKeys.MSGID, str2);
        intent.putExtra(Constants.MessagePayloadKeys.TTL, Long.toString(j));
        int indexOf = str.indexOf(64);
        String substring = indexOf > 0 ? str.substring(0, indexOf) : str;
        InstanceID.getInstance(this.zzl);
        intent.putExtra("google.from", InstanceID.zzp().zzf("", substring, "GCM"));
        if (zzl.contains(".gsf")) {
            Bundle bundle2 = new Bundle();
            for (String str3 : bundle.keySet()) {
                Object obj = bundle.get(str3);
                if (obj instanceof String) {
                    String valueOf = String.valueOf(str3);
                    bundle2.putString(valueOf.length() != 0 ? Constants.MessageNotificationKeys.RESERVED_PREFIX.concat(valueOf) : new String(Constants.MessageNotificationKeys.RESERVED_PREFIX), (String) obj);
                }
            }
            bundle2.putString(Constants.MessagePayloadKeys.TO, str);
            bundle2.putString(Constants.MessagePayloadKeys.MSGID, str2);
            InstanceID.getInstance(this.zzl).zze("GCM", "upstream", bundle2);
            return;
        }
        this.zzl.sendOrderedBroadcast(intent, "com.google.android.gtalkservice.permission.GTALK_SERVICE");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean zzd(Intent intent) {
        Handler remove;
        String stringExtra = intent.getStringExtra("In-Reply-To");
        if (stringExtra == null && intent.hasExtra(Constants.IPC_BUNDLE_KEY_SEND_ERROR)) {
            stringExtra = intent.getStringExtra(Constants.MessagePayloadKeys.MSGID);
        }
        if (stringExtra == null || (remove = this.zzag.remove(stringExtra)) == null) {
            return false;
        }
        Message obtain = Message.obtain();
        obtain.obj = intent;
        return remove.sendMessage(obtain);
    }

    @Deprecated
    public synchronized void unregister() throws IOException {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            throw new IOException("MAIN_THREAD");
        }
        InstanceID.getInstance(this.zzl).deleteInstanceID();
    }

    @Deprecated
    public synchronized String register(String... strArr) throws IOException {
        return zzd(zzaf.zzk(this.zzl), strArr);
    }

    @Deprecated
    private final synchronized String zzd(boolean z, String... strArr) throws IOException {
        String zzl = zzaf.zzl(this.zzl);
        if (zzl == null) {
            throw new IOException("SERVICE_NOT_AVAILABLE");
        }
        if (strArr == null || strArr.length == 0) {
            throw new IllegalArgumentException("No senderIds");
        }
        StringBuilder sb = new StringBuilder(strArr[0]);
        for (int i = 1; i < strArr.length; i++) {
            sb.append(',');
            sb.append(strArr[i]);
        }
        String sb2 = sb.toString();
        Bundle bundle = new Bundle();
        if (zzl.contains(".gsf")) {
            bundle.putString("legacy.sender", sb2);
            return InstanceID.getInstance(this.zzl).getToken(sb2, "GCM", bundle);
        }
        bundle.putString("sender", sb2);
        Intent zzd = zzd(bundle, z);
        if (zzd == null) {
            throw new IOException("SERVICE_NOT_AVAILABLE");
        }
        String stringExtra = zzd.getStringExtra("registration_id");
        if (stringExtra != null) {
            return stringExtra;
        }
        String stringExtra2 = zzd.getStringExtra(Constants.IPC_BUNDLE_KEY_SEND_ERROR);
        if (stringExtra2 != null) {
            throw new IOException(stringExtra2);
        }
        throw new IOException("SERVICE_NOT_AVAILABLE");
    }

    @Deprecated
    private final Intent zzd(Bundle bundle, boolean z) throws IOException {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            throw new IOException("MAIN_THREAD");
        }
        if (zzf(this.zzl) < 0) {
            throw new IOException("Google Play Services missing");
        }
        Intent intent = new Intent(z ? "com.google.iid.TOKEN_REQUEST" : "com.google.android.c2dm.intent.REGISTER");
        intent.setPackage(zzaf.zzl(this.zzl));
        zze(intent);
        int andIncrement = zzah.getAndIncrement();
        StringBuilder sb = new StringBuilder(21);
        sb.append("google.rpc");
        sb.append(andIncrement);
        intent.putExtra(Constants.MessagePayloadKeys.MSGID, sb.toString());
        intent.putExtras(bundle);
        intent.putExtra("google.messenger", this.zzaj);
        if (z) {
            this.zzl.sendBroadcast(intent);
        } else {
            this.zzl.startService(intent);
        }
        try {
            return this.zzai.poll(30000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            throw new IOException(e.getMessage());
        }
    }

    @Deprecated
    public String getMessageType(Intent intent) {
        if (!"com.google.android.c2dm.intent.RECEIVE".equals(intent.getAction())) {
            return null;
        }
        String stringExtra = intent.getStringExtra(Constants.MessagePayloadKeys.MESSAGE_TYPE);
        return stringExtra != null ? stringExtra : "gcm";
    }

    private final synchronized void zze(Intent intent) {
        if (this.zzaf == null) {
            Intent intent2 = new Intent();
            intent2.setPackage("com.google.example.invalidpackage");
            this.zzaf = PendingIntent.getBroadcast(this.zzl, 0, intent2, 0);
        }
        intent.putExtra(SettingsJsonConstants.APP_KEY, this.zzaf);
    }

    private final synchronized void zzh() {
        PendingIntent pendingIntent = this.zzaf;
        if (pendingIntent != null) {
            pendingIntent.cancel();
            this.zzaf = null;
        }
    }

    public static int zzf(Context context) {
        String zzl = zzaf.zzl(context);
        if (zzl == null) {
            return -1;
        }
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(zzl, 0);
            if (packageInfo != null) {
                return packageInfo.versionCode;
            }
            return -1;
        } catch (PackageManager.NameNotFoundException unused) {
            return -1;
        }
    }
}

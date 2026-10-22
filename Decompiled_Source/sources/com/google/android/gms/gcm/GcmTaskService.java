package com.google.android.gms.gcm;

import android.app.Service;
import android.content.ComponentName;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import com.evernote.android.job.JobStorage;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.util.UidVerifier;
import com.google.android.gms.internal.gcm.zzq;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;

/* loaded from: classes2.dex */
public abstract class GcmTaskService extends Service {
    public static final String SERVICE_ACTION_EXECUTE_TASK = "com.google.android.gms.gcm.ACTION_TASK_READY";
    public static final String SERVICE_ACTION_INITIALIZE = "com.google.android.gms.gcm.SERVICE_ACTION_INITIALIZE";
    public static final String SERVICE_PERMISSION = "com.google.android.gms.permission.BIND_NETWORK_TASK_SERVICE";
    private ComponentName componentName;
    private final Object lock = new Object();
    private com.google.android.gms.internal.gcm.zzl zzg;
    private int zzu;
    private ExecutorService zzv;
    private Messenger zzw;
    private GcmNetworkManager zzx;

    public void onInitializeTasks() {
    }

    public abstract int onRunTask(TaskParams taskParams);

    class zzd extends com.google.android.gms.internal.gcm.zzj {
        zzd(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            Messenger messenger;
            if (!UidVerifier.uidHasPackageName(GcmTaskService.this, message.sendingUid, "com.google.android.gms")) {
                Log.e("GcmTaskService", "unable to verify presence of Google Play Services");
                return;
            }
            int i = message.what;
            if (i == 1) {
                Bundle data = message.getData();
                if (data.isEmpty() || (messenger = message.replyTo) == null) {
                    return;
                }
                String string = data.getString(JobStorage.COLUMN_TAG);
                ArrayList parcelableArrayList = data.getParcelableArrayList("triggered_uris");
                long j = data.getLong("max_exec_duration", 180L);
                if (GcmTaskService.this.zzg(string)) {
                    return;
                }
                GcmTaskService.this.zzd(GcmTaskService.this.new zze(string, messenger, data.getBundle(JobStorage.COLUMN_EXTRAS), j, parcelableArrayList));
                return;
            }
            if (i == 2) {
                if (Log.isLoggable("GcmTaskService", 3)) {
                    String valueOf = String.valueOf(message);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 45);
                    sb.append("ignoring unimplemented stop message for now: ");
                    sb.append(valueOf);
                    Log.d("GcmTaskService", sb.toString());
                    return;
                }
                return;
            }
            if (i == 4) {
                GcmTaskService.this.onInitializeTasks();
                return;
            }
            String valueOf2 = String.valueOf(message);
            StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 31);
            sb2.append("Unrecognized message received: ");
            sb2.append(valueOf2);
            Log.e("GcmTaskService", sb2.toString());
        }
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        this.zzx = GcmNetworkManager.getInstance(this);
        this.zzv = com.google.android.gms.internal.gcm.zzg.zzaa().zzd(10, new com.google.android.gms.gcm.zze(this), 10);
        this.zzw = new Messenger(new zzd(Looper.getMainLooper()));
        this.componentName = new ComponentName(this, getClass());
        com.google.android.gms.internal.gcm.zzm.zzab();
        this.zzg = com.google.android.gms.internal.gcm.zzm.zzdk;
    }

    class zze implements Runnable {
        private final Bundle extras;
        private final String tag;
        private final List<Uri> zzaa;
        private final long zzab;
        private final zzg zzac;
        private final Messenger zzad;

        zze(String str, IBinder iBinder, Bundle bundle, long j, List<Uri> list) {
            zzg zzhVar;
            this.tag = str;
            if (iBinder == null) {
                zzhVar = null;
            } else {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.gcm.INetworkTaskCallback");
                zzhVar = queryLocalInterface instanceof zzg ? (zzg) queryLocalInterface : new zzh(iBinder);
            }
            this.zzac = zzhVar;
            this.extras = bundle;
            this.zzab = j;
            this.zzaa = list;
            this.zzad = null;
        }

        zze(String str, Messenger messenger, Bundle bundle, long j, List<Uri> list) {
            this.tag = str;
            this.zzad = messenger;
            this.extras = bundle;
            this.zzab = j;
            this.zzaa = list;
            this.zzac = null;
        }

        @Override // java.lang.Runnable
        public final void run() {
            String valueOf = String.valueOf(this.tag);
            zzp zzpVar = new zzp(valueOf.length() != 0 ? "nts:client:onRunTask:".concat(valueOf) : new String("nts:client:onRunTask:"));
            try {
                TaskParams taskParams = new TaskParams(this.tag, this.extras, this.zzab, this.zzaa);
                GcmTaskService.this.zzg.zzd("onRunTask", com.google.android.gms.internal.gcm.zzp.zzdo);
                try {
                    zze(GcmTaskService.this.onRunTask(taskParams));
                    zzd((Throwable) null, zzpVar);
                } finally {
                }
            } finally {
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zze(int i) {
            synchronized (GcmTaskService.this.lock) {
                try {
                    try {
                    } catch (RemoteException unused) {
                        String valueOf = String.valueOf(this.tag);
                        Log.e("GcmTaskService", valueOf.length() != 0 ? "Error reporting result of operation to scheduler for ".concat(valueOf) : new String("Error reporting result of operation to scheduler for "));
                        GcmTaskService.this.zzx.zze(this.tag, GcmTaskService.this.componentName.getClassName());
                        if (!zzg() && !GcmTaskService.this.zzx.zzf(GcmTaskService.this.componentName.getClassName())) {
                            GcmTaskService gcmTaskService = GcmTaskService.this;
                            gcmTaskService.stopSelf(gcmTaskService.zzu);
                        }
                    }
                    if (GcmTaskService.this.zzx.zzf(this.tag, GcmTaskService.this.componentName.getClassName())) {
                        return;
                    }
                    if (zzg()) {
                        Messenger messenger = this.zzad;
                        Message obtain = Message.obtain();
                        obtain.what = 3;
                        obtain.arg1 = i;
                        Bundle bundle = new Bundle();
                        bundle.putParcelable("component", GcmTaskService.this.componentName);
                        bundle.putString(JobStorage.COLUMN_TAG, this.tag);
                        obtain.setData(bundle);
                        messenger.send(obtain);
                    } else {
                        this.zzac.zzf(i);
                    }
                    GcmTaskService.this.zzx.zze(this.tag, GcmTaskService.this.componentName.getClassName());
                    if (!zzg() && !GcmTaskService.this.zzx.zzf(GcmTaskService.this.componentName.getClassName())) {
                        GcmTaskService gcmTaskService2 = GcmTaskService.this;
                        gcmTaskService2.stopSelf(gcmTaskService2.zzu);
                    }
                } finally {
                    GcmTaskService.this.zzx.zze(this.tag, GcmTaskService.this.componentName.getClassName());
                    if (!zzg() && !GcmTaskService.this.zzx.zzf(GcmTaskService.this.componentName.getClassName())) {
                        GcmTaskService gcmTaskService3 = GcmTaskService.this;
                        gcmTaskService3.stopSelf(gcmTaskService3.zzu);
                    }
                }
            }
        }

        private final boolean zzg() {
            return this.zzad != null;
        }

        private static /* synthetic */ void zzd(Throwable th, zzp zzpVar) {
            if (th == null) {
                zzpVar.close();
                return;
            }
            try {
                zzpVar.close();
            } catch (Throwable th2) {
                zzq.zzd(th, th2);
            }
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        List<Runnable> shutdownNow = this.zzv.shutdownNow();
        if (shutdownNow.isEmpty()) {
            return;
        }
        int size = shutdownNow.size();
        StringBuilder sb = new StringBuilder(79);
        sb.append("Shutting down, but not all tasks are finished executing. Remaining: ");
        sb.append(size);
        Log.e("GcmTaskService", sb.toString());
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        if (intent == null) {
            return 2;
        }
        try {
            intent.setExtrasClassLoader(PendingCallback.class.getClassLoader());
            String action = intent.getAction();
            if (SERVICE_ACTION_EXECUTE_TASK.equals(action)) {
                String stringExtra = intent.getStringExtra(JobStorage.COLUMN_TAG);
                Parcelable parcelableExtra = intent.getParcelableExtra("callback");
                Bundle bundleExtra = intent.getBundleExtra(JobStorage.COLUMN_EXTRAS);
                ArrayList parcelableArrayListExtra = intent.getParcelableArrayListExtra("triggered_uris");
                long longExtra = intent.getLongExtra("max_exec_duration", 180L);
                if (!(parcelableExtra instanceof PendingCallback)) {
                    String packageName = getPackageName();
                    StringBuilder sb = new StringBuilder(String.valueOf(packageName).length() + 47 + String.valueOf(stringExtra).length());
                    sb.append(packageName);
                    sb.append(" ");
                    sb.append(stringExtra);
                    sb.append(": Could not process request, invalid callback.");
                    Log.e("GcmTaskService", sb.toString());
                    return 2;
                }
                if (zzg(stringExtra)) {
                    return 2;
                }
                zzd(new zze(stringExtra, ((PendingCallback) parcelableExtra).zzan, bundleExtra, longExtra, parcelableArrayListExtra));
            } else if (SERVICE_ACTION_INITIALIZE.equals(action)) {
                onInitializeTasks();
            } else {
                StringBuilder sb2 = new StringBuilder(String.valueOf(action).length() + 37);
                sb2.append("Unknown action received ");
                sb2.append(action);
                sb2.append(", terminating");
                Log.e("GcmTaskService", sb2.toString());
            }
            return 2;
        } finally {
            zzd(i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean zzg(String str) {
        boolean z;
        synchronized (this.lock) {
            z = !this.zzx.zzd(str, this.componentName.getClassName());
            if (z) {
                String packageName = getPackageName();
                StringBuilder sb = new StringBuilder(String.valueOf(packageName).length() + 44 + String.valueOf(str).length());
                sb.append(packageName);
                sb.append(" ");
                sb.append(str);
                sb.append(": Task already running, won't start another");
                Log.w("GcmTaskService", sb.toString());
            }
        }
        return z;
    }

    private final void zzd(int i) {
        synchronized (this.lock) {
            this.zzu = i;
            if (!this.zzx.zzf(this.componentName.getClassName())) {
                stopSelf(this.zzu);
            }
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        if (intent != null && PlatformVersion.isAtLeastLollipop() && SERVICE_ACTION_EXECUTE_TASK.equals(intent.getAction())) {
            return this.zzw.getBinder();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzd(zze zzeVar) {
        try {
            this.zzv.execute(zzeVar);
        } catch (RejectedExecutionException e) {
            Log.e("GcmTaskService", "Executor is shutdown. onDestroy was called but main looper had an unprocessed start task message. The task will be retried with backoff delay.", e);
            zzeVar.zze(1);
        }
    }
}

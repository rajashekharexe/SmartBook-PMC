package com.squareup.picasso;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;

/* loaded from: classes2.dex */
class Dispatcher {
    static final int AIRPLANE_MODE_CHANGE = 10;
    private static final int AIRPLANE_MODE_OFF = 0;
    private static final int AIRPLANE_MODE_ON = 1;
    private static final int BATCH_DELAY = 200;
    private static final String DISPATCHER_THREAD_NAME = "Dispatcher";
    static final int HUNTER_BATCH_COMPLETE = 8;
    static final int HUNTER_COMPLETE = 4;
    static final int HUNTER_DECODE_FAILED = 6;
    static final int HUNTER_DELAY_NEXT_BATCH = 7;
    static final int HUNTER_RETRY = 5;
    static final int NETWORK_STATE_CHANGE = 9;
    static final int REQUEST_CANCEL = 2;
    static final int REQUEST_GCED = 3;
    static final int REQUEST_SUBMIT = 1;
    private static final int RETRY_DELAY = 500;
    boolean airplaneMode;
    final List<BitmapHunter> batch;
    final Cache cache;
    final Context context;
    final DispatcherThread dispatcherThread;
    final Downloader downloader;
    final Handler handler;
    final Map<String, BitmapHunter> hunterMap;
    final Handler mainThreadHandler;
    NetworkInfo networkInfo;
    final NetworkBroadcastReceiver receiver;
    final ExecutorService service;
    final Stats stats;

    Dispatcher(Context context, ExecutorService executorService, Handler handler, Downloader downloader, Cache cache, Stats stats) {
        DispatcherThread dispatcherThread = new DispatcherThread();
        this.dispatcherThread = dispatcherThread;
        dispatcherThread.start();
        this.context = context;
        this.service = executorService;
        this.hunterMap = new LinkedHashMap();
        this.handler = new DispatcherHandler(dispatcherThread.getLooper(), this);
        this.downloader = downloader;
        this.mainThreadHandler = handler;
        this.cache = cache;
        this.stats = stats;
        this.batch = new ArrayList(4);
        this.airplaneMode = Utils.isAirplaneModeOn(context);
        NetworkBroadcastReceiver networkBroadcastReceiver = new NetworkBroadcastReceiver(context);
        this.receiver = networkBroadcastReceiver;
        networkBroadcastReceiver.register();
    }

    void shutdown() {
        this.service.shutdown();
        this.dispatcherThread.quit();
        this.receiver.unregister();
    }

    void dispatchSubmit(Action action) {
        Handler handler = this.handler;
        handler.sendMessage(handler.obtainMessage(1, action));
    }

    void dispatchCancel(Action action) {
        Handler handler = this.handler;
        handler.sendMessage(handler.obtainMessage(2, action));
    }

    void dispatchComplete(BitmapHunter bitmapHunter) {
        Handler handler = this.handler;
        handler.sendMessage(handler.obtainMessage(4, bitmapHunter));
    }

    void dispatchRetry(BitmapHunter bitmapHunter) {
        Handler handler = this.handler;
        handler.sendMessageDelayed(handler.obtainMessage(5, bitmapHunter), 500L);
    }

    void dispatchFailed(BitmapHunter bitmapHunter) {
        Handler handler = this.handler;
        handler.sendMessage(handler.obtainMessage(6, bitmapHunter));
    }

    void dispatchNetworkStateChange(NetworkInfo networkInfo) {
        Handler handler = this.handler;
        handler.sendMessage(handler.obtainMessage(9, networkInfo));
    }

    void dispatchAirplaneModeChange(boolean z) {
        Handler handler = this.handler;
        handler.sendMessage(handler.obtainMessage(10, z ? 1 : 0, 0));
    }

    void performSubmit(Action action) {
        BitmapHunter bitmapHunter = this.hunterMap.get(action.getKey());
        if (bitmapHunter != null) {
            bitmapHunter.attach(action);
        } else {
            if (this.service.isShutdown()) {
                return;
            }
            BitmapHunter forRequest = BitmapHunter.forRequest(this.context, action.getPicasso(), this, this.cache, this.stats, action, this.downloader);
            forRequest.future = this.service.submit(forRequest);
            this.hunterMap.put(action.getKey(), forRequest);
        }
    }

    void performCancel(Action action) {
        String key = action.getKey();
        BitmapHunter bitmapHunter = this.hunterMap.get(key);
        if (bitmapHunter != null) {
            bitmapHunter.detach(action);
            if (bitmapHunter.cancel()) {
                this.hunterMap.remove(key);
            }
        }
    }

    void performRetry(BitmapHunter bitmapHunter) {
        if (bitmapHunter.isCancelled()) {
            return;
        }
        if (this.service.isShutdown()) {
            performError(bitmapHunter);
        } else if (bitmapHunter.shouldRetry(this.airplaneMode, this.networkInfo)) {
            bitmapHunter.future = this.service.submit(bitmapHunter);
        } else {
            performError(bitmapHunter);
        }
    }

    void performComplete(BitmapHunter bitmapHunter) {
        if (!bitmapHunter.shouldSkipMemoryCache()) {
            this.cache.set(bitmapHunter.getKey(), bitmapHunter.getResult());
        }
        this.hunterMap.remove(bitmapHunter.getKey());
        batch(bitmapHunter);
    }

    void performBatchComplete() {
        ArrayList arrayList = new ArrayList(this.batch);
        this.batch.clear();
        Handler handler = this.mainThreadHandler;
        handler.sendMessage(handler.obtainMessage(8, arrayList));
    }

    void performError(BitmapHunter bitmapHunter) {
        this.hunterMap.remove(bitmapHunter.getKey());
        batch(bitmapHunter);
    }

    void performAirplaneModeChange(boolean z) {
        this.airplaneMode = z;
    }

    void performNetworkStateChange(NetworkInfo networkInfo) {
        this.networkInfo = networkInfo;
        ExecutorService executorService = this.service;
        if (executorService instanceof PicassoExecutorService) {
            ((PicassoExecutorService) executorService).adjustThreadCount(networkInfo);
        }
    }

    private void batch(BitmapHunter bitmapHunter) {
        if (bitmapHunter.isCancelled()) {
            return;
        }
        this.batch.add(bitmapHunter);
        if (this.handler.hasMessages(7)) {
            return;
        }
        this.handler.sendEmptyMessageDelayed(7, 200L);
    }

    private static class DispatcherHandler extends Handler {
        private final Dispatcher dispatcher;

        public DispatcherHandler(Looper looper, Dispatcher dispatcher) {
            super(looper);
            this.dispatcher = dispatcher;
        }

        @Override // android.os.Handler
        public void handleMessage(final Message message) {
            switch (message.what) {
                case 1:
                    this.dispatcher.performSubmit((Action) message.obj);
                    break;
                case 2:
                    this.dispatcher.performCancel((Action) message.obj);
                    break;
                case 3:
                case 8:
                default:
                    Picasso.HANDLER.post(new Runnable() { // from class: com.squareup.picasso.Dispatcher.DispatcherHandler.1
                        @Override // java.lang.Runnable
                        public void run() {
                            throw new AssertionError("Unknown handler message received: " + message.what);
                        }
                    });
                    break;
                case 4:
                    this.dispatcher.performComplete((BitmapHunter) message.obj);
                    break;
                case 5:
                    this.dispatcher.performRetry((BitmapHunter) message.obj);
                    break;
                case 6:
                    this.dispatcher.performError((BitmapHunter) message.obj);
                    break;
                case 7:
                    this.dispatcher.performBatchComplete();
                    break;
                case 9:
                    this.dispatcher.performNetworkStateChange((NetworkInfo) message.obj);
                    break;
                case 10:
                    this.dispatcher.performAirplaneModeChange(message.arg1 == 1);
                    break;
            }
        }
    }

    static class DispatcherThread extends HandlerThread {
        DispatcherThread() {
            super("Picasso-Dispatcher", 10);
        }
    }

    private class NetworkBroadcastReceiver extends BroadcastReceiver {
        private static final String EXTRA_AIRPLANE_STATE = "state";
        private final ConnectivityManager connectivityManager;

        NetworkBroadcastReceiver(Context context) {
            this.connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        }

        void register() {
            boolean z = (Dispatcher.this.service instanceof PicassoExecutorService) && Utils.hasPermission(Dispatcher.this.context, "android.permission.ACCESS_NETWORK_STATE");
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.AIRPLANE_MODE");
            if (z) {
                intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            }
            Dispatcher.this.context.registerReceiver(this, intentFilter);
        }

        void unregister() {
            Dispatcher.this.context.unregisterReceiver(this);
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent == null) {
                return;
            }
            String action = intent.getAction();
            Bundle extras = intent.getExtras();
            if ("android.intent.action.AIRPLANE_MODE".equals(action)) {
                Dispatcher.this.dispatchAirplaneModeChange(extras.getBoolean("state", false));
            } else if ("android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
                Dispatcher.this.dispatchNetworkStateChange(this.connectivityManager.getActiveNetworkInfo());
            }
        }
    }
}

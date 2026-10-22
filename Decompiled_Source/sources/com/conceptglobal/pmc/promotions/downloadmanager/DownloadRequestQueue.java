package com.conceptglobal.pmc.promotions.downloadmanager;

import android.os.Handler;
import android.os.Looper;
import java.security.InvalidParameterException;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class DownloadRequestQueue {
    private CallBackDelivery mDelivery;
    private DownloadDispatcher[] mDownloadDispatchers;
    private Set<DownloadRequest> mCurrentRequests = new HashSet();
    private PriorityBlockingQueue<DownloadRequest> mDownloadQueue = new PriorityBlockingQueue<>();
    private AtomicInteger mSequenceGenerator = new AtomicInteger();

    class CallBackDelivery {
        private final Executor mCallBackExecutor;

        public CallBackDelivery(final Handler handler) {
            this.mCallBackExecutor = new Executor() { // from class: com.conceptglobal.pmc.promotions.downloadmanager.DownloadRequestQueue.CallBackDelivery.1
                @Override // java.util.concurrent.Executor
                public void execute(Runnable runnable) {
                    handler.post(runnable);
                }
            };
        }

        public void postDownloadComplete(final DownloadRequest downloadRequest) {
            this.mCallBackExecutor.execute(new Runnable() { // from class: com.conceptglobal.pmc.promotions.downloadmanager.DownloadRequestQueue.CallBackDelivery.2
                @Override // java.lang.Runnable
                public void run() {
                    if (downloadRequest.getDownloadListener() != null) {
                        downloadRequest.getDownloadListener().onDownloadComplete(downloadRequest.getDownloadId());
                    }
                    if (downloadRequest.getStatusListener() != null) {
                        downloadRequest.getStatusListener().onDownloadComplete(downloadRequest);
                    }
                }
            });
        }

        public void postDownloadFailed(final DownloadRequest downloadRequest, final int i, final String str) {
            this.mCallBackExecutor.execute(new Runnable() { // from class: com.conceptglobal.pmc.promotions.downloadmanager.DownloadRequestQueue.CallBackDelivery.3
                @Override // java.lang.Runnable
                public void run() {
                    if (downloadRequest.getDownloadListener() != null) {
                        downloadRequest.getDownloadListener().onDownloadFailed(downloadRequest.getDownloadId(), i, str);
                    }
                    if (downloadRequest.getStatusListener() != null) {
                        downloadRequest.getStatusListener().onDownloadFailed(downloadRequest, i, str);
                    }
                }
            });
        }

        public void postProgressUpdate(final DownloadRequest downloadRequest, final long j, final long j2, final int i) {
            this.mCallBackExecutor.execute(new Runnable() { // from class: com.conceptglobal.pmc.promotions.downloadmanager.DownloadRequestQueue.CallBackDelivery.4
                @Override // java.lang.Runnable
                public void run() {
                    if (downloadRequest.getDownloadListener() != null) {
                        downloadRequest.getDownloadListener().onProgress(downloadRequest.getDownloadId(), j, j2, i);
                    }
                    if (downloadRequest.getStatusListener() != null) {
                        downloadRequest.getStatusListener().onProgress(downloadRequest, j, j2, i);
                    }
                }
            });
        }
    }

    public DownloadRequestQueue() {
        initialize(new Handler(Looper.getMainLooper()));
    }

    public DownloadRequestQueue(int i) {
        initialize(new Handler(Looper.getMainLooper()), i);
    }

    public DownloadRequestQueue(Handler handler) throws InvalidParameterException {
        if (handler == null) {
            throw new InvalidParameterException("callbackHandler must not be null");
        }
        initialize(handler);
    }

    public void start() {
        stop();
        for (int i = 0; i < this.mDownloadDispatchers.length; i++) {
            DownloadDispatcher downloadDispatcher = new DownloadDispatcher(this.mDownloadQueue, this.mDelivery);
            this.mDownloadDispatchers[i] = downloadDispatcher;
            downloadDispatcher.start();
        }
    }

    int add(DownloadRequest downloadRequest) {
        int downloadId = getDownloadId();
        downloadRequest.setDownloadRequestQueue(this);
        synchronized (this.mCurrentRequests) {
            this.mCurrentRequests.add(downloadRequest);
        }
        downloadRequest.setDownloadId(downloadId);
        this.mDownloadQueue.add(downloadRequest);
        return downloadId;
    }

    int query(int i) {
        synchronized (this.mCurrentRequests) {
            for (DownloadRequest downloadRequest : this.mCurrentRequests) {
                if (downloadRequest.getDownloadId() == i) {
                    return downloadRequest.getDownloadState();
                }
            }
            return 64;
        }
    }

    void cancelAll() {
        synchronized (this.mCurrentRequests) {
            Iterator<DownloadRequest> it = this.mCurrentRequests.iterator();
            while (it.hasNext()) {
                it.next().cancel();
            }
            this.mCurrentRequests.clear();
        }
    }

    int cancel(int i) {
        synchronized (this.mCurrentRequests) {
            for (DownloadRequest downloadRequest : this.mCurrentRequests) {
                if (downloadRequest.getDownloadId() == i) {
                    downloadRequest.cancel();
                    return 1;
                }
            }
            return 0;
        }
    }

    void finish(DownloadRequest downloadRequest) {
        Set<DownloadRequest> set = this.mCurrentRequests;
        if (set != null) {
            synchronized (set) {
                this.mCurrentRequests.remove(downloadRequest);
            }
        }
    }

    void release() {
        Set<DownloadRequest> set = this.mCurrentRequests;
        if (set != null) {
            synchronized (set) {
                this.mCurrentRequests.clear();
                this.mCurrentRequests = null;
            }
        }
        if (this.mDownloadQueue != null) {
            this.mDownloadQueue = null;
        }
        if (this.mDownloadDispatchers == null) {
            return;
        }
        stop();
        int i = 0;
        while (true) {
            DownloadDispatcher[] downloadDispatcherArr = this.mDownloadDispatchers;
            if (i < downloadDispatcherArr.length) {
                downloadDispatcherArr[i] = null;
                i++;
            } else {
                this.mDownloadDispatchers = null;
                return;
            }
        }
    }

    private void initialize(Handler handler) {
        this.mDownloadDispatchers = new DownloadDispatcher[Runtime.getRuntime().availableProcessors()];
        this.mDelivery = new CallBackDelivery(handler);
    }

    private void initialize(Handler handler, int i) {
        this.mDownloadDispatchers = new DownloadDispatcher[i];
        this.mDelivery = new CallBackDelivery(handler);
    }

    private void stop() {
        int i = 0;
        while (true) {
            DownloadDispatcher[] downloadDispatcherArr = this.mDownloadDispatchers;
            if (i >= downloadDispatcherArr.length) {
                return;
            }
            DownloadDispatcher downloadDispatcher = downloadDispatcherArr[i];
            if (downloadDispatcher != null) {
                downloadDispatcher.quit();
            }
            i++;
        }
    }

    private int getDownloadId() {
        return this.mSequenceGenerator.incrementAndGet();
    }
}

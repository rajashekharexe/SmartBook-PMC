package com.conceptglobal.pmc.promotions.downloadmanager;

import android.os.Handler;
import java.security.InvalidParameterException;

/* loaded from: classes.dex */
public class FileDownloadManager implements DownloadManager {
    private DownloadRequestQueue mRequestQueue;

    public FileDownloadManager() {
        this(true);
    }

    public FileDownloadManager(boolean z) {
        DownloadRequestQueue downloadRequestQueue = new DownloadRequestQueue();
        this.mRequestQueue = downloadRequestQueue;
        downloadRequestQueue.start();
        setLoggingEnabled(z);
    }

    public FileDownloadManager(Handler handler) throws InvalidParameterException {
        DownloadRequestQueue downloadRequestQueue = new DownloadRequestQueue(handler);
        this.mRequestQueue = downloadRequestQueue;
        downloadRequestQueue.start();
        setLoggingEnabled(true);
    }

    public FileDownloadManager(int i) {
        DownloadRequestQueue downloadRequestQueue = new DownloadRequestQueue(i);
        this.mRequestQueue = downloadRequestQueue;
        downloadRequestQueue.start();
        setLoggingEnabled(true);
    }

    @Override // com.conceptglobal.pmc.promotions.downloadmanager.DownloadManager
    public int add(DownloadRequest downloadRequest) throws IllegalArgumentException {
        checkReleased("add(...) called on a released FileDownloadManager.");
        if (downloadRequest == null) {
            throw new IllegalArgumentException("DownloadRequest cannot be null");
        }
        return this.mRequestQueue.add(downloadRequest);
    }

    @Override // com.conceptglobal.pmc.promotions.downloadmanager.DownloadManager
    public int cancel(int i) {
        checkReleased("cancel(...) called on a released FileDownloadManager.");
        return this.mRequestQueue.cancel(i);
    }

    @Override // com.conceptglobal.pmc.promotions.downloadmanager.DownloadManager
    public void cancelAll() {
        checkReleased("cancelAll() called on a released FileDownloadManager.");
        this.mRequestQueue.cancelAll();
    }

    @Override // com.conceptglobal.pmc.promotions.downloadmanager.DownloadManager
    public int query(int i) {
        checkReleased("query(...) called on a released FileDownloadManager.");
        return this.mRequestQueue.query(i);
    }

    @Override // com.conceptglobal.pmc.promotions.downloadmanager.DownloadManager
    public void release() {
        if (isReleased()) {
            return;
        }
        this.mRequestQueue.release();
        this.mRequestQueue = null;
    }

    @Override // com.conceptglobal.pmc.promotions.downloadmanager.DownloadManager
    public boolean isReleased() {
        return this.mRequestQueue == null;
    }

    private void checkReleased(String str) {
        if (isReleased()) {
            throw new IllegalStateException(str);
        }
    }

    private static void setLoggingEnabled(boolean z) {
        Log.setEnabled(z);
    }
}

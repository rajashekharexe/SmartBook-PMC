package com.conceptglobal.pmc.promotions.downloadmanager;

import android.net.Uri;
import java.util.HashMap;

/* loaded from: classes.dex */
public class DownloadRequest implements Comparable<DownloadRequest> {
    private HashMap<String, String> mCustomHeader;
    private Uri mDestinationURI;
    private Object mDownloadContext;
    private int mDownloadId;
    private DownloadStatusListener mDownloadListener;
    private int mDownloadState;
    private DownloadStatusListenerV1 mDownloadStatusListenerV1;
    private DownloadRequestQueue mRequestQueue;
    private RetryPolicy mRetryPolicy;
    private Uri mUri;
    private boolean mCancelled = false;
    private boolean mDeleteDestinationFileOnFailure = true;
    private Priority mPriority = Priority.NORMAL;

    public enum Priority {
        LOW,
        NORMAL,
        HIGH,
        IMMEDIATE
    }

    public DownloadRequest(Uri uri) {
        uri.getClass();
        String scheme = uri.getScheme();
        if (scheme == null || (!scheme.equals("http") && !scheme.equals("https"))) {
            throw new IllegalArgumentException("Can only download HTTP/HTTPS URIs: " + uri);
        }
        this.mCustomHeader = new HashMap<>();
        this.mDownloadState = 1;
        this.mUri = uri;
    }

    public Priority getPriority() {
        return this.mPriority;
    }

    public DownloadRequest setPriority(Priority priority) {
        this.mPriority = priority;
        return this;
    }

    public DownloadRequest addCustomHeader(String str, String str2) {
        this.mCustomHeader.put(str, str2);
        return this;
    }

    void setDownloadRequestQueue(DownloadRequestQueue downloadRequestQueue) {
        this.mRequestQueue = downloadRequestQueue;
    }

    public RetryPolicy getRetryPolicy() {
        RetryPolicy retryPolicy = this.mRetryPolicy;
        return retryPolicy == null ? new DefaultRetryPolicy() : retryPolicy;
    }

    public DownloadRequest setRetryPolicy(RetryPolicy retryPolicy) {
        this.mRetryPolicy = retryPolicy;
        return this;
    }

    public final int getDownloadId() {
        return this.mDownloadId;
    }

    final void setDownloadId(int i) {
        this.mDownloadId = i;
    }

    int getDownloadState() {
        return this.mDownloadState;
    }

    void setDownloadState(int i) {
        this.mDownloadState = i;
    }

    DownloadStatusListener getDownloadListener() {
        return this.mDownloadListener;
    }

    @Deprecated
    public DownloadRequest setDownloadListener(DownloadStatusListener downloadStatusListener) {
        this.mDownloadListener = downloadStatusListener;
        return this;
    }

    DownloadStatusListenerV1 getStatusListener() {
        return this.mDownloadStatusListenerV1;
    }

    public DownloadRequest setStatusListener(DownloadStatusListenerV1 downloadStatusListenerV1) {
        this.mDownloadStatusListenerV1 = downloadStatusListenerV1;
        return this;
    }

    public Object getDownloadContext() {
        return this.mDownloadContext;
    }

    public DownloadRequest setDownloadContext(Object obj) {
        this.mDownloadContext = obj;
        return this;
    }

    public Uri getUri() {
        return this.mUri;
    }

    public DownloadRequest setUri(Uri uri) {
        this.mUri = uri;
        return this;
    }

    public Uri getDestinationURI() {
        return this.mDestinationURI;
    }

    public DownloadRequest setDestinationURI(Uri uri) {
        this.mDestinationURI = uri;
        return this;
    }

    public boolean getDeleteDestinationFileOnFailure() {
        return this.mDeleteDestinationFileOnFailure;
    }

    public DownloadRequest setDeleteDestinationFileOnFailure(boolean z) {
        this.mDeleteDestinationFileOnFailure = z;
        return this;
    }

    public void cancel() {
        this.mCancelled = true;
    }

    public boolean isCancelled() {
        return this.mCancelled;
    }

    HashMap<String, String> getCustomHeaders() {
        return this.mCustomHeader;
    }

    void finish() {
        this.mRequestQueue.finish(this);
    }

    @Override // java.lang.Comparable
    public int compareTo(DownloadRequest downloadRequest) {
        Priority priority = getPriority();
        Priority priority2 = downloadRequest.getPriority();
        if (priority == priority2) {
            return this.mDownloadId - downloadRequest.mDownloadId;
        }
        return priority2.ordinal() - priority.ordinal();
    }
}

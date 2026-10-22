package com.conceptglobal.pmc.promotions.downloadmanager;

/* loaded from: classes.dex */
public interface DownloadStatusListenerV1 {
    void onDownloadComplete(DownloadRequest downloadRequest);

    void onDownloadFailed(DownloadRequest downloadRequest, int i, String str);

    void onProgress(DownloadRequest downloadRequest, long j, long j2, int i);
}

package com.conceptglobal.pmc.promotions.downloadmanager;

/* loaded from: classes.dex */
public interface DownloadStatusListener {
    void onDownloadComplete(int i);

    void onDownloadFailed(int i, int i2, String str);

    void onProgress(int i, long j, long j2, int i2);
}

package com.conceptglobal.pmc.promotions.downloadmanager;

/* loaded from: classes.dex */
public interface RetryPolicy {
    float getBackOffMultiplier();

    int getCurrentRetryCount();

    int getCurrentTimeout();

    void retry() throws RetryError;
}

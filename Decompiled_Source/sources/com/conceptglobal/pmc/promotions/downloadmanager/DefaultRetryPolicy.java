package com.conceptglobal.pmc.promotions.downloadmanager;

/* loaded from: classes.dex */
public class DefaultRetryPolicy implements RetryPolicy {
    public static final float DEFAULT_BACKOFF_MULT = 1.0f;
    public static final int DEFAULT_MAX_RETRIES = 1;
    public static final int DEFAULT_TIMEOUT_MS = 5000;
    private final float mBackoffMultiplier;
    private int mCurrentRetryCount;
    private int mCurrentTimeoutMs;
    private final int mMaxNumRetries;

    public DefaultRetryPolicy() {
        this(5000, 1, 1.0f);
    }

    public DefaultRetryPolicy(int i, int i2, float f) {
        this.mCurrentTimeoutMs = i;
        this.mMaxNumRetries = i2;
        this.mBackoffMultiplier = f;
    }

    @Override // com.conceptglobal.pmc.promotions.downloadmanager.RetryPolicy
    public float getBackOffMultiplier() {
        return this.mBackoffMultiplier;
    }

    @Override // com.conceptglobal.pmc.promotions.downloadmanager.RetryPolicy
    public int getCurrentTimeout() {
        return this.mCurrentTimeoutMs;
    }

    @Override // com.conceptglobal.pmc.promotions.downloadmanager.RetryPolicy
    public int getCurrentRetryCount() {
        return this.mCurrentRetryCount;
    }

    @Override // com.conceptglobal.pmc.promotions.downloadmanager.RetryPolicy
    public void retry() throws RetryError {
        this.mCurrentRetryCount++;
        int i = this.mCurrentTimeoutMs;
        this.mCurrentTimeoutMs = (int) (i + (i * this.mBackoffMultiplier));
        if (!hasAttemptRemaining()) {
            throw new RetryError();
        }
    }

    protected boolean hasAttemptRemaining() {
        return this.mCurrentRetryCount <= this.mMaxNumRetries;
    }
}

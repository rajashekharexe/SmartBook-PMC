package com.conceptglobal.pmc.promotions.downloadmanager;

/* loaded from: classes.dex */
public class RetryError extends Exception {
    public RetryError() {
        super("Maximum retry exceeded");
    }

    public RetryError(Throwable th) {
        super(th);
    }
}

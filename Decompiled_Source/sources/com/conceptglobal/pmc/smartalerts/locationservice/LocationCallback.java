package com.conceptglobal.pmc.smartalerts.locationservice;

/* loaded from: classes.dex */
public interface LocationCallback {
    void callback(double d, double d2, int i);

    void error(Throwable th);
}

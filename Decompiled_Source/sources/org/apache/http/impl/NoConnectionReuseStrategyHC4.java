package org.apache.http.impl;

import org.apache.http.ConnectionReuseStrategy;
import org.apache.http.HttpResponse;
import org.apache.http.protocol.HttpContext;

/* loaded from: classes2.dex */
public class NoConnectionReuseStrategyHC4 implements ConnectionReuseStrategy {
    public static final NoConnectionReuseStrategyHC4 INSTANCE = new NoConnectionReuseStrategyHC4();

    @Override // org.apache.http.ConnectionReuseStrategy
    public boolean keepAlive(HttpResponse httpResponse, HttpContext httpContext) {
        return false;
    }
}

package org.apache.http.conn.ssl;

import javax.net.ssl.SSLException;

/* loaded from: classes2.dex */
public class BrowserCompatHostnameVerifierHC4 extends AbstractVerifierHC4 {
    @Override // org.apache.http.conn.ssl.AbstractVerifierHC4
    boolean validCountryWildcard(String str) {
        return true;
    }

    @Override // org.apache.http.conn.ssl.X509HostnameVerifier
    public final void verify(String str, String[] strArr, String[] strArr2) throws SSLException {
        verify(str, strArr, strArr2, false);
    }

    public final String toString() {
        return "BROWSER_COMPATIBLE";
    }
}

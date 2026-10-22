package org.apache.http.client.methods;

import java.net.URI;

/* loaded from: classes2.dex */
public class HttpDeleteHC4 extends HttpRequestBaseHC4 {
    public static final String METHOD_NAME = "DELETE";

    public HttpDeleteHC4() {
    }

    public HttpDeleteHC4(URI uri) {
        setURI(uri);
    }

    public HttpDeleteHC4(String str) {
        setURI(URI.create(str));
    }

    @Override // org.apache.http.client.methods.HttpRequestBaseHC4, org.apache.http.client.methods.HttpUriRequest
    public String getMethod() {
        return "DELETE";
    }
}

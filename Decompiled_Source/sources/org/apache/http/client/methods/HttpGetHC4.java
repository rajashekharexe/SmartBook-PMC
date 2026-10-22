package org.apache.http.client.methods;

import java.net.URI;

/* loaded from: classes2.dex */
public class HttpGetHC4 extends HttpRequestBaseHC4 {
    public static final String METHOD_NAME = "GET";

    public HttpGetHC4() {
    }

    public HttpGetHC4(URI uri) {
        setURI(uri);
    }

    public HttpGetHC4(String str) {
        setURI(URI.create(str));
    }

    @Override // org.apache.http.client.methods.HttpRequestBaseHC4, org.apache.http.client.methods.HttpUriRequest
    public String getMethod() {
        return "GET";
    }
}

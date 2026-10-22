package org.apache.http.client.methods;

import java.net.URI;

/* loaded from: classes2.dex */
public class HttpPostHC4 extends HttpEntityEnclosingRequestBaseHC4 {
    public static final String METHOD_NAME = "POST";

    public HttpPostHC4() {
    }

    public HttpPostHC4(URI uri) {
        setURI(uri);
    }

    public HttpPostHC4(String str) {
        setURI(URI.create(str));
    }

    @Override // org.apache.http.client.methods.HttpRequestBaseHC4, org.apache.http.client.methods.HttpUriRequest
    public String getMethod() {
        return "POST";
    }
}

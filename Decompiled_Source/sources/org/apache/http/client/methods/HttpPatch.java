package org.apache.http.client.methods;

import java.net.URI;

/* loaded from: classes2.dex */
public class HttpPatch extends HttpEntityEnclosingRequestBaseHC4 {
    public static final String METHOD_NAME = "PATCH";

    public HttpPatch() {
    }

    public HttpPatch(URI uri) {
        setURI(uri);
    }

    public HttpPatch(String str) {
        setURI(URI.create(str));
    }

    @Override // org.apache.http.client.methods.HttpRequestBaseHC4, org.apache.http.client.methods.HttpUriRequest
    public String getMethod() {
        return METHOD_NAME;
    }
}

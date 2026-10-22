package org.apache.http.client.protocol;

import android.util.Log;
import java.io.IOException;
import org.apache.http.HttpException;
import org.apache.http.HttpHeaders;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.conn.routing.RouteInfo;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Args;

/* loaded from: classes2.dex */
public class RequestClientConnControl implements HttpRequestInterceptor {
    private static final String PROXY_CONN_DIRECTIVE = "Proxy-Connection";
    private static final String TAG = "HttpClient";

    @Override // org.apache.http.HttpRequestInterceptor
    public void process(HttpRequest httpRequest, HttpContext httpContext) throws HttpException, IOException {
        Args.notNull(httpRequest, "HTTP request");
        if (httpRequest.getRequestLine().getMethod().equalsIgnoreCase("CONNECT")) {
            httpRequest.setHeader(PROXY_CONN_DIRECTIVE, "Keep-Alive");
            return;
        }
        RouteInfo httpRoute = HttpClientContext.adapt(httpContext).getHttpRoute();
        if (httpRoute == null) {
            if (Log.isLoggable(TAG, 3)) {
                Log.d(TAG, "Connection route not set in the context");
                return;
            }
            return;
        }
        if ((httpRoute.getHopCount() == 1 || httpRoute.isTunnelled()) && !httpRequest.containsHeader(HttpHeaders.CONNECTION)) {
            httpRequest.addHeader(HttpHeaders.CONNECTION, "Keep-Alive");
        }
        if (httpRoute.getHopCount() != 2 || httpRoute.isTunnelled() || httpRequest.containsHeader(PROXY_CONN_DIRECTIVE)) {
            return;
        }
        httpRequest.addHeader(PROXY_CONN_DIRECTIVE, "Keep-Alive");
    }
}

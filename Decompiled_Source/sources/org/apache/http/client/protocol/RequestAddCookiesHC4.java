package org.apache.http.client.protocol;

import android.util.Log;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import org.apache.http.Header;
import org.apache.http.HttpException;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.client.CookieStore;
import org.apache.http.client.config.CookieSpecs;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.config.Lookup;
import org.apache.http.conn.routing.RouteInfo;
import org.apache.http.cookie.Cookie;
import org.apache.http.cookie.CookieOrigin;
import org.apache.http.cookie.CookieSpec;
import org.apache.http.cookie.CookieSpecProvider;
import org.apache.http.cookie.SetCookie2;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Args;
import org.apache.http.util.TextUtils;

/* loaded from: classes2.dex */
public class RequestAddCookiesHC4 implements HttpRequestInterceptor {
    private static final String TAG = "HttpClient";

    @Override // org.apache.http.HttpRequestInterceptor
    public void process(HttpRequest httpRequest, HttpContext httpContext) throws HttpException, IOException {
        URI uri;
        Header versionHeader;
        Args.notNull(httpRequest, "HTTP request");
        Args.notNull(httpContext, "HTTP context");
        if (httpRequest.getRequestLine().getMethod().equalsIgnoreCase("CONNECT")) {
            return;
        }
        HttpClientContext adapt = HttpClientContext.adapt(httpContext);
        CookieStore cookieStore = adapt.getCookieStore();
        if (cookieStore == null) {
            if (Log.isLoggable(TAG, 3)) {
                Log.d(TAG, "Cookie store not specified in HTTP context");
                return;
            }
            return;
        }
        Lookup<CookieSpecProvider> cookieSpecRegistry = adapt.getCookieSpecRegistry();
        if (cookieSpecRegistry == null) {
            if (Log.isLoggable(TAG, 3)) {
                Log.d(TAG, "CookieSpec registry not specified in HTTP context");
                return;
            }
            return;
        }
        HttpHost targetHost = adapt.getTargetHost();
        if (targetHost == null) {
            if (Log.isLoggable(TAG, 3)) {
                Log.d(TAG, "Target host not set in the context");
                return;
            }
            return;
        }
        RouteInfo httpRoute = adapt.getHttpRoute();
        if (httpRoute == null) {
            if (Log.isLoggable(TAG, 3)) {
                Log.d(TAG, "Connection route not set in the context");
                return;
            }
            return;
        }
        String cookieSpec = adapt.getRequestConfig().getCookieSpec();
        if (cookieSpec == null) {
            cookieSpec = CookieSpecs.BEST_MATCH;
        }
        if (Log.isLoggable(TAG, 3)) {
            Log.d(TAG, "CookieSpec selected: " + cookieSpec);
        }
        if (httpRequest instanceof HttpUriRequest) {
            uri = ((HttpUriRequest) httpRequest).getURI();
        } else {
            try {
                uri = new URI(httpRequest.getRequestLine().getUri());
            } catch (URISyntaxException unused) {
                uri = null;
            }
        }
        String path = uri != null ? uri.getPath() : null;
        String hostName = targetHost.getHostName();
        int port = targetHost.getPort();
        if (port < 0) {
            port = httpRoute.getTargetHost().getPort();
        }
        boolean z = false;
        if (port < 0) {
            port = 0;
        }
        if (TextUtils.isEmpty(path)) {
            path = "/";
        }
        CookieOrigin cookieOrigin = new CookieOrigin(hostName, port, path, httpRoute.isSecure());
        CookieSpecProvider lookup = cookieSpecRegistry.lookup(cookieSpec);
        if (lookup == null) {
            throw new HttpException("Unsupported cookie policy: " + cookieSpec);
        }
        CookieSpec create = lookup.create(adapt);
        ArrayList<Cookie> arrayList = new ArrayList(cookieStore.getCookies());
        ArrayList arrayList2 = new ArrayList();
        Date date = new Date();
        for (Cookie cookie : arrayList) {
            if (!cookie.isExpired(date)) {
                if (create.match(cookie, cookieOrigin)) {
                    if (Log.isLoggable(TAG, 3)) {
                        Log.d(TAG, "Cookie " + cookie + " match " + cookieOrigin);
                    }
                    arrayList2.add(cookie);
                }
            } else if (Log.isLoggable(TAG, 3)) {
                Log.d(TAG, "Cookie " + cookie + " expired");
            }
        }
        if (!arrayList2.isEmpty()) {
            Iterator<Header> it = create.formatCookies(arrayList2).iterator();
            while (it.hasNext()) {
                httpRequest.addHeader(it.next());
            }
        }
        int version = create.getVersion();
        if (version > 0) {
            for (Cookie cookie2 : arrayList2) {
                if (version != cookie2.getVersion() || !(cookie2 instanceof SetCookie2)) {
                    z = true;
                }
            }
            if (z && (versionHeader = create.getVersionHeader()) != null) {
                httpRequest.addHeader(versionHeader);
            }
        }
        httpContext.setAttribute(HttpClientContext.COOKIE_SPEC, create);
        httpContext.setAttribute(HttpClientContext.COOKIE_ORIGIN, cookieOrigin);
    }
}

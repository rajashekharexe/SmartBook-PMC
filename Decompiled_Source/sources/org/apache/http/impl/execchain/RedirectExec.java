package org.apache.http.impl.execchain;

import android.util.Log;
import java.io.IOException;
import java.net.URI;
import java.util.List;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpException;
import org.apache.http.HttpHost;
import org.apache.http.ProtocolException;
import org.apache.http.auth.AuthScheme;
import org.apache.http.auth.AuthStateHC4;
import org.apache.http.client.RedirectException;
import org.apache.http.client.RedirectStrategy;
import org.apache.http.client.config.RequestConfig;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpExecutionAware;
import org.apache.http.client.methods.HttpRequestWrapper;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.client.protocol.HttpClientContext;
import org.apache.http.client.utils.URIUtilsHC4;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.conn.routing.HttpRoutePlanner;
import org.apache.http.util.Args;
import org.apache.http.util.EntityUtilsHC4;

/* loaded from: classes2.dex */
public class RedirectExec implements ClientExecChain {
    private static final String TAG = "HttpClient";
    private final RedirectStrategy redirectStrategy;
    private final ClientExecChain requestExecutor;
    private final HttpRoutePlanner routePlanner;

    public RedirectExec(ClientExecChain clientExecChain, HttpRoutePlanner httpRoutePlanner, RedirectStrategy redirectStrategy) {
        Args.notNull(clientExecChain, "HTTP client request executor");
        Args.notNull(httpRoutePlanner, "HTTP route planner");
        Args.notNull(redirectStrategy, "HTTP redirect strategy");
        this.requestExecutor = clientExecChain;
        this.routePlanner = httpRoutePlanner;
        this.redirectStrategy = redirectStrategy;
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.apache.http.impl.execchain.ClientExecChain
    public CloseableHttpResponse execute(HttpRoute httpRoute, HttpRequestWrapper httpRequestWrapper, HttpClientContext httpClientContext, HttpExecutionAware httpExecutionAware) throws IOException, HttpException {
        CloseableHttpResponse execute;
        AuthScheme authScheme;
        Args.notNull(httpRoute, "HTTP route");
        Args.notNull(httpRequestWrapper, "HTTP request");
        Args.notNull(httpClientContext, "HTTP context");
        List<URI> redirectLocations = httpClientContext.getRedirectLocations();
        if (redirectLocations != null) {
            redirectLocations.clear();
        }
        RequestConfig requestConfig = httpClientContext.getRequestConfig();
        int maxRedirects = requestConfig.getMaxRedirects() > 0 ? requestConfig.getMaxRedirects() : 50;
        int i = 0;
        HttpRequestWrapper httpRequestWrapper2 = httpRequestWrapper;
        while (true) {
            execute = this.requestExecutor.execute(httpRoute, httpRequestWrapper2, httpClientContext, httpExecutionAware);
            try {
                if (!requestConfig.isRedirectsEnabled() || !this.redirectStrategy.isRedirected(httpRequestWrapper2, execute, httpClientContext)) {
                    break;
                }
                if (i >= maxRedirects) {
                    throw new RedirectException("Maximum redirects (" + maxRedirects + ") exceeded");
                }
                i++;
                HttpUriRequest redirect = this.redirectStrategy.getRedirect(httpRequestWrapper2, execute, httpClientContext);
                if (!redirect.headerIterator().hasNext()) {
                    redirect.setHeaders(httpRequestWrapper.getOriginal().getAllHeaders());
                }
                HttpRequestWrapper wrap = HttpRequestWrapper.wrap(redirect);
                if (wrap instanceof HttpEntityEnclosingRequest) {
                    RequestEntityProxy.enhance((HttpEntityEnclosingRequest) wrap);
                }
                URI uri = wrap.getURI();
                HttpHost extractHost = URIUtilsHC4.extractHost(uri);
                if (extractHost == null) {
                    throw new ProtocolException("Redirect URI does not specify a valid host name: " + uri);
                }
                if (!httpRoute.getTargetHost().equals(extractHost)) {
                    AuthStateHC4 targetAuthState = httpClientContext.getTargetAuthState();
                    if (targetAuthState != null) {
                        if (Log.isLoggable(TAG, 3)) {
                            Log.d(TAG, "Resetting target auth state");
                        }
                        targetAuthState.reset();
                    }
                    AuthStateHC4 proxyAuthState = httpClientContext.getProxyAuthState();
                    if (proxyAuthState != null && (authScheme = proxyAuthState.getAuthScheme()) != null && authScheme.isConnectionBased()) {
                        if (Log.isLoggable(TAG, 3)) {
                            Log.d(TAG, "Resetting proxy auth state");
                        }
                        proxyAuthState.reset();
                    }
                }
                httpRoute = this.routePlanner.determineRoute(extractHost, wrap, httpClientContext);
                if (Log.isLoggable(TAG, 3)) {
                    Log.d(TAG, "Redirecting to '" + uri + "' via " + httpRoute);
                }
                EntityUtilsHC4.consume(execute.getEntity());
                execute.close();
                httpRequestWrapper2 = wrap;
            } catch (IOException e) {
                execute.close();
                throw e;
            } catch (RuntimeException e2) {
                execute.close();
                throw e2;
            } catch (HttpException e3) {
                try {
                    try {
                        EntityUtilsHC4.consume(execute.getEntity());
                    } catch (IOException e4) {
                        if (Log.isLoggable(TAG, 3)) {
                            Log.d(TAG, "I/O error while releasing connection", e4);
                        }
                    }
                    execute.close();
                    throw e3;
                } catch (Throwable th) {
                    execute.close();
                    throw th;
                }
            }
        }
        return execute;
    }
}

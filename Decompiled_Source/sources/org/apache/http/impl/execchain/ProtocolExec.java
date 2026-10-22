package org.apache.http.impl.execchain;

import android.util.Log;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import org.apache.http.HttpException;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.ProtocolException;
import org.apache.http.auth.AuthScope;
import org.apache.http.auth.UsernamePasswordCredentials;
import org.apache.http.client.CredentialsProvider;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpExecutionAware;
import org.apache.http.client.methods.HttpRequestWrapper;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.client.protocol.HttpClientContext;
import org.apache.http.client.utils.URIUtilsHC4;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.impl.client.BasicCredentialsProviderHC4;
import org.apache.http.protocol.HttpCoreContext;
import org.apache.http.protocol.HttpProcessor;
import org.apache.http.util.Args;

/* loaded from: classes2.dex */
public class ProtocolExec implements ClientExecChain {
    private static final String TAG = "HttpClient";
    private final HttpProcessor httpProcessor;
    private final ClientExecChain requestExecutor;

    public ProtocolExec(ClientExecChain clientExecChain, HttpProcessor httpProcessor) {
        Args.notNull(clientExecChain, "HTTP client request executor");
        Args.notNull(httpProcessor, "HTTP protocol processor");
        this.requestExecutor = clientExecChain;
        this.httpProcessor = httpProcessor;
    }

    void rewriteRequestURI(HttpRequestWrapper httpRequestWrapper, HttpRoute httpRoute) throws ProtocolException {
        URI rewriteURI;
        try {
            URI uri = httpRequestWrapper.getURI();
            if (uri != null) {
                if (httpRoute.getProxyHost() != null && !httpRoute.isTunnelled()) {
                    if (!uri.isAbsolute()) {
                        rewriteURI = URIUtilsHC4.rewriteURI(uri, httpRoute.getTargetHost(), true);
                    } else {
                        rewriteURI = URIUtilsHC4.rewriteURI(uri);
                    }
                } else if (uri.isAbsolute()) {
                    rewriteURI = URIUtilsHC4.rewriteURI(uri, null, true);
                } else {
                    rewriteURI = URIUtilsHC4.rewriteURI(uri);
                }
                httpRequestWrapper.setURI(rewriteURI);
            }
        } catch (URISyntaxException e) {
            throw new ProtocolException("Invalid URI: " + httpRequestWrapper.getRequestLine().getUri(), e);
        }
    }

    @Override // org.apache.http.impl.execchain.ClientExecChain
    public CloseableHttpResponse execute(HttpRoute httpRoute, HttpRequestWrapper httpRequestWrapper, HttpClientContext httpClientContext, HttpExecutionAware httpExecutionAware) throws IOException, HttpException {
        URI uri;
        String userInfo;
        Args.notNull(httpRoute, "HTTP route");
        Args.notNull(httpRequestWrapper, "HTTP request");
        Args.notNull(httpClientContext, "HTTP context");
        HttpRequest original = httpRequestWrapper.getOriginal();
        HttpHost httpHost = null;
        if (original instanceof HttpUriRequest) {
            uri = ((HttpUriRequest) original).getURI();
        } else {
            String uri2 = original.getRequestLine().getUri();
            try {
                uri = URI.create(uri2);
            } catch (IllegalArgumentException e) {
                if (Log.isLoggable(TAG, 3)) {
                    Log.d(TAG, "Unable to parse '" + uri2 + "' as a valid URI; request URI and Host header may be inconsistent", e);
                }
                uri = null;
            }
        }
        httpRequestWrapper.setURI(uri);
        rewriteRequestURI(httpRequestWrapper, httpRoute);
        HttpHost httpHost2 = (HttpHost) httpRequestWrapper.getParams().getParameter("http.virtual-host");
        if (httpHost2 != null && httpHost2.getPort() == -1) {
            int port = httpRoute.getTargetHost().getPort();
            if (port != -1) {
                httpHost2 = new HttpHost(httpHost2.getHostName(), port, httpHost2.getSchemeName());
            }
            if (Log.isLoggable(TAG, 3)) {
                Log.d(TAG, "Using virtual host" + httpHost2);
            }
        }
        if (httpHost2 != null) {
            httpHost = httpHost2;
        } else if (uri != null && uri.isAbsolute() && uri.getHost() != null) {
            httpHost = new HttpHost(uri.getHost(), uri.getPort(), uri.getScheme());
        }
        if (httpHost == null) {
            httpHost = httpRoute.getTargetHost();
        }
        if (uri != null && (userInfo = uri.getUserInfo()) != null) {
            CredentialsProvider credentialsProvider = httpClientContext.getCredentialsProvider();
            if (credentialsProvider == null) {
                credentialsProvider = new BasicCredentialsProviderHC4();
                httpClientContext.setCredentialsProvider(credentialsProvider);
            }
            credentialsProvider.setCredentials(new AuthScope(httpHost.getHostName(), httpHost.getPort()), new UsernamePasswordCredentials(userInfo));
        }
        httpClientContext.setAttribute(HttpCoreContext.HTTP_TARGET_HOST, httpHost);
        httpClientContext.setAttribute(HttpClientContext.HTTP_ROUTE, httpRoute);
        httpClientContext.setAttribute(HttpCoreContext.HTTP_REQUEST, httpRequestWrapper);
        this.httpProcessor.process(httpRequestWrapper, httpClientContext);
        CloseableHttpResponse execute = this.requestExecutor.execute(httpRoute, httpRequestWrapper, httpClientContext, httpExecutionAware);
        try {
            httpClientContext.setAttribute(HttpCoreContext.HTTP_RESPONSE, execute);
            this.httpProcessor.process(execute, httpClientContext);
            return execute;
        } catch (IOException e2) {
            execute.close();
            throw e2;
        } catch (RuntimeException e3) {
            execute.close();
            throw e3;
        } catch (HttpException e4) {
            execute.close();
            throw e4;
        }
    }
}

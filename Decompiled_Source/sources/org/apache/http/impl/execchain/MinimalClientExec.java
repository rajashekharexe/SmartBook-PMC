package org.apache.http.impl.execchain;

import java.net.URI;
import java.net.URISyntaxException;
import org.apache.http.ConnectionReuseStrategy;
import org.apache.http.ProtocolException;
import org.apache.http.client.methods.HttpRequestWrapper;
import org.apache.http.client.protocol.RequestClientConnControl;
import org.apache.http.client.utils.URIUtilsHC4;
import org.apache.http.conn.ConnectionKeepAliveStrategy;
import org.apache.http.conn.HttpClientConnectionManager;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.protocol.HttpProcessor;
import org.apache.http.protocol.HttpRequestExecutor;
import org.apache.http.protocol.ImmutableHttpProcessor;
import org.apache.http.protocol.RequestContentHC4;
import org.apache.http.protocol.RequestTargetHostHC4;
import org.apache.http.protocol.RequestUserAgentHC4;
import org.apache.http.util.Args;
import org.apache.http.util.VersionInfoHC4;

/* loaded from: classes2.dex */
public class MinimalClientExec implements ClientExecChain {
    private final HttpClientConnectionManager connManager;
    private final HttpProcessor httpProcessor;
    private final ConnectionKeepAliveStrategy keepAliveStrategy;
    private final HttpRequestExecutor requestExecutor;
    private final ConnectionReuseStrategy reuseStrategy;

    public MinimalClientExec(HttpRequestExecutor httpRequestExecutor, HttpClientConnectionManager httpClientConnectionManager, ConnectionReuseStrategy connectionReuseStrategy, ConnectionKeepAliveStrategy connectionKeepAliveStrategy) {
        Args.notNull(httpRequestExecutor, "HTTP request executor");
        Args.notNull(httpClientConnectionManager, "Client connection manager");
        Args.notNull(connectionReuseStrategy, "Connection reuse strategy");
        Args.notNull(connectionKeepAliveStrategy, "Connection keep alive strategy");
        this.httpProcessor = new ImmutableHttpProcessor(new RequestContentHC4(), new RequestTargetHostHC4(), new RequestClientConnControl(), new RequestUserAgentHC4(VersionInfoHC4.getUserAgent("Apache-HttpClient", "org.apache.http.client", getClass())));
        this.requestExecutor = httpRequestExecutor;
        this.connManager = httpClientConnectionManager;
        this.reuseStrategy = connectionReuseStrategy;
        this.keepAliveStrategy = connectionKeepAliveStrategy;
    }

    static void rewriteRequestURI(HttpRequestWrapper httpRequestWrapper, HttpRoute httpRoute) throws ProtocolException {
        URI rewriteURI;
        try {
            URI uri = httpRequestWrapper.getURI();
            if (uri != null) {
                if (uri.isAbsolute()) {
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

    /* JADX WARN: Removed duplicated region for block: B:33:0x00aa A[Catch: RuntimeException -> 0x0108, IOException -> 0x010d, HttpException -> 0x0112, ConnectionShutdownException -> 0x0117, TryCatch #3 {IOException -> 0x010d, ConnectionShutdownException -> 0x0117, RuntimeException -> 0x0108, HttpException -> 0x0112, blocks: (B:49:0x004d, B:51:0x0053, B:52:0x0057, B:53:0x005f, B:17:0x0060, B:19:0x0066, B:22:0x0070, B:24:0x0078, B:26:0x007e, B:27:0x0081, B:29:0x0089, B:31:0x0095, B:33:0x00aa, B:34:0x00ae, B:36:0x00da, B:37:0x00ec, B:39:0x00f2, B:42:0x00f9, B:44:0x00ff, B:46:0x00e9), top: B:48:0x004d }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00da A[Catch: RuntimeException -> 0x0108, IOException -> 0x010d, HttpException -> 0x0112, ConnectionShutdownException -> 0x0117, TryCatch #3 {IOException -> 0x010d, ConnectionShutdownException -> 0x0117, RuntimeException -> 0x0108, HttpException -> 0x0112, blocks: (B:49:0x004d, B:51:0x0053, B:52:0x0057, B:53:0x005f, B:17:0x0060, B:19:0x0066, B:22:0x0070, B:24:0x0078, B:26:0x007e, B:27:0x0081, B:29:0x0089, B:31:0x0095, B:33:0x00aa, B:34:0x00ae, B:36:0x00da, B:37:0x00ec, B:39:0x00f2, B:42:0x00f9, B:44:0x00ff, B:46:0x00e9), top: B:48:0x004d }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00e9 A[Catch: RuntimeException -> 0x0108, IOException -> 0x010d, HttpException -> 0x0112, ConnectionShutdownException -> 0x0117, TryCatch #3 {IOException -> 0x010d, ConnectionShutdownException -> 0x0117, RuntimeException -> 0x0108, HttpException -> 0x0112, blocks: (B:49:0x004d, B:51:0x0053, B:52:0x0057, B:53:0x005f, B:17:0x0060, B:19:0x0066, B:22:0x0070, B:24:0x0078, B:26:0x007e, B:27:0x0081, B:29:0x0089, B:31:0x0095, B:33:0x00aa, B:34:0x00ae, B:36:0x00da, B:37:0x00ec, B:39:0x00f2, B:42:0x00f9, B:44:0x00ff, B:46:0x00e9), top: B:48:0x004d }] */
    @Override // org.apache.http.impl.execchain.ClientExecChain
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.apache.http.client.methods.CloseableHttpResponse execute(org.apache.http.conn.routing.HttpRoute r8, org.apache.http.client.methods.HttpRequestWrapper r9, org.apache.http.client.protocol.HttpClientContext r10, org.apache.http.client.methods.HttpExecutionAware r11) throws java.io.IOException, org.apache.http.HttpException {
        /*
            Method dump skipped, instructions count: 322
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.http.impl.execchain.MinimalClientExec.execute(org.apache.http.conn.routing.HttpRoute, org.apache.http.client.methods.HttpRequestWrapper, org.apache.http.client.protocol.HttpClientContext, org.apache.http.client.methods.HttpExecutionAware):org.apache.http.client.methods.CloseableHttpResponse");
    }
}

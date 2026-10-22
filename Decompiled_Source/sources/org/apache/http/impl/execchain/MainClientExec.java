package org.apache.http.impl.execchain;

import android.util.Log;
import java.io.IOException;
import org.apache.http.ConnectionReuseStrategy;
import org.apache.http.HttpClientConnection;
import org.apache.http.HttpException;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.auth.AuthStateHC4;
import org.apache.http.client.AuthenticationStrategy;
import org.apache.http.client.UserTokenHandler;
import org.apache.http.client.protocol.HttpClientContext;
import org.apache.http.client.protocol.RequestClientConnControl;
import org.apache.http.conn.ConnectionKeepAliveStrategy;
import org.apache.http.conn.HttpClientConnectionManager;
import org.apache.http.conn.routing.BasicRouteDirector;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.conn.routing.HttpRouteDirector;
import org.apache.http.conn.routing.RouteTracker;
import org.apache.http.impl.auth.HttpAuthenticator;
import org.apache.http.protocol.HttpProcessor;
import org.apache.http.protocol.HttpRequestExecutor;
import org.apache.http.protocol.ImmutableHttpProcessor;
import org.apache.http.protocol.RequestTargetHostHC4;
import org.apache.http.util.Args;

/* loaded from: classes2.dex */
public class MainClientExec implements ClientExecChain {
    private static final String TAG = "HttpClient";
    private final HttpAuthenticator authenticator;
    private final HttpClientConnectionManager connManager;
    private final ConnectionKeepAliveStrategy keepAliveStrategy;
    private final AuthenticationStrategy proxyAuthStrategy;
    private final HttpProcessor proxyHttpProcessor;
    private final HttpRequestExecutor requestExecutor;
    private final ConnectionReuseStrategy reuseStrategy;
    private final HttpRouteDirector routeDirector;
    private final AuthenticationStrategy targetAuthStrategy;
    private final UserTokenHandler userTokenHandler;

    public MainClientExec(HttpRequestExecutor httpRequestExecutor, HttpClientConnectionManager httpClientConnectionManager, ConnectionReuseStrategy connectionReuseStrategy, ConnectionKeepAliveStrategy connectionKeepAliveStrategy, AuthenticationStrategy authenticationStrategy, AuthenticationStrategy authenticationStrategy2, UserTokenHandler userTokenHandler) {
        Args.notNull(httpRequestExecutor, "HTTP request executor");
        Args.notNull(httpClientConnectionManager, "Client connection manager");
        Args.notNull(connectionReuseStrategy, "Connection reuse strategy");
        Args.notNull(connectionKeepAliveStrategy, "Connection keep alive strategy");
        Args.notNull(authenticationStrategy, "Target authentication strategy");
        Args.notNull(authenticationStrategy2, "Proxy authentication strategy");
        Args.notNull(userTokenHandler, "User token handler");
        this.authenticator = new HttpAuthenticator();
        this.proxyHttpProcessor = new ImmutableHttpProcessor(new RequestTargetHostHC4(), new RequestClientConnControl());
        this.routeDirector = new BasicRouteDirector();
        this.requestExecutor = httpRequestExecutor;
        this.connManager = httpClientConnectionManager;
        this.reuseStrategy = connectionReuseStrategy;
        this.keepAliveStrategy = connectionKeepAliveStrategy;
        this.targetAuthStrategy = authenticationStrategy;
        this.proxyAuthStrategy = authenticationStrategy2;
        this.userTokenHandler = userTokenHandler;
    }

    /* JADX WARN: Code restructure failed: missing block: B:49:0x00ee, code lost:
    
        if (r31.isAborted() != false) goto L255;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00f6, code lost:
    
        throw new org.apache.http.impl.execchain.RequestAbortedException(r5);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0325 A[Catch: ConnectionShutdownException -> 0x00cf, RuntimeException -> 0x0355, IOException -> 0x0358, HttpException -> 0x035b, TryCatch #4 {ConnectionShutdownException -> 0x00cf, blocks: (B:230:0x00bc, B:41:0x00d9, B:45:0x00e0, B:46:0x00e7, B:48:0x00ea, B:52:0x00f1, B:53:0x00f6, B:54:0x00f7, B:58:0x00fe, B:202:0x0104, B:205:0x010b, B:63:0x0154, B:66:0x0195, B:69:0x019d, B:71:0x01ab, B:75:0x01b2, B:76:0x01b9, B:78:0x01bc, B:80:0x01c2, B:81:0x01da, B:83:0x01e0, B:85:0x01e6, B:86:0x01fe, B:88:0x0205, B:90:0x020b, B:92:0x0211, B:94:0x0217, B:95:0x022f, B:96:0x0234, B:98:0x0242, B:102:0x0252, B:103:0x0274, B:104:0x028f, B:107:0x0293, B:108:0x02a3, B:110:0x02bb, B:112:0x02c5, B:114:0x031b, B:116:0x0325, B:117:0x0328, B:119:0x032e, B:121:0x0331, B:123:0x02ca, B:125:0x02d5, B:127:0x02db, B:129:0x02e5, B:131:0x02ec, B:132:0x02f1, B:133:0x02f4, B:135:0x02fc, B:137:0x0302, B:139:0x030c, B:141:0x0313, B:142:0x0318, B:146:0x0349, B:148:0x0362, B:149:0x0365, B:151:0x036b, B:154:0x0372, B:156:0x0378, B:176:0x029a, B:187:0x015a, B:189:0x0160, B:190:0x0167), top: B:229:0x00bc }] */
    /* JADX WARN: Removed duplicated region for block: B:119:0x032e A[Catch: ConnectionShutdownException -> 0x00cf, RuntimeException -> 0x0355, IOException -> 0x0358, HttpException -> 0x035b, TryCatch #4 {ConnectionShutdownException -> 0x00cf, blocks: (B:230:0x00bc, B:41:0x00d9, B:45:0x00e0, B:46:0x00e7, B:48:0x00ea, B:52:0x00f1, B:53:0x00f6, B:54:0x00f7, B:58:0x00fe, B:202:0x0104, B:205:0x010b, B:63:0x0154, B:66:0x0195, B:69:0x019d, B:71:0x01ab, B:75:0x01b2, B:76:0x01b9, B:78:0x01bc, B:80:0x01c2, B:81:0x01da, B:83:0x01e0, B:85:0x01e6, B:86:0x01fe, B:88:0x0205, B:90:0x020b, B:92:0x0211, B:94:0x0217, B:95:0x022f, B:96:0x0234, B:98:0x0242, B:102:0x0252, B:103:0x0274, B:104:0x028f, B:107:0x0293, B:108:0x02a3, B:110:0x02bb, B:112:0x02c5, B:114:0x031b, B:116:0x0325, B:117:0x0328, B:119:0x032e, B:121:0x0331, B:123:0x02ca, B:125:0x02d5, B:127:0x02db, B:129:0x02e5, B:131:0x02ec, B:132:0x02f1, B:133:0x02f4, B:135:0x02fc, B:137:0x0302, B:139:0x030c, B:141:0x0313, B:142:0x0318, B:146:0x0349, B:148:0x0362, B:149:0x0365, B:151:0x036b, B:154:0x0372, B:156:0x0378, B:176:0x029a, B:187:0x015a, B:189:0x0160, B:190:0x0167), top: B:229:0x00bc }] */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0331 A[SYNTHETIC] */
    @Override // org.apache.http.impl.execchain.ClientExecChain
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.apache.http.client.methods.CloseableHttpResponse execute(org.apache.http.conn.routing.HttpRoute r28, org.apache.http.client.methods.HttpRequestWrapper r29, org.apache.http.client.protocol.HttpClientContext r30, org.apache.http.client.methods.HttpExecutionAware r31) throws java.io.IOException, org.apache.http.HttpException {
        /*
            Method dump skipped, instructions count: 973
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.http.impl.execchain.MainClientExec.execute(org.apache.http.conn.routing.HttpRoute, org.apache.http.client.methods.HttpRequestWrapper, org.apache.http.client.protocol.HttpClientContext, org.apache.http.client.methods.HttpExecutionAware):org.apache.http.client.methods.CloseableHttpResponse");
    }

    void establishRoute(AuthStateHC4 authStateHC4, HttpClientConnection httpClientConnection, HttpRoute httpRoute, HttpRequest httpRequest, HttpClientContext httpClientContext) throws HttpException, IOException {
        int nextStep;
        int connectTimeout = httpClientContext.getRequestConfig().getConnectTimeout();
        RouteTracker routeTracker = new RouteTracker(httpRoute);
        do {
            HttpRoute route = routeTracker.toRoute();
            nextStep = this.routeDirector.nextStep(httpRoute, route);
            switch (nextStep) {
                case -1:
                    throw new HttpException("Unable to establish route: planned = " + httpRoute + "; current = " + route);
                case 0:
                    this.connManager.routeComplete(httpClientConnection, httpRoute, httpClientContext);
                    break;
                case 1:
                    this.connManager.connect(httpClientConnection, httpRoute, connectTimeout > 0 ? connectTimeout : 0, httpClientContext);
                    routeTracker.connectTarget(httpRoute.isSecure());
                    break;
                case 2:
                    this.connManager.connect(httpClientConnection, httpRoute, connectTimeout > 0 ? connectTimeout : 0, httpClientContext);
                    routeTracker.connectProxy(httpRoute.getProxyHost(), false);
                    break;
                case 3:
                    boolean createTunnelToTarget = createTunnelToTarget(authStateHC4, httpClientConnection, httpRoute, httpRequest, httpClientContext);
                    if (Log.isLoggable(TAG, 3)) {
                        Log.d(TAG, "Tunnel to target created.");
                    }
                    routeTracker.tunnelTarget(createTunnelToTarget);
                    break;
                case 4:
                    int hopCount = route.getHopCount() - 1;
                    boolean createTunnelToProxy = createTunnelToProxy(httpRoute, hopCount, httpClientContext);
                    if (Log.isLoggable(TAG, 3)) {
                        Log.d(TAG, "Tunnel to proxy created.");
                    }
                    routeTracker.tunnelProxy(httpRoute.getHopTarget(hopCount), createTunnelToProxy);
                    break;
                case 5:
                    this.connManager.upgrade(httpClientConnection, httpRoute, httpClientContext);
                    routeTracker.layerProtocol(httpRoute.isSecure());
                    break;
                default:
                    throw new IllegalStateException("Unknown step indicator " + nextStep + " from RouteDirector.");
            }
        } while (nextStep > 0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0093, code lost:
    
        if (r16.reuseStrategy.keepAlive(r7, r21) == false) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00ab, code lost:
    
        r18.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x009c, code lost:
    
        if (android.util.Log.isLoggable(org.apache.http.impl.execchain.MainClientExec.TAG, 3) == false) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x009e, code lost:
    
        android.util.Log.d(org.apache.http.impl.execchain.MainClientExec.TAG, "Connection kept alive");
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00a3, code lost:
    
        org.apache.http.util.EntityUtilsHC4.consume(r7.getEntity());
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean createTunnelToTarget(org.apache.http.auth.AuthStateHC4 r17, org.apache.http.HttpClientConnection r18, org.apache.http.conn.routing.HttpRoute r19, org.apache.http.HttpRequest r20, org.apache.http.client.protocol.HttpClientContext r21) throws org.apache.http.HttpException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 262
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.http.impl.execchain.MainClientExec.createTunnelToTarget(org.apache.http.auth.AuthStateHC4, org.apache.http.HttpClientConnection, org.apache.http.conn.routing.HttpRoute, org.apache.http.HttpRequest, org.apache.http.client.protocol.HttpClientContext):boolean");
    }

    private boolean createTunnelToProxy(HttpRoute httpRoute, int i, HttpClientContext httpClientContext) throws HttpException {
        throw new HttpException("Proxy chains are not supported.");
    }

    private boolean needAuthentication(AuthStateHC4 authStateHC4, AuthStateHC4 authStateHC42, HttpRoute httpRoute, HttpResponse httpResponse, HttpClientContext httpClientContext) {
        if (!httpClientContext.getRequestConfig().isAuthenticationEnabled()) {
            return false;
        }
        HttpHost targetHost = httpClientContext.getTargetHost();
        if (targetHost == null) {
            targetHost = httpRoute.getTargetHost();
        }
        if (targetHost.getPort() < 0) {
            targetHost = new HttpHost(targetHost.getHostName(), httpRoute.getTargetHost().getPort(), targetHost.getSchemeName());
        }
        boolean isAuthenticationRequested = this.authenticator.isAuthenticationRequested(targetHost, httpResponse, this.targetAuthStrategy, authStateHC4, httpClientContext);
        HttpHost proxyHost = httpRoute.getProxyHost();
        if (proxyHost == null) {
            proxyHost = httpRoute.getTargetHost();
        }
        boolean isAuthenticationRequested2 = this.authenticator.isAuthenticationRequested(proxyHost, httpResponse, this.proxyAuthStrategy, authStateHC42, httpClientContext);
        if (isAuthenticationRequested) {
            return this.authenticator.handleAuthChallenge(targetHost, httpResponse, this.targetAuthStrategy, authStateHC4, httpClientContext);
        }
        if (!isAuthenticationRequested2) {
            return false;
        }
        return this.authenticator.handleAuthChallenge(proxyHost, httpResponse, this.proxyAuthStrategy, authStateHC42, httpClientContext);
    }
}

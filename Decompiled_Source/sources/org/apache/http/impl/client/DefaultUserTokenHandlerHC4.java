package org.apache.http.impl.client;

import java.security.Principal;
import javax.net.ssl.SSLSession;
import org.apache.http.HttpConnection;
import org.apache.http.auth.AuthScheme;
import org.apache.http.auth.AuthStateHC4;
import org.apache.http.auth.Credentials;
import org.apache.http.client.UserTokenHandler;
import org.apache.http.client.protocol.HttpClientContext;
import org.apache.http.conn.ManagedHttpClientConnection;
import org.apache.http.protocol.HttpContext;

/* loaded from: classes2.dex */
public class DefaultUserTokenHandlerHC4 implements UserTokenHandler {
    public static final DefaultUserTokenHandlerHC4 INSTANCE = new DefaultUserTokenHandlerHC4();

    @Override // org.apache.http.client.UserTokenHandler
    public Object getUserToken(HttpContext httpContext) {
        Principal principal;
        SSLSession sSLSession;
        HttpClientContext adapt = HttpClientContext.adapt(httpContext);
        AuthStateHC4 targetAuthState = adapt.getTargetAuthState();
        if (targetAuthState != null) {
            principal = getAuthPrincipal(targetAuthState);
            if (principal == null) {
                principal = getAuthPrincipal(adapt.getProxyAuthState());
            }
        } else {
            principal = null;
        }
        if (principal != null) {
            return principal;
        }
        HttpConnection connection = adapt.getConnection();
        return (connection.isOpen() && (connection instanceof ManagedHttpClientConnection) && (sSLSession = ((ManagedHttpClientConnection) connection).getSSLSession()) != null) ? sSLSession.getLocalPrincipal() : principal;
    }

    private static Principal getAuthPrincipal(AuthStateHC4 authStateHC4) {
        Credentials credentials;
        AuthScheme authScheme = authStateHC4.getAuthScheme();
        if (authScheme == null || !authScheme.isComplete() || !authScheme.isConnectionBased() || (credentials = authStateHC4.getCredentials()) == null) {
            return null;
        }
        return credentials.getUserPrincipal();
    }
}

package org.apache.http.impl.auth;

import android.util.Log;
import java.io.IOException;
import java.util.Locale;
import java.util.Map;
import java.util.Queue;
import org.apache.http.Header;
import org.apache.http.HttpException;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.auth.AuthOption;
import org.apache.http.auth.AuthProtocolState;
import org.apache.http.auth.AuthScheme;
import org.apache.http.auth.AuthStateHC4;
import org.apache.http.auth.AuthenticationException;
import org.apache.http.auth.ContextAwareAuthScheme;
import org.apache.http.auth.Credentials;
import org.apache.http.auth.MalformedChallengeException;
import org.apache.http.client.AuthenticationStrategy;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Asserts;

/* loaded from: classes2.dex */
public class HttpAuthenticator {
    private static final String TAG = "HttpClient";

    public boolean isAuthenticationRequested(HttpHost httpHost, HttpResponse httpResponse, AuthenticationStrategy authenticationStrategy, AuthStateHC4 authStateHC4, HttpContext httpContext) {
        if (authenticationStrategy.isAuthenticationRequested(httpHost, httpResponse, httpContext)) {
            if (Log.isLoggable(TAG, 3)) {
                Log.d(TAG, "Authentication required");
            }
            if (authStateHC4.getState() == AuthProtocolState.SUCCESS) {
                authenticationStrategy.authFailed(httpHost, authStateHC4.getAuthScheme(), httpContext);
            }
            return true;
        }
        int i = AnonymousClass1.$SwitchMap$org$apache$http$auth$AuthProtocolState[authStateHC4.getState().ordinal()];
        if (i != 1 && i != 2) {
            if (i == 3) {
                return false;
            }
            authStateHC4.setState(AuthProtocolState.UNCHALLENGED);
            return false;
        }
        if (Log.isLoggable(TAG, 3)) {
            Log.d(TAG, "Authentication succeeded");
        }
        authStateHC4.setState(AuthProtocolState.SUCCESS);
        authenticationStrategy.authSucceeded(httpHost, authStateHC4.getAuthScheme(), httpContext);
        return false;
    }

    /* renamed from: org.apache.http.impl.auth.HttpAuthenticator$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$http$auth$AuthProtocolState;

        static {
            int[] iArr = new int[AuthProtocolState.values().length];
            $SwitchMap$org$apache$http$auth$AuthProtocolState = iArr;
            try {
                iArr[AuthProtocolState.CHALLENGED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$http$auth$AuthProtocolState[AuthProtocolState.HANDSHAKE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$http$auth$AuthProtocolState[AuthProtocolState.SUCCESS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$http$auth$AuthProtocolState[AuthProtocolState.FAILURE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$apache$http$auth$AuthProtocolState[AuthProtocolState.UNCHALLENGED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public boolean handleAuthChallenge(HttpHost httpHost, HttpResponse httpResponse, AuthenticationStrategy authenticationStrategy, AuthStateHC4 authStateHC4, HttpContext httpContext) {
        Queue<AuthOption> select;
        try {
            if (Log.isLoggable(TAG, 3)) {
                Log.d(TAG, httpHost.toHostString() + " requested authentication");
            }
            Map<String, Header> challenges = authenticationStrategy.getChallenges(httpHost, httpResponse, httpContext);
            if (challenges.isEmpty()) {
                if (Log.isLoggable(TAG, 3)) {
                    Log.d(TAG, "Response contains no authentication challenges");
                }
                return false;
            }
            AuthScheme authScheme = authStateHC4.getAuthScheme();
            int i = AnonymousClass1.$SwitchMap$org$apache$http$auth$AuthProtocolState[authStateHC4.getState().ordinal()];
            if (i != 1 && i != 2) {
                if (i == 3) {
                    authStateHC4.reset();
                } else {
                    if (i == 4) {
                        return false;
                    }
                    if (i != 5) {
                    }
                }
                select = authenticationStrategy.select(challenges, httpHost, httpResponse, httpContext);
                if (select != null || select.isEmpty()) {
                    return false;
                }
                if (Log.isLoggable(TAG, 3)) {
                    Log.d(TAG, "Selected authentication options: " + select);
                }
                authStateHC4.setState(AuthProtocolState.CHALLENGED);
                authStateHC4.update(select);
                return true;
            }
            if (authScheme == null) {
                if (Log.isLoggable(TAG, 3)) {
                    Log.d(TAG, "Auth scheme is null");
                }
                authenticationStrategy.authFailed(httpHost, null, httpContext);
                authStateHC4.reset();
                authStateHC4.setState(AuthProtocolState.FAILURE);
                return false;
            }
            if (authScheme != null) {
                Header header = challenges.get(authScheme.getSchemeName().toLowerCase(Locale.ENGLISH));
                if (header != null) {
                    if (Log.isLoggable(TAG, 3)) {
                        Log.d(TAG, "Authorization challenge processed");
                    }
                    authScheme.processChallenge(header);
                    if (!authScheme.isComplete()) {
                        authStateHC4.setState(AuthProtocolState.HANDSHAKE);
                        return true;
                    }
                    if (Log.isLoggable(TAG, 3)) {
                        Log.d(TAG, "Authentication failed");
                    }
                    authenticationStrategy.authFailed(httpHost, authStateHC4.getAuthScheme(), httpContext);
                    authStateHC4.reset();
                    authStateHC4.setState(AuthProtocolState.FAILURE);
                    return false;
                }
                authStateHC4.reset();
            }
            select = authenticationStrategy.select(challenges, httpHost, httpResponse, httpContext);
            if (select != null) {
            }
            return false;
        } catch (MalformedChallengeException e) {
            if (Log.isLoggable(TAG, 5)) {
                Log.w(TAG, "Malformed challenge: " + e.getMessage());
            }
            authStateHC4.reset();
            return false;
        }
    }

    public void generateAuthResponse(HttpRequest httpRequest, AuthStateHC4 authStateHC4, HttpContext httpContext) throws HttpException, IOException {
        AuthScheme authScheme = authStateHC4.getAuthScheme();
        Credentials credentials = authStateHC4.getCredentials();
        int i = AnonymousClass1.$SwitchMap$org$apache$http$auth$AuthProtocolState[authStateHC4.getState().ordinal()];
        if (i == 1) {
            Queue<AuthOption> authOptions = authStateHC4.getAuthOptions();
            if (authOptions != null) {
                while (!authOptions.isEmpty()) {
                    AuthOption remove = authOptions.remove();
                    AuthScheme authScheme2 = remove.getAuthScheme();
                    Credentials credentials2 = remove.getCredentials();
                    authStateHC4.update(authScheme2, credentials2);
                    if (Log.isLoggable(TAG, 3)) {
                        Log.d(TAG, "Generating response to an authentication challenge using " + authScheme2.getSchemeName() + " scheme");
                    }
                    try {
                        httpRequest.addHeader(doAuth(authScheme2, credentials2, httpRequest, httpContext));
                        return;
                    } catch (AuthenticationException e) {
                        if (Log.isLoggable(TAG, 5)) {
                            Log.w(TAG, authScheme2 + " authentication error: " + e.getMessage());
                        }
                    }
                }
                return;
            }
            ensureAuthScheme(authScheme);
        } else if (i == 3) {
            ensureAuthScheme(authScheme);
            if (authScheme.isConnectionBased()) {
                return;
            }
        } else if (i == 4) {
            return;
        }
        if (authScheme != null) {
            try {
                httpRequest.addHeader(doAuth(authScheme, credentials, httpRequest, httpContext));
            } catch (AuthenticationException e2) {
                if (Log.isLoggable(TAG, 6)) {
                    Log.e(TAG, authScheme + " authentication error: " + e2.getMessage());
                }
            }
        }
    }

    private void ensureAuthScheme(AuthScheme authScheme) {
        Asserts.notNull(authScheme, "Auth scheme");
    }

    private Header doAuth(AuthScheme authScheme, Credentials credentials, HttpRequest httpRequest, HttpContext httpContext) throws AuthenticationException {
        if (authScheme instanceof ContextAwareAuthScheme) {
            return ((ContextAwareAuthScheme) authScheme).authenticate(credentials, httpRequest, httpContext);
        }
        return authScheme.authenticate(credentials, httpRequest);
    }
}

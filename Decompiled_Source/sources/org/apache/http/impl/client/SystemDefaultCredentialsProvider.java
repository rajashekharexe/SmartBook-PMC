package org.apache.http.impl.client;

import java.net.Authenticator;
import java.net.PasswordAuthentication;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.http.auth.AuthScope;
import org.apache.http.auth.Credentials;
import org.apache.http.auth.NTCredentials;
import org.apache.http.auth.UsernamePasswordCredentials;
import org.apache.http.client.CredentialsProvider;
import org.apache.http.client.config.AuthSchemes;
import org.apache.http.util.Args;

/* loaded from: classes2.dex */
public class SystemDefaultCredentialsProvider implements CredentialsProvider {
    private static final Map<String, String> SCHEME_MAP;
    private final BasicCredentialsProviderHC4 internal = new BasicCredentialsProviderHC4();

    static {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        SCHEME_MAP = concurrentHashMap;
        concurrentHashMap.put(AuthSchemes.BASIC.toUpperCase(Locale.ENGLISH), AuthSchemes.BASIC);
        concurrentHashMap.put(AuthSchemes.DIGEST.toUpperCase(Locale.ENGLISH), AuthSchemes.DIGEST);
        concurrentHashMap.put(AuthSchemes.NTLM.toUpperCase(Locale.ENGLISH), AuthSchemes.NTLM);
        concurrentHashMap.put(AuthSchemes.SPNEGO.toUpperCase(Locale.ENGLISH), "SPNEGO");
        concurrentHashMap.put(AuthSchemes.KERBEROS.toUpperCase(Locale.ENGLISH), AuthSchemes.KERBEROS);
    }

    private static String translateScheme(String str) {
        if (str == null) {
            return null;
        }
        String str2 = SCHEME_MAP.get(str);
        return str2 != null ? str2 : str;
    }

    @Override // org.apache.http.client.CredentialsProvider
    public void setCredentials(AuthScope authScope, Credentials credentials) {
        this.internal.setCredentials(authScope, credentials);
    }

    private static PasswordAuthentication getSystemCreds(AuthScope authScope, Authenticator.RequestorType requestorType) {
        String host = authScope.getHost();
        int port = authScope.getPort();
        return Authenticator.requestPasswordAuthentication(host, null, port, port == 443 ? "https" : "http", null, translateScheme(authScope.getScheme()), null, requestorType);
    }

    @Override // org.apache.http.client.CredentialsProvider
    public Credentials getCredentials(AuthScope authScope) {
        Args.notNull(authScope, "Auth scope");
        Credentials credentials = this.internal.getCredentials(authScope);
        if (credentials != null) {
            return credentials;
        }
        if (authScope.getHost() != null) {
            PasswordAuthentication systemCreds = getSystemCreds(authScope, Authenticator.RequestorType.SERVER);
            if (systemCreds == null) {
                systemCreds = getSystemCreds(authScope, Authenticator.RequestorType.PROXY);
            }
            if (systemCreds != null) {
                String property = System.getProperty("http.auth.ntlm.domain");
                if (property != null) {
                    return new NTCredentials(systemCreds.getUserName(), new String(systemCreds.getPassword()), null, property);
                }
                if (AuthSchemes.NTLM.equalsIgnoreCase(authScope.getScheme())) {
                    return new NTCredentials(systemCreds.getUserName(), new String(systemCreds.getPassword()), null, null);
                }
                return new UsernamePasswordCredentials(systemCreds.getUserName(), new String(systemCreds.getPassword()));
            }
        }
        return null;
    }

    @Override // org.apache.http.client.CredentialsProvider
    public void clear() {
        this.internal.clear();
    }
}

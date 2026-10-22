package org.apache.http.impl.conn;

import java.io.IOException;
import java.net.InetAddress;
import java.util.Arrays;
import org.apache.http.HttpHost;
import org.apache.http.client.protocol.HttpClientContext;
import org.apache.http.config.Lookup;
import org.apache.http.conn.DnsResolver;
import org.apache.http.conn.ManagedHttpClientConnection;
import org.apache.http.conn.SchemePortResolver;
import org.apache.http.conn.UnsupportedSchemeException;
import org.apache.http.conn.socket.ConnectionSocketFactory;
import org.apache.http.conn.socket.LayeredConnectionSocketFactory;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Args;

/* loaded from: classes2.dex */
class HttpClientConnectionOperator {
    static final String SOCKET_FACTORY_REGISTRY = "http.socket-factory-registry";
    private static final String TAG = "HttpClient";
    private final DnsResolver dnsResolver;
    private final SchemePortResolver schemePortResolver;
    private final Lookup<ConnectionSocketFactory> socketFactoryRegistry;

    HttpClientConnectionOperator(Lookup<ConnectionSocketFactory> lookup, SchemePortResolver schemePortResolver, DnsResolver dnsResolver) {
        Args.notNull(lookup, "Socket factory registry");
        this.socketFactoryRegistry = lookup;
        this.schemePortResolver = schemePortResolver == null ? DefaultSchemePortResolver.INSTANCE : schemePortResolver;
        this.dnsResolver = dnsResolver == null ? SystemDefaultDnsResolver.INSTANCE : dnsResolver;
    }

    private Lookup<ConnectionSocketFactory> getSocketFactoryRegistry(HttpContext httpContext) {
        Lookup<ConnectionSocketFactory> lookup = (Lookup) httpContext.getAttribute(SOCKET_FACTORY_REGISTRY);
        return lookup == null ? this.socketFactoryRegistry : lookup;
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0109 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void connect(org.apache.http.conn.ManagedHttpClientConnection r20, org.apache.http.HttpHost r21, java.net.InetSocketAddress r22, int r23, org.apache.http.config.SocketConfig r24, org.apache.http.protocol.HttpContext r25) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 299
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.http.impl.conn.HttpClientConnectionOperator.connect(org.apache.http.conn.ManagedHttpClientConnection, org.apache.http.HttpHost, java.net.InetSocketAddress, int, org.apache.http.config.SocketConfig, org.apache.http.protocol.HttpContext):void");
    }

    private static String getConnectTimeoutMessage(IOException iOException, HttpHost httpHost, InetAddress... inetAddressArr) {
        String str;
        String str2;
        StringBuilder sb = new StringBuilder("Connect to ");
        sb.append(httpHost != null ? httpHost.toHostString() : "remote host");
        if (inetAddressArr == null || inetAddressArr.length <= 0) {
            str = "";
        } else {
            str = " " + Arrays.asList(inetAddressArr);
        }
        sb.append(str);
        if (iOException == null || iOException.getMessage() == null) {
            str2 = " timed out";
        } else {
            str2 = " failed: " + iOException.getMessage();
        }
        sb.append(str2);
        return sb.toString();
    }

    public void upgrade(ManagedHttpClientConnection managedHttpClientConnection, HttpHost httpHost, HttpContext httpContext) throws IOException {
        ConnectionSocketFactory lookup = getSocketFactoryRegistry(HttpClientContext.adapt(httpContext)).lookup(httpHost.getSchemeName());
        if (lookup == null) {
            throw new UnsupportedSchemeException(httpHost.getSchemeName() + " protocol is not supported");
        }
        if (!(lookup instanceof LayeredConnectionSocketFactory)) {
            throw new UnsupportedSchemeException(httpHost.getSchemeName() + " protocol does not support connection upgrade");
        }
        managedHttpClientConnection.bind(((LayeredConnectionSocketFactory) lookup).createLayeredSocket(managedHttpClientConnection.getSocket(), httpHost.getHostName(), this.schemePortResolver.resolve(httpHost), httpContext));
    }
}

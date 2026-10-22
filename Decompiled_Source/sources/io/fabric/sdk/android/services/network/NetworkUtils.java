package io.fabric.sdk.android.services.network;

import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import org.apache.http.conn.ssl.SSLConnectionSocketFactory;

/* loaded from: classes2.dex */
public final class NetworkUtils {
    private NetworkUtils() {
    }

    public static final SSLSocketFactory getSSLSocketFactory(PinningInfoProvider pinningInfoProvider) throws KeyManagementException, NoSuchAlgorithmException {
        SSLContext sSLContext = SSLContext.getInstance(SSLConnectionSocketFactory.TLS);
        sSLContext.init(null, new TrustManager[]{new PinningTrustManager(new SystemKeyStore(pinningInfoProvider.getKeyStoreStream(), pinningInfoProvider.getKeyStorePassword()), pinningInfoProvider)}, null);
        return sSLContext.getSocketFactory();
    }
}

package com.conceptglobal.pmc.promotions.retrofit;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.StringWriter;
import java.net.Socket;
import java.net.UnknownHostException;
import java.security.KeyManagementException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.UnrecoverableKeyException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.params.ConnManagerParams;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.ssl.SSLConnectionSocketFactory;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;

/* loaded from: classes.dex */
public class WebServiceForPromotions {
    static final String TAG = "** WebServiceForPromotionss **";
    private static WebServiceForPromotions instance;
    public HttpClient httpClient = null;
    HttpPost httpPost = null;

    public static WebServiceForPromotions getInstance() {
        if (instance == null) {
            instance = new WebServiceForPromotions();
        }
        return instance;
    }

    public String sendRequest(String str, String str2) throws ClientProtocolException, IOException {
        String str3;
        HttpClient httpsClient = ExSSLSocketFactory.getHttpsClient(new DefaultHttpClient());
        HttpPost httpPost = new HttpPost(str2);
        StringEntity stringEntity = new StringEntity(str, "UTF-8");
        System.setProperty("http.keepAlive", "false");
        httpPost.setEntity(stringEntity);
        httpPost.setHeader("Accept", "application/json; charset=utf-8");
        httpPost.setHeader("Content-type", "application/json");
        HttpParams params = httpsClient.getParams();
        ConnManagerParams.setTimeout(params, 40000L);
        HttpConnectionParams.setSoTimeout(params, 40000);
        HttpConnectionParams.setConnectionTimeout(params, 40000);
        HttpResponse execute = httpsClient.execute(httpPost);
        HttpEntity entity = execute.getEntity();
        int statusCode = execute.getStatusLine().getStatusCode();
        InputStream content = entity.getContent();
        if (statusCode == 200) {
            str3 = new StringWriter().toString();
        } else {
            new StringWriter().toString();
            str3 = null;
        }
        content.close();
        return str3;
    }

    public String sendRequestwithToken(String str, String str2, String str3) throws ClientProtocolException, IOException {
        String str4;
        HttpClient httpsClient = ExSSLSocketFactory.getHttpsClient(new DefaultHttpClient());
        HttpPost httpPost = new HttpPost(str2);
        StringEntity stringEntity = new StringEntity(str, "UTF-8");
        System.setProperty("http.keepAlive", "false");
        httpPost.setEntity(stringEntity);
        httpPost.setHeader("Accept", "application/json; charset=utf-8");
        httpPost.setHeader("Token", str3);
        httpPost.setHeader("Content-type", "application/json");
        HttpParams params = httpsClient.getParams();
        ConnManagerParams.setTimeout(params, 40000L);
        HttpConnectionParams.setSoTimeout(params, 40000);
        HttpConnectionParams.setConnectionTimeout(params, 40000);
        HttpResponse execute = httpsClient.execute(httpPost);
        HttpEntity entity = execute.getEntity();
        int statusCode = execute.getStatusLine().getStatusCode();
        InputStream content = entity.getContent();
        if (statusCode == 200) {
            new StringWriter();
            str4 = convertStreamToString(content);
        } else {
            new StringWriter().toString();
            str4 = null;
        }
        content.close();
        return str4;
    }

    private String convertStreamToString(InputStream inputStream) {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
        StringBuilder sb = new StringBuilder();
        while (true) {
            try {
                try {
                    try {
                        String readLine = bufferedReader.readLine();
                        if (readLine == null) {
                            break;
                        }
                        sb.append(readLine);
                        sb.append('\n');
                    } catch (IOException e) {
                        e.printStackTrace();
                        inputStream.close();
                    }
                } catch (Throwable th) {
                    try {
                        inputStream.close();
                    } catch (IOException e2) {
                        e2.printStackTrace();
                    }
                    throw th;
                }
            } catch (IOException e3) {
                e3.printStackTrace();
            }
        }
        inputStream.close();
        return sb.toString();
    }

    public static class ExSSLSocketFactory extends SSLSocketFactory {
        SSLContext sslContext;

        public ExSSLSocketFactory(KeyStore keyStore) throws NoSuchAlgorithmException, KeyManagementException, KeyStoreException, UnrecoverableKeyException {
            super(keyStore);
            this.sslContext = SSLContext.getInstance(SSLConnectionSocketFactory.TLS);
            this.sslContext.init(null, new TrustManager[]{new X509TrustManager() { // from class: com.conceptglobal.pmc.promotions.retrofit.WebServiceForPromotions.ExSSLSocketFactory.1
                @Override // javax.net.ssl.X509TrustManager
                public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
                }

                @Override // javax.net.ssl.X509TrustManager
                public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
                }

                @Override // javax.net.ssl.X509TrustManager
                public X509Certificate[] getAcceptedIssuers() {
                    return null;
                }
            }}, null);
        }

        public ExSSLSocketFactory(SSLContext sSLContext) throws KeyManagementException, NoSuchAlgorithmException, KeyStoreException, UnrecoverableKeyException {
            super(null);
            SSLContext.getInstance(SSLConnectionSocketFactory.TLS);
            this.sslContext = sSLContext;
        }

        @Override // org.apache.http.conn.ssl.SSLSocketFactory, org.apache.http.conn.scheme.LayeredSocketFactory
        public Socket createSocket(Socket socket, String str, int i, boolean z) throws IOException, UnknownHostException {
            return this.sslContext.getSocketFactory().createSocket(socket, str, i, z);
        }

        @Override // org.apache.http.conn.ssl.SSLSocketFactory, org.apache.http.conn.scheme.SocketFactory
        public Socket createSocket() throws IOException {
            return this.sslContext.getSocketFactory().createSocket();
        }

        public static HttpClient getHttpsClient(HttpClient httpClient) {
            try {
                X509TrustManager x509TrustManager = new X509TrustManager() { // from class: com.conceptglobal.pmc.promotions.retrofit.WebServiceForPromotions.ExSSLSocketFactory.2
                    @Override // javax.net.ssl.X509TrustManager
                    public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
                    }

                    @Override // javax.net.ssl.X509TrustManager
                    public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
                    }

                    @Override // javax.net.ssl.X509TrustManager
                    public X509Certificate[] getAcceptedIssuers() {
                        return null;
                    }
                };
                SSLContext sSLContext = SSLContext.getInstance(SSLConnectionSocketFactory.TLS);
                sSLContext.init(null, new TrustManager[]{x509TrustManager}, null);
                ExSSLSocketFactory exSSLSocketFactory = new ExSSLSocketFactory(sSLContext);
                exSSLSocketFactory.setHostnameVerifier(SSLSocketFactory.ALLOW_ALL_HOSTNAME_VERIFIER);
                ClientConnectionManager connectionManager = httpClient.getConnectionManager();
                connectionManager.getSchemeRegistry().register(new Scheme("https", exSSLSocketFactory, 443));
                return new DefaultHttpClient(connectionManager, httpClient.getParams());
            } catch (Exception unused) {
                return null;
            }
        }
    }
}

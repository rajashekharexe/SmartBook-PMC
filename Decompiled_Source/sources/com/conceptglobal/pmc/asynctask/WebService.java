package com.conceptglobal.pmc.asynctask;

import com.conceptglobal.pmc.PMCApplication;
import com.conceptglobal.pmc.utils.PLog;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import java.io.IOException;
import java.io.InputStream;
import java.io.StringWriter;
import java.net.Socket;
import java.net.SocketException;
import java.net.SocketTimeoutException;
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
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import org.apache.commons.io.IOUtils;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.params.ConnManagerParams;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.ssl.SSLConnectionSocketFactory;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.entity.StringEntity;
import org.apache.http.entity.mime.MultipartEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;

/* loaded from: classes.dex */
public class WebService {
    static final String TAG = "** WebServices **";
    private static WebService instance;
    public HttpClient httpClient = null;
    HttpPost httpPost = null;

    public static WebService getInstance() {
        if (instance == null) {
            instance = new WebService();
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
        httpPost.setHeader("IMEI", UtilDeclarations.getDeviceIMEIMultiple(PMCApplication.getContext()));
        HttpParams params = httpsClient.getParams();
        ConnManagerParams.setTimeout(params, 40000L);
        HttpConnectionParams.setSoTimeout(params, 40000);
        HttpConnectionParams.setConnectionTimeout(params, 40000);
        HttpResponse execute = httpsClient.execute(httpPost);
        HttpEntity entity = execute.getEntity();
        int statusCode = execute.getStatusLine().getStatusCode();
        InputStream content = entity.getContent();
        if (statusCode == 200) {
            StringWriter stringWriter = new StringWriter();
            IOUtils.copy(content, stringWriter);
            str3 = stringWriter.toString();
        } else {
            StringWriter stringWriter2 = new StringWriter();
            IOUtils.copy(content, stringWriter2);
            PLog.e("Response", stringWriter2.toString() + IOUtils.LINE_SEPARATOR_UNIX + str2);
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
        httpPost.setHeader("IMEI", UtilDeclarations.getDeviceIMEIMultiple(PMCApplication.getContext()));
        HttpParams params = httpsClient.getParams();
        ConnManagerParams.setTimeout(params, 40000L);
        HttpConnectionParams.setSoTimeout(params, 40000);
        HttpConnectionParams.setConnectionTimeout(params, 40000);
        HttpResponse execute = httpsClient.execute(httpPost);
        HttpEntity entity = execute.getEntity();
        int statusCode = execute.getStatusLine().getStatusCode();
        InputStream content = entity.getContent();
        if (statusCode == 200) {
            StringWriter stringWriter = new StringWriter();
            IOUtils.copy(content, stringWriter);
            str4 = stringWriter.toString();
        } else {
            StringWriter stringWriter2 = new StringWriter();
            IOUtils.copy(content, stringWriter2);
            PLog.e("Response", stringWriter2.toString() + IOUtils.LINE_SEPARATOR_UNIX + str2);
            str4 = null;
        }
        content.close();
        return str4;
    }

    public String sendRequestWithoutGzip(String str, String str2) throws ClientProtocolException, IOException {
        String str3;
        HttpClient httpsClient = ExSSLSocketFactory.getHttpsClient(new DefaultHttpClient());
        HttpPost httpPost = new HttpPost(str2);
        StringEntity stringEntity = new StringEntity(str, "UTF-8");
        System.setProperty("http.keepAlive", "false");
        httpPost.setEntity(stringEntity);
        httpPost.setHeader("Accept", "application/json; charset=utf-8");
        httpPost.setHeader("Content-type", "application/json");
        httpPost.setHeader("IMEI", UtilDeclarations.getDeviceIMEIMultiple(PMCApplication.getContext()));
        HttpParams params = httpsClient.getParams();
        ConnManagerParams.setTimeout(params, 40000L);
        HttpConnectionParams.setSoTimeout(params, 40000);
        HttpConnectionParams.setConnectionTimeout(params, 40000);
        HttpResponse execute = httpsClient.execute(httpPost);
        HttpEntity entity = execute.getEntity();
        int statusCode = execute.getStatusLine().getStatusCode();
        InputStream content = entity.getContent();
        if (statusCode == 200) {
            StringWriter stringWriter = new StringWriter();
            IOUtils.copy(content, stringWriter);
            str3 = stringWriter.toString();
        } else {
            StringWriter stringWriter2 = new StringWriter();
            IOUtils.copy(content, stringWriter2);
            PLog.e("Response", stringWriter2.toString() + IOUtils.LINE_SEPARATOR_UNIX + str2);
            str3 = null;
        }
        content.close();
        return str3;
    }

    public String sendGetRequest(String str) throws ClientProtocolException, IOException {
        String str2;
        HttpGet httpGet = new HttpGet(str);
        httpGet.setHeader("IMEI", UtilDeclarations.getDeviceIMEIMultiple(PMCApplication.getContext()));
        HttpResponse execute = ExSSLSocketFactory.getHttpsClient(new DefaultHttpClient()).execute(httpGet);
        int statusCode = execute.getStatusLine().getStatusCode();
        InputStream content = execute.getEntity().getContent();
        if (statusCode == 200) {
            StringWriter stringWriter = new StringWriter();
            IOUtils.copy(content, stringWriter);
            str2 = stringWriter.toString();
        } else {
            str2 = null;
        }
        content.close();
        return str2;
    }

    public String sendGetRequest(String str, String str2) throws ClientProtocolException, IOException {
        String str3;
        HttpGet httpGet = new HttpGet(str);
        httpGet.setHeader("Token", str2);
        httpGet.setHeader("IMEI", UtilDeclarations.getDeviceIMEIMultiple(PMCApplication.getContext()));
        HttpResponse execute = ExSSLSocketFactory.getHttpsClient(new DefaultHttpClient()).execute(httpGet);
        int statusCode = execute.getStatusLine().getStatusCode();
        InputStream content = execute.getEntity().getContent();
        if (statusCode == 200) {
            StringWriter stringWriter = new StringWriter();
            IOUtils.copy(content, stringWriter);
            str3 = stringWriter.toString();
        } else {
            str3 = null;
        }
        content.close();
        return str3;
    }

    public String sendRequestMultipart(MultipartEntity multipartEntity, String str) {
        BasicHttpParams basicHttpParams = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(basicHttpParams, 40000);
        HttpConnectionParams.setSoTimeout(basicHttpParams, 40000);
        HttpPost httpPost = new HttpPost(str);
        httpPost.setEntity(multipartEntity);
        DefaultHttpClient defaultHttpClient = new DefaultHttpClient(basicHttpParams);
        defaultHttpClient.setParams(basicHttpParams);
        String str2 = null;
        try {
            try {
                try {
                    HttpResponse execute = defaultHttpClient.execute(httpPost);
                    HttpEntity entity = execute.getEntity();
                    int statusCode = execute.getStatusLine().getStatusCode();
                    InputStream content = entity.getContent();
                    if (statusCode == 200) {
                        str2 = IOUtils.toString(content);
                    } else {
                        IOUtils.toString(content);
                    }
                    content.close();
                } catch (SocketException e) {
                    e.printStackTrace();
                    PLog.e(TAG, e);
                } catch (IOException e2) {
                    e2.printStackTrace();
                    PLog.e(TAG, e2);
                }
            } catch (SocketTimeoutException e3) {
                e3.printStackTrace();
                PLog.e(TAG, e3);
            } catch (Exception e4) {
                e4.printStackTrace();
                PLog.e(TAG, e4);
            }
            return str2;
        } finally {
            httpPost.abort();
            defaultHttpClient.getConnectionManager().shutdown();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x00b5, code lost:
    
        return r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00b2, code lost:
    
        if (r0 == null) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00a5, code lost:
    
        if (r0 == null) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0098, code lost:
    
        if (r0 == null) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x008b, code lost:
    
        if (r0 == null) goto L48;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String sendRequestMultipartwithWebApiToken(org.apache.http.entity.mime.MultipartEntity r6, java.lang.String r7, java.lang.String r8) {
        /*
            r5 = this;
            java.lang.String r8 = "** WebServices **"
            org.apache.http.impl.client.DefaultHttpClient r0 = new org.apache.http.impl.client.DefaultHttpClient
            r0.<init>()
            org.apache.http.client.HttpClient r0 = com.conceptglobal.pmc.asynctask.WebService.ExSSLSocketFactory.getHttpsClient(r0)
            org.apache.http.params.HttpParams r1 = r0.getParams()
            r2 = 40000(0x9c40, float:5.6052E-41)
            org.apache.http.params.HttpConnectionParams.setConnectionTimeout(r1, r2)
            org.apache.http.params.HttpConnectionParams.setSoTimeout(r1, r2)
            org.apache.http.client.methods.HttpPost r1 = new org.apache.http.client.methods.HttpPost
            r1.<init>(r7)
            r1.setEntity(r6)
            java.lang.String r6 = "Token"
            java.lang.String r7 = "bearer sample text"
            r1.setHeader(r6, r7)
            r6 = 0
            org.apache.http.HttpResponse r7 = r0.execute(r1)     // Catch: java.lang.Throwable -> L7f java.lang.Exception -> L81 java.io.IOException -> L8e java.net.SocketTimeoutException -> L9b java.net.SocketException -> La8
            org.apache.http.HttpEntity r2 = r7.getEntity()     // Catch: java.lang.Throwable -> L7f java.lang.Exception -> L81 java.io.IOException -> L8e java.net.SocketTimeoutException -> L9b java.net.SocketException -> La8
            org.apache.http.StatusLine r7 = r7.getStatusLine()     // Catch: java.lang.Throwable -> L7f java.lang.Exception -> L81 java.io.IOException -> L8e java.net.SocketTimeoutException -> L9b java.net.SocketException -> La8
            int r7 = r7.getStatusCode()     // Catch: java.lang.Throwable -> L7f java.lang.Exception -> L81 java.io.IOException -> L8e java.net.SocketTimeoutException -> L9b java.net.SocketException -> La8
            java.io.InputStream r2 = r2.getContent()     // Catch: java.lang.Throwable -> L7f java.lang.Exception -> L81 java.io.IOException -> L8e java.net.SocketTimeoutException -> L9b java.net.SocketException -> La8
            r3 = 200(0xc8, float:2.8E-43)
            if (r7 != r3) goto L45
            java.lang.String r6 = org.apache.commons.io.IOUtils.toString(r2)     // Catch: java.lang.Throwable -> L7f java.lang.Exception -> L81 java.io.IOException -> L8e java.net.SocketTimeoutException -> L9b java.net.SocketException -> La8
            goto L6f
        L45:
            r3 = 401(0x191, float:5.62E-43)
            if (r7 != r3) goto L6c
            java.lang.String r7 = org.apache.commons.io.IOUtils.toString(r2)     // Catch: java.lang.Throwable -> L7f java.lang.Exception -> L81 java.io.IOException -> L8e java.net.SocketTimeoutException -> L9b java.net.SocketException -> La8
            java.lang.String r3 = "Authorization has been denied for this request"
            boolean r3 = r7.contains(r3)     // Catch: java.lang.Exception -> L58 java.io.IOException -> L5d java.net.SocketTimeoutException -> L62 java.net.SocketException -> L67 java.lang.Throwable -> L7f
            if (r3 != 0) goto L56
            goto L6f
        L56:
            r6 = r7
            goto L6f
        L58:
            r6 = move-exception
            r4 = r7
            r7 = r6
            r6 = r4
            goto L82
        L5d:
            r6 = move-exception
            r4 = r7
            r7 = r6
            r6 = r4
            goto L8f
        L62:
            r6 = move-exception
            r4 = r7
            r7 = r6
            r6 = r4
            goto L9c
        L67:
            r6 = move-exception
            r4 = r7
            r7 = r6
            r6 = r4
            goto La9
        L6c:
            org.apache.commons.io.IOUtils.toString(r2)     // Catch: java.lang.Throwable -> L7f java.lang.Exception -> L81 java.io.IOException -> L8e java.net.SocketTimeoutException -> L9b java.net.SocketException -> La8
        L6f:
            r2.close()     // Catch: java.lang.Throwable -> L7f java.lang.Exception -> L81 java.io.IOException -> L8e java.net.SocketTimeoutException -> L9b java.net.SocketException -> La8
            r1.abort()
            if (r0 == 0) goto Lb5
        L77:
            org.apache.http.conn.ClientConnectionManager r7 = r0.getConnectionManager()
            r7.shutdown()
            goto Lb5
        L7f:
            r6 = move-exception
            goto Lb6
        L81:
            r7 = move-exception
        L82:
            r7.printStackTrace()     // Catch: java.lang.Throwable -> L7f
            com.conceptglobal.pmc.utils.PLog.e(r8, r7)     // Catch: java.lang.Throwable -> L7f
            r1.abort()
            if (r0 == 0) goto Lb5
            goto L77
        L8e:
            r7 = move-exception
        L8f:
            r7.printStackTrace()     // Catch: java.lang.Throwable -> L7f
            com.conceptglobal.pmc.utils.PLog.e(r8, r7)     // Catch: java.lang.Throwable -> L7f
            r1.abort()
            if (r0 == 0) goto Lb5
            goto L77
        L9b:
            r7 = move-exception
        L9c:
            r7.printStackTrace()     // Catch: java.lang.Throwable -> L7f
            com.conceptglobal.pmc.utils.PLog.e(r8, r7)     // Catch: java.lang.Throwable -> L7f
            r1.abort()
            if (r0 == 0) goto Lb5
            goto L77
        La8:
            r7 = move-exception
        La9:
            r7.printStackTrace()     // Catch: java.lang.Throwable -> L7f
            com.conceptglobal.pmc.utils.PLog.e(r8, r7)     // Catch: java.lang.Throwable -> L7f
            r1.abort()
            if (r0 == 0) goto Lb5
            goto L77
        Lb5:
            return r6
        Lb6:
            r1.abort()
            if (r0 == 0) goto Lc2
            org.apache.http.conn.ClientConnectionManager r7 = r0.getConnectionManager()
            r7.shutdown()
        Lc2:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.asynctask.WebService.sendRequestMultipartwithWebApiToken(org.apache.http.entity.mime.MultipartEntity, java.lang.String, java.lang.String):java.lang.String");
    }

    public String sendRequestwithWebApiToken(String str, String str2, String str3) throws ClientProtocolException, IOException {
        String str4;
        HttpClient httpsClient = ExSSLSocketFactory.getHttpsClient(new DefaultHttpClient());
        HttpPost httpPost = new HttpPost(str2);
        StringEntity stringEntity = new StringEntity(str, "UTF-8");
        System.setProperty("http.keepAlive", "false");
        httpPost.setEntity(stringEntity);
        httpPost.setHeader("Accept", "application/json; charset=utf-8");
        httpPost.setHeader("Content-type", "application/json");
        httpPost.setHeader("authorisation", "bearer " + str3);
        HttpParams params = httpsClient.getParams();
        ConnManagerParams.setTimeout(params, 40000L);
        HttpConnectionParams.setSoTimeout(params, 40000);
        HttpConnectionParams.setConnectionTimeout(params, 40000);
        HttpResponse execute = httpsClient.execute(httpPost);
        HttpEntity entity = execute.getEntity();
        int statusCode = execute.getStatusLine().getStatusCode();
        InputStream content = entity.getContent();
        if (statusCode == 200) {
            StringWriter stringWriter = new StringWriter();
            IOUtils.copy(content, stringWriter);
            str4 = stringWriter.toString();
        } else if (statusCode == 401) {
            StringWriter stringWriter2 = new StringWriter();
            IOUtils.copy(content, stringWriter2);
            str4 = stringWriter2.toString();
        } else {
            StringWriter stringWriter3 = new StringWriter();
            IOUtils.copy(content, stringWriter3);
            PLog.e("Response", stringWriter3.toString() + IOUtils.LINE_SEPARATOR_UNIX + str2);
            str4 = null;
        }
        content.close();
        return str4;
    }

    public static class ExSSLSocketFactory extends SSLSocketFactory {
        SSLContext sslContext;

        public ExSSLSocketFactory(KeyStore keyStore) throws NoSuchAlgorithmException, KeyManagementException, KeyStoreException, UnrecoverableKeyException {
            super(keyStore);
            this.sslContext = SSLContext.getInstance(SSLConnectionSocketFactory.TLS);
            this.sslContext.init(null, new TrustManager[]{new X509TrustManager() { // from class: com.conceptglobal.pmc.asynctask.WebService.ExSSLSocketFactory.1
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
                X509TrustManager x509TrustManager = new X509TrustManager() { // from class: com.conceptglobal.pmc.asynctask.WebService.ExSSLSocketFactory.2
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
            } catch (Exception e) {
                PLog.e(WebService.TAG, e);
                return null;
            }
        }
    }

    public void cancelRequest() {
        try {
            HttpPost httpPost = this.httpPost;
            if (httpPost != null) {
                httpPost.abort();
            }
            HttpClient httpClient = this.httpClient;
            if (httpClient != null) {
                httpClient.getConnectionManager().shutdown();
            }
        } catch (Exception e) {
            PLog.e(TAG, e);
        }
    }

    public String sendNeointRequest(RequestBody requestBody, String str) throws IOException {
        Response execute = new OkHttpClient().newCall(new Request.Builder().url(str).post(requestBody).addHeader("Content-Type", "application/x-www-form-urlencoded").addHeader("client_id", "ncUAT").addHeader("client_secret", "ncUAT").build()).execute();
        try {
            if (execute.isSuccessful()) {
                String string = execute.body().string();
                if (execute != null) {
                    execute.close();
                }
                return string;
            }
            if (execute == null) {
                return null;
            }
            execute.close();
            return null;
        } catch (Throwable th) {
            if (execute != null) {
                try {
                    execute.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    public String sendNeointGetRequest(String str, String str2) throws IOException {
        Response execute = new OkHttpClient().newCall(new Request.Builder().url(str2).get().addHeader("Authorization", "Bearer " + str).build()).execute();
        try {
            if (execute.isSuccessful()) {
                String string = execute.body().string();
                if (execute != null) {
                    execute.close();
                }
                return string;
            }
            if (execute == null) {
                return null;
            }
            execute.close();
            return null;
        } catch (Throwable th) {
            if (execute != null) {
                try {
                    execute.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }
}

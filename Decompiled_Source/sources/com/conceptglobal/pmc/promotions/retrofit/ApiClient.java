package com.conceptglobal.pmc.promotions.retrofit;

import com.conceptglobal.pmc.common.ConstantsPMC;
import java.security.SecureRandom;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import okhttp3.OkHttpClient;
import okhttp3.logging.HttpLoggingInterceptor;
import org.apache.http.conn.ssl.SSLConnectionSocketFactory;
import retrofit2.Retrofit;
import retrofit2.adapter.rxjava.RxJavaCallAdapterFactory;
import retrofit2.converter.gson.GsonConverterFactory;
import retrofit2.converter.scalars.ScalarsConverterFactory;

/* loaded from: classes.dex */
public class ApiClient {
    public static final String BASE_URL = "http://mliquidate.com/PMC2.0IFL/PMCCMService/Service.svc/";
    private static Retrofit retrofit;

    public static Retrofit getRetrofit() {
        if (retrofit == null) {
            OkHttpClient unsafeOkHttpClient = getUnsafeOkHttpClient();
            new OkHttpClient.Builder();
            retrofit = new Retrofit.Builder().baseUrl(ConstantsPMC.getInstance().getUrlPMCCMService(ConstantsPMC.getInstance().getIsTrainingORLive()) + "/").addConverterFactory(ScalarsConverterFactory.create()).addConverterFactory(GsonConverterFactory.create()).addCallAdapterFactory(RxJavaCallAdapterFactory.create()).client(unsafeOkHttpClient).build();
        }
        return retrofit;
    }

    public static ApiInterface getInterfaceService() {
        return (ApiInterface) getRetrofit().create(ApiInterface.class);
    }

    private static OkHttpClient getUnsafeOkHttpClient() {
        try {
            TrustManager[] trustManagerArr = {new X509TrustManager() { // from class: com.conceptglobal.pmc.promotions.retrofit.ApiClient.1
                @Override // javax.net.ssl.X509TrustManager
                public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
                }

                @Override // javax.net.ssl.X509TrustManager
                public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
                }

                @Override // javax.net.ssl.X509TrustManager
                public X509Certificate[] getAcceptedIssuers() {
                    return new X509Certificate[0];
                }
            }};
            SSLContext sSLContext = SSLContext.getInstance(SSLConnectionSocketFactory.SSL);
            sSLContext.init(null, trustManagerArr, new SecureRandom());
            SSLSocketFactory socketFactory = sSLContext.getSocketFactory();
            OkHttpClient.Builder builder = new OkHttpClient.Builder();
            builder.sslSocketFactory(socketFactory, (X509TrustManager) trustManagerArr[0]);
            builder.hostnameVerifier(new HostnameVerifier() { // from class: com.conceptglobal.pmc.promotions.retrofit.ApiClient.2
                @Override // javax.net.ssl.HostnameVerifier
                public boolean verify(String str, SSLSession sSLSession) {
                    return true;
                }
            });
            builder.readTimeout(60L, TimeUnit.SECONDS).connectTimeout(60L, TimeUnit.SECONDS);
            HttpLoggingInterceptor httpLoggingInterceptor = new HttpLoggingInterceptor();
            httpLoggingInterceptor.setLevel(HttpLoggingInterceptor.Level.BASIC);
            builder.addInterceptor(httpLoggingInterceptor);
            return builder.build();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}

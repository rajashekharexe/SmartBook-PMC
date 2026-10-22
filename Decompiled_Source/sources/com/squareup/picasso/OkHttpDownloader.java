package com.squareup.picasso;

import android.content.Context;
import android.net.Uri;
import com.squareup.okhttp.HttpResponseCache;
import com.squareup.okhttp.OkHttpClient;
import com.squareup.picasso.Downloader;
import java.io.File;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;

/* loaded from: classes2.dex */
public class OkHttpDownloader implements Downloader {
    static final String RESPONSE_SOURCE_ANDROID = "X-Android-Response-Source";
    static final String RESPONSE_SOURCE_OKHTTP = "OkHttp-Response-Source";
    private final OkHttpClient client;

    public OkHttpDownloader(Context context) {
        this(Utils.createDefaultCacheDir(context));
    }

    public OkHttpDownloader(File file) {
        this(file, Utils.calculateDiskCacheSize(file));
    }

    public OkHttpDownloader(Context context, long j) {
        this(Utils.createDefaultCacheDir(context), j);
    }

    public OkHttpDownloader(File file, long j) {
        this(new OkHttpClient());
        try {
            this.client.setResponseCache(new HttpResponseCache(file, j));
        } catch (IOException unused) {
        }
    }

    public OkHttpDownloader(OkHttpClient okHttpClient) {
        this.client = okHttpClient;
    }

    protected HttpURLConnection openConnection(Uri uri) throws IOException {
        HttpURLConnection open = this.client.open(new URL(uri.toString()));
        open.setConnectTimeout(15000);
        open.setReadTimeout(20000);
        return open;
    }

    protected OkHttpClient getClient() {
        return this.client;
    }

    @Override // com.squareup.picasso.Downloader
    public Downloader.Response load(Uri uri, boolean z) throws IOException {
        HttpURLConnection openConnection = openConnection(uri);
        openConnection.setUseCaches(true);
        if (z) {
            openConnection.setRequestProperty("Cache-Control", "only-if-cached,max-age=2147483647");
        }
        int responseCode = openConnection.getResponseCode();
        if (responseCode >= 300) {
            openConnection.disconnect();
            throw new Downloader.ResponseException(responseCode + " " + openConnection.getResponseMessage());
        }
        String headerField = openConnection.getHeaderField(RESPONSE_SOURCE_OKHTTP);
        if (headerField == null) {
            headerField = openConnection.getHeaderField(RESPONSE_SOURCE_ANDROID);
        }
        return new Downloader.Response(openConnection.getInputStream(), Utils.parseResponseSourceHeader(headerField));
    }
}

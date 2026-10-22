package com.conceptglobal.pmc.promotions.linkpreview;

import android.content.Context;
import android.text.TextUtils;
import com.google.firebase.analytics.FirebaseAnalytics;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URISyntaxException;
import java.net.URL;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

/* loaded from: classes.dex */
public class LinkUtil {
    private static LinkUtil instance;

    public static LinkUtil getInstance() {
        if (instance == null) {
            instance = new LinkUtil();
        }
        return instance;
    }

    private LinkUtil() {
    }

    public void getLinkPreview(final Context context, final String str, final GetLinkPreviewListener getLinkPreviewListener) throws Exception {
        if (TextUtils.isEmpty(str)) {
            if (getLinkPreviewListener != null) {
                getLinkPreviewListener.onFailed(new IllegalArgumentException("URL should not be null or empty"));
                return;
            }
            return;
        }
        try {
            validateURL(str);
        } catch (MalformedURLException e) {
            if (getLinkPreviewListener != null) {
                getLinkPreviewListener.onFailed(e);
            }
        } catch (URISyntaxException e2) {
            if (getLinkPreviewListener != null) {
                getLinkPreviewListener.onFailed(e2);
            }
        }
        final OkHttpClient okHttpClient = new OkHttpClient();
        try {
            okHttpClient.newCall(new Request.Builder().url(str).build()).enqueue(new Callback() { // from class: com.conceptglobal.pmc.promotions.linkpreview.LinkUtil.1
                @Override // okhttp3.Callback
                public void onFailure(Call call, IOException iOException) {
                    GetLinkPreviewListener getLinkPreviewListener2 = getLinkPreviewListener;
                    if (getLinkPreviewListener2 != null) {
                        getLinkPreviewListener2.onFailed(iOException);
                    }
                }

                @Override // okhttp3.Callback
                public void onResponse(Call call, Response response) throws IOException {
                    Elements select;
                    String attr;
                    if (!response.isSuccessful()) {
                        GetLinkPreviewListener getLinkPreviewListener2 = getLinkPreviewListener;
                        if (getLinkPreviewListener2 != null) {
                            getLinkPreviewListener2.onFailed(new IOException("Unexpected code " + response));
                            return;
                        }
                        return;
                    }
                    Document parse = Jsoup.parse(response.body().string());
                    Elements select2 = parse.select(SettingsJsonConstants.PROMPT_TITLE_KEY);
                    Elements select3 = parse.select("meta[name=description]");
                    String str2 = "bhphotovideo";
                    if (str.contains("bhphotovideo")) {
                        select = parse.select("image[id=mainImage]");
                    } else {
                        str2 = "www.amazon.com/gp/aw/d";
                        if (str.contains("www.amazon.com/gp/aw/d")) {
                            select = parse.select("image[id=mainImage]");
                        } else {
                            str2 = "www.amazon.com/";
                            if (str.contains("www.amazon.com/")) {
                                select = parse.select("imageFile[data-old-hires]");
                            } else {
                                str2 = "m.clove.co.uk";
                                if (str.contains("m.clove.co.uk")) {
                                    select = parse.select("imageFile[id]");
                                } else {
                                    str2 = "www.clove.co.uk";
                                    if (str.contains("www.clove.co.uk")) {
                                        select = parse.select("li[data-thumbnail-path]");
                                    } else {
                                        select = parse.select("meta[property=og:image]");
                                        str2 = "";
                                    }
                                }
                            }
                        }
                    }
                    String imageLink = LinkUtil.this.getImageLink(select, str2);
                    Elements select4 = parse.select("meta[property=og:site_name]");
                    Elements select5 = parse.select("meta[property=og:url]");
                    File file = null;
                    String text = (select2 == null || select2.size() <= 0) ? null : select2.get(0).text();
                    String attr2 = (select3 == null || select3.size() <= 0) ? null : select3.get(0).attr(FirebaseAnalytics.Param.CONTENT);
                    if (select5 != null && select5.size() > 0) {
                        attr = select5.get(0).attr(FirebaseAnalytics.Param.CONTENT);
                    } else {
                        Elements select6 = parse.select("link[rel=canonical]");
                        attr = (select6 == null || select6.size() <= 0) ? null : select6.get(0).attr("href");
                    }
                    String attr3 = (select4 == null || select4.size() <= 0) ? null : select4.get(0).attr(FirebaseAnalytics.Param.CONTENT);
                    if (imageLink != null) {
                        Response execute = okHttpClient.newCall(new Request.Builder().url(imageLink).build()).execute();
                        if (execute.isSuccessful()) {
                            file = new File(context.getCacheDir(), System.currentTimeMillis() + "");
                            FileOutputStream fileOutputStream = new FileOutputStream(file);
                            fileOutputStream.write(execute.body().bytes());
                            fileOutputStream.close();
                            execute.body().close();
                        }
                    }
                    LinkPreview linkPreview = new LinkPreview();
                    linkPreview.setDescription(attr2);
                    linkPreview.setLink(attr);
                    linkPreview.setSiteName(attr3);
                    linkPreview.setImageFile(file);
                    linkPreview.setTitle(text);
                    GetLinkPreviewListener getLinkPreviewListener3 = getLinkPreviewListener;
                    if (getLinkPreviewListener3 != null) {
                        getLinkPreviewListener3.onSuccess(linkPreview);
                    }
                }
            });
        } catch (Exception e3) {
            if (getLinkPreviewListener != null) {
                getLinkPreviewListener.onFailed(e3);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getImageLink(Elements elements, String str) {
        if (elements == null || elements.size() <= 0) {
            return null;
        }
        str.hashCode();
        switch (str) {
            case "www.amazon.com/":
                return elements.get(0).attr("data-old-hires");
            case "m.clove.co.uk":
            case "bhphotovideo":
                return elements.get(0).attr("src");
            case "www.clove.co.uk":
                return "https://www.clove.co.uk" + elements.get(0).attr("data-thumbnail-path");
            default:
                return elements.get(0).attr(FirebaseAnalytics.Param.CONTENT);
        }
    }

    public boolean validateURL(String str) throws URISyntaxException, MalformedURLException {
        new URL(str).toURI();
        return true;
    }
}

package com.crashlytics.android.beta;

import io.fabric.sdk.android.Kit;
import io.fabric.sdk.android.services.common.AbstractSpiCall;
import io.fabric.sdk.android.services.network.HttpMethod;
import io.fabric.sdk.android.services.network.HttpRequest;
import io.fabric.sdk.android.services.network.HttpRequestFactory;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
class CheckForUpdatesRequest extends AbstractSpiCall {
    static final String BETA_SOURCE = "3";
    static final String BUILD_VERSION = "build_version";
    static final String DISPLAY_VERSION = "display_version";
    static final String HEADER_BETA_TOKEN = "X-CRASHLYTICS-BETA-TOKEN";
    static final String INSTANCE = "instance";
    static final String SDK_ANDROID_DIR_TOKEN_TYPE = "3";
    static final String SOURCE = "source";
    private final CheckForUpdatesResponseTransform responseTransform;

    static String createBetaTokenHeaderValueFor(String str) {
        return "3:" + str;
    }

    public CheckForUpdatesRequest(Kit kit, String str, String str2, HttpRequestFactory httpRequestFactory, CheckForUpdatesResponseTransform checkForUpdatesResponseTransform) {
        super(kit, str, str2, httpRequestFactory, HttpMethod.GET);
        this.responseTransform = checkForUpdatesResponseTransform;
    }

    /* JADX WARN: Not initialized variable reg: 9, insn: 0x00de: MOVE (r8 I:??[OBJECT, ARRAY]) = (r9 I:??[OBJECT, ARRAY]), block:B:23:0x00de */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00e1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.crashlytics.android.beta.CheckForUpdatesResponse invoke(java.lang.String r11, java.lang.String r12, com.crashlytics.android.beta.BuildProperties r13) {
        /*
            r10 = this;
            java.lang.String r0 = "Checking for updates request ID: "
            java.lang.String r1 = "Fabric"
            java.lang.String r2 = "X-REQUEST-ID"
            java.lang.String r3 = "Beta"
            java.lang.String r4 = "Checking for updates failed. Response code: "
            java.lang.String r5 = "Checking for updates query params are: "
            java.lang.String r6 = "Checking for updates from "
            java.lang.String r7 = "Error while checking for updates from "
            r8 = 0
            java.util.Map r13 = r10.getQueryParamsFor(r13)     // Catch: java.lang.Throwable -> La8 java.lang.Exception -> Laa
            io.fabric.sdk.android.services.network.HttpRequest r9 = r10.getHttpRequest(r13)     // Catch: java.lang.Throwable -> La8 java.lang.Exception -> Laa
            io.fabric.sdk.android.services.network.HttpRequest r9 = r10.applyHeadersTo(r9, r11, r12)     // Catch: java.lang.Exception -> La6 java.lang.Throwable -> Ldd
            io.fabric.sdk.android.Logger r11 = io.fabric.sdk.android.Fabric.getLogger()     // Catch: java.lang.Exception -> La6 java.lang.Throwable -> Ldd
            java.lang.StringBuilder r12 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> La6 java.lang.Throwable -> Ldd
            r12.<init>(r6)     // Catch: java.lang.Exception -> La6 java.lang.Throwable -> Ldd
            java.lang.String r6 = r10.getUrl()     // Catch: java.lang.Exception -> La6 java.lang.Throwable -> Ldd
            r12.append(r6)     // Catch: java.lang.Exception -> La6 java.lang.Throwable -> Ldd
            java.lang.String r12 = r12.toString()     // Catch: java.lang.Exception -> La6 java.lang.Throwable -> Ldd
            r11.d(r3, r12)     // Catch: java.lang.Exception -> La6 java.lang.Throwable -> Ldd
            io.fabric.sdk.android.Logger r11 = io.fabric.sdk.android.Fabric.getLogger()     // Catch: java.lang.Exception -> La6 java.lang.Throwable -> Ldd
            java.lang.StringBuilder r12 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> La6 java.lang.Throwable -> Ldd
            r12.<init>(r5)     // Catch: java.lang.Exception -> La6 java.lang.Throwable -> Ldd
            r12.append(r13)     // Catch: java.lang.Exception -> La6 java.lang.Throwable -> Ldd
            java.lang.String r12 = r12.toString()     // Catch: java.lang.Exception -> La6 java.lang.Throwable -> Ldd
            r11.d(r3, r12)     // Catch: java.lang.Exception -> La6 java.lang.Throwable -> Ldd
            boolean r11 = r9.ok()     // Catch: java.lang.Exception -> La6 java.lang.Throwable -> Ldd
            if (r11 == 0) goto L7f
            io.fabric.sdk.android.Logger r11 = io.fabric.sdk.android.Fabric.getLogger()     // Catch: java.lang.Exception -> La6 java.lang.Throwable -> Ldd
            java.lang.String r12 = "Checking for updates was successful"
            r11.d(r3, r12)     // Catch: java.lang.Exception -> La6 java.lang.Throwable -> Ldd
            org.json.JSONObject r11 = new org.json.JSONObject     // Catch: java.lang.Exception -> La6 java.lang.Throwable -> Ldd
            java.lang.String r12 = r9.body()     // Catch: java.lang.Exception -> La6 java.lang.Throwable -> Ldd
            r11.<init>(r12)     // Catch: java.lang.Exception -> La6 java.lang.Throwable -> Ldd
            com.crashlytics.android.beta.CheckForUpdatesResponseTransform r12 = r10.responseTransform     // Catch: java.lang.Exception -> La6 java.lang.Throwable -> Ldd
            com.crashlytics.android.beta.CheckForUpdatesResponse r11 = r12.fromJson(r11)     // Catch: java.lang.Exception -> La6 java.lang.Throwable -> Ldd
            if (r9 == 0) goto L7e
            java.lang.String r12 = r9.header(r2)
            io.fabric.sdk.android.Logger r13 = io.fabric.sdk.android.Fabric.getLogger()
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>(r0)
            r2.append(r12)
            java.lang.String r12 = r2.toString()
            r13.d(r1, r12)
        L7e:
            return r11
        L7f:
            io.fabric.sdk.android.Logger r11 = io.fabric.sdk.android.Fabric.getLogger()     // Catch: java.lang.Exception -> La6 java.lang.Throwable -> Ldd
            java.lang.StringBuilder r12 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> La6 java.lang.Throwable -> Ldd
            r12.<init>(r4)     // Catch: java.lang.Exception -> La6 java.lang.Throwable -> Ldd
            int r13 = r9.code()     // Catch: java.lang.Exception -> La6 java.lang.Throwable -> Ldd
            r12.append(r13)     // Catch: java.lang.Exception -> La6 java.lang.Throwable -> Ldd
            java.lang.String r12 = r12.toString()     // Catch: java.lang.Exception -> La6 java.lang.Throwable -> Ldd
            r11.e(r3, r12)     // Catch: java.lang.Exception -> La6 java.lang.Throwable -> Ldd
            if (r9 == 0) goto Ldc
            java.lang.String r11 = r9.header(r2)
            io.fabric.sdk.android.Logger r12 = io.fabric.sdk.android.Fabric.getLogger()
            java.lang.StringBuilder r13 = new java.lang.StringBuilder
            r13.<init>(r0)
            goto Ld2
        La6:
            r11 = move-exception
            goto Lac
        La8:
            r11 = move-exception
            goto Ldf
        Laa:
            r11 = move-exception
            r9 = r8
        Lac:
            io.fabric.sdk.android.Logger r12 = io.fabric.sdk.android.Fabric.getLogger()     // Catch: java.lang.Throwable -> Ldd
            java.lang.StringBuilder r13 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Ldd
            r13.<init>(r7)     // Catch: java.lang.Throwable -> Ldd
            java.lang.String r4 = r10.getUrl()     // Catch: java.lang.Throwable -> Ldd
            r13.append(r4)     // Catch: java.lang.Throwable -> Ldd
            java.lang.String r13 = r13.toString()     // Catch: java.lang.Throwable -> Ldd
            r12.e(r3, r13, r11)     // Catch: java.lang.Throwable -> Ldd
            if (r9 == 0) goto Ldc
            java.lang.String r11 = r9.header(r2)
            io.fabric.sdk.android.Logger r12 = io.fabric.sdk.android.Fabric.getLogger()
            java.lang.StringBuilder r13 = new java.lang.StringBuilder
            r13.<init>(r0)
        Ld2:
            r13.append(r11)
            java.lang.String r11 = r13.toString()
            r12.d(r1, r11)
        Ldc:
            return r8
        Ldd:
            r11 = move-exception
            r8 = r9
        Ldf:
            if (r8 == 0) goto Lf8
            java.lang.String r12 = r8.header(r2)
            io.fabric.sdk.android.Logger r13 = io.fabric.sdk.android.Fabric.getLogger()
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>(r0)
            r2.append(r12)
            java.lang.String r12 = r2.toString()
            r13.d(r1, r12)
        Lf8:
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.crashlytics.android.beta.CheckForUpdatesRequest.invoke(java.lang.String, java.lang.String, com.crashlytics.android.beta.BuildProperties):com.crashlytics.android.beta.CheckForUpdatesResponse");
    }

    private HttpRequest applyHeadersTo(HttpRequest httpRequest, String str, String str2) {
        return httpRequest.header("Accept", "application/json").header("User-Agent", AbstractSpiCall.CRASHLYTICS_USER_AGENT + this.kit.getVersion()).header(AbstractSpiCall.HEADER_DEVELOPER_TOKEN, "470fa2b4ae81cd56ecbcda9735803434cec591fa").header(AbstractSpiCall.HEADER_CLIENT_TYPE, AbstractSpiCall.ANDROID_CLIENT_TYPE).header(AbstractSpiCall.HEADER_CLIENT_VERSION, this.kit.getVersion()).header(AbstractSpiCall.HEADER_API_KEY, str).header(HEADER_BETA_TOKEN, createBetaTokenHeaderValueFor(str2));
    }

    private Map<String, String> getQueryParamsFor(BuildProperties buildProperties) {
        HashMap hashMap = new HashMap();
        hashMap.put(BUILD_VERSION, buildProperties.versionCode);
        hashMap.put(DISPLAY_VERSION, buildProperties.versionName);
        hashMap.put(INSTANCE, buildProperties.buildId);
        hashMap.put("source", "3");
        return hashMap;
    }
}

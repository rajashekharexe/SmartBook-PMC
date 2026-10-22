package io.fabric.sdk.android.services.settings;

import android.text.TextUtils;
import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.Kit;
import io.fabric.sdk.android.services.common.AbstractSpiCall;
import io.fabric.sdk.android.services.common.CommonUtils;
import io.fabric.sdk.android.services.network.HttpMethod;
import io.fabric.sdk.android.services.network.HttpRequest;
import io.fabric.sdk.android.services.network.HttpRequestFactory;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes2.dex */
class DefaultSettingsSpiCall extends AbstractSpiCall implements SettingsSpiCall {
    static final String BUILD_VERSION_PARAM = "build_version";
    static final String DISPLAY_VERSION_PARAM = "display_version";
    static final String HEADER_ADVERTISING_TOKEN = "X-CRASHLYTICS-ADVERTISING-TOKEN";
    static final String HEADER_ANDROID_ID = "X-CRASHLYTICS-ANDROID-ID";
    static final String HEADER_DEVICE_MODEL = "X-CRASHLYTICS-DEVICE-MODEL";
    static final String HEADER_INSTALLATION_ID = "X-CRASHLYTICS-INSTALLATION-ID";
    static final String HEADER_OS_BUILD_VERSION = "X-CRASHLYTICS-OS-BUILD-VERSION";
    static final String HEADER_OS_DISPLAY_VERSION = "X-CRASHLYTICS-OS-DISPLAY-VERSION";
    static final String ICON_HASH = "icon_hash";
    static final String INSTANCE_PARAM = "instance";
    static final String SOURCE_PARAM = "source";

    boolean requestWasSuccessful(int i) {
        return i == 200 || i == 201 || i == 202 || i == 203;
    }

    public DefaultSettingsSpiCall(Kit kit, String str, String str2, HttpRequestFactory httpRequestFactory) {
        this(kit, str, str2, httpRequestFactory, HttpMethod.GET);
    }

    DefaultSettingsSpiCall(Kit kit, String str, String str2, HttpRequestFactory httpRequestFactory, HttpMethod httpMethod) {
        super(kit, str, str2, httpRequestFactory, httpMethod);
    }

    /* JADX WARN: Not initialized variable reg: 7, insn: 0x007c: MOVE (r5 I:??[OBJECT, ARRAY]) = (r7 I:??[OBJECT, ARRAY]), block:B:18:0x007c */
    /* JADX WARN: Removed duplicated region for block: B:20:0x007f  */
    @Override // io.fabric.sdk.android.services.settings.SettingsSpiCall
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.json.JSONObject invoke(io.fabric.sdk.android.services.settings.SettingsRequest r10) {
        /*
            r9 = this;
            java.lang.String r0 = "X-REQUEST-ID"
            java.lang.String r1 = "Settings request ID: "
            java.lang.String r2 = "Fabric"
            java.lang.String r3 = "Settings query params were: "
            java.lang.String r4 = "Requesting settings from "
            r5 = 0
            java.util.Map r6 = r9.getQueryParamsFor(r10)     // Catch: java.lang.Throwable -> L61 io.fabric.sdk.android.services.network.HttpRequest.HttpRequestException -> L63
            io.fabric.sdk.android.services.network.HttpRequest r7 = r9.getHttpRequest(r6)     // Catch: java.lang.Throwable -> L61 io.fabric.sdk.android.services.network.HttpRequest.HttpRequestException -> L63
            io.fabric.sdk.android.services.network.HttpRequest r7 = r9.applyHeadersTo(r7, r10)     // Catch: io.fabric.sdk.android.services.network.HttpRequest.HttpRequestException -> L5f java.lang.Throwable -> L7b
            io.fabric.sdk.android.Logger r10 = io.fabric.sdk.android.Fabric.getLogger()     // Catch: io.fabric.sdk.android.services.network.HttpRequest.HttpRequestException -> L5f java.lang.Throwable -> L7b
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch: io.fabric.sdk.android.services.network.HttpRequest.HttpRequestException -> L5f java.lang.Throwable -> L7b
            r8.<init>(r4)     // Catch: io.fabric.sdk.android.services.network.HttpRequest.HttpRequestException -> L5f java.lang.Throwable -> L7b
            java.lang.String r4 = r9.getUrl()     // Catch: io.fabric.sdk.android.services.network.HttpRequest.HttpRequestException -> L5f java.lang.Throwable -> L7b
            r8.append(r4)     // Catch: io.fabric.sdk.android.services.network.HttpRequest.HttpRequestException -> L5f java.lang.Throwable -> L7b
            java.lang.String r4 = r8.toString()     // Catch: io.fabric.sdk.android.services.network.HttpRequest.HttpRequestException -> L5f java.lang.Throwable -> L7b
            r10.d(r2, r4)     // Catch: io.fabric.sdk.android.services.network.HttpRequest.HttpRequestException -> L5f java.lang.Throwable -> L7b
            io.fabric.sdk.android.Logger r10 = io.fabric.sdk.android.Fabric.getLogger()     // Catch: io.fabric.sdk.android.services.network.HttpRequest.HttpRequestException -> L5f java.lang.Throwable -> L7b
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: io.fabric.sdk.android.services.network.HttpRequest.HttpRequestException -> L5f java.lang.Throwable -> L7b
            r4.<init>(r3)     // Catch: io.fabric.sdk.android.services.network.HttpRequest.HttpRequestException -> L5f java.lang.Throwable -> L7b
            r4.append(r6)     // Catch: io.fabric.sdk.android.services.network.HttpRequest.HttpRequestException -> L5f java.lang.Throwable -> L7b
            java.lang.String r3 = r4.toString()     // Catch: io.fabric.sdk.android.services.network.HttpRequest.HttpRequestException -> L5f java.lang.Throwable -> L7b
            r10.d(r2, r3)     // Catch: io.fabric.sdk.android.services.network.HttpRequest.HttpRequestException -> L5f java.lang.Throwable -> L7b
            org.json.JSONObject r5 = r9.handleResponse(r7)     // Catch: io.fabric.sdk.android.services.network.HttpRequest.HttpRequestException -> L5f java.lang.Throwable -> L7b
            if (r7 == 0) goto L7a
            io.fabric.sdk.android.Logger r10 = io.fabric.sdk.android.Fabric.getLogger()
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>(r1)
        L50:
            java.lang.String r0 = r7.header(r0)
            r3.append(r0)
            java.lang.String r0 = r3.toString()
            r10.d(r2, r0)
            goto L7a
        L5f:
            r10 = move-exception
            goto L65
        L61:
            r10 = move-exception
            goto L7d
        L63:
            r10 = move-exception
            r7 = r5
        L65:
            io.fabric.sdk.android.Logger r3 = io.fabric.sdk.android.Fabric.getLogger()     // Catch: java.lang.Throwable -> L7b
            java.lang.String r4 = "Settings request failed."
            r3.e(r2, r4, r10)     // Catch: java.lang.Throwable -> L7b
            if (r7 == 0) goto L7a
            io.fabric.sdk.android.Logger r10 = io.fabric.sdk.android.Fabric.getLogger()
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>(r1)
            goto L50
        L7a:
            return r5
        L7b:
            r10 = move-exception
            r5 = r7
        L7d:
            if (r5 == 0) goto L96
            io.fabric.sdk.android.Logger r3 = io.fabric.sdk.android.Fabric.getLogger()
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>(r1)
            java.lang.String r0 = r5.header(r0)
            r4.append(r0)
            java.lang.String r0 = r4.toString()
            r3.d(r2, r0)
        L96:
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: io.fabric.sdk.android.services.settings.DefaultSettingsSpiCall.invoke(io.fabric.sdk.android.services.settings.SettingsRequest):org.json.JSONObject");
    }

    JSONObject handleResponse(HttpRequest httpRequest) {
        int code = httpRequest.code();
        Fabric.getLogger().d(Fabric.TAG, "Settings result was: " + code);
        if (requestWasSuccessful(code)) {
            return getJsonObjectFrom(httpRequest.body());
        }
        Fabric.getLogger().e(Fabric.TAG, "Failed to retrieve settings from " + getUrl());
        return null;
    }

    private JSONObject getJsonObjectFrom(String str) {
        try {
            return new JSONObject(str);
        } catch (Exception e) {
            Fabric.getLogger().d(Fabric.TAG, "Failed to parse settings JSON from " + getUrl(), e);
            Fabric.getLogger().d(Fabric.TAG, "Settings response " + str);
            return null;
        }
    }

    private Map<String, String> getQueryParamsFor(SettingsRequest settingsRequest) {
        HashMap hashMap = new HashMap();
        hashMap.put(BUILD_VERSION_PARAM, settingsRequest.buildVersion);
        hashMap.put(DISPLAY_VERSION_PARAM, settingsRequest.displayVersion);
        hashMap.put("source", Integer.toString(settingsRequest.source));
        if (settingsRequest.iconHash != null) {
            hashMap.put(ICON_HASH, settingsRequest.iconHash);
        }
        String str = settingsRequest.instanceId;
        if (!CommonUtils.isNullOrEmpty(str)) {
            hashMap.put(INSTANCE_PARAM, str);
        }
        return hashMap;
    }

    private HttpRequest applyHeadersTo(HttpRequest httpRequest, SettingsRequest settingsRequest) {
        applyNonNullHeader(httpRequest, AbstractSpiCall.HEADER_API_KEY, settingsRequest.apiKey);
        applyNonNullHeader(httpRequest, AbstractSpiCall.HEADER_CLIENT_TYPE, AbstractSpiCall.ANDROID_CLIENT_TYPE);
        applyNonNullHeader(httpRequest, AbstractSpiCall.HEADER_CLIENT_VERSION, this.kit.getVersion());
        applyNonNullHeader(httpRequest, "Accept", "application/json");
        applyNonNullHeader(httpRequest, HEADER_DEVICE_MODEL, settingsRequest.deviceModel);
        applyNonNullHeader(httpRequest, HEADER_OS_BUILD_VERSION, settingsRequest.osBuildVersion);
        applyNonNullHeader(httpRequest, HEADER_OS_DISPLAY_VERSION, settingsRequest.osDisplayVersion);
        applyNonNullHeader(httpRequest, HEADER_INSTALLATION_ID, settingsRequest.installationId);
        if (TextUtils.isEmpty(settingsRequest.advertisingId)) {
            applyNonNullHeader(httpRequest, HEADER_ANDROID_ID, settingsRequest.androidId);
        } else {
            applyNonNullHeader(httpRequest, HEADER_ADVERTISING_TOKEN, settingsRequest.advertisingId);
        }
        return httpRequest;
    }

    private void applyNonNullHeader(HttpRequest httpRequest, String str, String str2) {
        if (str2 != null) {
            httpRequest.header(str, str2);
        }
    }
}

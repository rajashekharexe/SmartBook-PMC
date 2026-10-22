package com.crashlytics.android.beta;

import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.Kit;
import io.fabric.sdk.android.Logger;
import io.fabric.sdk.android.services.cache.MemoryValueCache;
import io.fabric.sdk.android.services.common.CommonUtils;
import io.fabric.sdk.android.services.common.DeviceIdentifierProvider;
import io.fabric.sdk.android.services.common.IdManager;
import io.fabric.sdk.android.services.common.SystemCurrentTimeProvider;
import io.fabric.sdk.android.services.network.DefaultHttpRequestFactory;
import io.fabric.sdk.android.services.persistence.PreferenceStoreImpl;
import io.fabric.sdk.android.services.settings.BetaSettingsData;
import io.fabric.sdk.android.services.settings.Settings;
import io.fabric.sdk.android.services.settings.SettingsData;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class Beta extends Kit<Boolean> implements DeviceIdentifierProvider {
    private static final String CRASHLYTICS_API_ENDPOINT = "com.crashlytics.ApiEndpoint";
    private static final String CRASHLYTICS_BUILD_PROPERTIES = "crashlytics-build.properties";
    static final String NO_DEVICE_TOKEN = "";
    public static final String TAG = "Beta";
    private final MemoryValueCache<String> deviceTokenCache = new MemoryValueCache<>();
    private final DeviceTokenLoader deviceTokenLoader = new DeviceTokenLoader();
    private UpdatesController updatesController;

    public static Beta getInstance() {
        return (Beta) Fabric.getKit(Beta.class);
    }

    @Override // io.fabric.sdk.android.Kit
    protected boolean onPreExecute() {
        this.updatesController = createUpdatesController(Build.VERSION.SDK_INT, (Application) getContext().getApplicationContext());
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // io.fabric.sdk.android.Kit
    public Boolean doInBackground() {
        Fabric.getLogger().d(TAG, "Beta kit initializing...");
        Context context = getContext();
        IdManager idManager = getIdManager();
        if (TextUtils.isEmpty(getBetaDeviceToken(context, idManager.getInstallerPackageName()))) {
            Fabric.getLogger().d(TAG, "A Beta device token was not found for this app");
            return false;
        }
        Fabric.getLogger().d(TAG, "Beta device token is present, checking for app updates.");
        BetaSettingsData betaSettingsData = getBetaSettingsData();
        BuildProperties loadBuildProperties = loadBuildProperties(context);
        if (canCheckForUpdates(betaSettingsData, loadBuildProperties)) {
            this.updatesController.initialize(context, this, idManager, betaSettingsData, loadBuildProperties, new PreferenceStoreImpl(this), new SystemCurrentTimeProvider(), new DefaultHttpRequestFactory(Fabric.getLogger()));
        }
        return true;
    }

    UpdatesController createUpdatesController(int i, Application application) {
        if (i >= 14) {
            return new ActivityLifecycleCheckForUpdatesController(getFabric().getActivityLifecycleManager(), getFabric().getExecutorService());
        }
        return new ImmediateCheckForUpdatesController();
    }

    @Override // io.fabric.sdk.android.services.common.DeviceIdentifierProvider
    public Map<IdManager.DeviceIdentifierType, String> getDeviceIdentifiers() {
        String betaDeviceToken = getBetaDeviceToken(getContext(), getIdManager().getInstallerPackageName());
        HashMap hashMap = new HashMap();
        if (!TextUtils.isEmpty(betaDeviceToken)) {
            hashMap.put(IdManager.DeviceIdentifierType.FONT_TOKEN, betaDeviceToken);
        }
        return hashMap;
    }

    @Override // io.fabric.sdk.android.Kit
    public String getIdentifier() {
        return "com.crashlytics.sdk.android:beta";
    }

    @Override // io.fabric.sdk.android.Kit
    public String getVersion() {
        return "1.2.7.19";
    }

    boolean canCheckForUpdates(BetaSettingsData betaSettingsData, BuildProperties buildProperties) {
        return (betaSettingsData == null || TextUtils.isEmpty(betaSettingsData.updateUrl) || buildProperties == null) ? false : true;
    }

    private String getBetaDeviceToken(Context context, String str) {
        String str2 = null;
        try {
            String str3 = this.deviceTokenCache.get(context, this.deviceTokenLoader);
            if (!"".equals(str3)) {
                str2 = str3;
            }
        } catch (Exception e) {
            Fabric.getLogger().e(TAG, "Failed to load the Beta device token", e);
        }
        Logger logger = Fabric.getLogger();
        StringBuilder sb = new StringBuilder("Beta device token present: ");
        sb.append(!TextUtils.isEmpty(str2));
        logger.d(TAG, sb.toString());
        return str2;
    }

    private BetaSettingsData getBetaSettingsData() {
        SettingsData awaitSettingsData = Settings.getInstance().awaitSettingsData();
        if (awaitSettingsData != null) {
            return awaitSettingsData.betaSettingsData;
        }
        return null;
    }

    private BuildProperties loadBuildProperties(Context context) {
        Throwable th;
        InputStream inputStream;
        BuildProperties buildProperties;
        InputStream inputStream2 = null;
        r2 = null;
        BuildProperties buildProperties2 = null;
        inputStream2 = null;
        try {
            try {
                inputStream = context.getAssets().open(CRASHLYTICS_BUILD_PROPERTIES);
                if (inputStream != null) {
                    try {
                        buildProperties2 = BuildProperties.fromPropertiesStream(inputStream);
                        Fabric.getLogger().d(TAG, buildProperties2.packageName + " build properties: " + buildProperties2.versionName + " (" + buildProperties2.versionCode + ") - " + buildProperties2.buildId);
                    } catch (Exception e) {
                        e = e;
                        BuildProperties buildProperties3 = buildProperties2;
                        inputStream2 = inputStream;
                        buildProperties = buildProperties3;
                        Fabric.getLogger().e(TAG, "Error reading Beta build properties", e);
                        if (inputStream2 != null) {
                            try {
                                inputStream2.close();
                            } catch (IOException e2) {
                                Fabric.getLogger().e(TAG, "Error closing Beta build properties asset", e2);
                            }
                        }
                        return buildProperties;
                    } catch (Throwable th2) {
                        th = th2;
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (IOException e3) {
                                Fabric.getLogger().e(TAG, "Error closing Beta build properties asset", e3);
                            }
                        }
                        throw th;
                    }
                }
                if (inputStream == null) {
                    return buildProperties2;
                }
                try {
                    inputStream.close();
                    return buildProperties2;
                } catch (IOException e4) {
                    Fabric.getLogger().e(TAG, "Error closing Beta build properties asset", e4);
                    return buildProperties2;
                }
            } catch (Exception e5) {
                e = e5;
                buildProperties = null;
            }
        } catch (Throwable th3) {
            InputStream inputStream3 = inputStream2;
            th = th3;
            inputStream = inputStream3;
        }
    }

    String getOverridenSpiEndpoint() {
        return CommonUtils.getStringsFileValue(getContext(), CRASHLYTICS_API_ENDPOINT);
    }
}

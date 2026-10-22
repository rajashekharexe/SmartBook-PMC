package com.crashlytics.android.beta;

import android.content.Context;
import android.content.pm.PackageManager;
import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.Logger;
import io.fabric.sdk.android.services.cache.ValueLoader;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

/* loaded from: classes.dex */
public class DeviceTokenLoader implements ValueLoader<String> {
    private static final String BETA_APP_PACKAGE_NAME = "io.crash.air";
    private static final String DIRFACTOR_DEVICE_TOKEN_PREFIX = "assets/com.crashlytics.android.beta/dirfactor-device-token=";

    @Override // io.fabric.sdk.android.services.cache.ValueLoader
    public String load(Context context) throws Exception {
        String str;
        long nanoTime = System.nanoTime();
        ZipInputStream zipInputStream = null;
        try {
            try {
                try {
                    try {
                        try {
                            zipInputStream = getZipInputStreamOfApkFrom(context, "io.crash.air");
                            str = determineDeviceToken(zipInputStream);
                        } catch (FileNotFoundException e) {
                            Fabric.getLogger().e(Beta.TAG, "Failed to find the APK file", e);
                            if (zipInputStream != null) {
                                zipInputStream.close();
                            }
                            str = "";
                            Logger logger = Fabric.getLogger();
                            logger.d(Beta.TAG, "Beta device token load took " + ((System.nanoTime() - nanoTime) / 1000000.0d) + "ms");
                            return str;
                        }
                    } catch (PackageManager.NameNotFoundException unused) {
                        Fabric.getLogger().d(Beta.TAG, "Beta by Crashlytics app is not installed");
                        if (zipInputStream != null) {
                            zipInputStream.close();
                        }
                        str = "";
                        Logger logger2 = Fabric.getLogger();
                        logger2.d(Beta.TAG, "Beta device token load took " + ((System.nanoTime() - nanoTime) / 1000000.0d) + "ms");
                        return str;
                    }
                } catch (IOException e2) {
                    Fabric.getLogger().e(Beta.TAG, "Failed to read the APK file", e2);
                    if (zipInputStream != null) {
                        zipInputStream.close();
                    }
                    str = "";
                    Logger logger22 = Fabric.getLogger();
                    logger22.d(Beta.TAG, "Beta device token load took " + ((System.nanoTime() - nanoTime) / 1000000.0d) + "ms");
                    return str;
                }
            } finally {
                if (zipInputStream != null) {
                    try {
                        zipInputStream.close();
                    } catch (IOException e3) {
                        Fabric.getLogger().e(Beta.TAG, "Failed to close the APK file", e3);
                    }
                }
            }
        } catch (IOException e4) {
            Fabric.getLogger().e(Beta.TAG, "Failed to close the APK file", e4);
        }
        Logger logger222 = Fabric.getLogger();
        logger222.d(Beta.TAG, "Beta device token load took " + ((System.nanoTime() - nanoTime) / 1000000.0d) + "ms");
        return str;
    }

    ZipInputStream getZipInputStreamOfApkFrom(Context context, String str) throws PackageManager.NameNotFoundException, FileNotFoundException {
        return new ZipInputStream(new FileInputStream(context.getPackageManager().getApplicationInfo(str, 0).sourceDir));
    }

    String determineDeviceToken(ZipInputStream zipInputStream) throws IOException {
        ZipEntry nextEntry = zipInputStream.getNextEntry();
        if (nextEntry != null) {
            String name = nextEntry.getName();
            if (name.startsWith(DIRFACTOR_DEVICE_TOKEN_PREFIX)) {
                return name.substring(59, name.length() - 1);
            }
            return "";
        }
        return "";
    }
}

package com.evernote.android.job.util;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.PowerManager;
import androidx.core.net.ConnectivityManagerCompat;
import com.evernote.android.job.JobRequest;
import com.google.firebase.analytics.FirebaseAnalytics;

/* loaded from: classes.dex */
public final class Device {
    public static boolean isStorageLow() {
        return false;
    }

    private Device() {
    }

    public static BatteryStatus getBatteryStatus(Context context) {
        Intent registerReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (registerReceiver == null) {
            return BatteryStatus.DEFAULT;
        }
        float intExtra = registerReceiver.getIntExtra(FirebaseAnalytics.Param.LEVEL, -1) / registerReceiver.getIntExtra("scale", -1);
        int intExtra2 = registerReceiver.getIntExtra("plugged", 0);
        return new BatteryStatus(intExtra2 == 1 || intExtra2 == 2 || intExtra2 == 4, intExtra);
    }

    public static boolean isIdle(Context context) {
        boolean isDeviceIdleMode;
        PowerManager powerManager = (PowerManager) context.getSystemService("power");
        if (Build.VERSION.SDK_INT >= 23) {
            isDeviceIdleMode = powerManager.isDeviceIdleMode();
            return isDeviceIdleMode || !powerManager.isInteractive();
        }
        return !powerManager.isInteractive();
    }

    public static JobRequest.NetworkType getNetworkType(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        try {
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo == null || !activeNetworkInfo.isConnectedOrConnecting()) {
                return JobRequest.NetworkType.ANY;
            }
            if (!ConnectivityManagerCompat.isActiveNetworkMetered(connectivityManager)) {
                return JobRequest.NetworkType.UNMETERED;
            }
            if (activeNetworkInfo.isRoaming()) {
                return JobRequest.NetworkType.CONNECTED;
            }
            return JobRequest.NetworkType.NOT_ROAMING;
        } catch (Throwable unused) {
            return JobRequest.NetworkType.ANY;
        }
    }
}

package com.conceptglobal.pmc;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;

/* loaded from: classes.dex */
public class DeviceBootReceiver extends BroadcastReceiver {
    private static final String TAG = "DeviceBootReceiver";

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent.getAction().equals("android.intent.action.BOOT_COMPLETED")) {
            Log.i(TAG, "BootCompleted Received");
        }
    }
}

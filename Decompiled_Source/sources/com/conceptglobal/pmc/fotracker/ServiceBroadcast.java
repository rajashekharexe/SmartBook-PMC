package com.conceptglobal.pmc.fotracker;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;

/* loaded from: classes.dex */
public class ServiceBroadcast extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Log.i("test", "Service broadcast called ::::::::::::::");
    }

    private void startDataInsertedService(Context context) {
        Intent intent = new Intent(context, (Class<?>) DataInsertedService.class);
        DataInsertedService.IS_SERVICE_RUNNING = true;
        context.startService(intent);
    }
}

package com.conceptglobal.pmc.smartalerts.locationservice;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.conceptglobal.pmc.smartalerts.Basics;

/* loaded from: classes.dex */
public class Watchdog extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Basics.get(context).periodicHook();
    }
}

package com.conceptglobal.pmc;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.conceptglobal.pmc.service.SyncDataService;
import com.conceptglobal.pmc.utils.UtilDeclarations;

/* loaded from: classes.dex */
public class NetworkChangeReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (UtilDeclarations.isOnline(context)) {
            context.startService(new Intent(context, (Class<?>) SyncDataService.class));
        }
    }
}

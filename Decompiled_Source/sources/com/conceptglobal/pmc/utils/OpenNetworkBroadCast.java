package com.conceptglobal.pmc.utils;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.util.Log;
import com.conceptglobal.pmc.interfaces.NetworkListener;

/* loaded from: classes.dex */
public class OpenNetworkBroadCast extends BroadcastReceiver implements NetworkListener {
    private NetworkListener networkListener;

    @Override // com.conceptglobal.pmc.interfaces.NetworkListener
    public void onNetWorkDisconnected() {
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        this.networkListener = this;
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        NetworkInfo networkInfo = connectivityManager.getNetworkInfo(1);
        boolean isConnected = networkInfo != null ? networkInfo.isConnected() : false;
        NetworkInfo networkInfo2 = connectivityManager.getNetworkInfo(0);
        if ((networkInfo2 != null ? networkInfo2.isConnected() : false) || isConnected) {
            Log.e("Netowrk", "Network connected");
        } else {
            this.networkListener.onNetWorkDisconnected();
        }
    }
}

package com.conceptglobal.pmc;

import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;
import com.conceptglobal.pmc.interfaces.OnResultReceiver;

/* loaded from: classes.dex */
public class SyncResultReceiver extends ResultReceiver {
    private OnResultReceiver mReceiver;

    public SyncResultReceiver(Handler handler) {
        super(handler);
    }

    public void setReceiver(OnResultReceiver onResultReceiver) {
        this.mReceiver = onResultReceiver;
    }

    @Override // android.os.ResultReceiver
    protected void onReceiveResult(int i, Bundle bundle) {
        OnResultReceiver onResultReceiver = this.mReceiver;
        if (onResultReceiver != null) {
            onResultReceiver.onReceiveResult(i, bundle);
        }
    }
}

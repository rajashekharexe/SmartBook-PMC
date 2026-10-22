package com.conceptglobal.pmc.utils;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.widget.Toast;
import com.conceptglobal.pmc.SyncResultReceiver;
import com.conceptglobal.pmc.interfaces.OnResultReceiver;
import com.conceptglobal.pmc.service.SyncDataService;

/* loaded from: classes.dex */
public class SendDataServiceUtil implements OnResultReceiver {
    private Context mContext;
    Handler mHandler;
    private SyncResultReceiver mReceiver;
    Runnable mRunnable = new Runnable() { // from class: com.conceptglobal.pmc.utils.SendDataServiceUtil.1
        @Override // java.lang.Runnable
        public void run() {
            Toast.makeText(SendDataServiceUtil.this.mContext.getApplicationContext(), SendDataServiceUtil.this.msg, 0).show();
        }
    };
    private String msg;

    public SendDataServiceUtil(Context context) {
        this.mContext = context;
        SyncResultReceiver syncResultReceiver = new SyncResultReceiver(new Handler());
        this.mReceiver = syncResultReceiver;
        syncResultReceiver.setReceiver(this);
    }

    public void startService() {
        Intent intent = new Intent(this.mContext, (Class<?>) SyncDataService.class);
        intent.putExtra("receiver", this.mReceiver);
        this.mContext.startService(intent);
    }

    @Override // com.conceptglobal.pmc.interfaces.OnResultReceiver
    public void onReceiveResult(int i, Bundle bundle) {
        if (i == 0) {
            bundle.getString("respMsg");
        } else {
            if (i != 1) {
                return;
            }
            notifyUser(null, bundle.getString("respMsg"));
        }
    }

    private void notifyUser(String str, String str2) {
        if (UtilDeclarations.isAppRunningInForeground(this.mContext.getApplicationContext())) {
            Handler handler = new Handler(Looper.getMainLooper());
            this.mHandler = handler;
            this.msg = str2;
            handler.post(this.mRunnable);
        }
    }
}

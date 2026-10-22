package com.conceptglobal.pmc.service;

import android.app.IntentService;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.ResultReceiver;
import android.util.Log;
import com.conceptglobal.pmc.database.DataBaseHandler;
import com.conceptglobal.pmc.utils.UtilDeclarations;

/* loaded from: classes.dex */
public class WeatherService extends IntentService {
    private static final String ACTION_FORECAST = "com.conceptglobal.pmc.service.action.Forecast";
    private static final String ACTION_TODAY = "com.conceptglobal.pmc.service.action.Today";
    private static final String EXTRA_PARAM1 = "com.conceptglobal.pmc.service.extra.PARAM1";
    private static final String EXTRA_PARAM2 = "com.conceptglobal.pmc.service.extra.PARAM2";
    private static final String TAG = "SyncDataService";
    private static DataBaseHandler dbInstance = DataBaseHandler.getInstance();
    Bundle bundle;
    private String callbackActivity;
    private ResultReceiver receiver;

    public WeatherService() {
        super("WeatherService");
        this.bundle = new Bundle();
    }

    public static void startActionToday(Context context, String str, String str2) {
        Intent intent = new Intent(context, (Class<?>) WeatherService.class);
        intent.setAction(ACTION_TODAY);
        intent.putExtra(EXTRA_PARAM1, str);
        intent.putExtra(EXTRA_PARAM2, str2);
        context.startService(intent);
    }

    public static void startActionForecast(Context context, String str, String str2) {
        Intent intent = new Intent(context, (Class<?>) WeatherService.class);
        intent.setAction(ACTION_FORECAST);
        intent.putExtra(EXTRA_PARAM1, str);
        intent.putExtra(EXTRA_PARAM2, str2);
        context.startService(intent);
    }

    @Override // android.app.IntentService
    protected void onHandleIntent(Intent intent) {
        ResultReceiver resultReceiver;
        synchronized (this) {
            Log.i(TAG, "onHandleIntent");
            if (DataBaseHandler.getInstance().checkDataBase()) {
                this.receiver = (ResultReceiver) intent.getParcelableExtra("receiver");
                if (intent.hasExtra("callbackActivity")) {
                    this.callbackActivity = intent.getStringExtra("callbackActivity");
                }
                Log.i(TAG, "callbackActivity--" + this.callbackActivity);
                if (UtilDeclarations.isOnline(getApplicationContext()) && (resultReceiver = this.receiver) != null) {
                    resultReceiver.send(0, Bundle.EMPTY);
                }
            }
        }
    }

    private void handleActionFoo(String str, String str2) {
        throw new UnsupportedOperationException("Not yet implemented");
    }

    private void handleActionBaz(String str, String str2) {
        throw new UnsupportedOperationException("Not yet implemented");
    }
}

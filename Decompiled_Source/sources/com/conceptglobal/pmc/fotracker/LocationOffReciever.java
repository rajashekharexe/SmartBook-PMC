package com.conceptglobal.pmc.fotracker;

import android.content.BroadcastReceiver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.database.sqlite.SQLiteDatabase;
import android.location.LocationManager;
import android.util.Log;
import android.widget.Toast;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.database.DataBaseHandler;
import com.conceptglobal.pmc.fotracker.util.UtilDeclarations;

/* loaded from: classes.dex */
public class LocationOffReciever extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Toast.makeText(context, "Location off....", 1).show();
        Log.i("test", "action ::::::::: " + intent.getAction());
        if (context.getSharedPreferences("MyPref", 0).getString("location", "").equalsIgnoreCase("Start day") && intent.getAction().equals("android.location.PROVIDERS_CHANGED")) {
            if (!((LocationManager) context.getSystemService("location")).isProviderEnabled("gps")) {
                saveErrorLog("Location settings - OFF");
            } else {
                saveErrorLog("Location settings - ON");
            }
        }
    }

    private void saveErrorLog(String str) {
        DataBaseHandler dataBaseHandler = DataBaseHandler.getInstance();
        try {
            try {
                SQLiteDatabase openDatabase = dataBaseHandler.openDatabase();
                if (openDatabase != null) {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("ErrorMessage", str);
                    contentValues.put("CreatedDate", UtilDeclarations.getDateTime());
                    contentValues.put("PDAID", Integer.valueOf(Integer.parseInt(ConstantsPMC.getInstance().getDeviceID())));
                    contentValues.put("ServerStatus", (Integer) 0);
                    openDatabase.insert("ErrorLogger", null, contentValues);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        } finally {
            dataBaseHandler.closeDatabase();
        }
    }

    private void startDataInsertedService(Context context) {
        Intent intent = new Intent(context, (Class<?>) DataInsertedService.class);
        DataInsertedService.IS_SERVICE_RUNNING = true;
        context.startService(intent);
    }
}

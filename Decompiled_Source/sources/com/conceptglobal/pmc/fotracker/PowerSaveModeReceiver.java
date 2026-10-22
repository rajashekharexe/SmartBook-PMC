package com.conceptglobal.pmc.fotracker;

import android.content.BroadcastReceiver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.database.sqlite.SQLiteDatabase;
import android.os.PowerManager;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.database.DataBaseHandler;
import com.conceptglobal.pmc.fotracker.util.UtilDeclarations;

/* loaded from: classes.dex */
public class PowerSaveModeReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (((PowerManager) context.getSystemService("power")).isPowerSaveMode()) {
            saveErrorLog("Power Save Mode - ON");
        } else {
            saveErrorLog("Power Save Mode - OFF");
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
}

package com.conceptglobal.pmc.fotracker.worker;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.SharedPreferences;
import android.database.sqlite.SQLiteDatabase;
import android.location.LocationManager;
import android.os.Build;
import android.os.IBinder;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.database.DataBaseHandler;
import com.conceptglobal.pmc.fotracker.LocationUpdatesService;
import com.conceptglobal.pmc.fotracker.database.GetDataFromDB;
import com.conceptglobal.pmc.fotracker.database.Queries;
import com.conceptglobal.pmc.fotracker.util.UtilDeclarations;

/* loaded from: classes.dex */
public class LocationWorker extends Worker {
    public static LocationUpdatesService mService;
    private Context context;
    private boolean mBound;
    private ServiceConnection mServiceConnection;

    public LocationWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        this.mBound = false;
        this.context = context;
    }

    @Override // androidx.work.Worker
    public ListenableWorker.Result doWork() {
        String str;
        SharedPreferences sharedPreferences = this.context.getSharedPreferences("MyPref", 4);
        ((LocationManager) this.context.getSystemService("location")).isProviderEnabled("gps");
        saveErrorLog("Periodic task started Location staus--" + ((LocationManager) this.context.getSystemService("location")).isProviderEnabled("gps"));
        if (sharedPreferences.getString("location", "").equalsIgnoreCase("Start day")) {
            saveErrorLog("Service Need to start");
            try {
                str = GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getLastLatLogTime());
            } catch (Exception unused) {
                str = null;
            }
            if (UtilDeclarations.getTimeDifferanceInMinutes(str, UtilDeclarations.getDateTime()) > 10) {
                if (!isServiceRunning(LocationUpdatesService.class.getName())) {
                    saveErrorLog("isServiceRunning false");
                    startServiceAgain();
                } else {
                    saveErrorLog("isServiceRunning true ");
                    this.context.stopService(new Intent(this.context, (Class<?>) LocationUpdatesService.class));
                    startServiceAgain();
                }
            }
        }
        return ListenableWorker.Result.success();
    }

    private void startServiceAgain() {
        if (Build.VERSION.SDK_INT >= 26) {
            this.context.startForegroundService(new Intent(this.context, (Class<?>) LocationUpdatesService.class));
        } else {
            this.context.startService(new Intent(this.context, (Class<?>) LocationUpdatesService.class));
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

    private boolean isServiceRunning(String str) {
        boolean z = false;
        for (ActivityManager.RunningServiceInfo runningServiceInfo : ((ActivityManager) this.context.getSystemService("activity")).getRunningServices(50)) {
            if (runningServiceInfo.service.getClassName().equals(str)) {
                boolean z2 = runningServiceInfo.foreground;
                z = true;
            }
        }
        return z;
    }

    private void initServiceConnection() {
        this.mServiceConnection = new ServiceConnection() { // from class: com.conceptglobal.pmc.fotracker.worker.LocationWorker.1
            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                LocationWorker.mService = ((LocationUpdatesService.LocalBinder) iBinder).getService();
                LocationWorker.this.mBound = true;
                LocationWorker.mService.requestLocationUpdates();
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
                LocationWorker.mService = null;
                LocationWorker.this.mBound = false;
            }
        };
    }
}

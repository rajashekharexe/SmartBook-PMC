package com.conceptglobal.pmc.fotracker;

import android.app.ActivityManager;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.ComponentName;
import android.content.ContentValues;
import android.content.Intent;
import android.content.ServiceConnection;
import android.database.sqlite.SQLiteDatabase;
import android.os.Binder;
import android.os.Build;
import android.os.Handler;
import android.os.IBinder;
import android.util.Log;
import androidx.core.app.NotificationCompat;
import com.conceptglobal.pmc.LoginActivity$$ExternalSyntheticApiModelOutline0;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.database.DataBaseHandler;
import com.conceptglobal.pmc.fotracker.LocationUpdatesService;
import com.conceptglobal.pmc.fotracker.database.GetDataFromDB;
import com.conceptglobal.pmc.fotracker.database.Queries;
import com.conceptglobal.pmc.fotracker.util.UtilDeclarations;
import com.conceptglobal.pmcdeepakfertilizers.R;
import java.text.SimpleDateFormat;
import java.util.Timer;
import java.util.TimerTask;

/* loaded from: classes.dex */
public class DataInsertedService extends Service {
    private static final String CHANNEL_ID = "111";
    public static boolean IS_SERVICE_RUNNING = false;
    public static final int firstDelay = 20000;
    public static LocationUpdatesService mService = null;
    public static final int notify = 180000;
    private ServiceConnection mServiceConnection;
    private TimeDisplay mTimeDisplay;
    private Handler mHandler = new Handler();
    private Timer mTimer = null;
    private int mDataCount = 0;
    private int errorCount = 0;
    Binder binder = new Binder();
    private boolean mBound = false;

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.binder;
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        if (IS_SERVICE_RUNNING) {
            startForegroundService();
            initServiceConnection();
            if (this.mTimer == null) {
                this.mTimer = new Timer();
                TimeDisplay timeDisplay = new TimeDisplay();
                this.mTimeDisplay = timeDisplay;
                this.mTimer.scheduleAtFixedRate(timeDisplay, 20000L, 180000L);
            }
        } else {
            Timer timer = this.mTimer;
            if (timer != null) {
                timer.cancel();
            }
            stopForeground(true);
            stopSelf();
        }
        return 1;
    }

    private void startForegroundService() {
        NotificationManager notificationManager = (NotificationManager) getSystemService("notification");
        if (Build.VERSION.SDK_INT >= 26) {
            notificationManager.createNotificationChannel(LoginActivity$$ExternalSyntheticApiModelOutline0.m(CHANNEL_ID, getString(R.string.app_name), 3));
        }
        Intent intent = new Intent(this, (Class<?>) MainActivity.class);
        intent.setFlags(268468224);
        NotificationCompat.Builder contentIntent = new NotificationCompat.Builder(this).setContentTitle("My Notification").setContentText("Notification text 123456").setSmallIcon(R.drawable.applogo).setContentIntent(PendingIntent.getActivity(this, 0, intent, (Build.VERSION.SDK_INT >= 23 ? 67108864 : 0) + 268435456));
        if (Build.VERSION.SDK_INT >= 26) {
            contentIntent.setChannelId(CHANNEL_ID);
        }
        startForeground(101, contentIntent.build());
    }

    class TimeDisplay extends TimerTask {
        TimeDisplay() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            DataInsertedService.this.mHandler.post(new Runnable() { // from class: com.conceptglobal.pmc.fotracker.DataInsertedService.TimeDisplay.1
                @Override // java.lang.Runnable
                public void run() {
                    Log.i("test", "Service is running ::::::::");
                    int trackerRecords = DataInsertedService.this.getTrackerRecords();
                    if (DataInsertedService.this.mDataCount >= trackerRecords) {
                        if (DataInsertedService.this.mDataCount >= trackerRecords) {
                            Log.i("test", "Tracker NOT working :::::::::::::");
                            DataInsertedService.this.saveErrorLog("Unable to fetch latitude and longitude");
                            DataInsertedService.this.mDataCount = DataInsertedService.this.getTrackerRecords();
                            return;
                        }
                        return;
                    }
                    Log.i("test", "Tracker working :::::::::::::");
                    DataInsertedService.this.mDataCount = trackerRecords;
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getTrackerRecords() {
        return GetDataFromDB.getInstance().getFoTrackerCount(Queries.getInstance().getFoTrackerCountQuery(new SimpleDateFormat("MM/dd/yyyy").format(UtilDeclarations.getDateToday())));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveErrorLog(String str) {
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

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        saveErrorLog("onDestroy  " + getClass().getSimpleName());
        Log.i("test", "OnDestroy :::::::::DataInserted::::::::");
        LocationUpdatesService locationUpdatesService = mService;
        if (locationUpdatesService != null) {
            locationUpdatesService.serviceIsRunningInForeground(this);
        }
        IS_SERVICE_RUNNING = false;
    }

    private void sendFailureBroadcasts() {
        sendBroadcast(new Intent("GPS_OFF"));
        sendBroadcast(new Intent("android.intent.action.BOOT_COMPLETED"));
        sendBroadcast(new Intent("android.net.conn.CONNECTIVITY_CHANGE"));
        sendBroadcast(new Intent("android.os.action.POWER_SAVE_MODE_CHANGED"));
    }

    private boolean isServiceRunning(String str) {
        boolean z = false;
        for (ActivityManager.RunningServiceInfo runningServiceInfo : ((ActivityManager) getSystemService("activity")).getRunningServices(50)) {
            if (runningServiceInfo.service.getClassName().equals(str)) {
                boolean z2 = runningServiceInfo.foreground;
                z = true;
            }
        }
        return z;
    }

    private void initServiceConnection() {
        this.mServiceConnection = new ServiceConnection() { // from class: com.conceptglobal.pmc.fotracker.DataInsertedService.1
            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                DataInsertedService.mService = ((LocationUpdatesService.LocalBinder) iBinder).getService();
                DataInsertedService.this.mBound = true;
                DataInsertedService.mService.requestLocationUpdates();
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
                DataInsertedService.mService = null;
                DataInsertedService.this.mBound = false;
            }
        };
    }
}

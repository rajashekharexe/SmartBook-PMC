package com.conceptglobal.pmc.fotracker;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.database.sqlite.SQLiteDatabase;
import android.location.Location;
import android.location.LocationManager;
import android.os.Binder;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.util.Log;
import android.widget.Toast;
import androidx.core.app.NotificationCompat;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.conceptglobal.pmc.LoginActivity$$ExternalSyntheticApiModelOutline0;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.database.DataBaseHandler;
import com.conceptglobal.pmc.fotracker.database.InsertDataIntoDB;
import com.conceptglobal.pmc.fotracker.util.IOnTimerCallback;
import com.conceptglobal.pmc.fotracker.util.UtilDeclarations;
import com.conceptglobal.pmcdeepakfertilizers.R;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.ResolvableApiException;
import com.google.android.gms.location.FusedLocationProviderClient;
import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.LocationCallback;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationResult;
import com.google.android.gms.location.LocationServices;
import com.google.android.gms.location.LocationSettingsRequest;
import com.google.android.gms.location.LocationSettingsResponse;
import com.google.android.gms.location.SettingsClient;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;

/* loaded from: classes.dex */
public class LocationUpdatesService extends Service {
    static final String ACTION_BROADCAST = "com.conceptglobal.fieldtrack.broadcast";
    private static final String CHANNEL_ID = "channel_01";
    static final String EXTRA_LOCATION = "com.conceptglobal.fieldtrack.location";
    private static final String EXTRA_STARTED_FROM_NOTIFICATION = "com.conceptglobal.fieldtrack.started_from_notification";
    private static final long FASTEST_UPDATE_INTERVAL_IN_MILLISECONDS = 60000;
    private static final int NOTIFICATION_ID = 12345678;
    private static final String PACKAGE_NAME = "com.conceptglobal.fieldtrack";
    public static final int REQUEST_CHECK_SETTINGS = 1;
    static final int REQUEST_LOCATION = 199;
    private static final String TAG = "LocationUpdatesService";
    private static final long UPDATE_INTERVAL_IN_MILLISECONDS = 60000;
    Handler handler;
    private Activity mActivity;
    private final IBinder mBinder = new LocalBinder();
    private boolean mChangingConfiguration = false;
    private FusedLocationProviderClient mFusedLocationClient;
    private GoogleApiClient mGoogleApiClient;
    private Location mLocation;
    private LocationCallback mLocationCallback;
    private LocationRequest mLocationRequest;
    private LocationSettingsRequest mLocationSettingsRequest;
    LocationUpdatesService mLocationUpdatesService;
    private NotificationManager mNotificationManager;
    IOnTimerCallback mOnTimerCallback;
    private Handler mServiceHandler;
    private SettingsClient mSettingsClient;

    public void setActivityReference(Activity activity) {
        this.mActivity = activity;
    }

    public void setTimerCallback(IOnTimerCallback iOnTimerCallback) {
        this.mOnTimerCallback = iOnTimerCallback;
    }

    @Override // android.app.Service
    public void onCreate() {
        String str = TAG;
        Log.i(str, "onCreate ::::::::::::: service");
        saveErrorLog("LocationUpdatesService started -- in onCreate() ");
        this.mFusedLocationClient = LocationServices.getFusedLocationProviderClient(this);
        this.mSettingsClient = LocationServices.getSettingsClient(this);
        this.mLocationCallback = new LocationCallback() { // from class: com.conceptglobal.pmc.fotracker.LocationUpdatesService.1
            @Override // com.google.android.gms.location.LocationCallback
            public void onLocationResult(LocationResult locationResult) {
                super.onLocationResult(locationResult);
                LocationUpdatesService.this.onNewLocation(locationResult.getLastLocation());
            }

            @Override // com.google.android.gms.location.LocationCallback
            public void onLocationAvailability(LocationAvailability locationAvailability) {
                super.onLocationAvailability(locationAvailability);
                if (locationAvailability.isLocationAvailable()) {
                    return;
                }
                LocationUpdatesService.this.saveErrorLog("Location not available. Location staus--" + ((LocationManager) LocationUpdatesService.this.getSystemService("location")).isProviderEnabled("gps"));
                LocationUpdatesService.this.notifyUser("Unable to fetch the location, please check gps settings");
            }
        };
        createLocationRequest();
        buildLocationSettingsRequest();
        getLastLocation();
        this.handler = new Handler();
        HandlerThread handlerThread = new HandlerThread(str);
        handlerThread.start();
        this.mServiceHandler = new Handler(handlerThread.getLooper());
        this.mNotificationManager = (NotificationManager) getSystemService("notification");
        if (Build.VERSION.SDK_INT >= 26) {
            this.mNotificationManager.createNotificationChannel(LoginActivity$$ExternalSyntheticApiModelOutline0.m(CHANNEL_ID, getString(R.string.app_name), 3));
        }
        if (getSharedPreferences("MyPref", 4).getString("location", "").equalsIgnoreCase("Start day")) {
            requestLocationUpdates2();
        }
        if (this.mActivity == null) {
            startForeground(NOTIFICATION_ID, getNotification());
        }
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        Log.i(TAG, "Service started ::::::::::::::");
        saveErrorLog("LocationUpdatesService  -- onNewLocation ");
        boolean z = false;
        if (intent != null) {
            saveErrorLog("LocationUpdatesService  -- onNewLocation not null");
            z = intent.getBooleanExtra(EXTRA_STARTED_FROM_NOTIFICATION, false);
        } else {
            saveErrorLog("LocationUpdatesService  -- onNewLocation  null");
        }
        if (!z) {
            return 1;
        }
        removeLocationUpdates();
        stopSelf();
        return 1;
    }

    @Override // android.app.Service, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.mChangingConfiguration = true;
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        Log.i(TAG, "in onBind() :::::::::::");
        stopForeground(true);
        this.mChangingConfiguration = false;
        return this.mBinder;
    }

    @Override // android.app.Service
    public void onRebind(Intent intent) {
        Log.i(TAG, "in onRebind() ::::::::::::");
        stopForeground(true);
        this.mChangingConfiguration = false;
        super.onRebind(intent);
    }

    @Override // android.app.Service
    public boolean onUnbind(Intent intent) {
        String str = TAG;
        Log.i(str, "Last client unbound from service:::::::::::");
        if (this.mChangingConfiguration || !Utils.requestingLocationUpdates(this)) {
            return true;
        }
        Log.i(str, "Starting foreground service");
        startForeground(NOTIFICATION_ID, getNotification());
        return true;
    }

    @Override // android.app.Service
    public void onDestroy() {
        Log.i("test", "onDestroy :::::::::::::::::");
        saveErrorLog("onDestroy  " + getClass().getSimpleName());
        if (!FOTrackerForeGroundServiceActivity.isTracking) {
            this.mServiceHandler.removeCallbacksAndMessages(null);
        } else {
            startForeground(NOTIFICATION_ID, getNotification());
        }
    }

    public void requestLocationUpdates() {
        Log.i(TAG, "Requesting location updates");
        saveErrorLog("LocationUpdatesService  -- requestLocationUpdates  ");
        Utils.setRequestingLocationUpdates(this, true);
        startService(new Intent(this, (Class<?>) LocationUpdatesService.class));
        try {
            if (this.mActivity == null) {
                this.mFusedLocationClient.requestLocationUpdates(this.mLocationRequest, this.mLocationCallback, Looper.myLooper());
            } else {
                this.mSettingsClient.checkLocationSettings(this.mLocationSettingsRequest).addOnSuccessListener(this.mActivity, new OnSuccessListener<LocationSettingsResponse>() { // from class: com.conceptglobal.pmc.fotracker.LocationUpdatesService.3
                    @Override // com.google.android.gms.tasks.OnSuccessListener
                    public void onSuccess(LocationSettingsResponse locationSettingsResponse) {
                        LocationUpdatesService.this.mFusedLocationClient.requestLocationUpdates(LocationUpdatesService.this.mLocationRequest, LocationUpdatesService.this.mLocationCallback, Looper.myLooper());
                    }
                }).addOnFailureListener(this.mActivity, new OnFailureListener() { // from class: com.conceptglobal.pmc.fotracker.LocationUpdatesService.2
                    @Override // com.google.android.gms.tasks.OnFailureListener
                    public void onFailure(Exception exc) {
                        int statusCode = ((ApiException) exc).getStatusCode();
                        if (statusCode != 6) {
                            if (statusCode != 8502) {
                                return;
                            }
                            Log.e(LocationUpdatesService.TAG, "Location settings are inadequate, and cannot be fixed here. Fix in Settings.");
                            Toast.makeText(LocationUpdatesService.this.mActivity, "Location settings are inadequate, and cannot be fixed here. Fix in Settings.", 1).show();
                            return;
                        }
                        Log.i(LocationUpdatesService.TAG, "Location settings are not satisfied. Attempting to upgrade location settings ");
                        try {
                            ((ResolvableApiException) exc).startResolutionForResult(LocationUpdatesService.this.mActivity, 1);
                        } catch (IntentSender.SendIntentException unused) {
                            Log.i(LocationUpdatesService.TAG, "PendingIntent unable to execute request.");
                        }
                    }
                });
            }
        } catch (SecurityException e) {
            Utils.setRequestingLocationUpdates(this, false);
            Log.e(TAG, "Lost location permission. Could not request updates. " + e);
        }
    }

    public void requestLocationUpdates2() {
        Log.i(TAG, "Requesting location updates2");
        saveErrorLog("LocationUpdatesService  -- requestLocationUpdates2  ");
        Utils.setRequestingLocationUpdates(this, true);
        try {
            if (this.mActivity == null) {
                this.mFusedLocationClient.requestLocationUpdates(this.mLocationRequest, this.mLocationCallback, Looper.myLooper());
            }
        } catch (SecurityException e) {
            Utils.setRequestingLocationUpdates(this, false);
            Log.e(TAG, "Lost location permission. Could not request updates. " + e);
        }
    }

    public void removeLocationUpdates() {
        Log.i(TAG, "Removing location updates");
        saveErrorLog("LocationUpdatesService  -- removeLocationUpdates  ");
        try {
            this.mFusedLocationClient.removeLocationUpdates(this.mLocationCallback);
            Utils.setRequestingLocationUpdates(this, false);
            stopSelf();
        } catch (SecurityException e) {
            Utils.setRequestingLocationUpdates(this, true);
            Log.e(TAG, "Lost location permission. Could not remove updates. " + e);
        }
    }

    private Notification getNotification() {
        Intent intent = new Intent(this, (Class<?>) LocationUpdatesService.class);
        String locationText = Utils.getLocationText(this.mLocation);
        intent.putExtra(EXTRA_STARTED_FROM_NOTIFICATION, true);
        PendingIntent.getService(this, 0, intent, (Build.VERSION.SDK_INT >= 23 ? 67108864 : 0) + 134217728);
        NotificationCompat.Builder when = new NotificationCompat.Builder(this).setContentIntent(PendingIntent.getActivity(this, 0, new Intent(this, (Class<?>) FOTrackerForeGroundServiceActivity.class), (Build.VERSION.SDK_INT < 23 ? 0 : 67108864) + 268435456)).setContentText(locationText).setContentTitle(Utils.getLocationTitle(this)).setOngoing(true).setPriority(1).setSmallIcon(R.drawable.applogo).setTicker(locationText).setWhen(System.currentTimeMillis());
        if (Build.VERSION.SDK_INT >= 26) {
            when.setChannelId(CHANNEL_ID);
        }
        return when.build();
    }

    private void getLastLocation() {
        try {
            this.mFusedLocationClient.getLastLocation().addOnCompleteListener(new com.google.android.gms.tasks.OnCompleteListener<Location>() { // from class: com.conceptglobal.pmc.fotracker.LocationUpdatesService.4
                @Override // com.google.android.gms.tasks.OnCompleteListener
                public void onComplete(Task<Location> task) {
                    if (!task.isSuccessful() || task.getResult() == null) {
                        Log.w(LocationUpdatesService.TAG, "Failed to get location.");
                    } else {
                        LocationUpdatesService.this.mLocation = task.getResult();
                    }
                }
            });
        } catch (SecurityException e) {
            Log.e(TAG, "Lost location permission." + e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onNewLocation(Location location) {
        Log.i(TAG, "New location::::: " + location);
        saveErrorLog("LocationUpdatesService  -- onNewLocation ");
        this.mLocation = location;
        Intent intent = new Intent(ACTION_BROADCAST);
        intent.putExtra(EXTRA_LOCATION, location);
        LocalBroadcastManager.getInstance(getApplicationContext()).sendBroadcast(intent);
        try {
            InsertDataIntoDB.insertCoordinates(Double.valueOf(location.getLatitude()), Double.valueOf(location.getLongitude()), getApplicationContext().getSharedPreferences("MyPref", 0).getString(ConstantsPMC.LOCATION_START_TIME, ""));
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (serviceIsRunningInForeground(this) || this.mActivity == null) {
            this.mNotificationManager.notify(NOTIFICATION_ID, getNotification());
        }
    }

    private void createLocationRequest() {
        saveErrorLog("LocationUpdatesService  -- createLocationRequest ");
        LocationRequest locationRequest = new LocationRequest();
        this.mLocationRequest = locationRequest;
        locationRequest.setInterval(com.conceptglobal.pmc.utils.ConstantDeclarations.REPEAT_TIME);
        this.mLocationRequest.setFastestInterval(com.conceptglobal.pmc.utils.ConstantDeclarations.REPEAT_TIME);
        this.mLocationRequest.setPriority(100);
    }

    public class LocalBinder extends Binder {
        public LocalBinder() {
        }

        public LocationUpdatesService getService() {
            return LocationUpdatesService.this;
        }
    }

    public boolean serviceIsRunningInForeground(Context context) {
        for (ActivityManager.RunningServiceInfo runningServiceInfo : ((ActivityManager) context.getSystemService("activity")).getRunningServices(Integer.MAX_VALUE)) {
            if (getClass().getName().equals(runningServiceInfo.service.getClassName()) && runningServiceInfo.foreground) {
                return true;
            }
        }
        return false;
    }

    private void buildLocationSettingsRequest() {
        LocationSettingsRequest.Builder builder = new LocationSettingsRequest.Builder();
        builder.addLocationRequest(this.mLocationRequest);
        this.mLocationSettingsRequest = builder.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyUser(String str) {
        Intent intent = new Intent("GPS_OFF");
        intent.putExtra(NotificationCompat.CATEGORY_MESSAGE, str);
        sendBroadcast(intent);
    }

    private void startTimer() {
        try {
            this.handler.postDelayed(new Runnable() { // from class: com.conceptglobal.pmc.fotracker.LocationUpdatesService.5
                @Override // java.lang.Runnable
                public void run() {
                    if (LocationUpdatesService.this.mLocation == null) {
                        LocationUpdatesService.this.mOnTimerCallback.onTimerTimeOut();
                    }
                }
            }, 30000L);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // android.app.Service
    public void onTaskRemoved(Intent intent) {
        Log.i("test", "onTaskRemoved :::::::::::::::::");
        sendBroadcast(new Intent("com.location.servicebroadcast"));
        super.onTaskRemoved(intent);
    }

    private void startDataInsertedService(Context context) {
        Intent intent = new Intent(context, (Class<?>) DataInsertedService.class);
        DataInsertedService.IS_SERVICE_RUNNING = true;
        startService(intent);
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
}

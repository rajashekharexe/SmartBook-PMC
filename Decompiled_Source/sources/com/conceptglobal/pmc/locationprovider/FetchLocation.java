package com.conceptglobal.pmc.locationprovider;

import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentSender;
import android.location.Location;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import android.os.Looper;
import android.telephony.PhoneStateListener;
import android.telephony.SignalStrength;
import android.telephony.TelephonyManager;
import android.util.Log;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.Toast;
import androidx.appcompat.app.AlertDialog;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.interfaces.OnLocationFoundListener;
import com.conceptglobal.pmc.model.LocationInfo;
import com.conceptglobal.pmc.utils.PLog;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import com.conceptglobal.pmcdeepakfertilizers.R;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.ResolvableApiException;
import com.google.android.gms.location.FusedLocationProviderClient;
import com.google.android.gms.location.LocationCallback;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationResult;
import com.google.android.gms.location.LocationServices;
import com.google.android.gms.location.LocationSettingsRequest;
import com.google.android.gms.location.LocationSettingsResponse;
import com.google.android.gms.location.SettingsClient;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import java.text.DateFormat;
import java.util.Date;
import java.util.Timer;

/* loaded from: classes.dex */
public class FetchLocation {
    private static final long FASTEST_UPDATE_INTERVAL_IN_MILLISECONDS = 5000;
    public static final int REQUEST_CHECK_SETTINGS = 1;
    public static final int REQUEST_PERMISSIONS_REQUEST_CODE = 34;
    private static final String TAG = "FetchLocation";
    private static final long UPDATE_INTERVAL_IN_MILLISECONDS = 10000;
    private Activity activity;
    private OnLocationFoundListener callback;
    private Dialog dialog;
    private String fromTag;
    Handler handler;
    private Location mCurrentLocation;
    private FusedLocationProviderClient mFusedLocationClient;
    private String mLastUpdateTime;
    private LocationCallback mLocationCallback;
    private LocationInfo mLocationInfo;
    private LocationRequest mLocationRequest;
    private LocationSettingsRequest mLocationSettingsRequest;
    private RelativeLayout mProgressBarLayout;
    private Boolean mRequestingLocationUpdates;
    private SettingsClient mSettingsClient;
    private MyPhoneStateListener myListener;
    private boolean showLoader;
    private TelephonyManager telManager;
    private Timer timer;

    public FetchLocation(Activity activity, boolean z, OnLocationFoundListener onLocationFoundListener, String str) {
        this.showLoader = false;
        this.fromTag = "";
        PLog.location("Location", "start-new", str, UtilDeclarations.getDateTime());
        this.callback = onLocationFoundListener;
        this.activity = activity;
        this.showLoader = z;
        this.fromTag = str;
        this.mRequestingLocationUpdates = true;
        this.mLastUpdateTime = "";
        this.mLocationInfo = new LocationInfo();
        this.handler = new Handler();
        this.mFusedLocationClient = LocationServices.getFusedLocationProviderClient(activity);
        this.mSettingsClient = LocationServices.getSettingsClient(activity);
        createLocationCallback();
        createLocationRequest();
        buildLocationSettingsRequest();
        startLocationUpdates();
        insertSignalStrengthDetails();
    }

    private void insertSignalStrengthDetails() {
        NetworkInfo activeNetworkInfo;
        if (UtilDeclarations.isOnline(this.activity.getApplicationContext()) && (activeNetworkInfo = ((ConnectivityManager) this.activity.getApplicationContext().getSystemService("connectivity")).getActiveNetworkInfo()) != null && activeNetworkInfo.isConnected()) {
            this.myListener = new MyPhoneStateListener();
            TelephonyManager telephonyManager = (TelephonyManager) this.activity.getApplicationContext().getSystemService("phone");
            this.telManager = telephonyManager;
            telephonyManager.listen(this.myListener, 256);
        }
    }

    private void createLocationRequest() {
        LocationRequest locationRequest = new LocationRequest();
        this.mLocationRequest = locationRequest;
        locationRequest.setInterval(10000L);
        this.mLocationRequest.setFastestInterval(FASTEST_UPDATE_INTERVAL_IN_MILLISECONDS);
        this.mLocationRequest.setPriority(100);
    }

    private void createLocationCallback() {
        this.mLocationCallback = new LocationCallback() { // from class: com.conceptglobal.pmc.locationprovider.FetchLocation.1
            @Override // com.google.android.gms.location.LocationCallback
            public void onLocationResult(LocationResult locationResult) {
                super.onLocationResult(locationResult);
                FetchLocation.this.mCurrentLocation = locationResult.getLastLocation();
                FetchLocation.this.mLastUpdateTime = DateFormat.getTimeInstance().format(new Date());
                FetchLocation.this.updateLocation();
            }
        };
    }

    private void buildLocationSettingsRequest() {
        LocationSettingsRequest.Builder builder = new LocationSettingsRequest.Builder();
        builder.addLocationRequest(this.mLocationRequest);
        this.mLocationSettingsRequest = builder.build();
    }

    protected void onActivityResult(int i, int i2, Intent intent) {
        if (i != 1) {
            return;
        }
        if (i2 == -1) {
            Log.i(TAG, "User agreed to make required location settings changes.");
        } else {
            if (i2 != 0) {
                return;
            }
            Log.i(TAG, "User chose not to make required location settings changes.");
            this.mRequestingLocationUpdates = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateLocation() {
        if (this.mCurrentLocation != null) {
            PLog.location("Location", "end-new", this.fromTag, UtilDeclarations.getDateTime());
            this.mLocationInfo.setLatitude(this.mCurrentLocation.getLatitude());
            this.mLocationInfo.setLongitude(this.mCurrentLocation.getLongitude());
            this.mLocationInfo.setAccuracy(this.mCurrentLocation.getAccuracy());
            this.mLocationInfo.setTimeUpdated(this.mCurrentLocation.getTime());
            if (this.showLoader) {
                Dialog dialog = this.dialog;
                if (dialog != null && dialog.isShowing()) {
                    this.callback.onLocationFound(this.mLocationInfo);
                    this.callback.onLocationFound(this.mCurrentLocation);
                }
            } else {
                this.callback.onLocationFound(this.mLocationInfo);
                this.callback.onLocationFound(this.mCurrentLocation);
            }
            stopLocationUpdates();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startTimer() {
        try {
            this.handler.postDelayed(new Runnable() { // from class: com.conceptglobal.pmc.locationprovider.FetchLocation.2
                @Override // java.lang.Runnable
                public void run() {
                    FetchLocation.this.stopLocationUpdates();
                    FetchLocation.this.callback.onTimerTimeOut();
                }
            }, ConstantsPMC.getInstance().getGpsTime());
        } catch (Exception e) {
            PLog.location("Location", e.getMessage(), "Timer", UtilDeclarations.getDateTime());
        }
    }

    private void startLocationUpdates() {
        if (this.mRequestingLocationUpdates.booleanValue()) {
            this.mSettingsClient.checkLocationSettings(this.mLocationSettingsRequest).addOnSuccessListener(this.activity, new OnSuccessListener<LocationSettingsResponse>() { // from class: com.conceptglobal.pmc.locationprovider.FetchLocation.4
                @Override // com.google.android.gms.tasks.OnSuccessListener
                public void onSuccess(LocationSettingsResponse locationSettingsResponse) {
                    Log.i(FetchLocation.TAG, "All location settings are satisfied.");
                    if (FetchLocation.this.showLoader) {
                        FetchLocation.this.showProgressBar();
                        try {
                            FetchLocation.this.startTimer();
                        } catch (Exception e) {
                            PLog.location("Location", e.getMessage(), "Timer", UtilDeclarations.getDateTime());
                        }
                    }
                    FetchLocation.this.mFusedLocationClient.requestLocationUpdates(FetchLocation.this.mLocationRequest, FetchLocation.this.mLocationCallback, Looper.myLooper());
                    FetchLocation.this.updateLocation();
                }
            }).addOnFailureListener(this.activity, new OnFailureListener() { // from class: com.conceptglobal.pmc.locationprovider.FetchLocation.3
                @Override // com.google.android.gms.tasks.OnFailureListener
                public void onFailure(Exception exc) {
                    int statusCode = ((ApiException) exc).getStatusCode();
                    if (statusCode == 6) {
                        Log.i(FetchLocation.TAG, "Location settings are not satisfied. Attempting to upgrade location settings ");
                        try {
                            ((ResolvableApiException) exc).startResolutionForResult(FetchLocation.this.activity, 1);
                            return;
                        } catch (IntentSender.SendIntentException unused) {
                            Log.i(FetchLocation.TAG, "PendingIntent unable to execute request.");
                            return;
                        }
                    }
                    if (statusCode != 8502) {
                        return;
                    }
                    Log.e(FetchLocation.TAG, "Location settings are inadequate, and cannot be fixed here. Fix in Settings.");
                    Toast.makeText(FetchLocation.this.activity.getBaseContext(), "Location settings are inadequate, and cannot be fixed here. Fix in Settings.", 1).show();
                    FetchLocation.this.mRequestingLocationUpdates = false;
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopLocationUpdates() {
        hideProgressBar();
        this.handler.removeCallbacksAndMessages(null);
        if (!this.mRequestingLocationUpdates.booleanValue()) {
            Log.d(TAG, "stopLocationUpdates: updates never requested, no-op.");
        } else {
            this.mFusedLocationClient.removeLocationUpdates(this.mLocationCallback).addOnCompleteListener(this.activity, new OnCompleteListener<Void>() { // from class: com.conceptglobal.pmc.locationprovider.FetchLocation.5
                @Override // com.google.android.gms.tasks.OnCompleteListener
                public void onComplete(Task<Void> task) {
                    FetchLocation.this.mRequestingLocationUpdates = false;
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showProgressBar() {
        try {
            AlertDialog.Builder builder = new AlertDialog.Builder(this.activity);
            RelativeLayout relativeLayout = (RelativeLayout) this.activity.getLayoutInflater().inflate(R.layout.progress_bar, (ViewGroup) null);
            this.mProgressBarLayout = relativeLayout;
            builder.setView(relativeLayout);
            builder.setCancelable(false);
            builder.setPositiveButton("Cancel", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.locationprovider.FetchLocation.6
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    if (dialogInterface != null && FetchLocation.this.activity != null && !FetchLocation.this.activity.isFinishing()) {
                        dialogInterface.dismiss();
                    }
                    FetchLocation.this.stopLocationUpdates();
                    PLog.location("Location", "Cancel", FetchLocation.this.fromTag, UtilDeclarations.getDateTime());
                }
            });
            this.dialog = builder.create();
            Activity activity = this.activity;
            if (activity == null || activity.isFinishing()) {
                return;
            }
            this.dialog.show();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void hideProgressBar() {
        if (this.dialog == null) {
            return;
        }
        this.activity.runOnUiThread(new Runnable() { // from class: com.conceptglobal.pmc.locationprovider.FetchLocation$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                FetchLocation.this.m198x5669640e();
            }
        });
    }

    /* renamed from: lambda$hideProgressBar$0$com-conceptglobal-pmc-locationprovider-FetchLocation, reason: not valid java name */
    /* synthetic */ void m198x5669640e() {
        try {
            if (!this.dialog.isShowing() || this.activity.isFinishing() || this.activity.isDestroyed()) {
                return;
            }
            this.dialog.dismiss();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private class MyPhoneStateListener extends PhoneStateListener {
        public int signalLevel;
        public int singalStenths;

        private MyPhoneStateListener() {
            this.singalStenths = 0;
            this.signalLevel = 0;
        }

        @Override // android.telephony.PhoneStateListener
        public void onSignalStrengthsChanged(SignalStrength signalStrength) {
            super.onSignalStrengthsChanged(signalStrength);
            this.singalStenths = signalStrength.getGsmSignalStrength();
            PLog.location("Location", "mGsmSignalStrength :" + signalStrength.getGsmSignalStrength(), FetchLocation.this.fromTag, UtilDeclarations.getDateTime());
            if (FetchLocation.this.telManager != null) {
                FetchLocation.this.telManager.listen(FetchLocation.this.myListener, 0);
            }
        }
    }
}

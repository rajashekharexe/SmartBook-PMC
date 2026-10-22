package com.conceptglobal.pmc.locationprovider;

import android.app.Activity;
import android.app.Dialog;
import android.content.Intent;
import android.content.IntentSender;
import android.location.Location;
import android.os.Handler;
import android.telephony.TelephonyManager;
import android.util.Log;
import android.widget.RelativeLayout;
import android.widget.Toast;
import com.conceptglobal.pmc.interfaces.OnLocationFoundListener;
import com.conceptglobal.pmc.model.LocationInfo;
import com.conceptglobal.pmc.utils.PLog;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.ResolvableApiException;
import com.google.android.gms.location.FusedLocationProviderClient;
import com.google.android.gms.location.LocationCallback;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationServices;
import com.google.android.gms.location.LocationSettingsRequest;
import com.google.android.gms.location.LocationSettingsResponse;
import com.google.android.gms.location.SettingsClient;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import java.util.Timer;

/* loaded from: classes.dex */
public class FetchLocationSettings {
    private static final long FASTEST_UPDATE_INTERVAL_IN_MILLISECONDS = 5000;
    public static final int REQUEST_CHECK_SETTINGS = 1;
    public static final int REQUEST_PERMISSIONS_REQUEST_CODE = 34;
    private static final String TAG = "FetchLocationSettings";
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
    private boolean showLoader;
    private TelephonyManager telManager;
    private Timer timer;

    public FetchLocationSettings(Activity activity, boolean z, OnLocationFoundListener onLocationFoundListener, String str) {
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
        createLocationRequest();
        buildLocationSettingsRequest();
        startLocationUpdates();
    }

    private void createLocationRequest() {
        LocationRequest locationRequest = new LocationRequest();
        this.mLocationRequest = locationRequest;
        locationRequest.setInterval(10000L);
        this.mLocationRequest.setFastestInterval(FASTEST_UPDATE_INTERVAL_IN_MILLISECONDS);
        this.mLocationRequest.setPriority(100);
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

    private void startLocationUpdates() {
        if (this.mRequestingLocationUpdates.booleanValue()) {
            this.mSettingsClient.checkLocationSettings(this.mLocationSettingsRequest).addOnSuccessListener(this.activity, new OnSuccessListener<LocationSettingsResponse>() { // from class: com.conceptglobal.pmc.locationprovider.FetchLocationSettings.2
                @Override // com.google.android.gms.tasks.OnSuccessListener
                public void onSuccess(LocationSettingsResponse locationSettingsResponse) {
                }
            }).addOnFailureListener(this.activity, new OnFailureListener() { // from class: com.conceptglobal.pmc.locationprovider.FetchLocationSettings.1
                @Override // com.google.android.gms.tasks.OnFailureListener
                public void onFailure(Exception exc) {
                    int statusCode = ((ApiException) exc).getStatusCode();
                    if (statusCode == 6) {
                        Log.i(FetchLocationSettings.TAG, "Location settings are not satisfied. Attempting to upgrade location settings ");
                        try {
                            ((ResolvableApiException) exc).startResolutionForResult(FetchLocationSettings.this.activity, 1);
                            return;
                        } catch (IntentSender.SendIntentException unused) {
                            Log.i(FetchLocationSettings.TAG, "PendingIntent unable to execute request.");
                            return;
                        }
                    }
                    if (statusCode != 8502) {
                        return;
                    }
                    Log.e(FetchLocationSettings.TAG, "Location settings are inadequate, and cannot be fixed here. Fix in Settings.");
                    Toast.makeText(FetchLocationSettings.this.activity.getBaseContext(), "Location settings are inadequate, and cannot be fixed here. Fix in Settings.", 1).show();
                    FetchLocationSettings.this.mRequestingLocationUpdates = false;
                }
            });
        }
    }
}

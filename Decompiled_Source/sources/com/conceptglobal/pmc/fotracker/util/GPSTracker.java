package com.conceptglobal.pmc.fotracker.util;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Service;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.location.Address;
import android.location.Geocoder;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
import androidx.core.app.ActivityCompat;
import java.io.IOException;
import java.util.List;
import java.util.Locale;

/* loaded from: classes.dex */
public class GPSTracker extends Service implements LocationListener {
    private static final long MIN_DISTANCE_CHANGE_FOR_UPDATES = 10;
    private static final long MIN_TIME_BW_UPDATES = 60000;
    private static String TAG = "com.conceptglobal.pmc.fotracker.util.GPSTracker";
    double latitude;
    Location location;
    protected LocationManager locationManager;
    double longitude;
    private final Context mContext;
    private String provider_info;
    boolean isGPSEnabled = false;
    boolean isNetworkEnabled = false;
    boolean canGetLocation = false;
    boolean isGPSTrackingEnabled = false;
    int geocoderMaxResults = 1;

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.location.LocationListener
    public void onLocationChanged(Location location) {
    }

    @Override // android.location.LocationListener
    public void onProviderDisabled(String str) {
    }

    @Override // android.location.LocationListener
    public void onProviderEnabled(String str) {
    }

    @Override // android.location.LocationListener
    public void onStatusChanged(String str, int i, Bundle bundle) {
    }

    public GPSTracker(Context context) {
        this.mContext = context;
        getLocation();
    }

    public Location getLocation() {
        try {
            LocationManager locationManager = (LocationManager) this.mContext.getSystemService("location");
            this.locationManager = locationManager;
            this.isGPSEnabled = locationManager.isProviderEnabled("gps");
            boolean isProviderEnabled = this.locationManager.isProviderEnabled("network");
            this.isNetworkEnabled = isProviderEnabled;
            if (this.isGPSEnabled || isProviderEnabled) {
                this.canGetLocation = true;
                if (isProviderEnabled) {
                    this.isGPSTrackingEnabled = true;
                    if (Build.VERSION.SDK_INT >= 23 && ActivityCompat.checkSelfPermission((Activity) this.mContext, "android.permission.ACCESS_FINE_LOCATION") != 0 && ActivityCompat.checkSelfPermission(this, "android.permission.ACCESS_COARSE_LOCATION") != 0) {
                        Log.i("test", "Permission not granted ::::::::::");
                        ActivityCompat.requestPermissions((Activity) this.mContext, new String[]{"android.permission.ACCESS_FINE_LOCATION", "android.permission.ACCESS_COARSE_LOCATION"}, 100);
                    }
                    this.locationManager.requestLocationUpdates("network", 60000L, 10.0f, this);
                    Log.d("Network", "Network");
                    LocationManager locationManager2 = this.locationManager;
                    if (locationManager2 != null) {
                        Location lastKnownLocation = locationManager2.getLastKnownLocation("network");
                        this.location = lastKnownLocation;
                        if (lastKnownLocation != null) {
                            this.latitude = lastKnownLocation.getLatitude();
                            this.longitude = this.location.getLongitude();
                        }
                    }
                }
                if (this.isGPSEnabled) {
                    this.isGPSTrackingEnabled = true;
                    if (this.location == null) {
                        this.locationManager.requestLocationUpdates("gps", 60000L, 10.0f, this);
                        Log.d("GPS Enabled", "GPS Enabled");
                        LocationManager locationManager3 = this.locationManager;
                        if (locationManager3 != null) {
                            Location lastKnownLocation2 = locationManager3.getLastKnownLocation("gps");
                            this.location = lastKnownLocation2;
                            if (lastKnownLocation2 != null) {
                                this.latitude = lastKnownLocation2.getLatitude();
                                this.longitude = this.location.getLongitude();
                            }
                        }
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return this.location;
    }

    public void updateGPSCoordinates() {
        Location location = this.location;
        if (location != null) {
            this.latitude = location.getLatitude();
            this.longitude = this.location.getLongitude();
        }
    }

    public double getLatitude() {
        Location location = this.location;
        if (location != null) {
            this.latitude = location.getLatitude();
        }
        return this.latitude;
    }

    public double getLongitude() {
        Location location = this.location;
        if (location != null) {
            this.longitude = location.getLongitude();
        }
        return this.longitude;
    }

    public boolean getIsGPSTrackingEnabled() {
        return this.isGPSTrackingEnabled;
    }

    public void stopUsingGPS() {
        LocationManager locationManager = this.locationManager;
        if (locationManager != null) {
            locationManager.removeUpdates(this);
        }
    }

    public void showSettingsAlert() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.mContext);
        builder.setTitle("Settings");
        builder.setMessage("Please enable permissions");
        builder.setPositiveButton("Settings", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fotracker.util.GPSTracker.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                GPSTracker.this.mContext.startActivity(new Intent("android.settings.LOCATION_SOURCE_SETTINGS"));
            }
        });
        builder.setNegativeButton("Cancel", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fotracker.util.GPSTracker.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.cancel();
            }
        });
        builder.show();
    }

    public List<Address> getGeocoderAddress(Context context) {
        if (this.location == null) {
            return null;
        }
        try {
            return new Geocoder(context, Locale.getDefault()).getFromLocation(this.latitude, this.longitude, this.geocoderMaxResults);
        } catch (IOException e) {
            Log.e(TAG, "Impossible to connect to Geocoder", e);
            return null;
        }
    }

    public String getAddressLine(Context context) {
        List<Address> geocoderAddress = getGeocoderAddress(context);
        if (geocoderAddress == null || geocoderAddress.size() <= 0) {
            return null;
        }
        return geocoderAddress.get(0).getAddressLine(0);
    }

    public String getLocality(Context context) {
        List<Address> geocoderAddress = getGeocoderAddress(context);
        if (geocoderAddress == null || geocoderAddress.size() <= 0) {
            return null;
        }
        return geocoderAddress.get(0).getLocality();
    }

    public String getPostalCode(Context context) {
        List<Address> geocoderAddress = getGeocoderAddress(context);
        if (geocoderAddress == null || geocoderAddress.size() <= 0) {
            return null;
        }
        return geocoderAddress.get(0).getPostalCode();
    }

    public String getCountryName(Context context) {
        List<Address> geocoderAddress = getGeocoderAddress(context);
        if (geocoderAddress == null || geocoderAddress.size() <= 0) {
            return null;
        }
        return geocoderAddress.get(0).getCountryName();
    }
}

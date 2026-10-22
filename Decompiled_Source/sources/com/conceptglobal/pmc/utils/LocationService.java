package com.conceptglobal.pmc.utils;

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
import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.interfaces.OnLocationFoundListener;
import com.conceptglobal.pmc.model.LocationInfoModel;
import com.conceptglobal.pmcdeepakfertilizers.R;
import java.io.IOException;
import java.util.List;
import java.util.Locale;

/* loaded from: classes.dex */
public class LocationService extends Service implements LocationListener {
    private static final long MIN_DISTANCE_CHANGE_FOR_UPDATES = 10;
    private static final long MIN_TIME_BW_UPDATES = 0;
    private static String TAG = "com.conceptglobal.pmc.utils.LocationService";
    double latitude;
    protected LocationManager locationManager;
    double longitude;
    private final Context mContext;
    private OnLocationFoundListener mOnLocationFoundListener;
    private String providerInfo;
    boolean isGPSEnabled = false;
    boolean isNetworkEnabled = false;
    boolean isGPSTrackingEnabled = false;
    int geocoderMaxResults = 1;
    private LocationInfoModel locationInfo = new LocationInfoModel();

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
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

    public LocationService(Context context) {
        this.mContext = context;
    }

    public void startListeningOnGpsOrNetworkProvider() {
        try {
            LocationManager locationManager = (LocationManager) this.mContext.getSystemService("location");
            this.locationManager = locationManager;
            this.isGPSEnabled = locationManager.isProviderEnabled("gps");
            boolean isProviderEnabled = this.locationManager.isProviderEnabled("network");
            this.isNetworkEnabled = isProviderEnabled;
            if (this.isGPSEnabled) {
                this.isGPSTrackingEnabled = true;
                this.providerInfo = "gps";
            } else if (isProviderEnabled) {
                this.isGPSTrackingEnabled = true;
                this.providerInfo = "network";
            }
            this.providerInfo.isEmpty();
        } catch (Exception e) {
            Log.e(TAG, "unable to connect to LocationManager", e);
        }
    }

    public double getLatitude() {
        LocationInfoModel locationInfoModel = this.locationInfo;
        if (locationInfoModel != null) {
            this.latitude = locationInfoModel.getLatitude();
        }
        return this.latitude;
    }

    public double getLongitude() {
        LocationInfoModel locationInfoModel = this.locationInfo;
        if (locationInfoModel != null) {
            this.longitude = locationInfoModel.getLongitude();
        }
        return this.longitude;
    }

    public boolean getIsGPSTrackingEnabled() {
        return this.isGPSTrackingEnabled;
    }

    public void stopListeningOnGpsOrNetworkProvider() {
        LocationManager locationManager = this.locationManager;
        if (locationManager != null) {
            locationManager.removeUpdates(this);
        }
    }

    public void showSettingsAlert(final Context context) {
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setIcon(R.drawable.ic_action_person);
        builder.setTitle(R.string.app_name);
        builder.setMessage(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_gpsOffPlsEnableGPSDialog()));
        builder.setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_settings()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.utils.LocationService.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                context.startActivity(new Intent("android.settings.LOCATION_SOURCE_SETTINGS"));
            }
        });
        builder.setNegativeButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_cancelDialogButtonText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.utils.LocationService.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.cancel();
            }
        });
        AlertDialog show = builder.show();
        if (UtilDeclarations.isTablet(context)) {
            UtilDeclarations.makeTabletDialogTextlarge(show);
        }
    }

    public List<Address> getGeocoderAddress(Context context) {
        if (this.locationInfo == null) {
            return null;
        }
        try {
            return new Geocoder(context, Locale.ENGLISH).getFromLocation(this.latitude, this.longitude, this.geocoderMaxResults);
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

    @Override // android.location.LocationListener
    public void onLocationChanged(Location location) {
        if (location != null) {
            this.locationInfo.setLatitude(location.getLatitude());
            this.locationInfo.setLongitude(location.getLongitude());
            try {
                this.mOnLocationFoundListener = (OnLocationFoundListener) this.mContext;
            } catch (Exception unused) {
            }
        }
    }
}

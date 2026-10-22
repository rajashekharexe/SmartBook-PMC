package com.conceptglobal.pmc.smartalerts.locationservice;

import android.content.Context;
import android.content.Intent;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.media.AudioManager;
import android.os.Build;
import android.os.Bundle;
import com.conceptglobal.pmc.database.InsertDataIntoDB;
import com.conceptglobal.pmc.fotracker.sync.SyncDataService;
import com.conceptglobal.pmc.smartalerts.model.LocationTrackerModel;
import com.conceptglobal.pmc.utils.ConstantDeclarations;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public class LocationTracker implements LocationListener {
    private final AudioManager audioManager;
    private Context context;
    private final LocationManager locationManager;
    private Location targetLocation;
    private double toleranceInMeters;
    private final AtomicBoolean isTrackingByLocation = new AtomicBoolean(false);
    private boolean vibrate = false;
    private Location previousLocation = null;

    @Override // android.location.LocationListener
    public void onProviderDisabled(String str) {
    }

    @Override // android.location.LocationListener
    public void onProviderEnabled(String str) {
    }

    @Override // android.location.LocationListener
    public void onStatusChanged(String str, int i, Bundle bundle) {
    }

    public LocationTracker(LocationManager locationManager, AudioManager audioManager, Context context) {
        if (locationManager == null) {
            throw new IllegalArgumentException("the LocationManager is null");
        }
        if (audioManager == null) {
            throw new IllegalArgumentException("the AudioManager is null");
        }
        this.locationManager = locationManager;
        this.audioManager = audioManager;
        this.context = context;
    }

    public Result startTrackingByLocation(double d, double d2, double d3) {
        String str = "network";
        InsertDataIntoDB.saveErrorLog("preparing location-based tracking");
        Location location = new Location("");
        this.targetLocation = location;
        location.setLatitude(d);
        this.targetLocation.setLongitude(d2);
        this.toleranceInMeters = d3;
        stopTrackingByLocation();
        if (this.isTrackingByLocation.compareAndSet(false, true)) {
            try {
                List<String> providers = this.locationManager.getProviders(true);
                if (!providers.contains("network")) {
                    if (providers.contains("fused") && Build.VERSION.SDK_INT >= 31) {
                        str = "fused";
                    } else {
                        str = "passive";
                    }
                }
                this.locationManager.requestLocationUpdates(str, ConstantDeclarations.REPEAT_TIME, 0.0f, this);
                InsertDataIntoDB.saveErrorLog("started location-based tracking");
                return Result.SUCCESS;
            } catch (SecurityException e) {
                InsertDataIntoDB.saveErrorLog(e.getMessage() + "NOT started location-based tracking, insufficient privileges detected");
                this.isTrackingByLocation.set(false);
                return Result.FAILURE_INSUFFICIENT_RIGHTS;
            }
        }
        return Result.FAILURE_ALREADY_RUNNING;
    }

    private void checkLocation(Location location) {
        Location location2 = this.previousLocation;
        Boolean valueOf = location2 == null ? null : Boolean.valueOf(isInRange(location2, "previous location"));
        boolean isInRange = isInRange(location, "current location");
        if (((valueOf == null || !valueOf.booleanValue()) && isInRange) || valueOf == null) {
            return;
        }
        valueOf.booleanValue();
    }

    private boolean isVibrationAllowed() {
        return this.audioManager.getRingerMode() != 0;
    }

    private boolean isInRange(Location location, String str) {
        return ((double) ((float) Math.floor((double) location.distanceTo(this.targetLocation)))) <= this.toleranceInMeters + ((double) location.getAccuracy());
    }

    public void stopTrackingByLocation() {
        this.locationManager.removeUpdates(this);
        if (this.isTrackingByLocation.compareAndSet(true, false)) {
            InsertDataIntoDB.saveErrorLog("stopped location-based tracking");
        }
    }

    @Override // android.location.LocationListener
    public void onLocationChanged(Location location) {
        if (location != null) {
            InsertDataIntoDB.saveErrorLog("location updated ");
            new Date(location.getTime());
            checkLocation(location);
            LocationTrackerModel locationTrackerModel = new LocationTrackerModel();
            locationTrackerModel.setDate(getDate());
            locationTrackerModel.setWorked(String.valueOf(location.getLatitude()));
            locationTrackerModel.setTarget(String.valueOf(location.getLongitude()));
            locationTrackerModel.setAddress(new SendLocation(location).getAddress(this.context, location.getLatitude(), location.getLongitude()));
            try {
                InsertDataIntoDB.insertCoordinates(Double.valueOf(location.getLatitude()), Double.valueOf(location.getLongitude()));
                this.context.startService(new Intent(this.context, (Class<?>) SyncDataService.class));
            } catch (Exception e) {
                e.printStackTrace();
            }
            this.previousLocation = location;
            return;
        }
        InsertDataIntoDB.saveErrorLog("last known location is null");
    }

    public String getDate() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss a");
        Calendar calendar = Calendar.getInstance();
        return DateFormat.getDateInstance(0).format(calendar.getTime()) + " - " + simpleDateFormat.format(calendar.getTime());
    }

    public Double getLatitude() {
        Location location = this.targetLocation;
        if (location == null) {
            return null;
        }
        return Double.valueOf(location.getLatitude());
    }

    public Double getLongitude() {
        Location location = this.targetLocation;
        if (location == null) {
            return null;
        }
        return Double.valueOf(location.getLongitude());
    }

    public Double getTolerance() {
        return Double.valueOf(this.toleranceInMeters);
    }

    public boolean shouldVibrate() {
        return this.vibrate;
    }
}

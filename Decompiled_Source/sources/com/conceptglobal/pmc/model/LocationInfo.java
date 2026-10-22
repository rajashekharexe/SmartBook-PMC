package com.conceptglobal.pmc.model;

import android.location.Location;
import androidx.core.os.EnvironmentCompat;
import java.io.Serializable;

/* loaded from: classes.dex */
public class LocationInfo implements Serializable {
    private static final long serialVersionUID = 1;
    private double latitude = 0.0d;
    private double longitude = 0.0d;
    private float accuracy = -1.0f;
    private long timeUpdated = 0;
    private String provider = EnvironmentCompat.MEDIA_UNKNOWN;
    private boolean isLocationInfoPopulated = false;

    public LocationInfo() {
    }

    public LocationInfo(Location location) {
        if (location != null) {
            setLatitude(location.getLatitude());
            setLongitude(location.getLongitude());
            setAccuracy(location.getAccuracy());
            setTimeUpdated(System.currentTimeMillis());
            setProvider(location.getProvider());
            setLocationInfoPopulated();
        }
    }

    public LocationInfo(LocationInfo locationInfo) {
        if (locationInfo != null) {
            setLatitude(locationInfo.getLatitude());
            setLongitude(locationInfo.getLongitude());
            setAccuracy(locationInfo.getAccuracy());
            setTimeUpdated(locationInfo.getTimeUpdated());
            setProvider(locationInfo.getProvider());
            setLocationInfoPopulated();
        }
    }

    public double getLatitude() {
        return this.latitude;
    }

    public void setLatitude(double d) {
        if (d < -90.0d || d > 90.0d) {
            this.latitude = 0.0d;
        } else {
            this.latitude = d;
        }
    }

    public double getLongitude() {
        return this.longitude;
    }

    public void setLongitude(double d) {
        if (d < -180.0d || d > 180.0d) {
            this.longitude = 0.0d;
        } else {
            this.longitude = d;
        }
    }

    public float getAccuracy() {
        return this.accuracy;
    }

    public void setAccuracy(float f) {
        if (f < 1.0f) {
            this.accuracy = -1.0f;
        } else {
            this.accuracy = f;
        }
    }

    public long getTimeUpdated() {
        return this.timeUpdated;
    }

    public void setTimeUpdated(long j) {
        this.timeUpdated = j;
    }

    public String getProvider() {
        return this.provider;
    }

    public void setProvider(String str) {
        if (str == null) {
            this.provider = EnvironmentCompat.MEDIA_UNKNOWN;
        } else {
            this.provider = str;
        }
    }

    public boolean isLocationInfoPopulated() {
        return this.isLocationInfoPopulated;
    }

    public void setLocationInfoPopulated(boolean z) {
        this.isLocationInfoPopulated = z;
    }

    private void setLocationInfoPopulated() {
        if (this.latitude == 0.0d || this.longitude == 0.0d || this.accuracy == -1.0f) {
            return;
        }
        this.isLocationInfoPopulated = true;
    }
}

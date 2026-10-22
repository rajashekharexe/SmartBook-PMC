package com.gani.mygpslocation;

import android.app.PendingIntent;
import android.location.Criteria;
import android.location.LocationManager;

/* loaded from: classes.dex */
public abstract class LocationUpdateRequester {
    protected LocationManager locationManager;

    public void requestLocationUpdates(long j, long j2, Criteria criteria, PendingIntent pendingIntent) {
    }

    public void requestPassiveLocationUpdates(long j, long j2, PendingIntent pendingIntent) {
    }

    protected LocationUpdateRequester(LocationManager locationManager) {
        this.locationManager = locationManager;
    }
}

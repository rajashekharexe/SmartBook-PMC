package com.gani.mygpslocation;

import android.app.PendingIntent;
import android.location.Criteria;
import android.location.LocationManager;

/* loaded from: classes.dex */
public class GingerbreadLocationUpdateRequester extends FroyoLocationUpdateRequester {
    public GingerbreadLocationUpdateRequester(LocationManager locationManager) {
        super(locationManager);
    }

    @Override // com.gani.mygpslocation.LocationUpdateRequester
    public void requestLocationUpdates(long j, long j2, Criteria criteria, PendingIntent pendingIntent) {
        this.locationManager.requestLocationUpdates(j, j2, criteria, pendingIntent);
    }
}

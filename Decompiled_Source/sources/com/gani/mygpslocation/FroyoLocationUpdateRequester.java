package com.gani.mygpslocation;

import android.app.PendingIntent;
import android.location.LocationManager;

/* loaded from: classes.dex */
public class FroyoLocationUpdateRequester extends LocationUpdateRequester {
    public FroyoLocationUpdateRequester(LocationManager locationManager) {
        super(locationManager);
    }

    @Override // com.gani.mygpslocation.LocationUpdateRequester
    public void requestPassiveLocationUpdates(long j, long j2, PendingIntent pendingIntent) {
        this.locationManager.requestLocationUpdates("passive", PlacesConstants.MAX_TIME, PlacesConstants.MAX_DISTANCE, pendingIntent);
    }
}

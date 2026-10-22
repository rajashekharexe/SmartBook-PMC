package com.gani.mygpslocation;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.location.Criteria;
import android.location.LocationManager;

/* loaded from: classes.dex */
public class LegacyLocationUpdateRequester extends LocationUpdateRequester {
    protected AlarmManager alarmManager;

    protected LegacyLocationUpdateRequester(LocationManager locationManager, AlarmManager alarmManager) {
        super(locationManager);
        this.alarmManager = alarmManager;
    }

    @Override // com.gani.mygpslocation.LocationUpdateRequester
    public void requestLocationUpdates(long j, long j2, Criteria criteria, PendingIntent pendingIntent) {
        String bestProvider = this.locationManager.getBestProvider(criteria, true);
        if (bestProvider != null) {
            this.locationManager.requestLocationUpdates(bestProvider, j, j2, pendingIntent);
        }
    }

    @Override // com.gani.mygpslocation.LocationUpdateRequester
    public void requestPassiveLocationUpdates(long j, long j2, PendingIntent pendingIntent) {
        this.alarmManager.setInexactRepeating(3, System.currentTimeMillis() + PlacesConstants.MAX_TIME, PlacesConstants.MAX_TIME, pendingIntent);
    }
}

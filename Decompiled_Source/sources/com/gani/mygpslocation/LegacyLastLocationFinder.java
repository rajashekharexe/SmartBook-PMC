package com.gani.mygpslocation;

import android.content.Context;
import android.location.Criteria;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.util.Log;
import java.util.Iterator;
import kotlin.jvm.internal.LongCompanionObject;

/* loaded from: classes.dex */
public class LegacyLastLocationFinder implements ILastLocationFinder {
    protected static String TAG = "PreGingerbreadLastLocationFinder";
    protected Context context;
    protected Criteria criteria;
    protected LocationListener locationListener;
    protected LocationManager locationManager;
    protected LocationListener singeUpdateListener = new LocationListener() { // from class: com.gani.mygpslocation.LegacyLastLocationFinder.1
        @Override // android.location.LocationListener
        public void onProviderDisabled(String str) {
        }

        @Override // android.location.LocationListener
        public void onProviderEnabled(String str) {
        }

        @Override // android.location.LocationListener
        public void onStatusChanged(String str, int i, Bundle bundle) {
        }

        @Override // android.location.LocationListener
        public void onLocationChanged(Location location) {
            Log.d(LegacyLastLocationFinder.TAG, "Single Location Update Received: " + location.getLatitude() + "," + location.getLongitude());
            if (LegacyLastLocationFinder.this.locationListener != null && location != null) {
                LegacyLastLocationFinder.this.locationListener.onLocationChanged(location);
            }
            LegacyLastLocationFinder.this.locationManager.removeUpdates(LegacyLastLocationFinder.this.singeUpdateListener);
        }
    };

    public LegacyLastLocationFinder(Context context) {
        this.locationManager = (LocationManager) context.getSystemService("location");
        Criteria criteria = new Criteria();
        this.criteria = criteria;
        criteria.setAccuracy(2);
        this.context = context;
    }

    @Override // com.gani.mygpslocation.ILastLocationFinder
    public Location getLastBestLocation(int i, long j) {
        String bestProvider;
        Iterator<String> it = this.locationManager.getAllProviders().iterator();
        Location location = null;
        long j2 = LongCompanionObject.MAX_VALUE;
        float f = Float.MAX_VALUE;
        while (it.hasNext()) {
            Location lastKnownLocation = this.locationManager.getLastKnownLocation(it.next());
            if (lastKnownLocation != null) {
                float accuracy = lastKnownLocation.getAccuracy();
                long time = lastKnownLocation.getTime();
                if (time < j && accuracy < f) {
                    location = lastKnownLocation;
                    f = accuracy;
                } else if (time > j && f == Float.MAX_VALUE && time < j2) {
                    location = lastKnownLocation;
                }
                j2 = time;
            }
        }
        if (this.locationListener != null && ((j2 > j || f > i) && (bestProvider = this.locationManager.getBestProvider(this.criteria, true)) != null)) {
            this.locationManager.requestLocationUpdates(bestProvider, 0L, 0.0f, this.singeUpdateListener, this.context.getMainLooper());
        }
        return location;
    }

    @Override // com.gani.mygpslocation.ILastLocationFinder
    public void setChangedLocationListener(LocationListener locationListener) {
        this.locationListener = locationListener;
    }

    @Override // com.gani.mygpslocation.ILastLocationFinder
    public void cancel() {
        this.locationManager.removeUpdates(this.singeUpdateListener);
    }
}

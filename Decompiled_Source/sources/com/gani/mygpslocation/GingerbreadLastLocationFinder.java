package com.gani.mygpslocation;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.location.Criteria;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import java.util.Iterator;

/* loaded from: classes.dex */
public class GingerbreadLastLocationFinder implements ILastLocationFinder {
    protected static String SINGLE_LOCATION_UPDATE_ACTION = "com.radioactiveyak.places.SINGLE_LOCATION_UPDATE_ACTION";
    protected static String TAG = "LastLocationFinder";
    protected Context context;
    protected Criteria criteria;
    protected LocationListener locationListener;
    protected LocationManager locationManager;
    protected PendingIntent singleUpatePI;
    protected BroadcastReceiver singleUpdateReceiver = new BroadcastReceiver() { // from class: com.gani.mygpslocation.GingerbreadLastLocationFinder.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            context.unregisterReceiver(GingerbreadLastLocationFinder.this.singleUpdateReceiver);
            Location location = (Location) intent.getExtras().get("location");
            if (GingerbreadLastLocationFinder.this.locationListener != null && location != null) {
                GingerbreadLastLocationFinder.this.locationListener.onLocationChanged(location);
            }
            GingerbreadLastLocationFinder.this.locationManager.removeUpdates(GingerbreadLastLocationFinder.this.singleUpatePI);
        }
    };

    public GingerbreadLastLocationFinder(Context context) {
        this.context = context;
        this.locationManager = (LocationManager) context.getSystemService("location");
        Criteria criteria = new Criteria();
        this.criteria = criteria;
        criteria.setAccuracy(1);
        this.singleUpatePI = PendingIntent.getBroadcast(context, 0, new Intent(SINGLE_LOCATION_UPDATE_ACTION), 134217728);
    }

    @Override // com.gani.mygpslocation.ILastLocationFinder
    public Location getLastBestLocation(int i, long j) {
        Iterator<String> it = this.locationManager.getAllProviders().iterator();
        Location location = null;
        long j2 = Long.MIN_VALUE;
        float f = Float.MAX_VALUE;
        while (it.hasNext()) {
            Location lastKnownLocation = this.locationManager.getLastKnownLocation(it.next());
            if (lastKnownLocation != null) {
                float accuracy = lastKnownLocation.getAccuracy();
                long time = lastKnownLocation.getTime();
                if (time > j && accuracy < f) {
                    location = lastKnownLocation;
                    f = accuracy;
                } else if (time < j && f == Float.MAX_VALUE && time > j2) {
                    location = lastKnownLocation;
                }
                j2 = time;
            }
        }
        if (this.locationListener != null && (j2 < j || f > i)) {
            this.context.registerReceiver(this.singleUpdateReceiver, new IntentFilter(SINGLE_LOCATION_UPDATE_ACTION));
            this.locationManager.requestSingleUpdate(this.criteria, this.singleUpatePI);
        }
        return location;
    }

    @Override // com.gani.mygpslocation.ILastLocationFinder
    public void setChangedLocationListener(LocationListener locationListener) {
        this.locationListener = locationListener;
    }

    @Override // com.gani.mygpslocation.ILastLocationFinder
    public void cancel() {
        this.locationManager.removeUpdates(this.singleUpatePI);
    }
}

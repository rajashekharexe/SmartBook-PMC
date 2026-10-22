package com.gani.mygpslocation;

import android.app.Activity;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.SystemClock;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;
import androidx.work.WorkRequest;
import com.conceptglobal.pmc.utils.ConstantDeclarations;
import com.conceptglobal.pmcdeepakfertilizers.R;

/* loaded from: classes.dex */
public class MyLocationActivity extends Activity {
    Button getlocation;
    Button getlocation2;
    protected ILastLocationFinder lastLocationFinder;
    String TAG = "Check Log";
    protected LocationListener oneShotLastLocationUpdateListener = new LocationListener() { // from class: com.gani.mygpslocation.MyLocationActivity.1
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
            if (location != null) {
                double latitude = location.getLatitude();
                double longitude = location.getLongitude();
                String str = "accuracy in " + location.getAccuracy() + "meters";
                Toast.makeText(MyLocationActivity.this.getApplicationContext(), String.valueOf(latitude) + " and " + longitude + " " + str + " at " + MyLocationActivity.this.age_minutes(location) + " minutes ago", 1).show();
            }
        }
    };

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.array.bg_toolbar);
        ILastLocationFinder lastLocationFinder = PlatformSpecificImplementationFactory.getLastLocationFinder(this);
        this.lastLocationFinder = lastLocationFinder;
        lastLocationFinder.setChangedLocationListener(this.oneShotLastLocationUpdateListener);
        this.getlocation = (Button) findViewById(R.color.Segment1);
        Button button = (Button) findViewById(R.color.Segment2);
        this.getlocation2 = button;
        button.setOnClickListener(new View.OnClickListener() { // from class: com.gani.mygpslocation.MyLocationActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Location bestLocation = MyLocationActivity.this.getBestLocation();
                if (bestLocation != null) {
                    double latitude = bestLocation.getLatitude();
                    double longitude = bestLocation.getLongitude();
                    String str = "accuracy in " + bestLocation.getAccuracy() + "meters";
                    Toast.makeText(MyLocationActivity.this.getApplicationContext(), String.valueOf(latitude) + " and " + longitude + " " + str + " at " + MyLocationActivity.this.age_minutes(bestLocation) + " minutes ago", 1).show();
                }
            }
        });
        this.getlocation.setOnClickListener(new View.OnClickListener() { // from class: com.gani.mygpslocation.MyLocationActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Location lastBestLocation = MyLocationActivity.this.lastLocationFinder.getLastBestLocation(PlacesConstants.MAX_DISTANCE, System.currentTimeMillis() - PlacesConstants.MAX_TIME);
                if (lastBestLocation != null) {
                    double latitude = lastBestLocation.getLatitude();
                    double longitude = lastBestLocation.getLongitude();
                    String str = "accuracy in " + lastBestLocation.getAccuracy() + "meters";
                    Toast.makeText(MyLocationActivity.this.getApplicationContext(), String.valueOf(latitude) + " and " + longitude + " " + str + " at " + MyLocationActivity.this.age_minutes(lastBestLocation) + " minutes ago", 1).show();
                }
            }
        });
    }

    public long age_minutes(Location location) {
        return age_ms(location) / ConstantDeclarations.REPEAT_TIME;
    }

    public long age_ms(Location location) {
        return age_ms_api_17(location);
    }

    private long age_ms_api_17(Location location) {
        return (SystemClock.elapsedRealtimeNanos() - location.getElapsedRealtimeNanos()) / 1000000;
    }

    private long age_ms_api_pre_17(Location location) {
        return System.currentTimeMillis() - location.getTime();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Location getBestLocation() {
        Location locationByProvider = getLocationByProvider("gps");
        Location locationByProvider2 = getLocationByProvider("network");
        if (locationByProvider == null) {
            Log.d(this.TAG, "No GPS Location available.");
            return locationByProvider2;
        }
        if (locationByProvider2 == null) {
            Log.d(this.TAG, "No Network Location available");
            return locationByProvider;
        }
        long currentTimeMillis = System.currentTimeMillis() - WorkRequest.MIN_BACKOFF_MILLIS;
        boolean z = locationByProvider.getTime() < currentTimeMillis;
        boolean z2 = locationByProvider2.getTime() < currentTimeMillis;
        if (!z) {
            Log.d(this.TAG, "Returning current GPS Location");
            return locationByProvider;
        }
        if (!z2) {
            Log.d(this.TAG, "GPS is old, Network is current, returning network");
            return locationByProvider2;
        }
        if (locationByProvider.getTime() > locationByProvider2.getTime()) {
            Log.d(this.TAG, "Both are old, returning gps(newer)");
            return locationByProvider;
        }
        Log.d(this.TAG, "Both are old, returning network(newer)");
        return locationByProvider2;
    }

    private Location getLocationByProvider(String str) {
        LocationManager locationManager = (LocationManager) getApplicationContext().getSystemService("location");
        try {
            if (locationManager.isProviderEnabled(str)) {
                return locationManager.getLastKnownLocation(str);
            }
        } catch (IllegalArgumentException unused) {
            Log.d(this.TAG, "Cannot acces Provider " + str);
        }
        return null;
    }
}

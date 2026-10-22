package com.conceptglobal.pmc.smartalerts.locationservice;

import android.app.Service;
import android.content.Intent;
import android.location.LocationManager;
import android.media.AudioManager;
import android.os.Build;
import android.os.IBinder;
import android.widget.Toast;
import com.conceptglobal.pmc.database.InsertDataIntoDB;
import com.conceptglobal.pmc.smartalerts.Basics;
import com.conceptglobal.pmcdeepakfertilizers.R;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public class LocationTrackerService extends Service {
    private static final AtomicBoolean isRunning = new AtomicBoolean(false);
    private static LocationTracker locationTracker;
    private Basics basics = null;
    private int startId;

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        InsertDataIntoDB.saveErrorLog("creating LocationTrackerService");
        this.basics = Basics.get(getApplicationContext());
        if (Build.VERSION.SDK_INT >= 26) {
            startForeground(1, this.basics.createNotificationTracking());
        }
        locationTracker = new LocationTracker((LocationManager) getSystemService("location"), (AudioManager) getSystemService("audio"), getApplicationContext());
        this.basics.safeCheckLocationBasedTracking();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        Result startTrackingByLocation;
        Boolean isNotificationActive;
        if (intent != null && intent.getExtras() != null) {
            Double valueOf = Double.valueOf(0.0d);
            Double valueOf2 = Double.valueOf(0.0d);
            Double valueOf3 = Double.valueOf(0.0d);
            if (isRunning.compareAndSet(false, true)) {
                this.startId = i2;
                LocationTracker locationTracker2 = locationTracker;
                valueOf.getClass();
                valueOf2.getClass();
                valueOf3.getClass();
                startTrackingByLocation = locationTracker2.startTrackingByLocation(0.0d, 0.0d, 0.0d);
                Toast.makeText(this, "service is started..", 0).show();
            } else if (!valueOf.equals(locationTracker.getLatitude()) || !valueOf2.equals(locationTracker.getLongitude()) || !valueOf3.equals(locationTracker.getTolerance())) {
                LocationTracker locationTracker3 = locationTracker;
                valueOf.getClass();
                valueOf2.getClass();
                valueOf3.getClass();
                startTrackingByLocation = locationTracker3.startTrackingByLocation(0.0d, 0.0d, 0.0d);
                Toast.makeText(this, "service is started..", 0).show();
            } else {
                InsertDataIntoDB.saveErrorLog("LocationTrackerService is already running and nothing has to be updated - no action");
                startTrackingByLocation = null;
            }
            if (startTrackingByLocation == Result.FAILURE_INSUFFICIENT_RIGHTS) {
                this.basics.showNotification(getString(R.string.trackingByLocationErrorText), getString(R.string.trackingByLocationErrorTitle), getString(R.string.trackingByLocationErrorSubtitle), this.basics.createMessagePendingIntent(getString(R.string.trackingByLocationErrorExplanation), 4), 4, false, null, null, null, null, null, null);
            } else if (startTrackingByLocation == Result.SUCCESS && ((isNotificationActive = this.basics.isNotificationActive(4)) == null || isNotificationActive.booleanValue())) {
                this.basics.removeNotification(4);
            }
        }
        return 1;
    }

    @Override // android.app.Service
    public void onDestroy() {
        InsertDataIntoDB.saveErrorLog("destroying LocationTrackerService");
        locationTracker.stopTrackingByLocation();
        isRunning.set(false);
        stopSelf();
    }
}

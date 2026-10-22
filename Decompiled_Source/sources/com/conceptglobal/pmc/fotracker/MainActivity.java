package com.conceptglobal.pmc.fotracker;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.content.SharedPreferences;
import android.location.Location;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.preference.PreferenceManager;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.ActivityCompat;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.conceptglobal.pmc.BuildConfig;
import com.conceptglobal.pmc.fotracker.LocationUpdatesService;
import com.conceptglobal.pmcdeepakfertilizers.R;
import com.google.android.material.snackbar.Snackbar;

/* loaded from: classes.dex */
public class MainActivity extends AppCompatActivity implements SharedPreferences.OnSharedPreferenceChangeListener {
    private static final int REQUEST_PERMISSIONS_REQUEST_CODE = 34;
    private static final String TAG = "MainActivity";
    private Button mRemoveLocationUpdatesButton;
    private Button mRequestLocationUpdatesButton;
    private MyReceiver myReceiver;
    private LocationUpdatesService mService = null;
    private boolean mBound = false;
    private final ServiceConnection mServiceConnection = new ServiceConnection() { // from class: com.conceptglobal.pmc.fotracker.MainActivity.1
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            MainActivity.this.mService = ((LocationUpdatesService.LocalBinder) iBinder).getService();
            MainActivity.this.mBound = true;
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            MainActivity.this.mService = null;
            MainActivity.this.mBound = false;
        }
    };

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.myReceiver = new MyReceiver();
        setContentView(R.layout.activity_main);
        if (!Utils.requestingLocationUpdates(this) || checkPermissions()) {
            return;
        }
        requestPermissions();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStart() {
        super.onStart();
        PreferenceManager.getDefaultSharedPreferences(this).registerOnSharedPreferenceChangeListener(this);
        this.mRequestLocationUpdatesButton = (Button) findViewById(R.id.request_location_updates_button);
        this.mRemoveLocationUpdatesButton = (Button) findViewById(R.id.remove_location_updates_button);
        this.mRequestLocationUpdatesButton.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fotracker.MainActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (!MainActivity.this.checkPermissions()) {
                    MainActivity.this.requestPermissions();
                } else {
                    MainActivity.this.mService.requestLocationUpdates();
                }
            }
        });
        this.mRemoveLocationUpdatesButton.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fotracker.MainActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MainActivity.this.mService.removeLocationUpdates();
            }
        });
        setButtonsState(Utils.requestingLocationUpdates(this));
        bindService(new Intent(this, (Class<?>) LocationUpdatesService.class), this.mServiceConnection, 1);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        LocalBroadcastManager.getInstance(this).registerReceiver(this.myReceiver, new IntentFilter("com.conceptglobal.fieldtrack.broadcast"));
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        LocalBroadcastManager.getInstance(this).unregisterReceiver(this.myReceiver);
        super.onPause();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        if (this.mBound) {
            unbindService(this.mServiceConnection);
            this.mBound = false;
        }
        PreferenceManager.getDefaultSharedPreferences(this).unregisterOnSharedPreferenceChangeListener(this);
        super.onStop();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean checkPermissions() {
        return ActivityCompat.checkSelfPermission(this, "android.permission.ACCESS_FINE_LOCATION") == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void requestPermissions() {
        if (ActivityCompat.shouldShowRequestPermissionRationale(this, "android.permission.ACCESS_FINE_LOCATION")) {
            Log.i(TAG, "Displaying permission rationale to provide additional context.");
            Snackbar.make(findViewById(R.id.activity_main), R.string.permission_rationale, -2).setAction(R.string.ok, new View.OnClickListener() { // from class: com.conceptglobal.pmc.fotracker.MainActivity.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    ActivityCompat.requestPermissions(MainActivity.this, new String[]{"android.permission.ACCESS_FINE_LOCATION"}, 34);
                }
            }).show();
        } else {
            Log.i(TAG, "Requesting permission");
            ActivityCompat.requestPermissions(this, new String[]{"android.permission.ACCESS_FINE_LOCATION"}, 34);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity, androidx.core.app.ActivityCompat.OnRequestPermissionsResultCallback
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        String str = TAG;
        Log.i(str, "onRequestPermissionResult");
        if (i == 34) {
            if (iArr.length <= 0) {
                Log.i(str, "User interaction was cancelled.");
            } else if (iArr[0] == 0) {
                this.mService.requestLocationUpdates();
            } else {
                setButtonsState(false);
                Snackbar.make(findViewById(R.id.activity_main), R.string.permission_denied_explanation, -2).setAction(R.string.settings, new View.OnClickListener() { // from class: com.conceptglobal.pmc.fotracker.MainActivity.5
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        Intent intent = new Intent();
                        intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
                        intent.setData(Uri.fromParts("package", BuildConfig.APPLICATION_ID, null));
                        intent.setFlags(268435456);
                        MainActivity.this.startActivity(intent);
                    }
                }).show();
            }
        }
    }

    private class MyReceiver extends BroadcastReceiver {
        private MyReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Location location = (Location) intent.getParcelableExtra("com.conceptglobal.fieldtrack.location");
            if (location != null) {
                Toast.makeText(MainActivity.this, Utils.getLocationText(location), 0).show();
            }
        }
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if (str.equals("requesting_locaction_updates")) {
            setButtonsState(sharedPreferences.getBoolean("requesting_locaction_updates", false));
        }
    }

    private void setButtonsState(boolean z) {
        if (z) {
            this.mRequestLocationUpdatesButton.setEnabled(false);
            this.mRemoveLocationUpdatesButton.setEnabled(true);
        } else {
            this.mRequestLocationUpdatesButton.setEnabled(true);
            this.mRemoveLocationUpdatesButton.setEnabled(false);
        }
    }
}

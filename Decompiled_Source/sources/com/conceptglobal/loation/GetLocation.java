package com.conceptglobal.loation;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.AsyncTask;
import android.os.Bundle;
import android.widget.TextView;

/* loaded from: classes.dex */
public class GetLocation {
    private Context context;
    private Double dbllatitude;
    private Double dbllongitude;
    private boolean hasLocation = false;
    private LocationControl locationControlTask;
    private LocationListener myLocationListener;
    private LocationManager myLocationManager;
    private TextView tvLatitude;
    private TextView tvLongitude;

    public GetLocation(Context context, TextView textView, TextView textView2) {
        this.context = context;
        this.tvLatitude = textView;
        this.tvLongitude = textView2;
    }

    public void startLocation(int i) {
        this.myLocationManager = (LocationManager) this.context.getSystemService("location");
        MyLocationListener myLocationListener = new MyLocationListener();
        this.myLocationListener = myLocationListener;
        LocationControl locationControl = null;
        if (i != 0) {
            if (i != 1) {
                return;
            }
            this.myLocationManager.requestLocationUpdates("network", 0L, 0.0f, myLocationListener);
            LocationControl locationControl2 = new LocationControl(this, locationControl);
            this.locationControlTask = locationControl2;
            locationControl2.execute(new Activity[0]);
            return;
        }
        this.myLocationManager.requestLocationUpdates("gps", 0L, 0.0f, myLocationListener);
        if (!this.myLocationManager.isProviderEnabled("gps")) {
            showGPSAlert();
            return;
        }
        LocationControl locationControl3 = new LocationControl(this, locationControl);
        this.locationControlTask = locationControl3;
        locationControl3.execute(new Activity[0]);
    }

    private class LocationControl extends AsyncTask<Activity, Void, Void> {
        private final ProgressDialog dialog;

        private LocationControl() {
            this.dialog = new ProgressDialog(GetLocation.this.context);
        }

        /* synthetic */ LocationControl(GetLocation getLocation, LocationControl locationControl) {
            this();
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            this.dialog.setMessage(Messages.MSG_GETTING_LOCATION);
            this.dialog.setButton(-1, "Cancel", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.loation.GetLocation.LocationControl.1
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    dialogInterface.dismiss();
                    GetLocation.this.hasLocation = true;
                }
            });
            this.dialog.show();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Void doInBackground(Activity... activityArr) {
            while (!GetLocation.this.hasLocation) {
                try {
                    Thread.sleep(1000L);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Void r5) {
            if (this.dialog.isShowing()) {
                this.dialog.dismiss();
            }
            if (GetLocation.this.dbllatitude != null && GetLocation.this.dbllongitude != null && GetLocation.this.dbllatitude.doubleValue() != 0.0d && GetLocation.this.dbllongitude.doubleValue() != 0.0d) {
                try {
                    GetLocation.this.tvLatitude.setText(Double.toString(GetLocation.this.dbllatitude.doubleValue()));
                    GetLocation.this.tvLongitude.setText(Double.toString(GetLocation.this.dbllongitude.doubleValue()));
                    return;
                } catch (Exception e) {
                    System.out.println("Error:::::::" + e.getMessage());
                    return;
                }
            }
            GetLocation.this.showRetryAlert();
        }
    }

    public class MyLocationListener implements LocationListener {
        @Override // android.location.LocationListener
        public void onProviderDisabled(String str) {
        }

        @Override // android.location.LocationListener
        public void onProviderEnabled(String str) {
        }

        @Override // android.location.LocationListener
        public void onStatusChanged(String str, int i, Bundle bundle) {
        }

        public MyLocationListener() {
        }

        @Override // android.location.LocationListener
        public void onLocationChanged(Location location) {
            if (location != null) {
                GetLocation.this.dbllatitude = Double.valueOf(location.getLatitude());
                GetLocation.this.dbllongitude = Double.valueOf(location.getLongitude());
                GetLocation.this.hasLocation = true;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showRetryAlert() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.context);
        builder.setMessage(Messages.ALERT_TRY_GET_LOCATION).setCancelable(false).setPositiveButton("OK", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.loation.GetLocation.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                GetLocation.this.hasLocation = false;
                GetLocation.this.locationControlTask = new LocationControl(GetLocation.this, null);
                GetLocation.this.locationControlTask.execute(new Activity[0]);
            }
        });
        builder.setNegativeButton("Cancel", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.loation.GetLocation.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
            }
        });
        builder.show();
    }

    private void showGPSAlert() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.context);
        builder.setMessage(Messages.ALERT_GPS_NOT_ON).setCancelable(false).setPositiveButton("OK", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.loation.GetLocation.3
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                GetLocation.this.context.startActivity(new Intent("android.settings.LOCATION_SOURCE_SETTINGS"));
            }
        });
        builder.show();
    }
}

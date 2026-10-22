package com.conceptglobal.pmc.utils;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.util.Log;
import androidx.core.app.ActivityCompat;

/* loaded from: classes.dex */
public class LocationUtils {
    public static final String GPS_NOT_TURNED_ON = "GPSNotTurnedOn";
    public static final String PERMISSION_DENIED = "PermissionDenied";
    public static final int TIMEOUT_MILLIS = 20000;

    public boolean checkPermissions(Activity activity) {
        return ActivityCompat.checkSelfPermission(activity, "android.permission.ACCESS_FINE_LOCATION") == 0;
    }

    public void requestPermissions(Activity activity) {
        if (ActivityCompat.shouldShowRequestPermissionRationale(activity, "android.permission.ACCESS_FINE_LOCATION")) {
            Log.i("" + activity.getLocalClassName(), "Displaying permission rationale to provide additional context.");
        } else {
            Log.i("" + activity.getLocalClassName(), "Requesting permission");
            ActivityCompat.requestPermissions(activity, new String[]{"android.permission.ACCESS_FINE_LOCATION"}, 34);
        }
    }

    public void showDialog(Activity activity, String str) {
        String str2;
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        if (str.equals(PERMISSION_DENIED)) {
            str2 = "Permission is denied, please grant permissions from settings";
        } else {
            str2 = str.equals(GPS_NOT_TURNED_ON) ? "Please turn on GPS to get location" : null;
        }
        builder.setMessage(str2).setCancelable(false).setPositiveButton("OK", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.utils.LocationUtils.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        });
        if (activity == null || activity.isFinishing()) {
            return;
        }
        builder.show();
    }
}

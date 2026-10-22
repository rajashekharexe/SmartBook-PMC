package com.conceptglobal.pmc.fotracker.util;

import android.app.Activity;
import android.util.Log;
import android.widget.Toast;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class RuntimePermissions {
    public static final int CAMERA_PERMISSION_REQUEST_CODE = 3;
    public static final int EXTERNAL_STORAGE_PERMISSION_REQUEST_CODE = 2;
    public static final int GEOLOCATION_PERMISSION_REQUEST_CODE = 4;
    public static final int GET_TASKS_REQUEST_CODE = 6;
    public static final int READ_PHONE_STATE_REQUEST_CODE = 5;
    public static final int RECORD_PERMISSION_REQUEST_CODE = 1;
    public static final int REQUEST_ID_MULTIPLE_PERMISSIONS = 7;
    Activity activity;

    public RuntimePermissions(Activity activity) {
        this.activity = activity;
    }

    public boolean checkPermissionForRecord() {
        return ContextCompat.checkSelfPermission(this.activity, "android.permission.RECORD_AUDIO") == 0;
    }

    public boolean checkPermissionForCamera() {
        return ContextCompat.checkSelfPermission(this.activity, "android.permission.CAMERA") == 0;
    }

    public void requestPermissionForRecord() {
        if (ActivityCompat.shouldShowRequestPermissionRationale(this.activity, "android.permission.RECORD_AUDIO")) {
            Toast.makeText(this.activity, "Microphone permission needed for recording. Please allow in App Settings for additional functionality.", 1).show();
        } else {
            ActivityCompat.requestPermissions(this.activity, new String[]{"android.permission.RECORD_AUDIO"}, 1);
        }
    }

    public void requestPermissionForCamera() {
        if (ActivityCompat.shouldShowRequestPermissionRationale(this.activity, "android.permission.CAMERA")) {
            Toast.makeText(this.activity, "Camera permission needed. Please click on allow to access camera.", 1).show();
        } else {
            ActivityCompat.requestPermissions(this.activity, new String[]{"android.permission.CAMERA"}, 3);
        }
    }

    public boolean checkPermissionForGeoLocation() {
        return ContextCompat.checkSelfPermission(this.activity, "android.permission.ACCESS_FINE_LOCATION") == 0;
    }

    public boolean checkPermissionForPhoneCall() {
        return ContextCompat.checkSelfPermission(this.activity, "android.permission.CALL_PHONE") == 0;
    }

    public void requestPermissionForGeoLocation() {
        if (ActivityCompat.shouldShowRequestPermissionRationale(this.activity, "android.permission.ACCESS_FINE_LOCATION")) {
            Toast.makeText(this.activity, "Location access is required. Please click on allow to access GeoLocation.", 1).show();
        } else {
            ActivityCompat.requestPermissions(this.activity, new String[]{"android.permission.ACCESS_FINE_LOCATION"}, 4);
        }
    }

    public boolean checkPermissions(String[] strArr) {
        Log.i("SplshScreen", "--Runtime permissions checking---");
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            if (ContextCompat.checkSelfPermission(this.activity, str) != 0) {
                arrayList.add(str);
            }
        }
        if (!arrayList.isEmpty()) {
            ActivityCompat.requestPermissions(this.activity, (String[]) arrayList.toArray(new String[arrayList.size()]), 7);
            return false;
        }
        Log.i("SplshScreen", "--Runtime permissions completed---");
        return true;
    }

    public void requestPermissionForPhoneState() {
        if (ActivityCompat.shouldShowRequestPermissionRationale(this.activity, "android.permission.READ_PHONE_STATE")) {
            Toast.makeText(this.activity, "Read phone state permission needed. Please click on allow to access phone state.", 1).show();
        } else {
            ActivityCompat.requestPermissions(this.activity, new String[]{"android.permission.READ_PHONE_STATE"}, 5);
        }
    }

    public boolean checkPermissionForPhoneState() {
        return ContextCompat.checkSelfPermission(this.activity, "android.permission.READ_PHONE_STATE") == 0;
    }

    public boolean checkPermissionForGetTasks() {
        return ContextCompat.checkSelfPermission(this.activity, "android.permission.GET_TASKS") == 0;
    }

    public void requestPermissionForGetTasks() {
        if (ActivityCompat.shouldShowRequestPermissionRationale(this.activity, "android.permission.GET_TASKS")) {
            Toast.makeText(this.activity, "Microphone permission needed for recording. Please allow in App Settings for additional functionality.", 1).show();
        } else {
            ActivityCompat.requestPermissions(this.activity, new String[]{"android.permission.GET_TASKS"}, 6);
        }
    }
}

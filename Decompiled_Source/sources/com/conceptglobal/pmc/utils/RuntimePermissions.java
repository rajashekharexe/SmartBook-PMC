package com.conceptglobal.pmc.utils;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Build;
import android.util.Log;
import android.widget.Toast;
import androidx.appcompat.app.AlertDialog;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import com.conceptglobal.pmcdeepakfertilizers.R;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* loaded from: classes.dex */
public class RuntimePermissions {
    public static final int CAMERA_PERMISSION_REQUEST_CODE = 3;
    public static final int EXTERNAL_STORAGE_PERMISSION_REQUEST_CODE = 2;
    public static final int GEOLOCATION_PERMISSION_REQUEST_CODE = 4;
    public static final int GET_TASKS_REQUEST_CODE = 6;
    public static final int MISSING_PRIVILEGE_ACCESS_LOCATION_FOR_CURRENT_LOCATION_ID = 8;
    public static final int MISSING_PRIVILEGE_ACCESS_LOCATION_ID = 4;
    public static final int MISSING_PRIVILEGE_ACCESS_LOCATION_IN_BACKGROUND_ID = 5;
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

    public boolean checkPermissionForExternalStorage() {
        return ContextCompat.checkSelfPermission(this.activity, "android.permission.WRITE_EXTERNAL_STORAGE") == 0;
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

    public void requestPermissionForExternalStorage() {
        if (ActivityCompat.shouldShowRequestPermissionRationale(this.activity, "android.permission.WRITE_EXTERNAL_STORAGE")) {
            Toast.makeText(this.activity, "External Storage permission needed. Please click on allow to access save data.", 1).show();
        } else {
            ActivityCompat.requestPermissions(this.activity, new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"}, 2);
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

    public static Set<String> missingPermissionsForTracking(Context context) {
        HashSet hashSet = new HashSet();
        List asList = Arrays.asList("android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION");
        Iterator it = asList.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            if (ActivityCompat.checkSelfPermission(context, (String) it.next()) != 0) {
                hashSet.addAll(asList);
                break;
            }
        }
        if (Build.VERSION.SDK_INT == 29) {
            addPermissionIfNotGranted("android.permission.ACCESS_BACKGROUND_LOCATION", hashSet, context);
        }
        if (Build.VERSION.SDK_INT >= 28) {
            addPermissionIfNotGranted("android.permission.FOREGROUND_SERVICE", hashSet, context);
        }
        return hashSet;
    }

    public static boolean isBackgroundPermissionMissing(Context context) {
        return Build.VERSION.SDK_INT >= 29 && ActivityCompat.checkSelfPermission(context, "android.permission.ACCESS_BACKGROUND_LOCATION") != 0;
    }

    private static void addPermissionIfNotGranted(String str, Set<String> set, Context context) {
        if (ActivityCompat.checkSelfPermission(context, str) != 0) {
            set.add(str);
        }
    }

    public static List<String> notGrantedPermissions(String[] strArr, int[] iArr) {
        ArrayList arrayList = new ArrayList();
        if (strArr != null && iArr != null) {
            for (int i = 0; i < iArr.length; i++) {
                if (iArr[i] != 0) {
                    arrayList.add(strArr[i]);
                }
            }
        }
        return arrayList;
    }

    public static void askForLocationPermission(Activity activity, final Runnable runnable, final Runnable runnable2) {
        CharSequence backgroundPermissionOptionLabel;
        AlertDialog.Builder title = new AlertDialog.Builder(activity).setTitle(activity.getString(R.string.locationPermissionsRequestTitle));
        StringBuilder sb = new StringBuilder();
        sb.append(activity.getString(R.string.locationPermissionsRequestText));
        String str = "";
        sb.append(Build.VERSION.SDK_INT >= 29 ? activity.getString(R.string.locationPermissionsRequestTextSupplementForAPI29) : "");
        if (Build.VERSION.SDK_INT >= 30) {
            String string = activity.getString(R.string.locationPermissionsRequestTextSupplementForAPI30);
            backgroundPermissionOptionLabel = activity.getPackageManager().getBackgroundPermissionOptionLabel();
            str = String.format(string, backgroundPermissionOptionLabel);
        }
        sb.append(str);
        title.setMessage(sb.toString()).setNegativeButton(android.R.string.cancel, new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.utils.RuntimePermissions$$ExternalSyntheticLambda1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                runnable2.run();
            }
        }).setPositiveButton(android.R.string.ok, new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.utils.RuntimePermissions$$ExternalSyntheticLambda2
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                runnable.run();
            }
        }).create().show();
    }
}

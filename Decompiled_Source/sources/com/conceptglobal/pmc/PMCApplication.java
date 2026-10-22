package com.conceptglobal.pmc;

import android.app.Application;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import androidx.multidex.MultiDex;
import com.conceptglobal.imaterialdesign.app.ThemeManager;
import com.conceptglobal.pmc.promotions.utils.FileUtils;
import com.conceptglobal.pmc.smartalerts.Basics;
import com.evernote.android.job.JobManager;
import com.google.firebase.FirebaseApp;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class PMCApplication extends Application {
    private static final String CHANNEL_ID = "Fcm Test";
    private static final String CHANNEL_NAME = "Fcm Test";
    private static final String PROPERTY_ID = "UA-83907571-3";
    public static final String WeatherApiKEY = "6125571beb5e3ff4af5889504fbfa254";
    private static boolean activityVisible;
    private static Context mContext;
    private Basics basics;
    private boolean isHomeFragmentActive;
    public List<Map<String, String>> farmersList = new ArrayList();
    public ArrayList<Long> downloadFileIDs = new ArrayList<>();

    public enum TrackerName {
        APP_TRACKER,
        GLOBAL_TRACKER,
        ECOMMERCE_TRACKER
    }

    @Override // android.app.Application
    public void onCreate() {
        NotificationChannel notificationChannel;
        super.onCreate();
        mContext = getApplicationContext();
        FirebaseApp.initializeApp(this);
        NotificationChannel notificationChannel2 = null;
        ThemeManager.init(this, 2, 0, null);
        try {
            JobManager.create(this).addJobCreator(new PMCJobCreator());
            this.basics = new Basics(this);
            if (Build.VERSION.SDK_INT >= 26) {
                NotificationManager notificationManager = (NotificationManager) getSystemService("notification");
                LoginActivity$$ExternalSyntheticApiModelOutline0.m186m();
                notificationChannel2 = LoginActivity$$ExternalSyntheticApiModelOutline0.m("Fcm Test", "Fcm Test", 4);
                notificationChannel2.setDescription("Fcm Test");
                notificationManager.createNotificationChannel(notificationChannel2);
                LoginActivity$$ExternalSyntheticApiModelOutline0.m186m();
                notificationChannel = LoginActivity$$ExternalSyntheticApiModelOutline0.m("Fcm Test", "Fcm Test", 2);
                notificationChannel.setDescription("Fcm Test");
                notificationManager.createNotificationChannel(notificationChannel);
            } else {
                notificationChannel = null;
            }
            this.basics.setNotificationChannel(notificationChannel2);
            this.basics.setServiceNotificationChannel(notificationChannel);
        } catch (Throwable unused) {
        }
        FileUtils.createApplicationFolder();
    }

    @Override // android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(context);
        MultiDex.install(this);
    }

    public static Context getContext() {
        return mContext;
    }

    public PackageInfo getPackageInfo() {
        try {
            return getContext().getPackageManager().getPackageInfo(getContext().getPackageName(), 0);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }

    public boolean isHomeFragmentActive() {
        return this.isHomeFragmentActive;
    }

    public void setIsHomeFragmentActive(boolean z) {
        this.isHomeFragmentActive = z;
    }

    public static boolean isActivityVisible() {
        return activityVisible;
    }

    public static void activityResumed() {
        activityVisible = true;
    }

    public static void activityPaused() {
        activityVisible = false;
    }

    public Basics getBasics() {
        return this.basics;
    }
}

package com.conceptglobal.pmc.smartalerts;

import android.app.Activity;
import android.app.AlarmManager;
import android.app.Application;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.LocaleList;
import android.os.PowerManager;
import android.preference.PreferenceManager;
import android.service.notification.StatusBarNotification;
import android.widget.Toast;
import androidx.core.app.NotificationCompat;
import androidx.core.app.NotificationManagerCompat;
import com.conceptglobal.pmc.PMCApplication;
import com.conceptglobal.pmc.RegistrationActivity;
import com.conceptglobal.pmc.database.InsertDataIntoDB;
import com.conceptglobal.pmc.smartalerts.locationservice.LocationCallback;
import com.conceptglobal.pmc.smartalerts.locationservice.LocationTrackerService;
import com.conceptglobal.pmc.smartalerts.locationservice.MessageActivity;
import com.conceptglobal.pmc.smartalerts.locationservice.Watchdog;
import com.conceptglobal.pmc.utils.ConstantDeclarations;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import com.conceptglobal.pmcdeepakfertilizers.R;
import java.time.ZoneId;
import java.util.Calendar;
import java.util.List;
import java.util.Locale;

/* loaded from: classes.dex */
public class Basics {
    private Context context;
    private SharedPreferences preferences = null;
    private Uri documentTree = null;
    private NotificationChannel notificationChannel = null;
    private NotificationChannel serviceNotificationChannel = null;

    private void safeCheckPreferences() {
    }

    public void enableLocationBasedTracking() {
    }

    public void safeCheckPersistentNotification() {
    }

    public void safeCheckWidget() {
    }

    public Basics(Context context) {
        this.context = context;
        init();
        schedulePeriodicIntents();
    }

    private void init() {
        Context context = this.context;
        if (context == null) {
            throw new IllegalStateException("no context set");
        }
        this.preferences = PreferenceManager.getDefaultSharedPreferences(context);
    }

    public static Basics get(Context context) {
        if (context != null && (context.getApplicationContext() instanceof PMCApplication)) {
            return get((Application) context.getApplicationContext());
        }
        throw new IllegalStateException("no context given or of wrong type: " + context);
    }

    public static Basics get(Activity activity) {
        if (activity != null) {
            return get(activity.getApplication());
        }
        throw new IllegalStateException("no activity given");
    }

    public static Basics get(Application application) {
        if (application instanceof PMCApplication) {
            return ((PMCApplication) application).getBasics();
        }
        if (application == null) {
            throw new IllegalStateException("no application given");
        }
        throw new IllegalStateException("application was of type " + application.getClass());
    }

    public NotificationChannel getNotificationChannel() {
        return this.notificationChannel;
    }

    public void setNotificationChannel(NotificationChannel notificationChannel) {
        this.notificationChannel = notificationChannel;
    }

    public NotificationChannel getServiceNotificationChannel() {
        return this.serviceNotificationChannel;
    }

    public void setServiceNotificationChannel(NotificationChannel notificationChannel) {
        this.serviceNotificationChannel = notificationChannel;
    }

    public void schedulePeriodicIntents() {
        AlarmManager alarmManager = (AlarmManager) this.context.getSystemService(NotificationCompat.CATEGORY_ALARM);
        PendingIntent broadcast = PendingIntent.getBroadcast(this.context, 0, new Intent(this.context, (Class<?>) Watchdog.class), (Build.VERSION.SDK_INT >= 23 ? 67108864 : 0) + 268435456);
        Calendar calendar = Calendar.getInstance();
        calendar.add(12, 1);
        alarmManager.setInexactRepeating(0, calendar.getTimeInMillis(), ConstantDeclarations.REPEAT_TIME, broadcast);
    }

    public void periodicHook() {
        safeCheckPreferences();
        safeCheckLocationBasedTracking();
        safeCheckExternalControls();
    }

    public void safeCheckLocationBasedTracking() {
        try {
            checkLocationBasedTracking();
        } catch (Exception e) {
            e.getMessage();
        }
    }

    public void safeCheckExternalControls() {
        safeCheckPersistentNotification();
    }

    private void checkLocationBasedTracking() {
        startLocationTrackerService(0.0d, 0.0d, 0.0d);
    }

    private void startLocationTrackerService(double d, double d2, double d3) {
        try {
            Intent buildLocationTrackerServiceIntent = buildLocationTrackerServiceIntent(Double.valueOf(d), Double.valueOf(d2), Double.valueOf(d3));
            InsertDataIntoDB.saveErrorLog("try to start location-based tracking service");
            if (Build.VERSION.SDK_INT >= 26) {
                this.context.startForegroundService(buildLocationTrackerServiceIntent);
                Toast.makeText(this.context, "Foreground Service started..", 0).show();
            } else {
                Toast.makeText(this.context, " Service started..", 0).show();
                this.context.startService(buildLocationTrackerServiceIntent);
            }
            InsertDataIntoDB.saveErrorLog("location-based tracking service started");
        } catch (Exception e) {
            Toast.makeText(this.context, "Foreground Service not started..", 0).show();
            InsertDataIntoDB.saveErrorLog(e.getMessage() + " - could not start location-based tracking service");
        }
    }

    public void stopLocationTrackerService() {
        try {
            this.context.stopService(buildLocationTrackerServiceIntent(null, null, null));
            InsertDataIntoDB.saveErrorLog("location-based tracking service stopped");
        } catch (Exception e) {
            InsertDataIntoDB.saveErrorLog(e.getMessage() + "could not stop location-based tracking service");
        }
    }

    public void useCurrentLocationAsWorkplace(final Activity activity) {
        final LocationCallback locationCallback = new LocationCallback() { // from class: com.conceptglobal.pmc.smartalerts.Basics.1
            @Override // com.conceptglobal.pmc.smartalerts.locationservice.LocationCallback
            public void callback(double d, double d2, int i) {
            }

            @Override // com.conceptglobal.pmc.smartalerts.locationservice.LocationCallback
            public void error(Throwable th) {
                activity.startActivity(Basics.this.createMessageIntent(activity.getString(R.string.currentLocationAsWorkplaceError), null));
            }
        };
        try {
            final LocationManager locationManager = (LocationManager) activity.getSystemService("location");
            List<String> providers = locationManager.getProviders(true);
            String str = "passive";
            if (providers.contains("network")) {
                str = "network";
            } else if (providers.contains("fused") && Build.VERSION.SDK_INT >= 31) {
                str = "fused";
            } else if (providers.contains("gps")) {
                str = "gps";
            }
            locationManager.requestLocationUpdates(str, 0L, 0.0f, new LocationListener() { // from class: com.conceptglobal.pmc.smartalerts.Basics.2
                @Override // android.location.LocationListener
                public void onProviderEnabled(String str2) {
                }

                @Override // android.location.LocationListener
                public void onStatusChanged(String str2, int i, Bundle bundle) {
                }

                @Override // android.location.LocationListener
                public void onLocationChanged(Location location) {
                    locationCallback.callback(location.getLatitude(), location.getLongitude(), Math.round(location.getAccuracy()));
                    try {
                        locationManager.removeUpdates(this);
                    } catch (SecurityException unused) {
                        InsertDataIntoDB.saveErrorLog("could not remove updates because of missing rights");
                    }
                }

                @Override // android.location.LocationListener
                public void onProviderDisabled(String str2) {
                    locationCallback.error(new IllegalAccessException("provider disabled"));
                }
            });
        } catch (Throwable th) {
            locationCallback.error(th);
        }
    }

    public void showNotification(String str, String str2, String str3, PendingIntent pendingIntent, Integer num, boolean z, PendingIntent pendingIntent2, Integer num2, String str4, PendingIntent pendingIntent3, Integer num3, String str5) {
        NotificationCompat.Builder builder;
        String str6;
        String id;
        String id2;
        try {
            NotificationManagerCompat from = NotificationManagerCompat.from(this.context);
            if (Build.VERSION.SDK_INT >= 26) {
                Context context = this.context;
                id2 = this.notificationChannel.getId();
                builder = new NotificationCompat.Builder(context, id2);
            } else {
                builder = new NotificationCompat.Builder(this.context);
            }
            NotificationCompat.Builder ticker = builder.setContentTitle(str2).setContentText(str3).setContentIntent(pendingIntent).setSmallIcon(R.drawable.location_round).setTicker(str);
            if (z) {
                str6 = Build.VERSION.SDK_INT >= 23 ? NotificationCompat.CATEGORY_REMINDER : NotificationCompat.CATEGORY_PROGRESS;
            } else {
                str6 = NotificationCompat.CATEGORY_EVENT;
            }
            ticker.setCategory(str6).setOnlyAlertOnce(true).setOngoing(z).setPriority(0).setSortKey("A is first");
            if (Build.VERSION.SDK_INT >= 26) {
                id = getNotificationChannel().getId();
                builder.setChannelId(id);
            }
            if (pendingIntent2 != null && num2 != null) {
                builder.addAction(num2.intValue(), str4, pendingIntent2);
            }
            if (pendingIntent3 != null && num3 != null) {
                builder.addAction(num3.intValue(), str5, pendingIntent3);
            }
            from.notify(num.intValue(), builder.build());
        } catch (Exception e) {
            InsertDataIntoDB.saveErrorLog(e.getMessage() + "could not display/update notification");
        }
    }

    public Boolean isNotificationActive(int i) {
        StatusBarNotification[] activeNotifications;
        try {
            NotificationManager notificationManager = (NotificationManager) this.context.getSystemService("notification");
            if (Build.VERSION.SDK_INT < 23) {
                return null;
            }
            activeNotifications = notificationManager.getActiveNotifications();
            for (StatusBarNotification statusBarNotification : activeNotifications) {
                if (statusBarNotification.getId() == i) {
                    return Boolean.TRUE;
                }
            }
            return Boolean.FALSE;
        } catch (Exception e) {
            InsertDataIntoDB.saveErrorLog(e.getMessage() + "could not check for notification");
            return null;
        }
    }

    public void removeNotification(int i) {
        try {
            ((NotificationManager) this.context.getSystemService("notification")).cancel(i);
        } catch (Exception e) {
            InsertDataIntoDB.saveErrorLog(e.getMessage() + "could not remove notification {}");
        }
    }

    public Notification createNotificationTracking() {
        String id;
        Intent intent = new Intent(this.context, (Class<?>) RegistrationActivity.class);
        intent.addFlags(268435456);
        intent.setAction("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.LAUNCHER");
        Notification.Builder sortKey = new Notification.Builder(this.context).setContentTitle(this.context.getString(R.string.location_updated) + " : " + UtilDeclarations.getDateTime()).setContentIntent(PendingIntent.getActivity(this.context, 0, intent, (Build.VERSION.SDK_INT >= 23 ? 67108864 : 0) + 134217728)).setSmallIcon(R.drawable.pmc_app_icon).setOngoing(true).setPriority(-1).setSortKey("B is second");
        if (Build.VERSION.SDK_INT >= 26) {
            id = getServiceNotificationChannel().getId();
            sortKey.setChannelId(id);
        }
        return sortKey.build();
    }

    public Intent createMessageIntent(String str, Integer num) {
        Intent intent = new Intent(this.context, (Class<?>) MessageActivity.class);
        intent.putExtra("message", str);
        if (num != null) {
            intent.putExtra(ConstantDeclarations.ID_EXTRA_KEY, num.intValue());
        }
        return intent;
    }

    public PendingIntent createMessagePendingIntent(String str, Integer num) {
        return PendingIntent.getActivity(this.context, 0, createMessageIntent(str, num), (Build.VERSION.SDK_INT >= 23 ? 67108864 : 0) + 134217728);
    }

    public void disableWifiBasedTracking() {
        this.preferences.edit().commit();
    }

    public void setHomeTimeZone(ZoneId zoneId) {
        this.preferences.edit().commit();
    }

    private Intent buildLocationTrackerServiceIntent(Double d, Double d2, Double d3) {
        Intent intent = new Intent(this.context, (Class<?>) LocationTrackerService.class);
        intent.putExtra("latitude", d);
        return intent;
    }

    public SharedPreferences getPreferences() {
        return this.preferences;
    }

    public Context getContext() {
        return this.context;
    }

    public boolean isDevelopmentVersion() {
        String versionName = getVersionName();
        return versionName != null && versionName.contains("-SNAPSHOT");
    }

    public String getVersionName() {
        try {
            return this.context.getPackageManager().getPackageInfo(this.context.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException unused) {
            return "?";
        }
    }

    public boolean hasToRemoveAppFromBatteryOptimization() {
        boolean isIgnoringBatteryOptimizations;
        PowerManager powerManager = (PowerManager) this.context.getSystemService("power");
        if (Build.VERSION.SDK_INT >= 23) {
            isIgnoringBatteryOptimizations = powerManager.isIgnoringBatteryOptimizations(this.context.getPackageName());
            if (!isIgnoringBatteryOptimizations) {
                return true;
            }
        }
        return false;
    }

    public void removeAppFromBatteryOptimization() {
        boolean isIgnoringBatteryOptimizations;
        PowerManager powerManager = (PowerManager) this.context.getSystemService("power");
        if (Build.VERSION.SDK_INT >= 23) {
            isIgnoringBatteryOptimizations = powerManager.isIgnoringBatteryOptimizations(this.context.getPackageName());
            if (isIgnoringBatteryOptimizations) {
                return;
            }
            Intent intent = new Intent();
            intent.setFlags(268435456);
            intent.setData(Uri.fromParts("package", this.context.getPackageName(), null));
            intent.setAction("android.settings.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS");
            this.context.startActivity(intent);
        }
    }

    public Locale getLocale() {
        LocaleList locales;
        Locale locale;
        if (Build.VERSION.SDK_INT >= 24) {
            locales = this.context.getResources().getConfiguration().getLocales();
            locale = locales.get(0);
            return locale;
        }
        return this.context.getResources().getConfiguration().locale;
    }
}

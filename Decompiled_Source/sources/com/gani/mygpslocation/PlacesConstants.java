package com.gani.mygpslocation;

import androidx.work.PeriodicWorkRequest;
import androidx.work.WorkRequest;

/* loaded from: classes.dex */
public class PlacesConstants {
    public static int DEFAULT_RADIUS = 150;
    public static boolean DEVELOPER_MODE = true;
    public static int MAX_DISTANCE = 0;
    public static int PASSIVE_MAX_DISTANCE = 0;
    public static String PLACES_CHECKIN_OK_STATUS = "OK";
    public static String PLACES_CHECKIN_URI = "https://maps.googleapis.com/maps/api/place/check-in/xml?sensor=true";
    public static String PLACES_DETAIL_BASE_URI = "https://maps.googleapis.com/maps/api/place/details/xml?sensor=true&reference=";
    public static String PLACES_LIST_BASE_URI = "https://maps.googleapis.com/maps/api/place/search/xml?sensor=true";
    public static long MAX_TIME = WorkRequest.MIN_BACKOFF_MILLIS;
    public static long PASSIVE_MAX_TIME = WorkRequest.MIN_BACKOFF_MILLIS;
    public static boolean USE_GPS_WHEN_ACTIVITY_VISIBLE = true;
    public static boolean DISABLE_PASSIVE_LOCATION_WHEN_USER_EXIT = false;
    public static long MAX_DETAILS_UPDATE_LATENCY = 86400000;
    public static boolean PREFETCH_ON_WIFI_ONLY = false;
    public static boolean DISABLE_PREFETCH_ON_LOW_BATTERY = true;
    public static long CHECKIN_RETRY_INTERVAL = PeriodicWorkRequest.MIN_PERIODIC_INTERVAL_MILLIS;
    public static int PREFETCH_LIMIT = 5;
    public static String SHARED_PREFERENCE_FILE = "SHARED_PREFERENCE_FILE";
    public static String SP_KEY_FOLLOW_LOCATION_CHANGES = "SP_KEY_FOLLOW_LOCATION_CHANGES";
    public static String SP_KEY_LAST_LIST_UPDATE_TIME = "SP_KEY_LAST_LIST_UPDATE_TIME";
    public static String SP_KEY_LAST_LIST_UPDATE_LAT = "SP_KEY_LAST_LIST_UPDATE_LAT";
    public static String SP_KEY_LAST_LIST_UPDATE_LNG = "SP_KEY_LAST_LIST_UPDATE_LNG";
    public static String SP_KEY_LAST_CHECKIN_ID = "SP_KEY_LAST_CHECKIN_ID";
    public static String SP_KEY_LAST_CHECKIN_TIMESTAMP = "SP_KEY_LAST_CHECKIN_TIMESTAMP";
    public static String SP_KEY_RUN_ONCE = "SP_KEY_RUN_ONCE";
    public static String EXTRA_KEY_REFERENCE = "reference";
    public static String EXTRA_KEY_ID = "id";
    public static String EXTRA_KEY_LOCATION = "location";
    public static String EXTRA_KEY_RADIUS = "radius";
    public static String EXTRA_KEY_TIME_STAMP = "time_stamp";
    public static String EXTRA_KEY_FORCEREFRESH = "force_refresh";
    public static String EXTRA_KEY_IN_BACKGROUND = "EXTRA_KEY_IN_BACKGROUND";
    public static String ARGUMENTS_KEY_REFERENCE = "reference";
    public static String ARGUMENTS_KEY_ID = "id";
    public static String NEW_CHECKIN_ACTION = "com.radioactiveyak.places.NEW_CHECKIN_ACTION";
    public static String RETRY_QUEUED_CHECKINS_ACTION = "com.radioactiveyak.places.retry_queued_checkins";
    public static String ACTIVE_LOCATION_UPDATE_PROVIDER_DISABLED = "com.radioactiveyak.places.active_location_update_provider_disabled";
    public static boolean SUPPORTS_GINGERBREAD = true;
    public static boolean SUPPORTS_HONEYCOMB = true;
    public static boolean SUPPORTS_FROYO = true;
    public static boolean SUPPORTS_ECLAIR = true;
    public static String CONSTRUCTED_LOCATION_PROVIDER = "CONSTRUCTED_LOCATION_PROVIDER";
    public static int CHECKIN_NOTIFICATION = 0;

    static {
        int i = 150 / 2;
        MAX_DISTANCE = i;
        PASSIVE_MAX_DISTANCE = i;
    }
}

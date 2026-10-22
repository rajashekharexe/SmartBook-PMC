package com.conceptglobal.pmc.fotracker;

import android.content.Context;
import android.location.Location;
import android.preference.PreferenceManager;
import com.conceptglobal.pmcdeepakfertilizers.R;
import java.text.DateFormat;
import java.util.Date;

/* loaded from: classes.dex */
class Utils {
    static final String KEY_REQUESTING_LOCATION_UPDATES = "requesting_locaction_updates";

    Utils() {
    }

    static boolean requestingLocationUpdates(Context context) {
        return PreferenceManager.getDefaultSharedPreferences(context).getBoolean(KEY_REQUESTING_LOCATION_UPDATES, false);
    }

    static void setRequestingLocationUpdates(Context context, boolean z) {
        PreferenceManager.getDefaultSharedPreferences(context).edit().putBoolean(KEY_REQUESTING_LOCATION_UPDATES, z).apply();
    }

    static String getLocationText(Location location) {
        if (location == null) {
            return "Unknown location";
        }
        return "(" + location.getLatitude() + ", " + location.getLongitude() + ")";
    }

    static String getLocationTitle(Context context) {
        return context.getString(R.string.location_updated, DateFormat.getDateTimeInstance().format(new Date()));
    }
}

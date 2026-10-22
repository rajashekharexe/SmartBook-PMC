package com.gani.mygpslocation;

import android.content.Context;
import android.location.LocationManager;

/* loaded from: classes.dex */
public class PlatformSpecificImplementationFactory {
    public static ILastLocationFinder getLastLocationFinder(Context context) {
        return PlacesConstants.SUPPORTS_GINGERBREAD ? new GingerbreadLastLocationFinder(context) : new LegacyLastLocationFinder(context);
    }

    public static IStrictMode getStrictMode() {
        if (PlacesConstants.SUPPORTS_HONEYCOMB) {
            return new HoneycombStrictMode();
        }
        if (PlacesConstants.SUPPORTS_GINGERBREAD) {
            return new LegacyStrictMode();
        }
        return null;
    }

    public static LocationUpdateRequester getLocationUpdateRequester(LocationManager locationManager) {
        return PlacesConstants.SUPPORTS_GINGERBREAD ? new GingerbreadLocationUpdateRequester(locationManager) : new FroyoLocationUpdateRequester(locationManager);
    }

    public static SharedPreferenceSaver getSharedPreferenceSaver(Context context) {
        if (PlacesConstants.SUPPORTS_GINGERBREAD) {
            return new GingerbreadSharedPreferenceSaver(context);
        }
        if (PlacesConstants.SUPPORTS_FROYO) {
            return new FroyoSharedPreferenceSaver(context);
        }
        return new LegacySharedPreferenceSaver(context);
    }
}

package com.conceptglobal.pmc.smartalerts.locationservice;

import android.content.Context;
import android.location.Geocoder;
import android.location.Location;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Locale;

/* loaded from: classes.dex */
public class SendLocation {
    private final Location location;

    public SendLocation(Location location) {
        this.location = location;
    }

    public Location getLocation() {
        return this.location;
    }

    public String getAddress(Context context, double d, double d2) {
        try {
            return new Geocoder(context, Locale.getDefault()).getFromLocation(d, d2, 1).get(0).getAddressLine(0);
        } catch (Exception e) {
            e.getMessage();
            return null;
        }
    }

    public String getDate() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss a");
        Calendar calendar = Calendar.getInstance();
        return DateFormat.getDateInstance(0).format(calendar.getTime()) + " - " + simpleDateFormat.format(calendar.getTime());
    }
}

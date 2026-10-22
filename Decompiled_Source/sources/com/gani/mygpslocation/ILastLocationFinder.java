package com.gani.mygpslocation;

import android.location.Location;
import android.location.LocationListener;

/* loaded from: classes.dex */
public interface ILastLocationFinder {
    void cancel();

    Location getLastBestLocation(int i, long j);

    void setChangedLocationListener(LocationListener locationListener);
}

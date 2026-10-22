package com.conceptglobal.pmc.interfaces;

import android.location.Location;
import com.conceptglobal.pmc.model.LocationInfo;

/* loaded from: classes.dex */
public interface OnLocationFoundListener {
    void onLocationFound(Location location);

    void onLocationFound(LocationInfo locationInfo);

    void onTimerTimeOut();
}

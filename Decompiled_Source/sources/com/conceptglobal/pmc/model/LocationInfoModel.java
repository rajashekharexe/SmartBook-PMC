package com.conceptglobal.pmc.model;

import java.io.Serializable;

/* loaded from: classes.dex */
public class LocationInfoModel implements Serializable {
    private static final long serialVersionUID = 1;
    private double latitude;
    private double longitude;

    public double getLatitude() {
        return this.latitude;
    }

    public void setLatitude(double d) {
        this.latitude = d;
    }

    public double getLongitude() {
        return this.longitude;
    }

    public void setLongitude(double d) {
        this.longitude = d;
    }
}

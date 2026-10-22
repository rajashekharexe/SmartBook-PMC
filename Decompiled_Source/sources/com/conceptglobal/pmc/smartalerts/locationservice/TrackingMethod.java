package com.conceptglobal.pmc.smartalerts.locationservice;

import com.conceptglobal.pmcdeepakfertilizers.R;

/* loaded from: classes.dex */
public enum TrackingMethod {
    LOCATION(R.string.keyClockedInByLocation);

    private final int preferenceKeyId;

    TrackingMethod(int i) {
        this.preferenceKeyId = i;
    }

    public int getPreferenceKeyId() {
        return this.preferenceKeyId;
    }
}

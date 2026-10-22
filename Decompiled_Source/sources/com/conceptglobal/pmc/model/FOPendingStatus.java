package com.conceptglobal.pmc.model;

/* loaded from: classes.dex */
public class FOPendingStatus {
    public int ActivityPendingCount;
    public int FOPDAID;
    public int FarmerPendingCount;

    public int getFOPDAID() {
        return this.FOPDAID;
    }

    public void setFOPDAID(int i) {
        this.FOPDAID = i;
    }

    public int getFarmerPendingCount() {
        return this.FarmerPendingCount;
    }

    public void setFarmerPendingCount(int i) {
        this.FarmerPendingCount = i;
    }

    public int getActivityPendingCount() {
        return this.ActivityPendingCount;
    }

    public void setActivityPendingCount(int i) {
        this.ActivityPendingCount = i;
    }
}

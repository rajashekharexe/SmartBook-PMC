package com.conceptglobal.pmc.model;

/* loaded from: classes.dex */
public class Villages {
    private String ETLCode;
    private boolean IsActive;
    private int MandalID;
    private int VillageID;
    private String VillageName;
    private String VillageShortCode;

    public int getVillageID() {
        return this.VillageID;
    }

    public void setVillageID(int i) {
        this.VillageID = i;
    }

    public String getVillageName() {
        return this.VillageName;
    }

    public void setVillageName(String str) {
        this.VillageName = str;
    }

    public String getVillageShortCode() {
        return this.VillageShortCode;
    }

    public void setVillageShortCode(String str) {
        this.VillageShortCode = str;
    }

    public int getMandalID() {
        return this.MandalID;
    }

    public void setMandalID(int i) {
        this.MandalID = i;
    }

    public String getETLCode() {
        return this.ETLCode;
    }

    public void setETLCode(String str) {
        this.ETLCode = str;
    }

    public boolean isActive() {
        return this.IsActive;
    }

    public void setIsActive(boolean z) {
        this.IsActive = z;
    }
}

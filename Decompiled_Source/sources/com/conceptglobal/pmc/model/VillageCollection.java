package com.conceptglobal.pmc.model;

/* loaded from: classes.dex */
public class VillageCollection {
    private String districtName;
    private int isMBA;
    private int mandalId;
    private String mandalName;
    private int villageId;
    private String villageName;

    public int getIsMBA() {
        return this.isMBA;
    }

    public void setIsMBA(int i) {
        this.isMBA = i;
    }

    public int getVillageId() {
        return this.villageId;
    }

    public void setVillageId(int i) {
        this.villageId = i;
    }

    public String getVillageName() {
        return this.villageName;
    }

    public void setVillageName(String str) {
        this.villageName = str;
    }

    public int getMandalId() {
        return this.mandalId;
    }

    public void setMandalId(int i) {
        this.mandalId = i;
    }

    public String getMandalName() {
        return this.mandalName;
    }

    public void setMandalName(String str) {
        this.mandalName = str;
    }

    public String getDistrictName() {
        return this.districtName;
    }

    public void setDistrictName(String str) {
        this.districtName = str;
    }
}

package com.conceptglobal.pmc.model;

/* loaded from: classes.dex */
public class VillageDetails {
    private int createdBy;
    private String createddate;
    private String districtName;
    private int ismba;
    private int mandalId;
    private String mandalName;
    private String packageNameName;
    private int pd;
    private String searchString;
    private int tbv;
    private int updatedBy;
    private String updatedDate;
    private int vc;
    private int villageId;
    private String villageName;

    public VillageDetails(int i, String str, int i2, int i3, int i4, int i5, String str2, String str3, int i6, String str4) {
        this.villageId = i;
        this.villageName = str;
        this.mandalId = i2;
        this.tbv = i3;
        this.vc = i4;
        this.pd = i5;
        this.mandalName = str2;
        this.districtName = str3;
        this.ismba = i6;
        this.packageNameName = str4;
    }

    public String getpackageNameName() {
        return this.packageNameName;
    }

    public void setpackageNameName(String str) {
        this.packageNameName = str;
    }

    public int getIsmba() {
        return this.ismba;
    }

    public void setIsmba(int i) {
        this.ismba = i;
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

    public VillageDetails() {
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

    public int getCreatedBy() {
        return this.createdBy;
    }

    public void setCreatedBy(int i) {
        this.createdBy = i;
    }

    public String getCreateddate() {
        return this.createddate;
    }

    public void setCreateddate(String str) {
        this.createddate = str;
    }

    public int getUpdatedBy() {
        return this.updatedBy;
    }

    public void setUpdatedBy(int i) {
        this.updatedBy = i;
    }

    public String getUpdatedDate() {
        return this.updatedDate;
    }

    public void setUpdatedDate(String str) {
        this.updatedDate = str;
    }

    public int getTbv() {
        return this.tbv;
    }

    public void setTbv(int i) {
        this.tbv = i;
    }

    public int getVc() {
        return this.vc;
    }

    public void setVc(int i) {
        this.vc = i;
    }

    public int getPd() {
        return this.pd;
    }

    public void setPd(int i) {
        this.pd = i;
    }

    public String getSearchString() {
        return this.searchString;
    }

    public void setSearchString(String str) {
        this.searchString = str;
    }
}

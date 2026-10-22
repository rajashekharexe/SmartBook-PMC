package com.conceptglobal.pmc.model;

/* loaded from: classes.dex */
public class DealerLandDetails {
    private String GPSTimeStamp;
    public float acreages;
    public String address;
    public String contactid;
    public int createdby;
    public String createddate;
    public int dealerId;
    public String landmark;
    public String landname;
    public String latitude;
    public String longitude;
    public int mappingId;
    public String onField;
    public String pdaid;
    public int status;
    public int updatedby;
    public String updateddate;

    public String getContactid() {
        return this.contactid;
    }

    public void setContactid(String str) {
        this.contactid = str;
    }

    public int getDealerId() {
        return this.dealerId;
    }

    public void setDealerId(int i) {
        this.dealerId = i;
    }

    public String getGPSTimeStamp() {
        return this.GPSTimeStamp;
    }

    public void setGPSTimeStamp(String str) {
        this.GPSTimeStamp = str;
    }

    public String getOnField() {
        return this.onField;
    }

    public void setOnField(String str) {
        this.onField = str;
    }

    public int getMappingId() {
        return this.mappingId;
    }

    public void setMappingId(int i) {
        this.mappingId = i;
    }

    public String getLandname() {
        return this.landname;
    }

    public void setLandname(String str) {
        this.landname = str;
    }

    public float getAcreages() {
        return this.acreages;
    }

    public void setAcreages(float f) {
        this.acreages = f;
    }

    public String getAddress() {
        return this.address;
    }

    public void setAddress(String str) {
        this.address = str;
    }

    public String getLandmark() {
        return this.landmark;
    }

    public void setLandmark(String str) {
        this.landmark = str;
    }

    public String getLatitude() {
        return this.latitude;
    }

    public void setLatitude(String str) {
        this.latitude = str;
    }

    public String getLongitude() {
        return this.longitude;
    }

    public void setLongitude(String str) {
        this.longitude = str;
    }

    public String getPdaid() {
        return this.pdaid;
    }

    public void setPdaid(String str) {
        this.pdaid = str;
    }

    public int getCreatedby() {
        return this.createdby;
    }

    public void setCreatedby(int i) {
        this.createdby = i;
    }

    public String getCreateddate() {
        return this.createddate;
    }

    public void setCreateddate(String str) {
        this.createddate = str;
    }

    public int getUpdatedby() {
        return this.updatedby;
    }

    public void setUpdatedby(int i) {
        this.updatedby = i;
    }

    public String getUpdateddate() {
        return this.updateddate;
    }

    public void setUpdateddate(String str) {
        this.updateddate = str;
    }

    public int getStatus() {
        return this.status;
    }

    public void setStatus(int i) {
        this.status = i;
    }
}

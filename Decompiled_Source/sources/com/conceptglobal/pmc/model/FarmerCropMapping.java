package com.conceptglobal.pmc.model;

/* loaded from: classes.dex */
public class FarmerCropMapping {
    private int HybridId;
    private String IrrigationType;
    private String IsActive;
    private String IsMainCrop;
    private String LandType;
    private String Spraypattern;
    private float acreages;
    public String acreagetype;
    public float acreagevalue;
    private int createdBy;
    private String createddate;
    private int cropId;
    private String cropName;
    private String dos;
    private int farmerId;
    private int mappingId;
    private String pdaId;
    private String respondentNo;
    private int seasonID;
    private String serverUpdatedStatus;
    private int status;
    private int updatedBy;
    private String updatedDate;

    public String getAcreagetype() {
        return this.acreagetype;
    }

    public void setAcreagetype(String str) {
        this.acreagetype = str;
    }

    public float getAcreagevalue() {
        return this.acreagevalue;
    }

    public void setAcreagevalue(float f) {
        this.acreagevalue = f;
    }

    public String getIsActive() {
        return this.IsActive;
    }

    public void setIsActive(String str) {
        this.IsActive = str;
    }

    public String getIrrigationType() {
        return this.IrrigationType;
    }

    public void setIrrigationType(String str) {
        this.IrrigationType = str;
    }

    public int getSeasonID() {
        return this.seasonID;
    }

    public void setSeasonID(int i) {
        this.seasonID = i;
    }

    public int getMappingId() {
        return this.mappingId;
    }

    public void setMappingId(int i) {
        this.mappingId = i;
    }

    public int getFarmerId() {
        return this.farmerId;
    }

    public void setFarmerId(int i) {
        this.farmerId = i;
    }

    public int getCropId() {
        return this.cropId;
    }

    public void setCropId(int i) {
        this.cropId = i;
    }

    public float getAcreages() {
        return this.acreages;
    }

    public void setAcreages(float f) {
        this.acreages = f;
    }

    public String getServerUpdatedStatus() {
        return this.serverUpdatedStatus;
    }

    public void setServerUpdatedStatus(String str) {
        this.serverUpdatedStatus = str;
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

    public String getPdaId() {
        return this.pdaId;
    }

    public void setPdaId(String str) {
        this.pdaId = str;
    }

    public String getDos() {
        return this.dos;
    }

    public void setDos(String str) {
        this.dos = str;
    }

    public String getCropName() {
        return this.cropName;
    }

    public void setCropName(String str) {
        this.cropName = str;
    }

    public int getHybridId() {
        return this.HybridId;
    }

    public void setHybridId(int i) {
        this.HybridId = i;
    }

    public String getIsMainCrop() {
        return this.IsMainCrop;
    }

    public void setIsMainCrop(String str) {
        this.IsMainCrop = str;
    }

    public String getSpraypattern() {
        return this.Spraypattern;
    }

    public void setSpraypattern(String str) {
        this.Spraypattern = str;
    }

    public String getLandType() {
        return this.LandType;
    }

    public void setLandType(String str) {
        this.LandType = str;
    }

    public String getRespondentNo() {
        return this.respondentNo;
    }

    public void setRespondentNo(String str) {
        this.respondentNo = str;
    }

    public int getStatus() {
        return this.status;
    }

    public void setStatus(int i) {
        this.status = i;
    }
}

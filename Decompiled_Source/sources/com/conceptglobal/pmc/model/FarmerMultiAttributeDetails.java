package com.conceptglobal.pmc.model;

/* loaded from: classes.dex */
public class FarmerMultiAttributeDetails {
    private String AttributeTypeName;
    private String AttributeValue;
    private String ColumnMappingId;
    private String CreatedBy;
    private String CreatedDate;
    private String FarmerId;
    private String LineId;
    private String PdaId;
    private String RespondentNo;
    private String UpdatedBy;
    private String UpdatedDate;

    public FarmerMultiAttributeDetails(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11) {
        this.LineId = str;
        this.FarmerId = str2;
        this.RespondentNo = str3;
        this.ColumnMappingId = str4;
        this.AttributeValue = str5;
        this.AttributeTypeName = str6;
        this.PdaId = str7;
        this.CreatedBy = str8;
        this.CreatedDate = str9;
        this.UpdatedBy = str10;
        this.UpdatedDate = str11;
    }

    public FarmerMultiAttributeDetails() {
    }

    public String getLineId() {
        return this.LineId;
    }

    public void setLineId(String str) {
        this.LineId = str;
    }

    public String getFarmerId() {
        return this.FarmerId;
    }

    public void setFarmerId(String str) {
        this.FarmerId = str;
    }

    public String getRespondentNo() {
        return this.RespondentNo;
    }

    public void setRespondentNo(String str) {
        this.RespondentNo = str;
    }

    public String getColumnMappingId() {
        return this.ColumnMappingId;
    }

    public void setColumnMappingId(String str) {
        this.ColumnMappingId = str;
    }

    public String getAttributeValue() {
        return this.AttributeValue;
    }

    public void setAttributeValue(String str) {
        this.AttributeValue = str;
    }

    public String getAttributeTypeName() {
        return this.AttributeTypeName;
    }

    public void setAttributeTypeName(String str) {
        this.AttributeTypeName = str;
    }

    public String getPdaId() {
        return this.PdaId;
    }

    public void setPdaId(String str) {
        this.PdaId = str;
    }

    public String getCreatedBy() {
        return this.CreatedBy;
    }

    public void setCreatedBy(String str) {
        this.CreatedBy = str;
    }

    public String getCreatedDate() {
        return this.CreatedDate;
    }

    public void setCreatedDate(String str) {
        this.CreatedDate = str;
    }

    public String getUpdatedBy() {
        return this.UpdatedBy;
    }

    public void setUpdatedBy(String str) {
        this.UpdatedBy = str;
    }

    public String getUpdatedDate() {
        return this.UpdatedDate;
    }

    public void setUpdatedDate(String str) {
        this.UpdatedDate = str;
    }
}

package com.conceptglobal.pmc.model;

/* loaded from: classes.dex */
public class RetailerMultiAttributeDetails {
    private String AttributeTypeName;
    private String AttributeValue;
    private String ColumnMappingId;
    private String ContactID;
    private String CreatedBy;
    private String CreatedDate;
    private String LineId;
    private String PdaId;
    private String UpdatedBy;
    private String UpdatedDate;

    public RetailerMultiAttributeDetails(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10) {
        this.LineId = str;
        this.ContactID = str2;
        this.ColumnMappingId = str3;
        this.AttributeValue = str4;
        this.AttributeTypeName = str5;
        this.PdaId = str6;
        this.CreatedBy = str7;
        this.CreatedDate = str8;
        this.UpdatedBy = str9;
        this.UpdatedDate = str10;
    }

    public String getContactID() {
        return this.ContactID;
    }

    public void setContactID(String str) {
        this.ContactID = str;
    }

    public RetailerMultiAttributeDetails() {
    }

    public String getLineId() {
        return this.LineId;
    }

    public void setLineId(String str) {
        this.LineId = str;
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

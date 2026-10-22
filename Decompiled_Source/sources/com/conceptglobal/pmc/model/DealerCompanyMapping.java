package com.conceptglobal.pmc.model;

/* loaded from: classes.dex */
public class DealerCompanyMapping {
    private int CompanyId;
    private String CompanyName;
    private String CompanySales;
    private String ContactId;
    private int CreatedBy;
    private String CreatedDate;
    private int MappingId;
    private int UpdatedBy;
    private String UpdatedDate;
    private int pdaid;
    private int status;

    public int getMappingId() {
        return this.MappingId;
    }

    public void setMappingId(int i) {
        this.MappingId = i;
    }

    public String getContactId() {
        return this.ContactId;
    }

    public void setContactId(String str) {
        this.ContactId = str;
    }

    public int getCompanyId() {
        return this.CompanyId;
    }

    public void setCompanyId(int i) {
        this.CompanyId = i;
    }

    public String getCompanyName() {
        return this.CompanyName;
    }

    public void setCompanyName(String str) {
        this.CompanyName = str;
    }

    public String getCompanySales() {
        return this.CompanySales;
    }

    public void setCompanySales(String str) {
        this.CompanySales = str;
    }

    public int getCreatedBy() {
        return this.CreatedBy;
    }

    public void setCreatedBy(int i) {
        this.CreatedBy = i;
    }

    public String getCreatedDate() {
        return this.CreatedDate;
    }

    public void setCreatedDate(String str) {
        this.CreatedDate = str;
    }

    public int getUpdatedBy() {
        return this.UpdatedBy;
    }

    public void setUpdatedBy(int i) {
        this.UpdatedBy = i;
    }

    public String getUpdatedDate() {
        return this.UpdatedDate;
    }

    public void setUpdatedDate(String str) {
        this.UpdatedDate = str;
    }

    public int getPdaid() {
        return this.pdaid;
    }

    public void setPdaid(int i) {
        this.pdaid = i;
    }

    public int getStatus() {
        return this.status;
    }

    public void setStatus(int i) {
        this.status = i;
    }
}

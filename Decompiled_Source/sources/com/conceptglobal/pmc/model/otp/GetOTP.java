package com.conceptglobal.pmc.model.otp;

/* loaded from: classes.dex */
public class GetOTP {
    private String FarmerName;
    private String MobileNo;
    private String Pdaid;
    private String TestimonialID;
    private String customerType;

    public String getCustomerType() {
        return this.customerType;
    }

    public void setCustomerType(String str) {
        this.customerType = str;
    }

    public String getRespondentNo() {
        return this.TestimonialID;
    }

    public void setRespondentNo(String str) {
        this.TestimonialID = str;
    }

    public String getMobileNo() {
        return this.MobileNo;
    }

    public void setMobileNo(String str) {
        this.MobileNo = str;
    }

    public String getPdaid() {
        return this.Pdaid;
    }

    public void setPdaid(String str) {
        this.Pdaid = str;
    }

    public String getFarmerName() {
        return this.FarmerName;
    }

    public void setFarmerName(String str) {
        this.FarmerName = str;
    }
}

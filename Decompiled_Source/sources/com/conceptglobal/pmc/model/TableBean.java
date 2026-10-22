package com.conceptglobal.pmc.model;

/* loaded from: classes.dex */
public class TableBean {
    private int Daterank;
    private int LineId;
    private String arrival_date;
    private String commodity;
    private String district;
    private String market;
    private String max_price;
    private String min_price;
    private String modal_price;
    private String state;
    private String timestamp;
    private String variety;

    public int getDaterank() {
        return this.Daterank;
    }

    public void setDaterank(int i) {
        this.Daterank = i;
    }

    public int getLineId() {
        return this.LineId;
    }

    public void setLineId(int i) {
        this.LineId = i;
    }

    public String getTimestamp() {
        return this.timestamp;
    }

    public void setTimestamp(String str) {
        this.timestamp = str;
    }

    public String getState() {
        return this.state;
    }

    public void setState(String str) {
        this.state = str;
    }

    public String getDistrict() {
        return this.district;
    }

    public void setDistrict(String str) {
        this.district = str;
    }

    public String getMarket() {
        return this.market;
    }

    public void setMarket(String str) {
        this.market = str;
    }

    public String getCommodity() {
        return this.commodity;
    }

    public void setCommodity(String str) {
        this.commodity = str;
    }

    public String getVariety() {
        return this.variety;
    }

    public void setVariety(String str) {
        this.variety = str;
    }

    public String getArrival_date() {
        return this.arrival_date;
    }

    public void setArrival_date(String str) {
        this.arrival_date = str;
    }

    public String getMin_price() {
        return this.min_price;
    }

    public void setMin_price(String str) {
        this.min_price = str;
    }

    public String getMax_price() {
        return this.max_price;
    }

    public void setMax_price(String str) {
        this.max_price = str;
    }

    public String getModal_price() {
        return this.modal_price;
    }

    public void setModal_price(String str) {
        this.modal_price = str;
    }
}

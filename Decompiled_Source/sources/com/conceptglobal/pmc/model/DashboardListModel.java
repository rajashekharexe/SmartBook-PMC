package com.conceptglobal.pmc.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class DashboardListModel implements Serializable {
    private double Balance_Points;
    private int FavouriteStatus;
    private String IsCropHero;
    private String IsFellowFarmer;
    private String IsSaarthie;
    private String LastVisitedDate;
    private double OutStandingValue;
    private String SaarthieFarmerID;
    private int Sanitized;
    private int SegmentationValue;
    private List<String> data;
    private String draftId;
    private String field3;
    private boolean isRisingStar;
    private String langitude;
    private String latitude;
    private String updatedDate;
    private String villageName;

    public DashboardListModel() {
    }

    public DashboardListModel(String str, ArrayList<String> arrayList) {
        this.draftId = str;
        this.data = arrayList;
    }

    public int getSegmentationValue() {
        return this.SegmentationValue;
    }

    public void setSegmentationValue(int i) {
        this.SegmentationValue = i;
    }

    public String getSaarthieFarmerID() {
        return this.SaarthieFarmerID;
    }

    public void setSaarthieFarmerID(String str) {
        this.SaarthieFarmerID = str;
    }

    public String getIsFellowFarmer() {
        return this.IsFellowFarmer;
    }

    public void setIsFellowFarmer(String str) {
        this.IsFellowFarmer = str;
    }

    public String getLastVisitedDate() {
        return this.LastVisitedDate;
    }

    public void setLastVisitedDate(String str) {
        this.LastVisitedDate = str;
    }

    public String getVillageName() {
        return this.villageName;
    }

    public void setVillageName(String str) {
        this.villageName = str;
    }

    public String getUpdatedDate() {
        return this.updatedDate;
    }

    public void setUpdatedDate(String str) {
        this.updatedDate = str;
    }

    public int getFavouriteStatus() {
        return this.FavouriteStatus;
    }

    public void setFavouriteStatus(int i) {
        this.FavouriteStatus = i;
    }

    public int isSanitized() {
        return this.Sanitized;
    }

    public void setSanitized(int i) {
        this.Sanitized = i;
    }

    public String getDraftId() {
        return this.draftId;
    }

    public void setDraftId(String str) {
        this.draftId = str;
    }

    public String getLatitude() {
        return this.latitude;
    }

    public String getLangitude() {
        return this.langitude;
    }

    public void setLatitude(String str) {
        this.latitude = str;
    }

    public void setLangitude(String str) {
        this.langitude = str;
    }

    public List<String> getData() {
        return this.data;
    }

    public void setData(List<String> list) {
        this.data = list;
    }

    public String getField3() {
        return this.field3;
    }

    public void setField3(String str) {
        this.field3 = str;
    }

    public String getIsSaarthie() {
        return this.IsSaarthie;
    }

    public void setIsSaarthie(String str) {
        this.IsSaarthie = str;
    }

    public String getIsCropHero() {
        return this.IsCropHero;
    }

    public void setIsCropHero(String str) {
        this.IsCropHero = str;
    }

    public double getOutStandingValue() {
        return this.OutStandingValue;
    }

    public void setOutStandingValue(double d) {
        this.OutStandingValue = d;
    }

    public double getBalance_Points() {
        return this.Balance_Points;
    }

    public void setBalance_Points(double d) {
        this.Balance_Points = d;
    }

    public boolean isRisingStar() {
        return this.isRisingStar;
    }

    public void setRisingStar(boolean z) {
        this.isRisingStar = z;
    }
}

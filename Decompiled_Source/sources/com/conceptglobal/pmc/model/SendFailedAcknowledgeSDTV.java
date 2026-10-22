package com.conceptglobal.pmc.model;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class SendFailedAcknowledgeSDTV {
    private List<String> mandalIds = new ArrayList();
    private List<String> villageIds = new ArrayList();
    private List<String> farmerIds = new ArrayList();
    private List<String> dealerIds = new ArrayList();
    private List<String> districtIds = new ArrayList();
    private List<String> stateIds = new ArrayList();

    public List<String> getStateIds() {
        return this.stateIds;
    }

    public void setStateIds(List<String> list) {
        this.stateIds = list;
    }

    public List<String> getDistrictIds() {
        return this.districtIds;
    }

    public void setDistrictIds(List<String> list) {
        this.districtIds = list;
    }

    public List<String> getMandalIds() {
        return this.mandalIds;
    }

    public void setMandalIds(List<String> list) {
        this.mandalIds = list;
    }

    public List<String> getVillageIds() {
        return this.villageIds;
    }

    public void setVillageIds(List<String> list) {
        this.villageIds = list;
    }

    public List<String> getFarmerIds() {
        return this.farmerIds;
    }

    public void setFarmerIds(List<String> list) {
        this.farmerIds = list;
    }

    public List<String> getDealerIds() {
        return this.dealerIds;
    }

    public void setDealerIds(List<String> list) {
        this.dealerIds = list;
    }
}

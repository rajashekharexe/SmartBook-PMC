package com.conceptglobal.pmc.model;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class SendAcknowledgeSDTV {
    private List<String> mandalIds = new ArrayList();
    private List<String> villageIds = new ArrayList();
    private List<String> farmerIds = new ArrayList();
    private List<String> dealerIds = new ArrayList();
    private List<String> districtIds = new ArrayList();
    private List<String> stateIds = new ArrayList();
    private List<String> TerritoryFarmerIds = new ArrayList();
    private List<String> TerritoryDealerIds = new ArrayList();
    public List<String> FavouriteFarmerIds = new ArrayList();
    public List<String> FavouriteFarmerAttributeIds = new ArrayList();
    public List<String> FavouriteRetailerIds = new ArrayList();
    public List<String> FavouriteRetailerAttributeIds = new ArrayList();

    public List<String> getFavouriteFarmerIds() {
        return this.FavouriteFarmerIds;
    }

    public void setFavouriteFarmerIds(List<String> list) {
        this.FavouriteFarmerIds = list;
    }

    public List<String> getFavouriteFarmerAttributeIds() {
        return this.FavouriteFarmerAttributeIds;
    }

    public void setFavouriteFarmerAttributeIds(List<String> list) {
        this.FavouriteFarmerAttributeIds = list;
    }

    public List<String> getFavouriteRetailerIds() {
        return this.FavouriteRetailerIds;
    }

    public void setFavouriteRetailerIds(List<String> list) {
        this.FavouriteRetailerIds = list;
    }

    public List<String> getFavouriteRetailerAttributeIds() {
        return this.FavouriteRetailerAttributeIds;
    }

    public void setFavouriteRetailerAttributeIds(List<String> list) {
        this.FavouriteRetailerAttributeIds = list;
    }

    public List<String> getTerritoryDealerIds() {
        return this.TerritoryDealerIds;
    }

    public void setTerritoryDealerIds(List<String> list) {
        this.TerritoryDealerIds = list;
    }

    public List<String> getTerritoryFarmerIds() {
        return this.TerritoryFarmerIds;
    }

    public void setTerritoryFarmerIds(List<String> list) {
        this.TerritoryFarmerIds = list;
    }

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

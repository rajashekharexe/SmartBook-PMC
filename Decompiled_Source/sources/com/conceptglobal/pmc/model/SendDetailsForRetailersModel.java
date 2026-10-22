package com.conceptglobal.pmc.model;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class SendDetailsForRetailersModel {
    private String PDAID;
    private List<String> QueryIDs = new ArrayList();
    private String TerritoryId;

    public String getTerritoryId() {
        return this.TerritoryId;
    }

    public void setTerritoryId(String str) {
        this.TerritoryId = str;
    }

    public String getPDAID() {
        return this.PDAID;
    }

    public void setPDAID(String str) {
        this.PDAID = str;
    }

    public List<String> getQueryIDs() {
        return this.QueryIDs;
    }

    public void setQueryIDs(List<String> list) {
        this.QueryIDs = list;
    }
}

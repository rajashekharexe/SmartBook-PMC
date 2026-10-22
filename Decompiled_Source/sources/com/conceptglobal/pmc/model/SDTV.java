package com.conceptglobal.pmc.model;

import java.util.List;

/* loaded from: classes.dex */
public class SDTV {
    private List<Districts> districtList;
    private List<Mandals> mandalList;
    private List<States> stateList;
    private List<Villages> villageList;

    public List<States> getStateList() {
        return this.stateList;
    }

    public void setStateList(List<States> list) {
        this.stateList = list;
    }

    public List<Districts> getDistrictList() {
        return this.districtList;
    }

    public void setDistrictList(List<Districts> list) {
        this.districtList = list;
    }

    public List<Mandals> getMandalList() {
        return this.mandalList;
    }

    public void setMandalList(List<Mandals> list) {
        this.mandalList = list;
    }

    public List<Villages> getVillageList() {
        return this.villageList;
    }

    public void setVillageList(List<Villages> list) {
        this.villageList = list;
    }
}

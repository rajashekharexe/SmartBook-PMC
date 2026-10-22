package com.conceptglobal.pmc.fotracker.model;

import java.util.List;

/* loaded from: classes.dex */
public class GetUserDetailsModel {
    private String Active;
    private String FirstName;
    private String GeoDisplayName;
    private int NotificationStatus;
    private String Password;
    private String PdaUser;
    private int RoleId;
    private String TerritoryID;
    private int UserType;
    private String deviceid;
    private List<UserRoleMapping> roleList;
    private List<TerritoryMaster> territoryList;
    private int userid;
    private String username;

    public List<UserRoleMapping> getUserrolemapping() {
        return this.roleList;
    }

    public void setUserrolemapping(List<UserRoleMapping> list) {
        this.roleList = list;
    }

    public int getRoleId() {
        return this.RoleId;
    }

    public void setRoleId(int i) {
        this.RoleId = i;
    }

    public int getUserType() {
        return this.UserType;
    }

    public void setUserType(int i) {
        this.UserType = i;
    }

    public int getUserid() {
        return this.userid;
    }

    public void setUserid(int i) {
        this.userid = i;
    }

    public String getUsername() {
        return this.username;
    }

    public void setUsername(String str) {
        this.username = str;
    }

    public String getFirstName() {
        return this.FirstName;
    }

    public void setFirstName(String str) {
        this.FirstName = str;
    }

    public String getPassword() {
        return this.Password;
    }

    public void setPassword(String str) {
        this.Password = str;
    }

    public String getDeviceid() {
        return this.deviceid;
    }

    public void setDeviceid(String str) {
        this.deviceid = str;
    }

    public String getTerritoryID() {
        return this.TerritoryID;
    }

    public void setTerritoryID(String str) {
        this.TerritoryID = str;
    }

    public String getActive() {
        return this.Active;
    }

    public void setActive(String str) {
        this.Active = str;
    }

    public String getPdaUser() {
        return this.PdaUser;
    }

    public void setPdaUser(String str) {
        this.PdaUser = str;
    }

    public List<TerritoryMaster> getTerritoryList() {
        return this.territoryList;
    }

    public void setTerritoryList(List<TerritoryMaster> list) {
        this.territoryList = list;
    }

    public String getGeoDisplayName() {
        return this.GeoDisplayName;
    }

    public void setGeoDisplayName(String str) {
        this.GeoDisplayName = str;
    }

    public int getNotificationStatus() {
        return this.NotificationStatus;
    }

    public void setNotificationStatus(int i) {
        this.NotificationStatus = i;
    }
}

package com.conceptglobal.pmc.model;

import java.io.Serializable;
import java.util.List;

/* loaded from: classes.dex */
public class GetUserDetailsModel implements Serializable {
    private String Active;
    private String DBURL;
    private String FirstName;
    private String GeoDisplayName;
    private String HomeAddress;
    private String HomeLatitude;
    private String HomeLongitude;
    private String IsDeviceActive;
    private int NotificationStatus;
    private String Password;
    private String PdaUser;
    private int RoleId;
    private String TerritoryID;
    private String UserActive;
    private int UserType;
    private String deviceid;
    private String homelocationupdateddate;
    private int isCampaignRequired;
    private List<UserRoleMapping> roleList;
    private List<TerritoryMaster> territoryList;
    private int userid;
    private String username;

    public int getIsCampaignRequired() {
        return this.isCampaignRequired;
    }

    public void setIsCampaignRequired(int i) {
        this.isCampaignRequired = i;
    }

    public String getHomeLatitude() {
        return this.HomeLatitude;
    }

    public void setHomeLatitude(String str) {
        this.HomeLatitude = str;
    }

    public String getHomeLongitude() {
        return this.HomeLongitude;
    }

    public void setHomeLongitude(String str) {
        this.HomeLongitude = str;
    }

    public String getHomeAddress() {
        return this.HomeAddress;
    }

    public void setHomeAddress(String str) {
        this.HomeAddress = str;
    }

    public String getHomelocationupdateddate() {
        return this.homelocationupdateddate;
    }

    public void setHomelocationupdateddate(String str) {
        this.homelocationupdateddate = str;
    }

    public String getUserActive() {
        return this.UserActive;
    }

    public void setUserActive(String str) {
        this.UserActive = str;
    }

    public String getIsDeviceActive() {
        return this.IsDeviceActive;
    }

    public void setIsDeviceActive(String str) {
        this.IsDeviceActive = str;
    }

    public String getDBURL() {
        return this.DBURL;
    }

    public void setDBURL(String str) {
        this.DBURL = str;
    }

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

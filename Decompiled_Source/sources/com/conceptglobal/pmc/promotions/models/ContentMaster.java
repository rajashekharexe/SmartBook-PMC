package com.conceptglobal.pmc.promotions.models;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;

/* loaded from: classes.dex */
public class ContentMaster implements Serializable {
    private Date ActiveEndDate;
    private Date ActiveStartDate;
    private String ContentData;
    private String ContentDeviceLocation;
    private int ContentId;
    private String ContentName;
    private String ContentServerLocation;
    private int ContentType;
    private int CreatedBy;
    private String CreatedDate;
    private String Description;
    private String IsActive;
    private String IsBanner;
    private int IsDeleted;
    private String IsDownloadable;
    private String IsSharable;
    private int LanguageId;
    private int MasterSyncLineId;
    private String SearchKeys;
    private int TestStatus;
    private String ThumbNail;
    private int UpdatedBy;
    private String UpdatedDate;
    private int WatchStatus;
    private ArrayList<String> categoryDetails = new ArrayList<>();
    private int favouriteStatus;
    private String localThumbnail;
    private int parentCatId;
    private String serachKeywords;

    public String getLocalThumbnail() {
        return this.localThumbnail;
    }

    public void setLocalThumbnail(String str) {
        this.localThumbnail = str;
    }

    public String getSerachKeywords() {
        return this.serachKeywords;
    }

    public void setSerachKeywords(String str) {
        this.serachKeywords = str;
    }

    public int getIsDeleted() {
        return this.IsDeleted;
    }

    public void setIsDeleted(int i) {
        this.IsDeleted = i;
    }

    public String getIsSharable() {
        return this.IsSharable;
    }

    public void setIsSharable(String str) {
        this.IsSharable = str;
    }

    public String getIsBanner() {
        return this.IsBanner;
    }

    public void setIsBanner(String str) {
        this.IsBanner = str;
    }

    public String getIsDownloadable() {
        return this.IsDownloadable;
    }

    public void setIsDownloadable(String str) {
        this.IsDownloadable = str;
    }

    public int getFavouriteStatus() {
        return this.favouriteStatus;
    }

    public void setFavouriteStatus(int i) {
        this.favouriteStatus = i;
    }

    public int getTestStatus() {
        return this.TestStatus;
    }

    public void setTestStatus(int i) {
        this.TestStatus = i;
    }

    public int getWatchStatus() {
        return this.WatchStatus;
    }

    public void setWatchStatus(int i) {
        this.WatchStatus = i;
    }

    public int getCreatedBy() {
        return this.CreatedBy;
    }

    public void setCreatedBy(int i) {
        this.CreatedBy = i;
    }

    public int getUpdatedBy() {
        return this.UpdatedBy;
    }

    public void setUpdatedBy(int i) {
        this.UpdatedBy = i;
    }

    public String getCreatedDate() {
        return this.CreatedDate;
    }

    public void setCreatedDate(String str) {
        this.CreatedDate = str;
    }

    public String getUpdatedDate() {
        return this.UpdatedDate;
    }

    public void setUpdatedDate(String str) {
        this.UpdatedDate = str;
    }

    public ArrayList<String> getCategoryDetails() {
        return this.categoryDetails;
    }

    public void setCategoryDetails(ArrayList<String> arrayList) {
        this.categoryDetails = arrayList;
    }

    public int getContentId() {
        return this.ContentId;
    }

    public void setContentId(int i) {
        this.ContentId = i;
    }

    public String getContentName() {
        return this.ContentName;
    }

    public void setContentName(String str) {
        this.ContentName = str;
    }

    public String getDescription() {
        return this.Description;
    }

    public void setDescription(String str) {
        this.Description = str;
    }

    public int getLanguageId() {
        return this.LanguageId;
    }

    public void setLanguageId(int i) {
        this.LanguageId = i;
    }

    public int getContentType() {
        return this.ContentType;
    }

    public void setContentType(int i) {
        this.ContentType = i;
    }

    public String getThumbNail() {
        return this.ThumbNail;
    }

    public void setThumbNail(String str) {
        this.ThumbNail = str;
    }

    public String getContentServerLocation() {
        return this.ContentServerLocation;
    }

    public void setContentServerLocation(String str) {
        this.ContentServerLocation = str;
    }

    public String getContentDeviceLocation() {
        return this.ContentDeviceLocation;
    }

    public void setContentDeviceLocation(String str) {
        this.ContentDeviceLocation = str;
    }

    public String getContentData() {
        return this.ContentData;
    }

    public void setContentData(String str) {
        this.ContentData = str;
    }

    public String getSearchKeys() {
        return this.SearchKeys;
    }

    public void setSearchKeys(String str) {
        this.SearchKeys = str;
    }

    public Date getActiveStartDate() {
        return this.ActiveStartDate;
    }

    public void setActiveStartDate(Date date) {
        this.ActiveStartDate = date;
    }

    public Date getActiveEndDate() {
        return this.ActiveEndDate;
    }

    public void setActiveEndDate(Date date) {
        this.ActiveEndDate = date;
    }

    public String getIsActive() {
        return this.IsActive;
    }

    public void setIsActive(String str) {
        this.IsActive = str;
    }

    public int getParentCatId() {
        return this.parentCatId;
    }

    public void setParentCatId(int i) {
        this.parentCatId = i;
    }

    public int getMasterSyncLineId() {
        return this.MasterSyncLineId;
    }

    public void setMasterSyncLineId(int i) {
        this.MasterSyncLineId = i;
    }
}

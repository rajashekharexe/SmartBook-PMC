package com.conceptglobal.pmc.promotions.models;

/* loaded from: classes.dex */
public class UsageDetails {
    private String Action;
    private int ActionValue;
    private int ContentId;
    private int CreatedBy;
    private String CreatedDate;
    private int Duration;
    private int IsAvailableOffline;
    private int IsUseFull;
    private int ModuleTypeId;
    private int PdaId;
    private String PrimaryKeyCoulmn;
    private int PrimaryKeyId;
    private String Rating;
    private int UpdatedBy;
    private String UpdatedDate;
    private String UsageDateTime;
    private int UsageId;
    private int UserId;

    public int getModuleTypeId() {
        return this.ModuleTypeId;
    }

    public void setModuleTypeId(int i) {
        this.ModuleTypeId = i;
    }

    public String getAction() {
        return this.Action;
    }

    public void setAction(String str) {
        this.Action = str;
    }

    public int getActionValue() {
        return this.ActionValue;
    }

    public void setActionValue(int i) {
        this.ActionValue = i;
    }

    public int getPrimaryKeyId() {
        return this.PrimaryKeyId;
    }

    public void setPrimaryKeyId(int i) {
        this.PrimaryKeyId = i;
    }

    public String getPrimaryKeyCoulmn() {
        return this.PrimaryKeyCoulmn;
    }

    public void setPrimaryKeyCoulmn(String str) {
        this.PrimaryKeyCoulmn = str;
    }

    public int getContentId() {
        return this.ContentId;
    }

    public void setContentId(int i) {
        this.ContentId = i;
    }

    public int getUsageId() {
        return this.UsageId;
    }

    public void setUsageId(int i) {
        this.UsageId = i;
    }

    public int getPdaId() {
        return this.PdaId;
    }

    public void setPdaId(int i) {
        this.PdaId = i;
    }

    public int getDuration() {
        return this.Duration;
    }

    public void setDuration(int i) {
        this.Duration = i;
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

    public int getUserId() {
        return this.UserId;
    }

    public void setUserId(int i) {
        this.UserId = i;
    }

    public int getIsAvailableOffline() {
        return this.IsAvailableOffline;
    }

    public void setIsAvailableOffline(int i) {
        this.IsAvailableOffline = i;
    }

    public String getRating() {
        return this.Rating;
    }

    public void setRating(String str) {
        this.Rating = str;
    }

    public int getIsUseFull() {
        return this.IsUseFull;
    }

    public void setIsUseFull(int i) {
        this.IsUseFull = i;
    }

    public String getUsageDateTime() {
        return this.UsageDateTime;
    }

    public void setUsageDateTime(String str) {
        this.UsageDateTime = str;
    }
}

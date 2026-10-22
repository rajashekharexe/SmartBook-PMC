package com.conceptglobal.pmc.model;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class FeedbackAssignmentActivityDetailsModel implements Parcelable {
    public static final Parcelable.Creator<FeedbackAssignmentActivityDetailsModel> CREATOR = new Parcelable.Creator<FeedbackAssignmentActivityDetailsModel>() { // from class: com.conceptglobal.pmc.model.FeedbackAssignmentActivityDetailsModel.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FeedbackAssignmentActivityDetailsModel createFromParcel(Parcel parcel) {
            return new FeedbackAssignmentActivityDetailsModel(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FeedbackAssignmentActivityDetailsModel[] newArray(int i) {
            return new FeedbackAssignmentActivityDetailsModel[i];
        }
    };
    private int ActivityAssignmentId;
    private int ActivityAttributeId;
    private int ActivityExecutionSegmentId;
    private String ActivityExecutionSegmentValue;
    private int ActivityMasterId;
    private int ActivitySegmentId;
    private String ActivitySegmentName;
    private String ActivitySegmentValue;
    private int AssignmentId;
    private int AttributeId;
    private String AttributeValue;
    private String ChildLevelId;
    private String ContactNumber;
    private String EndDate;
    private String ExecutionDate;
    private String Location1;
    private String Location2;
    private String NotDoneRemark;
    private int PackageId;
    private String PackageName;
    private String PairId;
    private String PdaId;
    private String Person1;
    private String Person2;
    private String StartDate;
    private long TransId;
    private int createdBy;
    private String createddate;
    private int detailsID;
    private int isActive;
    private String isDone;
    private String isPlanned;
    private int isTransactionDone;
    private String latitude;
    private String longitude;
    private String serverUpdatedStatus;
    private int territoryId;
    private int updatedBy;
    private String updatedDate;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    protected FeedbackAssignmentActivityDetailsModel(Parcel parcel) {
        this.detailsID = parcel.readInt();
        this.ActivityAttributeId = parcel.readInt();
        this.ActivityAssignmentId = parcel.readInt();
        this.AssignmentId = parcel.readInt();
        this.ActivitySegmentId = parcel.readInt();
        this.ActivitySegmentName = parcel.readString();
        this.ActivitySegmentValue = parcel.readString();
        this.ActivityMasterId = parcel.readInt();
        this.AttributeId = parcel.readInt();
        this.AttributeValue = parcel.readString();
        this.isPlanned = parcel.readString();
        this.isDone = parcel.readString();
        this.PdaId = parcel.readString();
        this.NotDoneRemark = parcel.readString();
        this.TransId = parcel.readLong();
        this.PairId = parcel.readString();
        this.isTransactionDone = parcel.readInt();
        this.ActivityExecutionSegmentId = parcel.readInt();
        this.ActivityExecutionSegmentValue = parcel.readString();
        this.ExecutionDate = parcel.readString();
        this.serverUpdatedStatus = parcel.readString();
        this.createdBy = parcel.readInt();
        this.createddate = parcel.readString();
        this.updatedBy = parcel.readInt();
        this.updatedDate = parcel.readString();
        this.StartDate = parcel.readString();
        this.EndDate = parcel.readString();
        this.Person1 = parcel.readString();
        this.Person2 = parcel.readString();
        this.Location1 = parcel.readString();
        this.Location2 = parcel.readString();
        this.ContactNumber = parcel.readString();
        this.ChildLevelId = parcel.readString();
        this.PackageId = parcel.readInt();
        this.isActive = parcel.readInt();
        this.latitude = parcel.readString();
        this.longitude = parcel.readString();
    }

    public FeedbackAssignmentActivityDetailsModel() {
    }

    public int getDetailsID() {
        return this.detailsID;
    }

    public void setDetailsID(int i) {
        this.detailsID = i;
    }

    public int getActivityAttributeId() {
        return this.ActivityAttributeId;
    }

    public void setActivityAttributeId(int i) {
        this.ActivityAttributeId = i;
    }

    public int getActivityAssignmentId() {
        return this.ActivityAssignmentId;
    }

    public void setActivityAssignmentId(int i) {
        this.ActivityAssignmentId = i;
    }

    public int getAssignmentId() {
        return this.AssignmentId;
    }

    public void setAssignmentId(int i) {
        this.AssignmentId = i;
    }

    public int getActivitySegmentId() {
        return this.ActivitySegmentId;
    }

    public void setActivitySegmentId(int i) {
        this.ActivitySegmentId = i;
    }

    public String getActivitySegmentName() {
        return this.ActivitySegmentName;
    }

    public void setActivitySegmentName(String str) {
        this.ActivitySegmentName = str;
    }

    public String getActivitySegmentValue() {
        return this.ActivitySegmentValue;
    }

    public void setActivitySegmentValue(String str) {
        this.ActivitySegmentValue = str;
    }

    public int getActivityMasterId() {
        return this.ActivityMasterId;
    }

    public void setActivityMasterId(int i) {
        this.ActivityMasterId = i;
    }

    public int getAttributeId() {
        return this.AttributeId;
    }

    public void setAttributeId(int i) {
        this.AttributeId = i;
    }

    public String getAttributeValue() {
        return this.AttributeValue;
    }

    public void setAttributeValue(String str) {
        this.AttributeValue = str;
    }

    public String getIsPlanned() {
        return this.isPlanned;
    }

    public void setIsPlanned(String str) {
        this.isPlanned = str;
    }

    public String getIsDone() {
        return this.isDone;
    }

    public void setIsDone(String str) {
        this.isDone = str;
    }

    public String getPdaId() {
        return this.PdaId;
    }

    public void setPdaId(String str) {
        this.PdaId = str;
    }

    public String getNotdoneRemark() {
        return this.NotDoneRemark;
    }

    public void setNotdoneRemark(String str) {
        this.NotDoneRemark = str;
    }

    public long getTransId() {
        return this.TransId;
    }

    public void setTransId(long j) {
        this.TransId = j;
    }

    public String getPairId() {
        return this.PairId;
    }

    public void setPairId(String str) {
        this.PairId = str;
    }

    public int getIsTransactionDone() {
        return this.isTransactionDone;
    }

    public void setIsTransactionDone(int i) {
        this.isTransactionDone = i;
    }

    public int getActivityExecutionSegmentId() {
        return this.ActivityExecutionSegmentId;
    }

    public void setActivityExecutionSegmentId(int i) {
        this.ActivityExecutionSegmentId = i;
    }

    public String getActivityExecutionSegmentValue() {
        return this.ActivityExecutionSegmentValue;
    }

    public void setActivityExecutionSegmentValue(String str) {
        this.ActivityExecutionSegmentValue = str;
    }

    public String getExecutionDate() {
        return this.ExecutionDate;
    }

    public void setExecutionDate(String str) {
        this.ExecutionDate = str;
    }

    public String getServerUpdatedStatus() {
        return this.serverUpdatedStatus;
    }

    public void setServerUpdatedStatus(String str) {
        this.serverUpdatedStatus = str;
    }

    public int getCreatedBy() {
        return this.createdBy;
    }

    public void setCreatedBy(int i) {
        this.createdBy = i;
    }

    public String getCreateddate() {
        return this.createddate;
    }

    public void setCreateddate(String str) {
        this.createddate = str;
    }

    public int getUpdatedBy() {
        return this.updatedBy;
    }

    public void setUpdatedBy(int i) {
        this.updatedBy = i;
    }

    public String getUpdatedDate() {
        return this.updatedDate;
    }

    public void setUpdatedDate(String str) {
        this.updatedDate = str;
    }

    public String getStartDate() {
        return this.StartDate;
    }

    public void setStartDate(String str) {
        this.StartDate = str;
    }

    public String getEndDate() {
        return this.EndDate;
    }

    public void setEndDate(String str) {
        this.EndDate = str;
    }

    public String getPerson1() {
        return this.Person1;
    }

    public void setPerson1(String str) {
        this.Person1 = str;
    }

    public String getPerson2() {
        return this.Person2;
    }

    public void setPerson2(String str) {
        this.Person2 = str;
    }

    public String getLocation1() {
        return this.Location1;
    }

    public void setLocation1(String str) {
        this.Location1 = str;
    }

    public String getLocation2() {
        return this.Location2;
    }

    public void setLocation2(String str) {
        this.Location2 = str;
    }

    public String getContactNumber() {
        return this.ContactNumber;
    }

    public void setContactNumber(String str) {
        this.ContactNumber = str;
    }

    public String getChildLevelId() {
        return this.ChildLevelId;
    }

    public void setChildLevelId(String str) {
        this.ChildLevelId = str;
    }

    public int getPackageId() {
        return this.PackageId;
    }

    public void setPackageId(int i) {
        this.PackageId = i;
    }

    public int getIsActive() {
        return this.isActive;
    }

    public void setIsActive(int i) {
        this.isActive = i;
    }

    public String getLatitude() {
        return this.latitude;
    }

    public void setLatitude(String str) {
        this.latitude = str;
    }

    public String getLongitude() {
        return this.longitude;
    }

    public void setLongitude(String str) {
        this.longitude = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.detailsID);
        parcel.writeInt(this.ActivityAttributeId);
        parcel.writeInt(this.ActivityAssignmentId);
        parcel.writeInt(this.AssignmentId);
        parcel.writeInt(this.ActivitySegmentId);
        parcel.writeString(this.ActivitySegmentName);
        parcel.writeString(this.ActivitySegmentValue);
        parcel.writeInt(this.ActivityMasterId);
        parcel.writeInt(this.AttributeId);
        parcel.writeString(this.AttributeValue);
        parcel.writeString(this.isPlanned);
        parcel.writeString(this.isDone);
        parcel.writeString(this.PdaId);
        parcel.writeString(this.NotDoneRemark);
        parcel.writeLong(this.TransId);
        parcel.writeString(this.PairId);
        parcel.writeInt(this.isTransactionDone);
        parcel.writeInt(this.ActivityExecutionSegmentId);
        parcel.writeString(this.ActivityExecutionSegmentValue);
        parcel.writeString(this.ExecutionDate);
        parcel.writeString(this.serverUpdatedStatus);
        parcel.writeInt(this.createdBy);
        parcel.writeString(this.createddate);
        parcel.writeInt(this.updatedBy);
        parcel.writeString(this.updatedDate);
        parcel.writeString(this.StartDate);
        parcel.writeString(this.EndDate);
        parcel.writeString(this.Person1);
        parcel.writeString(this.Person2);
        parcel.writeString(this.Location1);
        parcel.writeString(this.Location2);
        parcel.writeString(this.ContactNumber);
        parcel.writeString(this.ChildLevelId);
        parcel.writeInt(this.PackageId);
        parcel.writeInt(this.isActive);
        parcel.writeString(this.latitude);
        parcel.writeString(this.longitude);
    }

    public String getPackageName() {
        return this.PackageName;
    }

    public void setPackageName(String str) {
        this.PackageName = str;
    }

    public int getTerritoryId() {
        return this.territoryId;
    }

    public void setTerritoryId(int i) {
        this.territoryId = i;
    }
}

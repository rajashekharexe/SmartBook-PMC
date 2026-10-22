package com.conceptglobal.pmc.model;

import java.util.List;

/* loaded from: classes.dex */
public class GetSegmentationDetails {
    private List<AssignmentActivityDetailsModel> AssignmentActivityCollection;
    private int DataCount;
    private List<ExpensesAssignmentActivityDetailsModel> ExpenseAssignmentActivityCollection;
    private List<PMCAttendanceModel> FAAttendanceDetailsForApproval;
    private List<ComplaintAssignmentActivityDetailsModel> FBFActivityList;
    private List<FBFActivityResolveTrackModel> FBFActivityTrack;
    private List<FarmerCollection> FarmerCollection;
    private List<FarmerCropCollection> FarmerCropCollection;
    private List<LastVisitModel> LastVisitActivityAttributes;
    private List<SurveyAssignmentActivityDetailsModel> SurveyActivityCollection;
    private List<VillageCollection> VillageCollection;

    public List<ComplaintAssignmentActivityDetailsModel> getComplaintAssignmentActivityCollection() {
        return this.FBFActivityList;
    }

    public void setComplaintAssignmentActivityCollection(List<ComplaintAssignmentActivityDetailsModel> list) {
        this.FBFActivityList = list;
    }

    public List<FBFActivityResolveTrackModel> getFBFActivityTrack() {
        return this.FBFActivityTrack;
    }

    public void setFBFActivityTrack(List<FBFActivityResolveTrackModel> list) {
        this.FBFActivityTrack = list;
    }

    public List<SurveyAssignmentActivityDetailsModel> getSurveyAssignmentActivityCollection() {
        return this.SurveyActivityCollection;
    }

    public void setSurveyAssignmentActivityCollection(List<SurveyAssignmentActivityDetailsModel> list) {
        this.SurveyActivityCollection = list;
    }

    public int getDataCount() {
        return this.DataCount;
    }

    public void setDataCount(int i) {
        this.DataCount = i;
    }

    public List<PMCAttendanceModel> getPmcAttendanceModels() {
        return this.FAAttendanceDetailsForApproval;
    }

    public void setPmcAttendanceModels(List<PMCAttendanceModel> list) {
        this.FAAttendanceDetailsForApproval = list;
    }

    public List<AssignmentActivityDetailsModel> getAssignmentActivityCollection() {
        return this.AssignmentActivityCollection;
    }

    public void setAssignmentActivityCollection(List<AssignmentActivityDetailsModel> list) {
        this.AssignmentActivityCollection = list;
    }

    public List<ExpensesAssignmentActivityDetailsModel> getExpensesAssignmentActivityDetails() {
        return this.ExpenseAssignmentActivityCollection;
    }

    public void setExpensesAssignmentActivityDetails(List<ExpensesAssignmentActivityDetailsModel> list) {
        this.ExpenseAssignmentActivityCollection = list;
    }

    public List<LastVisitModel> getLastVisitActivityAttributes() {
        return this.LastVisitActivityAttributes;
    }

    public void setLastVisitActivityAttributes(List<LastVisitModel> list) {
        this.LastVisitActivityAttributes = list;
    }

    public List<VillageCollection> getVillageCollection() {
        return this.VillageCollection;
    }

    public void setVillageCollection(List<VillageCollection> list) {
        this.VillageCollection = list;
    }

    public List<FarmerCollection> getFarmerCollection() {
        return this.FarmerCollection;
    }

    public void setFarmerCollection(List<FarmerCollection> list) {
        this.FarmerCollection = list;
    }

    public List<AssignmentActivityDetailsModel> getFarmerActivityCollection() {
        return this.AssignmentActivityCollection;
    }

    public void setFarmerActivityCollection(List<AssignmentActivityDetailsModel> list) {
        this.AssignmentActivityCollection = list;
    }

    public List<ExpensesAssignmentActivityDetailsModel> getExpensesFarmerActivityCollection() {
        return this.ExpenseAssignmentActivityCollection;
    }

    public void setExpensesFarmerActivityCollection(List<ExpensesAssignmentActivityDetailsModel> list) {
        this.ExpenseAssignmentActivityCollection = list;
    }

    public List<FarmerCropCollection> getFarmerCropCollection() {
        return this.FarmerCropCollection;
    }

    public void setFarmerCropCollection(List<FarmerCropCollection> list) {
        this.FarmerCropCollection = list;
    }
}

package com.conceptglobal.pmc.model;

/* loaded from: classes.dex */
public class LastVisitModel {
    private String ActivityAssignmentId;
    private String ActivityName;
    private int ActivitySegmentId;
    private String ActivitySegmentValue;
    private int AttributeId;
    private String AttributeName;
    private String AttributeValue;
    private String FoName;
    private String LastVisitDate;
    private String Latitude;
    private String Location1;
    private String Location2;
    private String Longitude;
    private String Person1;
    private String Person2;
    private String VisitDescription;
    private String previousActivityAssignmentId;

    public String getLatitude() {
        return this.Latitude;
    }

    public void setLatitude(String str) {
        this.Latitude = str;
    }

    public String getLongitude() {
        return this.Longitude;
    }

    public void setLongitude(String str) {
        this.Longitude = str;
    }

    public String getFOName() {
        return this.FoName;
    }

    public void setFOName(String str) {
        this.FoName = str;
    }

    public String getPreviousActivityAssignmentId() {
        return this.previousActivityAssignmentId;
    }

    public void setPreviousActivityAssignmentId(String str) {
        this.previousActivityAssignmentId = str;
    }

    public String getActivityAssignmentId() {
        return this.ActivityAssignmentId;
    }

    public void setActivityAssignmentId(String str) {
        this.ActivityAssignmentId = str;
    }

    public String getLastVisitDate() {
        return this.LastVisitDate;
    }

    public void setLastVisitDate(String str) {
        this.LastVisitDate = str;
    }

    public String getActivityName() {
        return this.ActivityName;
    }

    public void setActivityName(String str) {
        this.ActivityName = str;
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

    public String getVisitDescription() {
        return this.VisitDescription;
    }

    public void setVisitDescription(String str) {
        this.VisitDescription = str;
    }

    public int getActivitySegmentId() {
        return this.ActivitySegmentId;
    }

    public void setActivitySegmentId(int i) {
        this.ActivitySegmentId = i;
    }

    public String getActivitySegmentValue() {
        return this.ActivitySegmentValue;
    }

    public void setActivitySegmentValue(String str) {
        this.ActivitySegmentValue = str;
    }

    public int getAttributeId() {
        return this.AttributeId;
    }

    public void setAttributeId(int i) {
        this.AttributeId = i;
    }

    public String getAttributeName() {
        return this.AttributeName;
    }

    public void setAttributeName(String str) {
        this.AttributeName = str;
    }

    public String getAttributeValue() {
        return this.AttributeValue;
    }

    public void setAttributeValue(String str) {
        this.AttributeValue = str;
    }
}

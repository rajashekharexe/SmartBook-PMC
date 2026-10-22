package com.conceptglobal.pmc.model;

/* loaded from: classes.dex */
public class ActivityModel {
    private int activityId;
    private String activityName;
    private int isDone;
    private int isPlanned;

    public int getActivityId() {
        return this.activityId;
    }

    public void setActivityId(int i) {
        this.activityId = i;
    }

    public String getActivityName() {
        return this.activityName;
    }

    public void setActivityName(String str) {
        this.activityName = str;
    }

    public int getIsPlanned() {
        return this.isPlanned;
    }

    public void setIsPlanned(int i) {
        this.isPlanned = i;
    }

    public int getIsDone() {
        return this.isDone;
    }

    public void setIsDone(int i) {
        this.isDone = i;
    }
}

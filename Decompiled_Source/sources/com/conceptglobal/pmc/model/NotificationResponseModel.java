package com.conceptglobal.pmc.model;

import java.util.List;

/* loaded from: classes.dex */
public class NotificationResponseModel {
    private List<Integer> Assignments;
    private String notificationId;

    public List<Integer> getAssignments() {
        return this.Assignments;
    }

    public void setAssignments(List<Integer> list) {
        this.Assignments = list;
    }

    public String getNotificationId() {
        return this.notificationId;
    }

    public void setNotificationId(String str) {
        this.notificationId = str;
    }
}

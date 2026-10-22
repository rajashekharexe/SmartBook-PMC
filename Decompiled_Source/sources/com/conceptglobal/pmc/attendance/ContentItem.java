package com.conceptglobal.pmc.attendance;

/* loaded from: classes.dex */
public class ContentItem extends ApproveListItem {
    private AttendanceItem attendanceItem;

    @Override // com.conceptglobal.pmc.attendance.ApproveListItem
    public int getType() {
        return 1;
    }

    public AttendanceItem getAttendanceItem() {
        return this.attendanceItem;
    }

    public void setAttendanceItem(AttendanceItem attendanceItem) {
        this.attendanceItem = attendanceItem;
    }
}

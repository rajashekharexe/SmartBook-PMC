package com.conceptglobal.pmc.attendance;

/* loaded from: classes.dex */
public class HeaderItem extends ApproveListItem {
    private String header;

    @Override // com.conceptglobal.pmc.attendance.ApproveListItem
    public int getType() {
        return 0;
    }

    public String getHeader() {
        return this.header;
    }

    public void setHeader(String str) {
        this.header = str;
    }
}

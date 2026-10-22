package com.conceptglobal.pmc.model;

/* loaded from: classes.dex */
public class NavDrawerItem {
    private int drawable;
    private boolean showNotify;
    private String title;

    public NavDrawerItem() {
    }

    public NavDrawerItem(boolean z, String str) {
        this.showNotify = z;
        this.title = str;
    }

    public boolean isShowNotify() {
        return this.showNotify;
    }

    public void setShowNotify(boolean z) {
        this.showNotify = z;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public int getDrawable() {
        return this.drawable;
    }

    public void setDrawable(int i) {
        this.drawable = i;
    }
}

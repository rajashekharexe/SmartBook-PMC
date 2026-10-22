package com.conceptglobal.pmc.promotions.linkpreview;

import java.io.File;
import java.io.Serializable;

/* loaded from: classes.dex */
public class LinkPreview implements Serializable {
    String description;
    File imageFile;
    String link;
    String siteName;
    String title;

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public String getDescription() {
        return this.description;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public String getLink() {
        return this.link;
    }

    public void setLink(String str) {
        this.link = str;
    }

    public File getImageFile() {
        return this.imageFile;
    }

    public void setImageFile(File file) {
        this.imageFile = file;
    }

    public void setSiteName(String str) {
        this.siteName = str;
    }

    public String getSiteName() {
        return this.siteName;
    }
}

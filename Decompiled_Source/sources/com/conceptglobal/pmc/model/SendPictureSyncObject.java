package com.conceptglobal.pmc.model;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class SendPictureSyncObject {
    private List<ImageDetails> objImageDetails = new ArrayList();

    public List<ImageDetails> getPictureRecords() {
        return this.objImageDetails;
    }

    public void setPictureRecords(List<ImageDetails> list) {
        this.objImageDetails = list;
    }
}

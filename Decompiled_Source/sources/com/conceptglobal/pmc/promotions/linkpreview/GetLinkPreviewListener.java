package com.conceptglobal.pmc.promotions.linkpreview;

/* loaded from: classes.dex */
public interface GetLinkPreviewListener {
    void onFailed(Exception exc);

    void onSuccess(LinkPreview linkPreview);
}

package com.conceptglobal.pmc.promotions.utils;

/* loaded from: classes.dex */
public class Constants {
    public static final String COMPRESSEDVIDEONAME = "CompressedVedioName";
    public static final String DEVELOPER_KEY = "AIzaSyDtjezmhXAqnlVDUTD5Mc-OgAuuoDMlh4c";
    public static final int DOWNLOADS = 101;
    public static final int FAVOURITES = 102;
    public static final int HOME = 100;
    public static final int POP_CONTEXTID = 3;
    public static final String POP_PRIMARY_COLUMN_NAME = "POPID";
    public static int TYPE_ATTACHMENTS = 8;
    public static final int TYPE_AUDEO = 2;
    public static final int TYPE_DC = 1;
    public static final int TYPE_HTML = 5;
    public static final int TYPE_IMAGE = 4;
    public static final int TYPE_PDF = 7;
    public static final int TYPE_POP = 2;
    public static final int TYPE_TEXT = 3;
    public static int TYPE_URL = 6;
    public static final int TYPE_VIDEO = 1;
    public static final String USAGE_ACTION_DETAILS = "DETAILS";
    public static final String USAGE_ACTION_DOWNLOADE = "DOWNLOADED";
    public static final String USAGE_ACTION_DURATION = "DURATION";
    public static final String USAGE_ACTION_MARK_AS_FAVOURITE = "FAVOURITE";
    public static final String USAGE_ACTION_MARK_AS_UNFAVOURITE = "UNFAVOURITE";
    public static final String USAGE_ACTION_PRIMARY_COLUMN_NAME = "ContentID";
    public static final String USAGE_ACTION_SHARED = "SHARED";
    public static final String USAGE_ACTION_VIEWED = "VIEWED";
    private static Constants instance;

    public enum ContentType {
        ATTACHEMENT_TEXT,
        ATTACHEMENT_PDF,
        ATTACHEMENT_PPT,
        IMAGE,
        VIDEO,
        AUDIO,
        TEXT,
        HTML,
        URL,
        NA
    }

    public Constants getInstance() {
        if (instance == null) {
            instance = new Constants();
        }
        return instance;
    }
}

package com.conceptglobal.pmc.promotions.downloadmanager;

import android.app.DownloadManager;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import kotlin.time.DurationKt;

/* loaded from: classes.dex */
public class IcsDownloadManager {
    public static final int VISIBILITY_VISIBLE = 0;
    private static IcsDownloadManager mIcsDownloadManager;
    private DownloadManager.Query mDownloadFileSizeQuery;
    private long mDownloadID;
    private android.app.DownloadManager mDownloadManager;
    private DownloadManager.Request mRequest;

    private IcsDownloadManager() {
    }

    public static IcsDownloadManager getInstance() {
        if (mIcsDownloadManager == null) {
            mIcsDownloadManager = new IcsDownloadManager();
        }
        return mIcsDownloadManager;
    }

    public Long initclassicDownlaod(Context context, String str, int i, String str2, String str3, String str4) {
        context.getApplicationContext().getExternalFilesDir(null);
        new File(new SimpleDateFormat("yyyyMMdd_HHmmss", Locale.US).format(new Date()) + ".mp4");
        this.mDownloadManager = (android.app.DownloadManager) context.getSystemService("download");
        DownloadManager.Request allowedNetworkTypes = new DownloadManager.Request(Uri.parse(str)).setNotificationVisibility(i).setDestinationInExternalFilesDir(context, null, new File(str4).getAbsolutePath()).setTitle(str2).setDescription(str3).setAllowedNetworkTypes(3);
        this.mRequest = allowedNetworkTypes;
        long enqueue = this.mDownloadManager.enqueue(allowedNetworkTypes);
        this.mDownloadID = enqueue;
        return Long.valueOf(enqueue);
    }

    public int cancelRequest(long... jArr) {
        return this.mDownloadManager.remove(jArr);
    }

    public String getTotalNumberOfBytes(Long l) {
        DownloadManager.Query query = new DownloadManager.Query();
        this.mDownloadFileSizeQuery = query;
        int i = 0;
        query.setFilterById(l.longValue());
        Cursor query2 = this.mDownloadManager.query(this.mDownloadFileSizeQuery);
        while (query2.moveToNext()) {
            i = query2.getInt(query2.getColumnIndex("total_size")) / DurationKt.NANOS_IN_MILLIS;
        }
        return String.valueOf(i) + " MB";
    }

    public String getDownloadedNumberOfBytes(Long l) {
        DownloadManager.Query query = new DownloadManager.Query();
        this.mDownloadFileSizeQuery = query;
        int i = 0;
        query.setFilterById(l.longValue());
        Cursor query2 = this.mDownloadManager.query(this.mDownloadFileSizeQuery);
        while (query2.moveToNext()) {
            i = query2.getInt(query2.getColumnIndex("bytes_so_far")) / DurationKt.NANOS_IN_MILLIS;
        }
        return String.valueOf(i) + "MB";
    }
}

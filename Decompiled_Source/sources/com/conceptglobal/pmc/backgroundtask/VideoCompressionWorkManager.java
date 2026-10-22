package com.conceptglobal.pmc.backgroundtask;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.promotions.video.MediaController;
import com.conceptglobal.pmc.utils.PLog;
import java.io.File;

/* loaded from: classes.dex */
public class VideoCompressionWorkManager extends Worker {
    private static final String NOTIFICATION_CHANNEL_ID = "999";
    private static final String TAG = "VideoCompressionWorkManager";
    private static final String default_notification_channel_id = "default";
    Context mContext;
    Handler mHandler;

    public VideoCompressionWorkManager(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        this.mContext = context;
        this.mHandler = new Handler(Looper.getMainLooper());
    }

    @Override // androidx.work.Worker
    public ListenableWorker.Result doWork() {
        try {
            String string = getInputData().getString("videoFile");
            long j = getInputData().getLong("imageId", 0L);
            String string2 = getInputData().getString("compressedFile");
            PLog.location("VideoSize", "Before Compression", "Compression", (new File(string).length() / 1048576.0f) + "");
            if (!MediaController.getInstance().convertVideo(string, string2)) {
                return null;
            }
            try {
                this.mContext.sendBroadcast(new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE", Uri.fromFile(new File(string))));
                GetDataFromDB.getInstance().executeRawQueryInDBVideo(Queries.getInstance().updatecompressedImage(string2, Long.valueOf(j)));
                GetDataFromDB.getInstance().executeRawQuery(Queries.getInstance().updateCompressionStatus(1, Long.valueOf(j)));
                LocalBroadcastManager.getInstance(this.mContext).sendBroadcast(new Intent("CompressedSuccess"));
                PLog.location("VideoSize", "After Compression", "Compression", (new File(string2).length() / 1048576.0f) + "");
                return null;
            } catch (Exception e) {
                e.printStackTrace();
                PLog.e(TAG, e);
                return null;
            }
        } catch (Exception e2) {
            PLog.e(TAG, e2);
            return null;
        }
    }
}

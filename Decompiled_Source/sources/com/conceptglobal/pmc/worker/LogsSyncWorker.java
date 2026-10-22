package com.conceptglobal.pmc.worker;

import android.content.Context;
import android.content.Intent;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import com.conceptglobal.pmc.service.LogDataSyncService;

/* loaded from: classes.dex */
public class LogsSyncWorker extends Worker {
    private Context context;

    public LogsSyncWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        this.context = context;
    }

    @Override // androidx.work.Worker
    public ListenableWorker.Result doWork() {
        this.context.startService(new Intent(this.context, (Class<?>) LogDataSyncService.class));
        return ListenableWorker.Result.success();
    }
}

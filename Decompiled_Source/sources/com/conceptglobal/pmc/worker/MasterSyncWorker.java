package com.conceptglobal.pmc.worker;

import android.content.Context;
import android.content.Intent;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import com.conceptglobal.pmc.service.MasterSyncService;

/* loaded from: classes.dex */
public class MasterSyncWorker extends Worker {
    private Context context;

    public MasterSyncWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        this.context = context;
    }

    @Override // androidx.work.Worker
    public ListenableWorker.Result doWork() {
        this.context.startService(new Intent(this.context, (Class<?>) MasterSyncService.class));
        return ListenableWorker.Result.success();
    }
}

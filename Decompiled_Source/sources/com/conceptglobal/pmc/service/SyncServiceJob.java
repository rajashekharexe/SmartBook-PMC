package com.conceptglobal.pmc.service;

import android.content.Intent;
import com.evernote.android.job.Job;

/* loaded from: classes.dex */
public class SyncServiceJob extends Job {
    public static final String ACTION_SYNC = "SyncAction";
    public static final String ACTION_SYNC_COUNT_DATA = "com.conceptglobal.pmc.SCHEDULE_SYNC_COUNT_DATA";
    public static final String ACTION_SYNC_LOG_DATA = "com.conceptglobal.pmc.SCHEDULE_SYNC_LOG_DATA";
    public static final String ACTION_SYNC_MASTER_DATA = "com.conceptglobal.pmc.SCHEDULE_SYNC_MASTER_DATA";
    public static final String ACTION_SYNC_TRANSC_DATA = "com.conceptglobal.pmc.SCHEDULE_SEND_DATA";
    public static final String TAG = "job_sync_tag";

    @Override // com.evernote.android.job.Job
    protected Job.Result onRunJob(Job.Params params) {
        Intent intent;
        String str = "" + params.getExtras().get(ACTION_SYNC);
        str.hashCode();
        switch (str) {
            case "com.conceptglobal.pmc.SCHEDULE_SYNC_COUNT_DATA":
                intent = new Intent(getContext(), (Class<?>) DataUpdateService.class);
                break;
            case "com.conceptglobal.pmc.SCHEDULE_SEND_DATA":
                intent = new Intent(getContext(), (Class<?>) SyncDataService.class);
                break;
            case "com.conceptglobal.pmc.SCHEDULE_SYNC_LOG_DATA":
                intent = new Intent(getContext(), (Class<?>) LogDataSyncService.class);
                break;
            case "com.conceptglobal.pmc.SCHEDULE_SYNC_MASTER_DATA":
                intent = new Intent(getContext(), (Class<?>) MasterSyncService.class);
                break;
            default:
                intent = null;
                break;
        }
        getContext().startService(intent);
        return Job.Result.SUCCESS;
    }
}

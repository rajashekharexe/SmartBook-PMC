package com.conceptglobal.pmc;

import android.app.IntentService;
import android.content.Intent;
import android.util.Log;
import com.conceptglobal.pmc.sync.ApplicationPatch;
import com.conceptglobal.pmc.sync.DbPatch;
import com.conceptglobal.pmc.sync.MasterSync;

/* loaded from: classes.dex */
public class AppPatchMasterSyncService extends IntentService {
    private static String LOG_TAG = "AppPatchMasterSyncService";

    public AppPatchMasterSyncService() {
        super("AppPatchMasterSyncService");
    }

    @Override // android.app.IntentService
    protected void onHandleIntent(Intent intent) {
        Log.i(LOG_TAG, "started Sync");
        new ApplicationPatch(getApplicationContext()).startPatchSync(false);
        new MasterSync(getApplicationContext(), true).startMasterSync(false);
        new DbPatch(getApplicationContext(), true).startDbPatch();
    }
}

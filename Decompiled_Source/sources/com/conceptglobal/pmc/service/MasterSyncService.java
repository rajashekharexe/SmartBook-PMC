package com.conceptglobal.pmc.service;

import android.app.IntentService;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.ResultReceiver;
import android.util.Log;
import com.conceptglobal.pmc.PMCApplication;
import com.conceptglobal.pmc.asynctask.SendRequestToServerAsync;
import com.conceptglobal.pmc.database.DataBaseHandler;
import com.conceptglobal.pmc.fragments.HomePageFragment;
import com.conceptglobal.pmc.model.SendAckList;
import com.conceptglobal.pmc.model.SendAckListSV;
import com.conceptglobal.pmc.model.SendSVAckForApproval;
import com.conceptglobal.pmc.sync.MasterSync;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import com.conceptglobal.pmcdeepakfertilizers.R;
import java.util.Calendar;

/* loaded from: classes.dex */
public class MasterSyncService extends IntentService {
    private String TAG;
    Bundle bundle;
    private String callbackActivity;
    private Context context;
    boolean isTargetVsPlanData;
    private SendAckList objAck;
    private SendAckListSV objAcksv;
    private SendSVAckForApproval objAcksvforApproval;
    private ResultReceiver receiver;
    private SendRequestToServerAsync sendRequest;

    public MasterSyncService() {
        super("MasterSyncService");
        this.TAG = "SetupPMC";
        this.context = this;
        this.objAck = new SendAckList();
        this.objAcksv = new SendAckListSV();
        this.objAcksvforApproval = new SendSVAckForApproval();
        this.bundle = new Bundle();
    }

    @Override // android.app.IntentService
    protected void onHandleIntent(Intent intent) {
        Log.i("MasterSyncService", "onHandleIntent");
        if (DataBaseHandler.getInstance().checkDataBase()) {
            this.receiver = (ResultReceiver) intent.getParcelableExtra("receiver");
            if (intent.hasExtra("callbackActivity")) {
                this.callbackActivity = intent.getStringExtra("callbackActivity");
            }
            if (intent.hasExtra("TargetVsPlan")) {
                this.isTargetVsPlanData = intent.getBooleanExtra("TargetVsPlan", false);
            }
            Log.i(this.TAG, "callbackActivity--" + this.callbackActivity);
            if (UtilDeclarations.isOnline(getApplicationContext())) {
                ResultReceiver resultReceiver = this.receiver;
                if (resultReceiver != null) {
                    resultReceiver.send(0, Bundle.EMPTY);
                }
                doMasterSync();
                return;
            }
            updateUIIfNeccessary(getResources().getString(R.string.no_internet_msg));
        }
    }

    private void doMasterSync() {
        Log.i("Master sync start Time", Calendar.getInstance().getTime().toString());
        if (UtilDeclarations.isOnline(this)) {
            if (this.isTargetVsPlanData) {
                new MasterSync(getApplicationContext(), false, true).startMasterSync(false);
                updateUIIfNeccessary("Sync completed");
            } else {
                new MasterSync(getApplicationContext(), false).startMasterSync(false);
                updateUIIfNeccessary("Sync completed");
            }
        }
        Log.i("Master sync End Time", Calendar.getInstance().getTime().toString());
    }

    private void updateUIIfNeccessary(String str) {
        if (this.bundle == null) {
            this.bundle = new Bundle();
        }
        Log.i(this.TAG, "response--" + str);
        this.bundle.putString("respMsg", str);
        if (this.receiver != null) {
            Log.i(this.TAG, "sending back ");
            String str2 = this.callbackActivity;
            if (str2 != null) {
                this.bundle.putString("callbackActivity", str2);
            }
            this.receiver.send(1, this.bundle);
        }
        if (((PMCApplication) getApplication()).isHomeFragmentActive()) {
            HomePageFragment.setRefreshActionButtonState(false);
        }
    }
}

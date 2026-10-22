package com.conceptglobal.pmc;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.conceptglobal.pmc.asynctask.SendRequestToServerAsync;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.interfaces.OnCompleteListener;
import com.conceptglobal.pmc.interfaces.OnResultReceiver;
import com.conceptglobal.pmc.model.AssignmentActivityDetailsModel;
import com.conceptglobal.pmc.model.AssignmentVisitDetails;
import com.conceptglobal.pmc.model.FarmerCropMapping;
import com.conceptglobal.pmc.model.ImageDetails;
import com.conceptglobal.pmc.model.SendFarmerDetailsModel;
import com.conceptglobal.pmc.model.SendPictureSyncObject;
import com.conceptglobal.pmc.service.SyncDataService;
import com.conceptglobal.pmc.utils.ConstantDeclarations;
import com.conceptglobal.pmc.utils.FileUtils;
import com.conceptglobal.pmc.utils.PLog;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.apache.http.client.ClientProtocolException;

/* loaded from: classes.dex */
public class SyncPMC extends Activity implements OnResultReceiver {
    boolean Tableexistsornot;
    private Context context;
    int countFarmerDetails;
    int countofApprovalStatus;
    private Intent intentGetData;
    private Activity mActivity;
    private Handler mHandler;
    public SyncResultReceiver mReceiver;
    private String msg;
    private ProgressDialog progressDialog;
    private RelativeLayout rlSyncScreen;
    private SendRequestToServerAsync sendRequest;
    private TextView tvProgressMessage;
    private String TAG = "SyncPMC";
    private boolean isActivityInForeground = true;
    private OnCompleteListener syncImagesListener = new OnCompleteListener() { // from class: com.conceptglobal.pmc.SyncPMC.1
        @Override // com.conceptglobal.pmc.interfaces.OnCompleteListener
        public void onComplete(String str, Exception exc) {
            if (exc == null) {
                Log.d("syncPMCListener", str + "");
                if (str != null && str.length() > 2) {
                    str.replace("[", "").replace("]", "").replace("\"", "");
                    List asList = Arrays.asList(Arrays.asList(str.split(",")).toString().replace("[", "").replace("]", "").replace("\"", "").split(","));
                    for (int i = 0; i < asList.size(); i++) {
                        try {
                            GetDataFromDB.getInstance().executeRawQueryInDB(Queries.getInstance().getUpdateImageActDetails(((String) asList.get(i)).trim()));
                        } catch (Exception e) {
                            PLog.e(SyncPMC.this.TAG, e);
                        }
                    }
                    SyncPMC.this.startActivity(new Intent(SyncPMC.this.context, (Class<?>) MainHomePageActivity.class).addFlags(335544320));
                    SyncPMC.this.finish();
                    return;
                }
                SyncPMC syncPMC = SyncPMC.this;
                syncPMC.showAlert(syncPMC.context.getResources().getString(com.conceptglobal.pmcdeepakfertilizers.R.string.pmc_val_wrong_resp), 1);
                return;
            }
            if (exc instanceof ClientProtocolException) {
                SyncPMC syncPMC2 = SyncPMC.this;
                syncPMC2.showAlert(syncPMC2.context.getResources().getString(com.conceptglobal.pmcdeepakfertilizers.R.string.pmc_val_getting_resp), 1);
                PLog.e(SyncPMC.this.TAG, exc);
            } else if (exc instanceof IOException) {
                SyncPMC syncPMC3 = SyncPMC.this;
                syncPMC3.showAlert(syncPMC3.context.getResources().getString(com.conceptglobal.pmcdeepakfertilizers.R.string.pmc_val_receive_resp), 1);
                PLog.e(SyncPMC.this.TAG, exc);
            } else {
                SyncPMC syncPMC4 = SyncPMC.this;
                syncPMC4.showAlert(syncPMC4.context.getResources().getString(com.conceptglobal.pmcdeepakfertilizers.R.string.pmc_val_parse_resp), 1);
                PLog.e(SyncPMC.this.TAG, exc);
            }
        }
    };
    private OnCompleteListener syncPMCListener = new AnonymousClass2();
    Runnable mDialogRunnable = new Runnable() { // from class: com.conceptglobal.pmc.SyncPMC.5
        @Override // java.lang.Runnable
        public void run() {
            SyncPMC syncPMC = SyncPMC.this;
            syncPMC.showAlertDialog(syncPMC.msg);
        }
    };
    Runnable mRunnable = new Runnable() { // from class: com.conceptglobal.pmc.SyncPMC.6
        @Override // java.lang.Runnable
        public void run() {
            Toast.makeText(SyncPMC.this.mActivity.getApplicationContext(), SyncPMC.this.msg, 0).show();
        }
    };

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(com.conceptglobal.pmcdeepakfertilizers.R.layout.sync_screen);
        init();
        this.mActivity = this;
        SyncResultReceiver syncResultReceiver = new SyncResultReceiver(new Handler());
        this.mReceiver = syncResultReceiver;
        syncResultReceiver.setReceiver(this);
        if (UtilDeclarations.isOnline(this.context)) {
            if (!UtilDeclarations.isServiceRunning(getApplicationContext(), SyncDataService.class)) {
                Intent intent = new Intent(this, (Class<?>) SyncDataService.class);
                intent.putExtra("callbackActivity", "SyncPMC");
                intent.putExtra("receiver", this.mReceiver);
                startService(intent);
                return;
            }
            showAlertDialog(getString(com.conceptglobal.pmcdeepakfertilizers.R.string.data_sending_in_bg));
            return;
        }
        showAlert(getResources().getString(com.conceptglobal.pmcdeepakfertilizers.R.string.pmc_check_internet), 1);
    }

    private void init() {
        this.intentGetData = getIntent();
        this.context = this;
        this.tvProgressMessage = (TextView) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tvprogress_message);
        RelativeLayout relativeLayout = (RelativeLayout) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.rl_sync_screen);
        this.rlSyncScreen = relativeLayout;
        relativeLayout.setBackgroundColor(getResources().getColor(com.conceptglobal.pmcdeepakfertilizers.R.color.transparent_one));
    }

    private void syncPMC() {
        this.tvProgressMessage.setText(this.context.getResources().getString(com.conceptglobal.pmcdeepakfertilizers.R.string.pmc_label_syncing_data));
        List<AssignmentActivityDetailsModel> farmerActivityDetails = GetDataFromDB.getInstance().getFarmerActivityDetails(Queries.getInstance().getSelectFarmerActDetails());
        List<FarmerCropMapping> farmerCropMappingDetails = GetDataFromDB.getInstance().getFarmerCropMappingDetails(Queries.getInstance().getSelectFarmerCropMapping());
        GetDataFromDB.getInstance().getListFarmereDetails(Queries.getInstance().getSelectFarmerListDetails());
        List<AssignmentVisitDetails> assignmentVisitDetails = GetDataFromDB.getInstance().getAssignmentVisitDetails(Queries.getInstance().getSelectAssignmentVisitDetails());
        Gson create = new GsonBuilder().disableHtmlEscaping().create();
        SendFarmerDetailsModel sendFarmerDetailsModel = new SendFarmerDetailsModel();
        sendFarmerDetailsModel.setAssignmentActivitiesModel(farmerActivityDetails);
        sendFarmerDetailsModel.setFarmerCropmappingModel(farmerCropMappingDetails);
        sendFarmerDetailsModel.setAssignmentVisitModel(assignmentVisitDetails);
        String json = create.toJson(sendFarmerDetailsModel);
        Log.d("syncPMCListenerOBJ", json + "");
        SendRequestToServerAsync sendRequestToServerAsync = new SendRequestToServerAsync(this.context, this.syncPMCListener, json, ConstantsPMC.getInstance().getUrlPMCService(ConstantsPMC.getInstance().getIsTrainingORLive()) + "/" + ConstantsPMC.getInstance().getMethodSyncPMCData(), false);
        this.sendRequest = sendRequestToServerAsync;
        sendRequestToServerAsync.execute(new Void[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void syncImageDetailsTable() {
        this.tvProgressMessage.setText("Sending pictures data to server,please wait..");
        List<ImageDetails> arrayList = new ArrayList<>();
        try {
            arrayList = GetDataFromDB.getInstance().getImageDetailsList(Queries.getInstance().getImageDetails());
        } catch (Exception e) {
            e.printStackTrace();
            PLog.e("SyncPMC", e);
        }
        SendPictureSyncObject sendPictureSyncObject = new SendPictureSyncObject();
        sendPictureSyncObject.setPictureRecords(arrayList);
        String json = new GsonBuilder().disableHtmlEscaping().create().toJson(sendPictureSyncObject);
        try {
            File file = new File(FileUtils.getDataDir(PMCApplication.getContext()).getAbsolutePath(), "NBHCImageObject");
            if (!file.exists()) {
                file.mkdirs();
            }
            FileWriter fileWriter = new FileWriter(new File(file, "imageobj1.txt"));
            fileWriter.append((CharSequence) json);
            fileWriter.flush();
            fileWriter.close();
        } catch (Exception e2) {
            e2.printStackTrace();
            PLog.e("SyncPMC", e2);
        }
        Log.d("syncImagesListenerOBJ", json + "");
        new SendRequestToServerAsync(this.context, this.syncImagesListener, json, ConstantsPMC.getInstance().getUrlPMCService(ConstantsPMC.getInstance().getIsTrainingORLive()) + "/" + ConstantsPMC.getInstance().getMethodSyncData(), false).execute(new Void[0]);
    }

    public String convertStandardJSONString(String str) {
        return str.replace("\\", "").replace("\"{", "{").replace("}\",", "},").replace("}\"", "}");
    }

    /* renamed from: com.conceptglobal.pmc.SyncPMC$2, reason: invalid class name */
    class AnonymousClass2 implements OnCompleteListener {
        AnonymousClass2() {
        }

        @Override // com.conceptglobal.pmc.interfaces.OnCompleteListener
        public void onComplete(final String str, Exception exc) {
            int i;
            if (exc == null) {
                Log.d("syncPMCListener", str);
                if (str != null && str.length() > 2) {
                    new Thread(new Runnable() { // from class: com.conceptglobal.pmc.SyncPMC.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                str.replace("\"", "");
                                List asList = Arrays.asList(str.split(","));
                                for (int i2 = 0; i2 < asList.size(); i2++) {
                                    if (((String) asList.get(i2)).length() > 2) {
                                        if (((String) asList.get(i2)).contains(ConstantDeclarations.getInstance().getTblAssighmentActivityDetails())) {
                                            try {
                                                GetDataFromDB.getInstance().executeRawQueryInDB(Queries.getInstance().getDeleteFarmerActDetails());
                                            } catch (Exception e) {
                                                PLog.e(SyncPMC.this.TAG, e);
                                            }
                                        }
                                        if (((String) asList.get(i2)).contains(ConstantDeclarations.getInstance().getTBLCROPMAPPING())) {
                                            try {
                                                GetDataFromDB.getInstance().executeRawQueryInDB(Queries.getInstance().getDeleteFarmerCropMapping());
                                            } catch (Exception e2) {
                                                PLog.e(SyncPMC.this.TAG, e2);
                                            }
                                        }
                                        if (((String) asList.get(i2)).contains(ConstantDeclarations.getInstance().getTBLFARMERS())) {
                                            try {
                                                GetDataFromDB.getInstance().executeRawQueryInDB(Queries.getInstance().getDeleteFarmerLastvisitDetails());
                                                GetDataFromDB.getInstance().executeRawQueryInDB(Queries.getInstance().getDeleteFarmerDetails());
                                            } catch (Exception e3) {
                                                PLog.e(SyncPMC.this.TAG, e3);
                                            }
                                        }
                                        if (((String) asList.get(i2)).contains(ConstantDeclarations.getInstance().getTBLASSIGNMENTVISITDETAILS())) {
                                            try {
                                                GetDataFromDB.getInstance().executeRawQueryInDB(Queries.getInstance().getDeleteAssignmentVisitDetails());
                                            } catch (Exception e4) {
                                                PLog.e(SyncPMC.this.TAG, e4);
                                            }
                                        }
                                    }
                                }
                                SyncPMC.this.runOnUiThread(new Runnable() { // from class: com.conceptglobal.pmc.SyncPMC.2.1.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        try {
                                            String stringExtra = SyncPMC.this.intentGetData.getStringExtra(ConstantDeclarations.getInstance().getKeyfromwhichclass());
                                            if (stringExtra == null || stringExtra.trim().length() <= 0) {
                                                SyncPMC.this.startActivity(new Intent(SyncPMC.this.context, (Class<?>) SetupPMC.class).addFlags(67108864));
                                                SyncPMC.this.finish();
                                            } else if (stringExtra.equalsIgnoreCase("fromfarmerformactivity")) {
                                                if (ConstantsPMC.getInstance().getIssupervisor() != 1 || !ConstantsPMC.getInstance().getRoleID().equalsIgnoreCase("2")) {
                                                    SyncPMC.this.syncImageDetailsTable();
                                                }
                                            } else if (!stringExtra.equalsIgnoreCase("frommbaactivity")) {
                                                SyncPMC.this.startActivity(new Intent(SyncPMC.this.context, (Class<?>) SetupPMC.class).addFlags(67108864));
                                                SyncPMC.this.finish();
                                            } else if (ConstantsPMC.getInstance().getIssupervisor() != 1 || !ConstantsPMC.getInstance().getRoleID().equalsIgnoreCase("2")) {
                                                SyncPMC.this.syncImageDetailsTable();
                                            }
                                        } catch (Exception e5) {
                                            PLog.e(SyncPMC.this.TAG, e5);
                                        }
                                    }
                                });
                            } catch (Exception e5) {
                                PLog.e(SyncPMC.this.TAG, e5);
                                SyncPMC.this.runOnUiThread(new Runnable() { // from class: com.conceptglobal.pmc.SyncPMC.2.1.2
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        SyncPMC.this.showAlert(SyncPMC.this.context.getResources().getString(com.conceptglobal.pmcdeepakfertilizers.R.string.pmc_val_processing_error_resp), 1);
                                    }
                                });
                            }
                        }
                    }).start();
                    return;
                }
                try {
                    i = GetDataFromDB.getInstance().getcount(Queries.getInstance().getGetCountofPMCImages());
                } catch (Exception e) {
                    e.printStackTrace();
                    PLog.e(SyncPMC.this.TAG, e);
                    i = 0;
                }
                if (i > 0) {
                    SyncPMC.this.syncImageDetailsTable();
                    return;
                } else {
                    SyncPMC syncPMC = SyncPMC.this;
                    syncPMC.showAlert(syncPMC.context.getResources().getString(com.conceptglobal.pmcdeepakfertilizers.R.string.pmc_val_wrong_resp), 1);
                    return;
                }
            }
            if (exc instanceof ClientProtocolException) {
                SyncPMC syncPMC2 = SyncPMC.this;
                syncPMC2.showAlert(syncPMC2.context.getResources().getString(com.conceptglobal.pmcdeepakfertilizers.R.string.pmc_val_getting_resp), 1);
                PLog.e(SyncPMC.this.TAG, exc);
            } else if (exc instanceof IOException) {
                SyncPMC syncPMC3 = SyncPMC.this;
                syncPMC3.showAlert(syncPMC3.context.getResources().getString(com.conceptglobal.pmcdeepakfertilizers.R.string.pmc_val_receive_resp), 1);
                PLog.e(SyncPMC.this.TAG, exc);
            } else {
                SyncPMC syncPMC4 = SyncPMC.this;
                syncPMC4.showAlert(syncPMC4.context.getResources().getString(com.conceptglobal.pmcdeepakfertilizers.R.string.pmc_val_parse_resp), 1);
                PLog.e(SyncPMC.this.TAG, exc);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showAlert(String str, final int i) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.context);
        builder.setMessage(str).setCancelable(false).setPositiveButton(android.R.string.ok, new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.SyncPMC.3
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                dialogInterface.dismiss();
                int i3 = i;
                if (i3 == 0) {
                    SyncPMC.this.finish();
                } else {
                    if (i3 != 1) {
                        return;
                    }
                    SyncPMC.this.startActivity(new Intent(SyncPMC.this.context, (Class<?>) SetupPMC.class).addFlags(67108864));
                    SyncPMC.this.finish();
                }
            }
        });
        AlertDialog show = builder.show();
        if (UtilDeclarations.isTablet(this.context)) {
            UtilDeclarations.makeTabletDialogTextlarge(show);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showAlertDialog(String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setMessage(str).setCancelable(false).setPositiveButton(com.conceptglobal.pmcdeepakfertilizers.R.string.ok, new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.SyncPMC.4
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        });
        AlertDialog show = builder.show();
        if (UtilDeclarations.isTablet(this.context)) {
            UtilDeclarations.makeTabletDialogTextlarge(show);
        }
    }

    @Override // com.conceptglobal.pmc.interfaces.OnResultReceiver
    public void onReceiveResult(int i, Bundle bundle) {
        if (i == 0) {
            ProgressDialog progressDialog = this.progressDialog;
            if (progressDialog == null || !progressDialog.isShowing()) {
                this.progressDialog = ProgressDialog.show(this.mActivity, null, "Sending data to server, Please wait..");
                return;
            }
            return;
        }
        if (i != 1) {
            return;
        }
        String string = bundle.getString("respMsg");
        String string2 = bundle.getString("callbackActivity");
        Log.i(this.TAG, "Act response--" + string);
        Log.i(this.TAG, "Act callbackActivity--" + string2);
        notifyUser(string2, string);
    }

    private void notifyUser(String str, String str2) {
        if (str.equals("SyncPMC")) {
            if (this.isActivityInForeground) {
                ProgressDialog progressDialog = this.progressDialog;
                if (progressDialog != null && progressDialog.isShowing()) {
                    this.progressDialog.dismiss();
                }
                Handler handler = new Handler(Looper.getMainLooper());
                this.mHandler = handler;
                this.msg = str2;
                handler.post(this.mDialogRunnable);
                return;
            }
            if (UtilDeclarations.isAppRunningInForeground(getApplicationContext())) {
                Handler handler2 = new Handler(Looper.getMainLooper());
                this.mHandler = handler2;
                this.msg = str2;
                handler2.post(this.mRunnable);
            }
        }
    }
}

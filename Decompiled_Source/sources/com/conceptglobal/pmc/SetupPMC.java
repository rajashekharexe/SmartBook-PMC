package com.conceptglobal.pmc;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.KeyEvent;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.conceptglobal.pmc.asynctask.MasterSyncAsyncTask;
import com.conceptglobal.pmc.asynctask.SendRequestToServerAsync;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.database.InsertDataIntoDB;
import com.conceptglobal.pmc.interfaces.NetworkListener;
import com.conceptglobal.pmc.interfaces.OnCompleteListener;
import com.conceptglobal.pmc.model.FOPendingStatus;
import com.conceptglobal.pmc.model.GetSVFarmerDetails;
import com.conceptglobal.pmc.model.GetSegmentationDetails;
import com.conceptglobal.pmc.model.PmcRetailersModel;
import com.conceptglobal.pmc.model.SVAssignAFCount;
import com.conceptglobal.pmc.model.SendAckList;
import com.conceptglobal.pmc.model.SendAckListSV;
import com.conceptglobal.pmc.model.SendDetailsForFarmerDetails;
import com.conceptglobal.pmc.model.SendDetailsForRetailersModel;
import com.conceptglobal.pmc.model.SendSVAckForApproval;
import com.conceptglobal.pmc.utils.ConstantDeclarations;
import com.conceptglobal.pmc.utils.PLog;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import de.keyboardsurfer.android.widget.crouton.Crouton;
import de.keyboardsurfer.android.widget.crouton.Style;
import java.io.Reader;
import java.io.StringReader;
import java.util.List;
import okhttp3.HttpUrl;

/* loaded from: classes.dex */
public class SetupPMC extends Activity implements NetworkListener {
    private Context context;
    private SendAckList objAck;
    private SendAckListSV objAcksv;
    private SendSVAckForApproval objAcksvforApproval;
    private RelativeLayout rlSyncScreen;
    private SendRequestToServerAsync sendRequest;
    private TextView tvProgressMessage;
    private String TAG = "SetupPMC";
    private int retailerCount = 0;
    private OnCompleteListener getSVFarmerListListener = new AnonymousClass1();
    private OnCompleteListener getRetailersListListener = new AnonymousClass2();
    private OnCompleteListener getFarmerListListener = new AnonymousClass3();
    private OnCompleteListener getAckReceiptListener = new OnCompleteListener() { // from class: com.conceptglobal.pmc.SetupPMC.4
        @Override // com.conceptglobal.pmc.interfaces.OnCompleteListener
        public void onComplete(String str, Exception exc) {
            if (exc == null) {
                Log.d("getAckReceiptListener", str + "");
                String trim = ConstantsPMC.getInstance().getRoleID().trim();
                if (str != null && str.length() > 5) {
                    if (str.contains(SetupPMC.this.getResources().getString(com.conceptglobal.pmcdeepakfertilizers.R.string.success_message))) {
                        if (trim.length() <= 0) {
                            SetupPMC.this.redirectoHome();
                            return;
                        } else if (Integer.parseInt(trim) != 2) {
                            SetupPMC.this.redirectoHome();
                            return;
                        } else {
                            SetupPMC.this.getPMCSVFarmerDetailsFromServer();
                            return;
                        }
                    }
                    SetupPMC setupPMC = SetupPMC.this;
                    setupPMC.showAlert(setupPMC.context.getResources().getString(com.conceptglobal.pmcdeepakfertilizers.R.string.pmc_val_wrong_ack), ConstantDeclarations.Enumaration.mRequestType2.value().intValue());
                    return;
                }
                if (trim.length() > 0) {
                    if (Integer.parseInt(trim) == 2) {
                        SetupPMC.this.getPMCSVFarmerDetailsFromServer();
                        return;
                    } else {
                        SetupPMC setupPMC2 = SetupPMC.this;
                        setupPMC2.showAlert(setupPMC2.context.getResources().getString(com.conceptglobal.pmcdeepakfertilizers.R.string.pmc_val_wrong_resp), ConstantDeclarations.Enumaration.mRequestType2.value().intValue());
                        return;
                    }
                }
                SetupPMC setupPMC3 = SetupPMC.this;
                setupPMC3.showAlert(setupPMC3.context.getResources().getString(com.conceptglobal.pmcdeepakfertilizers.R.string.pmc_val_wrong_resp), ConstantDeclarations.Enumaration.mRequestType2.value().intValue());
                return;
            }
            SetupPMC setupPMC4 = SetupPMC.this;
            setupPMC4.showAlert(setupPMC4.context.getResources().getString(com.conceptglobal.pmcdeepakfertilizers.R.string.pmc_val_getting_resp), ConstantDeclarations.Enumaration.mRequestType2.value().intValue());
            PLog.e(SetupPMC.this.TAG, exc);
        }
    };
    private OnCompleteListener getsvAckReceiptListener = new OnCompleteListener() { // from class: com.conceptglobal.pmc.SetupPMC.5
        @Override // com.conceptglobal.pmc.interfaces.OnCompleteListener
        public void onComplete(String str, Exception exc) {
            if (exc == null) {
                Log.d("getsvAckReceiptListener", str + "");
                if (str != null && str.length() > 5) {
                    if (str.contains(SetupPMC.this.getResources().getString(com.conceptglobal.pmcdeepakfertilizers.R.string.success_message))) {
                        SetupPMC.this.sendSVApprovalFarmersRequest();
                        return;
                    } else {
                        SetupPMC setupPMC = SetupPMC.this;
                        setupPMC.showAlert(setupPMC.context.getResources().getString(com.conceptglobal.pmcdeepakfertilizers.R.string.pmc_val_wrong_ack), ConstantDeclarations.Enumaration.mRequestType4.value().intValue());
                        return;
                    }
                }
                SetupPMC setupPMC2 = SetupPMC.this;
                setupPMC2.showAlert(setupPMC2.context.getResources().getString(com.conceptglobal.pmcdeepakfertilizers.R.string.pmc_val_wrong_resp), ConstantDeclarations.Enumaration.mRequestType4.value().intValue());
                return;
            }
            SetupPMC setupPMC3 = SetupPMC.this;
            setupPMC3.showAlert(setupPMC3.context.getResources().getString(com.conceptglobal.pmcdeepakfertilizers.R.string.pmc_val_getting_resp), ConstantDeclarations.Enumaration.mRequestType4.value().intValue());
            PLog.e(SetupPMC.this.TAG, exc);
        }
    };
    private OnCompleteListener getSVFarmerApprovalListListener = new AnonymousClass6();
    private OnCompleteListener getsvApprovalAckReceiptListener = new OnCompleteListener() { // from class: com.conceptglobal.pmc.SetupPMC.7
        @Override // com.conceptglobal.pmc.interfaces.OnCompleteListener
        public void onComplete(String str, Exception exc) {
            if (exc == null) {
                if (str != null && str.length() > 5) {
                    if (str.contains(SetupPMC.this.getResources().getString(com.conceptglobal.pmcdeepakfertilizers.R.string.success_message))) {
                        SetupPMC.this.getSVAssignPendingFromServer();
                        return;
                    } else {
                        SetupPMC setupPMC = SetupPMC.this;
                        setupPMC.showAlert(setupPMC.context.getResources().getString(com.conceptglobal.pmcdeepakfertilizers.R.string.pmc_val_wrong_ack), ConstantDeclarations.Enumaration.mRequestType5.value().intValue());
                        return;
                    }
                }
                SetupPMC setupPMC2 = SetupPMC.this;
                setupPMC2.showAlert(setupPMC2.context.getResources().getString(com.conceptglobal.pmcdeepakfertilizers.R.string.pmc_val_wrong_resp), ConstantDeclarations.Enumaration.mRequestType5.value().intValue());
                return;
            }
            SetupPMC setupPMC3 = SetupPMC.this;
            setupPMC3.showAlert(setupPMC3.context.getResources().getString(com.conceptglobal.pmcdeepakfertilizers.R.string.pmc_val_parse_resp), ConstantDeclarations.Enumaration.mRequestType5.value().intValue());
            PLog.e(SetupPMC.this.TAG, exc);
        }
    };
    private OnCompleteListener getAssignListListener = new AnonymousClass8();

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(com.conceptglobal.pmcdeepakfertilizers.R.layout.sync_screen);
        init();
        setData();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void init() {
        this.context = this;
        this.tvProgressMessage = (TextView) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tvprogress_message);
        this.rlSyncScreen = (RelativeLayout) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.rl_sync_screen);
        this.objAck = new SendAckList();
        this.objAcksv = new SendAckListSV();
        this.objAcksvforApproval = new SendSVAckForApproval();
    }

    private void setData() {
        if (UtilDeclarations.isOnline(this.context)) {
            setupPMC();
        } else {
            showAlert(getResources().getString(com.conceptglobal.pmcdeepakfertilizers.R.string.pmc_no_internet), ConstantDeclarations.Enumaration.mRequestType2.value().intValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setupPMC() {
        try {
            this.tvProgressMessage.setText(this.context.getResources().getString(com.conceptglobal.pmcdeepakfertilizers.R.string.pmc_label_getting_retailers));
            this.rlSyncScreen.setBackgroundColor(getResources().getColor(com.conceptglobal.pmcdeepakfertilizers.R.color.transparent_one));
            SendDetailsForRetailersModel sendDetailsForRetailersModel = new SendDetailsForRetailersModel();
            Gson gson = new Gson();
            sendDetailsForRetailersModel.setTerritoryId(ConstantsPMC.getInstance().getTeritoryId());
            sendDetailsForRetailersModel.setPDAID(ConstantsPMC.getInstance().getDeviceID());
            String json = gson.toJson(sendDetailsForRetailersModel);
            SendRequestToServerAsync sendRequestToServerAsync = new SendRequestToServerAsync(this.context, this.getRetailersListListener, json, ConstantsPMC.getInstance().getUrlPMCService(ConstantsPMC.getInstance().getIsTrainingORLive()) + "/" + ConstantsPMC.getInstance().getMethodGetDealerList(), false);
            this.sendRequest = sendRequestToServerAsync;
            sendRequestToServerAsync.execute(new Void[0]);
        } catch (Exception e) {
            PLog.e(this.TAG, e);
        }
    }

    private void getPMCFarmerDetailsFromServer() {
        try {
            this.tvProgressMessage.setText(this.context.getResources().getString(com.conceptglobal.pmcdeepakfertilizers.R.string.pmc_label_getting_farmers));
            this.rlSyncScreen.setBackgroundColor(getResources().getColor(com.conceptglobal.pmcdeepakfertilizers.R.color.transparent_three));
            SendDetailsForFarmerDetails sendDetailsForFarmerDetails = new SendDetailsForFarmerDetails();
            Gson gson = new Gson();
            sendDetailsForFarmerDetails.setPDAID(ConstantsPMC.getInstance().getDeviceID().toString());
            String json = gson.toJson(sendDetailsForFarmerDetails);
            Log.d("getFarmerListListenerOBJ", json + "");
            SendRequestToServerAsync sendRequestToServerAsync = new SendRequestToServerAsync(this.context, this.getFarmerListListener, json, ConstantsPMC.getInstance().getUrlPMCService(ConstantsPMC.getInstance().getIsTrainingORLive()) + "/" + ConstantsPMC.getInstance().getMethodGetSegmentationDetails(), false);
            this.sendRequest = sendRequestToServerAsync;
            sendRequestToServerAsync.execute(new Void[0]);
        } catch (Exception e) {
            PLog.e(this.TAG, e);
        }
    }

    public void getPMCSVFarmerDetailsFromServer() {
        try {
            this.tvProgressMessage.setText(this.context.getResources().getString(com.conceptglobal.pmcdeepakfertilizers.R.string.pmc_label_getting_svfarmers));
            this.rlSyncScreen.setBackgroundColor(getResources().getColor(com.conceptglobal.pmcdeepakfertilizers.R.color.transparent_three));
            GetSVFarmerDetails getSVFarmerDetails = new GetSVFarmerDetails();
            Gson gson = new Gson();
            getSVFarmerDetails.setPdaid(ConstantsPMC.getInstance().getDeviceID().toString());
            getSVFarmerDetails.setUsertype(ConstantsPMC.getInstance().getRoleID().toString());
            String json = gson.toJson(getSVFarmerDetails);
            SendRequestToServerAsync sendRequestToServerAsync = new SendRequestToServerAsync(this.context, this.getSVFarmerListListener, json, ConstantsPMC.getInstance().getUrlPMCService(ConstantsPMC.getInstance().getIsTrainingORLive()) + "/" + ConstantsPMC.getInstance().getMethodGetSVFarmerDetails(), false);
            this.sendRequest = sendRequestToServerAsync;
            sendRequestToServerAsync.execute(new Void[0]);
        } catch (Exception e) {
            PLog.e(this.TAG, e);
        }
    }

    private void sendAcktoServer() {
        this.tvProgressMessage.setText(this.context.getResources().getString(com.conceptglobal.pmcdeepakfertilizers.R.string.pmc_label_sending_ack_server));
        this.rlSyncScreen.setBackgroundColor(getResources().getColor(com.conceptglobal.pmcdeepakfertilizers.R.color.transparent_five));
        Gson gson = new Gson();
        this.objAck.setPDAID(ConstantsPMC.getInstance().getDeviceID().toString());
        String json = gson.toJson(this.objAck);
        Log.d("getAckReceiptListenerOBJ", json + "");
        SendRequestToServerAsync sendRequestToServerAsync = new SendRequestToServerAsync(this.context, this.getAckReceiptListener, json, ConstantsPMC.getInstance().getUrlPMCService(ConstantsPMC.getInstance().getIsTrainingORLive()) + "/" + ConstantsPMC.getInstance().getMethodSendACK(), false);
        this.sendRequest = sendRequestToServerAsync;
        sendRequestToServerAsync.execute(new Void[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendSVAcktoServer() {
        this.tvProgressMessage.setText(this.context.getResources().getString(com.conceptglobal.pmcdeepakfertilizers.R.string.pmc_label_sending_ack_server));
        this.rlSyncScreen.setBackgroundColor(getResources().getColor(com.conceptglobal.pmcdeepakfertilizers.R.color.transparent_five));
        Gson gson = new Gson();
        this.objAcksv.setPDAID(ConstantsPMC.getInstance().getDeviceID().toString());
        String json = gson.toJson(this.objAcksv);
        Log.d("getsvAckReceiptListenerOBJ", json + "");
        SendRequestToServerAsync sendRequestToServerAsync = new SendRequestToServerAsync(this.context, this.getsvAckReceiptListener, json, ConstantsPMC.getInstance().getUrlPMCService(ConstantsPMC.getInstance().getIsTrainingORLive()) + "/" + ConstantsPMC.getInstance().getMethodSVSendACK(), false);
        this.sendRequest = sendRequestToServerAsync;
        sendRequestToServerAsync.execute(new Void[0]);
    }

    /* renamed from: com.conceptglobal.pmc.SetupPMC$1, reason: invalid class name */
    class AnonymousClass1 implements OnCompleteListener {
        AnonymousClass1() {
        }

        @Override // com.conceptglobal.pmc.interfaces.OnCompleteListener
        public void onComplete(String str, Exception exc) {
            if (exc == null) {
                Log.d("getSVFarmerListListener", str);
                if (str != null && str.length() > 12) {
                    new Thread(new Runnable() { // from class: com.conceptglobal.pmc.SetupPMC.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                SetupPMC.this.runOnUiThread(new Runnable() { // from class: com.conceptglobal.pmc.SetupPMC.1.1.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        SetupPMC.this.tvProgressMessage.setText(SetupPMC.this.context.getResources().getString(com.conceptglobal.pmcdeepakfertilizers.R.string.pmc_label_storing_svfarmers));
                                        SetupPMC.this.rlSyncScreen.setBackgroundColor(SetupPMC.this.getResources().getColor(com.conceptglobal.pmcdeepakfertilizers.R.color.transparent_four));
                                    }
                                });
                                new Gson();
                                SetupPMC.this.runOnUiThread(new Runnable() { // from class: com.conceptglobal.pmc.SetupPMC.1.1.2
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        SetupPMC.this.sendSVAcktoServer();
                                    }
                                });
                            } catch (Exception e) {
                                PLog.e(SetupPMC.this.TAG, e);
                                SetupPMC.this.runOnUiThread(new Runnable() { // from class: com.conceptglobal.pmc.SetupPMC.1.1.3
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        SetupPMC.this.showAlert(SetupPMC.this.context.getResources().getString(com.conceptglobal.pmcdeepakfertilizers.R.string.pmc_val_processing_error_resp), ConstantDeclarations.Enumaration.mRequestType2.value().intValue());
                                    }
                                });
                            }
                        }
                    }).start();
                    return;
                } else if (str != null && str.contains(SetupPMC.this.getResources().getString(com.conceptglobal.pmcdeepakfertilizers.R.string.pmc_valid_no_data))) {
                    SetupPMC.this.runOnUiThread(new Runnable() { // from class: com.conceptglobal.pmc.SetupPMC.1.2
                        @Override // java.lang.Runnable
                        public void run() {
                            SetupPMC.this.sendSVAcktoServer();
                        }
                    });
                    return;
                } else {
                    SetupPMC setupPMC = SetupPMC.this;
                    setupPMC.showAlert(setupPMC.context.getResources().getString(com.conceptglobal.pmcdeepakfertilizers.R.string.pmc_val_wrong_resp), ConstantDeclarations.Enumaration.mRequestType4.value().intValue());
                    return;
                }
            }
            SetupPMC setupPMC2 = SetupPMC.this;
            setupPMC2.showAlert(setupPMC2.context.getResources().getString(com.conceptglobal.pmcdeepakfertilizers.R.string.pmc_val_getting_resp), ConstantDeclarations.Enumaration.mRequestType4.value().intValue());
            PLog.e(SetupPMC.this.TAG, exc);
        }
    }

    /* renamed from: com.conceptglobal.pmc.SetupPMC$2, reason: invalid class name */
    class AnonymousClass2 implements OnCompleteListener {
        AnonymousClass2() {
        }

        @Override // com.conceptglobal.pmc.interfaces.OnCompleteListener
        public void onComplete(final String str, Exception exc) {
            if (exc == null) {
                Log.d("getRetailersListListener", str + "");
                if (str != null) {
                    if (str.trim().length() > 12) {
                        new Thread(new Runnable() { // from class: com.conceptglobal.pmc.SetupPMC.2.1
                            @Override // java.lang.Runnable
                            public void run() {
                                try {
                                    SetupPMC.this.runOnUiThread(new Runnable() { // from class: com.conceptglobal.pmc.SetupPMC.2.1.1
                                        @Override // java.lang.Runnable
                                        public void run() {
                                            SetupPMC.this.tvProgressMessage.setText(SetupPMC.this.context.getResources().getString(com.conceptglobal.pmcdeepakfertilizers.R.string.pmc_label_storing_retailers));
                                            SetupPMC.this.rlSyncScreen.setBackgroundColor(SetupPMC.this.getResources().getColor(com.conceptglobal.pmcdeepakfertilizers.R.color.transparent_two));
                                        }
                                    });
                                    List list = (List) new Gson().fromJson(new StringReader(str), new TypeToken<List<PmcRetailersModel>>() { // from class: com.conceptglobal.pmc.SetupPMC.2.1.2
                                    }.getType());
                                    SetupPMC.this.objAck = InsertDataIntoDB.insertRetailerList(list, SetupPMC.this.objAck);
                                    SetupPMC.this.runOnUiThread(new Runnable() { // from class: com.conceptglobal.pmc.SetupPMC.2.1.3
                                        @Override // java.lang.Runnable
                                        public void run() {
                                            SetupPMC.this.getFarmerDetails();
                                        }
                                    });
                                } catch (Exception e) {
                                    PLog.e(SetupPMC.this.TAG, e);
                                    SetupPMC.this.runOnUiThread(new Runnable() { // from class: com.conceptglobal.pmc.SetupPMC.2.1.4
                                        @Override // java.lang.Runnable
                                        public void run() {
                                            SetupPMC.this.showAlert(SetupPMC.this.context.getResources().getString(com.conceptglobal.pmcdeepakfertilizers.R.string.pmc_val_processing_error_resp), ConstantDeclarations.Enumaration.mRequestType3.value().intValue());
                                        }
                                    });
                                }
                            }
                        }).start();
                        return;
                    } else if (str.contains(SetupPMC.this.getResources().getString(com.conceptglobal.pmcdeepakfertilizers.R.string.pmc_valid_no_data))) {
                        SetupPMC.this.runOnUiThread(new Runnable() { // from class: com.conceptglobal.pmc.SetupPMC.2.2
                            @Override // java.lang.Runnable
                            public void run() {
                                SetupPMC.this.getFarmerDetails();
                            }
                        });
                        return;
                    } else {
                        SetupPMC setupPMC = SetupPMC.this;
                        setupPMC.showAlert(setupPMC.context.getResources().getString(com.conceptglobal.pmcdeepakfertilizers.R.string.pmc_val_wrong_resp), ConstantDeclarations.Enumaration.mRequestType3.value().intValue());
                        return;
                    }
                }
                SetupPMC setupPMC2 = SetupPMC.this;
                setupPMC2.showAlert(setupPMC2.context.getResources().getString(com.conceptglobal.pmcdeepakfertilizers.R.string.pmc_val_wrong_resp), ConstantDeclarations.Enumaration.mRequestType3.value().intValue());
                return;
            }
            SetupPMC setupPMC3 = SetupPMC.this;
            setupPMC3.showAlert(setupPMC3.context.getResources().getString(com.conceptglobal.pmcdeepakfertilizers.R.string.pmc_val_getting_resp), ConstantDeclarations.Enumaration.mRequestType3.value().intValue());
            PLog.e(SetupPMC.this.TAG, exc);
        }
    }

    /* renamed from: com.conceptglobal.pmc.SetupPMC$3, reason: invalid class name */
    class AnonymousClass3 implements OnCompleteListener {
        AnonymousClass3() {
        }

        @Override // com.conceptglobal.pmc.interfaces.OnCompleteListener
        public void onComplete(final String str, Exception exc) {
            if (exc == null) {
                Log.d("getFarmerListListener", str + "");
                if (str != null) {
                    if (str.trim().length() <= 12) {
                        if (SetupPMC.this.objAck != null && SetupPMC.this.objAck.getAckList().toString().length() > 0) {
                            SetupPMC.this.runOnUiThread(new Runnable() { // from class: com.conceptglobal.pmc.SetupPMC.3.2
                                @Override // java.lang.Runnable
                                public void run() {
                                    SetupPMC.this.sendAckSendtoServer();
                                }
                            });
                            return;
                        }
                        String roleID = ConstantsPMC.getInstance().getRoleID();
                        if (roleID != null && roleID.trim().length() > 0) {
                            if (Integer.parseInt(roleID) != 2) {
                                SetupPMC.this.redirectoHome();
                                return;
                            } else {
                                SetupPMC.this.getPMCSVFarmerDetailsFromServer();
                                return;
                            }
                        }
                        SetupPMC setupPMC = SetupPMC.this;
                        setupPMC.showAlert(setupPMC.context.getResources().getString(com.conceptglobal.pmcdeepakfertilizers.R.string.pmc_val_wrong_resp), ConstantDeclarations.Enumaration.mRequestType2.value().intValue());
                        return;
                    }
                    new Thread(new Runnable() { // from class: com.conceptglobal.pmc.SetupPMC.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                SetupPMC.this.runOnUiThread(new Runnable() { // from class: com.conceptglobal.pmc.SetupPMC.3.1.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        SetupPMC.this.tvProgressMessage.setText(SetupPMC.this.context.getResources().getString(com.conceptglobal.pmcdeepakfertilizers.R.string.pmc_label_storing_farmers));
                                        SetupPMC.this.rlSyncScreen.setBackgroundColor(SetupPMC.this.getResources().getColor(com.conceptglobal.pmcdeepakfertilizers.R.color.transparent_four));
                                    }
                                });
                                GetSegmentationDetails getSegmentationDetails = (GetSegmentationDetails) new Gson().fromJson((Reader) new StringReader(str), GetSegmentationDetails.class);
                                SetupPMC.this.objAck = InsertDataIntoDB.insertFarmersList(getSegmentationDetails, SetupPMC.this.objAck);
                                SetupPMC.this.runOnUiThread(new Runnable() { // from class: com.conceptglobal.pmc.SetupPMC.3.1.2
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        SetupPMC.this.sendAckSendtoServer();
                                    }
                                });
                            } catch (Exception e) {
                                PLog.e(SetupPMC.this.TAG, e);
                                SetupPMC.this.runOnUiThread(new Runnable() { // from class: com.conceptglobal.pmc.SetupPMC.3.1.3
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        SetupPMC.this.showAlert(SetupPMC.this.context.getResources().getString(com.conceptglobal.pmcdeepakfertilizers.R.string.pmc_val_processing_error_resp), ConstantDeclarations.Enumaration.mRequestType2.value().intValue());
                                    }
                                });
                            }
                        }
                    }).start();
                    return;
                }
                SetupPMC setupPMC2 = SetupPMC.this;
                setupPMC2.showAlert(setupPMC2.context.getResources().getString(com.conceptglobal.pmcdeepakfertilizers.R.string.pmc_val_wrong_resp), ConstantDeclarations.Enumaration.mRequestType2.value().intValue());
                return;
            }
            SetupPMC setupPMC3 = SetupPMC.this;
            setupPMC3.showAlert(setupPMC3.context.getResources().getString(com.conceptglobal.pmcdeepakfertilizers.R.string.pmc_val_getting_resp), ConstantDeclarations.Enumaration.mRequestType2.value().intValue());
            PLog.e(SetupPMC.this.TAG, exc);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendSVApprovalFarmersRequest() {
        try {
            this.tvProgressMessage.setText(this.context.getResources().getString(com.conceptglobal.pmcdeepakfertilizers.R.string.pmc_approval_pending_farmer));
            this.rlSyncScreen.setBackgroundColor(getResources().getColor(com.conceptglobal.pmcdeepakfertilizers.R.color.transparent_one));
            GetSVFarmerDetails getSVFarmerDetails = new GetSVFarmerDetails();
            Gson gson = new Gson();
            getSVFarmerDetails.setPdaid(ConstantsPMC.getInstance().getDeviceID().toString());
            getSVFarmerDetails.setUsertype(ConstantsPMC.getInstance().getRoleID().toString());
            String json = gson.toJson(getSVFarmerDetails);
            SendRequestToServerAsync sendRequestToServerAsync = new SendRequestToServerAsync(this.context, this.getSVFarmerApprovalListListener, json, ConstantsPMC.getInstance().getUrlPMCService(ConstantsPMC.getInstance().getIsTrainingORLive()) + "/" + ConstantsPMC.getInstance().getMethodGetSVFarmerApproval(), false);
            this.sendRequest = sendRequestToServerAsync;
            sendRequestToServerAsync.execute(new Void[0]);
        } catch (Exception e) {
            PLog.e(this.TAG, e);
        }
    }

    /* renamed from: com.conceptglobal.pmc.SetupPMC$6, reason: invalid class name */
    class AnonymousClass6 implements OnCompleteListener {
        AnonymousClass6() {
        }

        @Override // com.conceptglobal.pmc.interfaces.OnCompleteListener
        public void onComplete(String str, Exception exc) {
            if (exc == null) {
                if (str != null && str.length() > 12) {
                    new Thread(new Runnable() { // from class: com.conceptglobal.pmc.SetupPMC.6.1
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                SetupPMC.this.runOnUiThread(new Runnable() { // from class: com.conceptglobal.pmc.SetupPMC.6.1.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        SetupPMC.this.tvProgressMessage.setText(SetupPMC.this.context.getResources().getString(com.conceptglobal.pmcdeepakfertilizers.R.string.pmc_approval_storing_farmer));
                                        SetupPMC.this.rlSyncScreen.setBackgroundColor(SetupPMC.this.getResources().getColor(com.conceptglobal.pmcdeepakfertilizers.R.color.transparent_four));
                                    }
                                });
                                new Gson();
                                SetupPMC.this.runOnUiThread(new Runnable() { // from class: com.conceptglobal.pmc.SetupPMC.6.1.2
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        SetupPMC.this.sendSVApprovalAcktoServer();
                                    }
                                });
                            } catch (Exception e) {
                                PLog.e(SetupPMC.this.TAG, e);
                                SetupPMC.this.runOnUiThread(new Runnable() { // from class: com.conceptglobal.pmc.SetupPMC.6.1.3
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        SetupPMC.this.showAlert(SetupPMC.this.context.getResources().getString(com.conceptglobal.pmcdeepakfertilizers.R.string.pmc_val_processing_error_resp), ConstantDeclarations.Enumaration.mRequestType5.value().intValue());
                                    }
                                });
                            }
                        }
                    }).start();
                    return;
                } else if (str != null && str.contains(SetupPMC.this.getResources().getString(com.conceptglobal.pmcdeepakfertilizers.R.string.pmc_valid_no_data))) {
                    SetupPMC.this.runOnUiThread(new Runnable() { // from class: com.conceptglobal.pmc.SetupPMC.6.2
                        @Override // java.lang.Runnable
                        public void run() {
                            SetupPMC.this.sendSVApprovalAcktoServer();
                        }
                    });
                    return;
                } else {
                    SetupPMC setupPMC = SetupPMC.this;
                    setupPMC.showAlert(setupPMC.context.getResources().getString(com.conceptglobal.pmcdeepakfertilizers.R.string.pmc_val_wrong_resp), ConstantDeclarations.Enumaration.mRequestType5.value().intValue());
                    return;
                }
            }
            SetupPMC setupPMC2 = SetupPMC.this;
            setupPMC2.showAlert(setupPMC2.context.getResources().getString(com.conceptglobal.pmcdeepakfertilizers.R.string.pmc_val_parse_resp), ConstantDeclarations.Enumaration.mRequestType5.value().intValue());
            PLog.e(SetupPMC.this.TAG, exc);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendSVApprovalAcktoServer() {
        this.tvProgressMessage.setText(this.context.getResources().getString(com.conceptglobal.pmcdeepakfertilizers.R.string.pmc_approval_ack_farmer));
        this.rlSyncScreen.setBackgroundColor(getResources().getColor(com.conceptglobal.pmcdeepakfertilizers.R.color.transparent_five));
        Gson gson = new Gson();
        this.objAcksvforApproval.setPDAID(ConstantsPMC.getInstance().getDeviceID().toString());
        String json = gson.toJson(this.objAcksvforApproval);
        SendRequestToServerAsync sendRequestToServerAsync = new SendRequestToServerAsync(this.context, this.getsvApprovalAckReceiptListener, json, ConstantsPMC.getInstance().getUrlPMCService(ConstantsPMC.getInstance().getIsTrainingORLive()) + "/" + ConstantsPMC.getInstance().getMethodSyncSendApprovalACK(), false);
        this.sendRequest = sendRequestToServerAsync;
        sendRequestToServerAsync.execute(new Void[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getSVAssignPendingFromServer() {
        try {
            this.tvProgressMessage.setText(this.context.getResources().getString(com.conceptglobal.pmcdeepakfertilizers.R.string.pmc_assign_pending_farmer));
            this.rlSyncScreen.setBackgroundColor(getResources().getColor(com.conceptglobal.pmcdeepakfertilizers.R.color.transparent_two));
            SVAssignAFCount sVAssignAFCount = new SVAssignAFCount();
            Gson gson = new Gson();
            sVAssignAFCount.setSvpdaid(ConstantsPMC.getInstance().getDeviceID().toString());
            String json = gson.toJson(sVAssignAFCount);
            SendRequestToServerAsync sendRequestToServerAsync = new SendRequestToServerAsync(this.context, this.getAssignListListener, json, ConstantsPMC.getInstance().getUrlPMCService(ConstantsPMC.getInstance().getIsTrainingORLive()) + "/" + ConstantsPMC.getInstance().getMethodGetAssignPendingDetails(), false);
            this.sendRequest = sendRequestToServerAsync;
            sendRequestToServerAsync.execute(new Void[0]);
        } catch (Exception e) {
            PLog.e(this.TAG, e);
        }
    }

    /* renamed from: com.conceptglobal.pmc.SetupPMC$8, reason: invalid class name */
    class AnonymousClass8 implements OnCompleteListener {
        AnonymousClass8() {
        }

        @Override // com.conceptglobal.pmc.interfaces.OnCompleteListener
        public void onComplete(final String str, Exception exc) {
            if (exc == null) {
                Log.d("getAssignListListener", str + "");
                if (str != null && str.length() > 12) {
                    new Thread(new Runnable() { // from class: com.conceptglobal.pmc.SetupPMC.8.1
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                SetupPMC.this.runOnUiThread(new Runnable() { // from class: com.conceptglobal.pmc.SetupPMC.8.1.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        SetupPMC.this.tvProgressMessage.setText(SetupPMC.this.context.getResources().getString(com.conceptglobal.pmcdeepakfertilizers.R.string.pmc_assign_storing_farmer));
                                        SetupPMC.this.rlSyncScreen.setBackgroundColor(SetupPMC.this.getResources().getColor(com.conceptglobal.pmcdeepakfertilizers.R.color.transparent_three));
                                    }
                                });
                                List list = (List) new Gson().fromJson(new StringReader(str), new TypeToken<List<FOPendingStatus>>() { // from class: com.conceptglobal.pmc.SetupPMC.8.1.2
                                }.getType());
                                if (list.size() > 0) {
                                    InsertDataIntoDB.insertAssignFarmerActivityPendingCountDetails(list);
                                }
                                SetupPMC.this.runOnUiThread(new Runnable() { // from class: com.conceptglobal.pmc.SetupPMC.8.1.3
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        SetupPMC.this.redirectoHome();
                                    }
                                });
                            } catch (Exception e) {
                                PLog.e(SetupPMC.this.TAG, e);
                                SetupPMC.this.runOnUiThread(new Runnable() { // from class: com.conceptglobal.pmc.SetupPMC.8.1.4
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        SetupPMC.this.showAlert(SetupPMC.this.context.getResources().getString(com.conceptglobal.pmcdeepakfertilizers.R.string.pmc_val_processing_error_resp), ConstantDeclarations.Enumaration.mRequestType3.value().intValue());
                                    }
                                });
                            }
                        }
                    }).start();
                    return;
                }
                if (str != null && str.equals(HttpUrl.PATH_SEGMENT_ENCODE_SET_URI)) {
                    SetupPMC setupPMC = SetupPMC.this;
                    setupPMC.showAlert(setupPMC.context.getResources().getString(com.conceptglobal.pmcdeepakfertilizers.R.string.pmc_assign_msg), ConstantDeclarations.Enumaration.mRequestType6.value().intValue());
                    return;
                } else {
                    SetupPMC setupPMC2 = SetupPMC.this;
                    setupPMC2.showAlert(setupPMC2.context.getResources().getString(com.conceptglobal.pmcdeepakfertilizers.R.string.pmc_val_wrong_resp), ConstantDeclarations.Enumaration.mRequestType6.value().intValue());
                    return;
                }
            }
            SetupPMC setupPMC3 = SetupPMC.this;
            setupPMC3.showAlert(setupPMC3.context.getResources().getString(com.conceptglobal.pmcdeepakfertilizers.R.string.pmc_val_parse_resp), ConstantDeclarations.Enumaration.mRequestType6.value().intValue());
            PLog.e(SetupPMC.this.TAG, exc);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showAlert(String str, final int i) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.context);
        builder.setMessage(str).setCancelable(false).setPositiveButton(android.R.string.cancel, new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.SetupPMC.10
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                dialogInterface.dismiss();
                int i3 = i;
                if (i3 == 0) {
                    SetupPMC.this.finish();
                    return;
                }
                if (i3 == 2) {
                    if (ConstantsPMC.getInstance().getRoleID().trim().length() <= 0) {
                        SetupPMC.this.redirectoHome();
                        return;
                    } else if (Integer.parseInt(ConstantsPMC.getInstance().getRoleID()) != 2) {
                        SetupPMC.this.redirectoHome();
                        return;
                    } else {
                        SetupPMC.this.getPMCSVFarmerDetailsFromServer();
                        return;
                    }
                }
                if (i3 == 3) {
                    SetupPMC.this.getFarmerDetails();
                    return;
                }
                if (i3 == 4) {
                    SetupPMC.this.sendSVApprovalFarmersRequest();
                } else if (i3 == 5) {
                    SetupPMC.this.getSVAssignPendingFromServer();
                } else {
                    if (i3 != 6) {
                        return;
                    }
                    SetupPMC.this.redirectoHome();
                }
            }
        }).setNegativeButton(getResources().getString(com.conceptglobal.pmcdeepakfertilizers.R.string.pmc_label_try_again), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.SetupPMC.9
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                dialogInterface.dismiss();
                SetupPMC.this.init();
                int i3 = i;
                if (i3 == 2) {
                    SetupPMC.this.setupPMC();
                    return;
                }
                if (i3 == 3) {
                    SetupPMC.this.setupPMC();
                    return;
                }
                if (i3 == 4) {
                    SetupPMC.this.getPMCSVFarmerDetailsFromServer();
                    return;
                }
                if (i3 == 5) {
                    SetupPMC.this.sendSVApprovalFarmersRequest();
                } else if (i3 == 6) {
                    SetupPMC.this.getSVAssignPendingFromServer();
                } else {
                    SetupPMC.this.setupPMC();
                }
            }
        });
        AlertDialog show = builder.show();
        if (UtilDeclarations.isTablet(this)) {
            UtilDeclarations.makeTabletDialogTextlarge(show);
        }
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i != 4) {
            return false;
        }
        showAlert(getResources().getString(com.conceptglobal.pmcdeepakfertilizers.R.string.pmc_msg_cancel_transaction));
        return true;
    }

    private void showAlert(String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.context);
        builder.setMessage(str).setCancelable(false).setPositiveButton(android.R.string.ok, new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.SetupPMC.12
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
                SetupPMC.this.sendRequest.cancel(true);
                SetupPMC.this.finish();
            }
        }).setNegativeButton(android.R.string.cancel, new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.SetupPMC.11
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        });
        AlertDialog show = builder.show();
        if (UtilDeclarations.isTablet(this)) {
            UtilDeclarations.makeTabletDialogTextlarge(show);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getFarmerDetails() {
        if (UtilDeclarations.isOnline(this.context)) {
            getPMCFarmerDetailsFromServer();
        } else {
            showAlert(getResources().getString(com.conceptglobal.pmcdeepakfertilizers.R.string.pmc_no_internet), ConstantDeclarations.Enumaration.mRequestType2.value().intValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendAckSendtoServer() {
        if (UtilDeclarations.isOnline(this.context)) {
            sendAcktoServer();
        } else {
            showAlert(getResources().getString(com.conceptglobal.pmcdeepakfertilizers.R.string.pmc_no_internet), ConstantDeclarations.Enumaration.mRequestType2.value().intValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void redirectoHome() {
        try {
            if (UtilDeclarations.isOnline(this.context)) {
                new MasterSyncAsyncTask(this.context, false).execute(new Void[0]);
            } else {
                Crouton.showText(this, com.conceptglobal.pmcdeepakfertilizers.R.string.pmc_internet_check, Style.ALERT);
            }
        } catch (Exception e) {
            PLog.e(this.TAG, e);
        }
        if (ConstantsPMC.getInstance().getIssupervisor() == 1 && ConstantsPMC.getInstance().getRoleID().equalsIgnoreCase("2")) {
            return;
        }
        startActivity(new Intent(this.context, (Class<?>) MainHomePageActivity.class).addFlags(335544320));
        finish();
    }

    @Override // com.conceptglobal.pmc.interfaces.NetworkListener
    public void onNetWorkDisconnected() {
        Toast.makeText(this.context, "Network disconnected", 1).show();
    }
}

package com.conceptglobal.pmc.service;

import android.app.IntentService;
import android.content.Intent;
import android.os.Bundle;
import android.os.ResultReceiver;
import android.util.Log;
import com.conceptglobal.pmc.asynctask.WebService;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.model.DataCountModel;
import com.conceptglobal.pmc.utils.PLog;
import com.google.gson.GsonBuilder;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

/* loaded from: classes.dex */
public class DataUpdateService extends IntentService {
    private static final String TAG = "DataUpdateService";
    Bundle bundle;
    private String callbackActivity;
    List<DataCountModel> dataCountList;
    private int pdaId;
    private ResultReceiver receiver;

    public DataUpdateService() {
        super(TAG);
    }

    @Override // android.app.IntentService
    protected void onHandleIntent(Intent intent) {
        synchronized (this) {
            this.dataCountList = new ArrayList();
            try {
                this.pdaId = Integer.parseInt(ConstantsPMC.getInstance().getDeviceID());
            } catch (Exception unused) {
                this.pdaId = 0;
            }
            if (this.pdaId != 0) {
                setCountInList("Assignments");
                setCountInList(ConstantsPMC.TYPE_FARMER);
                setCountInList(ConstantsPMC.TYPE_Retailer);
                setCountInList("FarmerCrop");
                setCountInList("DealerCrop");
                setCountInList("DealerCompany");
            }
            sendDataToServer();
        }
    }

    private void sendDataToServer() {
        try {
            String wcfToken = ConstantsPMC.getInstance().getWcfToken();
            SendCountDataModel sendCountDataModel = new SendCountDataModel();
            sendCountDataModel.setDataCountList(this.dataCountList);
            String str = ConstantsPMC.getInstance().getUrlPMCService(ConstantsPMC.getInstance().getIsTrainingORLive()) + "/" + ConstantsPMC.getInstance().getMethodSyncTableSummary();
            String json = new GsonBuilder().disableHtmlEscaping().create().toJson(sendCountDataModel);
            String sendRequestwithToken = WebService.getInstance().sendRequestwithToken(json, str, wcfToken);
            if (sendRequestwithToken != null && !sendRequestwithToken.equals("")) {
                sendRequestwithToken.equalsIgnoreCase("Success");
            }
            Log.i(TAG, json + "");
            Log.i(TAG, sendRequestwithToken + "");
        } catch (Exception e) {
            PLog.e(TAG, e, 0);
        }
    }

    private void setCountInList(String str) {
        DataCountModel dataCountModel = new DataCountModel();
        if (str.equalsIgnoreCase("Assignments")) {
            dataCountModel.setPdaId(this.pdaId);
            dataCountModel.setTableName("Assignments");
            try {
                dataCountModel.setCount(GetDataFromDB.getInstance().getIntValue(Queries.getInstance().getPlannedPendingActivities()));
            } catch (Exception e) {
                e.printStackTrace();
                PLog.e(TAG, e.toString());
            }
            dataCountModel.setLogDate(Calendar.getInstance().getTime().toString());
        } else if (str.equalsIgnoreCase(ConstantsPMC.TYPE_FARMER)) {
            dataCountModel.setPdaId(this.pdaId);
            dataCountModel.setTableName(ConstantsPMC.TYPE_FARMER);
            try {
                dataCountModel.setCount(GetDataFromDB.getInstance().getIntValue(Queries.getInstance().getTotalFarmersToSend()));
                dataCountModel.setDraftCount(GetDataFromDB.getInstance().getIntValue(Queries.getInstance().getTotalDraftFarmersToSend()));
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            dataCountModel.setLogDate(Calendar.getInstance().getTime().toString());
        } else if (str.equalsIgnoreCase(ConstantsPMC.TYPE_Retailer)) {
            dataCountModel.setPdaId(this.pdaId);
            dataCountModel.setTableName(ConstantsPMC.TYPE_Retailer);
            try {
                dataCountModel.setCount(GetDataFromDB.getInstance().getIntValue(Queries.getInstance().getTotalDealers()));
                dataCountModel.setDraftCount(GetDataFromDB.getInstance().getIntValue(Queries.getInstance().getTotalDraftDealers()));
            } catch (Exception e3) {
                e3.printStackTrace();
            }
            dataCountModel.setLogDate(Calendar.getInstance().getTime().toString());
        } else if (str.equalsIgnoreCase("FarmerCrop")) {
            dataCountModel.setPdaId(this.pdaId);
            dataCountModel.setTableName("FarmerCrop");
            try {
                dataCountModel.setCount(GetDataFromDB.getInstance().getIntValue(Queries.getInstance().getTotalFarmerCropDetails()));
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            dataCountModel.setLogDate(Calendar.getInstance().getTime().toString());
        } else if (str.equalsIgnoreCase("DealerCrop")) {
            dataCountModel.setPdaId(this.pdaId);
            dataCountModel.setTableName("DealerCrop");
            try {
                dataCountModel.setCount(GetDataFromDB.getInstance().getIntValue(Queries.getInstance().getTotalDealerCompanyDetails()));
            } catch (Exception e5) {
                e5.printStackTrace();
            }
            dataCountModel.setLogDate(Calendar.getInstance().getTime().toString());
        } else if (str.equalsIgnoreCase("DealerCompany")) {
            dataCountModel.setPdaId(this.pdaId);
            dataCountModel.setTableName("DealerCompany");
            try {
                dataCountModel.setCount(GetDataFromDB.getInstance().getIntValue(Queries.getInstance().getTotalDealerCropDetails()));
            } catch (Exception e6) {
                e6.printStackTrace();
            }
            dataCountModel.setLogDate(Calendar.getInstance().getTime().toString());
        }
        this.dataCountList.add(dataCountModel);
    }

    private class SendCountDataModel {
        private List<DataCountModel> dataCountList;

        private SendCountDataModel() {
        }

        public List<DataCountModel> getDataCountList() {
            return this.dataCountList;
        }

        public void setDataCountList(List<DataCountModel> list) {
            this.dataCountList = list;
        }
    }
}

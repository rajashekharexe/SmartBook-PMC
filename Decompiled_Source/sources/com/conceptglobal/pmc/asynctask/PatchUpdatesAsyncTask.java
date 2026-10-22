package com.conceptglobal.pmc.asynctask;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.os.AsyncTask;
import android.widget.Toast;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.database.DataBaseHandler;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.model.PatchUpdateQueryModel;
import com.conceptglobal.pmc.model.ResponseModel;
import com.conceptglobal.pmc.model.SendDetailsForRetailersModel;
import com.conceptglobal.pmc.sync.GetToken;
import com.conceptglobal.pmc.utils.PLog;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import com.conceptglobal.pmcdeepakfertilizers.R;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import org.apache.http.client.ClientProtocolException;

/* loaded from: classes.dex */
public class PatchUpdatesAsyncTask extends AsyncTask<Void, Void, String> {
    private static final String TAG = "Patch Update";
    private static DataBaseHandler dbInstance = DataBaseHandler.getInstance();
    private Context context;
    private boolean progressBarRequired;
    private Exception error = null;
    private List<String> successQueryIds = new ArrayList();

    public PatchUpdatesAsyncTask(Context context, Boolean bool) {
        this.context = context;
        this.progressBarRequired = bool.booleanValue();
    }

    @Override // android.os.AsyncTask
    protected void onPreExecute() {
        if (this.progressBarRequired) {
            UtilDeclarations.showProgressDialog(this.context);
        }
        super.onPreExecute();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public String doInBackground(Void... voidArr) {
        DataBaseHandler dataBaseHandler;
        new ArrayList();
        String str = null;
        try {
            try {
                SendDetailsForRetailersModel sendDetailsForRetailersModel = new SendDetailsForRetailersModel();
                Gson gson = new Gson();
                sendDetailsForRetailersModel.setPDAID(ConstantsPMC.getInstance().getDeviceID());
                String json = gson.toJson(sendDetailsForRetailersModel);
                try {
                    try {
                        ResponseModel responseModel = (ResponseModel) gson.fromJson((Reader) new StringReader(WebService.getInstance().sendRequestwithToken(json, ConstantsPMC.getInstance().getUrlPMCService(ConstantsPMC.getInstance().getIsTrainingORLive()) + "/" + ConstantsPMC.getInstance().getMethodDMLPatches(), ConstantsPMC.getInstance().getWcfToken())), ResponseModel.class);
                        String str2 = (String) responseModel.getData();
                        if (responseModel.getStatus().equals("AUTHORISED")) {
                            if (responseModel.getData() != null && !str2.isEmpty()) {
                                List list = (List) new Gson().fromJson(new StringReader(str2), new TypeToken<List<PatchUpdateQueryModel>>() { // from class: com.conceptglobal.pmc.asynctask.PatchUpdatesAsyncTask.1
                                }.getType());
                                SQLiteDatabase openDatabase = dbInstance.openDatabase();
                                if (list == null || list.size() <= 0) {
                                    str = this.context.getResources().getString(R.string.pmc_val_empty_patch_update);
                                } else {
                                    for (int i = 0; i < list.size(); i++) {
                                        try {
                                            GetDataFromDB.getInstance().executeRawQueryOnDBInLoop(((PatchUpdateQueryModel) list.get(i)).getStrQuery(), openDatabase);
                                            this.successQueryIds.add(((PatchUpdateQueryModel) list.get(i)).getQueryId() + "");
                                        } catch (Exception e) {
                                            str = this.context.getResources().getString(R.string.pmc_val_exe_patch_update);
                                            this.error = e;
                                            PLog.e(TAG, e);
                                        }
                                    }
                                }
                                if (str != null && str.length() < 1) {
                                    str = this.context.getResources().getString(R.string.pmc_val_patch_update_done);
                                }
                            }
                        } else if (responseModel.getStatus().equals("UNAUTHORISED") && responseModel.getStatusMessage().equals("Invalid Token")) {
                            new GetToken(this.context, 2).StartGetToken();
                            Class<?> cls = Class.forName("com.conceptglobal.pmc.asynctask.PatchUpdatesAsyncTask");
                            Method declaredMethod = cls.getDeclaredMethod("", null);
                            declaredMethod.setAccessible(true);
                            declaredMethod.invoke(cls.newInstance(), null);
                        }
                        dataBaseHandler = dbInstance;
                    } catch (Exception e2) {
                        this.error = e2;
                        PLog.e(TAG, e2);
                        dataBaseHandler = dbInstance;
                    }
                } catch (ClientProtocolException e3) {
                    this.error = e3;
                    PLog.e(TAG, e3);
                    dataBaseHandler = dbInstance;
                } catch (IOException e4) {
                    this.error = e4;
                    PLog.e(TAG, e4);
                    dataBaseHandler = dbInstance;
                }
                dataBaseHandler.closeDatabase();
            } catch (Throwable th) {
                dbInstance.closeDatabase();
                throw th;
            }
        } catch (Exception e5) {
            this.error = e5;
            PLog.e(TAG, e5);
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public void onPostExecute(String str) {
        super.onPostExecute((PatchUpdatesAsyncTask) str);
        if (this.progressBarRequired) {
            UtilDeclarations.dismissProgressDialog();
        }
        List<String> list = this.successQueryIds;
        if (list != null && list.size() > 0) {
            SendDetailsForRetailersModel sendDetailsForRetailersModel = new SendDetailsForRetailersModel();
            Gson gson = new Gson();
            sendDetailsForRetailersModel.setPDAID(ConstantsPMC.getInstance().getDeviceID());
            sendDetailsForRetailersModel.setQueryIDs(this.successQueryIds);
            final String json = gson.toJson(sendDetailsForRetailersModel);
            final WebService webService = WebService.getInstance();
            new Thread(new Runnable() { // from class: com.conceptglobal.pmc.asynctask.PatchUpdatesAsyncTask.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        webService.sendRequestwithToken(json, ConstantsPMC.getInstance().getUrlPMCService(ConstantsPMC.getInstance().getIsTrainingORLive()) + "/" + ConstantsPMC.getInstance().getMethodUpdateDMLPatch(), ConstantsPMC.getInstance().getWcfToken());
                    } catch (ClientProtocolException e) {
                        PLog.e(PatchUpdatesAsyncTask.TAG, e);
                    } catch (IOException e2) {
                        PLog.e(PatchUpdatesAsyncTask.TAG, e2);
                    } catch (Exception e3) {
                        PLog.e(PatchUpdatesAsyncTask.TAG, e3);
                    }
                }
            }).start();
        }
        if (str != null) {
            Toast.makeText(this.context, str, 0).show();
            return;
        }
        Exception exc = this.error;
        if (exc != null) {
            if (exc instanceof ClientProtocolException) {
                Toast.makeText(this.context, this.context.getResources().getString(R.string.pmc_val_getting_resp) + TAG, 0).show();
                PLog.e(TAG, this.error);
                return;
            }
            if (exc instanceof IOException) {
                Toast.makeText(this.context, this.context.getResources().getString(R.string.pmc_val_receive_resp) + TAG, 0).show();
                PLog.e(TAG, this.error);
                return;
            }
            Toast.makeText(this.context, this.context.getResources().getString(R.string.pmc_label_unknown_error) + TAG, 0).show();
            PLog.e(TAG, this.error);
        }
    }
}

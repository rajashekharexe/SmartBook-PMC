package com.conceptglobal.pmc.promotions.sync;

import android.content.Context;
import android.os.AsyncTask;
import android.text.TextUtils;
import android.util.Log;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.promotions.database.CategoryDAO;
import com.conceptglobal.pmc.promotions.models.AckPromotion;
import com.conceptglobal.pmc.promotions.models.Promotion;
import com.conceptglobal.pmc.promotions.models.SendPromotionModel;
import com.conceptglobal.pmc.promotions.models.TableModel;
import com.conceptglobal.pmc.promotions.retrofit.ApiClient;
import com.conceptglobal.pmc.promotions.retrofit.ApiInterface;
import com.conceptglobal.pmc.promotions.retrofit.WebServiceForPromotions;
import com.conceptglobal.pmc.promotions.utils.NetworkUtils;
import com.conceptglobal.pmc.promotions.utils.UtilDeclarations;
import com.conceptglobal.pmc.utils.ConstantDeclarations;
import com.conceptglobal.pmc.utils.SharedPrefManager;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonObject;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
import retrofit2.Response;

/* loaded from: classes.dex */
public class MasterSyncService {
    private List<SyncLogModel> arrQueries;
    private Context mContext;
    private SyncLogModel modelSync;
    private boolean syncStatus = true;
    TableClass tableClass = new TableClass();
    TableModel tableModel = new TableModel();
    String serverlocation = null;
    private List<Promotion> promotionmodel = new ArrayList();
    private List<AckPromotion> ackpromotionmodel = new ArrayList();
    private ApiInterface apiInterface = ApiClient.getInterfaceService();

    public MasterSyncService(Context context) {
        this.mContext = context;
    }

    public void callMasterSyncAsyncTask() {
        new MasterSyncAsyncTask().execute(new Void[0]);
    }

    private class MasterSyncAsyncTask extends AsyncTask<Void, Void, String> {
        private MasterSyncAsyncTask() {
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            super.onPreExecute();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public String doInBackground(Void... voidArr) {
            return MasterSyncService.this.doMasterSync();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onProgressUpdate(Void... voidArr) {
            super.onProgressUpdate((Object[]) voidArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(String str) {
            super.onPostExecute((MasterSyncAsyncTask) str);
        }
    }

    public String doMasterSync() {
        if (!NetworkUtils.isDataConnected(this.mContext)) {
            return null;
        }
        Promotion promotion = new Promotion();
        promotion.setLastDate(SharedPrefManager.getString(this.mContext, ConstantDeclarations.getInstance().getKeyContentSyncTime(), "01-01-2000 00:00:00.000"));
        promotion.setPdaId(new CategoryDAO(this.mContext).getPdaId());
        SendPromotionModel sendPromotionModel = new SendPromotionModel();
        this.promotionmodel.add(promotion);
        sendPromotionModel.setPromotion(this.promotionmodel);
        String json = new GsonBuilder().disableHtmlEscaping().create().toJson(sendPromotionModel);
        json.substring(1, json.length() - 1);
        try {
            Response<String> execute = this.apiInterface.getPromotionsData("60A4422E-22B1-4D32-9DFC-AA01C6C11DAC", sendPromotionModel).execute();
            int code = execute.code();
            String body = execute.body();
            execute.message();
            if (code == 200 && !TextUtils.isEmpty(body)) {
                onMasterSyncDataReceived(body);
                UtilDeclarations.revokeLocalContent(this.mContext);
                return null;
            }
            return "Error occured";
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:160:0x0504 A[Catch: Exception -> 0x0524, TryCatch #13 {Exception -> 0x0524, blocks: (B:6:0x006e, B:8:0x0076, B:10:0x007c, B:12:0x0082, B:13:0x008b, B:16:0x0095, B:17:0x00a8, B:19:0x00ae, B:20:0x0103, B:67:0x02d5, B:118:0x02e6, B:121:0x036b, B:157:0x04fb, B:158:0x0500, B:160:0x0504, B:123:0x0520), top: B:5:0x006e }] */
    /* JADX WARN: Removed duplicated region for block: B:162:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:187:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x016f  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x019a A[Catch: Exception -> 0x02be, TryCatch #8 {Exception -> 0x02be, blocks: (B:103:0x0147, B:38:0x0167, B:41:0x0171, B:42:0x018f, B:43:0x0192, B:45:0x019a, B:47:0x01c0), top: B:102:0x0147 }] */
    /* JADX WARN: Removed duplicated region for block: B:5:0x006e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x026b A[Catch: Exception -> 0x02bc, TryCatch #9 {Exception -> 0x02bc, blocks: (B:56:0x01f8, B:58:0x020e, B:60:0x0220, B:62:0x023a, B:79:0x0263, B:81:0x026b, B:83:0x0273, B:85:0x0287, B:88:0x02ac), top: B:55:0x01f8 }] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x02d8 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x025b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMasterSyncDataReceived(java.lang.String r31) {
        /*
            Method dump skipped, instructions count: 1321
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.promotions.sync.MasterSyncService.onMasterSyncDataReceived(java.lang.String):void");
    }

    private String getOneYearLess(String str) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss");
        try {
            Date parse = simpleDateFormat.parse(str);
            Calendar calendar = Calendar.getInstance();
            calendar.setTime(parse);
            calendar.add(1, -1);
            return String.valueOf(simpleDateFormat.format(calendar.getTime()));
        } catch (ParseException e) {
            e.printStackTrace();
            return str;
        }
    }

    private String getOneYearMore(String str) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss");
        try {
            Date parse = simpleDateFormat.parse(str);
            Calendar calendar = Calendar.getInstance();
            calendar.setTime(parse);
            calendar.add(1, 1);
            return String.valueOf(simpleDateFormat.format(calendar.getTime()));
        } catch (ParseException e) {
            e.printStackTrace();
            return str;
        }
    }

    private String getCorrespondingInt(String str) {
        if (str.equalsIgnoreCase("video/mp4")) {
            return String.valueOf(1);
        }
        if (str.equalsIgnoreCase("pdf")) {
            return String.valueOf(7);
        }
        if (str.equalsIgnoreCase("htmltext")) {
            return String.valueOf(5);
        }
        return "";
    }

    public void sendMasterSyncDataAcknowledgement(JSONObject jSONObject) throws JSONException {
        String str;
        Log.i("Sending acknowledgement", jSONObject.toString());
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.tableModel);
        this.tableClass.setTable(arrayList);
        String json = new GsonBuilder().disableHtmlEscaping().create().toJson(this.tableClass);
        JsonObject jsonObject = new JsonObject();
        try {
            jsonObject.addProperty("json", json);
            jsonObject.addProperty("pdaid", new CategoryDAO(this.mContext).getPdaId());
        } catch (Exception e) {
            e.printStackTrace();
        }
        try {
            str = jsonObject.toString();
        } catch (Exception e2) {
            e2.printStackTrace();
            str = null;
        }
        try {
            WebServiceForPromotions.getInstance().sendRequestwithToken(str, ConstantsPMC.getInstance().getUrlPMCCMService(ConstantsPMC.getInstance().getIsTrainingORLive()) + "/UpdateStatusAfterMasterSync", "60A4422E-22B1-4D32-9DFC-AA01C6C11DAC");
        } catch (IOException e3) {
            e3.printStackTrace();
        }
    }

    private void sendSyncToServer(String str) {
        try {
            JsonObject jsonObject = new JsonObject();
            try {
                jsonObject.addProperty("json", str);
                jsonObject.addProperty("pdaId", new CategoryDAO(this.mContext).getPdaId());
            } catch (Exception e) {
                e.printStackTrace();
            }
            try {
                jsonObject.toString();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        } catch (Exception unused) {
            this.syncStatus = false;
        }
    }
}

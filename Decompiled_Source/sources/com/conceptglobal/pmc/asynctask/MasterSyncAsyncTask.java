package com.conceptglobal.pmc.asynctask;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.os.AsyncTask;
import android.util.Log;
import android.widget.Toast;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.DataBaseHandler;
import com.conceptglobal.pmc.model.SendModel;
import com.conceptglobal.pmc.model.SyncErrorLogModel;
import com.conceptglobal.pmc.utils.ConstantDeclarations;
import com.conceptglobal.pmc.utils.PLog;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import com.conceptglobal.pmcdeepakfertilizers.R;
import com.google.gson.Gson;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.io.IOUtils;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class MasterSyncAsyncTask extends AsyncTask<Void, Void, String> {
    private static final String TAG = "MasterSyncAsyncTask";
    private Context context;
    private SQLiteDatabase database;
    private StringBuilder keysBuilder;
    private String obj;
    private boolean progressBarRequired;
    private String response;
    private StringBuilder sbQueryBuilder;
    private String urlString;
    private StringBuilder valuesBuilder;
    private List<SyncErrorLogModel> arrQueries = new ArrayList();
    private SyncErrorLogModel modelSync = new SyncErrorLogModel();

    public MasterSyncAsyncTask(Context context, boolean z) {
        this.context = context;
        this.progressBarRequired = z;
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
        String str;
        Throwable th;
        Exception exc;
        NullPointerException nullPointerException;
        Exception e;
        NullPointerException e2;
        String str2;
        Throwable th2;
        Exception exc2;
        String str3;
        JSONObject jSONObject;
        String str4;
        String str5;
        Iterator<String> it;
        JSONObject jSONObject2;
        int length;
        String string;
        StringBuilder sb;
        StringBuilder sb2;
        String str6;
        String str7;
        Iterator<String> it2;
        Exception exc3;
        int i;
        String str8 = ")";
        String str9 = "";
        if (!UtilDeclarations.isOnline(this.context)) {
            return this.context.getResources().getString(R.string.pmc_check_internet);
        }
        try {
            try {
                this.database = DataBaseHandler.getInstance().openDatabase();
                this.urlString = ConstantsPMC.getInstance().getUrlPMCService(ConstantsPMC.getInstance().getIsTrainingORLive()) + "/" + ConstantsPMC.getInstance().getMethodMasterSync();
                String ConvertToXMLFormat = UtilDeclarations.ConvertToXMLFormat(this.database.rawQuery(Queries.getInstance().getGetMasterversionRecords(), null), ConstantDeclarations.getInstance().getTBLMASTERVERSION());
                SendModel sendModel = new SendModel();
                Gson gson = new Gson();
                sendModel.setXmlTableList(ConvertToXMLFormat);
                this.obj = gson.toJson(sendModel);
            } catch (Exception e3) {
                str = "" + this.context.getResources().getString(R.string.pmc_label_master_sync_error5);
                try {
                    PLog.e(TAG, e3);
                    try {
                        DataBaseHandler.getInstance().closeDatabase();
                        this.database = null;
                    } catch (NullPointerException e4) {
                        nullPointerException = e4;
                        str9 = str;
                        String str10 = str9 + this.context.getResources().getString(R.string.pmc_label_master_sync_error4);
                        PLog.e(TAG, nullPointerException);
                        return str10;
                    } catch (Exception e5) {
                        exc = e5;
                        str9 = str;
                        String str11 = str9 + this.context.getResources().getString(R.string.pmc_label_master_sync_error3);
                        PLog.e(TAG, exc);
                        return str11;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    DataBaseHandler.getInstance().closeDatabase();
                    this.database = null;
                    throw th;
                }
            }
            try {
                DataBaseHandler.getInstance().closeDatabase();
                this.database = null;
                str = "";
                try {
                    DefaultHttpClient defaultHttpClient = new DefaultHttpClient();
                    HttpPost httpPost = new HttpPost(this.urlString);
                    httpPost.setEntity(new StringEntity(this.obj));
                    httpPost.setHeader("Accept", "application/json");
                    httpPost.setHeader("Content-type", "application/json");
                    httpPost.setHeader("IMEI", UtilDeclarations.getDeviceIMEIMultiple(this.context));
                    String iOUtils = IOUtils.toString(defaultHttpClient.execute(httpPost).getEntity().getContent(), "UTF-8");
                    this.response = iOUtils;
                    iOUtils.replace("\\", "");
                    String str12 = this.response;
                    if (str12 != null) {
                        try {
                            try {
                                if (str12.length() > 3) {
                                    JSONObject jSONObject3 = new JSONObject(this.response);
                                    Iterator<String> keys = jSONObject3.keys();
                                    while (keys.hasNext()) {
                                        String obj = keys.next().toString();
                                        JSONArray jSONArray = jSONObject3.getJSONArray(obj);
                                        int i2 = 0;
                                        while (i2 < jSONArray.length()) {
                                            this.modelSync = new SyncErrorLogModel();
                                            this.sbQueryBuilder = new StringBuilder();
                                            this.keysBuilder = new StringBuilder();
                                            this.valuesBuilder = new StringBuilder();
                                            this.modelSync.setTableName(obj);
                                            if (obj.equalsIgnoreCase(ConstantDeclarations.getInstance().getTBLMASTERVERSION())) {
                                                StringBuilder sb3 = this.sbQueryBuilder;
                                                StringBuilder sb4 = new StringBuilder();
                                                jSONObject = jSONObject3;
                                                sb4.append("UPDATE ");
                                                sb4.append(obj);
                                                sb4.append(" SET ");
                                                sb3.append(sb4.toString());
                                                JSONObject jSONObject4 = jSONArray.getJSONObject(i2);
                                                StringBuilder sb5 = new StringBuilder();
                                                StringBuilder sb6 = new StringBuilder();
                                                Iterator<String> keys2 = jSONObject4.keys();
                                                int i3 = 1;
                                                while (keys2.hasNext()) {
                                                    try {
                                                        it2 = keys;
                                                        try {
                                                            String obj2 = keys2.next().toString();
                                                            str2 = str;
                                                            try {
                                                                try {
                                                                    str7 = str9;
                                                                    if (obj2.equalsIgnoreCase("TableName")) {
                                                                        i3++;
                                                                        try {
                                                                            this.modelSync.setColumnName(obj2);
                                                                            str6 = str8;
                                                                            try {
                                                                                this.modelSync.setSourceID(jSONObject4.getString(obj2));
                                                                                sb5.append(obj2 + " = '" + jSONObject4.getString(obj2) + "'");
                                                                                sb6.append(" WHERE " + obj2 + " = '" + jSONObject4.getString(obj2) + "'");
                                                                            } catch (Exception e6) {
                                                                                e = e6;
                                                                                exc3 = e;
                                                                                try {
                                                                                    PLog.e(TAG, exc3);
                                                                                    str = str2;
                                                                                    keys = it2;
                                                                                    str9 = str7;
                                                                                    str8 = str6;
                                                                                } catch (Exception e7) {
                                                                                    e = e7;
                                                                                    exc = e;
                                                                                    str9 = str2;
                                                                                    String str112 = str9 + this.context.getResources().getString(R.string.pmc_label_master_sync_error3);
                                                                                    PLog.e(TAG, exc);
                                                                                    return str112;
                                                                                }
                                                                            }
                                                                        } catch (Exception e8) {
                                                                            e = e8;
                                                                            str6 = str8;
                                                                        }
                                                                    } else {
                                                                        str6 = str8;
                                                                        i3++;
                                                                        sb5.append(obj2 + " = '" + jSONObject4.getString(obj2) + "'");
                                                                    }
                                                                    int i4 = i3;
                                                                    try {
                                                                        sb5.append(",");
                                                                        if (i4 == 3) {
                                                                            String sb7 = sb5.toString();
                                                                            StringBuilder sb8 = new StringBuilder();
                                                                            i = i4;
                                                                            try {
                                                                                sb8.append(sb7.substring(0, sb7.length() - 1));
                                                                                sb8.append(sb6.toString());
                                                                                this.sbQueryBuilder.append(sb8.toString());
                                                                                StringBuilder sb9 = new StringBuilder();
                                                                                try {
                                                                                    sb5 = sb9;
                                                                                    sb6 = new StringBuilder();
                                                                                    i3 = 1;
                                                                                } catch (Exception e9) {
                                                                                    e = e9;
                                                                                    sb5 = sb9;
                                                                                    i3 = i;
                                                                                    exc3 = e;
                                                                                    PLog.e(TAG, exc3);
                                                                                    str = str2;
                                                                                    keys = it2;
                                                                                    str9 = str7;
                                                                                    str8 = str6;
                                                                                }
                                                                            } catch (Exception e10) {
                                                                                e = e10;
                                                                                exc3 = e;
                                                                                i3 = i;
                                                                                PLog.e(TAG, exc3);
                                                                                str = str2;
                                                                                keys = it2;
                                                                                str9 = str7;
                                                                                str8 = str6;
                                                                            }
                                                                        } else {
                                                                            i3 = i4;
                                                                        }
                                                                    } catch (Exception e11) {
                                                                        e = e11;
                                                                        i = i4;
                                                                    }
                                                                } catch (Exception e12) {
                                                                    e = e12;
                                                                    str6 = str8;
                                                                    str7 = str9;
                                                                }
                                                            } catch (NullPointerException e13) {
                                                                e = e13;
                                                                nullPointerException = e;
                                                                str9 = str2;
                                                                String str102 = str9 + this.context.getResources().getString(R.string.pmc_label_master_sync_error4);
                                                                PLog.e(TAG, nullPointerException);
                                                                return str102;
                                                            }
                                                        } catch (Exception e14) {
                                                            e = e14;
                                                            str6 = str8;
                                                            str7 = str9;
                                                            str2 = str;
                                                        }
                                                    } catch (Exception e15) {
                                                        e = e15;
                                                        str6 = str8;
                                                        str7 = str9;
                                                        str2 = str;
                                                        it2 = keys;
                                                    }
                                                    str = str2;
                                                    keys = it2;
                                                    str9 = str7;
                                                    str8 = str6;
                                                }
                                                str4 = str9;
                                                str5 = str;
                                                it = keys;
                                            } else {
                                                String str13 = str8;
                                                jSONObject = jSONObject3;
                                                str4 = str9;
                                                str5 = str;
                                                it = keys;
                                                this.sbQueryBuilder.append("insert or replace into " + obj);
                                                this.valuesBuilder.append("(");
                                                this.keysBuilder.append("(");
                                                JSONObject jSONObject5 = jSONArray.getJSONObject(i2);
                                                Iterator<String> keys3 = jSONObject5.keys();
                                                int i5 = 0;
                                                while (keys3.hasNext()) {
                                                    try {
                                                        String obj3 = keys3.next().toString();
                                                        length = jSONObject5.length() - 1;
                                                        if (i5 == length) {
                                                            this.modelSync.setColumnName(obj3);
                                                        }
                                                        this.keysBuilder.append(obj3 + ",");
                                                        string = jSONObject5.getString(obj3);
                                                        sb = this.valuesBuilder;
                                                        sb2 = new StringBuilder();
                                                        sb2.append("'");
                                                        sb2.append(string);
                                                        jSONObject2 = jSONObject5;
                                                    } catch (Exception e16) {
                                                        e = e16;
                                                        jSONObject2 = jSONObject5;
                                                    }
                                                    try {
                                                        sb2.append("',");
                                                        sb.append(sb2.toString());
                                                        if (i5 == length) {
                                                            this.modelSync.setSourceID(string);
                                                        }
                                                        i5++;
                                                    } catch (Exception e17) {
                                                        e = e17;
                                                        PLog.e(TAG, e);
                                                        jSONObject5 = jSONObject2;
                                                    }
                                                    jSONObject5 = jSONObject2;
                                                }
                                                String sb10 = this.keysBuilder.toString();
                                                String sb11 = this.valuesBuilder.toString();
                                                StringBuilder sb12 = new StringBuilder();
                                                sb12.append(sb10.substring(0, sb10.length() - 1));
                                                str8 = str13;
                                                sb12.append(str8);
                                                String sb13 = sb12.toString();
                                                String str14 = sb11.substring(0, sb11.length() - 1) + str8;
                                                this.sbQueryBuilder.append(sb13);
                                                this.sbQueryBuilder.append("values");
                                                this.sbQueryBuilder.append(str14);
                                            }
                                            this.modelSync.setQuery(this.sbQueryBuilder.toString());
                                            this.arrQueries.add(this.modelSync);
                                            Log.d(TAG, this.sbQueryBuilder.toString());
                                            i2++;
                                            jSONObject3 = jSONObject;
                                            str = str5;
                                            keys = it;
                                            str9 = str4;
                                        }
                                    }
                                    String str15 = str9;
                                    str2 = str;
                                    if (this.arrQueries.size() == 0) {
                                        return str2;
                                    }
                                    try {
                                        this.database = DataBaseHandler.getInstance().openDatabase();
                                        str = str2;
                                        int i6 = 0;
                                        while (i6 < this.arrQueries.size()) {
                                            try {
                                                try {
                                                    try {
                                                        this.database.execSQL(this.arrQueries.get(i6).getQuery());
                                                        str3 = str15;
                                                    } catch (Exception e18) {
                                                        try {
                                                            str3 = str15;
                                                        } catch (Exception e19) {
                                                            e = e19;
                                                            str3 = str15;
                                                        }
                                                        try {
                                                            this.database.execSQL(Queries.getInstance().insertIntoSyncErrorLog(this.arrQueries.get(i6).getColumnName().replaceAll("'", str3), this.arrQueries.get(i6).getSourceID(), this.arrQueries.get(i6).getTableName().replaceAll("'", str3), e18, this.arrQueries.get(i6).getQuery().replaceAll("'", str3), ConstantDeclarations.getInstance().getTBLMASTERVERSION()));
                                                        } catch (Exception e20) {
                                                            e = e20;
                                                            PLog.e(TAG, e);
                                                            str = this.context.getResources().getString(R.string.pmc_label_master_sync_error1);
                                                            PLog.e(TAG, e18);
                                                            i6++;
                                                            str15 = str3;
                                                        }
                                                        str = this.context.getResources().getString(R.string.pmc_label_master_sync_error1);
                                                        PLog.e(TAG, e18);
                                                    }
                                                    i6++;
                                                    str15 = str3;
                                                } catch (Exception e21) {
                                                    exc2 = e21;
                                                    String str16 = str + this.context.getResources().getString(R.string.pmc_label_master_sync_error2);
                                                    try {
                                                        PLog.e(TAG, exc2);
                                                        DataBaseHandler.getInstance().closeDatabase();
                                                        this.database = null;
                                                        return str16;
                                                    } catch (Throwable th4) {
                                                        th2 = th4;
                                                        DataBaseHandler.getInstance().closeDatabase();
                                                        this.database = null;
                                                        throw th2;
                                                    }
                                                }
                                            } catch (Throwable th5) {
                                                th2 = th5;
                                                DataBaseHandler.getInstance().closeDatabase();
                                                this.database = null;
                                                throw th2;
                                            }
                                        }
                                        DataBaseHandler.getInstance().closeDatabase();
                                        this.database = null;
                                        return str;
                                    } catch (Exception e22) {
                                        exc2 = e22;
                                        str = str2;
                                    } catch (Throwable th6) {
                                        th2 = th6;
                                        DataBaseHandler.getInstance().closeDatabase();
                                        this.database = null;
                                        throw th2;
                                    }
                                }
                            } catch (NullPointerException e23) {
                                e = e23;
                                str2 = str;
                            }
                        } catch (Exception e24) {
                            e = e24;
                            str2 = str;
                        }
                    }
                    String str17 = str;
                    try {
                        StringBuilder sb14 = new StringBuilder();
                        sb14.append(str17);
                        sb14.append(this.context.getResources().getString(R.string.pmc_label_no_response));
                        return sb14.toString();
                    } catch (NullPointerException e25) {
                        e2 = e25;
                        str9 = str17;
                        nullPointerException = e2;
                        String str1022 = str9 + this.context.getResources().getString(R.string.pmc_label_master_sync_error4);
                        PLog.e(TAG, nullPointerException);
                        return str1022;
                    } catch (Exception e26) {
                        e = e26;
                        str9 = str17;
                        exc = e;
                        String str1122 = str9 + this.context.getResources().getString(R.string.pmc_label_master_sync_error3);
                        PLog.e(TAG, exc);
                        return str1122;
                    }
                } catch (NullPointerException e27) {
                    e2 = e27;
                    str9 = str;
                } catch (Exception e28) {
                    e = e28;
                    str9 = str;
                }
            } catch (NullPointerException e29) {
                e2 = e29;
                nullPointerException = e2;
                String str10222 = str9 + this.context.getResources().getString(R.string.pmc_label_master_sync_error4);
                PLog.e(TAG, nullPointerException);
                return str10222;
            } catch (Exception e30) {
                e = e30;
                exc = e;
                String str11222 = str9 + this.context.getResources().getString(R.string.pmc_label_master_sync_error3);
                PLog.e(TAG, exc);
                return str11222;
            }
        } catch (Throwable th7) {
            th = th7;
            DataBaseHandler.getInstance().closeDatabase();
            this.database = null;
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public void onPostExecute(String str) {
        super.onPostExecute((MasterSyncAsyncTask) str);
        if (this.progressBarRequired) {
            UtilDeclarations.dismissProgressDialog();
        }
        if (str != null && str.length() == 0) {
            Context context = this.context;
            Toast.makeText(context, context.getResources().getString(R.string.pmc_val_master_sync_done), 0).show();
            return;
        }
        Toast.makeText(this.context, str + IOUtils.LINE_SEPARATOR_UNIX + this.context.getResources().getString(R.string.pmc_val_for_master_sync), 1).show();
    }
}

package com.conceptglobal.pmc.sync;

import android.content.Context;
import android.os.AsyncTask;
import com.conceptglobal.pmc.asynctask.WebService;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.utils.PLog;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import com.google.gson.Gson;
import java.io.IOException;
import java.net.URLEncoder;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.conn.ssl.TokenParser;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class GetToken {
    private Context context;
    private Exception error = null;
    private int tokenttype;

    public GetToken(Context context, int i) {
        this.context = context;
        this.tokenttype = i;
    }

    public void StartGetToken() {
        WebService webService = WebService.getInstance();
        int i = this.tokenttype;
        if (i == 1) {
            try {
                try {
                    String stringValue = GetDataFromDB.getInstance().getStringValue(Queries.getInstance().GetUsernameQuery());
                    String stringValue2 = GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getPasswordQuery());
                    stringValue2.getBytes("UTF-8");
                    String sendRequest = webService.sendRequest("username=" + stringValue + "&password=" + URLEncoder.encode(stringValue2, "UTF-8") + "&grant_type=password", ConstantsPMC.getInstance().getTokenUrl());
                    if (sendRequest == null || sendRequest.length() <= 5) {
                        return;
                    }
                    sendRequest.replace("\"", "");
                    try {
                        GetDataFromDB.getInstance().executeRawQuery(Queries.getInstance().updateWebToken(new JSONObject(sendRequest).getString("access_token")));
                        ConstantsPMC.reset();
                        return;
                    } catch (Exception e) {
                        e.printStackTrace();
                        PLog.e("Web Api Token", e.toString(), "Update login time", UtilDeclarations.getDateTime());
                        return;
                    }
                } catch (Exception e2) {
                    this.error = e2;
                    PLog.e("AutoAppPatchAsync", e2);
                    return;
                }
            } catch (ClientProtocolException e3) {
                this.error = e3;
                PLog.e("AutoAppPatchAsync", e3);
                return;
            } catch (IOException e4) {
                this.error = e4;
                PLog.e("AutoAppPatchAsync", e4);
                return;
            }
        }
        if (i == 2) {
            try {
                try {
                    String stringValue3 = GetDataFromDB.getInstance().getStringValue(Queries.getInstance().GetUsernameQuery());
                    String stringValue4 = GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getPasswordQuery());
                    String stringValue5 = GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getMobileQuery());
                    TokenModel tokenModel = new TokenModel();
                    tokenModel.setUserName(stringValue3);
                    tokenModel.setPassword(stringValue4);
                    tokenModel.setMobile(stringValue5);
                    String sendRequest2 = webService.sendRequest(new Gson().toJson(tokenModel), ConstantsPMC.getInstance().getUrlPMCService(ConstantsPMC.getInstance().getIsTrainingORLive()) + "/" + ConstantsPMC.getInstance().getMethodgetToken());
                    if (sendRequest2 == null || sendRequest2.length() <= 5) {
                        return;
                    }
                    try {
                        GetDataFromDB.getInstance().executeRawQuery(Queries.getInstance().updateWcfToken(sendRequest2.replace('\"', TokenParser.SP).trim()));
                        ConstantsPMC.reset();
                    } catch (Exception e5) {
                        e5.printStackTrace();
                        PLog.e("WCF Token", e5.toString(), "Update login time", UtilDeclarations.getDateTime());
                    }
                } catch (Exception e6) {
                    this.error = e6;
                    PLog.e("AutoAppPatchAsync", e6);
                }
            } catch (ClientProtocolException e7) {
                this.error = e7;
                PLog.e("AutoAppPatchAsync", e7);
            } catch (IOException e8) {
                this.error = e8;
                PLog.e("AutoAppPatchAsync", e8);
            }
        }
    }

    public class TokenModel {
        private String Mobile;
        private String Password;
        private String UserName;

        public TokenModel() {
        }

        public String getMobile() {
            return this.Mobile;
        }

        public void setMobile(String str) {
            this.Mobile = str;
        }

        public String getUserName() {
            return this.UserName;
        }

        public void setUserName(String str) {
            this.UserName = str;
        }

        public String getPassword() {
            return this.Password;
        }

        public void setPassword(String str) {
            this.Password = str;
        }
    }

    public class GetTokenAsync extends AsyncTask<Void, Void, Void> {
        public GetTokenAsync() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Void doInBackground(Void... voidArr) {
            GetToken.this.StartGetToken();
            return null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Void r1) {
            super.onPostExecute((GetTokenAsync) r1);
        }
    }
}

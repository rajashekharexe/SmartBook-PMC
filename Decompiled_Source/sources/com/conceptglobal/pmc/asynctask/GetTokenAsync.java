package com.conceptglobal.pmc.asynctask;

import android.content.Context;
import android.os.AsyncTask;
import android.util.Base64;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.utils.PLog;
import java.io.IOException;
import org.apache.http.client.ClientProtocolException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class GetTokenAsync extends AsyncTask<Void, Void, String> {
    private Context context;
    private Exception error = null;

    public GetTokenAsync(Context context) {
        this.context = context;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public String doInBackground(Void... voidArr) {
        WebService.getInstance();
        try {
            GetDataFromDB.getInstance().getStringValue(Queries.getInstance().GetUsernameQuery());
            Base64.encodeToString(GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getPasswordQuery()).getBytes("UTF-8"), 0);
            return null;
        } catch (ClientProtocolException e) {
            this.error = e;
            PLog.e("AutoAppPatchAsync", e);
            return null;
        } catch (IOException e2) {
            this.error = e2;
            PLog.e("AutoAppPatchAsync", e2);
            return null;
        } catch (Exception e3) {
            this.error = e3;
            PLog.e("AutoAppPatchAsync", e3);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public void onPostExecute(String str) {
        super.onPostExecute((GetTokenAsync) str);
        try {
            new JSONObject(str);
        } catch (Exception unused) {
        }
    }
}

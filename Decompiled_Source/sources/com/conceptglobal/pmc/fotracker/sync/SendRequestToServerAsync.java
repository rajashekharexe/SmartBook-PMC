package com.conceptglobal.pmc.fotracker.sync;

import android.content.Context;
import android.os.AsyncTask;
import com.conceptglobal.pmc.asynctask.WebService;
import com.conceptglobal.pmc.fotracker.OnCompleteListener;
import com.conceptglobal.pmc.fotracker.util.UtilDeclarations;

/* loaded from: classes.dex */
public class SendRequestToServerAsync extends AsyncTask<Void, Void, String> {
    private String URL;
    private Context context;
    private Exception error;
    private String object;
    private OnCompleteListener oncompletelistener;
    private boolean progressBarRequired;

    public SendRequestToServerAsync(Context context, OnCompleteListener onCompleteListener, String str, String str2, Boolean bool) {
        this.error = null;
        this.object = str;
        this.URL = str2;
        this.context = context;
        this.oncompletelistener = onCompleteListener;
        this.progressBarRequired = bool.booleanValue();
    }

    public SendRequestToServerAsync(Context context, OnCompleteListener onCompleteListener, String str, Boolean bool) {
        this.error = null;
        this.context = context;
        this.object = null;
        this.URL = str;
        this.oncompletelistener = onCompleteListener;
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
        String sendGetRequest;
        WebService webService = WebService.getInstance();
        try {
            if (this.object != null) {
                if (this.URL.contains("ActivatePMC")) {
                    sendGetRequest = webService.sendRequestWithoutGzip(this.object, this.URL);
                } else {
                    sendGetRequest = webService.sendRequest(this.object, this.URL);
                }
            } else {
                sendGetRequest = webService.sendGetRequest(this.URL);
            }
            return sendGetRequest;
        } catch (Exception e) {
            this.error = e;
            e.printStackTrace();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public void onPostExecute(String str) {
        super.onPostExecute((SendRequestToServerAsync) str);
        if (this.progressBarRequired) {
            UtilDeclarations.dismissProgressDialog();
        }
        this.oncompletelistener.onComplete(str, this.error);
    }
}

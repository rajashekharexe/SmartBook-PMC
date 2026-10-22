package com.conceptglobal.pmc.asynctask;

import android.content.Context;
import android.os.AsyncTask;
import com.conceptglobal.pmc.PMCApplication;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.database.DataBaseHandler;
import com.conceptglobal.pmc.database.LogDataBaseHandler;
import com.conceptglobal.pmc.utils.FileUtils;
import com.conceptglobal.pmc.utils.FileZipping;
import com.conceptglobal.pmc.utils.PLog;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import io.fabric.sdk.android.services.events.EventsFilesManager;
import java.io.File;
import org.apache.http.entity.mime.MultipartEntity;
import org.apache.http.entity.mime.content.FileBody;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class SendLogDbAsynctask extends AsyncTask<String, Void, Void> {
    private static final String TAG = "SendLogDb";
    private static DataBaseHandler dbInstance = DataBaseHandler.getInstance();
    private Context context;
    private Exception error = null;
    private boolean progressBarRequired;

    public SendLogDbAsynctask(Context context, Boolean bool) {
        this.context = context;
        this.progressBarRequired = bool.booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public Void doInBackground(String... strArr) {
        try {
            FileZipping fileZipping = new FileZipping(this.context.getApplicationContext());
            File file = new File(FileUtils.getDataDir(PMCApplication.getContext()).getAbsolutePath() + "/PMC/" + ConstantsPMC.getInstance().getDeviceID().toString() + EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR + UtilDeclarations.getImageFiledate() + "_LOG.zip");
            fileZipping.zip_File(LogDataBaseHandler.datapath, file.getAbsolutePath());
            File file2 = new File(file.getAbsolutePath());
            try {
                MultipartEntity multipartEntity = new MultipartEntity();
                multipartEntity.addPart("pdadb", new FileBody(file2));
                String sendRequestMultipart = WebService.getInstance().sendRequestMultipart(multipartEntity, ConstantsPMC.getInstance().getDBUploadURL());
                if (sendRequestMultipart != null) {
                    try {
                        JSONObject jSONObject = new JSONArray(sendRequestMultipart).getJSONObject(0);
                        if (jSONObject.has("Status")) {
                            jSONObject.getString("Status").equalsIgnoreCase("Success");
                        }
                    } catch (JSONException e) {
                        e.printStackTrace();
                        PLog.e(TAG, e);
                    }
                }
                new File(file.getAbsolutePath()).delete();
                return null;
            } catch (Exception e2) {
                PLog.e(TAG, e2);
                return null;
            }
        } catch (Exception e3) {
            PLog.e(TAG, e3);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public void onPostExecute(Void r1) {
        super.onPostExecute((SendLogDbAsynctask) r1);
    }
}

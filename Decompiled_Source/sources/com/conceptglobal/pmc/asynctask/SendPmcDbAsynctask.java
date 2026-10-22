package com.conceptglobal.pmc.asynctask;

import android.content.Context;
import android.os.AsyncTask;
import android.widget.Toast;
import com.conceptglobal.pmc.PMCApplication;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.database.DataBaseHandler;
import com.conceptglobal.pmc.sync.GetToken;
import com.conceptglobal.pmc.utils.ConstantDeclarations;
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
public class SendPmcDbAsynctask extends AsyncTask<String, Void, Void> {
    private static final String TAG = "SendPmcDb";
    private static DataBaseHandler dbInstance = DataBaseHandler.getInstance();
    private Context context;
    boolean dbUploadStatus;
    private Exception error = null;
    boolean isRemortDataFlush;
    private boolean progressBarRequired;

    public SendPmcDbAsynctask(Context context, Boolean bool) {
        this.context = context;
        this.progressBarRequired = bool.booleanValue();
    }

    public SendPmcDbAsynctask(Context context, Boolean bool, Boolean bool2) {
        this.context = context;
        this.progressBarRequired = bool.booleanValue();
        this.isRemortDataFlush = bool2.booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public Void doInBackground(String... strArr) {
        try {
            String webApiToken = ConstantsPMC.getInstance().getWebApiToken();
            FileZipping fileZipping = new FileZipping(this.context.getApplicationContext());
            File file = new File(FileUtils.getDataDir(PMCApplication.getContext()).getAbsolutePath() + "/" + ConstantDeclarations.getInstance().getRootFolderName() + "/" + ConstantsPMC.getInstance().getDeviceID().toString() + EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR + UtilDeclarations.getImageFiledate() + "_LOG.zip");
            fileZipping.zip_File(DataBaseHandler.datapath, file.getAbsolutePath());
            File file2 = new File(file.getAbsolutePath());
            try {
                MultipartEntity multipartEntity = new MultipartEntity();
                multipartEntity.addPart("pdadb", new FileBody(file2));
                String sendRequestMultipartwithWebApiToken = WebService.getInstance().sendRequestMultipartwithWebApiToken(multipartEntity, ConstantsPMC.getInstance().getDBUploadURL(), webApiToken);
                if (sendRequestMultipartwithWebApiToken != null) {
                    if (sendRequestMultipartwithWebApiToken.equalsIgnoreCase("Unauthorized") || sendRequestMultipartwithWebApiToken.equalsIgnoreCase("Unauthorised")) {
                        new GetToken(null, 1).StartGetToken();
                        Toast.makeText(this.context, "Db upload failed. Re-try", 0).show();
                    } else {
                        try {
                            JSONObject jSONObject = new JSONArray(sendRequestMultipartwithWebApiToken).getJSONObject(0);
                            if (jSONObject.has("Status") && jSONObject.getString("Status").equalsIgnoreCase("Success")) {
                                this.dbUploadStatus = true;
                            }
                        } catch (JSONException e) {
                            e.printStackTrace();
                            PLog.e(TAG, e);
                        }
                    }
                }
                new File(file.getAbsolutePath()).delete();
            } catch (Exception e2) {
                PLog.e(TAG, e2);
            }
        } catch (Exception e3) {
            PLog.e(TAG, e3);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public void onPostExecute(Void r3) {
        super.onPostExecute((SendPmcDbAsynctask) r3);
        if (this.isRemortDataFlush && this.dbUploadStatus) {
            UtilDeclarations.deleteDir(new File(FileUtils.getDataDir(PMCApplication.getContext()).getAbsolutePath() + ConstantDeclarations.getInstance().getDatabaseFolder()));
            UtilDeclarations.deleteCache(this.context);
        }
    }
}

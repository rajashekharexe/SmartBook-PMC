package com.conceptglobal.pmc;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import com.conceptglobal.pmc.asynctask.SendRequestToServerAsync;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.interfaces.OnCompleteListener;
import com.conceptglobal.pmc.model.NotificationKeyModel;
import com.conceptglobal.pmc.model.SendChangePasswordRequest;
import com.conceptglobal.pmc.utils.ConstantDeclarations;
import com.conceptglobal.pmc.utils.CustomActionBar;
import com.conceptglobal.pmc.utils.Encryption;
import com.conceptglobal.pmc.utils.FileUtils;
import com.conceptglobal.pmc.utils.LabelUtils;
import com.conceptglobal.pmc.utils.PLog;
import com.conceptglobal.pmc.utils.SharedPrefManager;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import com.google.android.gms.tasks.Task;
import com.google.firebase.messaging.FirebaseMessaging;
import com.google.gson.Gson;
import java.io.File;
import java.text.DateFormat;
import java.util.Calendar;

/* loaded from: classes.dex */
public class ChangePasswordActivity extends AppCompatActivity {
    private static final String TAG = "ChangePasswordActivity";
    Button btn_cancel;
    Button btn_submit;
    private Context context;
    SharedPreferences.Editor editor;
    EditText et_cnfm_password;
    EditText et_cur_password;
    EditText et_new_password;
    private boolean isFromRegistration;
    private boolean isRequestCancelled = false;
    private OnCompleteListener onChangePasswordSuccess = new OnCompleteListener() { // from class: com.conceptglobal.pmc.ChangePasswordActivity.3
        @Override // com.conceptglobal.pmc.interfaces.OnCompleteListener
        public void onComplete(String str, Exception exc) {
            if (ChangePasswordActivity.this.isRequestCancelled) {
                ChangePasswordActivity.this.isRequestCancelled = false;
                return;
            }
            if (exc == null) {
                if (str != null && str.length() > 5) {
                    if (str.contains("Success")) {
                        try {
                            DateFormat.getDateInstance().format(Calendar.getInstance().getTime());
                            if (GetDataFromDB.getInstance().executeRawQuery(Queries.getInstance().getUpdatePasword(Encryption.encryptRemovenewLine(ChangePasswordActivity.this.et_new_password.getText().toString()), UtilDeclarations.getDate()))) {
                                SharedPrefManager.putString(ChangePasswordActivity.this, ConstantDeclarations.getInstance().getKeyContentSyncTime(), "01-01-2000 00:00:00.000");
                                ChangePasswordActivity changePasswordActivity = ChangePasswordActivity.this;
                                changePasswordActivity.sharedPreferences = changePasswordActivity.getApplicationContext().getSharedPreferences("MyPref", 4);
                                ChangePasswordActivity changePasswordActivity2 = ChangePasswordActivity.this;
                                changePasswordActivity2.editor = changePasswordActivity2.sharedPreferences.edit();
                                ChangePasswordActivity.this.editor.putString("location", "");
                                ChangePasswordActivity.this.editor.commit();
                                SharedPrefManager.putString(ChangePasswordActivity.this, "location", "");
                                Toast.makeText(ChangePasswordActivity.this, "Password Changed Successfully.", 1).show();
                                ChangePasswordActivity.this.startActivity(new Intent(ChangePasswordActivity.this, (Class<?>) LoginActivity.class));
                                ChangePasswordActivity.this.finish();
                                return;
                            }
                            return;
                        } catch (Exception e) {
                            e.printStackTrace();
                            return;
                        }
                    }
                    if (str.contains("PasswordMisMatch")) {
                        Toast.makeText(ChangePasswordActivity.this.getApplicationContext(), "PasswordMisMatch", 1).show();
                        return;
                    }
                    return;
                }
                Toast.makeText(ChangePasswordActivity.this.getApplicationContext(), "Failed to Update New Password!", 1).show();
                return;
            }
            Toast.makeText(ChangePasswordActivity.this.getApplicationContext(), "Some Error Occured at Server Side!", 1).show();
        }
    };
    private OnCompleteListener onNotificationKeySendSuccess = new OnCompleteListener() { // from class: com.conceptglobal.pmc.ChangePasswordActivity.4
        @Override // com.conceptglobal.pmc.interfaces.OnCompleteListener
        public void onComplete(String str, Exception exc) {
        }
    };
    private String passward;
    private SendRequestToServerAsync sendRequest;
    SharedPreferences sharedPreferences;
    String str_cnfm_password;
    String str_cur_password;
    String str_new_password;
    private WebView webView;

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(com.conceptglobal.pmcdeepakfertilizers.R.layout.changepassword);
        CustomActionBar.initActionBar(this, "Change Password (" + UtilDeclarations.getApplicationVersion(this) + ")");
        this.context = this;
        this.et_cur_password = (EditText) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.etcurrentpassword);
        this.et_new_password = (EditText) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.etnewpassword);
        this.et_cnfm_password = (EditText) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.etretypepasswrd);
        this.btn_submit = (Button) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.btchangepasswordsbmit);
        this.btn_cancel = (Button) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.btchangepasswoedcancel);
        try {
            this.passward = Encryption.decrypt(GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getGetPasswordFromUserDetails()));
        } catch (Exception e) {
            PLog.e(TAG, e);
        }
        this.btn_cancel.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.ChangePasswordActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ChangePasswordActivity.this.et_cur_password.setText("");
                ChangePasswordActivity.this.et_new_password.setText("");
                ChangePasswordActivity.this.et_cnfm_password.setText("");
            }
        });
        if (getIntent().getExtras() != null) {
            boolean z = getIntent().getExtras().getBoolean("ISFromRegistration");
            this.isFromRegistration = z;
            if (z) {
                showAlert("Please enter the password shared to you.", 0);
            }
        }
        this.btn_submit.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.ChangePasswordActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                try {
                    if (ChangePasswordActivity.this.et_cur_password.getText().toString().trim().length() != 0) {
                        if (!ChangePasswordActivity.this.et_cur_password.getText().toString().equalsIgnoreCase(ChangePasswordActivity.this.passward)) {
                            Toast.makeText(ChangePasswordActivity.this.getApplicationContext(), ChangePasswordActivity.this.getString(com.conceptglobal.pmcdeepakfertilizers.R.string.plsvalidcurrentpasswpd), 1).show();
                        } else if (ChangePasswordActivity.this.et_new_password.getText().toString().trim().length() < 4) {
                            Toast.makeText(ChangePasswordActivity.this.getApplicationContext(), ChangePasswordActivity.this.getString(com.conceptglobal.pmcdeepakfertilizers.R.string.plsnewpasswpd), 1).show();
                        } else if (ChangePasswordActivity.this.et_cnfm_password.getText().toString().trim().length() < 4) {
                            Toast.makeText(ChangePasswordActivity.this.getApplicationContext(), ChangePasswordActivity.this.getString(com.conceptglobal.pmcdeepakfertilizers.R.string.plsconfirmpasswpd), 1).show();
                        } else if (!ChangePasswordActivity.this.et_new_password.getText().toString().equals(ChangePasswordActivity.this.et_cnfm_password.getText().toString())) {
                            Toast.makeText(ChangePasswordActivity.this.getApplicationContext(), ChangePasswordActivity.this.getString(com.conceptglobal.pmcdeepakfertilizers.R.string.plsnewconfirmpasswpd), 1).show();
                        } else if (!ChangePasswordActivity.this.et_cur_password.getText().toString().equalsIgnoreCase(ChangePasswordActivity.this.et_new_password.getText().toString())) {
                            if (UtilDeclarations.isOnline(ChangePasswordActivity.this.context)) {
                                SendChangePasswordRequest sendChangePasswordRequest = new SendChangePasswordRequest();
                                sendChangePasswordRequest.setPdaid(Integer.parseInt(ConstantsPMC.getInstance().getDeviceID()));
                                sendChangePasswordRequest.setOldPassword(Encryption.encrypt(ChangePasswordActivity.this.passward));
                                sendChangePasswordRequest.setNewPassword(Encryption.encrypt(ChangePasswordActivity.this.et_new_password.getText().toString()));
                                ChangePasswordActivity.this.sendChangePasswordRequest(new Gson().toJson(sendChangePasswordRequest));
                            } else {
                                Toast.makeText(ChangePasswordActivity.this.getApplicationContext(), ChangePasswordActivity.this.getString(com.conceptglobal.pmcdeepakfertilizers.R.string.no_internet_msg), 1).show();
                            }
                        } else {
                            Toast.makeText(ChangePasswordActivity.this.getApplicationContext(), ChangePasswordActivity.this.getString(com.conceptglobal.pmcdeepakfertilizers.R.string.currentPWDandNewPWDnotSame), 1).show();
                        }
                    } else {
                        Toast.makeText(ChangePasswordActivity.this.getApplicationContext(), ChangePasswordActivity.this.getString(com.conceptglobal.pmcdeepakfertilizers.R.string.plscurrentpasswpd), 1).show();
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        });
        if (this.isFromRegistration) {
            sendNotificationIdtoServer();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendChangePasswordRequest(String str) {
        if (UtilDeclarations.isOnline(this)) {
            SendRequestToServerAsync sendRequestToServerAsync = new SendRequestToServerAsync(this.context, this.onChangePasswordSuccess, str, ConstantsPMC.getInstance().getUrlPMCService(ConstantsPMC.getInstance().getIsTrainingORLive()) + "/" + ConstantsPMC.getInstance().getChangePassword(), true);
            this.sendRequest = sendRequestToServerAsync;
            sendRequestToServerAsync.execute(new Void[0]);
            return;
        }
        Toast.makeText(getApplicationContext(), com.conceptglobal.pmcdeepakfertilizers.R.string.no_internet_msg, 1).show();
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            try {
                if (this.isFromRegistration) {
                    SharedPrefManager.putString(this, ConstantDeclarations.getInstance().getKeyContentSyncTime(), "01-01-2000 00:00:00.000");
                    UtilDeclarations.deleteDir(new File(FileUtils.getDataDir(this.context).getAbsolutePath() + ConstantDeclarations.getInstance().getDatabaseFolder()));
                    UtilDeclarations.deleteCache(this);
                    startActivity(new Intent(this, (Class<?>) RegistrationActivity.class));
                }
            } catch (Exception unused) {
            }
            finish();
        }
        return super.onOptionsItemSelected(menuItem);
    }

    private void showAlert(String str, final int i) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.context);
        builder.setMessage(str).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.ChangePasswordActivity.5
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                dialogInterface.dismiss();
            }
        });
        AlertDialog show = builder.show();
        if (UtilDeclarations.isTablet(this)) {
            UtilDeclarations.makeTabletDialogTextlarge(show);
        }
    }

    private void sendNotificationIdtoServer() {
        try {
            FirebaseMessaging.getInstance().getToken().addOnCompleteListener(new com.google.android.gms.tasks.OnCompleteListener() { // from class: com.conceptglobal.pmc.ChangePasswordActivity$$ExternalSyntheticLambda0
                @Override // com.google.android.gms.tasks.OnCompleteListener
                public final void onComplete(Task task) {
                    ChangePasswordActivity.this.m185x70c6c67e(task);
                }
            });
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: lambda$sendNotificationIdtoServer$0$com-conceptglobal-pmc-ChangePasswordActivity, reason: not valid java name */
    /* synthetic */ void m185x70c6c67e(Task task) {
        if (task.isSuccessful()) {
            String str = (String) task.getResult();
            Log.i("FCM-- firebase token-", str);
            if (str == null || str.equals("")) {
                return;
            }
            NotificationKeyModel notificationKeyModel = new NotificationKeyModel();
            notificationKeyModel.setPDAID(ConstantsPMC.getInstance().getDeviceID());
            notificationKeyModel.setFCMKey(str);
            SharedPrefManager.setStringValue(getApplicationContext(), "FCMKEY", str);
            try {
                SendRequestToServerAsync sendRequestToServerAsync = new SendRequestToServerAsync(this.context, this.onNotificationKeySendSuccess, new Gson().toJson(notificationKeyModel), ConstantsPMC.getInstance().getUrlPMCService(ConstantsPMC.getInstance().getIsTrainingORLive()) + "/" + ConstantsPMC.getInstance().getMethodGetNotificationKey(), false);
                this.sendRequest = sendRequestToServerAsync;
                sendRequestToServerAsync.execute(new Void[0]);
            } catch (Exception e) {
                PLog.e("Notification ", e.toString(), "sendNotificationIdtoServer", e.toString());
            }
        }
    }
}

package com.conceptglobal.pmc;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.StatFs;
import android.text.Editable;
import android.text.Html;
import android.text.InputFilter;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.Log;
import android.util.Patterns;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.ActivityCompat;
import com.conceptglobal.pmc.asynctask.SendRequestToServerAsync;
import com.conceptglobal.pmc.asynctask.WebService;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.DataBaseHandler;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.interfaces.OnCompleteListener;
import com.conceptglobal.pmc.interfaces.OnVerifyOTPListener;
import com.conceptglobal.pmc.model.ActivateUserDetails;
import com.conceptglobal.pmc.model.GetUserDetailsModel;
import com.conceptglobal.pmc.model.NotificationKeyModel;
import com.conceptglobal.pmc.smartalerts.Basics;
import com.conceptglobal.pmc.utils.ConstantDeclarations;
import com.conceptglobal.pmc.utils.CustomActionBar;
import com.conceptglobal.pmc.utils.Encryption;
import com.conceptglobal.pmc.utils.FileUtils;
import com.conceptglobal.pmc.utils.FileZipping;
import com.conceptglobal.pmc.utils.LabelUtils;
import com.conceptglobal.pmc.utils.OTPVerificationDialog;
import com.conceptglobal.pmc.utils.RuntimePermissions;
import com.conceptglobal.pmc.utils.SharedPrefManager;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import com.google.android.gms.tasks.Task;
import com.google.firebase.messaging.Constants;
import com.google.firebase.messaging.FirebaseMessaging;
import com.google.gson.Gson;
import java.io.File;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.util.List;
import java.util.Set;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class RegistrationActivity extends AppCompatActivity implements View.OnClickListener, View.OnFocusChangeListener, OnVerifyOTPListener {
    private static final String TAG = "RegistrationActivity";
    private Button btnSubmit;
    private Context context;
    public File databaseFile;
    private EditText etEmail;
    private EditText etIMEI;
    private EditText etMobile;
    private int minLengthMobile;
    OTPVerificationDialog otpVerificationDialog;
    private RuntimePermissions runtimePermissions;
    private SendRequestToServerAsync sendRequest;
    private SharedPrefManager sharedPrefManager;
    private TextView tvVersion;
    private GetUserDetailsModel userDetails;
    private boolean mIsActivityRunning = false;
    long isExtraColumnRequired = 0;
    private boolean isDataDownloaded = false;
    public File externalfile = null;
    public File imeiExternalFile = null;
    public File imeiInternalFile = null;
    private StringBuilder dbFileLogDataCreation = null;
    String[] reqPerms = {"android.permission.READ_EXTERNAL_STORAGE", "android.permission.CAMERA", "android.permission.READ_PHONE_STATE"};
    String[] reqPerms_33 = {"android.permission.CAMERA", "android.permission.READ_PHONE_STATE"};
    private boolean arePermissionsGranted = true;
    String mOTP = null;
    private OnCompleteListener getUserDetailsListener = new OnCompleteListener() { // from class: com.conceptglobal.pmc.RegistrationActivity.2
        @Override // com.conceptglobal.pmc.interfaces.OnCompleteListener
        public void onComplete(String str, Exception exc) {
            RegistrationActivity.this.btnSubmit.setEnabled(true);
            if (exc != null) {
                if (exc instanceof IOException) {
                    RegistrationActivity.this.showAlert("Unable to get response from server", 1);
                    return;
                } else {
                    RegistrationActivity.this.showAlert("Unable to connect to Network, please check your network connection", 1);
                    return;
                }
            }
            if (str == null || str.length() <= 5) {
                RegistrationActivity.this.showAlert("No response received from server", 1);
                return;
            }
            Log.i(RegistrationActivity.TAG, str + "");
            try {
                Gson gson = new Gson();
                JSONObject jSONObject = new JSONObject(str);
                if (jSONObject.getString("status").equals("AUTHORISED")) {
                    if (jSONObject.getString(Constants.ScionAnalytics.MessageType.DATA_MESSAGE) != null) {
                        RegistrationActivity.this.userDetails = (GetUserDetailsModel) gson.fromJson((Reader) new StringReader(jSONObject.getString(Constants.ScionAnalytics.MessageType.DATA_MESSAGE)), GetUserDetailsModel.class);
                        if (RegistrationActivity.this.userDetails.getUserid() != 0) {
                            Intent intent = new Intent(RegistrationActivity.this, (Class<?>) SplashScreenActivity.class);
                            Bundle bundle = new Bundle();
                            bundle.putBoolean("ISFromRegistration", true);
                            bundle.putSerializable("UserDetails", RegistrationActivity.this.userDetails);
                            bundle.putString("EmployeeId", RegistrationActivity.this.etMobile.getText().toString());
                            intent.putExtras(bundle);
                            RegistrationActivity.this.startActivity(intent);
                            RegistrationActivity.this.finish();
                        } else {
                            RegistrationActivity.this.runOnUiThread(new Runnable() { // from class: com.conceptglobal.pmc.RegistrationActivity.2.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    RegistrationActivity.this.showAlert("This is not a registered employee id", 1);
                                    RegistrationActivity.this.etMobile.setError("This is not a registered employee id");
                                }
                            });
                        }
                    }
                } else if (!jSONObject.getString("status").equals("UNAUTHORISED") && jSONObject.getString("status").equals("PDA ALREADY MAPPED")) {
                    RegistrationActivity.this.userDetails = (GetUserDetailsModel) gson.fromJson((Reader) new StringReader(jSONObject.getString(Constants.ScionAnalytics.MessageType.DATA_MESSAGE)), GetUserDetailsModel.class);
                    String deviceid = RegistrationActivity.this.userDetails.getDeviceid();
                    StringBuilder sb = new StringBuilder();
                    sb.append("User already registered with other device./Re-register \nPress " + RegistrationActivity.this.getColoredSpanned("Yes", "#FF0000") + " to continue. your old mobile will not work.");
                    RegistrationActivity.this.showMobileSwapAlert(sb.toString(), deviceid);
                }
            } catch (Exception unused) {
                RegistrationActivity.this.showAlert("User detaitls inserton failed.", 1);
            }
        }
    };
    private OnCompleteListener getMobileSwapSMSListener = new OnCompleteListener() { // from class: com.conceptglobal.pmc.RegistrationActivity.7
        @Override // com.conceptglobal.pmc.interfaces.OnCompleteListener
        public void onComplete(String str, Exception exc) {
            try {
                if (exc != null) {
                    Toast.makeText(RegistrationActivity.this.getApplicationContext(), "Some Error Occured at Server Side!", 1).show();
                } else if (str == null) {
                    RegistrationActivity.this.showAlert("Error Occured, Please Contact System Adminstrator", 3);
                } else {
                    JSONObject jSONObject = new JSONObject(str);
                    String string = jSONObject.getString(Constants.ScionAnalytics.MessageType.DATA_MESSAGE);
                    String string2 = jSONObject.getString("statusMessage");
                    if (string2 != null && string2.equals("ValidRequest")) {
                        if (string != null && string.length() > 0) {
                            RegistrationActivity.this.mOTP = string;
                            RegistrationActivity.this.otpVerificationDialog = new OTPVerificationDialog(RegistrationActivity.this.context, string, "An SMS is sent to your registered mobile number – Enter the password shared to you through SMS", RegistrationActivity.this, "Registration");
                            RegistrationActivity.this.otpVerificationDialog.showDialog();
                        } else if (string.equals("2")) {
                            RegistrationActivity.this.showAlert("Invalid User.", 3);
                        } else if (string.equals("0")) {
                            RegistrationActivity.this.showAlert("Error Occured, Please Contact System Adminstrator", 3);
                        }
                    } else if (string2 != null && string2.equals("CantGoLive")) {
                        RegistrationActivity.this.showAlert("You are not authorized to do the mobile swap.", 3);
                    } else if (string2 != null && string2.equals("InvalidUser")) {
                        RegistrationActivity.this.showAlert("Invalid user", 0);
                    } else if (string2 != null && string2.equals("InvalidRequest")) {
                        Toast.makeText(RegistrationActivity.this.getApplicationContext(), "Invalid Request", 1).show();
                    } else if (string2 != null && string2.equals("InternalError")) {
                        Toast.makeText(RegistrationActivity.this.getApplicationContext(), "Some Error Occured at Server Side!", 1).show();
                    }
                }
            } catch (Exception unused) {
            }
        }
    };

    static /* synthetic */ void lambda$requestMissingPermissionsForTracking$2() {
    }

    static /* synthetic */ void lambda$requestMissingPermissionsForTracking$4() {
    }

    @Override // com.conceptglobal.pmc.interfaces.OnVerifyOTPListener
    public void onVerifyLater() {
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.context = this;
        setContentView(com.conceptglobal.pmcdeepakfertilizers.R.layout.registration);
        setCustomActionBar();
        this.runtimePermissions = new RuntimePermissions(this);
        this.sharedPrefManager = new SharedPrefManager();
        UtilDeclarations.showProgressDialog(this);
        if (Build.VERSION.SDK_INT >= 23) {
            if (Build.VERSION.SDK_INT >= 33) {
                if (this.runtimePermissions.checkPermissions(this.reqPerms_33)) {
                    initRegistration();
                }
            } else if (this.runtimePermissions.checkPermissions(this.reqPerms)) {
                initRegistration();
            }
        } else {
            initRegistration();
        }
        Log.d("time111", "Registration" + System.currentTimeMillis() + "");
    }

    private void initRegistration() {
        ConstantsPMC.reset();
        init();
        setLayoutData();
        setListeners();
        launchHomeScreen();
    }

    private boolean checkIMEIFileExists() {
        return new File(ConstantDeclarations.imeiFilePath).exists();
    }

    private void launchHomeScreen() {
        try {
            this.dbFileLogDataCreation = new StringBuilder();
            this.databaseFile = new File(FileUtils.getDataDir(this.context).getAbsolutePath(), ConstantDeclarations.getInstance().getDatabasePath());
            this.dbFileLogDataCreation.append("** Migration Report Api 30:");
            if (this.databaseFile.exists()) {
                if (GetDataFromDB.getInstance().getcount(Queries.getInstance().getGetUSerDetailsCount()) != 0) {
                    UtilDeclarations.dismissProgressDialog();
                    String singleValue = GetDataFromDB.getInstance().getSingleValue(Queries.getInstance().getGetIsPasswordChanged());
                    if (singleValue != null && singleValue.equals("1")) {
                        Intent intent = new Intent(this, (Class<?>) LoginActivity.class);
                        intent.addFlags(131072);
                        if (getIntent().getExtras() != null) {
                            intent.putExtras(getIntent().getExtras());
                        }
                        startActivity(intent);
                        finish();
                        return;
                    }
                    Intent intent2 = new Intent(this, (Class<?>) ChangePasswordActivity.class);
                    intent2.putExtra("ISFromRegistration", true);
                    startActivity(intent2);
                    finish();
                    return;
                }
                UtilDeclarations.dismissProgressDialog();
                return;
            }
            UtilDeclarations.dismissProgressDialog();
        } catch (Exception unused) {
            UtilDeclarations.dismissProgressDialog();
        }
    }

    private void setCustomActionBar() {
        CustomActionBar.initActionBarNoStatus(this, "Registration (" + UtilDeclarations.getApplicationVersion(this.context) + ")");
    }

    private void getLanguageConfigurations(int i) {
        try {
            GetDataFromDB.getInstance().getFOLables(Queries.getInstance().getStrings(i));
        } catch (Exception unused) {
        }
    }

    private void init() {
        DataBaseHandler.reset();
        EditText editText = (EditText) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.et_mobile_registration);
        this.etMobile = editText;
        editText.setInputType(1);
        this.etEmail = (EditText) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.et_email_registration);
        this.etIMEI = (EditText) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.et_imei_registration);
        this.btnSubmit = (Button) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.btn_submit_registration);
        this.tvVersion = (TextView) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tv_copyright_login);
        this.minLengthMobile = 3;
    }

    private void setLayoutData() {
        this.tvVersion.setText("Version ( " + UtilDeclarations.getApplicationVersion(this.context) + " )");
        this.etMobile.setFilters(new InputFilter[]{new InputFilter.LengthFilter(10)});
        this.etEmail.setFilters(new InputFilter[]{new InputFilter.LengthFilter(50)});
        this.etIMEI.setFilters(new InputFilter[]{new InputFilter.LengthFilter(20)});
    }

    private void setListeners() {
        this.etMobile.setOnFocusChangeListener(this);
        this.btnSubmit.setOnClickListener(this);
    }

    private void checkValidations() {
        this.etMobile.addTextChangedListener(new TextWatcher() { // from class: com.conceptglobal.pmc.RegistrationActivity.1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (editable.toString().length() == 0) {
                    RegistrationActivity.this.etMobile.setError(null);
                    return;
                }
                if (editable.toString().length() >= RegistrationActivity.this.minLengthMobile) {
                    RegistrationActivity.this.etMobile.setError(null);
                    return;
                }
                RegistrationActivity.this.etMobile.setError(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_haveToEnterErrorText()) + RegistrationActivity.this.minLengthMobile + GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_charactersInPWError()));
            }
        });
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        UtilDeclarations.hideInputKeyboard(this.context);
        if (view.getId() != com.conceptglobal.pmcdeepakfertilizers.R.id.btn_submit_registration) {
            return;
        }
        setErrorForUserDetails();
        if (this.etMobile.getError() != null) {
            setErrorForUserDetails();
            return;
        }
        this.btnSubmit.setEnabled(false);
        if (UtilDeclarations.isOnline(this.context)) {
            getUserDetails("");
        } else {
            this.btnSubmit.setEnabled(true);
            showAlert(" Unable to connect server, Please check your interne connection", 1);
        }
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z) {
        if (view.getId() == com.conceptglobal.pmcdeepakfertilizers.R.id.et_mobile_registration && !z) {
            if (this.etMobile.getText().toString().length() == 0) {
                this.etMobile.setError(null);
                return;
            }
            if (this.etMobile.getText().toString().length() >= this.minLengthMobile) {
                this.etMobile.setError(null);
                return;
            }
            this.etMobile.setError("You have to enter " + this.minLengthMobile + "characters");
        }
    }

    private void getUserDetails(String str) {
        String string;
        ActivateUserDetails activateUserDetails = new ActivateUserDetails();
        String deviceIMEIMultiple_NEW = UtilDeclarations.getDeviceIMEIMultiple_NEW(this.context);
        if ((TextUtils.isEmpty(deviceIMEIMultiple_NEW) || deviceIMEIMultiple_NEW.length() < 2) && !UtilDeclarations.checkIMEIFileExists()) {
            deviceIMEIMultiple_NEW = UtilDeclarations.generateIMEI(this.etMobile.getText().toString().replaceAll("[^0-9]", ""), this.context);
            UtilDeclarations.saveIMEIDetailsInFile(ConstantDeclarations.imeiFilePath, deviceIMEIMultiple_NEW, false);
        } else if (!TextUtils.isEmpty(deviceIMEIMultiple_NEW) && deviceIMEIMultiple_NEW.length() > 2 && !UtilDeclarations.checkIMEIFileExists()) {
            UtilDeclarations.saveIMEIDetailsInFile(ConstantDeclarations.imeiFilePath, deviceIMEIMultiple_NEW, false);
        } else if (UtilDeclarations.checkIMEIFileExists()) {
            deviceIMEIMultiple_NEW = FileZipping.getIMEIFromFile();
        }
        Gson gson = new Gson();
        activateUserDetails.setIMEINumber(deviceIMEIMultiple_NEW);
        activateUserDetails.setStrMobile(this.etMobile.getText().toString());
        activateUserDetails.setMobileSwap(str);
        String methodActivatePMC = ConstantsPMC.getInstance().getMethodActivatePMC();
        activateUserDetails.setStatus("NEW");
        activateUserDetails.setDeviceModel("" + Build.MANUFACTURER + "-" + Build.MODEL + "-Total Ram-" + getRamSize() + "- Available space-" + getFreeSpace());
        StringBuilder sb = new StringBuilder("");
        sb.append(Build.VERSION.RELEASE);
        activateUserDetails.setOSVersion(sb.toString());
        activateUserDetails.setMode("");
        if (getIntent().getExtras() != null && (string = getIntent().getExtras().getString("Mode")) != null) {
            activateUserDetails.setMode(string);
        }
        if (SharedPrefManager.getMode(getApplicationContext()).equals("Live")) {
            activateUserDetails.setMode("Live");
        }
        String json = gson.toJson(activateUserDetails);
        SendRequestToServerAsync sendRequestToServerAsync = new SendRequestToServerAsync(this.context, this.getUserDetailsListener, json, ConstantsPMC.getInstance().getUrlPMCService(2) + "/" + methodActivatePMC, true);
        this.sendRequest = sendRequestToServerAsync;
        sendRequestToServerAsync.execute(new Void[0]);
    }

    private String getRamSize() {
        try {
            ActivityManager activityManager = (ActivityManager) this.context.getSystemService("activity");
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            activityManager.getMemoryInfo(memoryInfo);
            return (memoryInfo.totalMem / 1048576) + " MB";
        } catch (Exception unused) {
            return "-1";
        }
    }

    private void deleteTerritoryData() {
        try {
            GetDataFromDB getDataFromDB = GetDataFromDB.getInstance();
            getDataFromDB.executeRawQuery("delete from FarmerCropDetails where FarmerID NOT in (select FarmerID from FarmerMaster JOIN TerritoryMaster on FarmerMaster.TerritoryId=TerritoryMaster.territoryID)");
            getDataFromDB.executeRawQuery("delete from DealerLandDetails where FarmerID NOT in (select FarmerID from FarmerMaster JOIN TerritoryMaster on FarmerMaster.TerritoryId=TerritoryMaster.territoryID)");
            getDataFromDB.executeRawQuery("delete from FarmerMaster where TerritoryId Not in (select territoryID from TerritoryMaster)");
            getDataFromDB.executeRawQuery("delete from DealerMaster where TerritoryId Not in (select territoryID from TerritoryMaster)");
            getDataFromDB.executeRawQuery("delete from PMCTerritoryFarmerMaster where TerritoryId Not in (select territoryID from TerritoryMaster)");
            getDataFromDB.executeRawQuery("delete from PMCTerritoryDealerMaster where TerritoryId Not in (select territoryID from TerritoryMaster)");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void sendNotificationIdtoServer() {
        FirebaseMessaging.getInstance().getToken().addOnCompleteListener(new com.google.android.gms.tasks.OnCompleteListener() { // from class: com.conceptglobal.pmc.RegistrationActivity$$ExternalSyntheticLambda4
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task task) {
                RegistrationActivity.lambda$sendNotificationIdtoServer$0(task);
            }
        });
    }

    static /* synthetic */ void lambda$sendNotificationIdtoServer$0(Task task) {
        String str = (String) task.getResult();
        if (str == null || str.equals("")) {
            return;
        }
        NotificationKeyModel notificationKeyModel = new NotificationKeyModel();
        notificationKeyModel.setPDAID(ConstantsPMC.getInstance().getDeviceID());
        notificationKeyModel.setFCMKey(str);
        try {
            String sendRequest = WebService.getInstance().sendRequest(new Gson().toJson(notificationKeyModel), ConstantsPMC.getInstance().getUrlPMCService(ConstantsPMC.getInstance().getIsTrainingORLive()) + "/" + ConstantsPMC.getInstance().getMethodGetNotificationKey());
            if (sendRequest == null || sendRequest.isEmpty()) {
                return;
            }
            Log.d(TAG, sendRequest + "");
        } catch (Exception unused) {
        }
    }

    private void showDetailsToUser() {
        if (this.mIsActivityRunning) {
            this.isDataDownloaded = false;
            String empty = ConstantDeclarations.getInstance().getEMPTY();
            if (this.userDetails.getFirstName() != null && this.userDetails.getFirstName().length() > 0) {
                empty = this.userDetails.getFirstName();
            } else if (this.userDetails.getUsername() != null && this.userDetails.getUsername().length() > 0) {
                empty = this.userDetails.getUsername();
            }
            SharedPrefManager.storeFOName(this.context, empty);
            final Dialog dialog = new Dialog(this.context);
            dialog.setTitle(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_userDetailsDialogText()));
            dialog.setContentView(com.conceptglobal.pmcdeepakfertilizers.R.layout.show_user_details);
            TextView textView = (TextView) dialog.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tv_disc_user_details1);
            TextView textView2 = (TextView) dialog.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tv_disc_user_details2);
            Button button = (Button) dialog.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.btn_user_details);
            textView.setText(this.userDetails.getUsername());
            try {
                textView2.setText(Encryption.decrypt(this.userDetails.getPassword()).trim());
            } catch (Exception unused) {
            }
            button.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()));
            button.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.RegistrationActivity.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    dialog.dismiss();
                    Intent intent = new Intent(RegistrationActivity.this, (Class<?>) LoginActivity.class);
                    intent.putExtra("IsRegistrationSuccess", true);
                    RegistrationActivity.this.startActivity(intent);
                    RegistrationActivity.this.finish();
                }
            });
            dialog.setCancelable(false);
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
            layoutParams.copyFrom(dialog.getWindow().getAttributes());
            layoutParams.width = -1;
            layoutParams.height = -2;
            dialog.getWindow().setAttributes(layoutParams);
            dialog.show();
        }
    }

    private void setErrorForUserDetails() {
        if (this.etMobile.getText().toString().length() == 0) {
            this.etMobile.setError("Enter employee id");
            return;
        }
        if (this.etMobile.getText().toString().length() >= this.minLengthMobile) {
            this.etMobile.setError(null);
            return;
        }
        this.etMobile.setError("You have to enter " + this.minLengthMobile + "characters");
    }

    private boolean isValidEmail(String str) {
        return Patterns.EMAIL_ADDRESS.matcher(str.trim()).matches();
    }

    private boolean isValidIMEI(String str) {
        return !str.isEmpty() && str.length() >= 14 && str.length() <= 20;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.mIsActivityRunning = true;
    }

    private String getFreeSpace() {
        try {
            StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
            return ((statFs.getBlockSizeLong() * statFs.getAvailableBlocksLong()) / 1048576) + " MB";
        } catch (Exception unused) {
            return "-1";
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        this.mIsActivityRunning = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showAlert(String str, final int i) {
        if (this.mIsActivityRunning) {
            AlertDialog.Builder builder = new AlertDialog.Builder(this.context);
            builder.setMessage(str).setCancelable(false).setPositiveButton(getResources().getString(com.conceptglobal.pmcdeepakfertilizers.R.string.ok), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.RegistrationActivity.4
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i2) {
                    dialogInterface.dismiss();
                    if (i != 0) {
                        return;
                    }
                    RegistrationActivity.this.finish();
                }
            });
            AlertDialog show = builder.show();
            if (UtilDeclarations.isTablet(this)) {
                UtilDeclarations.makeTabletDialogTextlarge(show);
            }
        }
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        return super.onCreateOptionsMenu(menu);
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            UtilDeclarations.hideInputKeyboard(this.context);
            finish();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        super.onStop();
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0088  */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity, androidx.core.app.ActivityCompat.OnRequestPermissionsResultCallback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onRequestPermissionsResult(int r8, java.lang.String[] r9, int[] r10) {
        /*
            r7 = this;
            java.lang.String r0 = "Permission callback called-------"
            java.lang.String r1 = "RegistrationActivity"
            android.util.Log.d(r1, r0)
            r0 = 4
            r2 = 5
            r3 = 1
            java.lang.String r4 = "Permissions are not granted"
            r5 = 0
            if (r8 == r0) goto L6f
            if (r8 == r2) goto L78
            r0 = 7
            if (r8 == r0) goto L16
            goto L95
        L16:
            int r8 = r10.length
            if (r8 <= 0) goto L6f
            r8 = 0
        L1a:
            int r0 = r9.length
            if (r8 >= r0) goto L6f
            r0 = r10[r5]
            if (r0 != 0) goto L24
            r7.arePermissionsGranted = r3
            goto L6c
        L24:
            java.lang.String r0 = "Some permissions are not granted ask again "
            android.util.Log.d(r1, r0)
            int r0 = android.os.Build.VERSION.SDK_INT
            r6 = 33
            if (r0 < r6) goto L47
            java.lang.String[] r0 = r7.reqPerms_33
            r0 = r0[r8]
            boolean r0 = androidx.core.app.ActivityCompat.shouldShowRequestPermissionRationale(r7, r0)
            if (r0 == 0) goto L6c
            android.content.Context r0 = r7.getApplicationContext()
            android.widget.Toast r0 = android.widget.Toast.makeText(r0, r4, r5)
            r0.show()
            r7.arePermissionsGranted = r5
            goto L6c
        L47:
            java.lang.String[] r0 = r7.reqPerms
            r0 = r0[r8]
            boolean r0 = androidx.core.app.ActivityCompat.shouldShowRequestPermissionRationale(r7, r0)
            if (r0 == 0) goto L5f
            android.content.Context r0 = r7.getApplicationContext()
            android.widget.Toast r0 = android.widget.Toast.makeText(r0, r4, r5)
            r0.show()
            r7.arePermissionsGranted = r5
            goto L6c
        L5f:
            android.content.Context r0 = r7.getApplicationContext()
            android.widget.Toast r0 = android.widget.Toast.makeText(r0, r4, r5)
            r0.show()
            r7.arePermissionsGranted = r5
        L6c:
            int r8 = r8 + 1
            goto L1a
        L6f:
            r8 = r10[r5]
            if (r8 != 0) goto L76
            r7.arePermissionsGranted = r3
            goto L78
        L76:
            r7.arePermissionsGranted = r5
        L78:
            r8 = r10[r5]
            if (r8 != 0) goto L88
            boolean r8 = com.conceptglobal.pmc.utils.RuntimePermissions.isBackgroundPermissionMissing(r7)
            if (r8 == 0) goto L85
            r7.arePermissionsGranted = r5
            goto L95
        L85:
            r7.arePermissionsGranted = r3
            goto L95
        L88:
            android.content.Context r8 = r7.getApplicationContext()
            android.widget.Toast r8 = android.widget.Toast.makeText(r8, r4, r5)
            r8.show()
            r7.arePermissionsGranted = r5
        L95:
            boolean r8 = r7.arePermissionsGranted
            if (r8 == 0) goto L9d
            r7.initRegistration()
            goto Lae
        L9d:
            android.content.Context r8 = r7.getApplicationContext()
            android.widget.Toast r8 = android.widget.Toast.makeText(r8, r4, r5)
            r8.show()
            r7.showAlert(r4, r2)
            r7.requestMissingPermissionsForTracking()
        Lae:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.RegistrationActivity.onRequestPermissionsResult(int, java.lang.String[], int[]):void");
    }

    private void requestMissingPermissionsForTracking() {
        final Set<String> missingPermissionsForTracking = RuntimePermissions.missingPermissionsForTracking(this);
        if (!missingPermissionsForTracking.isEmpty()) {
            RuntimePermissions.askForLocationPermission(this, new Runnable() { // from class: com.conceptglobal.pmc.RegistrationActivity$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    RegistrationActivity.this.m188x327c4d44(missingPermissionsForTracking);
                }
            }, new Runnable() { // from class: com.conceptglobal.pmc.RegistrationActivity$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    RegistrationActivity.lambda$requestMissingPermissionsForTracking$2();
                }
            });
        } else if (RuntimePermissions.isBackgroundPermissionMissing(this)) {
            RuntimePermissions.askForLocationPermission(this, new Runnable() { // from class: com.conceptglobal.pmc.RegistrationActivity$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    RegistrationActivity.this.m189xb8552002();
                }
            }, new Runnable() { // from class: com.conceptglobal.pmc.RegistrationActivity$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    RegistrationActivity.lambda$requestMissingPermissionsForTracking$4();
                }
            });
        } else {
            initRegistration();
            Toast.makeText(this.context, "all grant", 0).show();
        }
    }

    /* renamed from: lambda$requestMissingPermissionsForTracking$1$com-conceptglobal-pmc-RegistrationActivity, reason: not valid java name */
    /* synthetic */ void m188x327c4d44(Set set) {
        ActivityCompat.requestPermissions(this, (String[]) set.toArray(new String[0]), 4);
    }

    /* renamed from: lambda$requestMissingPermissionsForTracking$3$com-conceptglobal-pmc-RegistrationActivity, reason: not valid java name */
    /* synthetic */ void m189xb8552002() {
        ActivityCompat.requestPermissions(this, new String[]{"android.permission.ACCESS_BACKGROUND_LOCATION"}, 5);
    }

    private void locationPermissionNotGranted(List<String> list) {
        startActivity(Basics.get((Activity) this).createMessageIntent(getString(com.conceptglobal.pmcdeepakfertilizers.R.string.locationPermissionsUngranted), null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showMobileSwapAlert(String str, final String str2) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.context);
        builder.setMessage(Html.fromHtml(str)).setCancelable(false).setPositiveButton(getResources().getString(com.conceptglobal.pmcdeepakfertilizers.R.string.pmc_yes), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.RegistrationActivity.6
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
                RegistrationActivity.this.getMobileSwapSMS(str2);
            }
        }).setNegativeButton(getResources().getString(com.conceptglobal.pmcdeepakfertilizers.R.string.pmc_no), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.RegistrationActivity.5
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        });
        AlertDialog show = builder.show();
        if (UtilDeclarations.isTablet(this)) {
            UtilDeclarations.makeTabletDialogTextlarge(show);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getMobileSwapSMS(String str) {
        SendRequestToServerAsync sendRequestToServerAsync = new SendRequestToServerAsync(this.context, this.getMobileSwapSMSListener, null, ConstantsPMC.getInstance().getUrlPMCService(2) + "/" + ConstantsPMC.getInstance().getMethodLiveOrClearDB() + "/" + str + "/SwapOTP", true);
        this.sendRequest = sendRequestToServerAsync;
        sendRequestToServerAsync.execute(new Void[0]);
    }

    @Override // com.conceptglobal.pmc.interfaces.OnVerifyOTPListener
    public void onSubmitOTP(String str) {
        if (str != null && str.equalsIgnoreCase(this.mOTP)) {
            this.otpVerificationDialog.dismissDialog();
            getUserDetails("swap");
        } else {
            Toast.makeText(this, "Please enter valid OTP.", 1).show();
        }
    }

    @Override // com.conceptglobal.pmc.interfaces.OnVerifyOTPListener
    public void onResendOTP() {
        getUserDetails("swap");
    }

    @Override // com.conceptglobal.pmc.interfaces.OnVerifyOTPListener
    public void onClose() {
        this.otpVerificationDialog.dismissDialog();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getColoredSpanned(String str, String str2) {
        return "<font color=" + str2 + ">" + str + "</font>";
    }
}

package com.conceptglobal.pmc;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.database.sqlite.SQLiteDatabase;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.storage.StorageManager;
import android.text.InputFilter;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.WindowInsetsController;
import android.view.inputmethod.InputMethodManager;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.core.content.ContextCompat;
import androidx.work.ExistingPeriodicWorkPolicy;
import androidx.work.ListenableWorker;
import androidx.work.PeriodicWorkRequest;
import androidx.work.WorkManager;
import com.conceptglobal.imaterialdesign.app.Dialog;
import com.conceptglobal.imaterialdesign.app.DialogFragment;
import com.conceptglobal.imaterialdesign.app.ThemeManager;
import com.conceptglobal.imaterialdesign.widget.Button;
import com.conceptglobal.imaterialdesign.widget.EditText;
import com.conceptglobal.imaterialdesign.widget.TextView;
import com.conceptglobal.pmc.asynctask.SendRequestToServerAsync;
import com.conceptglobal.pmc.asynctask.WebService;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.common.DBDownloader;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.DataBaseHandler;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.database.InsertDataIntoDB;
import com.conceptglobal.pmc.interfaces.OnCompleteListener;
import com.conceptglobal.pmc.interfaces.OnRequestCancelListener;
import com.conceptglobal.pmc.interfaces.OnRequestFinishListener;
import com.conceptglobal.pmc.model.DataAcknowledgementIMEIActiveStatus;
import com.conceptglobal.pmc.model.ForgotPasswordModel;
import com.conceptglobal.pmc.model.GetGeography;
import com.conceptglobal.pmc.model.GetUserDetailsModel;
import com.conceptglobal.pmc.model.LiveSMSModel;
import com.conceptglobal.pmc.model.ResponseModel;
import com.conceptglobal.pmc.model.SDTV;
import com.conceptglobal.pmc.model.SendAckSdtv;
import com.conceptglobal.pmc.model.UserIMEIStatusModel;
import com.conceptglobal.pmc.patch.Patch;
import com.conceptglobal.pmc.promotions.utils.DeviceMemory;
import com.conceptglobal.pmc.service.SyncDataService;
import com.conceptglobal.pmc.sync.DbPatch;
import com.conceptglobal.pmc.sync.DbPatch.DbPatchAsyncTask;
import com.conceptglobal.pmc.sync.GetToken;
import com.conceptglobal.pmc.utils.ConstantDeclarations;
import com.conceptglobal.pmc.utils.CustomActionBar;
import com.conceptglobal.pmc.utils.DBPatchQueries;
import com.conceptglobal.pmc.utils.FileUtils;
import com.conceptglobal.pmc.utils.LabelUtils;
import com.conceptglobal.pmc.utils.PLog;
import com.conceptglobal.pmc.utils.SharedPrefManager;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import com.conceptglobal.pmc.worker.DataSyncWorker;
import com.conceptglobal.pmc.worker.LogsSyncWorker;
import com.conceptglobal.pmc.worker.MasterSyncWorker;
import com.github.amlcurran.showcaseview.ShowcaseView;
import com.github.amlcurran.showcaseview.targets.ViewTarget;
import com.google.firebase.messaging.Constants;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import java.io.File;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.lang.reflect.Method;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class LoginActivity extends AppCompatActivity implements View.OnClickListener, OnRequestFinishListener, OnRequestCancelListener {
    public static final String DATA_SYNC_TASK_ID = "DataSyncTaskID";
    public static final String LOG_SYNC_TASK_ID = "LogSyncTaskID";
    public static final String MASTER_SYNC_TASK_ID = "MasterSyncTaskID";
    private static final String TAG = "Login Activity";
    private static DataBaseHandler dbInstance = DataBaseHandler.getInstance();
    private static int trainingDaysDefaultValue = 3;
    private Button btnSubmit;
    private Bundle bundleData;
    private Context context;
    private Dialog d_language;
    private EditText emptyedit;
    private EditText etPin;
    private String foGeoDisplayname;
    private String foName;
    private String foPdaId;
    private boolean isApicallInProgress;
    private boolean isSyncing;
    private int languageSelectedId;
    private Toolbar mToolbar;
    public String notificationData;
    private SendAckSdtv objAck;
    private String password;
    public ProgressBar progressBar;
    private SendRequestToServerAsync sendRequest;
    private SharedPrefManager sharedPrefman;
    private ShowcaseView showcaseView;
    private boolean showingUserdetails;
    private TextView toolbarTitle;
    private TextView tvChangeLanguage;
    private TextView tvCopyRight;
    private TextView tvForgotPwd;
    private TextView tvGeoDisplayName;
    private TextView tvName;
    private TextView tvPdaId;
    private String userActiveStatus;
    private String userIMEIActiveStatus;
    private String userSuspendStatus;
    Dialog.Builder builder = null;
    private int farmersAssignedCount = 0;
    int liveOrTrain = 2;
    private String wrongPasswordLimit = "8";
    private int wrongPasswordEntries = 0;
    private int counter = 0;
    private String trainingStatusMsg = null;
    private String trainingstartDate = null;
    long NUM_BYTES_NEEDED_FOR_MY_APP = 512000;
    private OnCompleteListener getUserImeiStatusListener = new OnCompleteListener() { // from class: com.conceptglobal.pmc.LoginActivity.13
        @Override // com.conceptglobal.pmc.interfaces.OnCompleteListener
        public void onComplete(String str, Exception exc) {
            LoginActivity.this.isApicallInProgress = false;
            if (exc != null || str == null || str.length() <= 5) {
                return;
            }
            try {
                JSONObject jSONObject = new JSONObject(str);
                LoginActivity.this.trainingStatusMsg = jSONObject.getString("statusMessage");
                GetUserDetailsModel getUserDetailsModel = (GetUserDetailsModel) new Gson().fromJson((Reader) new StringReader(jSONObject.getString(Constants.ScionAnalytics.MessageType.DATA_MESSAGE)), GetUserDetailsModel.class);
                if (getUserDetailsModel.getUserid() != 0) {
                    GetDataFromDB.getInstance().executeRawQuery(Queries.getInstance().updateUserImEiStatus(getUserDetailsModel.getActive()));
                    GetDataFromDB.getInstance().executeRawQuery(Queries.getInstance().updateUserSuspendStatus(getUserDetailsModel.getIsDeviceActive(), getUserDetailsModel.getUserActive()));
                }
                DataAcknowledgementIMEIActiveStatus dataAcknowledgementIMEIActiveStatus = new DataAcknowledgementIMEIActiveStatus();
                dataAcknowledgementIMEIActiveStatus.setIMEINumber(UtilDeclarations.getDeviceIMEIMultiple(LoginActivity.this.context));
                dataAcknowledgementIMEIActiveStatus.setPdaId(ConstantsPMC.getInstance().getDeviceID());
                LoginActivity.this.new AcknowledgementUserIMEIStatus(dataAcknowledgementIMEIActiveStatus).execute(new Void[0]);
            } catch (Exception e) {
                PLog.e(" Get User details", e, 0);
            }
        }
    };
    private OnCompleteListener getForgotPwdResponseListener = new OnCompleteListener() { // from class: com.conceptglobal.pmc.LoginActivity.14
        @Override // com.conceptglobal.pmc.interfaces.OnCompleteListener
        public void onComplete(String str, Exception exc) {
            try {
                if (exc != null) {
                    Toast.makeText(LoginActivity.this.getApplicationContext(), "Some Error Occured at Server Side!", 1).show();
                } else if (str == null) {
                    LoginActivity.this.showAlert("Error Occured, Please Contact System Adminstrator");
                } else {
                    String string = new JSONObject(str).getString(Constants.ScionAnalytics.MessageType.DATA_MESSAGE);
                    if (string != null) {
                        if (string.equals("1")) {
                            LoginActivity.this.showAlert("Password shared to you through SMS");
                        } else if (string.equals("2")) {
                            LoginActivity.this.showAlert("Invalid User.");
                        } else if (string.equals("0")) {
                            LoginActivity.this.showAlert("Error Occured, Please Contact System Adminstrator");
                        }
                    }
                }
            } catch (Exception unused) {
            }
        }
    };
    private OnCompleteListener getLiveStatusSMSListener = new OnCompleteListener() { // from class: com.conceptglobal.pmc.LoginActivity.15
        @Override // com.conceptglobal.pmc.interfaces.OnCompleteListener
        public void onComplete(String str, Exception exc) {
            try {
                if (exc != null) {
                    Toast.makeText(LoginActivity.this.getApplicationContext(), "Some Error Occured at Server Side!", 1).show();
                } else if (str == null) {
                    LoginActivity.this.showAlert("Error Occured, Please Contact System Adminstrator");
                } else {
                    JSONObject jSONObject = new JSONObject(str);
                    String string = jSONObject.getString(Constants.ScionAnalytics.MessageType.DATA_MESSAGE);
                    String string2 = jSONObject.getString("statusMessage");
                    if (string2 != null && string2.equals("ValidRequest")) {
                        if (string != null && string.length() > 0) {
                            LoginActivity.this.showLiveCustomDialog(string, "Live", "Please enter the password shared to you.");
                            Log.d("Live Pin", "" + string);
                        } else if (string.equals("2")) {
                            LoginActivity.this.showAlert("Invalid User.");
                        } else if (string.equals("0")) {
                            LoginActivity.this.showAlert("Error Occured, Please Contact System Adminstrator");
                        }
                    } else if (string2 != null && string2.equals("CantGoLive")) {
                        LoginActivity.this.showAlert("You are not authorized to get into Live mode.");
                    } else if (string2 != null && string2.equals("InvalidUser")) {
                        LoginActivity.this.showAlert("Invalid user");
                    } else if (string2 != null && string2.equals("InvalidRequest")) {
                        Toast.makeText(LoginActivity.this.getApplicationContext(), "Invalid Request", 1).show();
                    } else if (string2 != null && string2.equals("InternalError")) {
                        Toast.makeText(LoginActivity.this.getApplicationContext(), "Some Error Occured at Server Side!", 1).show();
                    }
                }
            } catch (Exception unused) {
            }
        }
    };

    static /* synthetic */ int access$1708(LoginActivity loginActivity) {
        int i = loginActivity.counter;
        loginActivity.counter = i + 1;
        return i;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        WindowInsetsController insetsController;
        super.onCreate(bundle);
        setContentView(com.conceptglobal.pmcdeepakfertilizers.R.layout.login);
        if (Build.VERSION.SDK_INT >= 30) {
            getWindow().setStatusBarColor(ContextCompat.getColor(this, com.conceptglobal.pmcdeepakfertilizers.R.color.colorPrimaryDark));
            getWindow().setDecorFitsSystemWindows(false);
            insetsController = getWindow().getInsetsController();
            if (insetsController != null) {
                insetsController.setSystemBarsAppearance(8, 8);
            }
            getWindow().setStatusBarColor(ContextCompat.getColor(this, com.conceptglobal.pmcdeepakfertilizers.R.color.colorPrimary));
        }
        this.context = this;
        this.sharedPrefman = new SharedPrefManager();
        this.languageSelectedId = SharedPrefManager.getPMCLanguage(this.context);
        ConstantsPMC.reset();
        getLanguageConfigurations(this.languageSelectedId);
        this.liveOrTrain = ConstantsPMC.getInstance().getIsTrainingORLive();
        Log.d("time111", "Login" + System.currentTimeMillis() + "");
        try {
            InsertDataIntoDB.insertLog4Trace("Login", "", "", "", "", false);
        } catch (Exception e) {
            e.printStackTrace();
        }
        init();
        setActionBar();
        setLayoutData();
        bindLabelNames();
        setListeners("Setting listener");
        createExtraColumns();
        if (UtilDeclarations.isOnline(this)) {
            checkUserImeiActiveStatus();
            DbPatch dbPatch = new DbPatch(this.context, false, true);
            dbPatch.mTask = dbPatch.new DbPatchAsyncTask();
            dbPatch.mTask.execute(new String[0]);
        } else {
            checkLoginStatus(true);
        }
        Log.d("time", System.currentTimeMillis() + "");
        try {
            long lookupValue = GetDataFromDB.getInstance().getLookupValue(Queries.getInstance().getItemValue("FreeSpaceRequiredForDC"));
            this.NUM_BYTES_NEEDED_FOR_MY_APP = lookupValue > 0 ? lookupValue * 1024 : this.NUM_BYTES_NEEDED_FOR_MY_APP;
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void startTimer() {
        try {
            this.isApicallInProgress = true;
            long lookupValue = GetDataFromDB.getInstance().getLookupValue(Queries.getInstance().getItemValue("LoginApiSkipTime"));
            if (lookupValue == 0) {
                lookupValue = 60;
            }
            new Handler().postDelayed(new Runnable() { // from class: com.conceptglobal.pmc.LoginActivity.1
                @Override // java.lang.Runnable
                public void run() {
                    if (LoginActivity.this.isApicallInProgress) {
                        String value = GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getLowInternetMsg());
                        LoginActivity loginActivity = LoginActivity.this;
                        if (value == null) {
                            value = "Your internet connection is low please do mastersyc later, once you have proper internet ";
                        }
                        loginActivity.showLowNetworkMsgAlert(value);
                    }
                }
            }, lookupValue * 1000);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void checkUserImeiActiveStatus() {
        startTimer();
        UserIMEIStatusModel userIMEIStatusModel = new UserIMEIStatusModel();
        userIMEIStatusModel.setPdaId(ConstantsPMC.getInstance().getDeviceID());
        userIMEIStatusModel.setIMEINumber(UtilDeclarations.getDeviceIMEIMultiple(this));
        userIMEIStatusModel.setAndroidOS("" + Build.VERSION.RELEASE);
        userIMEIStatusModel.setMobile(this.foPdaId);
        String json = new Gson().toJson(userIMEIStatusModel);
        SendRequestToServerAsync sendRequestToServerAsync = new SendRequestToServerAsync(this.context, this.getUserImeiStatusListener, json, ConstantsPMC.getInstance().getUrlPMCService(ConstantsPMC.getInstance().getIsTrainingORLive()) + "/" + ConstantsPMC.getInstance().getMethodUserIMEIActiveDetails(), false);
        this.sendRequest = sendRequestToServerAsync;
        sendRequestToServerAsync.execute(new Void[0]);
    }

    private void forgotPassword() {
        ForgotPasswordModel forgotPasswordModel = new ForgotPasswordModel();
        forgotPasswordModel.setPdaID(ConstantsPMC.getInstance().getDeviceID());
        String json = new Gson().toJson(forgotPasswordModel);
        SendRequestToServerAsync sendRequestToServerAsync = new SendRequestToServerAsync(this.context, this.getForgotPwdResponseListener, json, ConstantsPMC.getInstance().getUrlPMCService(ConstantsPMC.getInstance().getIsTrainingORLive()) + "/" + ConstantsPMC.getInstance().getMethodForgotPassword(), true);
        this.sendRequest = sendRequestToServerAsync;
        sendRequestToServerAsync.execute(new Void[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getLiveStatusSMS() {
        LiveSMSModel liveSMSModel = new LiveSMSModel();
        liveSMSModel.setPdaID(ConstantsPMC.getInstance().getDeviceID());
        new Gson().toJson(liveSMSModel);
        SendRequestToServerAsync sendRequestToServerAsync = new SendRequestToServerAsync(this.context, this.getLiveStatusSMSListener, null, ConstantsPMC.getInstance().getUrlPMCService(ConstantsPMC.getInstance().getIsTrainingORLive()) + "/" + ConstantsPMC.getInstance().getMethodLiveOrClearDB() + "/" + ConstantsPMC.getInstance().getDeviceID() + "/MoveToLive", true);
        this.sendRequest = sendRequestToServerAsync;
        sendRequestToServerAsync.execute(new Void[0]);
    }

    private void callFunctionalStateAPI() {
        try {
            new SDTSync().execute(new Void[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAlpha(float f, View... viewArr) {
        for (View view : viewArr) {
            view.setAlpha(f);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getLanguageConfigurations(int i) {
        try {
            GetDataFromDB.getInstance().getFOLables(Queries.getInstance().getStrings(i));
        } catch (Exception e) {
            e.printStackTrace();
            PLog.e(TAG, e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void bindLabelNames() {
        this.etPin.setHint(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getMo_hintPassword()));
        this.btnSubmit.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getMo_btnLogin()));
        if (this.foName != null) {
            this.tvName.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getMo_FoName()) + this.foName);
        } else {
            this.tvName.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getMo_FoName()));
        }
        if (this.foPdaId != null) {
            this.tvPdaId.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_pdaid()) + this.foPdaId);
        } else {
            this.tvPdaId.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_pdaid()));
        }
        this.tvCopyRight.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getMo_copyRights()));
        this.tvForgotPwd.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getMo_labelFrgtPwd()));
    }

    private void setActionBar() {
        setActionBarBackgroundColour();
        setSupportActionBar(this.mToolbar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setActionBarBackgroundColour() {
        if (this.liveOrTrain != 2) {
            if (GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getMo_btnLogin()) == null) {
                CustomActionBar.initActionBar(this, "Login (Training - " + UtilDeclarations.getApplicationVersion(this.context) + ")", false);
                return;
            }
            CustomActionBar.initActionBar(this, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getMo_btnLogin()) + " (Training - " + UtilDeclarations.getApplicationVersion(this.context) + ")", false);
            return;
        }
        if (GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getMo_btnLogin()) == null) {
            CustomActionBar.initActionBar(this, "Login (Live - " + UtilDeclarations.getApplicationVersion(this.context) + ")", false);
            return;
        }
        CustomActionBar.initActionBar(this, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getMo_btnLogin()) + " (Live - " + UtilDeclarations.getApplicationVersion(this.context) + ")", false);
    }

    private void init() {
        this.etPin = (EditText) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.et_pin_login);
        this.emptyedit = (EditText) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.emptyedit);
        this.btnSubmit = (Button) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.btn_submit_login);
        this.tvName = (TextView) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tv_fo_name);
        this.tvPdaId = (TextView) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tv_pdaid);
        this.tvCopyRight = (TextView) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tv_copyright_login);
        this.tvForgotPwd = (TextView) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tv_forgot_pwd_login);
        this.tvChangeLanguage = (TextView) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tv_changeLanguage);
        this.mToolbar = (Toolbar) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.toolbar);
        this.toolbarTitle = (TextView) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.toolbar_title);
        this.objAck = new SendAckSdtv();
        if (getIntent().getExtras() != null) {
            Bundle extras = getIntent().getExtras();
            this.bundleData = extras;
            this.notificationData = extras.getString("Data");
        }
        try {
            this.wrongPasswordLimit = GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getWrongPasswordEntryCount());
        } catch (Exception e) {
            e.printStackTrace();
            this.wrongPasswordLimit = "8";
            PLog.e(TAG, e);
        }
        this.etPin.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.conceptglobal.pmc.LoginActivity.2
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) {
                if (z) {
                    LoginActivity.this.etPin.setError(null);
                }
            }
        });
        displayMultilingualTextVisibility();
    }

    private void displayMultilingualTextVisibility() {
        long j;
        try {
            j = GetDataFromDB.getInstance().getLookupValue(Queries.getInstance().getItemValue("IsNotRequireMultiLingual"));
        } catch (Exception e) {
            e.printStackTrace();
            j = 0;
        }
        if (j == 1) {
            this.tvChangeLanguage.setVisibility(4);
        }
        this.progressBar = (ProgressBar) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.progressBar);
    }

    private void setLayoutData() {
        this.foName = ConstantDeclarations.getInstance().getEMPTY();
        this.foPdaId = ConstantDeclarations.getInstance().getEMPTY();
        this.foGeoDisplayname = ConstantDeclarations.getInstance().getEMPTY();
        if (SharedPrefManager.getFOName(this.context) != null && SharedPrefManager.getFOName(this.context).length() > 0) {
            this.foName = SharedPrefManager.getFOName(this.context);
        } else {
            try {
                String stringValue = GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getUserName());
                this.foName = stringValue;
                SharedPrefManager.storeFOName(this.context, stringValue);
            } catch (Exception e) {
                PLog.e(TAG, e);
            }
        }
        try {
            this.foPdaId = GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getEmployeeID());
        } catch (Exception e2) {
            PLog.e(TAG, e2);
        }
        try {
            this.foGeoDisplayname = ConstantsPMC.getInstance().getGeoDisplayName();
        } catch (Exception e3) {
            PLog.e(TAG, e3);
        }
        String str = this.foName;
        if (str != null) {
            this.tvName.append(str);
        }
        String str2 = this.foPdaId;
        if (str2 != null) {
            this.tvPdaId.append(str2);
        }
        this.etPin.setFilters(new InputFilter[]{new InputFilter.LengthFilter(10)});
    }

    private String setListeners(String str) {
        this.btnSubmit.setOnClickListener(this);
        this.tvForgotPwd.setOnClickListener(this);
        this.tvCopyRight.setOnClickListener(this);
        this.tvChangeLanguage.setOnClickListener(this);
        this.tvName.setOnClickListener(this);
        return str;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        String str;
        String value;
        String value2;
        String str2;
        String str3;
        String str4;
        boolean checkForLatestPatch;
        switch (view.getId()) {
            case com.conceptglobal.pmcdeepakfertilizers.R.id.btn_submit_login /* 2131296443 */:
                UtilDeclarations.hideInputKeyboard(this.context);
                this.emptyedit.requestFocus();
                if (Build.VERSION.SDK_INT >= 26) {
                    if (!getAvailableFreeSpace()) {
                    }
                } else {
                    long internalFreeSpaceInMB = DeviceMemory.getInternalFreeSpaceInMB();
                    if (1024 * internalFreeSpaceInMB < this.NUM_BYTES_NEEDED_FOR_MY_APP) {
                        String value3 = GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_free_space_alert());
                        if (value3 == null || value3.length() <= 0) {
                            value3 = "Available size is " + internalFreeSpaceInMB + "MB.\n minimum " + this.NUM_BYTES_NEEDED_FOR_MY_APP + " MB is required to download data, please delete some files and try again.";
                        }
                        showAlertDialog(value3);
                        showAlertDialog("Available size is " + internalFreeSpaceInMB + "MB.\n minimum 500 MB is required to download data, please delete some files and try again.");
                        break;
                    }
                }
                if (!getAppVersionStatus()) {
                    try {
                        GetDataFromDB.getInstance().executeRawQuery(Queries.getInstance().updateLoginTime());
                    } catch (Exception e) {
                        e.printStackTrace();
                        PLog.e(TAG, e.toString(), "Update login time", UtilDeclarations.getDateTime());
                    }
                    try {
                        this.userActiveStatus = GetDataFromDB.getInstance().getStringValue(Queries.getInstance().userActiveStatus());
                        this.userIMEIActiveStatus = GetDataFromDB.getInstance().getStringValue(Queries.getInstance().userIMEIActiveStatus());
                        this.userSuspendStatus = GetDataFromDB.getInstance().getStringValue(Queries.getInstance().userIsDeviceActiveStatus());
                    } catch (Exception e2) {
                        if (!new File(FileUtils.getDataDir(PMCApplication.getContext()).getAbsolutePath(), ConstantDeclarations.getInstance().getDatabasePath()).exists()) {
                            finish();
                        } else {
                            PLog.e(TAG, e2);
                        }
                    }
                    if (this.etPin.getText().toString().length() > 0) {
                        String str5 = this.userActiveStatus;
                        if (str5 != null && str5.equalsIgnoreCase("Y") && (str4 = this.userIMEIActiveStatus) != null && str4.equalsIgnoreCase("Y")) {
                            if (GetDataFromDB.getInstance().validateUser(this.etPin.getText().toString())) {
                                if (UtilDeclarations.isOnline(this.context)) {
                                    String str6 = this.notificationData;
                                    if (str6 != null && !str6.isEmpty()) {
                                        checkForLatestPatch = UtilDeclarations.checkForLatestPatch(this.context, 0);
                                    } else {
                                        checkForLatestPatch = UtilDeclarations.checkForLatestPatch(this.context, 1);
                                    }
                                    if (!checkForLatestPatch && !ConstantsPMC.getInstance().getRoleID().equalsIgnoreCase("2")) {
                                        try {
                                            GetDataFromDB.getInstance().executeRawQuery(Queries.getInstance().updateLoginTime());
                                        } catch (Exception e3) {
                                            e3.printStackTrace();
                                            PLog.e(TAG, e3.toString(), "Update login time", UtilDeclarations.getDateTime());
                                        }
                                        launchHome();
                                        break;
                                    }
                                } else {
                                    String str7 = this.notificationData;
                                    if (str7 != null && !str7.isEmpty()) {
                                        Toast.makeText(this, "You have New Notifications,Please connect to Internet and do master sync", 0).show();
                                    }
                                    if (!ConstantsPMC.getInstance().getRoleID().equalsIgnoreCase("2")) {
                                        launchHome();
                                        break;
                                    }
                                }
                            } else {
                                this.etPin.setError(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_notAValidPWError()));
                                int i = this.wrongPasswordEntries + 1;
                                this.wrongPasswordEntries = i;
                                try {
                                    if (i == Integer.parseInt(this.wrongPasswordLimit) - 3) {
                                        Toast.makeText(this.context, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_wrongPinAttemtsDBDelToast()), 0).show();
                                    } else {
                                        Toast.makeText(this.context, this.wrongPasswordEntries + "/" + this.wrongPasswordLimit + " " + GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_wrongAttemptsText()), 0).show();
                                    }
                                    if (this.wrongPasswordEntries == Integer.parseInt(this.wrongPasswordLimit)) {
                                        Toast.makeText(this.context, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_dataErasedToast()), 0).show();
                                        UtilDeclarations.deleteDir(new File(FileUtils.getDataDir(this.context).getAbsolutePath() + ConstantDeclarations.getInstance().getDatabaseFolder()));
                                        finish();
                                        break;
                                    }
                                } catch (Exception e4) {
                                    PLog.e(TAG, e4, 0);
                                    return;
                                }
                            }
                        } else {
                            String str8 = this.userActiveStatus;
                            if (str8 != null && str8.equalsIgnoreCase("N") && (str = this.userIMEIActiveStatus) != null && str.equalsIgnoreCase("Y")) {
                                String str9 = this.userActiveStatus;
                                if (str9 != null && str9.equalsIgnoreCase("N") && (str3 = this.userSuspendStatus) != null && str3.equalsIgnoreCase("true")) {
                                    value = "User Suspended.";
                                    value2 = "Sorry you have been suspendend temporarly";
                                } else {
                                    String str10 = this.userActiveStatus;
                                    if (str10 != null && str10.equalsIgnoreCase("N") && (str2 = this.userSuspendStatus) != null && str2.equalsIgnoreCase("false")) {
                                        value = "User Removed.";
                                        value2 = "Sorry you have been removed from server";
                                    } else {
                                        value = GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_userRemovedTitle());
                                        value2 = GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_userRemovedMessage());
                                    }
                                }
                                showDBDeleteDialog(this.context, value, value2);
                                break;
                            } else {
                                showDBDeleteDialog(this.context, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_userRemovedTitle()), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_userRemovedMessage()));
                                break;
                            }
                        }
                    } else {
                        this.etPin.setError("Please enter password");
                        break;
                    }
                } else {
                    showAppDialog();
                    break;
                }
                break;
            case com.conceptglobal.pmcdeepakfertilizers.R.id.tv_changeLanguage /* 2131297544 */:
                showLanguageDialog();
                break;
            case com.conceptglobal.pmcdeepakfertilizers.R.id.tv_copyright_login /* 2131297550 */:
                showAlert(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_copyRightsDialogText()));
                break;
            case com.conceptglobal.pmcdeepakfertilizers.R.id.tv_forgot_pwd_login /* 2131297591 */:
                if (UtilDeclarations.isOnline(this)) {
                    forgotPassword();
                    break;
                } else {
                    showAlert(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_pleaseCheckDataError()));
                    break;
                }
        }
    }

    private void showLanguageDialog() {
        String[][] languages = GetDataFromDB.getInstance().getLanguages(Queries.getInstance().getlanguages());
        String[] strArr = new String[languages.length];
        final String[] strArr2 = new String[languages.length];
        for (int i = 0; i < languages.length; i++) {
            strArr2[i] = languages[i][0];
            strArr[i] = languages[i][1];
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setTitle(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectLanguage()));
        builder.setSingleChoiceItems(strArr, -1, new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.LoginActivity.3
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                LoginActivity.this.d_language.dismiss();
                try {
                    new SharedPrefManager();
                    SharedPrefManager.setPMCLanguage(LoginActivity.this.context, Integer.parseInt(strArr2[i2]));
                    LoginActivity.this.getLanguageConfigurations(Integer.parseInt(strArr2[i2]));
                    LoginActivity.this.setActionBarBackgroundColour();
                    LoginActivity.this.bindLabelNames();
                } catch (Exception e) {
                    e.printStackTrace();
                    PLog.e(LoginActivity.TAG, e);
                }
            }
        });
        this.d_language = builder.create();
        AlertDialog show = builder.show();
        if (UtilDeclarations.isTablet(this)) {
            UtilDeclarations.makeTabletDialogTextlarge(show);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showAlert(String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setMessage(str).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.LoginActivity.4
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

    private void showAlertForLive(String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setMessage(str).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.LoginActivity.5
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
                if (UtilDeclarations.isOnline(LoginActivity.this)) {
                    LoginActivity.this.getLiveStatusSMS();
                } else {
                    Toast.makeText(LoginActivity.this.getApplicationContext(), LoginActivity.this.getString(com.conceptglobal.pmcdeepakfertilizers.R.string.no_internet_msg), 1).show();
                }
            }
        });
        AlertDialog show = builder.show();
        if (UtilDeclarations.isTablet(this)) {
            UtilDeclarations.makeTabletDialogTextlarge(show);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showLowNetworkMsgAlert(String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setMessage(str).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.LoginActivity.6
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
                ConstantsPMC.isRequestCancelled = true;
                LoginActivity.this.launchHome();
            }
        });
        AlertDialog show = builder.show();
        if (UtilDeclarations.isTablet(this)) {
            UtilDeclarations.makeTabletDialogTextlarge(show);
        }
    }

    private void deleteTrainingData1() {
        try {
            try {
                GetDataFromDB.getInstance().executeRawQueryInDB(Queries.getInstance().updateTrainingOrLiveStatus(2));
                ConstantsPMC.getInstance();
                String[] strArr = ConstantsPMC.tablesToBeDeletedAfterTraining;
                SQLiteDatabase openDatabase = dbInstance.openDatabase();
                for (String str : strArr) {
                    try {
                        GetDataFromDB.getInstance().executeRawQueryOnDBInLoop(Queries.getInstance().deleteTableData(str), openDatabase);
                    } catch (Exception e) {
                        PLog.e(TAG, e);
                    }
                }
            } catch (Exception e2) {
                PLog.e(TAG, e2);
            }
            dbInstance.closeDatabase();
            startActivity(new Intent(this, (Class<?>) RegistrationActivity.class).addFlags(131072));
            finish();
        } catch (Throwable th) {
            dbInstance.closeDatabase();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void deleteTrainingData() {
        try {
            ConstantsPMC.getInstance().getWcfToken();
            UtilDeclarations.deleteDir(new File(FileUtils.getDataDir(PMCApplication.getContext()).getAbsolutePath() + ConstantDeclarations.getInstance().getDatabaseFolder()));
            UtilDeclarations.deleteCache(this);
            Intent intent = new Intent(this, (Class<?>) RegistrationActivity.class);
            intent.putExtra("Mode", "Live");
            SharedPrefManager.setMode(getApplicationContext(), "Live");
            startActivity(intent);
            finish();
            ConstantsPMC.getInstance().getUrlPMCService(ConstantsPMC.getInstance().getIsTrainingORLive());
        } catch (Exception e) {
            PLog.e(TAG, e);
        }
    }

    private void showCustomDialog(final String str, final String str2) {
        this.showingUserdetails = false;
        final EditText[] editTextArr = new EditText[1];
        final EditText[] editTextArr2 = new EditText[1];
        final TextView[] textViewArr = new TextView[1];
        final TextView[] textViewArr2 = new TextView[1];
        final LinearLayout[] linearLayoutArr = new LinearLayout[1];
        final LinearLayout[] linearLayoutArr2 = new LinearLayout[1];
        ThemeManager.getInstance().getCurrentTheme();
        this.builder = new Dialog.Builder() { // from class: com.conceptglobal.pmc.LoginActivity.7
            @Override // com.conceptglobal.imaterialdesign.app.Dialog.Builder
            protected void onBuildDone(com.conceptglobal.imaterialdesign.app.Dialog dialog) {
                dialog.layoutParams(-1, -2);
                linearLayoutArr[0] = (LinearLayout) dialog.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.mobilenumll);
                linearLayoutArr2[0] = (LinearLayout) dialog.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.userdetailsll);
                editTextArr[0] = (EditText) dialog.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.et_mobile_alert_forgot_pwd);
                editTextArr2[0] = (EditText) dialog.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.emptedit);
                textViewArr[0] = (TextView) dialog.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tv_username);
                textViewArr2[0] = (TextView) dialog.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tv_password);
                if (str2.equals("ForgotPwd")) {
                    editTextArr[0].setHint(LoginActivity.this.getResources().getString(com.conceptglobal.pmcdeepakfertilizers.R.string.pmc_registered_empid));
                    editTextArr[0].setInputType(2);
                    editTextArr[0].setFilters(new InputFilter[]{new InputFilter.LengthFilter(20)});
                } else if (str2.equals("Live")) {
                    editTextArr[0].setHint(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getMo_hintPassword()));
                    editTextArr[0].setInputType(128);
                    editTextArr[0].setFilters(new InputFilter[]{new InputFilter.LengthFilter(10)});
                }
                editTextArr[0].setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.conceptglobal.pmc.LoginActivity.7.1
                    @Override // android.view.View.OnFocusChangeListener
                    public void onFocusChange(View view, boolean z) {
                        if (z) {
                            editTextArr[0].setError(null);
                        }
                    }
                });
            }

            @Override // com.conceptglobal.imaterialdesign.app.Dialog.Builder, com.conceptglobal.imaterialdesign.app.DialogFragment.Builder
            public void onPositiveActionClicked(DialogFragment dialogFragment) {
                ((InputMethodManager) LoginActivity.this.getSystemService("input_method")).hideSoftInputFromWindow(editTextArr[0].getWindowToken(), 2);
                if (LoginActivity.this.showingUserdetails) {
                    super.onPositiveActionClicked(dialogFragment);
                    return;
                }
                editTextArr2[0].requestFocus();
                if (str2.equals("ForgotPwd") && !editTextArr[0].getText().toString().trim().equalsIgnoreCase(str)) {
                    editTextArr[0].setError(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_enterMobileNumFPDialog()));
                    return;
                }
                if (str2.equals("Live") && !editTextArr[0].getText().toString().trim().equalsIgnoreCase(LoginActivity.this.getString(com.conceptglobal.pmcdeepakfertilizers.R.string.p_ssword))) {
                    editTextArr[0].setError(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_notAValidPWError()));
                    return;
                }
                if (str2.equals("Live") && editTextArr[0].getText().toString().trim().equalsIgnoreCase(LoginActivity.this.getString(com.conceptglobal.pmcdeepakfertilizers.R.string.p_ssword))) {
                    LoginActivity.this.deleteTrainingData();
                    return;
                }
                String str3 = str2;
                if (str3 != null && str3.equals("ForgotPwd")) {
                    LoginActivity.this.showingUserdetails = true;
                    LoginActivity.this.builder.getDialog().positiveAction("OK");
                    linearLayoutArr[0].setVisibility(8);
                    linearLayoutArr2[0].setVisibility(0);
                    textViewArr[0].setText(LoginActivity.this.foName);
                    textViewArr2[0].setText(LoginActivity.this.password);
                    return;
                }
                super.onPositiveActionClicked(dialogFragment);
                LoginActivity.this.deleteTrainingData();
            }
        };
        if (str2 != null && str2.equals("ForgotPwd")) {
            this.builder.title(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_forgotPassTitle())).positiveAction(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_submitBtnText())).contentView(com.conceptglobal.pmcdeepakfertilizers.R.layout.alert_forgot_pwd);
        } else {
            this.builder.title(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_passwordReqTitle())).positiveAction(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_submitBtnText())).contentView(com.conceptglobal.pmcdeepakfertilizers.R.layout.alert_forgot_pwd);
        }
        DialogFragment newInstance = DialogFragment.newInstance(this.builder);
        if (PMCApplication.isActivityVisible()) {
            newInstance.show(getSupportFragmentManager(), (String) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkForAutoAppUpdates() {
        if (SharedPrefManager.getAppPatchTime(this.context).longValue() + ConstantDeclarations.getInstance().getIDEALTIMEFORAPPPATCH() < System.currentTimeMillis()) {
            SharedPrefManager.setApplicationPatchTime(this.context);
            if (UtilDeclarations.isOnline(this.context)) {
                UtilDeclarations.checkForApplicationPatch(this.context, true);
                return;
            }
            return;
        }
        try {
            if (GetDataFromDB.getInstance().getIsRecordExists(Queries.getInstance().getappversionRecord(this.context))) {
                return;
            }
            SharedPrefManager.setApplicationPatchTime(this.context);
            if (UtilDeclarations.isOnline(this.context)) {
                UtilDeclarations.checkForApplicationPatch(this.context, true);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x011c A[Catch: Exception -> 0x0120, TRY_LEAVE, TryCatch #0 {Exception -> 0x0120, blocks: (B:3:0x0002, B:6:0x001f, B:8:0x002b, B:9:0x007c, B:12:0x0085, B:15:0x008c, B:16:0x00a0, B:18:0x00ff, B:21:0x0106, B:22:0x0116, B:24:0x011c, B:29:0x010f, B:31:0x003f, B:33:0x005b, B:34:0x0074, B:35:0x0017), top: B:2:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:28:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void askForLiveORTraining(android.content.Context r10) {
        /*
            Method dump skipped, instructions count: 293
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.LoginActivity.askForLiveORTraining(android.content.Context):void");
    }

    private boolean createExtraColumns() {
        boolean z = false;
        try {
            z = DBPatchQueries.ExecuteDBPatchQueries(getApplicationContext());
            if (z) {
                z = true;
            } else if (UtilDeclarations.isOnline(this.context)) {
                new DBDownloader(this).deleteDirectory(new File(FileUtils.getDataDir(PMCApplication.getContext()).getAbsolutePath(), ConstantDeclarations.getInstance().getPmcRootFolder()));
                startActivity(new Intent(this, (Class<?>) RegistrationActivity.class));
                finish();
            } else {
                showAlert(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_pleaseCheckDataError()));
            }
        } catch (Exception e) {
            PLog.e(TAG, e);
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void launchHome() {
        WorkManager workManager = WorkManager.getInstance();
        Log.d(TAG, "Queuing the Periodic Work");
        workManager.enqueueUniquePeriodicWork("DataSyncTaskID", ExistingPeriodicWorkPolicy.KEEP, new PeriodicWorkRequest.Builder((Class<? extends ListenableWorker>) DataSyncWorker.class, 4L, TimeUnit.HOURS).build());
        workManager.enqueueUniquePeriodicWork(MASTER_SYNC_TASK_ID, ExistingPeriodicWorkPolicy.KEEP, new PeriodicWorkRequest.Builder((Class<? extends ListenableWorker>) MasterSyncWorker.class, 4L, TimeUnit.HOURS).build());
        workManager.enqueueUniquePeriodicWork(LOG_SYNC_TASK_ID, ExistingPeriodicWorkPolicy.KEEP, new PeriodicWorkRequest.Builder((Class<? extends ListenableWorker>) LogsSyncWorker.class, 4L, TimeUnit.HOURS).build());
        if (ConstantsPMC.getInstance().getRoleID().equalsIgnoreCase("2")) {
            return;
        }
        startActivity(new Intent(this.context, (Class<?>) MainHomePageActivity.class).addFlags(335544320));
        finish();
    }

    private void showDBDeleteDialog(final Context context, String str, String str2) {
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle(str);
        builder.setMessage(str2);
        builder.setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.LoginActivity.10
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                try {
                    if (GetDataFromDB.getInstance().getTotalPendingRecordsCount() + GetDataFromDB.getInstance().getTotalPictureReportingRecords() == 0) {
                        if (LoginActivity.this.userIMEIActiveStatus != null && LoginActivity.this.userIMEIActiveStatus.equals("N")) {
                            UtilDeclarations.deleteDir(new File(FileUtils.getDataDir(PMCApplication.getContext()).getAbsolutePath() + ConstantDeclarations.getInstance().getDatabaseFolder()));
                            UtilDeclarations.deleteCache(context);
                            LoginActivity.this.finish();
                        }
                    } else {
                        LoginActivity.this.startService(new Intent(LoginActivity.this.context, (Class<?>) SyncDataService.class));
                        LoginActivity.this.finish();
                    }
                    LoginActivity.this.finish();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        });
        AlertDialog show = builder.show();
        if (UtilDeclarations.isTablet(this)) {
            UtilDeclarations.makeTabletDialogTextlarge(show);
        }
    }

    @Override // com.conceptglobal.pmc.interfaces.OnRequestFinishListener
    public void onFinish(String str) {
        String str2;
        String str3;
        if (str.equalsIgnoreCase("DBPATCH") || (str2 = this.userActiveStatus) == null || !str2.equalsIgnoreCase("Y") || (str3 = this.userIMEIActiveStatus) == null || !str3.equalsIgnoreCase("Y")) {
            return;
        }
        launchHome();
    }

    @Override // com.conceptglobal.pmc.interfaces.OnRequestCancelListener
    public void onCancel(String str, boolean z) {
        String str2;
        String str3;
        ConstantsPMC.isRequestCancelled = true;
        if (str.isEmpty() || str.equalsIgnoreCase("ApplicationPatchURL") || (str2 = this.userActiveStatus) == null || !str2.equalsIgnoreCase("Y") || (str3 = this.userIMEIActiveStatus) == null || !str3.equalsIgnoreCase("Y")) {
            return;
        }
        launchHome();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        PMCApplication.activityResumed();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        PMCApplication.activityPaused();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        super.onStop();
    }

    private void checkLoginStatus(boolean z) {
        boolean checkForLatestPatch;
        if (!getAppVersionStatus()) {
            if (getLoginStatus()) {
                try {
                    this.userActiveStatus = GetDataFromDB.getInstance().getStringValue(Queries.getInstance().userActiveStatus());
                } catch (Exception e) {
                    PLog.e(TAG, e);
                }
                if (this.userActiveStatus.equalsIgnoreCase("Y")) {
                    if (UtilDeclarations.isOnline(this.context)) {
                        String str = this.notificationData;
                        if (str != null && !str.isEmpty()) {
                            checkForLatestPatch = UtilDeclarations.checkForLatestPatch(this.context, 0);
                        } else {
                            checkForLatestPatch = UtilDeclarations.checkForLatestPatch(this.context, 1);
                        }
                        if (checkForLatestPatch || ConstantsPMC.getInstance().getRoleID().equalsIgnoreCase("2")) {
                            return;
                        }
                        try {
                            GetDataFromDB.getInstance().executeRawQuery(Queries.getInstance().updateLoginTime());
                        } catch (Exception e2) {
                            e2.printStackTrace();
                            PLog.e(TAG, e2.toString(), "Update login time", UtilDeclarations.getDateTime());
                        }
                        launchHome();
                        return;
                    }
                    String str2 = this.notificationData;
                    if (str2 != null && !str2.isEmpty()) {
                        Toast.makeText(this, "You have New Notifications,Please connect to Internet and do master sync", 0).show();
                    }
                    if (ConstantsPMC.getInstance().getRoleID().equalsIgnoreCase("2")) {
                        return;
                    }
                    launchHome();
                    return;
                }
                return;
            }
            if (z) {
                checkForAutoAppUpdates();
            }
            if (this.liveOrTrain != 2) {
                askForLiveORTraining(this.context);
            }
            setActionBarBackgroundColour();
            return;
        }
        showAppDialog();
    }

    private boolean getLoginStatus() {
        try {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            Calendar calendar = Calendar.getInstance();
            calendar.add(5, -1);
            return GetDataFromDB.getInstance().getIsRecordExists(Queries.getInstance().getLoginSessionTimeStatus(simpleDateFormat.format(calendar.getTime())));
        } catch (Exception unused) {
            return false;
        }
    }

    private void showWalkthrough() {
        this.etPin.setEnabled(false);
        this.btnSubmit.setEnabled(false);
        ShowcaseView build = new ShowcaseView.Builder(this).setTarget(new ViewTarget(findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.et_pin_login))).setContentTitle("PASSWORD").setContentText("Please Enter Password here").setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.LoginActivity.11
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                int i = LoginActivity.this.counter;
                if (i == 0) {
                    LoginActivity.this.showcaseView.setShowcase(new ViewTarget(LoginActivity.this.btnSubmit), true);
                    LoginActivity.this.showcaseView.setContentTitle("LOGIN");
                    LoginActivity.this.showcaseView.setContentText("Click here to Login into application");
                    LoginActivity.this.showcaseView.setButtonText("Close");
                } else if (i == 1) {
                    LoginActivity.this.etPin.setEnabled(true);
                    LoginActivity.this.btnSubmit.setEnabled(true);
                    LoginActivity.this.showcaseView.hide();
                    LoginActivity loginActivity = LoginActivity.this;
                    loginActivity.setAlpha(1.0f, loginActivity.etPin, LoginActivity.this.btnSubmit);
                }
                LoginActivity.access$1708(LoginActivity.this);
            }
        }).build();
        this.showcaseView = build;
        build.setButtonText("Next");
    }

    private boolean getAppVersionStatus() {
        try {
            return GetDataFromDB.getInstance().getIsRecordExists(Queries.getInstance().getAppVersionQuery(UtilDeclarations.getApplicationVersion(this.context)));
        } catch (Exception e) {
            PLog.e(TAG, e, 0);
            return false;
        }
    }

    private void showAppDialog() {
        if (isFinishing()) {
            return;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(this.context);
        builder.setTitle("New Version Available");
        builder.setMessage("Please, update app to new version to continue using PMC application.");
        builder.setPositiveButton("Update", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.LoginActivity.12
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                LoginActivity.this.checkForAutoAppUpdates();
            }
        });
        builder.setCancelable(false);
        AlertDialog show = builder.show();
        if (UtilDeclarations.isTablet(this)) {
            UtilDeclarations.makeTabletDialogTextlarge(show);
        }
    }

    public class GetLiveApkSync extends AsyncTask<String, Void, String> {
        public GetLiveApkSync() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public String doInBackground(String... strArr) {
            String str;
            try {
                Gson create = new GsonBuilder().disableHtmlEscaping().create();
                String str2 = "{\"PDAID\":\"" + ConstantsPMC.getInstance().getDeviceID() + "\"}";
                String sendRequestwithToken = WebService.getInstance().sendRequestwithToken(str2, ConstantsPMC.getInstance().getUrlPMCService(ConstantsPMC.getInstance().getIsTrainingORLive()) + "/" + ConstantsPMC.getInstance().getGetLiveApkUrl(), strArr[0]);
                if (sendRequestwithToken == null || sendRequestwithToken.equals("")) {
                    return null;
                }
                ResponseModel responseModel = (ResponseModel) create.fromJson((Reader) new StringReader(sendRequestwithToken), ResponseModel.class);
                JSONObject jSONObject = new JSONObject(sendRequestwithToken);
                if (responseModel.getStatus().equals("AUTHORISED")) {
                    if (responseModel.getData() == null || jSONObject.getString(Constants.ScionAnalytics.MessageType.DATA_MESSAGE).isEmpty()) {
                        return null;
                    }
                    str = jSONObject.getString(Constants.ScionAnalytics.MessageType.DATA_MESSAGE);
                } else {
                    if (!responseModel.getStatus().equals("UNAUTHORISED") || !responseModel.getStatusMessage().equals("Invalid Token")) {
                        return null;
                    }
                    new GetToken(null, 2).StartGetToken();
                    str = "1";
                }
                return str;
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(String str) {
            if (str != null && !str.equals("1")) {
                UtilDeclarations.deleteDir(new File(FileUtils.getDataDir(PMCApplication.getContext()).getAbsolutePath() + ConstantDeclarations.getInstance().getDatabaseFolder()));
                UtilDeclarations.deleteCache(LoginActivity.this.context);
                Patch patch = new Patch(LoginActivity.this.context.getPackageName(), ConstantDeclarations.getInstance().getGETAPPPATH(), str, LoginActivity.this.context);
                patch.setProgressBar(LoginActivity.this.progressBar);
                patch.callApplicationPatch(true);
            } else if (str != null && str.equals("1")) {
                LoginActivity.this.deleteTrainingData();
            }
            super.onPostExecute((GetLiveApkSync) str);
        }
    }

    private class SDTSync extends AsyncTask<Void, String, String> {
        private SDTSync() {
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            super.onPreExecute();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public String doInBackground(Void... voidArr) {
            LoginActivity.this.getGeoDetails();
            return "";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(String str) {
            super.onPostExecute((SDTSync) str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getGeoDetails() {
        String str = null;
        try {
            PLog.i("Functional states", "Getting Functional states");
            GetGeography getGeography = new GetGeography();
            Gson gson = new Gson();
            getGeography.setStateId(0);
            getGeography.setDistrictId(0);
            if (ConstantsPMC.getInstance().getDeviceID().length() != 0) {
                getGeography.setPDAID(Integer.parseInt(ConstantsPMC.getInstance().getDeviceID()));
            }
            String sendRequestwithToken = WebService.getInstance().sendRequestwithToken(gson.toJson(getGeography), ConstantsPMC.getInstance().getUrlPMCService(ConstantsPMC.getInstance().getIsTrainingORLive()) + "/" + ConstantsPMC.getInstance().getMethodSTDV(), ConstantsPMC.getInstance().getWcfToken());
            try {
                ResponseModel responseModel = (ResponseModel) gson.fromJson((Reader) new StringReader(sendRequestwithToken), ResponseModel.class);
                JSONObject jSONObject = new JSONObject(sendRequestwithToken);
                if (responseModel.getStatus().equals("AUTHORISED")) {
                    if (jSONObject.getString(Constants.ScionAnalytics.MessageType.DATA_MESSAGE) != null && jSONObject.getString(Constants.ScionAnalytics.MessageType.DATA_MESSAGE).length() > 10) {
                        SendAckSdtv insertDtdv = InsertDataIntoDB.insertDtdv((SDTV) gson.fromJson((Reader) new StringReader(jSONObject.getString(Constants.ScionAnalytics.MessageType.DATA_MESSAGE)), SDTV.class), this.objAck);
                        this.objAck = insertDtdv;
                        if (insertDtdv != null && insertDtdv.getAckList().toString().length() > 0) {
                            PLog.i("Functional states", "returning Acknowledgement");
                            sendAcktoServer();
                        } else {
                            PLog.i("Functional states", "No Functional states");
                        }
                    } else {
                        this.isSyncing = false;
                    }
                } else if (responseModel.getStatus().equals("UNAUTHORISED") && responseModel.getStatusMessage().equals("Invalid Token")) {
                    new GetToken(this.context, 2).StartGetToken();
                    Class<?> cls = Class.forName("com.conceptglobal.pmc.LoginActivity");
                    Method declaredMethod = cls.getDeclaredMethod("getGeoDetails", null);
                    declaredMethod.setAccessible(true);
                    declaredMethod.invoke(cls.newInstance(), null);
                }
            } catch (Exception e) {
                e = e;
                str = sendRequestwithToken;
                this.isSyncing = false;
                PLog.e(TAG, e.toString(), "getGeoDetails", str);
            }
        } catch (Exception e2) {
            e = e2;
        }
    }

    private void sendAcktoServer() {
        try {
            Gson gson = new Gson();
            this.objAck.setPDAID(ConstantsPMC.getInstance().getDeviceID().toString());
            String sendRequest = WebService.getInstance().sendRequest(gson.toJson(this.objAck), ConstantsPMC.getInstance().getUrlPMCService(ConstantsPMC.getInstance().getIsTrainingORLive()) + "/" + ConstantsPMC.getInstance().getMethodSTDAck());
            ResponseModel responseModel = (ResponseModel) gson.fromJson((Reader) new StringReader(sendRequest), ResponseModel.class);
            JSONObject jSONObject = new JSONObject(sendRequest);
            if (responseModel.getStatus().equals("AUTHORISED")) {
                if (jSONObject.getString(Constants.ScionAnalytics.MessageType.DATA_MESSAGE) != null && jSONObject.getString(Constants.ScionAnalytics.MessageType.DATA_MESSAGE).length() > 3) {
                    if (!jSONObject.getString(Constants.ScionAnalytics.MessageType.DATA_MESSAGE).contains(getResources().getString(com.conceptglobal.pmcdeepakfertilizers.R.string.success_message))) {
                        Toast.makeText(this.context, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_invalidACKinFS()), 1).show();
                    }
                } else {
                    this.isSyncing = false;
                }
            } else if (responseModel.getStatus().equals("UNAUTHORISED") && responseModel.getStatusMessage().equals("Invalid Token")) {
                new GetToken(this.context, 2).StartGetToken();
                Class<?> cls = Class.forName("com.conceptglobal.pmc.LoginActivity");
                Method declaredMethod = cls.getDeclaredMethod("sendAcktoServer", null);
                declaredMethod.setAccessible(true);
                declaredMethod.invoke(cls.newInstance(), null);
            }
        } catch (Exception e) {
            PLog.e(TAG, e);
        }
    }

    private class AcknowledgementUserIMEIStatus extends AsyncTask<Void, Void, Void> {
        DataAcknowledgementIMEIActiveStatus dataAcknowledgementIMEIActiveStatus;

        public AcknowledgementUserIMEIStatus(DataAcknowledgementIMEIActiveStatus dataAcknowledgementIMEIActiveStatus) {
            this.dataAcknowledgementIMEIActiveStatus = dataAcknowledgementIMEIActiveStatus;
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            super.onPreExecute();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Void doInBackground(Void... voidArr) {
            LoginActivity.this.sendIMEIAcknowledgeToServer(this.dataAcknowledgementIMEIActiveStatus);
            return null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Void r1) {
            super.onPostExecute((AcknowledgementUserIMEIStatus) r1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendIMEIAcknowledgeToServer(DataAcknowledgementIMEIActiveStatus dataAcknowledgementIMEIActiveStatus) {
        try {
            String sendRequest = WebService.getInstance().sendRequest(new Gson().toJson(dataAcknowledgementIMEIActiveStatus), ConstantsPMC.getInstance().getUrlPMCService(ConstantsPMC.getInstance().getIsTrainingORLive()) + "/" + ConstantsPMC.getInstance().getMethodIMEIActiveAck());
            if (sendRequest != null) {
                sendRequest.length();
            }
        } catch (Exception e) {
            PLog.e(TAG, e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showLiveCustomDialog(final String str, final String str2, final String str3) {
        this.showingUserdetails = false;
        final EditText[] editTextArr = new EditText[1];
        final EditText[] editTextArr2 = new EditText[1];
        final TextView[] textViewArr = new TextView[1];
        final TextView[] textViewArr2 = new TextView[1];
        final TextView[] textViewArr3 = new TextView[1];
        final LinearLayout[] linearLayoutArr = new LinearLayout[1];
        final LinearLayout[] linearLayoutArr2 = new LinearLayout[1];
        ThemeManager.getInstance().getCurrentTheme();
        this.builder = new Dialog.Builder() { // from class: com.conceptglobal.pmc.LoginActivity.16
            @Override // com.conceptglobal.imaterialdesign.app.Dialog.Builder
            protected void onBuildDone(com.conceptglobal.imaterialdesign.app.Dialog dialog) {
                dialog.layoutParams(-1, -2);
                dialog.setCanceledOnTouchOutside(false);
                dialog.setCancelable(false);
                linearLayoutArr[0] = (LinearLayout) dialog.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.mobilenumll);
                linearLayoutArr2[0] = (LinearLayout) dialog.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.userdetailsll);
                editTextArr[0] = (EditText) dialog.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.et_mobile_alert_forgot_pwd);
                editTextArr2[0] = (EditText) dialog.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.emptedit);
                textViewArr[0] = (TextView) dialog.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tv_username);
                textViewArr2[0] = (TextView) dialog.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tv_password);
                textViewArr3[0] = (TextView) dialog.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tvTitle);
                if (str2.equals("ForgotPwd")) {
                    editTextArr[0].setHint(LoginActivity.this.getResources().getString(com.conceptglobal.pmcdeepakfertilizers.R.string.pmc_registered_empid));
                    editTextArr[0].setInputType(2);
                    editTextArr[0].setFilters(new InputFilter[]{new InputFilter.LengthFilter(20)});
                } else if (str2.equals("Live")) {
                    editTextArr[0].setHint(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getMo_hintPassword()));
                    editTextArr[0].setInputType(128);
                    editTextArr[0].setFilters(new InputFilter[]{new InputFilter.LengthFilter(10)});
                    textViewArr3[0].setText(str3);
                }
                editTextArr[0].setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.conceptglobal.pmc.LoginActivity.16.1
                    @Override // android.view.View.OnFocusChangeListener
                    public void onFocusChange(View view, boolean z) {
                        if (z) {
                            editTextArr[0].setError(null);
                        }
                    }
                });
                dialog.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.conceptglobal.pmc.LoginActivity.16.2
                    @Override // android.content.DialogInterface.OnKeyListener
                    public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
                        return i == 4 && keyEvent.getAction() == 1;
                    }
                });
                dialog.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.conceptglobal.pmc.LoginActivity.16.3
                    @Override // android.content.DialogInterface.OnKeyListener
                    public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
                        return i == 4 && keyEvent.getAction() == 1;
                    }
                });
            }

            @Override // com.conceptglobal.imaterialdesign.app.Dialog.Builder, com.conceptglobal.imaterialdesign.app.DialogFragment.Builder
            public void onPositiveActionClicked(DialogFragment dialogFragment) {
                ((InputMethodManager) LoginActivity.this.getSystemService("input_method")).hideSoftInputFromWindow(editTextArr[0].getWindowToken(), 2);
                if (LoginActivity.this.showingUserdetails) {
                    super.onPositiveActionClicked(dialogFragment);
                    return;
                }
                editTextArr2[0].requestFocus();
                if (str2.equals("ForgotPwd") && !editTextArr[0].getText().toString().trim().equalsIgnoreCase(str)) {
                    editTextArr[0].setError(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_enterMobileNumFPDialog()));
                    return;
                }
                if (str2.equals("Live") && !editTextArr[0].getText().toString().trim().equalsIgnoreCase(str)) {
                    editTextArr[0].setError(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_notAValidPWError()));
                    return;
                }
                if (str2.equals("Live") && editTextArr[0].getText().toString().trim().equalsIgnoreCase(str)) {
                    LoginActivity.this.deleteTrainingData();
                    return;
                }
                String str4 = str2;
                if (str4 != null && str4.equals("ForgotPwd")) {
                    LoginActivity.this.showingUserdetails = true;
                    LoginActivity.this.builder.getDialog().positiveAction("OK");
                    linearLayoutArr[0].setVisibility(8);
                    linearLayoutArr2[0].setVisibility(0);
                    textViewArr[0].setText(LoginActivity.this.foName);
                    textViewArr2[0].setText(LoginActivity.this.password);
                    return;
                }
                super.onPositiveActionClicked(dialogFragment);
                LoginActivity.this.deleteTrainingData();
            }
        };
        if (str2 != null && str2.equals("ForgotPwd")) {
            this.builder.title(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_forgotPassTitle())).positiveAction(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_submitBtnText())).contentView(com.conceptglobal.pmcdeepakfertilizers.R.layout.alert_forgot_pwd);
        } else {
            this.builder.title(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_passwordReqTitle())).positiveAction(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_submitBtnText())).contentView(com.conceptglobal.pmcdeepakfertilizers.R.layout.alert_forgot_pwd);
        }
        DialogFragment newInstance = DialogFragment.newInstance(this.builder);
        newInstance.show(getSupportFragmentManager(), (String) null);
        newInstance.setCancelable(false);
    }

    private boolean getAvailableFreeSpace() {
        Object systemService;
        UUID uuid;
        long j;
        systemService = getApplicationContext().getSystemService((Class<Object>) StorageManager.class);
        StorageManager storageManager = (StorageManager) systemService;
        try {
            uuid = storageManager.getUuidForPath(getFilesDir());
        } catch (IOException e) {
            e.printStackTrace();
            uuid = null;
        }
        try {
            j = storageManager.getAllocatableBytes(uuid);
        } catch (IOException e2) {
            e2.printStackTrace();
            j = 0;
        }
        long j2 = this.NUM_BYTES_NEEDED_FOR_MY_APP;
        if (j >= j2) {
            try {
                storageManager.allocateBytes(uuid, j2);
                return true;
            } catch (IOException e3) {
                e3.printStackTrace();
                return false;
            }
        }
        String value = GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_free_space_alert());
        if (value == null || value.length() <= 0) {
            value = "Available size is " + j + "MB.\n minimum " + this.NUM_BYTES_NEEDED_FOR_MY_APP + " MB is required to download data, please delete some files and try again.";
        }
        showAlertDialog(value);
        return false;
    }

    private void showAlertDialog(String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.context);
        builder.setMessage(str).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.LoginActivity.17
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        });
        builder.show();
    }
}

package com.conceptglobal.pmc;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.graphics.Point;
import android.graphics.drawable.ColorDrawable;
import android.location.Location;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.widget.Toolbar;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import androidx.core.content.FileProvider;
import androidx.core.view.GravityCompat;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentTransaction;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.conceptglobal.imaterialdesign.app.Dialog;
import com.conceptglobal.pmc.asynctask.SendPmcDbAsynctask;
import com.conceptglobal.pmc.asynctask.SendRequestToServerAsync;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.common.ListPopupOne;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.DataBaseHandler;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.database.GetDataFromDBLog;
import com.conceptglobal.pmc.database.InsertDataIntoDB;
import com.conceptglobal.pmc.fotracker.sync.SyncDataService;
import com.conceptglobal.pmc.fragments.CameraSettingsFragment;
import com.conceptglobal.pmc.fragments.FragmentDrawer;
import com.conceptglobal.pmc.fragments.HomeLocationDetailsFragment;
import com.conceptglobal.pmc.fragments.HomePageFragment;
import com.conceptglobal.pmc.fragments.SettingsFragment;
import com.conceptglobal.pmc.fragments.SyncSummaryFragment;
import com.conceptglobal.pmc.interfaces.OnCompleteListener;
import com.conceptglobal.pmc.interfaces.OnEndDayListener;
import com.conceptglobal.pmc.interfaces.OnLocationFoundListener;
import com.conceptglobal.pmc.interfaces.OnResultReceiver;
import com.conceptglobal.pmc.locationprovider.FetchLocation;
import com.conceptglobal.pmc.model.ClearDBSMSModel;
import com.conceptglobal.pmc.model.LocationInfo;
import com.conceptglobal.pmc.service.LogDataSyncService;
import com.conceptglobal.pmc.smartalerts.Basics;
import com.conceptglobal.pmc.smartalerts.locationservice.LocationTrackerService;
import com.conceptglobal.pmc.sync.MasterSync;
import com.conceptglobal.pmc.sync.MasterSync.MasterSyncAsyncTask;
import com.conceptglobal.pmc.utils.ConstantDeclarations;
import com.conceptglobal.pmc.utils.CustomActionBar;
import com.conceptglobal.pmc.utils.DayActiviesReportDialog;
import com.conceptglobal.pmc.utils.FileUtils;
import com.conceptglobal.pmc.utils.FileZipping;
import com.conceptglobal.pmc.utils.LabelUtils;
import com.conceptglobal.pmc.utils.LocationUtils;
import com.conceptglobal.pmc.utils.PLog;
import com.conceptglobal.pmc.utils.SendDataServiceUtil;
import com.conceptglobal.pmc.utils.SharedPrefManager;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import com.evernote.android.job.JobStorage;
import com.github.amlcurran.showcaseview.ShowcaseView;
import com.github.amlcurran.showcaseview.targets.Target;
import com.google.android.gms.tasks.Task;
import com.google.firebase.messaging.Constants;
import com.google.firebase.messaging.FirebaseMessaging;
import com.google.gson.Gson;
import de.keyboardsurfer.android.widget.crouton.Crouton;
import de.keyboardsurfer.android.widget.crouton.Style;
import io.fabric.sdk.android.services.events.EventsFilesManager;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class MainHomePageActivity extends BaseActivity implements FragmentDrawer.FragmentDrawerListener, OnResultReceiver, OnEndDayListener {
    public static final int REQUEST_CHECK_LOCATION_PERMISSION = 100;
    private static final String TAG = "MainHomePageActivity";
    private Basics basics;
    private Context context;
    String dateTime;
    Dialog dialogCrops;
    private DrawerLayout dl_navigator;
    private FragmentDrawer drawerFragment;
    SharedPreferences.Editor editor;
    public Button endBtn;
    private GetDataFromDB getDataFromDB;
    String location;
    private LocationUtils mLocationUtils;
    public SyncResultReceiver mReceiver;
    private Toolbar mToolbar;
    long millis;
    private RelativeLayout parent;
    private SendRequestToServerAsync sendRequest;
    SharedPreferences sharedPreferences;
    private ShowcaseView showcaseView;
    private boolean doubleBackToExitPressedOnce = false;
    Dialog.Builder builder = null;
    private int counter = 0;
    String startDateDBvalues = null;
    Boolean isitToday = false;
    Boolean isCustomCamera = false;
    private BroadcastReceiver reciever = new BroadcastReceiver() { // from class: com.conceptglobal.pmc.MainHomePageActivity.16
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            try {
                MainHomePageActivity.this.drawerFragment.setAdapter();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    };
    private BroadcastReceiver mLogoutReceiver = new BroadcastReceiver() { // from class: com.conceptglobal.pmc.MainHomePageActivity.17
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals(ConstantsPMC.ACTION_FINISH)) {
                MainHomePageActivity.this.finish();
            }
        }
    };
    private OnCompleteListener getClearDBSMSListener = new OnCompleteListener() { // from class: com.conceptglobal.pmc.MainHomePageActivity.20
        @Override // com.conceptglobal.pmc.interfaces.OnCompleteListener
        public void onComplete(String str, Exception exc) {
            try {
                if (exc != null) {
                    Toast.makeText(MainHomePageActivity.this.getApplicationContext(), "Some Error Occured at Server Side!", 1).show();
                } else if (str == null) {
                    MainHomePageActivity.this.showAlert("Error Occured, Please Contact System Adminstrator");
                } else {
                    JSONObject jSONObject = new JSONObject(str);
                    String string = jSONObject.getString(Constants.ScionAnalytics.MessageType.DATA_MESSAGE);
                    String string2 = jSONObject.getString("statusMessage");
                    if (string2 != null && string2.equals("ValidRequest")) {
                        if (string != null && string.length() > 0) {
                            MainHomePageActivity mainHomePageActivity = MainHomePageActivity.this;
                            mainHomePageActivity.showDialog(mainHomePageActivity, mainHomePageActivity.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_passwordCleardata()), "An SMS is sent to your registered mobile number – Enter the password shared to you through SMS", string);
                        }
                    } else if (string2 != null && string2.equals("CantDeleteDB")) {
                        MainHomePageActivity.this.showAlert("You are not authorized to clear the database.");
                    } else if (string2 != null && string2.equals("InvalidUser")) {
                        MainHomePageActivity.this.showAlert("Invalid user");
                    } else if (string2 != null && string2.equals("InvalidRequest")) {
                        Toast.makeText(MainHomePageActivity.this.getApplicationContext(), "Invalid Request", 1).show();
                    } else if (string2 != null && string2.equals("InternalError")) {
                        Toast.makeText(MainHomePageActivity.this.getApplicationContext(), "Some Error Occured at Server Side!", 1).show();
                    }
                }
            } catch (Exception unused) {
            }
        }
    };

    @Override // com.conceptglobal.pmc.BaseActivity
    protected void displayNotification(String str, String str2) {
    }

    static /* synthetic */ int access$808(MainHomePageActivity mainHomePageActivity) {
        int i = mainHomePageActivity.counter;
        mainHomePageActivity.counter = i + 1;
        return i;
    }

    @Override // com.conceptglobal.pmc.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(com.conceptglobal.pmcdeepakfertilizers.R.layout.sliding_drawer);
        getLanguageConfigurations();
        Log.d("time111", "MainHome" + System.currentTimeMillis() + "");
        try {
            InsertDataIntoDB.insertLog4Trace("DashBoard", "", "", "", "", false);
        } catch (Exception e) {
            e.printStackTrace();
        }
        SharedPreferences sharedPreferences = getApplicationContext().getSharedPreferences("MyPref", 4);
        this.sharedPreferences = sharedPreferences;
        this.editor = sharedPreferences.edit();
        this.getDataFromDB = GetDataFromDB.getInstance();
        if (ConstantsPMC.getInstance().getIsTrainingORLive() != 2) {
            if (GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_homeText()) == null) {
                this.mToolbar = CustomActionBar.initActionBarImage(this, "   (T - " + UtilDeclarations.getApplicationVersion(this) + ")");
            } else {
                this.mToolbar = CustomActionBar.initActionBarImage(this, "   (T - " + UtilDeclarations.getApplicationVersion(this) + ")");
            }
        } else if (GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_homeText()) == null) {
            this.mToolbar = CustomActionBar.initActionBarImage(this, "   (L - " + UtilDeclarations.getApplicationVersion(this) + ")");
        } else {
            this.mToolbar = CustomActionBar.initActionBarImage(this, "   (L - " + UtilDeclarations.getApplicationVersion(this) + ")");
        }
        init();
        displayView(0);
        if (Build.VERSION.SDK_INT >= 33) {
            registerReceiver(this.mLogoutReceiver, new IntentFilter(ConstantsPMC.ACTION_FINISH), 4);
        } else {
            registerReceiver(this.mLogoutReceiver, new IntentFilter(ConstantsPMC.ACTION_FINISH));
        }
        LocalBroadcastManager.getInstance(this).registerReceiver(this.reciever, new IntentFilter("MasterSyncUpdate"));
        this.mLocationUtils = new LocationUtils();
        this.location = this.sharedPreferences.getString("location", "");
        try {
            this.startDateDBvalues = GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getStartedDate());
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.sss");
            String date = UtilDeclarations.getDate();
            this.millis = simpleDateFormat.parse(this.startDateDBvalues).getTime();
            if (!TextUtils.isEmpty(this.startDateDBvalues) && this.startDateDBvalues.substring(0, date.length()).equalsIgnoreCase(date)) {
                this.isitToday = true;
            } else {
                this.isitToday = false;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        if (this.location.equals("")) {
            showPopupForLocationTracker();
            this.endBtn.setVisibility(8);
        } else if (this.location.equals("End day")) {
            try {
                if (GetDataFromDB.getInstance().getIntValue(Queries.getInstance().getTodayRecord(UtilDeclarations.getDate())) == 0) {
                    showPopupForLocationTracker();
                }
            } catch (Exception e3) {
                e3.printStackTrace();
            }
            this.endBtn.setVisibility(8);
        } else if (this.location.equals("Start day")) {
            try {
                if (!this.isitToday.booleanValue()) {
                    perFormEnddayOperation(false);
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            this.endBtn.setVisibility(0);
        }
        this.endBtn.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.MainHomePageActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MainHomePageActivity.this.showEnddayReportDialog();
            }
        });
        checkPwdExp();
        try {
            GetDataFromDB.getInstance().executeRawQuery(Queries.getInstance().getDeleteExpensesExpiryQuery(UtilDeclarations.getExpenseExpDate()));
            GetDataFromDB.getInstance().executeRawQuery(Queries.getInstance().getDeleteExpensesExpiryQuery2(UtilDeclarations.getExpenseExpDate()));
        } catch (Exception e5) {
            e5.printStackTrace();
        }
        if (TextUtils.isEmpty(SharedPrefManager.getStringValue(this, "FCMKEY"))) {
            return;
        }
        saveNotificationIdtoPref();
    }

    private void showPopupForLocationTracker() {
        android.app.Dialog dialog = new android.app.Dialog(this.context);
        this.dialogCrops = dialog;
        dialog.requestWindowFeature(1);
        this.dialogCrops.setContentView(com.conceptglobal.pmcdeepakfertilizers.R.layout.alert_foreground_service);
        final EditText editText = (EditText) this.dialogCrops.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.etSelectmode);
        Button button = (Button) this.dialogCrops.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.btnStartDay);
        Button button2 = (Button) this.dialogCrops.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.btnCancel);
        final TextView textView = (TextView) this.dialogCrops.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tvSelectModeid);
        if (UtilDeclarations.isServiceRunning(this.context, LocationTrackerService.class)) {
            this.basics.stopLocationTrackerService();
        }
        editText.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.MainHomePageActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                try {
                    ListPopupOne listPopupOne = new ListPopupOne(MainHomePageActivity.this.context, "Please select the mode of transport", Queries.getInstance().getFoModes(), view, textView);
                    listPopupOne.getWindow().getAttributes().windowAnimations = com.conceptglobal.pmcdeepakfertilizers.R.style.PauseDialogAnimation;
                    listPopupOne.show();
                    listPopupOne.getWindow().setSoftInputMode(3);
                } catch (Exception e) {
                    PLog.e(JobStorage.COLUMN_TAG, e);
                }
            }
        });
        button.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.MainHomePageActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ContextCompat.checkSelfPermission(MainHomePageActivity.this.context, "android.permission.ACCESS_FINE_LOCATION") != 0 || ContextCompat.checkSelfPermission(MainHomePageActivity.this.context, "android.permission.FOREGROUND_SERVICE_LOCATION") != 0) {
                    ActivityCompat.requestPermissions(MainHomePageActivity.this, new String[]{"android.permission.ACCESS_FINE_LOCATION", "android.permission.FOREGROUND_SERVICE_LOCATION"}, 100);
                }
                if (editText.getText().toString().length() > 0) {
                    MainHomePageActivity.this.fetchLocationAndStartDay(editText.getText().toString());
                } else {
                    Toast.makeText(MainHomePageActivity.this.context, "Please select Start mode..", 0).show();
                }
            }
        });
        button2.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.MainHomePageActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MainHomePageActivity.this.dialogCrops.dismiss();
            }
        });
        this.dialogCrops.getWindow().setBackgroundDrawable(new ColorDrawable(0));
        this.dialogCrops.setCancelable(false);
        this.dialogCrops.setCanceledOnTouchOutside(false);
        this.dialogCrops.show();
        this.dialogCrops.getWindow().setGravity(17);
    }

    private void getLanguageConfigurations() {
        try {
            new SharedPrefManager();
            try {
                GetDataFromDB.getInstance().getFOLables(Queries.getInstance().getStrings(SharedPrefManager.getPMCLanguage(this)));
            } catch (Exception e) {
                e.printStackTrace();
                PLog.e(TAG, e);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            PLog.e(TAG, e2);
        }
    }

    private void init() {
        this.context = this;
        this.basics = new Basics(this.context);
        this.dl_navigator = (DrawerLayout) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.drawer_layout);
        FragmentDrawer fragmentDrawer = (FragmentDrawer) getSupportFragmentManager().findFragmentById(com.conceptglobal.pmcdeepakfertilizers.R.id.fragment_nav_drawer);
        this.drawerFragment = fragmentDrawer;
        fragmentDrawer.setUp(com.conceptglobal.pmcdeepakfertilizers.R.id.fragment_nav_drawer, (DrawerLayout) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.drawer_layout), this.mToolbar);
        this.drawerFragment.setDrawerListener(this);
        SyncResultReceiver syncResultReceiver = new SyncResultReceiver(new Handler());
        this.mReceiver = syncResultReceiver;
        syncResultReceiver.setReceiver(this);
        this.parent = (RelativeLayout) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.parent);
        this.endBtn = (Button) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.btnEndDay);
    }

    @Override // com.conceptglobal.pmc.fragments.FragmentDrawer.FragmentDrawerListener
    public void onDrawerItemSelected(View view, int i) {
        displayView(i);
    }

    public void displayView(int i) {
        switch (i) {
            case 0:
                HomePageFragment homePageFragment = new HomePageFragment();
                FragmentTransaction beginTransaction = getSupportFragmentManager().beginTransaction();
                beginTransaction.replace(com.conceptglobal.pmcdeepakfertilizers.R.id.container, homePageFragment, "HOME");
                beginTransaction.commit();
                break;
            case 1:
                try {
                    if (!TextUtils.isEmpty(GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getHomeAddressDetaisCount()))) {
                        showAlert("Home Location details already saved.");
                        break;
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
                HomeLocationDetailsFragment homeLocationDetailsFragment = new HomeLocationDetailsFragment();
                FragmentTransaction beginTransaction2 = getSupportFragmentManager().beginTransaction();
                beginTransaction2.replace(com.conceptglobal.pmcdeepakfertilizers.R.id.container, homeLocationDetailsFragment);
                beginTransaction2.commit();
                break;
            case 2:
                if (!UtilDeclarations.isOnline(this.context)) {
                    Crouton.showText((Activity) this.context, this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_CannotSyncAlertText()) != null ? this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_CannotSyncAlertText()) : "", Style.ALERT);
                    break;
                } else {
                    MasterSync masterSync = new MasterSync(this.context, true);
                    masterSync.mTask = masterSync.new MasterSyncAsyncTask();
                    masterSync.mTask.execute(new Void[0]);
                    break;
                }
            case 3:
                if (!UtilDeclarations.isOnline(this.context)) {
                    Crouton.showText((Activity) this.context, this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_CannotSyncAlertText()) != null ? this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_CannotSyncAlertText()) : "", Style.ALERT);
                    break;
                } else {
                    UtilDeclarations.checkForApplicationPatch(this.context, true);
                    break;
                }
            case 4:
                new SendPmcDbAsynctask(this.context, false).execute(new String[0]);
                Toast.makeText(getApplicationContext(), "Uploading DB file to server", 0).show();
                break;
            case 5:
                SyncSummaryFragment syncSummaryFragment = new SyncSummaryFragment();
                FragmentTransaction beginTransaction3 = getSupportFragmentManager().beginTransaction();
                beginTransaction3.replace(com.conceptglobal.pmcdeepakfertilizers.R.id.container, syncSummaryFragment);
                beginTransaction3.commit();
                break;
            case 6:
                if (UtilDeclarations.isOnline(this)) {
                    getLiveStatusSMS();
                    break;
                } else {
                    Toast.makeText(getApplicationContext(), getString(com.conceptglobal.pmcdeepakfertilizers.R.string.no_internet_msg), 1).show();
                    break;
                }
            case 7:
                if (!UtilDeclarations.isOnline(this.context)) {
                    Crouton.showText((Activity) this.context, this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_CannotSyncAlertText()) != null ? this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_CannotSyncAlertText()) : "", Style.ALERT);
                    break;
                } else if (!UtilDeclarations.isServiceRunning(this.context.getApplicationContext(), LogDataSyncService.class)) {
                    Intent intent = new Intent(this.context, (Class<?>) LogDataSyncService.class);
                    intent.putExtra("callbackActivity", "HomePageFragment");
                    intent.putExtra("receiver", this.mReceiver);
                    this.context.startService(intent);
                    Toast.makeText(getApplicationContext(), "Sending Logs Initiated", 0).show();
                    break;
                } else {
                    showAlertDialog(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_dataSendBGToast()));
                    break;
                }
            case 8:
                showDialogClearLog(this);
                break;
            case 9:
                showDialogLogout(this, this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_logoutNav()), this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_logoutConfirmDialog()), "Logout");
                break;
            case 10:
                showAboutPMC();
                break;
            case 11:
                startActivity(new Intent(this, (Class<?>) ChangePasswordActivity.class));
                break;
            case 12:
                CameraSettingsFragment cameraSettingsFragment = new CameraSettingsFragment();
                FragmentTransaction beginTransaction4 = getSupportFragmentManager().beginTransaction();
                beginTransaction4.replace(com.conceptglobal.pmcdeepakfertilizers.R.id.container, cameraSettingsFragment);
                beginTransaction4.commit();
                break;
            case 13:
                try {
                    String singleValue = GetDataFromDB.getInstance().getSingleValue(Queries.getInstance().getItemValuewithActiveCondition("ResignationUserRoleId"));
                    String singleValue2 = GetDataFromDB.getInstance().getSingleValue(Queries.getInstance().getRoleIdFromuserRoleMapping());
                    if (singleValue != null && singleValue.length() > 0) {
                        for (String str : singleValue.split(",")) {
                            if (str.equals(singleValue2)) {
                                startActivity(new Intent(this, (Class<?>) ResignationActivity.class));
                                break;
                            }
                        }
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
                showAlert("Feature currently not availble for your role.");
                break;
            case 14:
                SettingsFragment settingsFragment = new SettingsFragment();
                FragmentTransaction beginTransaction5 = getSupportFragmentManager().beginTransaction();
                beginTransaction5.replace(com.conceptglobal.pmcdeepakfertilizers.R.id.container, settingsFragment);
                beginTransaction5.commit();
                break;
        }
    }

    private void showDialogCameraSwap(Context context, String str, String str2, String str3) {
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle(str);
        builder.setMessage(str2);
        if (str3.equalsIgnoreCase("camera")) {
            builder.setIcon(com.conceptglobal.pmcdeepakfertilizers.R.drawable.camera);
        }
        builder.setPositiveButton(this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_yesText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.MainHomePageActivity.5
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                MainHomePageActivity.this.isCustomCamera = true;
                MainHomePageActivity mainHomePageActivity = MainHomePageActivity.this;
                SharedPrefManager.setPMCCameraType(mainHomePageActivity, mainHomePageActivity.isCustomCamera.booleanValue());
            }
        });
        builder.setNegativeButton(this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_noText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.MainHomePageActivity.6
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                MainHomePageActivity.this.isCustomCamera = false;
                MainHomePageActivity mainHomePageActivity = MainHomePageActivity.this;
                SharedPrefManager.setPMCCameraType(mainHomePageActivity, mainHomePageActivity.isCustomCamera.booleanValue());
                dialogInterface.cancel();
            }
        });
        builder.show();
    }

    private boolean getCurrentFragment() {
        List<Fragment> fragments = getSupportFragmentManager().getFragments();
        if (fragments == null) {
            return false;
        }
        for (Fragment fragment : fragments) {
            if (fragment != null && fragment.isVisible() && fragment.toString().contains("HomePageFragment")) {
                return true;
            }
        }
        return false;
    }

    private void showAlertDialog(String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.context);
        builder.setMessage(str).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.MainHomePageActivity.7
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
    public void showDialog(final Context context, String str, String str2, final String str3) {
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle(str);
        builder.setMessage(str2);
        final EditText editText = new EditText(context);
        editText.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        builder.setView(editText);
        builder.setIcon(com.conceptglobal.pmcdeepakfertilizers.R.drawable.key);
        builder.setPositiveButton(this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_yesText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.MainHomePageActivity.8
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                if (!str3.equalsIgnoreCase(editText.getText().toString())) {
                    Toast.makeText(context, MainHomePageActivity.this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_invalidPasswordError()), 0).show();
                    return;
                }
                dialogInterface.cancel();
                MainHomePageActivity mainHomePageActivity = MainHomePageActivity.this;
                mainHomePageActivity.showDialogLogout(mainHomePageActivity, mainHomePageActivity.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_delDatabaseTitle()), MainHomePageActivity.this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_dbDelConfirmDialog()), "DBDelete");
            }
        });
        builder.setNegativeButton(this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_noText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.MainHomePageActivity.9
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.cancel();
            }
        });
        AlertDialog show = builder.show();
        if (UtilDeclarations.isTablet(this)) {
            UtilDeclarations.makeTabletDialogTextlarge(show);
        }
    }

    private void showDialogClearLog(Context context) {
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setMessage(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_clearLogsConfirmation())).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.MainHomePageActivity.10
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                try {
                    GetDataFromDBLog.getInstance().executeRawQueryInDB(Queries.getInstance().getClearLogQuery());
                    Toast.makeText(MainHomePageActivity.this.getApplicationContext(), "Logs Cleared from Database", 0).show();
                } catch (Exception e) {
                    PLog.e(MainHomePageActivity.TAG, e, 0);
                }
            }
        });
        builder.setNegativeButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_cancelDialogButtonText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.MainHomePageActivity.11
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
    public void showDialogLogout(final Context context, String str, String str2, final String str3) {
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle(str);
        builder.setMessage(str2);
        if (str3.equalsIgnoreCase("Logout")) {
            builder.setIcon(com.conceptglobal.pmcdeepakfertilizers.R.drawable.logout);
        }
        builder.setPositiveButton(this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_yesText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.MainHomePageActivity.12
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                if (str3.equalsIgnoreCase("DBDelete")) {
                    UtilDeclarations.deleteDir(new File(FileUtils.getDataDir(MainHomePageActivity.this.context).getAbsolutePath() + ConstantDeclarations.getInstance().getDatabaseFolder()));
                    UtilDeclarations.deleteCache(context);
                    MainHomePageActivity.this.finish();
                    return;
                }
                UtilDeclarations.deleteCache(context);
                try {
                    GetDataFromDB.getInstance().executeRawQuery(Queries.getInstance().updateLoginTimeClear());
                } catch (Exception e) {
                    e.printStackTrace();
                    PLog.e(MainHomePageActivity.TAG, e.toString(), "Update login time clear", UtilDeclarations.getDateTime());
                }
                ExitActivity.exitApplicationAnRemoveFromRecent(MainHomePageActivity.this);
            }
        });
        builder.setNegativeButton(this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_noText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.MainHomePageActivity.13
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.cancel();
            }
        });
        AlertDialog show = builder.show();
        if (UtilDeclarations.isTablet(this)) {
            UtilDeclarations.makeTabletDialogTextlarge(show);
        }
    }

    private void showAboutPMC() {
        final android.app.Dialog dialog = new android.app.Dialog(this.context);
        dialog.setTitle(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_aboutPMCNav()));
        dialog.setContentView(com.conceptglobal.pmcdeepakfertilizers.R.layout.show_user_details);
        TextView textView = (TextView) dialog.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tv_user_details1);
        TextView textView2 = (TextView) dialog.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tv_user_details2);
        TextView textView3 = (TextView) dialog.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tv_disc_user_details1);
        TextView textView4 = (TextView) dialog.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tv_disc_user_details2);
        TextView textView5 = (TextView) dialog.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.pmcAboutUs);
        textView.setText(this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_buildVersionText()));
        textView2.setText(this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_appVersionText()));
        Button button = (Button) dialog.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.btn_user_details);
        textView3.setText(UtilDeclarations.getApplicationVersion(this.context));
        textView.setVisibility(8);
        textView3.setVisibility(8);
        textView5.setText(this.context.getResources().getString(com.conceptglobal.pmcdeepakfertilizers.R.string.pmcAboutUs));
        textView4.setText(UtilDeclarations.getApplicationVersion(this.context));
        button.setText(this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_okText()));
        button.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.MainHomePageActivity.14
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                dialog.dismiss();
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

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.dl_navigator.isDrawerOpen(GravityCompat.START)) {
            this.dl_navigator.closeDrawer(GravityCompat.START);
            return;
        }
        if (ConstantsPMC.getInstance().getRoleID().equalsIgnoreCase("2")) {
            finish();
            return;
        }
        if (this.doubleBackToExitPressedOnce) {
            UtilDeclarations.deleteCache(getApplicationContext());
            super.onBackPressed();
        } else {
            this.doubleBackToExitPressedOnce = true;
            Crouton.showText(this, this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_onExitToastText()) != null ? this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_onExitToastText()) : "", Style.ALERT);
            new Handler().postDelayed(new Runnable() { // from class: com.conceptglobal.pmc.MainHomePageActivity.15
                @Override // java.lang.Runnable
                public void run() {
                    MainHomePageActivity.this.doubleBackToExitPressedOnce = false;
                }
            }, 3000L);
        }
    }

    @Override // com.conceptglobal.pmc.interfaces.OnResultReceiver
    public void onReceiveResult(int i, Bundle bundle) {
        if (i != 1) {
            return;
        }
        HomePageFragment homePageFragment = new HomePageFragment();
        FragmentTransaction beginTransaction = getSupportFragmentManager().beginTransaction();
        beginTransaction.replace(com.conceptglobal.pmcdeepakfertilizers.R.id.container, homePageFragment);
        beginTransaction.commit();
    }

    @Override // com.conceptglobal.pmc.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        unregisterReceiver(this.mLogoutReceiver);
        LocalBroadcastManager.getInstance(this).unregisterReceiver(this.reciever);
    }

    private void showCustomCrouton(String str) {
        Crouton.makeText(this, "THIS IS A CUSTOMIZE TOAST THIS IS A CUSTOMIZE TOAST THIS IS A CUSTOMIZE TOAST THIS IS A CUSTOMIZE TOAST", Style.ALERT, this.parent).show();
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        menuItem.getItemId();
        if (menuItem.getItemId() == 16908332) {
            this.dl_navigator.openDrawer(GravityCompat.START);
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity
    protected void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
    }

    @Override // com.conceptglobal.pmc.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        super.onStop();
    }

    private void showOverLayWalkthrough() {
        ShowcaseView build = new ShowcaseView.Builder(this).setTarget(new Target() { // from class: com.conceptglobal.pmc.MainHomePageActivity.18
            @Override // com.github.amlcurran.showcaseview.targets.Target
            public Point getPoint() {
                int height = MainHomePageActivity.this.mToolbar.getHeight() / 2;
                return new Point(height, height);
            }
        }).setContentTitle("MENU").setContentText("Please Click Here for menu").setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.MainHomePageActivity.19
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (MainHomePageActivity.this.counter == 0) {
                    MainHomePageActivity.this.showcaseView.hide();
                    ((HomePageFragment) MainHomePageActivity.this.getSupportFragmentManager().findFragmentByTag("HOME")).fragmentCommunication();
                }
                MainHomePageActivity.access$808(MainHomePageActivity.this);
            }
        }).build();
        this.showcaseView = build;
        build.setButtonText("Next");
    }

    private void getLiveStatusSMS() {
        new ClearDBSMSModel().setPdaID(ConstantsPMC.getInstance().getDeviceID());
        new Gson();
        SendRequestToServerAsync sendRequestToServerAsync = new SendRequestToServerAsync(this.context, this.getClearDBSMSListener, null, ConstantsPMC.getInstance().getUrlPMCService(ConstantsPMC.getInstance().getIsTrainingORLive()) + "/" + ConstantsPMC.getInstance().getMethodLiveOrClearDB() + "/" + ConstantsPMC.getInstance().getDeviceID() + "/DeleteDb", true);
        this.sendRequest = sendRequestToServerAsync;
        sendRequestToServerAsync.execute(new Void[0]);
    }

    private void showAlertForTracker(String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setMessage(str).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.MainHomePageActivity.21
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                MainHomePageActivity.this.showPopupForLocationTrackerEnd();
                dialogInterface.dismiss();
            }
        });
        AlertDialog show = builder.show();
        if (UtilDeclarations.isTablet(this)) {
            UtilDeclarations.makeTabletDialogTextlarge(show);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showAlert(String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setMessage(str).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.MainHomePageActivity.22
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

    private void showChangePWDAlert(String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setMessage(str).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.MainHomePageActivity.23
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
                MainHomePageActivity.this.startActivity(new Intent(MainHomePageActivity.this, (Class<?>) ChangePasswordActivity.class));
            }
        });
        AlertDialog show = builder.show();
        if (UtilDeclarations.isTablet(this)) {
            UtilDeclarations.makeTabletDialogTextlarge(show);
        }
    }

    private void shareDbtoMedia() {
        try {
            FileZipping fileZipping = new FileZipping(this.context.getApplicationContext());
            StringBuilder sb = new StringBuilder();
            new FileUtils();
            sb.append(FileUtils.getDataDir(this.context).getAbsolutePath());
            sb.append("/");
            sb.append(ConstantDeclarations.getInstance().getRootfolderName());
            sb.append("/");
            sb.append(ConstantsPMC.getInstance().getDeviceID().toString());
            sb.append(EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR);
            sb.append(UtilDeclarations.getImageFiledate());
            sb.append("_LOG.zip");
            File file = new File(sb.toString());
            fileZipping.zip_File(DataBaseHandler.datapath, file.getAbsolutePath());
            File file2 = new File(file.getAbsolutePath());
            Intent intent = new Intent("android.intent.action.SEND");
            intent.setType("application/zip");
            intent.putExtra("android.intent.extra.STREAM", FileProvider.getUriForFile(this.context, "com.conceptglobal.pmcdeepakfertilizers.provider", file2));
            intent.setFlags(1);
            startActivityForResult(Intent.createChooser(intent, "Share via"), 1);
        } catch (Exception e) {
            e.getMessage();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showPopupForLocationTrackerEnd() {
        final android.app.Dialog dialog = new android.app.Dialog(this.context);
        dialog.requestWindowFeature(1);
        dialog.setContentView(com.conceptglobal.pmcdeepakfertilizers.R.layout.alert_foreground_service_end);
        Button button = (Button) dialog.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.btnEndDay);
        Button button2 = (Button) dialog.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.btnCloseEndDay);
        button.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.MainHomePageActivity.24
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                dialog.dismiss();
                MainHomePageActivity.this.fetchLocationEndDay();
            }
        });
        button2.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.MainHomePageActivity.25
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                dialog.dismiss();
            }
        });
        dialog.getWindow().setBackgroundDrawable(new ColorDrawable(0));
        dialog.setCancelable(false);
        dialog.setCanceledOnTouchOutside(false);
        dialog.show();
        dialog.getWindow().setGravity(17);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void perFormEnddayOperation(boolean z) {
        if (this.sharedPreferences.getString("location", "").equals("Start day")) {
            if (!z) {
                this.dateTime = com.conceptglobal.pmc.fotracker.util.UtilDeclarations.getDateTimeBefore(1);
            } else {
                this.dateTime = com.conceptglobal.pmc.fotracker.util.UtilDeclarations.getDateTime();
            }
            this.editor.putString("location", "End day");
            this.editor.commit();
            this.basics.stopLocationTrackerService();
            com.conceptglobal.pmc.fotracker.database.InsertDataIntoDB.updateCloseDayFOTrackerHeader(this.dateTime, "", "na", "na");
            this.endBtn.setVisibility(8);
            Toast.makeText(this.context, "Foreground Service Completed.", 0).show();
            if (UtilDeclarations.getCountForFOTrackerSync() > 0 && UtilDeclarations.isOnline(this.context) && !UtilDeclarations.isServiceRunning(this.context, SyncDataService.class)) {
                Intent intent = new Intent(this.context, (Class<?>) SyncDataService.class);
                intent.putExtra("capallbackActivity", "HomePageFragment");
                intent.putExtra("receiver", this.mReceiver);
                startService(intent);
            }
        }
        try {
            if (this.sharedPreferences.getString("location", "").equals("End day") && GetDataFromDB.getInstance().getIntValue(Queries.getInstance().getTodayRecord(UtilDeclarations.getDate())) == 0) {
                showPopupForLocationTracker();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity, androidx.core.app.ActivityCompat.OnRequestPermissionsResultCallback
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        Log.i(TAG, "onRequestPermissionResult");
        if (i == 34) {
            if (iArr.length <= 0) {
                Log.i(TAG, "User interaction was cancelled.");
            } else if (iArr[0] == 0) {
                fetchLocation();
            } else {
                this.mLocationUtils.showDialog(this, LocationUtils.PERMISSION_DENIED);
            }
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i != 1) {
            return;
        }
        try {
            if (i2 == -1) {
                fetchLocation();
            } else if (i2 != 0) {
            } else {
                this.mLocationUtils.showDialog(this, LocationUtils.GPS_NOT_TURNED_ON);
            }
        } catch (Exception unused) {
        }
    }

    private void fetchLocation() {
        if (!this.mLocationUtils.checkPermissions(this)) {
            this.mLocationUtils.requestPermissions(this);
            return;
        }
        try {
            new FetchLocation(this, true, new OnLocationFoundListener() { // from class: com.conceptglobal.pmc.MainHomePageActivity.26
                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onLocationFound(Location location) {
                }

                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onLocationFound(LocationInfo locationInfo) {
                }

                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onTimerTimeOut() {
                }
            }, TAG);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fetchLocationEndDay() {
        if (!this.mLocationUtils.checkPermissions(this)) {
            this.mLocationUtils.requestPermissions(this);
            return;
        }
        try {
            new FetchLocation(this, true, new OnLocationFoundListener() { // from class: com.conceptglobal.pmc.MainHomePageActivity.27
                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onLocationFound(Location location) {
                }

                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onTimerTimeOut() {
                }

                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onLocationFound(LocationInfo locationInfo) {
                    try {
                        InsertDataIntoDB.insertCoordinates(Double.valueOf(locationInfo.getLatitude()), Double.valueOf(locationInfo.getLongitude()));
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    MainHomePageActivity.this.perFormEnddayOperation(true);
                }
            }, TAG);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fetchLocationAndStartDay(final String str) {
        if (!this.mLocationUtils.checkPermissions(this)) {
            this.mLocationUtils.requestPermissions(this);
            return;
        }
        try {
            new FetchLocation(this, true, new OnLocationFoundListener() { // from class: com.conceptglobal.pmc.MainHomePageActivity.28
                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onLocationFound(Location location) {
                }

                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onLocationFound(LocationInfo locationInfo) {
                    if (TextUtils.isEmpty(str)) {
                        Toast.makeText(MainHomePageActivity.this.context, "Please select Start mode..", 0).show();
                        return;
                    }
                    if (MainHomePageActivity.this.dialogCrops != null && !MainHomePageActivity.this.isFinishing()) {
                        MainHomePageActivity.this.dialogCrops.dismiss();
                    }
                    MainHomePageActivity.this.dateTime = com.conceptglobal.pmc.fotracker.util.UtilDeclarations.getDateTime();
                    if (UtilDeclarations.isServiceRunning(MainHomePageActivity.this.context, LocationTrackerService.class)) {
                        Toast.makeText(MainHomePageActivity.this.context, "Service Already Running..", 0).show();
                        return;
                    }
                    MainHomePageActivity.this.editor.putString("location", "Start day");
                    MainHomePageActivity.this.editor.putString(ConstantsPMC.LOCATION_START_TIME, MainHomePageActivity.this.dateTime);
                    MainHomePageActivity.this.editor.commit();
                    MainHomePageActivity.this.basics.safeCheckLocationBasedTracking();
                    try {
                        com.conceptglobal.pmc.fotracker.database.InsertDataIntoDB.insertFirstDayFOTrackerHeader(MainHomePageActivity.this.dateTime, str);
                        InsertDataIntoDB.insertCoordinates(Double.valueOf(locationInfo.getLatitude()), Double.valueOf(locationInfo.getLongitude()));
                        if (UtilDeclarations.isOnline(MainHomePageActivity.this.context) && !UtilDeclarations.isServiceRunning(MainHomePageActivity.this.getApplicationContext(), com.conceptglobal.pmc.service.SyncDataService.class)) {
                            Toast.makeText(MainHomePageActivity.this.getBaseContext(), "Service initiated", 1);
                            new SendDataServiceUtil(MainHomePageActivity.this).startService();
                        }
                        if (str.equalsIgnoreCase("Own Transport")) {
                            try {
                                String singleValue = GetDataFromDB.getInstance().getSingleValue(Queries.getInstance().getItemValuewithActiveCondition("ResignationUserRoleId"));
                                String singleValue2 = GetDataFromDB.getInstance().getSingleValue(Queries.getInstance().getRoleIdFromuserRoleMapping());
                                if (singleValue != null && singleValue.length() > 0) {
                                    String[] split = singleValue.split(",");
                                    int i = 0;
                                    while (true) {
                                        if (i >= split.length) {
                                            break;
                                        }
                                        if (split[i].equals(singleValue2)) {
                                            Intent intent = new Intent(MainHomePageActivity.this.getApplicationContext(), (Class<?>) AttendanceActivity.class);
                                            intent.putExtra("Title", "Travel Submission");
                                            MainHomePageActivity.this.startActivity(intent);
                                            break;
                                        }
                                        i++;
                                    }
                                }
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        }
                        MainHomePageActivity.this.endBtn.setVisibility(0);
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                }

                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onTimerTimeOut() {
                    MainHomePageActivity.this.showAlert("Unable get your current location please try again.");
                }
            }, TAG);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showEnddayReportDialog() {
        new DayActiviesReportDialog(this, this).showDialog();
    }

    @Override // com.conceptglobal.pmc.interfaces.OnEndDayListener
    public void onEndDayClick() {
        showPopupForLocationTrackerEnd();
    }

    private void checkPwdExp() {
        try {
            String singleValue = GetDataFromDB.getInstance().getSingleValue(Queries.getInstance().getGetPasswordChangedDate());
            if (TextUtils.isEmpty(singleValue)) {
                return;
            }
            String diffDays = UtilDeclarations.diffDays(singleValue, "yyyy-MM-dd");
            long lookupValue = GetDataFromDB.getInstance().getLookupValue(Queries.getInstance().getItemValue("PWDExpiryDays"));
            if (lookupValue == 0) {
                lookupValue = 30;
            }
            if (TextUtils.isEmpty(diffDays) || Integer.parseInt(diffDays) <= lookupValue) {
                return;
            }
            GetDataFromDB.getInstance().executeRawQuery(Queries.getInstance().getUpdatePaswordDate(UtilDeclarations.getDate()));
            showChangePWDAlert("Password expired! please change password and re-login again to continue to this.");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void saveNotificationIdtoPref() {
        try {
            FirebaseMessaging.getInstance().getToken().addOnCompleteListener(new com.google.android.gms.tasks.OnCompleteListener() { // from class: com.conceptglobal.pmc.MainHomePageActivity$$ExternalSyntheticLambda1
                @Override // com.google.android.gms.tasks.OnCompleteListener
                public final void onComplete(Task task) {
                    MainHomePageActivity.this.m187xd1e5245(task);
                }
            });
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: lambda$saveNotificationIdtoPref$0$com-conceptglobal-pmc-MainHomePageActivity, reason: not valid java name */
    /* synthetic */ void m187xd1e5245(Task task) {
        if (task.isSuccessful()) {
            String str = (String) task.getResult();
            Log.i("FCM-- firebase token-", str);
            if (str == null || str.equals("")) {
                return;
            }
            SharedPrefManager.setStringValue(getApplicationContext(), "FCMKEY", str);
        }
    }
}

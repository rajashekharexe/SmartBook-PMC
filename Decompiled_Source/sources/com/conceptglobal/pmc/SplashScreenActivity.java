package com.conceptglobal.pmc;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.ActivityCompat;
import com.conceptglobal.pmc.asynctask.WebService;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.common.DBDownloader;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.interfaces.IsCompleteListener;
import com.conceptglobal.pmc.interfaces.OnCompleteListener;
import com.conceptglobal.pmc.model.DatabaseURL;
import com.conceptglobal.pmc.model.GetUserDetailsModel;
import com.conceptglobal.pmc.model.NotificationKeyModel;
import com.conceptglobal.pmc.utils.ConstantDeclarations;
import com.conceptglobal.pmc.utils.FileUtils;
import com.conceptglobal.pmc.utils.LabelUtils;
import com.conceptglobal.pmc.utils.RuntimePermissions;
import com.conceptglobal.pmc.utils.SharedPrefManager;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import com.google.android.gms.tasks.Task;
import com.google.firebase.messaging.FirebaseMessaging;
import com.google.gson.Gson;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;

/* loaded from: classes.dex */
public class SplashScreenActivity extends AppCompatActivity {
    private static File databaseFile;
    private Context context;
    private Dialog d_language;
    private String employeeId;
    private GetDataFromDB getData;
    private TextView loadingText;
    private ProgressBar pbShowProgess;
    private RelativeLayout rlProgress;
    private RuntimePermissions runtimePermissions;
    private SharedPrefManager sharedPrefManager;
    private GetUserDetailsModel userDetails;
    private int userDetailsCount;
    private String TAG = "SplashScreen";
    private boolean mIsActivityRunning = false;
    private String serviceUrl = "";
    String[] reqPerms = {"android.permission.READ_EXTERNAL_STORAGE", "android.permission.CAMERA", "android.permission.READ_PHONE_STATE", "android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"};
    private boolean arePermissionsGranted = true;
    private OnCompleteListener onDatabaseDownloadURL = new OnCompleteListener() { // from class: com.conceptglobal.pmc.SplashScreenActivity.1
        @Override // com.conceptglobal.pmc.interfaces.OnCompleteListener
        public void onComplete(String str, Exception exc) {
            Log.i("dburl", str + "   ");
            if (exc == null) {
                if (str != null && str.length() > 5) {
                    try {
                        DatabaseURL databaseURL = (DatabaseURL) new Gson().fromJson((Reader) new StringReader(str), DatabaseURL.class);
                        if (databaseURL != null && databaseURL.getURL() != null) {
                            String substring = databaseURL.getURL().substring(databaseURL.getURL().lastIndexOf("/") + 1);
                            Log.i("dburl", databaseURL.getURL() + "");
                            if (UtilDeclarations.isOnline(SplashScreenActivity.this.context)) {
                                SplashScreenActivity splashScreenActivity = SplashScreenActivity.this;
                                new DBDownloader(splashScreenActivity, splashScreenActivity.pbShowProgess).dataBaseDownload(databaseURL.getURL(), ConstantDeclarations.getInstance().getDBDOWNLOADPATH(), substring, SplashScreenActivity.this.isDBDownloaded, SplashScreenActivity.this.userDetails, SplashScreenActivity.this.employeeId);
                            } else {
                                SplashScreenActivity splashScreenActivity2 = SplashScreenActivity.this;
                                splashScreenActivity2.showAlert(splashScreenActivity2.context.getResources().getString(com.conceptglobal.pmcdeepakfertilizers.R.string.pmc_msg_db_error_no_internet), 0);
                            }
                        } else {
                            SplashScreenActivity splashScreenActivity3 = SplashScreenActivity.this;
                            splashScreenActivity3.showAlert(splashScreenActivity3.context.getResources().getString(com.conceptglobal.pmcdeepakfertilizers.R.string.pmc_msg_db_error), 0);
                        }
                        return;
                    } catch (Exception e) {
                        if (e instanceof FileNotFoundException) {
                            SplashScreenActivity splashScreenActivity4 = SplashScreenActivity.this;
                            splashScreenActivity4.showAlert(splashScreenActivity4.context.getResources().getString(com.conceptglobal.pmcdeepakfertilizers.R.string.pmc_file_not_found_exp), 0);
                            return;
                        } else {
                            SplashScreenActivity splashScreenActivity5 = SplashScreenActivity.this;
                            splashScreenActivity5.showAlert(splashScreenActivity5.context.getResources().getString(com.conceptglobal.pmcdeepakfertilizers.R.string.pmc_msg_db_error_alert3), 0);
                            return;
                        }
                    }
                }
                SplashScreenActivity splashScreenActivity6 = SplashScreenActivity.this;
                splashScreenActivity6.showAlertTryAgain(splashScreenActivity6.context.getResources().getString(com.conceptglobal.pmcdeepakfertilizers.R.string.pmc_msg_db_error_alert4), ConstantDeclarations.Enumaration.mRequestType10.value().intValue());
                return;
            }
            if (exc instanceof IOException) {
                SplashScreenActivity splashScreenActivity7 = SplashScreenActivity.this;
                splashScreenActivity7.showAlertTryAgain(splashScreenActivity7.context.getResources().getString(com.conceptglobal.pmcdeepakfertilizers.R.string.pmc_val_receive_resp), ConstantDeclarations.Enumaration.mRequestType10.value().intValue());
            } else {
                SplashScreenActivity splashScreenActivity8 = SplashScreenActivity.this;
                splashScreenActivity8.showAlertTryAgain(splashScreenActivity8.context.getResources().getString(com.conceptglobal.pmcdeepakfertilizers.R.string.pmc_val_parse_resp), ConstantDeclarations.Enumaration.mRequestType10.value().intValue());
            }
        }
    };
    private IsCompleteListener isDBDownloaded = new IsCompleteListener() { // from class: com.conceptglobal.pmc.SplashScreenActivity.5
        @Override // com.conceptglobal.pmc.interfaces.IsCompleteListener
        public void isComplete(boolean z) {
            if (z) {
                SplashScreenActivity splashScreenActivity = SplashScreenActivity.this;
                splashScreenActivity.insertUserDetals(splashScreenActivity.userDetails, SplashScreenActivity.this.employeeId);
            } else {
                SplashScreenActivity.this.runOnUiThread(new Runnable() { // from class: com.conceptglobal.pmc.SplashScreenActivity.5.1
                    @Override // java.lang.Runnable
                    public void run() {
                        SplashScreenActivity.this.showAlertTryAgain(SplashScreenActivity.this.context.getResources().getString(com.conceptglobal.pmcdeepakfertilizers.R.string.pmc_msg_db_error_alert1), ConstantDeclarations.Enumaration.mRequestType10.value().intValue());
                    }
                });
            }
        }
    };

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        return true;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(com.conceptglobal.pmcdeepakfertilizers.R.layout.fragment_splash_screen);
        this.context = this;
        this.runtimePermissions = new RuntimePermissions(this);
        this.sharedPrefManager = new SharedPrefManager();
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            this.userDetails = (GetUserDetailsModel) extras.getSerializable("UserDetails");
            this.employeeId = extras.getString("EmployeeId");
        } else {
            Toast.makeText(this, "Something went wrong, Please Register again", 1).show();
            finish();
        }
        init();
    }

    private void init() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            try {
                this.serviceUrl = extras.getString("url");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        this.pbShowProgess = (ProgressBar) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.pbshowprogress);
        this.rlProgress = (RelativeLayout) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.ProgressLayout);
        this.loadingText = (TextView) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.textViewProgress);
        if (SharedPrefManager.getPMCLanguage(this.context) == 0) {
            SharedPrefManager.setPMCLanguage(this.context, 1);
        }
        checkForSDCard();
    }

    private void checkForSDCard() {
        createPMCFolder(this.serviceUrl);
    }

    private void bindLabelNames() {
        this.loadingText.setText(this.getData.getValue(LabelUtils.getInstance().getMo_progressText()));
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x000c, code lost:
    
        if (r13.equals("") != false) goto L6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void createPMCFolder(java.lang.String r13) {
        /*
            r12 = this;
            r0 = 2131755492(0x7f1001e4, float:1.9141865E38)
            java.lang.String r1 = ""
            r2 = 0
            if (r13 == 0) goto Le
            boolean r13 = r13.equals(r1)     // Catch: java.lang.Exception -> L107
            if (r13 == 0) goto L1d
        Le:
            com.conceptglobal.pmc.common.ConstantsPMC r13 = com.conceptglobal.pmc.common.ConstantsPMC.getInstance()     // Catch: java.lang.Exception -> L107
            com.conceptglobal.pmc.common.ConstantsPMC r3 = com.conceptglobal.pmc.common.ConstantsPMC.getInstance()     // Catch: java.lang.Exception -> L107
            int r3 = r3.getIsTrainingORLive()     // Catch: java.lang.Exception -> L107
            r13.getUrlPMCService(r3)     // Catch: java.lang.Exception -> L107
        L1d:
            java.io.File r13 = new java.io.File     // Catch: java.lang.Exception -> L107
            android.content.Context r3 = com.conceptglobal.pmc.PMCApplication.getContext()     // Catch: java.lang.Exception -> L107
            java.io.File r3 = com.conceptglobal.pmc.utils.FileUtils.getDataDir(r3)     // Catch: java.lang.Exception -> L107
            java.lang.String r3 = r3.getAbsolutePath()     // Catch: java.lang.Exception -> L107
            com.conceptglobal.pmc.utils.ConstantDeclarations r4 = com.conceptglobal.pmc.utils.ConstantDeclarations.getInstance()     // Catch: java.lang.Exception -> L107
            java.lang.String r4 = r4.getPmcRootFolder()     // Catch: java.lang.Exception -> L107
            r13.<init>(r3, r4)     // Catch: java.lang.Exception -> L107
            boolean r3 = r13.exists()     // Catch: java.lang.Exception -> L107
            if (r3 != 0) goto L3f
            r13.mkdirs()     // Catch: java.lang.Exception -> L107
        L3f:
            com.conceptglobal.pmc.utils.ConstantDeclarations r13 = com.conceptglobal.pmc.utils.ConstantDeclarations.getInstance()     // Catch: java.lang.Exception -> L107
            java.lang.String r13 = r13.getDatabaseFolder()     // Catch: java.lang.Exception -> L107
            r12.createSubFolder(r13)     // Catch: java.lang.Exception -> L107
            java.io.File r13 = new java.io.File     // Catch: java.lang.Exception -> L107
            android.content.Context r3 = com.conceptglobal.pmc.PMCApplication.getContext()     // Catch: java.lang.Exception -> L107
            java.io.File r3 = com.conceptglobal.pmc.utils.FileUtils.getDataDir(r3)     // Catch: java.lang.Exception -> L107
            java.lang.String r3 = r3.getAbsolutePath()     // Catch: java.lang.Exception -> L107
            com.conceptglobal.pmc.utils.ConstantDeclarations r4 = com.conceptglobal.pmc.utils.ConstantDeclarations.getInstance()     // Catch: java.lang.Exception -> L107
            java.lang.String r4 = r4.getDatabasePath()     // Catch: java.lang.Exception -> L107
            r13.<init>(r3, r4)     // Catch: java.lang.Exception -> L107
            com.conceptglobal.pmc.SplashScreenActivity.databaseFile = r13     // Catch: java.lang.Exception -> L107
            boolean r13 = r13.exists()     // Catch: java.lang.Exception -> L107
            if (r13 != 0) goto Lff
            boolean r13 = com.conceptglobal.pmc.utils.UtilDeclarations.isOnline(r12)     // Catch: java.lang.Exception -> L107
            r3 = 2131755497(0x7f1001e9, float:1.9141875E38)
            if (r13 == 0) goto Lf1
            com.conceptglobal.pmc.model.GetUserDetailsModel r13 = r12.userDetails     // Catch: java.lang.Exception -> L107
            java.lang.String r13 = r13.getDBURL()     // Catch: java.lang.Exception -> L107
            if (r13 == 0) goto Le3
            com.conceptglobal.pmc.model.GetUserDetailsModel r13 = r12.userDetails     // Catch: java.lang.Exception -> L107
            java.lang.String r13 = r13.getDBURL()     // Catch: java.lang.Exception -> L107
            com.conceptglobal.pmc.model.GetUserDetailsModel r4 = r12.userDetails     // Catch: java.lang.Exception -> L107
            java.lang.String r4 = r4.getDBURL()     // Catch: java.lang.Exception -> L107
            java.lang.String r5 = "/"
            int r4 = r4.lastIndexOf(r5)     // Catch: java.lang.Exception -> L107
            int r4 = r4 + 1
            java.lang.String r8 = r13.substring(r4)     // Catch: java.lang.Exception -> L107
            java.lang.String r13 = "dburl"
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L107
            r4.<init>()     // Catch: java.lang.Exception -> L107
            com.conceptglobal.pmc.model.GetUserDetailsModel r5 = r12.userDetails     // Catch: java.lang.Exception -> L107
            java.lang.String r5 = r5.getDBURL()     // Catch: java.lang.Exception -> L107
            r4.append(r5)     // Catch: java.lang.Exception -> L107
            r4.append(r1)     // Catch: java.lang.Exception -> L107
            java.lang.String r1 = r4.toString()     // Catch: java.lang.Exception -> L107
            android.util.Log.i(r13, r1)     // Catch: java.lang.Exception -> L107
            android.content.Context r13 = r12.context     // Catch: java.lang.Exception -> L107
            boolean r13 = com.conceptglobal.pmc.utils.UtilDeclarations.isOnline(r13)     // Catch: java.lang.Exception -> L107
            if (r13 == 0) goto Ld5
            com.conceptglobal.pmc.common.DBDownloader r5 = new com.conceptglobal.pmc.common.DBDownloader     // Catch: java.lang.Exception -> L107
            android.widget.ProgressBar r13 = r12.pbShowProgess     // Catch: java.lang.Exception -> L107
            r5.<init>(r12, r13)     // Catch: java.lang.Exception -> L107
            com.conceptglobal.pmc.model.GetUserDetailsModel r13 = r12.userDetails     // Catch: java.lang.Exception -> L107
            java.lang.String r6 = r13.getDBURL()     // Catch: java.lang.Exception -> L107
            com.conceptglobal.pmc.utils.ConstantDeclarations r13 = com.conceptglobal.pmc.utils.ConstantDeclarations.getInstance()     // Catch: java.lang.Exception -> L107
            java.lang.String r7 = r13.getDBDOWNLOADPATH()     // Catch: java.lang.Exception -> L107
            com.conceptglobal.pmc.interfaces.IsCompleteListener r9 = r12.isDBDownloaded     // Catch: java.lang.Exception -> L107
            com.conceptglobal.pmc.model.GetUserDetailsModel r10 = r12.userDetails     // Catch: java.lang.Exception -> L107
            java.lang.String r11 = r12.employeeId     // Catch: java.lang.Exception -> L107
            r5.dataBaseDownload(r6, r7, r8, r9, r10, r11)     // Catch: java.lang.Exception -> L107
            goto L11e
        Ld5:
            android.content.Context r13 = r12.context     // Catch: java.lang.Exception -> L107
            android.content.res.Resources r13 = r13.getResources()     // Catch: java.lang.Exception -> L107
            java.lang.String r13 = r13.getString(r3)     // Catch: java.lang.Exception -> L107
            r12.showAlert(r13, r2)     // Catch: java.lang.Exception -> L107
            goto L11e
        Le3:
            android.content.Context r13 = r12.context     // Catch: java.lang.Exception -> L107
            android.content.res.Resources r13 = r13.getResources()     // Catch: java.lang.Exception -> L107
            java.lang.String r13 = r13.getString(r0)     // Catch: java.lang.Exception -> L107
            r12.showAlert(r13, r2)     // Catch: java.lang.Exception -> L107
            goto L11e
        Lf1:
            android.content.Context r13 = r12.context     // Catch: java.lang.Exception -> L107
            android.content.res.Resources r13 = r13.getResources()     // Catch: java.lang.Exception -> L107
            java.lang.String r13 = r13.getString(r3)     // Catch: java.lang.Exception -> L107
            r12.showAlert(r13, r2)     // Catch: java.lang.Exception -> L107
            goto L11e
        Lff:
            com.conceptglobal.pmc.database.GetDataFromDB r13 = new com.conceptglobal.pmc.database.GetDataFromDB     // Catch: java.lang.Exception -> L107
            r13.<init>()     // Catch: java.lang.Exception -> L107
            r12.getData = r13     // Catch: java.lang.Exception -> L107
            goto L11e
        L107:
            r13 = move-exception
            java.lang.String r1 = r12.TAG
            java.lang.String r13 = r13.getMessage()
            android.util.Log.e(r1, r13)
            android.content.Context r13 = r12.context
            android.content.res.Resources r13 = r13.getResources()
            java.lang.String r13 = r13.getString(r0)
            r12.showAlert(r13, r2)
        L11e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.SplashScreenActivity.createPMCFolder(java.lang.String):void");
    }

    private void createSubFolder(String str) {
        try {
            File file = new File(FileUtils.getDataDir(PMCApplication.getContext()).getAbsolutePath(), str);
            if (file.exists()) {
                return;
            }
            file.mkdirs();
        } catch (Exception e) {
            Log.e(this.TAG, e.getMessage());
            showAlert(this.context.getResources().getString(com.conceptglobal.pmcdeepakfertilizers.R.string.pmc_msg_no_root_path), 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showAlert(String str, final int i) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.context);
        builder.setMessage(str).setCancelable(false).setPositiveButton(android.R.string.ok, new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.SplashScreenActivity.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                dialogInterface.dismiss();
                int i3 = i;
                if (i3 == 0) {
                    SplashScreenActivity.this.finish();
                } else if (i3 != 5) {
                    return;
                }
                SplashScreenActivity.this.runtimePermissions.checkPermissions(SplashScreenActivity.this.reqPerms);
            }
        });
        AlertDialog show = builder.show();
        if (UtilDeclarations.isTablet(this)) {
            UtilDeclarations.makeTabletDialogTextlarge(show);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showAlertTryAgain(String str, final int i) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.context);
        builder.setMessage(str).setCancelable(false).setPositiveButton("TryAgain", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.SplashScreenActivity.4
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                dialogInterface.dismiss();
                Intent intent = SplashScreenActivity.this.getIntent();
                if (i == 10) {
                    SplashScreenActivity.this.finish();
                    SplashScreenActivity.this.startActivity(intent);
                } else {
                    SplashScreenActivity.this.finish();
                    SplashScreenActivity.this.startActivity(intent);
                }
            }
        }).setNegativeButton(android.R.string.cancel, new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.SplashScreenActivity.3
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                SplashScreenActivity.this.finish();
            }
        });
        AlertDialog show = builder.show();
        if (UtilDeclarations.isTablet(this)) {
            UtilDeclarations.makeTabletDialogTextlarge(show);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        Log.i(this.TAG, "Setting screen name: " + this.TAG);
        this.mIsActivityRunning = true;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        this.mIsActivityRunning = false;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == com.conceptglobal.pmcdeepakfertilizers.R.id.action_settings) {
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        super.onStop();
    }

    private void showRetryDialog() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.context);
        builder.setMessage("Unable to access database. Please try again").setCancelable(false).setPositiveButton("OK", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.SplashScreenActivity.6
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
                ExitActivity.exitApplicationAnRemoveFromRecent(SplashScreenActivity.this);
            }
        });
        AlertDialog show = builder.show();
        if (UtilDeclarations.isTablet(this)) {
            UtilDeclarations.makeTabletDialogTextlarge(show);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void insertUserDetals(GetUserDetailsModel getUserDetailsModel, String str) {
        try {
            String str2 = "";
            if (getUserDetailsModel.getFirstName() != null && getUserDetailsModel.getFirstName().length() > 0) {
                str2 = getUserDetailsModel.getFirstName();
            } else if (getUserDetailsModel.getUsername() != null && getUserDetailsModel.getUsername().length() > 0) {
                str2 = getUserDetailsModel.getUsername();
            }
            SharedPrefManager.storeFOName(this, str2);
            Intent intent = new Intent(this, (Class<?>) ChangePasswordActivity.class);
            intent.putExtra("ISFromRegistration", true);
            startActivity(intent);
            finish();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void sendNotificationIdtoServer() {
        FirebaseMessaging.getInstance().getToken().addOnCompleteListener(new com.google.android.gms.tasks.OnCompleteListener() { // from class: com.conceptglobal.pmc.SplashScreenActivity$$ExternalSyntheticLambda0
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task task) {
                SplashScreenActivity.this.m191x3ae52c6(task);
            }
        });
    }

    /* renamed from: lambda$sendNotificationIdtoServer$0$com-conceptglobal-pmc-SplashScreenActivity, reason: not valid java name */
    /* synthetic */ void m191x3ae52c6(Task task) {
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
            Log.d(this.TAG, sendRequest + "");
        } catch (Exception unused) {
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity, androidx.core.app.ActivityCompat.OnRequestPermissionsResultCallback
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        Log.d(this.TAG, "Permission callback called-------");
        if (i == 7 && iArr.length > 0) {
            for (int i2 = 0; i2 < strArr.length; i2++) {
                if (iArr[0] == 0) {
                    this.arePermissionsGranted = true;
                } else {
                    Log.d(this.TAG, "Some permissions are not granted ask again ");
                    if (ActivityCompat.shouldShowRequestPermissionRationale(this, this.reqPerms[i2])) {
                        Toast.makeText(getApplicationContext(), "Permissions are not granted", 0).show();
                        this.arePermissionsGranted = false;
                    } else {
                        Toast.makeText(getApplicationContext(), "Permissions are not granted", 0).show();
                        this.arePermissionsGranted = false;
                    }
                }
            }
        }
        if (!this.arePermissionsGranted) {
            Toast.makeText(getApplicationContext(), "Permissions are not granted", 0).show();
            showAlert("Permissions are not granted", 5);
        } else {
            init();
        }
    }
}

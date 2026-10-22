package com.conceptglobal.pmc.fotracker;

import android.app.ActivityManager;
import android.app.DatePickerDialog;
import android.app.Dialog;
import android.app.PictureInPictureParams;
import android.app.TimePickerDialog;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.location.Location;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.text.Html;
import android.text.format.DateFormat;
import android.util.Log;
import android.util.Rational;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.TimePicker;
import android.widget.Toast;
import android.widget.Toolbar;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.ActivityCompat;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import androidx.work.ExistingPeriodicWorkPolicy;
import androidx.work.ListenableWorker;
import androidx.work.PeriodicWorkRequest;
import androidx.work.WorkManager;
import com.conceptglobal.pmc.LoginActivity$$ExternalSyntheticApiModelOutline0;
import com.conceptglobal.pmc.SyncResultReceiver;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.common.ListPopupOne;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.fotracker.LocationUpdatesService;
import com.conceptglobal.pmc.fotracker.database.InsertDataIntoDB;
import com.conceptglobal.pmc.fotracker.database.Queries;
import com.conceptglobal.pmc.fotracker.model.FoTrackerTransactionDetails;
import com.conceptglobal.pmc.fotracker.sync.SyncDataService;
import com.conceptglobal.pmc.fotracker.util.UtilDeclarations;
import com.conceptglobal.pmc.fotracker.worker.LocationWorker;
import com.conceptglobal.pmc.interfaces.OnResultReceiver;
import com.conceptglobal.pmc.smartalerts.Basics;
import com.conceptglobal.pmc.smartalerts.locationservice.LocationTrackerService;
import com.conceptglobal.pmc.utils.PLog;
import com.conceptglobal.pmcdeepakfertilizers.R;
import com.google.android.gms.location.SettingsClient;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class FOTrackerForeGroundServiceActivity extends AppCompatActivity implements OnResultReceiver {
    private static final int DATEDIALOGID = 0;
    private static final long FASTEST_UPDATE_INTERVAL = 25000;
    public static final String LOCATION_CHECK_TASK_ID = "DataSyncTaskID";
    private static final long MAX_WAIT_TIME = 100000;
    private static final int REQUEST_PERMISSIONS_REQUEST_CODE = 34;
    private static final String TAG = "FOTrackerForeGroundServiceActivity";
    private static final int TIMEDIALOGID = 1;
    private static final long UPDATE_INTERVAL = 50000;
    public static boolean isTracking = false;
    private static int jobId;
    public static LocationUpdatesService mService;
    private static Menu optionsMenu;
    private Basics basics;
    private CheckBox cbDescription;
    private Button closeDay;
    private Context context;
    SharedPreferences.Editor editor;
    private EditText etActualEndTime;
    private EditText etDescription;
    private EditText etDistance;
    private Button getData;
    private ImageView ivReports;
    private TextView latitude;
    List<Double> list;
    private LinearLayout llDescriptionView;
    private LinearLayout llDistance;
    private LinearLayout llPIPView;
    private String location;
    private TextView longitude;
    private FOTrackerForeGroundServiceActivity mActivity;
    private int mDay;
    private IntentFilter mFilter;
    private int mMonth;
    public SyncResultReceiver mReceiver;
    private ServiceConnection mServiceConnection;
    private SettingsClient mSettingsClient;
    WorkManager mWorkManager;
    private int mYear;
    MyTimerTask myTimerTask;
    private ProgressBar pbRefresh;
    private String provider;
    private RelativeLayout rlTitleView;
    SharedPreferences sharedPreferences;
    private Button startDay;
    private TextView startStop;
    private ImageView syncDataImageView;
    Timer timer;
    Toolbar toolbar;
    private Button track;
    private TextView tvActualEndTime;
    private TextView tvAddress;
    private TextView tvApproximateDistance;
    private TextView tvDescription;
    private TextView tvDescriptionMain;
    private TextView tvDuration;
    private TextView tvEndTime;
    private TextView tvStartTime;
    private Boolean proceed = false;
    int checkStatus = 0;
    private String text = "CloseDay";
    private boolean mBound = false;
    private String mFiledStr = "";
    private BroadcastReceiver reciever = new BroadcastReceiver() { // from class: com.conceptglobal.pmc.fotracker.FOTrackerForeGroundServiceActivity.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals("FTSyncStatus")) {
                String stringExtra = intent.getStringExtra("Status");
                Toast.makeText(FOTrackerForeGroundServiceActivity.this.mActivity, "" + stringExtra, 1).show();
            }
        }
    };
    private BroadcastReceiver locationReceiver = new BroadcastReceiver() { // from class: com.conceptglobal.pmc.fotracker.FOTrackerForeGroundServiceActivity.11
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Location location = (Location) intent.getParcelableExtra("com.conceptglobal.fieldtrack.location");
            if (location != null) {
                String addressWithLatLong = UtilDeclarations.getAddressWithLatLong(context, location.getLatitude(), location.getLongitude());
                FOTrackerForeGroundServiceActivity.this.tvAddress.setText("Recent Location \n " + addressWithLatLong);
            }
        }
    };
    View.OnClickListener operationListener = new View.OnClickListener() { // from class: com.conceptglobal.pmc.fotracker.FOTrackerForeGroundServiceActivity.12
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (view instanceof EditText) {
                ((EditText) view).setError(null);
            }
            ListPopupOne listPopupOne = new ListPopupOne(FOTrackerForeGroundServiceActivity.this, "Select one", Queries.getInstance().gettingDropdownValues("RegularizationType"), view, FOTrackerForeGroundServiceActivity.this.tvDescription);
            listPopupOne.getWindow().getAttributes().windowAnimations = R.style.PauseDialogAnimation;
            listPopupOne.show();
            listPopupOne.getWindow().setSoftInputMode(3);
        }
    };
    View.OnClickListener datesListener = new View.OnClickListener() { // from class: com.conceptglobal.pmc.fotracker.FOTrackerForeGroundServiceActivity.13
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            FOTrackerForeGroundServiceActivity.this.showDialog(0);
        }
    };
    View.OnClickListener timesListener = new View.OnClickListener() { // from class: com.conceptglobal.pmc.fotracker.FOTrackerForeGroundServiceActivity.14
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            FOTrackerForeGroundServiceActivity.this.showDialog(1);
        }
    };
    private DatePickerDialog.OnDateSetListener mDateSetListener = new DatePickerDialog.OnDateSetListener() { // from class: com.conceptglobal.pmc.fotracker.FOTrackerForeGroundServiceActivity.15
        @Override // android.app.DatePickerDialog.OnDateSetListener
        public void onDateSet(DatePicker datePicker, int i, int i2, int i3) {
            FOTrackerForeGroundServiceActivity.this.mYear = i;
            FOTrackerForeGroundServiceActivity.this.mMonth = i2;
            FOTrackerForeGroundServiceActivity.this.mDay = i3;
            try {
                if (new SimpleDateFormat("yyyy-MM-dd").parse(i + "-" + (i2 + 1) + "-" + i3).compareTo(new Date()) < 0) {
                    FOTrackerForeGroundServiceActivity.this.updateDisplay();
                } else {
                    Toast.makeText(FOTrackerForeGroundServiceActivity.this.context, GetDataFromDB.getInstance().getValue(com.conceptglobal.pmc.utils.LabelUtils.getInstance().getPmc_selectProperDate()), 1).show();
                }
            } catch (Exception e) {
                PLog.e(FOTrackerForeGroundServiceActivity.TAG, e);
                e.printStackTrace();
            }
        }
    };
    private TimePickerDialog.OnTimeSetListener mTimeSetListener = new TimePickerDialog.OnTimeSetListener() { // from class: com.conceptglobal.pmc.fotracker.FOTrackerForeGroundServiceActivity.16
        @Override // android.app.TimePickerDialog.OnTimeSetListener
        public void onTimeSet(TimePicker timePicker, int i, int i2) {
            String str = "" + i2;
            if (i2 < 10) {
                str = "0" + str;
            }
            String obj = FOTrackerForeGroundServiceActivity.this.etActualEndTime.getText().toString();
            FOTrackerForeGroundServiceActivity.this.etActualEndTime.setText(obj + " " + i + ":" + str + ":00.000");
        }
    };

    private void initServiceConnection() {
        this.mServiceConnection = new ServiceConnection() { // from class: com.conceptglobal.pmc.fotracker.FOTrackerForeGroundServiceActivity.1
            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                FOTrackerForeGroundServiceActivity.mService = ((LocationUpdatesService.LocalBinder) iBinder).getService();
                FOTrackerForeGroundServiceActivity.mService.setActivityReference(FOTrackerForeGroundServiceActivity.this);
                FOTrackerForeGroundServiceActivity.this.mBound = true;
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
                FOTrackerForeGroundServiceActivity.mService = null;
                FOTrackerForeGroundServiceActivity.this.mBound = false;
            }
        };
    }

    private void initViews() {
        this.tvStartTime = (TextView) findViewById(R.id.tvStartTime);
        this.tvEndTime = (TextView) findViewById(R.id.tvEndTime);
        this.tvDuration = (TextView) findViewById(R.id.tvDuration);
        EditText editText = (EditText) findViewById(R.id.etActualEndDate);
        this.etActualEndTime = editText;
        editText.setOnClickListener(this.datesListener);
        this.etActualEndTime.setFocusable(false);
        this.etDescription = (EditText) findViewById(R.id.etDescription);
        this.cbDescription = (CheckBox) findViewById(R.id.cbRegularige);
        this.llDescriptionView = (LinearLayout) findViewById(R.id.llContentView2);
        this.tvDescription = (TextView) findViewById(R.id.tvDescription);
        this.etDescription.setFocusable(false);
        this.llDescriptionView.setVisibility(8);
        this.etDescription.setOnClickListener(this.operationListener);
        this.cbDescription.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.conceptglobal.pmc.fotracker.FOTrackerForeGroundServiceActivity.3
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                if (z) {
                    FOTrackerForeGroundServiceActivity.this.llDescriptionView.setVisibility(0);
                    return;
                }
                FOTrackerForeGroundServiceActivity.this.etDescription.setText("");
                FOTrackerForeGroundServiceActivity.this.etActualEndTime.setText("");
                FOTrackerForeGroundServiceActivity.this.tvDescription.setText("");
                FOTrackerForeGroundServiceActivity.this.llDescriptionView.setVisibility(8);
            }
        });
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.fo_tracker);
        this.llPIPView = (LinearLayout) findViewById(R.id.ll_PIPContent);
        this.llDistance = (LinearLayout) findViewById(R.id.llDistance);
        this.rlTitleView = (RelativeLayout) findViewById(R.id.titlerl);
        this.tvAddress = (TextView) findViewById(R.id.tvAddress);
        TextView textView = (TextView) findViewById(R.id.tvApproximateDistance);
        this.tvApproximateDistance = textView;
        textView.setText(Html.fromHtml(((Object) this.tvApproximateDistance.getText()) + "<font color='#ff0000'>*</font>"));
        TextView textView2 = (TextView) findViewById(R.id.tvActualEndTime);
        this.tvActualEndTime = textView2;
        textView2.setText(Html.fromHtml(((Object) this.tvActualEndTime.getText()) + "<font color='#ff0000'>*</font>"));
        TextView textView3 = (TextView) findViewById(R.id.tvDescriptionMain);
        this.tvDescriptionMain = textView3;
        textView3.setText(Html.fromHtml(((Object) this.tvDescriptionMain.getText()) + "<font color='#ff0000'>*</font>"));
        this.syncDataImageView = (ImageView) findViewById(R.id.syncData);
        this.ivReports = (ImageView) findViewById(R.id.reports);
        this.pbRefresh = (ProgressBar) findViewById(R.id.pbRefresh);
        this.mActivity = this;
        this.etDistance = (EditText) findViewById(R.id.etDistanceTravelled);
        this.startStop = (TextView) findViewById(R.id.startstop);
        SharedPreferences sharedPreferences = getApplicationContext().getSharedPreferences("MyPref", 4);
        this.sharedPreferences = sharedPreferences;
        this.editor = sharedPreferences.edit();
        this.mFilter = new IntentFilter("com.location.servicebroadcast");
        initServiceConnection();
        this.context = this;
        this.basics = new Basics(this.context);
        SyncResultReceiver syncResultReceiver = new SyncResultReceiver(new Handler());
        this.mReceiver = syncResultReceiver;
        syncResultReceiver.setReceiver(this);
        this.syncDataImageView.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fotracker.FOTrackerForeGroundServiceActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                FOTrackerForeGroundServiceActivity.this.syncDataImageView.setVisibility(8);
                FOTrackerForeGroundServiceActivity.this.setRefreshActionButtonState(true);
                Intent intent = new Intent(FOTrackerForeGroundServiceActivity.this.mActivity, (Class<?>) SyncDataService.class);
                intent.putExtra("callbackActivity", FOTrackerForeGroundServiceActivity.TAG);
                intent.putExtra("receiver", FOTrackerForeGroundServiceActivity.this.mReceiver);
                FOTrackerForeGroundServiceActivity.this.startService(intent);
            }
        });
        this.ivReports.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fotracker.FOTrackerForeGroundServiceActivity.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Intent intent = new Intent(FOTrackerForeGroundServiceActivity.this, (Class<?>) FOTrackerReportsActivity.class);
                intent.putExtra(SettingsJsonConstants.PROMPT_TITLE_KEY, "Reports");
                FOTrackerForeGroundServiceActivity.this.context.startActivity(intent);
            }
        });
        LocalBroadcastManager.getInstance(this).registerReceiver(this.reciever, new IntentFilter("FTSyncStatus"));
        LocalBroadcastManager.getInstance(this).registerReceiver(this.locationReceiver, new IntentFilter("com.conceptglobal.fieldtrack.broadcast"));
        this.location = this.sharedPreferences.getString("location", "");
        initViews();
        this.timer = new Timer();
        Calendar calendar = Calendar.getInstance();
        this.mDay = calendar.get(5);
        this.mMonth = calendar.get(2);
        this.mYear = calendar.get(1);
        setRefreshActionButtonState(false);
    }

    private void initWorker() {
        this.mWorkManager = WorkManager.getInstance();
        this.mWorkManager.enqueueUniquePeriodicWork("DataSyncTaskID", ExistingPeriodicWorkPolicy.KEEP, new PeriodicWorkRequest.Builder((Class<? extends ListenableWorker>) LocationWorker.class, 15L, TimeUnit.MINUTES).build());
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPostResume() {
        super.onPostResume();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStart() {
        super.onStart();
        this.startDay = (Button) findViewById(R.id.startday);
        if (this.location.equals("")) {
            this.startDay.setText("Start day");
        } else if (this.location.equals("End day")) {
            this.startDay.setText("Start day");
        } else {
            this.startDay.setText("End day");
            this.startDay.setBackgroundColor(getResources().getColor(R.color.red));
        }
        this.startDay.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fotracker.FOTrackerForeGroundServiceActivity.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (!FOTrackerForeGroundServiceActivity.this.checkPermissions()) {
                    FOTrackerForeGroundServiceActivity.this.requestPermissions();
                } else {
                    FOTrackerForeGroundServiceActivity.this.startDay(view);
                }
            }
        });
        bindService(new Intent(this, (Class<?>) LocationUpdatesService.class), this.mServiceConnection, 1);
    }

    public void requestPermission() {
        ActivityCompat.requestPermissions(this, new String[]{"android.permission.ACCESS_FINE_LOCATION"}, 1);
    }

    private void checkIfStartOrClose(int i) {
        if (i == 2) {
            new Date();
            String valueOf = String.valueOf(DateFormat.format("dd", Calendar.getInstance().getTime()));
            String dayFromDB = com.conceptglobal.pmc.fotracker.database.GetDataFromDB.getInstance().getDayFromDB();
            if (Integer.parseInt(valueOf) > Integer.parseInt(dayFromDB)) {
                this.startDay.setText("Start day");
                return;
            } else {
                if (Integer.parseInt(valueOf) == Integer.parseInt(dayFromDB)) {
                    this.startDay.setText("End day");
                    this.startDay.setBackgroundColor(getResources().getColor(R.color.red));
                    this.sharedPreferences.getInt("JobId", -1);
                    this.editor.clear();
                    return;
                }
                return;
            }
        }
        this.startDay.setVisibility(4);
    }

    private int checkIfTableIsEmptyOrNot() {
        int checkIfTableIsEmptyOrNot = com.conceptglobal.pmc.fotracker.database.GetDataFromDB.getInstance().checkIfTableIsEmptyOrNot();
        if (checkIfTableIsEmptyOrNot == 1) {
            this.startDay.setText("Start day");
        }
        return checkIfTableIsEmptyOrNot;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        if (this.mBound) {
            unbindService(this.mServiceConnection);
            this.mBound = false;
        }
        super.onStop();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        LocalBroadcastManager.getInstance(this).unregisterReceiver(this.reciever);
        LocalBroadcastManager.getInstance(this).unregisterReceiver(this.locationReceiver);
        super.onDestroy();
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            finish();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    private void bindData() {
        FoTrackerTransactionDetails foTrackerTransactionDetails;
        try {
            foTrackerTransactionDetails = com.conceptglobal.pmc.fotracker.database.GetDataFromDB.getInstance().getLastTransactionData();
        } catch (Exception e) {
            e.printStackTrace();
            foTrackerTransactionDetails = null;
        }
        if (foTrackerTransactionDetails == null || foTrackerTransactionDetails.getTrackerId() == 0) {
            return;
        }
        this.tvStartTime.setText(foTrackerTransactionDetails.getStartTime());
        MyTimerTask myTimerTask = this.myTimerTask;
        if (myTimerTask != null) {
            myTimerTask.cancel();
        }
        MyTimerTask myTimerTask2 = new MyTimerTask(foTrackerTransactionDetails.getStartTime());
        this.myTimerTask = myTimerTask2;
        this.timer.schedule(myTimerTask2, 1000L, com.conceptglobal.pmc.utils.ConstantDeclarations.REPEAT_TIME);
    }

    private void showGPSDisabledAlertToUser() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setMessage("GPS is disabled in your device. Would you like to enable it?").setCancelable(false).setPositiveButton("Goto Settings Page To Enable GPS", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fotracker.FOTrackerForeGroundServiceActivity.7
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                FOTrackerForeGroundServiceActivity.this.startActivity(new Intent("android.settings.LOCATION_SOURCE_SETTINGS"));
            }
        });
        builder.setNegativeButton("Cancel", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fotracker.FOTrackerForeGroundServiceActivity.8
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.cancel();
            }
        });
        builder.create().show();
    }

    public void startDay(View view) {
        if (this.startDay.getText().equals("Start day")) {
            isTracking = true;
            String dateTime = UtilDeclarations.getDateTime();
            this.startDay.setText("End day");
            this.startDay.setBackgroundColor(getResources().getColor(R.color.red));
            try {
                InsertDataIntoDB.insertFirstDayFOTrackerHeader(dateTime, "na");
                this.tvStartTime.setText(dateTime);
            } catch (Exception e) {
                e.printStackTrace();
            }
            if (!com.conceptglobal.pmc.utils.UtilDeclarations.isServiceRunning(this.context, LocationTrackerService.class)) {
                this.basics.safeCheckLocationBasedTracking();
                return;
            } else {
                Toast.makeText(this.context, "Service Already Running..", 0).show();
                return;
            }
        }
        if (this.startDay.getText().equals("End day")) {
            if (this.etDistance.getText().toString().length() == 0) {
                isTracking = true;
                this.etDistance.setError("Please enter the distance you travelled.");
                return;
            }
            if (this.cbDescription.isChecked()) {
                if (this.etActualEndTime.getText().toString().length() == 0) {
                    isTracking = true;
                    this.etActualEndTime.setError("Please enter the Actual End Time");
                    return;
                } else if (this.etDescription.getText().toString().length() == 0) {
                    isTracking = true;
                    this.etDescription.setError("Please select Description type");
                    return;
                }
            }
            isTracking = false;
            mService.removeLocationUpdates();
            WorkManager workManager = this.mWorkManager;
            if (workManager != null) {
                workManager.cancelAllWorkByTag("DataSyncTaskID");
            }
            AlertDialog.Builder builder = new AlertDialog.Builder(this);
            builder.setTitle("Confirm");
            builder.setMessage("Are you sure,you want to stop tracking?");
            builder.setPositiveButton("YES", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fotracker.FOTrackerForeGroundServiceActivity.9
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    FOTrackerForeGroundServiceActivity.this.editor.putString("location", "End day");
                    FOTrackerForeGroundServiceActivity.this.editor.commit();
                    Toast.makeText(FOTrackerForeGroundServiceActivity.this.getApplicationContext(), "Tracking has been closed.Thank You", 1).show();
                    FOTrackerForeGroundServiceActivity.this.basics.stopLocationTrackerService();
                    InsertDataIntoDB.updateCloseDayFOTrackerHeader(UtilDeclarations.getDateTime(), FOTrackerForeGroundServiceActivity.this.etDistance.getText().toString(), FOTrackerForeGroundServiceActivity.this.etActualEndTime.getText().toString(), FOTrackerForeGroundServiceActivity.this.etDescription.getText().toString());
                    FOTrackerForeGroundServiceActivity.mService = null;
                    FOTrackerForeGroundServiceActivity.this.finish();
                    Log.i("SCHEDULAR", "jobId--" + FOTrackerForeGroundServiceActivity.jobId);
                }
            });
            builder.setNegativeButton("NO", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fotracker.FOTrackerForeGroundServiceActivity.10
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    dialogInterface.dismiss();
                }
            });
            builder.create().show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean checkPermissions() {
        return ActivityCompat.checkSelfPermission(this, "android.permission.ACCESS_FINE_LOCATION") == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void requestPermissions() {
        if (ActivityCompat.shouldShowRequestPermissionRationale(this, "android.permission.ACCESS_FINE_LOCATION")) {
            Log.i(TAG, "Displaying permission rationale to provide additional context.");
        } else {
            Log.i(TAG, "Requesting permission");
            ActivityCompat.requestPermissions(this, new String[]{"android.permission.ACCESS_FINE_LOCATION"}, 34);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity, androidx.core.app.ActivityCompat.OnRequestPermissionsResultCallback
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        String str = TAG;
        Log.i(str, "onRequestPermissionResult");
        if (i == 34) {
            if (iArr.length <= 0) {
                Log.i(str, "User interaction was cancelled.");
            } else if (iArr[0] == 0) {
                startDay(null);
            }
        }
    }

    private void startJob(String str) {
        Log.d("onStartJob", "startjOb");
        try {
            mService.requestLocationUpdates();
            this.editor.putString("location", "Start day");
            this.editor.putString(ConstantsPMC.LOCATION_START_TIME, str);
            this.editor.commit();
            initWorker();
            Log.i("SCHEDULAR", "jobId--" + jobId);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        if (i != 1) {
            return;
        }
        if (i2 == -1) {
            mService.requestLocationUpdates();
        } else {
            if (i2 != 0) {
                return;
            }
            Toast.makeText(getApplicationContext(), "Please enable GPS to start tracking", 1).show();
            finish();
        }
    }

    private boolean isServiceRunning(String str) {
        Iterator<ActivityManager.RunningServiceInfo> it = ((ActivityManager) getSystemService("activity")).getRunningServices(50).iterator();
        boolean z = false;
        while (it.hasNext()) {
            if (it.next().service.getClassName().equals(str)) {
                startServiceAgain();
                z = true;
                isTracking = true;
            }
        }
        return z;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        SharedPreferences sharedPreferences = this.sharedPreferences;
        if (sharedPreferences != null && sharedPreferences.getString("location", "").equalsIgnoreCase("Start day")) {
            this.startDay.setText("End day");
            bindData();
            return;
        }
        SharedPreferences sharedPreferences2 = this.context.getSharedPreferences("MyPref", 0);
        this.sharedPreferences = sharedPreferences2;
        if (sharedPreferences2.getString("location", "").equalsIgnoreCase("Start day")) {
            this.startDay.setText("End day");
            bindData();
        } else {
            this.startDay.setText("Start day");
        }
    }

    public void startServiceAgain() {
        if (this.mServiceConnection != null) {
            bindService(new Intent(this, (Class<?>) LocationUpdatesService.class), this.mServiceConnection, 1);
        }
        LocationUpdatesService locationUpdatesService = mService;
        if (locationUpdatesService != null) {
            locationUpdatesService.requestLocationUpdates();
        }
    }

    @Override // android.app.Activity
    public void onUserLeaveHint() {
        boolean isInPictureInPictureMode;
        PictureInPictureParams.Builder aspectRatio;
        PictureInPictureParams build;
        if (Build.VERSION.SDK_INT >= 26) {
            PictureInPictureParams.Builder m = LoginActivity$$ExternalSyntheticApiModelOutline0.m();
            isInPictureInPictureMode = isInPictureInPictureMode();
            if (isInPictureInPictureMode) {
                return;
            }
            aspectRatio = m.setAspectRatio(new Rational(this.llPIPView.getWidth(), this.llPIPView.getHeight()));
            aspectRatio.build();
            build = m.build();
            enterPictureInPictureMode(build);
        }
    }

    @Override // android.app.Activity
    public void onUserInteraction() {
        super.onUserInteraction();
    }

    @Override // android.app.Activity
    public void onPictureInPictureModeChanged(boolean z, Configuration configuration) {
        super.onPictureInPictureModeChanged(z, configuration);
        if (z) {
            this.llPIPView.setVisibility(0);
            this.llDistance.setVisibility(8);
            this.startDay.setVisibility(8);
        } else {
            this.llPIPView.setVisibility(8);
            this.llDistance.setVisibility(0);
            this.startDay.setVisibility(0);
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        ((ActivityManager) getApplicationContext().getSystemService("activity")).moveTaskToFront(getTaskId(), 0);
    }

    class MyTimerTask extends TimerTask {
        String startTime;

        MyTimerTask(String str) {
            this.startTime = str;
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            FOTrackerForeGroundServiceActivity.this.runOnUiThread(new Runnable() { // from class: com.conceptglobal.pmc.fotracker.FOTrackerForeGroundServiceActivity.MyTimerTask.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                        new SimpleDateFormat("dd-MMM-yyyy HH:mm:ss");
                        FOTrackerForeGroundServiceActivity.this.tvDuration.setText(UtilDeclarations.timeDifference(simpleDateFormat.parse(MyTimerTask.this.startTime), simpleDateFormat.parse(UtilDeclarations.getDateTime())));
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            });
        }
    }

    private void stopTimer() {
        Timer timer = this.timer;
        if (timer != null) {
            timer.cancel();
            this.timer = null;
        }
    }

    @Override // android.app.Activity
    public Dialog onCreateDialog(int i) {
        if (i == 0) {
            return new DatePickerDialog(this.context, this.mDateSetListener, this.mYear, this.mMonth, this.mDay);
        }
        if (i != 1) {
            return null;
        }
        Calendar calendar = Calendar.getInstance();
        return new TimePickerDialog(this, this.mTimeSetListener, calendar.get(11) + 1, calendar.get(12), false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateDisplay() {
        this.mFiledStr = new StringBuffer().append(this.mDay).append("-").append(this.mMonth + 1).append("-").append(this.mYear).toString();
        try {
            new SimpleDateFormat("dd-MM-yyyy").parse(this.mFiledStr);
            this.etActualEndTime.setText(this.mFiledStr);
            showDialog(1);
        } catch (ParseException e) {
            PLog.e(TAG, e);
        }
    }

    @Override // com.conceptglobal.pmc.interfaces.OnResultReceiver
    public void onReceiveResult(int i, Bundle bundle) {
        if (i != 1) {
            return;
        }
        String string = bundle.getString("respMsg");
        String string2 = bundle.getString("callbackActivity");
        String str = TAG;
        Log.i(str, "Act response--" + string);
        Log.i(str, "Act callbackActivity--" + string2);
        notifyUser(string2, "Data synchronized");
    }

    private void notifyUser(String str, String str2) {
        if (!str.equals(TAG) || isFinishing()) {
            return;
        }
        setRefreshActionButtonState(false);
    }

    public void setRefreshActionButtonState(final boolean z) {
        runOnUiThread(new Runnable() { // from class: com.conceptglobal.pmc.fotracker.FOTrackerForeGroundServiceActivity.17
            @Override // java.lang.Runnable
            public void run() {
                int i = 0;
                if (z) {
                    FOTrackerForeGroundServiceActivity.this.pbRefresh.setVisibility(0);
                    FOTrackerForeGroundServiceActivity.this.syncDataImageView.setVisibility(8);
                } else {
                    FOTrackerForeGroundServiceActivity.this.pbRefresh.setVisibility(8);
                    FOTrackerForeGroundServiceActivity.this.syncDataImageView.setVisibility(0);
                }
                try {
                    i = com.conceptglobal.pmc.utils.UtilDeclarations.getCountForFOTrackerSync();
                } catch (Exception unused) {
                }
                if (i == 0) {
                    FOTrackerForeGroundServiceActivity.this.syncDataImageView.setImageDrawable(FOTrackerForeGroundServiceActivity.this.getResources().getDrawable(R.drawable.ic_action_refresh));
                } else {
                    FOTrackerForeGroundServiceActivity.this.syncDataImageView.setImageDrawable(FOTrackerForeGroundServiceActivity.this.getResources().getDrawable(R.drawable.ic_action_refresh_pending));
                }
            }
        });
    }
}

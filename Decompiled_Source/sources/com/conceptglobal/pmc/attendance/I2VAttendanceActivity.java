package com.conceptglobal.pmc.attendance;

import android.app.DatePickerDialog;
import android.content.ContentValues;
import android.content.Intent;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import android.text.Html;
import android.text.TextUtils;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.RelativeLayout;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import android.widget.Toast;
import com.conceptglobal.pmc.BaseActivity;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.common.ListPopupOne;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.DataBaseHandler;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.fo.PictureReporting;
import com.conceptglobal.pmc.model.ImageDetails;
import com.conceptglobal.pmc.model.UserFunctions;
import com.conceptglobal.pmc.service.SyncDataService;
import com.conceptglobal.pmc.utils.CompressHelper;
import com.conceptglobal.pmc.utils.CustomActionBar;
import com.conceptglobal.pmc.utils.LabelUtils;
import com.conceptglobal.pmc.utils.PLog;
import com.conceptglobal.pmc.utils.SendDataServiceUtil;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import com.conceptglobal.pmcdeepakfertilizers.R;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

/* loaded from: classes.dex */
public class I2VAttendanceActivity extends BaseActivity implements View.OnClickListener {
    private static final int DATEDIALOGID = 1;
    private static final String Tag = "I2VAttendanceActivity";
    private List<ImageDetails> images;
    private TextView mDatePickerTextView;
    private TextView mFOAttendanceTextView;
    private TextView mFODatePickerTextView;
    private EditText mFODistanceEditText;
    private RelativeLayout mFOLayout;
    private EditText mFONameEditText;
    private TextView mFoNameId;
    private Spinner mFoNightHaltSpinner;
    private TextView mSelfAttendanceTextView;
    private EditText mSelfDistanceEditText;
    private RelativeLayout mSelfLayout;
    private Spinner mSelfNightHaltSpinner;
    private TextView mSubmitFOAttendanceTextView;
    private TextView mSubmitSelfAttendanceTextView;
    private String mSelfNightHalt = "";
    private String mFONightHalt = "";
    private String mFOName = "";
    private String[] mNightHaltArray = {"Select value", "Yes", "No"};
    private String mDistance = "";
    private String mSelectedDate = "";
    private String mNightHalt = "";
    int functionID = -1;
    private List<UserFunctions> userFunctions = new ArrayList();
    private String respondantNum = "";

    @Override // com.conceptglobal.pmc.BaseActivity
    protected void displayNotification(String str, String str2) {
    }

    @Override // com.conceptglobal.pmc.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.attendance_fragment_i2v);
        CustomActionBar.initActionBar(this, "Attendance (" + UtilDeclarations.getApplicationVersion(this) + ")");
        if (getIntent().getExtras() != null) {
            this.functionID = getIntent().getExtras().getInt("FunctionID");
        }
        initialization();
        initTabs();
        setListeners();
        this.respondantNum = generateResPondentNumber();
    }

    private void initTabs() {
        try {
            List<UserFunctions> modules = GetDataFromDB.getInstance().getModules(Queries.getInstance().gettingReportsFunctionNames(this.functionID));
            this.userFunctions = modules;
            if (modules != null && modules.size() == 2) {
                this.mFOAttendanceTextView.setVisibility(0);
                this.mFOLayout.setVisibility(0);
            } else {
                this.mFOAttendanceTextView.setVisibility(8);
                this.mFOLayout.setVisibility(8);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.conceptglobal.pmc.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            finish();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    private void initialization() {
        this.mSelfAttendanceTextView = (TextView) findViewById(R.id.tvSelfAttendance);
        this.mFOAttendanceTextView = (TextView) findViewById(R.id.tvFOAttendance);
        this.mSelfLayout = (RelativeLayout) findViewById(R.id.rl_self_attendance);
        this.mFOLayout = (RelativeLayout) findViewById(R.id.rl_fo_attendance);
        this.mDatePickerTextView = (TextView) findViewById(R.id.tvDatePicker);
        this.mFODatePickerTextView = (TextView) findViewById(R.id.tvFODatePicker);
        ((TextView) findViewById(R.id.tvDateLabel)).setText(Html.fromHtml(getString(R.string.date_label)));
        ((TextView) findViewById(R.id.tvDistanceTraveled)).setText(Html.fromHtml(getString(R.string.distance_label)));
        ((TextView) findViewById(R.id.tvNightHalt)).setText(Html.fromHtml(getString(R.string.night_halt_label)));
        ((TextView) findViewById(R.id.tvFoName)).setText(Html.fromHtml(getString(R.string.fo_name_label)));
        ((TextView) findViewById(R.id.tvFoDate)).setText(Html.fromHtml(getString(R.string.date_label)));
        ((TextView) findViewById(R.id.tvFoDistance)).setText(Html.fromHtml(getString(R.string.distance_label)));
        ((TextView) findViewById(R.id.tvFoNightHalt)).setText(Html.fromHtml(getString(R.string.night_halt_label)));
        this.mSubmitSelfAttendanceTextView = (TextView) findViewById(R.id.tvSubmitSelfAttendance);
        this.mSubmitFOAttendanceTextView = (TextView) findViewById(R.id.tvSubmitFoAttendance);
        this.mSelfDistanceEditText = (EditText) findViewById(R.id.edtDistance);
        this.mSelfNightHaltSpinner = (Spinner) findViewById(R.id.spinnerSelfNightHalt);
        this.mFoNightHaltSpinner = (Spinner) findViewById(R.id.spinnerFoNightHalt);
        this.mFODistanceEditText = (EditText) findViewById(R.id.edtFODistanceTraveled);
        this.mFoNameId = (TextView) findViewById(R.id.tvFoNameID);
        EditText editText = (EditText) findViewById(R.id.etFoName);
        this.mFONameEditText = editText;
        editText.setOnClickListener(this);
        setSelfNightHaltSpinnerData();
        setFONightHaltSpinnerData();
    }

    private void setListeners() {
        this.mSelfAttendanceTextView.setOnClickListener(this);
        this.mFOAttendanceTextView.setOnClickListener(this);
        this.mDatePickerTextView.setOnClickListener(this);
        this.mFODatePickerTextView.setOnClickListener(this);
        this.mSubmitSelfAttendanceTextView.setOnClickListener(this);
        this.mSubmitFOAttendanceTextView.setOnClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.etFoName /* 2131296619 */:
                UtilDeclarations.hideInputKeyboard(this);
                try {
                    ListPopupOne listPopupOne = new ListPopupOne(this, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectOneDropDownTitle()), Queries.getInstance().getFoNames(), view, this.mFoNameId);
                    listPopupOne.getWindow().getAttributes().windowAnimations = R.style.PauseDialogAnimation;
                    listPopupOne.show();
                    listPopupOne.getWindow().setSoftInputMode(3);
                    break;
                } catch (Exception unused) {
                    return;
                }
            case R.id.tvDatePicker /* 2131297419 */:
                showDatePicker(this.mDatePickerTextView);
                break;
            case R.id.tvFOAttendance /* 2131297440 */:
                enableFOLayout(true);
                enableSelfLayout(false);
                break;
            case R.id.tvFODatePicker /* 2131297441 */:
                showDatePicker(this.mFODatePickerTextView);
                break;
            case R.id.tvSelfAttendance /* 2131297486 */:
                enableSelfLayout(true);
                enableFOLayout(false);
                break;
            case R.id.tvSubmitFoAttendance /* 2131297497 */:
                if (validateFODetails()) {
                    this.mFOName = this.mFONameEditText.getText().toString();
                    this.mDistance = this.mFODistanceEditText.getText().toString();
                    this.mSelectedDate = this.mFODatePickerTextView.getText().toString();
                    this.mNightHalt = this.mFONightHalt;
                    clearFOFields();
                    saveAttendanceDetails();
                    break;
                }
                break;
            case R.id.tvSubmitSelfAttendance /* 2131297498 */:
                if (validateSelfDetails()) {
                    this.mFOName = "";
                    this.mDistance = this.mSelfDistanceEditText.getText().toString();
                    this.mSelectedDate = this.mDatePickerTextView.getText().toString();
                    this.mNightHalt = this.mSelfNightHalt;
                    List<UserFunctions> list = this.userFunctions;
                    if (list != null && list.size() == 2) {
                        this.mFoNameId.setText(ConstantsPMC.getInstance().getUserId().toString());
                    }
                    clearSelfFields();
                    saveAttendanceDetails();
                    break;
                }
                break;
        }
    }

    private void enableSelfLayout(boolean z) {
        if (z) {
            this.mSelfLayout.setVisibility(0);
            this.mSelfAttendanceTextView.setTextColor(getResources().getColor(R.color.white));
            this.mSelfAttendanceTextView.setBackgroundColor(getResources().getColor(R.color.blue_dark));
        } else {
            this.mSelfLayout.setVisibility(8);
            this.mSelfAttendanceTextView.setTextColor(getResources().getColor(R.color.blue_dark));
            this.mSelfAttendanceTextView.setBackgroundColor(getResources().getColor(R.color.white));
        }
    }

    private void enableFOLayout(boolean z) {
        if (z) {
            this.mFOLayout.setVisibility(0);
            this.mFOAttendanceTextView.setTextColor(getResources().getColor(R.color.white));
            this.mFOAttendanceTextView.setBackgroundColor(getResources().getColor(R.color.blue_dark));
        } else {
            this.mFOLayout.setVisibility(8);
            this.mFOAttendanceTextView.setTextColor(getResources().getColor(R.color.blue_dark));
            this.mFOAttendanceTextView.setBackgroundColor(getResources().getColor(R.color.white));
        }
    }

    private void showDatePicker(final TextView textView) {
        final Calendar calendar = Calendar.getInstance();
        Calendar calendar2 = Calendar.getInstance();
        DatePickerDialog datePickerDialog = new DatePickerDialog(this, new DatePickerDialog.OnDateSetListener() { // from class: com.conceptglobal.pmc.attendance.I2VAttendanceActivity.1
            @Override // android.app.DatePickerDialog.OnDateSetListener
            public void onDateSet(DatePicker datePicker, int i, int i2, int i3) {
                calendar.set(1, i);
                calendar.set(2, i2);
                calendar.set(5, i3);
                try {
                    textView.setText(new SimpleDateFormat("dd-MM-yyyy").format(calendar.getTime()));
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }, calendar2.get(1), calendar2.get(2), calendar2.get(5));
        Date date = new Date();
        Calendar calendar3 = Calendar.getInstance();
        calendar3.setTime(date);
        calendar3.add(5, -2);
        long time = calendar3.getTime().getTime();
        Calendar calendar4 = Calendar.getInstance();
        calendar4.setTime(date);
        long time2 = calendar4.getTime().getTime();
        datePickerDialog.getDatePicker().setMinDate(time);
        datePickerDialog.getDatePicker().setMaxDate(time2);
        datePickerDialog.show();
    }

    private boolean validateSelfDetails() {
        Exception e;
        boolean z;
        try {
            String charSequence = this.mDatePickerTextView.getText().toString();
            String trim = this.mSelfDistanceEditText.getText().toString().trim();
            z = false;
            int parseInt = TextUtils.isEmpty(trim) ? 0 : Integer.parseInt(trim);
            try {
                if (TextUtils.isEmpty(charSequence)) {
                    Toast.makeText(this, "Please select Date.", 0).show();
                } else if (parseInt <= 0) {
                    Toast.makeText(this, "Please enter Distance.", 0).show();
                } else {
                    if (!TextUtils.isEmpty(this.mSelfNightHalt)) {
                        return true;
                    }
                    Toast.makeText(this, "Please select Night Halt.", 0).show();
                }
                return false;
            } catch (Exception e2) {
                e = e2;
                e.printStackTrace();
                return z;
            }
        } catch (Exception e3) {
            e = e3;
            z = true;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0076 A[Catch: Exception -> 0x0043, TRY_ENTER, TRY_LEAVE, TryCatch #1 {Exception -> 0x0043, blocks: (B:9:0x0038, B:19:0x0076, B:31:0x0047, B:34:0x0059), top: B:7:0x0036 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean validateFODetails() {
        /*
            r5 = this;
            r0 = 1
            android.widget.TextView r1 = r5.mFODatePickerTextView     // Catch: java.lang.Exception -> L86
            java.lang.CharSequence r1 = r1.getText()     // Catch: java.lang.Exception -> L86
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Exception -> L86
            android.widget.EditText r2 = r5.mFODistanceEditText     // Catch: java.lang.Exception -> L86
            android.text.Editable r2 = r2.getText()     // Catch: java.lang.Exception -> L86
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Exception -> L86
            java.lang.String r2 = r2.trim()     // Catch: java.lang.Exception -> L86
            boolean r3 = android.text.TextUtils.isEmpty(r2)     // Catch: java.lang.Exception -> L86
            r4 = 0
            if (r3 == 0) goto L22
            r2 = 0
            goto L26
        L22:
            int r2 = java.lang.Integer.parseInt(r2)     // Catch: java.lang.Exception -> L86
        L26:
            android.widget.EditText r3 = r5.mFONameEditText     // Catch: java.lang.Exception -> L86
            android.text.Editable r3 = r3.getText()     // Catch: java.lang.Exception -> L86
            java.lang.String r3 = r3.toString()     // Catch: java.lang.Exception -> L86
            r5.mFOName = r3     // Catch: java.lang.Exception -> L86
            boolean r1 = android.text.TextUtils.isEmpty(r1)     // Catch: java.lang.Exception -> L86
            if (r1 == 0) goto L45
            java.lang.String r0 = "Please select Date."
            android.widget.Toast r0 = android.widget.Toast.makeText(r5, r0, r4)     // Catch: java.lang.Exception -> L43
            r0.show()     // Catch: java.lang.Exception -> L43
        L41:
            r0 = 0
            goto L63
        L43:
            r0 = move-exception
            goto L89
        L45:
            if (r2 > 0) goto L51
            java.lang.String r0 = "Please enter Distance."
            android.widget.Toast r0 = android.widget.Toast.makeText(r5, r0, r4)     // Catch: java.lang.Exception -> L43
            r0.show()     // Catch: java.lang.Exception -> L43
            goto L41
        L51:
            java.lang.String r1 = r5.mFONightHalt     // Catch: java.lang.Exception -> L86
            boolean r1 = android.text.TextUtils.isEmpty(r1)     // Catch: java.lang.Exception -> L86
            if (r1 == 0) goto L63
            java.lang.String r0 = "Please select Night Halt."
            android.widget.Toast r0 = android.widget.Toast.makeText(r5, r0, r4)     // Catch: java.lang.Exception -> L43
            r0.show()     // Catch: java.lang.Exception -> L43
            goto L41
        L63:
            java.lang.String r1 = r5.mFOName     // Catch: java.lang.Exception -> L82
            boolean r1 = android.text.TextUtils.isEmpty(r1)     // Catch: java.lang.Exception -> L82
            if (r1 == 0) goto L80
            java.util.List<com.conceptglobal.pmc.model.UserFunctions> r1 = r5.userFunctions     // Catch: java.lang.Exception -> L82
            if (r1 == 0) goto L80
            int r1 = r1.size()     // Catch: java.lang.Exception -> L82
            r2 = 2
            if (r1 != r2) goto L80
            java.lang.String r0 = "Please select FO Name"
            android.widget.Toast r0 = android.widget.Toast.makeText(r5, r0, r4)     // Catch: java.lang.Exception -> L43
            r0.show()     // Catch: java.lang.Exception -> L43
            goto L8c
        L80:
            r4 = r0
            goto L8c
        L82:
            r1 = move-exception
            r4 = r0
            r0 = r1
            goto L89
        L86:
            r1 = move-exception
            r0 = r1
            r4 = 1
        L89:
            r0.printStackTrace()
        L8c:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.attendance.I2VAttendanceActivity.validateFODetails():boolean");
    }

    private void saveAttendanceDetails() {
        try {
            if (GetDataFromDB.getInstance().getAttendanceDetailsForDate(Queries.getInstance().getAttendanceDetailsQuery(this.mSelectedDate)) == 0) {
                int parseInt = TextUtils.isEmpty(this.mDistance) ? 0 : Integer.parseInt(this.mDistance);
                SQLiteDatabase openDatabase = DataBaseHandler.getInstance().openDatabase();
                ContentValues contentValues = new ContentValues();
                contentValues.put("AttendanceDate", this.mSelectedDate);
                contentValues.put("TransId", this.respondantNum);
                contentValues.put("FoTravel", Integer.valueOf(parseInt));
                if (this.mNightHalt.equalsIgnoreCase("yes")) {
                    contentValues.put("FoNightHalt", (Integer) 1);
                } else {
                    contentValues.put("FoNightHalt", (Integer) 2);
                }
                contentValues.put("serverUpdatedStatus", "false");
                contentValues.put("CreatedBy", Integer.valueOf(Integer.parseInt(ConstantsPMC.getInstance().getUserId().toString())));
                contentValues.put("CreatedDate", UtilDeclarations.getDateTime());
                contentValues.put("UpdatedBy", Integer.valueOf(Integer.parseInt(ConstantsPMC.getInstance().getUserId().toString())));
                contentValues.put("UpdatedDate", UtilDeclarations.getDateTime());
                contentValues.put("PdaId", GetDataFromDB.getInstance().getSingleValue(Queries.getInstance().geetingPdaid()));
                List<UserFunctions> list = this.userFunctions;
                if (list != null && list.size() == 2) {
                    contentValues.put("FoUserId", this.mFoNameId.getText().toString());
                    contentValues.put("IsSelfAttendance", (Integer) 2);
                    contentValues.put("IsApproved", (Integer) 1);
                    contentValues.put("SVUserId", Integer.valueOf(Integer.parseInt(ConstantsPMC.getInstance().getUserId().toString())));
                    contentValues.put("SVApprovedDate", UtilDeclarations.getDateInDDMMYYYY());
                } else {
                    contentValues.put("FoUserId", Integer.valueOf(Integer.parseInt(ConstantsPMC.getInstance().getUserId().toString())));
                    contentValues.put("IsSelfAttendance", (Integer) 1);
                    contentValues.put("IsApproved", (Integer) 0);
                }
                if (openDatabase.insert("PMCAttendanceDetails", null, contentValues) > 0) {
                    Toast.makeText(this, "Attendance details saved successfully.", 0).show();
                }
            } else {
                Toast.makeText(this, "Attendance for " + this.mSelectedDate + " is already made.", 0).show();
            }
            sendDataToServer();
            finish();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void sendDataToServer() {
        if (!UtilDeclarations.isOnline(this) || UtilDeclarations.isServiceRunning(getApplicationContext(), SyncDataService.class)) {
            return;
        }
        Toast.makeText(getBaseContext(), "Service initiated", 1);
        new SendDataServiceUtil(this).startService();
    }

    private void setSelfNightHaltSpinnerData() {
        try {
            ArrayAdapter arrayAdapter = new ArrayAdapter(this, R.layout.layout_spinner_item, this.mNightHaltArray);
            arrayAdapter.setDropDownViewResource(R.layout.layout_spinner_item);
            this.mSelfNightHaltSpinner.setAdapter((SpinnerAdapter) arrayAdapter);
            this.mSelfNightHaltSpinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.conceptglobal.pmc.attendance.I2VAttendanceActivity.2
                @Override // android.widget.AdapterView.OnItemSelectedListener
                public void onNothingSelected(AdapterView<?> adapterView) {
                }

                @Override // android.widget.AdapterView.OnItemSelectedListener
                public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
                    if (i == 0) {
                        I2VAttendanceActivity.this.mSelfNightHalt = "";
                    } else {
                        I2VAttendanceActivity i2VAttendanceActivity = I2VAttendanceActivity.this;
                        i2VAttendanceActivity.mSelfNightHalt = i2VAttendanceActivity.mNightHaltArray[i];
                    }
                }
            });
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void setFONightHaltSpinnerData() {
        try {
            ArrayAdapter arrayAdapter = new ArrayAdapter(this, R.layout.layout_spinner_item, this.mNightHaltArray);
            arrayAdapter.setDropDownViewResource(R.layout.layout_spinner_item);
            this.mFoNightHaltSpinner.setAdapter((SpinnerAdapter) arrayAdapter);
            this.mFoNightHaltSpinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.conceptglobal.pmc.attendance.I2VAttendanceActivity.3
                @Override // android.widget.AdapterView.OnItemSelectedListener
                public void onNothingSelected(AdapterView<?> adapterView) {
                }

                @Override // android.widget.AdapterView.OnItemSelectedListener
                public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
                    if (i == 0) {
                        I2VAttendanceActivity.this.mFONightHalt = "";
                    } else {
                        I2VAttendanceActivity i2VAttendanceActivity = I2VAttendanceActivity.this;
                        i2VAttendanceActivity.mFONightHalt = i2VAttendanceActivity.mNightHaltArray[i];
                    }
                }
            });
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void clearSelfFields() {
        this.mSelfDistanceEditText.setText("");
        this.mDatePickerTextView.setText("");
        this.mSelfNightHalt = "";
        this.mSelfNightHaltSpinner.setSelection(0);
    }

    private void clearFOFields() {
        this.mFOName = "";
        this.mFONightHalt = "";
        this.mFODistanceEditText.setText("");
        this.mFODatePickerTextView.setText("");
        this.mFoNightHaltSpinner.setSelection(0);
    }

    private String generateResPondentNumber() {
        try {
            return com.conceptglobal.pmc.fotracker.database.GetDataFromDB.getInstance().getStringValue(com.conceptglobal.pmc.fotracker.database.Queries.getInstance().getPdaId()) + Calendar.getInstance().getTimeInMillis();
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    private void captureImage(long j) {
        try {
            new CompressHelper().getCompressLoaction(this);
            ConstantsPMC.getInstance().setPictureReportingContext(this);
            Intent intent = new Intent(this, (Class<?>) PictureReporting.class);
            intent.putExtra("activityId", 0);
            intent.putExtra("assignmentId", 0);
            intent.putExtra("setReferenceType", GetDataFromDB.getInstance().getLookupValue(Queries.getInstance().getItemValue("Attendance")));
            intent.putExtra("setReferenceID", this.respondantNum);
            intent.putExtra("attributeId", 0);
            intent.putExtra("farmerId", this.respondantNum);
            intent.putExtra("imageId", j);
            startActivity(intent);
        } catch (Exception e) {
            PLog.e(Tag, e);
        }
    }
}

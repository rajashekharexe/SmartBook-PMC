package com.conceptglobal.pmc;

import android.app.DatePickerDialog;
import android.app.Dialog;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.Editable;
import android.text.Html;
import android.text.TextWatcher;
import android.text.format.DateUtils;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import com.conceptglobal.pmc.asynctask.WebService;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.common.ListPopupOne;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.database.InsertDataIntoDB;
import com.conceptglobal.pmc.model.ApplyLeaveModel;
import com.conceptglobal.pmc.model.SendDetailsForFarmerDetails;
import com.conceptglobal.pmc.service.SyncDataService;
import com.conceptglobal.pmc.utils.CustomActionBar;
import com.conceptglobal.pmc.utils.CustomProgressDialog;
import com.conceptglobal.pmc.utils.LabelUtils;
import com.conceptglobal.pmc.utils.PLog;
import com.conceptglobal.pmc.utils.SendDataServiceUtil;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import com.google.firebase.messaging.Constants;
import com.google.gson.Gson;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ApplyLeave extends AppCompatActivity implements View.OnClickListener {
    private static final int DATEDIALOGID = 0;
    private static final int DATEDIALOGID1 = 1;
    private Button btnSave;
    private EditText etDayType;
    private EditText etFromDate;
    private EditText etLeaveType;
    private EditText etNoOfdays;
    private EditText etRemarks;
    private EditText etSelected;
    private EditText etToDate;
    private String leaveBalance;
    private LinearLayout llId;
    private LinearLayout llIdTl;
    private LinearLayout llPending;
    private int mDay;
    private int mMonth;
    private int mYear;
    List<Date> selectedDatesList;
    private String selectedToDate;
    private String slectedFromDate;
    private String strNoDays;
    private TextView tvDayTypeID;
    private TextView tvDays;
    private TextView tvLeave;
    private TextView tvLeaveType;
    private TextView tvNoOfDays;
    private TextView tvReason;
    private TextView tvRemarks;
    private TextView tvToDate;
    private TextView tvfromDate;
    private TextView txtLeaveCount;
    private TextView txtLeaveblns;
    private TextView txtLink;
    private TextView txtOffline;
    private TextView txtPending;
    private String urlString;
    private String mFiledStr = "";
    private DatePickerDialog.OnDateSetListener mDateSetListener = new DatePickerDialog.OnDateSetListener() { // from class: com.conceptglobal.pmc.ApplyLeave.3
        @Override // android.app.DatePickerDialog.OnDateSetListener
        public void onDateSet(DatePicker datePicker, int i, int i2, int i3) {
            ApplyLeave.this.mYear = i;
            ApplyLeave.this.mMonth = i2;
            ApplyLeave.this.mDay = i3;
            int i4 = i2 + 1;
            try {
                Date parse = new SimpleDateFormat("yyyy-MM-dd").parse(i + "-" + i4 + "-" + i3);
                if (parse.compareTo(new Date()) <= 0 && !DateUtils.isToday(parse.getTime())) {
                    ApplyLeave.this.etFromDate.setText("");
                    Toast.makeText(ApplyLeave.this.getBaseContext(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectProperDate()), 1).show();
                    return;
                }
                ApplyLeave.this.slectedFromDate = parse.toString();
                if (ApplyLeave.this.strNoDays != null && ApplyLeave.this.strNoDays.equalsIgnoreCase("Half Day")) {
                    ApplyLeave.this.etToDate.setText(new StringBuffer().append(ApplyLeave.this.mDay).append("-").append(ApplyLeave.this.mMonth + 1).append("-").append(ApplyLeave.this.mYear).toString());
                }
                ApplyLeave.this.updateDisplay();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    };
    private DatePickerDialog.OnDateSetListener mDateSetListener1 = new DatePickerDialog.OnDateSetListener() { // from class: com.conceptglobal.pmc.ApplyLeave.4
        @Override // android.app.DatePickerDialog.OnDateSetListener
        public void onDateSet(DatePicker datePicker, int i, int i2, int i3) {
            ApplyLeave.this.mYear = i;
            ApplyLeave.this.mMonth = i2;
            ApplyLeave.this.mDay = i3;
            int i4 = i2 + 1;
            try {
                Date parse = new SimpleDateFormat("yyyy-MM-dd").parse(i + "-" + i4 + "-" + i3);
                Date parse2 = new SimpleDateFormat("yyyy-MM-dd").parse(ApplyLeave.this.etFromDate.getText().toString());
                if (parse.compareTo(parse2) <= 0 && !parse.equals(parse2)) {
                    Toast.makeText(ApplyLeave.this.getBaseContext(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectProperDate()), 1).show();
                }
                ApplyLeave.this.updateDisplay();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    };

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(com.conceptglobal.pmcdeepakfertilizers.R.layout.activity_applyleave);
        CustomActionBar.initActionBar(this, getIntent().getExtras().getString("activityName") + " (" + UtilDeclarations.getApplicationVersion(this) + ")");
        initialization();
        setBottomViewPadding(this.llIdTl);
        getWindow().setSoftInputMode(3);
        if (((ConnectivityManager) getSystemService("connectivity")).getActiveNetworkInfo() == null) {
            this.txtOffline.setVisibility(0);
            this.txtOffline.setText("You are in Offline");
            this.llIdTl.setVisibility(8);
            this.llId.setVisibility(8);
            this.llPending.setVisibility(8);
        } else {
            this.llIdTl.setVisibility(0);
            this.llId.setVisibility(0);
            this.llPending.setVisibility(0);
            this.txtOffline.setVisibility(8);
            new SignInDetails().execute(new String[0]);
        }
        this.selectedDatesList = new ArrayList();
    }

    public class SignInDetails extends AsyncTask<String, Void, String> {
        private CustomProgressDialog customProgressDialog;

        public SignInDetails() {
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            super.onPreExecute();
            CustomProgressDialog customProgressDialog = new CustomProgressDialog(ApplyLeave.this, CustomProgressDialog.progressbarType.COUNT_BAR, "GetMasterSyncData");
            this.customProgressDialog = customProgressDialog;
            customProgressDialog.showDialog("Please wait.......");
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public String doInBackground(String... strArr) {
            WebService.getInstance();
            try {
                ApplyLeave.this.urlString = ConstantsPMC.getInstance().getUrlPMCService(ConstantsPMC.getInstance().getIsTrainingORLive()) + "/" + ConstantsPMC.getInstance().getMethodGetUserLeaveDetails();
                SendDetailsForFarmerDetails sendDetailsForFarmerDetails = new SendDetailsForFarmerDetails();
                Gson gson = new Gson();
                sendDetailsForFarmerDetails.setPDAID(ConstantsPMC.getInstance().getDeviceID().toString());
                return WebService.getInstance().sendRequest(gson.toJson(sendDetailsForFarmerDetails), ApplyLeave.this.urlString);
            } catch (Exception e) {
                PLog.e("SendReqToServerAsync", e);
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(String str) {
            CustomProgressDialog customProgressDialog = this.customProgressDialog;
            if (customProgressDialog == null || !customProgressDialog.isShowing() || ApplyLeave.this.isFinishing()) {
                return;
            }
            this.customProgressDialog.dismiss();
            try {
                JSONObject jSONObject = new JSONObject(str).getJSONObject(Constants.ScionAnalytics.MessageType.DATA_MESSAGE);
                String string = jSONObject.getString("TotalLeaves");
                ApplyLeave.this.leaveBalance = jSONObject.getString("TotalBalance");
                String string2 = jSONObject.getString("ApprovalPending");
                ApplyLeave.this.txtLeaveCount.setText(string);
                ApplyLeave.this.txtLeaveblns.setText(ApplyLeave.this.leaveBalance);
                ApplyLeave.this.txtPending.setText(string2);
            } catch (JSONException e) {
                e.printStackTrace();
            }
            super.onPostExecute((SignInDetails) str);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            finish();
        }
        return super.onOptionsItemSelected(menuItem);
    }

    private void initialization() {
        this.tvLeaveType = (TextView) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tvLeaveType);
        this.tvDays = (TextView) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tvDays);
        this.tvfromDate = (TextView) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tvfromDate);
        this.tvRemarks = (TextView) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tvRemarks);
        this.tvToDate = (TextView) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tvToDate);
        this.tvNoOfDays = (TextView) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tvNoOfDays);
        this.txtLeaveCount = (TextView) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.txtLeaveCount);
        this.txtLeaveblns = (TextView) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.txtLeaveblns);
        this.txtPending = (TextView) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.txtPending);
        this.txtOffline = (TextView) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.txtOffline);
        this.etLeaveType = (EditText) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.etLeaveType);
        this.etDayType = (EditText) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.etDayType);
        this.llIdTl = (LinearLayout) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.llIdTl);
        this.llId = (LinearLayout) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.llId);
        this.llPending = (LinearLayout) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.llPending);
        this.etLeaveType.addTextChangedListener(new TextWatcher() { // from class: com.conceptglobal.pmc.ApplyLeave.1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                ApplyLeave.this.etLeaveType.setError(null);
            }
        });
        this.etDayType.addTextChangedListener(new TextWatcher() { // from class: com.conceptglobal.pmc.ApplyLeave.2
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                ApplyLeave.this.etDayType.setError(null);
                ApplyLeave.this.strNoDays = editable.toString();
                try {
                    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd-MM-yyyy");
                    ApplyLeave applyLeave = ApplyLeave.this;
                    applyLeave.setNoOfDays(simpleDateFormat.parse(applyLeave.etFromDate.getText().toString()), simpleDateFormat.parse(ApplyLeave.this.etToDate.getText().toString()));
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        });
        this.etLeaveType.setOnClickListener(this);
        this.etDayType.setOnClickListener(this);
        EditText editText = (EditText) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.etFromDate);
        this.etFromDate = editText;
        editText.setOnClickListener(this);
        EditText editText2 = (EditText) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.etToDate);
        this.etToDate = editText2;
        editText2.setOnClickListener(this);
        this.etNoOfdays = (EditText) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.etNoOfDays);
        this.etRemarks = (EditText) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.etRemarks);
        this.btnSave = (Button) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.btn_save);
        TextView textView = (TextView) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.txtLink);
        this.txtLink = textView;
        textView.setOnClickListener(this);
        this.btnSave.setOnClickListener(this);
        this.tvLeave = (TextView) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tvLeaveTypeID);
        this.tvDayTypeID = (TextView) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tvDayTypeID);
        this.tvReason = (TextView) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tvReasonTypeID);
        Calendar calendar = Calendar.getInstance();
        this.mDay = calendar.get(5);
        this.mMonth = calendar.get(2);
        this.mYear = calendar.get(1);
        this.tvLeaveType.setText(Html.fromHtml(this.tvLeaveType.getText().toString() + "<font color='#ff0000'>*</font>"));
        this.tvDays.setText(Html.fromHtml(this.tvDays.getText().toString() + "<font color='#ff0000'>*</font>"));
        this.tvfromDate.setText(Html.fromHtml(this.tvfromDate.getText().toString() + "<font color='#ff0000'>*</font>"));
        this.tvRemarks.setText(Html.fromHtml(this.tvRemarks.getText().toString() + "<font color='#ff0000'>*</font>"));
        this.tvToDate.setText(Html.fromHtml(this.tvToDate.getText().toString() + "<font color='#ff0000'>*</font>"));
        this.etFromDate.setText(UtilDeclarations.getDateInDDMMYYYY());
        this.etToDate.setText(UtilDeclarations.getDateInDDMMYYYY());
        try {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd-MM-yyyy");
            setNoOfDays(simpleDateFormat.parse(this.etFromDate.getText().toString()), simpleDateFormat.parse(this.etToDate.getText().toString()));
        } catch (Exception e) {
            e.printStackTrace();
        }
        this.etNoOfdays.setBackgroundDrawable(getResources().getDrawable(com.conceptglobal.pmcdeepakfertilizers.R.drawable.card_layout_back_desable));
    }

    private void setEditableFalse(EditText editText) {
        editText.setFocusable(false);
        editText.setClickable(false);
        editText.setBackgroundDrawable(getResources().getDrawable(com.conceptglobal.pmcdeepakfertilizers.R.drawable.card_layout_back_desable));
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case com.conceptglobal.pmcdeepakfertilizers.R.id.btn_save /* 2131296431 */:
                insertData();
                break;
            case com.conceptglobal.pmcdeepakfertilizers.R.id.etDayType /* 2131296611 */:
                UtilDeclarations.hideInputKeyboard(this);
                try {
                    ListPopupOne listPopupOne = new ListPopupOne(this, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectOneDropDownTitle()), Queries.getInstance().getDropdownValuesLookup("DayType"), view, this.tvDayTypeID);
                    listPopupOne.getWindow().getAttributes().windowAnimations = com.conceptglobal.pmcdeepakfertilizers.R.style.PauseDialogAnimation;
                    listPopupOne.show();
                    listPopupOne.getWindow().setSoftInputMode(3);
                    break;
                } catch (Exception e) {
                    e.getMessage();
                    return;
                }
            case com.conceptglobal.pmcdeepakfertilizers.R.id.etFromDate /* 2131296621 */:
                this.etSelected = this.etFromDate;
                showDialog(0);
                new DatePickerDialog(this, this.mDateSetListener, this.mYear, this.mMonth, this.mDay).show();
                break;
            case com.conceptglobal.pmcdeepakfertilizers.R.id.etLeaveType /* 2131296626 */:
                UtilDeclarations.hideInputKeyboard(this);
                try {
                    ListPopupOne listPopupOne2 = new ListPopupOne(this, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectOneDropDownTitle()), Queries.getInstance().getDropdownValuesLookup("AttendanceType"), view, this.tvLeave);
                    listPopupOne2.getWindow().getAttributes().windowAnimations = com.conceptglobal.pmcdeepakfertilizers.R.style.PauseDialogAnimation;
                    listPopupOne2.show();
                    listPopupOne2.getWindow().setSoftInputMode(3);
                    break;
                } catch (Exception e2) {
                    e2.getMessage();
                    return;
                }
            case com.conceptglobal.pmcdeepakfertilizers.R.id.etToDate /* 2131296640 */:
                if (this.etFromDate.getText().toString().equals(null) || this.etFromDate.getText().toString().length() == 0) {
                    Toast.makeText(this, "Please select from date", 1).getClass();
                    break;
                } else {
                    this.etSelected = this.etToDate;
                    showDialog(1);
                    new DatePickerDialog(this, this.mDateSetListener1, this.mYear, this.mMonth, this.mDay).show();
                    break;
                }
                break;
            case com.conceptglobal.pmcdeepakfertilizers.R.id.txtLink /* 2131297719 */:
                Intent intent = new Intent(this, (Class<?>) ReportViewActivity.class);
                intent.putExtra(Constants.MessagePayloadKeys.FROM, "ApplyLeave");
                intent.putExtra("activityName", "ApplyLeave");
                startActivity(intent.addFlags(67108864));
                break;
        }
    }

    private void insertData() {
        try {
            if (Double.parseDouble(this.etNoOfdays.getText().toString()) > Double.parseDouble(this.leaveBalance)) {
                Toast.makeText(this, "You have only " + this.leaveBalance + " leaves ", 0).show();
                return;
            }
            if (this.etLeaveType.getText().toString().isEmpty()) {
                this.etLeaveType.setError("Select Leave Type");
                Toast.makeText(this, "Please Select Leave Type", 1).show();
                return;
            }
            if (this.etFromDate.getText().toString().isEmpty()) {
                this.etFromDate.setError("Select from date");
                return;
            }
            if (this.etToDate.getText().toString().isEmpty()) {
                this.etToDate.setError("Select to date");
                return;
            }
            if (this.etRemarks.getText().toString().isEmpty()) {
                this.etRemarks.setError("Enter remarks");
                Toast.makeText(this, " Enter Remarks", 1).show();
                return;
            }
            ApplyLeaveModel applyLeaveModel = new ApplyLeaveModel();
            applyLeaveModel.setFromDate(this.etFromDate.getText().toString());
            applyLeaveModel.setToDate(this.etToDate.getText().toString());
            applyLeaveModel.setLeaveType(this.etLeaveType.getText().toString());
            applyLeaveModel.setNoOfDays(this.etNoOfdays.getText().toString());
            applyLeaveModel.setRemarks(this.etRemarks.getText().toString());
            applyLeaveModel.setReasonType(this.etDayType.getText().toString());
            try {
                if (this.selectedDatesList.size() != 0 && this.selectedDatesList.size() > 1) {
                    for (int i = 0; i < this.selectedDatesList.size(); i++) {
                        String format = new SimpleDateFormat("dd-MM-yyyy").format(this.selectedDatesList.get(i));
                        applyLeaveModel.setFromDate(format);
                        applyLeaveModel.setToDate(format);
                        InsertDataIntoDB.insertLeaveData(applyLeaveModel);
                    }
                } else {
                    InsertDataIntoDB.insertLeaveData(applyLeaveModel);
                }
            } catch (Exception unused) {
            }
            Toast.makeText(this, "Leave submitted successfully", 1).show();
            if (UtilDeclarations.isOnline(this) && !UtilDeclarations.isServiceRunning(getApplicationContext(), SyncDataService.class)) {
                Toast.makeText(getBaseContext(), "Service initiated", 1);
                new SendDataServiceUtil(this).startService();
            }
            finish();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // android.app.Activity
    public Dialog onCreateDialog(int i) {
        if (i == 0) {
            new DatePickerDialog(this, this.mDateSetListener, this.mYear, this.mMonth, this.mDay);
            return null;
        }
        if (i != 1) {
            return null;
        }
        new DatePickerDialog(this, this.mDateSetListener1, this.mYear, this.mMonth, this.mDay);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateDisplay() {
        this.mFiledStr = new StringBuffer().append(this.mDay).append("-").append(this.mMonth + 1).append("-").append(this.mYear).toString();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd-MM-yyyy");
        try {
            simpleDateFormat.parse(this.mFiledStr);
            this.etSelected.setText(this.mFiledStr);
            if (this.etFromDate.getText().toString().length() <= 0 || this.etToDate.getText().toString().length() <= 0) {
                return;
            }
            setNoOfDays(simpleDateFormat.parse(this.etFromDate.getText().toString()), simpleDateFormat.parse(this.etToDate.getText().toString()));
        } catch (ParseException unused) {
        }
    }

    public void setNoOfDays(Date date, Date date2) {
        String str;
        try {
            long time = ((date2.getTime() - date.getTime()) / 86400000) + 1;
            if (time <= 0) {
                this.etToDate.setText("");
                this.etNoOfdays.setText("0");
                Toast.makeText(this, "Please select proper to date", 1).show();
            } else {
                String str2 = this.strNoDays;
                if (str2 != null && str2.equalsIgnoreCase("Full Day")) {
                    this.etNoOfdays.setText(time + "");
                } else {
                    this.etNoOfdays.setText(String.valueOf(time / 2.0d));
                }
            }
            double parseDouble = Double.parseDouble(this.etNoOfdays.getText().toString());
            String str3 = this.strNoDays;
            if ((str3 == null || !str3.equalsIgnoreCase("Half Day") || parseDouble <= 0.5d) && ((str = this.strNoDays) == null || !str.equalsIgnoreCase("Full Day") || parseDouble <= 1.0d)) {
                return;
            }
            this.selectedDatesList = UtilDeclarations.getDates(this.etFromDate.getText().toString(), this.etToDate.getText().toString());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void setBottomViewPadding(final LinearLayout linearLayout) {
        ViewCompat.setOnApplyWindowInsetsListener(linearLayout, new OnApplyWindowInsetsListener() { // from class: com.conceptglobal.pmc.ApplyLeave$$ExternalSyntheticLambda0
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                return ApplyLeave.lambda$setBottomViewPadding$0(linearLayout, view, windowInsetsCompat);
            }
        });
    }

    static /* synthetic */ WindowInsetsCompat lambda$setBottomViewPadding$0(LinearLayout linearLayout, View view, WindowInsetsCompat windowInsetsCompat) {
        Insets insets = windowInsetsCompat.getInsets(WindowInsetsCompat.Type.systemBars());
        if (linearLayout != null) {
            linearLayout.setPadding(linearLayout.getPaddingLeft(), linearLayout.getPaddingTop(), linearLayout.getPaddingRight(), insets.bottom);
        }
        return windowInsetsCompat;
    }
}

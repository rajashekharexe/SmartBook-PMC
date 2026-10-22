package com.conceptglobal.pmc;

import android.app.AlertDialog;
import android.app.DatePickerDialog;
import android.app.Dialog;
import android.content.DialogInterface;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.Html;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import com.conceptglobal.pmc.asynctask.WebService;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.common.ListPopupOne;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.database.InsertDataIntoDB;
import com.conceptglobal.pmc.model.ResignationDetails;
import com.conceptglobal.pmc.model.ResignationStatusDetails;
import com.conceptglobal.pmc.model.ResponseModel;
import com.conceptglobal.pmc.service.SyncDataService;
import com.conceptglobal.pmc.sync.GetToken;
import com.conceptglobal.pmc.utils.CustomActionBar;
import com.conceptglobal.pmc.utils.CustomProgressDialog;
import com.conceptglobal.pmc.utils.LabelUtils;
import com.conceptglobal.pmc.utils.SendDataServiceUtil;
import com.conceptglobal.pmc.utils.SharedPrefManager;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import com.google.firebase.messaging.Constants;
import com.google.gson.Gson;
import java.io.Reader;
import java.io.StringReader;
import java.lang.reflect.Method;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ResignationActivity extends BaseActivity implements View.OnClickListener {
    private static final int DATEDIALOGID = 0;
    private static final int DATEDIALOGID_TWO = 1;
    private Button btnSave;
    private EditText etArrovedDateStatus;
    private EditText etDescription;
    private EditText etDescriptionStatus;
    private EditText etLastWorkingDay;
    private EditText etLastWorkingDayStatus;
    private EditText etReason;
    private EditText etReasonStatus;
    private EditText etReviewdByName;
    private EditText etSelected;
    private EditText etStatus;
    private EditText etresignationDate;
    private EditText etresignationDateStatus;
    private ImageView ivRefresh;
    private LinearLayout ll_resignation;
    private LinearLayout ll_status;
    private int mDay;
    private int mMonth;
    private int mYear;
    private ProgressBar pbSvDataRefresh;
    List<ResignationDetails> resignationDetails;
    private TextView tvArrovedDateStatus;
    private TextView tvDescription;
    private TextView tvDescriptionStatus;
    private TextView tvLastWorkingDay;
    private TextView tvLastWorkingDayStatus;
    private TextView tvReason;
    private TextView tvReasonID;
    private TextView tvReasonStatus;
    private TextView tvStatus;
    private TextView tvStatusUpdatedTime;
    private TextView tvTab1;
    private TextView tvTab2;
    private TextView tvresignationDate;
    private TextView tvresignationDateStatus;
    private long defaultMinDate = -1;
    private long defaultMaxDate = -1;
    private String mFiledStr = "";
    private int tab_selected = 1;
    private DatePickerDialog.OnDateSetListener mDateSetListener = new DatePickerDialog.OnDateSetListener() { // from class: com.conceptglobal.pmc.ResignationActivity.1
        @Override // android.app.DatePickerDialog.OnDateSetListener
        public void onDateSet(DatePicker datePicker, int i, int i2, int i3) {
            ResignationActivity.this.mYear = i;
            ResignationActivity.this.mMonth = i2;
            ResignationActivity.this.mDay = i3;
            try {
                new SimpleDateFormat("yyyy-MM-dd").parse(i + "-" + (i2 + 1) + "-" + i3);
                new Date();
                ResignationActivity.this.updateDisplay();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    };

    @Override // com.conceptglobal.pmc.BaseActivity
    protected void displayNotification(String str, String str2) {
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
    }

    @Override // com.conceptglobal.pmc.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(com.conceptglobal.pmcdeepakfertilizers.R.layout.activity_resignation);
        CustomActionBar.initActionBar(this, "Apply Resignation (" + UtilDeclarations.getApplicationVersion(this) + ")");
        initialization();
        getWindow().setSoftInputMode(3);
        this.resignationDetails = GetDataFromDB.getInstance().getResignationDetails(Queries.getInstance().getSelectResignationDetails());
        bindResignationTabData();
    }

    @Override // com.conceptglobal.pmc.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
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
        this.tvresignationDate = (TextView) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tvresignationDate);
        this.tvReason = (TextView) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tvReason);
        this.tvReasonID = (TextView) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tvReasonID);
        this.tvDescription = (TextView) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tvDescription);
        this.tvLastWorkingDay = (TextView) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tvLastWorkingDay);
        this.tvTab1 = (TextView) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tvTab1);
        this.tvTab2 = (TextView) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tvTab2);
        ImageView imageView = (ImageView) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.ivRefresh);
        this.ivRefresh = imageView;
        imageView.setOnClickListener(this);
        ProgressBar progressBar = (ProgressBar) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.pbSvDataRefresh);
        this.pbSvDataRefresh = progressBar;
        progressBar.setOnClickListener(this);
        this.ll_resignation = (LinearLayout) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.ll_resignation);
        this.ll_status = (LinearLayout) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.ll_status);
        this.etresignationDate = (EditText) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.etresignationDate);
        this.etReason = (EditText) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.etReason);
        this.etDescription = (EditText) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.etDescription);
        this.etLastWorkingDay = (EditText) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.etLastWorkingDay);
        this.tvresignationDateStatus = (TextView) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tvresignationDateStatus);
        this.tvReasonStatus = (TextView) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tvReasonStatus);
        this.tvDescriptionStatus = (TextView) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tvDescriptionStatus);
        this.tvLastWorkingDayStatus = (TextView) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tvLastWorkingDayStatus);
        this.tvStatus = (TextView) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tvStatus);
        this.tvArrovedDateStatus = (TextView) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tvArrovedDateStatus);
        this.tvStatusUpdatedTime = (TextView) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tvStatusUpdatedTime);
        EditText editText = (EditText) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.etresignationDateStatus);
        this.etresignationDateStatus = editText;
        setEditableFalse(editText);
        EditText editText2 = (EditText) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.etReasonStatus);
        this.etReasonStatus = editText2;
        setEditableFalse(editText2);
        EditText editText3 = (EditText) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.etDescriptionStatus);
        this.etDescriptionStatus = editText3;
        setEditableFalse(editText3);
        EditText editText4 = (EditText) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.etLastWorkingDayStatus);
        this.etLastWorkingDayStatus = editText4;
        setEditableFalse(editText4);
        EditText editText5 = (EditText) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.etStatus);
        this.etStatus = editText5;
        setEditableFalse(editText5);
        this.etReviewdByName = (EditText) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.etReviewdByName);
        EditText editText6 = (EditText) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.etArrovedDateStatus);
        this.etArrovedDateStatus = editText6;
        setEditableFalse(editText6);
        this.etReason.setOnClickListener(this);
        this.tvTab1.setOnClickListener(this);
        this.tvTab2.setOnClickListener(this);
        this.etLastWorkingDay.setOnClickListener(this);
        Button button = (Button) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.btn_save);
        this.btnSave = button;
        button.setOnClickListener(this);
        Calendar calendar = Calendar.getInstance();
        this.mDay = calendar.get(5);
        this.mMonth = calendar.get(2);
        this.mYear = calendar.get(1);
        this.tvresignationDate.setText(Html.fromHtml(this.tvresignationDate.getText().toString() + "<font color='#ff0000'>*</font>"));
        this.tvReason.setText(Html.fromHtml(this.tvReason.getText().toString() + "<font color='#ff0000'>*</font>"));
        this.tvDescription.setText(Html.fromHtml(this.tvDescription.getText().toString() + "<font color='#ff0000'>*</font>"));
        this.tvLastWorkingDay.setText(Html.fromHtml(this.tvLastWorkingDay.getText().toString() + "<font color='#ff0000'>*</font>"));
        this.tvresignationDateStatus.setText(Html.fromHtml(this.tvresignationDateStatus.getText().toString() + "<font color='#ff0000'>*</font>"));
        this.tvReasonStatus.setText(Html.fromHtml(this.tvReasonStatus.getText().toString() + "<font color='#ff0000'>*</font>"));
        this.tvDescriptionStatus.setText(Html.fromHtml(this.tvDescriptionStatus.getText().toString() + "<font color='#ff0000'>*</font>"));
        this.tvLastWorkingDayStatus.setText(Html.fromHtml(this.tvLastWorkingDayStatus.getText().toString() + "<font color='#ff0000'>*</font>"));
        this.tvStatus.setText(Html.fromHtml(this.tvStatus.getText().toString() + "<font color='#ff0000'>*</font>"));
        this.tvArrovedDateStatus.setText(Html.fromHtml(this.tvArrovedDateStatus.getText().toString() + "<font color='#ff0000'>*</font>"));
        this.etresignationDate.setText(UtilDeclarations.getDateInDDMMYYYY());
        setEditableFalse(this.etresignationDate);
    }

    private void setEditableFalse(EditText editText) {
        editText.setFocusable(false);
        editText.setClickable(false);
        editText.setEnabled(false);
        editText.setBackgroundDrawable(getResources().getDrawable(com.conceptglobal.pmcdeepakfertilizers.R.drawable.card_layout_back_desable));
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case com.conceptglobal.pmcdeepakfertilizers.R.id.btn_save /* 2131296431 */:
                insertData();
                break;
            case com.conceptglobal.pmcdeepakfertilizers.R.id.etLastWorkingDay /* 2131296624 */:
                this.etSelected = this.etLastWorkingDay;
                showDialog(1);
                break;
            case com.conceptglobal.pmcdeepakfertilizers.R.id.etReason /* 2131296631 */:
                UtilDeclarations.hideInputKeyboard(this);
                try {
                    ListPopupOne listPopupOne = new ListPopupOne(this, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectOneDropDownTitle()), Queries.getInstance().getDropdownValuesBasedItemType("ResignationReason"), view, this.tvReasonID);
                    listPopupOne.getWindow().getAttributes().windowAnimations = com.conceptglobal.pmcdeepakfertilizers.R.style.PauseDialogAnimation;
                    listPopupOne.show();
                    listPopupOne.getWindow().setSoftInputMode(3);
                    break;
                } catch (Exception unused) {
                    return;
                }
            case com.conceptglobal.pmcdeepakfertilizers.R.id.etresignationDate /* 2131296727 */:
                this.etSelected = this.etresignationDate;
                showDialog(0);
                break;
            case com.conceptglobal.pmcdeepakfertilizers.R.id.ivRefresh /* 2131296867 */:
                if (UtilDeclarations.isOnline(this)) {
                    new ArrovalStatusTask().execute(new Void[0]);
                    break;
                } else {
                    showAlert(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_pleaseCheckDataError()));
                    break;
                }
            case com.conceptglobal.pmcdeepakfertilizers.R.id.tvTab1 /* 2131297499 */:
                if (this.tab_selected == 2) {
                    this.tvTab1.setBackground(getResources().getDrawable(com.conceptglobal.pmcdeepakfertilizers.R.drawable.tab_selected));
                    this.tvTab2.setBackground(getResources().getDrawable(com.conceptglobal.pmcdeepakfertilizers.R.drawable.tab_unselected));
                    this.tab_selected = 1;
                    this.ll_resignation.setVisibility(0);
                    this.ll_status.setVisibility(8);
                    break;
                }
                break;
            case com.conceptglobal.pmcdeepakfertilizers.R.id.tvTab2 /* 2131297500 */:
                if (this.tab_selected == 1) {
                    this.tvTab1.setBackground(getResources().getDrawable(com.conceptglobal.pmcdeepakfertilizers.R.drawable.tab_unselected));
                    this.tvTab2.setBackground(getResources().getDrawable(com.conceptglobal.pmcdeepakfertilizers.R.drawable.tab_selected));
                    this.tab_selected = 2;
                    this.ll_resignation.setVisibility(8);
                    this.ll_status.setVisibility(0);
                    bindStatusTabData();
                    if (UtilDeclarations.isOnline(this)) {
                        new ArrovalStatusTask().execute(new Void[0]);
                        break;
                    }
                }
                break;
        }
    }

    public void bindStatusTabData() {
        List<ResignationDetails> resignationDetails = GetDataFromDB.getInstance().getResignationDetails(Queries.getInstance().getSelectResignationDetails());
        this.resignationDetails = resignationDetails;
        if (resignationDetails.size() > 0) {
            ResignationDetails resignationDetails2 = this.resignationDetails.get(0);
            this.etresignationDateStatus.setText(resignationDetails2.getApplieddate() != null ? resignationDetails2.getApplieddate() : "");
            this.etReasonStatus.setText(resignationDetails2.getReason() != null ? resignationDetails2.getReason() : "");
            this.etDescriptionStatus.setText(resignationDetails2.getDescription() != null ? resignationDetails2.getDescription() : "");
            this.etLastWorkingDayStatus.setText(resignationDetails2.getLastworkingdate() != null ? resignationDetails2.getLastworkingdate() : "");
            this.etArrovedDateStatus.setText(resignationDetails2.getReviweddate() != null ? resignationDetails2.getReviweddate() : "");
            this.etReviewdByName.setText(resignationDetails2.getReviewedbyname() != null ? resignationDetails2.getReviewedbyname() : "");
            setEditableFalse(this.etReviewdByName);
            if (resignationDetails2.getResignationstatus() == 0) {
                this.etStatus.setText("Approval Pending");
            } else if (resignationDetails2.getResignationstatus() == 1) {
                this.etStatus.setText("Approved");
                this.btnSave.setEnabled(false);
                this.btnSave.setBackgroundDrawable(getResources().getDrawable(com.conceptglobal.pmcdeepakfertilizers.R.drawable.card_layout_back_desable));
            } else if (resignationDetails2.getResignationstatus() == 2) {
                this.etStatus.setText("Rejected");
            }
            String string = SharedPrefManager.getString(this, ConstantsPMC.PREF_KEY_RESIGNATION_STATUS_SYNC_TIME);
            String str = string != null ? string : "";
            this.tvStatusUpdatedTime.setText("Resignation Status verified  time: " + str);
        }
    }

    public void bindResignationTabData() {
        if (this.resignationDetails.size() > 0) {
            ResignationDetails resignationDetails = this.resignationDetails.get(0);
            if (resignationDetails.getResignationstatus() == 2) {
                this.etresignationDate.setText(UtilDeclarations.getDateInDDMMYYYY());
                setEditableFalse(this.etresignationDate);
            } else {
                this.etresignationDate.setText((resignationDetails.getApplieddate() == null || resignationDetails.getApplieddate().length() <= 0) ? "" : resignationDetails.getApplieddate());
            }
            this.etReason.setText(resignationDetails.getReason() != null ? resignationDetails.getReason() : "");
            this.etDescription.setText(resignationDetails.getDescription() != null ? resignationDetails.getDescription() : "");
            this.etLastWorkingDay.setText(resignationDetails.getLastworkingdate() != null ? resignationDetails.getLastworkingdate() : "");
            if (resignationDetails.getResignationstatus() == 1) {
                this.btnSave.setEnabled(false);
                this.btnSave.setBackgroundDrawable(getResources().getDrawable(com.conceptglobal.pmcdeepakfertilizers.R.drawable.card_layout_back_desable));
            } else if (resignationDetails.getResignationstatus() == 2) {
                this.btnSave.setEnabled(true);
            } else if (resignationDetails.getResignationstatus() == 0) {
                this.btnSave.setEnabled(true);
            }
        }
    }

    private void insertData() {
        if (this.etresignationDate.getText().toString().isEmpty()) {
            this.etresignationDate.setError("Select " + this.tvresignationDate.getText().toString());
            Toast.makeText(this, "Please Select " + this.tvresignationDate.getText().toString(), 1).show();
            return;
        }
        if (this.etReason.getText().toString().isEmpty()) {
            this.etReason.setError("Select " + this.tvReason.getText().toString());
            Toast.makeText(this, "Please Select " + this.tvReason.getText().toString(), 1).show();
            return;
        }
        if (this.etDescription.getText().toString().isEmpty()) {
            this.etDescription.setError("Enter " + this.tvDescription.getText().toString());
            Toast.makeText(this, "Please Enter " + this.tvDescription.getText().toString(), 1).show();
            return;
        }
        if (this.etLastWorkingDay.getText().toString().isEmpty()) {
            this.etLastWorkingDay.setError("Select " + this.tvLastWorkingDay.getText().toString());
            Toast.makeText(this, "Please Select " + this.tvLastWorkingDay.getText().toString(), 1).show();
            return;
        }
        ResignationDetails resignationDetails = new ResignationDetails();
        resignationDetails.setApplieddate(this.etresignationDate.getText().toString());
        resignationDetails.setReason(this.etReason.getText().toString());
        resignationDetails.setDescription(this.etDescription.getText().toString());
        resignationDetails.setLastworkingdate(this.etLastWorkingDay.getText().toString());
        try {
            InsertDataIntoDB.insertResignationData(resignationDetails, false);
        } catch (Exception unused) {
        }
        Toast.makeText(this, "Data saved successfully", 1).show();
        if (UtilDeclarations.isOnline(this) && !UtilDeclarations.isServiceRunning(getApplicationContext(), SyncDataService.class)) {
            Toast.makeText(getBaseContext(), "Service initiated", 1);
            new SendDataServiceUtil(this).startService();
        }
        finish();
    }

    @Override // android.app.Activity
    public Dialog onCreateDialog(int i) {
        if (i == 0) {
            try {
                return new DatePickerDialog(this, this.mDateSetListener, this.mYear, this.mMonth, this.mDay);
            } catch (Exception unused) {
                return null;
            }
        }
        if (i != 1) {
            return null;
        }
        DatePickerDialog datePickerDialog = new DatePickerDialog(this, this.mDateSetListener, this.mYear, this.mMonth, this.mDay);
        try {
            this.defaultMinDate = datePickerDialog.getDatePicker().getMinDate();
            this.defaultMaxDate = datePickerDialog.getDatePicker().getMaxDate();
            Date date = new Date();
            Calendar calendar = Calendar.getInstance();
            calendar.setTime(date);
            datePickerDialog.getDatePicker().setMinDate(calendar.getTime().getTime());
        } catch (Exception unused2) {
        }
        return datePickerDialog;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateDisplay() {
        this.mFiledStr = new StringBuffer().append(this.mDay).append("-").append(this.mMonth + 1).append("-").append(this.mYear).toString();
        try {
            new SimpleDateFormat("dd-MM-yyyy").parse(this.mFiledStr);
            this.etSelected.setText(this.mFiledStr);
        } catch (ParseException e) {
            e.printStackTrace();
        }
    }

    private class ArrovalStatusTask extends AsyncTask<Void, String, String> {
        private CustomProgressDialog customProgressDialog;

        private ArrovalStatusTask() {
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            super.onPreExecute();
            CustomProgressDialog customProgressDialog = new CustomProgressDialog(ResignationActivity.this, CustomProgressDialog.progressbarType.COUNT_BAR, "GetMasterSyncData");
            this.customProgressDialog = customProgressDialog;
            customProgressDialog.showDialog("Getting latest status");
            ResignationActivity.this.ivRefresh.setVisibility(8);
            ResignationActivity.this.pbSvDataRefresh.setVisibility(0);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public String doInBackground(Void... voidArr) {
            ResignationActivity.this.getResignationStatusDetails();
            return "";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(String str) {
            super.onPostExecute((ArrovalStatusTask) str);
            CustomProgressDialog customProgressDialog = this.customProgressDialog;
            if (customProgressDialog != null && customProgressDialog.isShowing() && !ResignationActivity.this.isFinishing()) {
                this.customProgressDialog.dismiss();
                ResignationActivity.this.bindStatusTabData();
            }
            ResignationActivity.this.ivRefresh.setVisibility(0);
            ResignationActivity.this.pbSvDataRefresh.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getResignationStatusDetails() {
        try {
            Gson gson = new Gson();
            String sendGetRequest = WebService.getInstance().sendGetRequest(ConstantsPMC.getInstance().getUrlPMCService(ConstantsPMC.getInstance().getIsTrainingORLive()) + "/" + ConstantsPMC.getInstance().getMethodResignedUserStatus() + "/" + ConstantsPMC.getInstance().getDeviceID(), ConstantsPMC.getInstance().getWcfToken());
            ResponseModel responseModel = (ResponseModel) gson.fromJson((Reader) new StringReader(sendGetRequest), ResponseModel.class);
            JSONObject jSONObject = new JSONObject(sendGetRequest);
            if (responseModel.getStatus().equals("AUTHORISED")) {
                if (jSONObject.getString(Constants.ScionAnalytics.MessageType.DATA_MESSAGE) != null && jSONObject.getString(Constants.ScionAnalytics.MessageType.DATA_MESSAGE).length() > 10) {
                    InsertDataIntoDB.UpdateResignationData((ResignationStatusDetails) gson.fromJson((Reader) new StringReader(jSONObject.getString(Constants.ScionAnalytics.MessageType.DATA_MESSAGE)), ResignationStatusDetails.class));
                    SharedPrefManager.storeString(this, UtilDeclarations.getDateTime(), ConstantsPMC.PREF_KEY_RESIGNATION_STATUS_SYNC_TIME);
                }
            } else if (responseModel.getStatus().equals("UNAUTHORISED") && responseModel.getStatusMessage().equals("Invalid Token")) {
                new GetToken(this, 2).StartGetToken();
                Class<?> cls = Class.forName("com.conceptglobal.pmc.LoginActivity");
                Method declaredMethod = cls.getDeclaredMethod("getGeoDetails", null);
                declaredMethod.setAccessible(true);
                declaredMethod.invoke(cls.newInstance(), null);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void showAlert(String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setMessage(str).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.ResignationActivity.2
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
}

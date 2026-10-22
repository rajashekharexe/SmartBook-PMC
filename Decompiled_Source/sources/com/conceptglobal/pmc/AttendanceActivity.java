package com.conceptglobal.pmc;

import android.app.AlertDialog;
import android.app.DatePickerDialog;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.location.Location;
import android.os.Bundle;
import android.text.Editable;
import android.text.Html;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import com.conceptglobal.imaterialdesign.widget.FloatingActionButton;
import com.conceptglobal.pmc.adapter.GridImageAdapter;
import com.conceptglobal.pmc.common.CustomCheckBoxDialog;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.database.InsertDataIntoDB;
import com.conceptglobal.pmc.fo.PictureReportingExpences;
import com.conceptglobal.pmc.interfaces.OnLocationFoundListener;
import com.conceptglobal.pmc.locationprovider.FetchLocation;
import com.conceptglobal.pmc.model.AttendanceModel;
import com.conceptglobal.pmc.model.BrandsModel;
import com.conceptglobal.pmc.model.ImageDetails;
import com.conceptglobal.pmc.model.LocationInfo;
import com.conceptglobal.pmc.service.SyncDataService;
import com.conceptglobal.pmc.utils.CustomActionBar;
import com.conceptglobal.pmc.utils.Ibutton;
import com.conceptglobal.pmc.utils.LabelUtils;
import com.conceptglobal.pmc.utils.LocationUtils;
import com.conceptglobal.pmc.utils.PLog;
import com.conceptglobal.pmc.utils.SendDataServiceUtil;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import java.io.File;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

/* loaded from: classes.dex */
public class AttendanceActivity extends BaseActivity implements View.OnClickListener {
    private static final int DATEDIALOGID = 0;
    private static final String TAG = "AttendanceActivity";
    String attendanceEXpenseNotRequiredRoles;
    private Button btnClear;
    private Button btnDraft;
    private ImageView btnEndDayLatLng;
    private ImageView btnLatLng;
    private Button btnSave;
    private GridView endDayGridView;
    private GridImageAdapter endDayIimageAdapter;
    private List<ImageDetails> endDayImages;
    private ArrayList<String> enddayImagelist;
    private EditText etEndKM;
    private EditText etEndLatlongTime;
    private EditText etFromDate;
    private EditText etLeaveType;
    private EditText etNoOfdays;
    private EditText etRemarks;
    private EditText etSelected;
    private EditText etStartKM;
    private EditText etStartLatlongTime;
    private EditText etToDate;
    private EditText etTotalExpences;
    private EditText etTravelDistance;
    private EditText etTravelType;
    private GridView expencesGridView;
    private ArrayList<String> expencesImagelist;
    private List<ImageDetails> expencesImages;
    private GetDataFromDB getDataFromDB;
    private ArrayList<String> imagelist;
    private boolean isPastDayAttendance;
    private LinearLayout llActivity_bg;
    private LinearLayout llExpenseView;
    private LinearLayout llSaveBG;
    private ImageView mCamera1ImageView;
    private ImageView mCamera2ImageView;
    private ImageView mCamera3ImageView;
    private int mDay;
    private LocationUtils mLocationUtils;
    private int mMonth;
    private ImageView mNOC1ImageView;
    private ImageView mNOC2ImageView;
    private int mYear;
    private RelativeLayout rlExpenseViewImages;
    private GridView startDayGridView;
    private GridImageAdapter startDayIimageAdapter;
    private List<ImageDetails> startDayImages;
    private ArrayList<String> startdayImagelist;
    private long transId;
    private TextView tvDraftText;
    private TextView tvEndAddress;
    private Ibutton tvEndDay;
    private TextView tvEndKM;
    private TextView tvEndLatitude;
    private TextView tvEndLocation;
    private TextView tvEndLongitude;
    private TextView tvExpences;
    private TextView tvLatitude;
    private TextView tvLeave;
    private TextView tvLeaveType;
    private TextView tvLongitude;
    private TextView tvNoOfDays;
    private TextView tvReason;
    private TextView tvRemarks;
    private TextView tvStartAddress;
    private Ibutton tvStartDay;
    private TextView tvStartKM;
    private TextView tvStartLocation;
    private TextView tvToDate;
    private TextView tvTotalDistance;
    private TextView tvTotalExpences;
    private TextView tvTravelType;
    private TextView tvTravelTypeId;
    private TextView tvfromDate;
    private String mFiledStr = "";
    long startday = 0;
    long endday = 0;
    long expencesday = 0;
    private String startDayText = "";
    private String endDayText = "";
    private String expencesDayText = "";
    List<AttendanceModel> attendanceDetails = new ArrayList();
    private String LocationReq = "";
    String latlongTag = "";
    boolean expensesNotRequired = true;
    String title = "";
    private String strDate = "";
    private View.OnClickListener mOnClickListener = new View.OnClickListener() { // from class: com.conceptglobal.pmc.AttendanceActivity.5
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                if (view.getId() == com.conceptglobal.pmcdeepakfertilizers.R.id.ivCamera1) {
                    if (AttendanceActivity.this.startDayImages.size() == 0) {
                        AttendanceActivity attendanceActivity = AttendanceActivity.this;
                        attendanceActivity.captureImage(0L, attendanceActivity.startday, AttendanceActivity.this.startDayText);
                    }
                } else if (view.getId() == com.conceptglobal.pmcdeepakfertilizers.R.id.ivCamera2 && AttendanceActivity.this.endDayImages.size() == 0) {
                    AttendanceActivity attendanceActivity2 = AttendanceActivity.this;
                    attendanceActivity2.captureImage(0L, attendanceActivity2.endday, AttendanceActivity.this.endDayText);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    };
    private DatePickerDialog.OnDateSetListener mDateSetListener = new DatePickerDialog.OnDateSetListener() { // from class: com.conceptglobal.pmc.AttendanceActivity.6
        @Override // android.app.DatePickerDialog.OnDateSetListener
        public void onDateSet(DatePicker datePicker, int i, int i2, int i3) {
            AttendanceActivity.this.mYear = i;
            AttendanceActivity.this.mMonth = i2;
            AttendanceActivity.this.mDay = i3;
            try {
                new SimpleDateFormat("yyyy-MM-dd").parse(i + "-" + (i2 + 1) + "-" + i3);
                new Date();
                AttendanceActivity.this.updateDisplay();
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
        setContentView(com.conceptglobal.pmcdeepakfertilizers.R.layout.activity_attendance);
        if (getIntent().hasExtra("Title")) {
            this.title = getIntent().getExtras().getString("Title");
        }
        CustomActionBar.initActionBar(this, this.title + "(" + UtilDeclarations.getApplicationVersion(this) + ")");
        initialization();
        getWindow().setSoftInputMode(3);
        setBottomViewPadding(this.llSaveBG);
    }

    @Override // com.conceptglobal.pmc.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        setAdapter();
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == 16908332) {
            showGoBackDialog();
        } else if (itemId == com.conceptglobal.pmcdeepakfertilizers.R.id.item_add_draft) {
            this.btnDraft.performClick();
        }
        return super.onOptionsItemSelected(menuItem);
    }

    private void initialization() {
        this.strDate = new SimpleDateFormat("HH:mm:ss a").format(Calendar.getInstance().getTime());
        this.attendanceDetails = GetDataFromDB.getInstance().getAttendanceDetails(Queries.getInstance().getPastAttendanceDetails());
        this.mLocationUtils = new LocationUtils();
        List<AttendanceModel> list = this.attendanceDetails;
        if (list != null && list.size() > 0) {
            this.isPastDayAttendance = true;
        } else {
            this.attendanceDetails = GetDataFromDB.getInstance().getAttendanceDetails(Queries.getInstance().getAttendanceDetails());
        }
        List<AttendanceModel> list2 = this.attendanceDetails;
        if (list2 != null && list2.size() > 0 && !TextUtils.isEmpty(this.attendanceDetails.get(0).getTransId())) {
            this.transId = Long.parseLong(this.attendanceDetails.get(0).getTransId());
        } else {
            this.transId = Calendar.getInstance().getTimeInMillis();
        }
        this.startDayImages = new ArrayList();
        this.endDayImages = new ArrayList();
        this.expencesImages = new ArrayList();
        this.getDataFromDB = GetDataFromDB.getInstance();
        this.startdayImagelist = new ArrayList<>();
        this.enddayImagelist = new ArrayList<>();
        this.expencesImagelist = new ArrayList<>();
        this.imagelist = new ArrayList<>();
        GridView gridView = (GridView) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.grid_expences);
        this.expencesGridView = gridView;
        gridView.setAdapter((ListAdapter) null);
        this.tvLeaveType = (TextView) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tvLeaveType);
        this.tvfromDate = (TextView) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tvfromDate);
        this.tvTotalDistance = (TextView) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tvTotalDistance);
        this.tvTravelType = (TextView) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tvTravelType);
        this.tvTotalExpences = (TextView) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tvTotalExpences);
        Ibutton ibutton = (Ibutton) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.btnStartDay);
        this.tvStartDay = ibutton;
        ibutton.setOnClickListener(this);
        Ibutton ibutton2 = (Ibutton) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.btnEndDay);
        this.tvEndDay = ibutton2;
        ibutton2.setOnClickListener(this);
        this.tvDraftText = (TextView) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tvDraftText);
        this.tvStartKM = (TextView) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tvStartKM);
        this.tvEndKM = (TextView) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tvEndKM);
        this.etLeaveType = (EditText) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.etLeaveType);
        this.mNOC1ImageView = (ImageView) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.ivNOC1);
        this.mNOC2ImageView = (ImageView) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.ivNOC2);
        this.mCamera1ImageView = (ImageView) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.ivCamera1);
        this.mCamera2ImageView = (ImageView) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.ivCamera2);
        this.mCamera1ImageView.setOnClickListener(this.mOnClickListener);
        this.mCamera2ImageView.setOnClickListener(this.mOnClickListener);
        this.etTravelDistance = (EditText) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.etTotaldistance);
        LinearLayout linearLayout = (LinearLayout) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.llActivityBG);
        this.llActivity_bg = linearLayout;
        linearLayout.setVisibility(8);
        EditText editText = (EditText) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.etTravelType);
        this.etTravelType = editText;
        editText.setOnClickListener(this);
        this.etTotalExpences = (EditText) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.etTotalExpences);
        this.tvTravelTypeId = (TextView) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tvTravelTypeID);
        this.etStartKM = (EditText) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.etStartKM);
        this.etEndKM = (EditText) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.etEndKM);
        this.llSaveBG = (LinearLayout) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.llSaveBG);
        TextView textView = (TextView) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tvStartLocation);
        this.tvStartLocation = textView;
        textView.setOnClickListener(this);
        TextView textView2 = (TextView) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tvEndLocation);
        this.tvEndLocation = textView2;
        textView2.setOnClickListener(this);
        try {
            this.startday = GetDataFromDB.getInstance().getLookupValue(Queries.getInstance().getItemValue("Start Day", "ImageEventType"));
            this.endday = GetDataFromDB.getInstance().getLookupValue(Queries.getInstance().getItemValue("End Day", "ImageEventType"));
            this.expencesday = GetDataFromDB.getInstance().getLookupValue(Queries.getInstance().getItemValue("Expenses", "ImageEventType"));
            this.startDayText = "Start travel";
            this.endDayText = "Travel submission";
            this.expencesDayText = "Expenses";
        } catch (Exception e) {
            e.printStackTrace();
        }
        this.etLeaveType.addTextChangedListener(new TextWatcher() { // from class: com.conceptglobal.pmc.AttendanceActivity.1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                AttendanceActivity.this.etLeaveType.setError(null);
            }
        });
        this.etStartKM.addTextChangedListener(new TextWatcher() { // from class: com.conceptglobal.pmc.AttendanceActivity.2
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                AttendanceActivity.this.caliculateDistance();
            }
        });
        this.etEndKM.addTextChangedListener(new TextWatcher() { // from class: com.conceptglobal.pmc.AttendanceActivity.3
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                AttendanceActivity.this.caliculateDistance();
            }
        });
        this.etLeaveType.setOnClickListener(this);
        this.etFromDate = (EditText) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.etFromDate);
        this.etStartLatlongTime = (EditText) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.etStartDateTime);
        this.etEndLatlongTime = (EditText) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.etEndDateTime);
        Button button = (Button) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.btn_save);
        this.btnSave = button;
        button.setOnClickListener(this);
        Button button2 = (Button) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.btn_clear_all);
        this.btnClear = button2;
        button2.setOnClickListener(this);
        Button button3 = (Button) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.btn_save_draft);
        this.btnDraft = button3;
        button3.setOnClickListener(this);
        this.tvLeave = (TextView) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tvLeaveTypeID);
        this.tvReason = (TextView) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tvReasonTypeID);
        Calendar calendar = Calendar.getInstance();
        this.mDay = calendar.get(5);
        this.mMonth = calendar.get(2);
        this.mYear = calendar.get(1);
        this.tvLeaveType.setText(Html.fromHtml(this.tvLeaveType.getText().toString() + "<font color='#ff0000'>*</font>"));
        this.tvfromDate.setText(Html.fromHtml(this.tvfromDate.getText().toString() + "<font color='#ff0000'>*</font>"));
        this.tvTotalDistance.setText(Html.fromHtml(this.tvTotalDistance.getText().toString() + "<font color='#ff0000'>*</font>"));
        this.tvTravelType.setText(Html.fromHtml(this.tvTravelType.getText().toString() + "<font color='#ff0000'>*</font>"));
        this.tvTotalExpences.setText(Html.fromHtml(this.tvTotalExpences.getText().toString() + "<font color='#ff0000'>*</font>"));
        this.tvStartDay.setText(Html.fromHtml(this.tvStartDay.getText().toString() + "<font color='#ff0000'>*</font>"));
        this.tvEndDay.setText(Html.fromHtml(this.tvEndDay.getText().toString() + "<font color='#ff0000'>*</font>"));
        this.tvStartKM.setText(Html.fromHtml(this.tvStartKM.getText().toString() + "<font color='#ff0000'>*</font>"));
        this.tvEndKM.setText(Html.fromHtml(this.tvEndKM.getText().toString() + "<font color='#ff0000'>*</font>"));
        TextView textView3 = (TextView) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tv_latitude_personal_details);
        this.tvLatitude = textView3;
        textView3.setHint(this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_latitudeText()));
        TextView textView4 = (TextView) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tv_longitude_personal_details);
        this.tvLongitude = textView4;
        textView4.setHint(this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_longitudeText()));
        TextView textView5 = (TextView) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tv_EndTime_latitude_personal_details);
        this.tvEndLatitude = textView5;
        textView5.setHint(this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_latitudeText()));
        TextView textView6 = (TextView) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tv_EndTime_longitude_personal_details);
        this.tvEndLongitude = textView6;
        textView6.setHint(this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_longitudeText()));
        this.btnLatLng = (ImageView) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.btn_get_latlong_farmer_personal_details);
        this.tvStartAddress = (TextView) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tvStartAddress);
        this.tvEndAddress = (TextView) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tvEndAddress);
        this.llExpenseView = (LinearLayout) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.llExpenceView);
        this.rlExpenseViewImages = (RelativeLayout) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.rlExpenseImagesView);
        this.llExpenseView.setVisibility(8);
        this.rlExpenseViewImages.setVisibility(8);
        this.btnLatLng.setOnClickListener(this);
        ImageView imageView = (ImageView) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.btn_get_EndTime_latlong_farmer_personal_details);
        this.btnEndDayLatLng = imageView;
        imageView.setOnClickListener(this);
        if (this.isPastDayAttendance) {
            this.etFromDate.setText(this.attendanceDetails.get(0).getFromDate());
            this.btnSave.performClick();
            insertDataAftre12(this.attendanceDetails.get(0).getFromDate());
        } else {
            this.etFromDate.setText(UtilDeclarations.getDateInDDMMYYYY());
            this.tvDraftText.setVisibility(8);
        }
        setEditableFalse(this.etFromDate);
        setEditableFalse(this.etStartLatlongTime);
        setEditableFalse(this.etEndLatlongTime);
        setEditableFalse(this.etTravelDistance);
        setEditableFalse(this.etTotalExpences);
        ((FloatingActionButton) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.fab)).setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.AttendanceActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (AttendanceActivity.this.startDayImages.size() + AttendanceActivity.this.endDayImages.size() + AttendanceActivity.this.expencesImages.size() <= 10) {
                    return;
                }
                Toast.makeText(AttendanceActivity.this.getApplication(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_maxImagesToast()), 1).show();
            }
        });
        List<AttendanceModel> list3 = this.attendanceDetails;
        if (list3 == null || list3.size() <= 0) {
            return;
        }
        AttendanceModel attendanceModel = this.attendanceDetails.get(0);
        if (!TextUtils.isEmpty(attendanceModel.getLeaveType())) {
            this.etLeaveType.setText(attendanceModel.getLeaveType());
        }
        if (!TextUtils.isEmpty(attendanceModel.getNoOfDays())) {
            this.etTravelDistance.setText(attendanceModel.getNoOfDays() + "");
        }
        if (attendanceModel.getStartKM() != 0) {
            this.etStartKM.setText(attendanceModel.getStartKM() + "");
        }
        if (attendanceModel.getEndKM() != 0) {
            this.etEndKM.setText(attendanceModel.getEndKM() + "");
        }
        if (!TextUtils.isEmpty(attendanceModel.getRemarks())) {
            this.etTotalExpences.setText(attendanceModel.getRemarks() + "");
        }
        if (!TextUtils.isEmpty(attendanceModel.getStartLatitude())) {
            this.tvLatitude.setText(attendanceModel.getStartLatitude());
            this.tvStartDay.setVisibility(8);
            this.tvEndDay.setVisibility(0);
        } else {
            this.tvStartDay.setVisibility(0);
            this.tvEndDay.setVisibility(8);
        }
        if (!TextUtils.isEmpty(attendanceModel.getStartLongitude())) {
            this.tvLongitude.setText(attendanceModel.getStartLongitude());
        }
        if (!TextUtils.isEmpty(attendanceModel.getStartLocationTime())) {
            this.etStartLatlongTime.setText(attendanceModel.getStartLocationTime());
        }
        if (!TextUtils.isEmpty(attendanceModel.getEndLatitude())) {
            this.tvEndLatitude.setText(attendanceModel.getEndLatitude());
        }
        if (!TextUtils.isEmpty(attendanceModel.getEndLongitude())) {
            this.tvEndLongitude.setText(attendanceModel.getEndLongitude());
        }
        if (!TextUtils.isEmpty(attendanceModel.getEndLocationTime())) {
            this.etEndLatlongTime.setText(attendanceModel.getEndLocationTime());
        }
        if (!TextUtils.isEmpty(attendanceModel.getStartLocationAddress())) {
            this.tvStartAddress.setText(attendanceModel.getStartLocationAddress());
        }
        if (TextUtils.isEmpty(attendanceModel.getEndLocationAddress())) {
            return;
        }
        this.tvEndAddress.setText(attendanceModel.getEndLocationAddress());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void caliculateDistance() {
        String obj = this.etStartKM.getText().toString();
        String obj2 = this.etEndKM.getText().toString();
        if (!TextUtils.isEmpty(obj) && !TextUtils.isEmpty(obj2)) {
            double parseDouble = Double.parseDouble(obj);
            this.etTravelDistance.setText(String.valueOf(Double.parseDouble(obj2) - parseDouble));
            return;
        }
        this.etTravelDistance.setText("");
    }

    private boolean isValidDistance() {
        if (TextUtils.isEmpty(this.etStartKM.getText().toString()) || TextUtils.isEmpty(this.etEndKM.getText().toString()) || Double.parseDouble(this.etStartKM.getText().toString()) <= Double.parseDouble(this.etEndKM.getText().toString())) {
            return true;
        }
        Toast.makeText(this, "Please enter proper End KM value", 0).show();
        return false;
    }

    private void setEditableFalse(EditText editText) {
        editText.setFocusable(false);
        editText.setClickable(false);
        editText.setBackgroundDrawable(getResources().getDrawable(com.conceptglobal.pmcdeepakfertilizers.R.drawable.card_layout_back_desable));
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case com.conceptglobal.pmcdeepakfertilizers.R.id.btnEndDay /* 2131296379 */:
            case com.conceptglobal.pmcdeepakfertilizers.R.id.btn_get_EndTime_latlong_farmer_personal_details /* 2131296414 */:
            case com.conceptglobal.pmcdeepakfertilizers.R.id.tvEndLocation /* 2131297436 */:
                if (this.endDayImages.size() == 0) {
                    Toast.makeText(this, "Please take End KM reading image", 0).show();
                    break;
                } else if (this.etEndLatlongTime.getText().length() == 0) {
                    this.LocationReq = "End";
                    fetchEndDayLocation(this.tvEndLatitude, this.tvEndLongitude);
                    break;
                } else {
                    this.btnSave.performClick();
                    break;
                }
            case com.conceptglobal.pmcdeepakfertilizers.R.id.btnStartDay /* 2131296393 */:
            case com.conceptglobal.pmcdeepakfertilizers.R.id.btn_get_latlong_farmer_personal_details /* 2131296416 */:
            case com.conceptglobal.pmcdeepakfertilizers.R.id.tvStartLocation /* 2131297492 */:
                if (this.startDayImages.size() == 0) {
                    Toast.makeText(this, "Please take Start KM reading image", 0).show();
                    break;
                } else {
                    this.LocationReq = "Start";
                    fetchLocation(this.tvLatitude, this.tvLongitude);
                    break;
                }
            case com.conceptglobal.pmcdeepakfertilizers.R.id.btn_clear_all /* 2131296406 */:
                showClearDataAlertDialog();
                break;
            case com.conceptglobal.pmcdeepakfertilizers.R.id.btn_save /* 2131296431 */:
                insertData();
                break;
            case com.conceptglobal.pmcdeepakfertilizers.R.id.btn_save_draft /* 2131296435 */:
                insertDraftData();
                break;
            case com.conceptglobal.pmcdeepakfertilizers.R.id.etFromDate /* 2131296621 */:
                this.etSelected = this.etFromDate;
                new DatePickerDialog(this, this.mDateSetListener, this.mYear, this.mMonth, this.mDay).show();
                break;
            case com.conceptglobal.pmcdeepakfertilizers.R.id.etLeaveType /* 2131296626 */:
                UtilDeclarations.hideInputKeyboard(this);
                try {
                    List<BrandsModel> arrayList = new ArrayList<>();
                    try {
                        arrayList = GetDataFromDB.getInstance().getFarmerAssociatedBrands(Queries.getInstance().getDropdownValuesLookup("AttendanceType"));
                    } catch (Exception unused) {
                    }
                    CustomCheckBoxDialog customCheckBoxDialog = new CustomCheckBoxDialog(this, arrayList, 0, "Select Activity", view, new EditText(this), 10, 0, 0);
                    customCheckBoxDialog.getWindow().getAttributes().windowAnimations = com.conceptglobal.pmcdeepakfertilizers.R.style.PauseDialogAnimation;
                    customCheckBoxDialog.show();
                    customCheckBoxDialog.getWindow().setSoftInputMode(3);
                    break;
                } catch (Exception unused2) {
                    return;
                }
            case com.conceptglobal.pmcdeepakfertilizers.R.id.etToDate /* 2131296640 */:
                if (this.etFromDate.getText().toString().equals(null) || this.etFromDate.getText().toString().length() == 0) {
                    Toast.makeText(this, "Please select from date", 1).getClass();
                    break;
                } else {
                    this.etSelected = this.etToDate;
                    new DatePickerDialog(this, this.mDateSetListener, this.mYear, this.mMonth, this.mDay).show();
                    break;
                }
                break;
        }
    }

    private void insertDraftData() {
        AttendanceModel attendanceModel = new AttendanceModel();
        attendanceModel.setFromDate(this.etFromDate.getText().toString());
        attendanceModel.setLeaveType(this.etLeaveType.getText().toString());
        attendanceModel.setNoOfDays(this.etTravelDistance.getText().toString());
        attendanceModel.setRemarks(this.etTotalExpences.getText().toString());
        attendanceModel.setStartLatitude(this.tvLatitude.getText().toString());
        attendanceModel.setStartLongitude(this.tvLongitude.getText().toString());
        attendanceModel.setEndLatitude(this.tvEndLatitude.getText().toString());
        attendanceModel.setEndLongitude(this.tvEndLongitude.getText().toString());
        attendanceModel.setStartLocationTime(this.etStartLatlongTime.getText().toString());
        attendanceModel.setEndLocationTime(this.etEndLatlongTime.getText().toString());
        attendanceModel.setStartLocationAddress(this.tvStartAddress.getText().toString());
        attendanceModel.setEndLocationAddress(this.tvEndAddress.getText().toString());
        attendanceModel.setStartKM(!TextUtils.isEmpty(this.etStartKM.getText().toString()) ? Integer.parseInt(this.etStartKM.getText().toString()) : 0);
        attendanceModel.setEndKM(!TextUtils.isEmpty(this.etEndKM.getText().toString()) ? Integer.parseInt(this.etEndKM.getText().toString()) : 0);
        attendanceModel.setTransId(this.transId + "");
        List<AttendanceModel> list = this.attendanceDetails;
        if (list != null && list.size() > 0) {
            attendanceModel.setAttendanceID(this.attendanceDetails.get(0).getAttendanceID());
        } else {
            try {
                attendanceModel.setAttendanceID(Math.round(InsertDataIntoDB.getRecordCount("SELECT max(AttendanceID) from AttendanceDetails")) + 1);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        try {
            this.getDataFromDB.executeRawQueryInDB(Queries.getInstance().deleteAttendanceDraftDetails(this.transId));
            InsertDataIntoDB.insertAttendanceDataDraft(attendanceModel);
        } catch (Exception unused) {
        }
        Toast.makeText(this, "Data saved successfully", 1).show();
        if (UtilDeclarations.isOnline(this) && !UtilDeclarations.isServiceRunning(getApplicationContext(), SyncDataService.class)) {
            new SendDataServiceUtil(this).startService();
        }
        finish();
    }

    private void insertData() {
        if (this.etTravelDistance.getText().toString().isEmpty()) {
            this.etTravelDistance.setError("Travel Distance");
            if (this.etTravelDistance.getText().toString().isEmpty()) {
                Toast.makeText(this, "Enter Travel Distance ", 1).show();
                return;
            }
            return;
        }
        if (!TextUtils.isEmpty(this.etStartKM.getText().toString()) && !TextUtils.isEmpty(this.etEndKM.getText().toString())) {
            if (Math.abs(Double.parseDouble(this.etEndKM.getText().toString()) - Double.parseDouble(this.etStartKM.getText().toString())) > 999.0d) {
                Toast.makeText(this, "Distance must be less than or equal to 999", 1).show();
                return;
            }
        }
        if (this.etStartKM.getText().toString().isEmpty()) {
            this.etStartKM.setError("Start KM");
            Toast.makeText(this, "Enter Start KM", 1).show();
            return;
        }
        if (this.etEndKM.getText().toString().isEmpty()) {
            this.etEndKM.setError("End KM");
            Toast.makeText(this, "Enter End KM", 1).show();
            return;
        }
        if (isValidDistance()) {
            if (!this.expensesNotRequired && this.etTotalExpences.getText().toString().isEmpty()) {
                this.etTotalExpences.setError("Total Expences");
                Toast.makeText(this, "Enter Total Expences", 1).show();
                return;
            }
            if (TextUtils.isEmpty(this.etEndLatlongTime.getText())) {
                this.tvEndLocation.setVisibility(0);
                Toast.makeText(this, "Please click end location to take end location", 1).show();
                return;
            }
            if (TextUtils.isEmpty(this.etStartLatlongTime.getText())) {
                this.tvStartLocation.setVisibility(0);
                Toast.makeText(this, "Please click start location to take start location", 1).show();
                return;
            }
            List<ImageDetails> imageDetailsList = this.getDataFromDB.getImageDetailsList(Queries.getInstance().getImageDetailsQry_Assignment(String.valueOf(this.transId), this.startday));
            List<ImageDetails> imageDetailsList2 = this.getDataFromDB.getImageDetailsList(Queries.getInstance().getImageDetailsQry_Assignment(String.valueOf(this.transId), this.endday));
            List<ImageDetails> imageDetailsList3 = this.getDataFromDB.getImageDetailsList(Queries.getInstance().getImageDetailsQry_Assignment(String.valueOf(this.transId), this.expencesday));
            if (imageDetailsList == null || imageDetailsList.size() == 0) {
                Toast.makeText(this, "Please capture Start travel reading", 1).show();
                return;
            }
            if (imageDetailsList2 == null || imageDetailsList2.size() == 0) {
                Toast.makeText(this, "Please capture Travel submission reading", 1).show();
                return;
            }
            if (!this.expensesNotRequired && !TextUtils.isEmpty(this.etTotalExpences.getText().toString()) && (imageDetailsList3 == null || imageDetailsList3.size() == 0)) {
                Toast.makeText(this, "Please capture Expenses images", 1).show();
                return;
            }
            AttendanceModel attendanceModel = new AttendanceModel();
            attendanceModel.setFromDate(this.etFromDate.getText().toString());
            attendanceModel.setNoOfDays(this.etTravelDistance.getText().toString());
            attendanceModel.setRemarks(this.etTotalExpences.getText().toString());
            attendanceModel.setTransId(this.transId + "");
            attendanceModel.setStartLatitude(this.tvLatitude.getText().toString());
            attendanceModel.setStartLongitude(this.tvLongitude.getText().toString());
            attendanceModel.setEndLatitude(this.tvEndLatitude.getText().toString());
            attendanceModel.setEndLongitude(this.tvEndLongitude.getText().toString());
            attendanceModel.setStartLocationTime(this.etStartLatlongTime.getText().toString());
            attendanceModel.setEndLocationTime(this.etEndLatlongTime.getText().toString());
            attendanceModel.setStartLocationAddress(this.tvStartAddress.getText().toString());
            attendanceModel.setEndLocationAddress(this.tvEndAddress.getText().toString());
            attendanceModel.setStartKM(!TextUtils.isEmpty(this.etStartKM.getText().toString()) ? Integer.parseInt(this.etStartKM.getText().toString()) : 0);
            attendanceModel.setEndKM(!TextUtils.isEmpty(this.etEndKM.getText().toString()) ? Integer.parseInt(this.etEndKM.getText().toString()) : 0);
            List<AttendanceModel> list = this.attendanceDetails;
            if (list != null && list.size() > 0) {
                attendanceModel.setAttendanceID(this.attendanceDetails.get(0).getAttendanceID());
            } else {
                try {
                    attendanceModel.setAttendanceID(Math.round(InsertDataIntoDB.getRecordCount("SELECT max(AttendanceID) from AttendanceDetails")) + 1);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            try {
                this.getDataFromDB.executeRawQueryInDB(Queries.getInstance().deleteAttendanceDraftDetails(this.transId));
                InsertDataIntoDB.insertAttendanceData(attendanceModel);
                this.getDataFromDB.executeRawQuery("Update ActivityImageDetails set ServerStatus ='false'  where ReferenceID ='" + this.transId + "'");
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            Toast.makeText(this, "Data saved successfully", 1).show();
            if (UtilDeclarations.isOnline(this) && !UtilDeclarations.isServiceRunning(getApplicationContext(), SyncDataService.class)) {
                new SendDataServiceUtil(this).startService();
            }
            finish();
        }
    }

    private void insertDataAftre12(String str) {
        this.getDataFromDB.getImageDetailsList(Queries.getInstance().getImageDetailsQry_Assignment(String.valueOf(this.transId), this.startday));
        AttendanceModel attendanceModel = new AttendanceModel();
        attendanceModel.setFromDate(str);
        attendanceModel.setNoOfDays(this.etTravelDistance.getText().toString());
        attendanceModel.setRemarks(this.etTotalExpences.getText().toString());
        attendanceModel.setTransId(this.transId + "");
        attendanceModel.setStartLatitude(this.tvLatitude.getText().toString());
        attendanceModel.setStartLongitude(this.tvLongitude.getText().toString());
        attendanceModel.setEndLatitude(this.tvEndLatitude.getText().toString());
        attendanceModel.setEndLongitude(this.tvEndLongitude.getText().toString());
        attendanceModel.setStartLocationTime(this.etStartLatlongTime.getText().toString());
        attendanceModel.setEndLocationTime(this.etEndLatlongTime.getText().toString());
        attendanceModel.setStartLocationAddress(this.tvStartAddress.getText().toString());
        attendanceModel.setEndLocationAddress(this.tvEndAddress.getText().toString());
        attendanceModel.setStartKM(!TextUtils.isEmpty(this.etStartKM.getText().toString()) ? Integer.parseInt(this.etStartKM.getText().toString()) : 0);
        attendanceModel.setEndKM(!TextUtils.isEmpty(this.etEndKM.getText().toString()) ? Integer.parseInt(this.etEndKM.getText().toString()) : 0);
        List<AttendanceModel> list = this.attendanceDetails;
        if (list != null && list.size() > 0) {
            attendanceModel.setAttendanceID(this.attendanceDetails.get(0).getAttendanceID());
        } else {
            try {
                attendanceModel.setAttendanceID(Math.round(InsertDataIntoDB.getRecordCount("SELECT max(AttendanceID) from AttendanceDetails")) + 1);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        try {
            this.getDataFromDB.executeRawQueryInDB(Queries.getInstance().deleteAttendanceDraftDetails(this.transId));
            InsertDataIntoDB.insertAttendanceData(attendanceModel);
            this.getDataFromDB.executeRawQuery("Update ActivityImageDetails set ServerStatus ='false'  where ReferenceID ='" + this.transId + "'");
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        Toast.makeText(this, "Data saved successfully", 1).show();
        if (UtilDeclarations.isOnline(this) && !UtilDeclarations.isServiceRunning(getApplicationContext(), SyncDataService.class)) {
            new SendDataServiceUtil(this).startService();
        }
        finish();
    }

    @Override // android.app.Activity
    public Dialog onCreateDialog(int i) {
        if (i != 0) {
            return null;
        }
        return new DatePickerDialog(this, this.mDateSetListener, this.mYear, this.mMonth, this.mDay);
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(com.conceptglobal.pmcdeepakfertilizers.R.menu.farmer, menu);
        return super.onCreateOptionsMenu(menu);
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
        try {
            long time = ((date2.getTime() - date.getTime()) / 86400000) + 1;
            if (time <= 0) {
                this.etToDate.setText("");
                this.etNoOfdays.setText("0");
                Toast.makeText(this, "Please select proper to date", 1).show();
            } else {
                this.etNoOfdays.setText(time + "");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void captureImage(long j, long j2, String str) {
        Intent intent = new Intent(this, (Class<?>) PictureReportingExpences.class);
        intent.putExtra("activityId", 0);
        intent.putExtra("assignmentId", 0);
        try {
            intent.putExtra("setReferenceType", GetDataFromDB.getInstance().getLookupValue(Queries.getInstance().getItemValuewithType("Attendance", "ImageReferenceType")));
        } catch (Exception e) {
            e.printStackTrace();
            PLog.e(TAG, e);
        }
        intent.putExtra("setReferenceID", String.valueOf(this.transId));
        intent.putExtra("attributeId", 0);
        intent.putExtra("farmerId", 0);
        intent.putExtra("imageId", j);
        intent.putExtra("EventTypeId", j2);
        intent.putExtra("EventText", str);
        startActivity(intent);
    }

    private void setAdapter() {
        List<ImageDetails> imageDetailsList = this.getDataFromDB.getImageDetailsList(Queries.getInstance().getImageDetailsQry_Assignment(String.valueOf(this.transId), this.startday));
        this.startDayImages = imageDetailsList;
        if (imageDetailsList != null && imageDetailsList.size() > 0) {
            UtilDeclarations.loadDiskThumbnail(this, this.mNOC1ImageView, new File(this.startDayImages.get(0).getPicturePath()));
        }
        List<ImageDetails> imageDetailsList2 = this.getDataFromDB.getImageDetailsList(Queries.getInstance().getImageDetailsQry_Assignment(String.valueOf(this.transId), this.endday));
        this.endDayImages = imageDetailsList2;
        if (imageDetailsList2 == null || imageDetailsList2.size() <= 0) {
            return;
        }
        UtilDeclarations.loadDiskThumbnail(this, this.mNOC2ImageView, new File(this.endDayImages.get(0).getPicturePath()));
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i != 1) {
            if (i != 101) {
                return;
            }
            PLog.location("Navigation", "Image Capture End", TAG, UtilDeclarations.getDateTime());
            if (intent != null) {
                this.imagelist.add(intent.getStringExtra("ImagePath"));
                return;
            }
            return;
        }
        if (i2 != -1) {
            if (i2 != 0) {
                return;
            }
            this.mLocationUtils.showDialog(this, LocationUtils.GPS_NOT_TURNED_ON);
        } else if (!TextUtils.isEmpty(this.LocationReq) && this.LocationReq.equals("Start")) {
            fetchLocation(this.tvLatitude, this.tvLongitude);
        } else {
            fetchEndDayLocation(this.tvEndLatitude, this.tvEndLongitude);
        }
    }

    private void fetchLocation(final TextView textView, final TextView textView2) {
        if (textView.equals(this.tvLatitude)) {
            this.latlongTag = TAG;
        }
        if (!this.mLocationUtils.checkPermissions(this)) {
            this.mLocationUtils.requestPermissions(this);
            return;
        }
        try {
            new FetchLocation(this, true, new OnLocationFoundListener() { // from class: com.conceptglobal.pmc.AttendanceActivity.7
                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onTimerTimeOut() {
                }

                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onLocationFound(LocationInfo locationInfo) {
                    textView.setText(locationInfo.getLatitude() + "");
                    textView2.setText(locationInfo.getLongitude() + "");
                    AttendanceActivity.this.tvStartDay.setVisibility(8);
                    AttendanceActivity.this.tvEndDay.setVisibility(0);
                    Toast.makeText(AttendanceActivity.this, "Location details saved.", 1).show();
                }

                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onLocationFound(Location location) {
                    AttendanceActivity attendanceActivity = AttendanceActivity.this;
                    attendanceActivity.bindAddress(location, attendanceActivity.tvStartAddress);
                    if (textView.equals(AttendanceActivity.this.tvLatitude)) {
                        AttendanceActivity.this.etStartLatlongTime.setText(UtilDeclarations.getLongToDate(location.getTime()));
                        AttendanceActivity.this.tvStartLocation.setVisibility(8);
                    }
                }
            }, this.latlongTag);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void fetchEndDayLocation(final TextView textView, final TextView textView2) {
        if (textView.equals(this.tvEndLatitude)) {
            this.latlongTag = TAG;
        }
        if (!this.mLocationUtils.checkPermissions(this)) {
            this.mLocationUtils.requestPermissions(this);
            return;
        }
        try {
            new FetchLocation(this, true, new OnLocationFoundListener() { // from class: com.conceptglobal.pmc.AttendanceActivity.8
                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onTimerTimeOut() {
                }

                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onLocationFound(LocationInfo locationInfo) {
                    textView.setText(locationInfo.getLatitude() + "");
                    textView2.setText(locationInfo.getLongitude() + "");
                }

                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onLocationFound(Location location) {
                    AttendanceActivity attendanceActivity = AttendanceActivity.this;
                    attendanceActivity.bindAddress(location, attendanceActivity.tvEndAddress);
                    if (textView.equals(AttendanceActivity.this.tvEndLatitude)) {
                        AttendanceActivity.this.etEndLatlongTime.setText(UtilDeclarations.getLongToDate(location.getTime()));
                        AttendanceActivity.this.tvEndLocation.setVisibility(8);
                    }
                    AttendanceActivity.this.btnSave.performClick();
                }
            }, this.latlongTag);
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
                return;
            }
            if (iArr[0] == 0) {
                if (!TextUtils.isEmpty(this.LocationReq) && this.LocationReq.equals("Start")) {
                    fetchLocation(this.tvLatitude, this.tvLongitude);
                    return;
                } else {
                    fetchEndDayLocation(this.tvEndLatitude, this.tvEndLongitude);
                    return;
                }
            }
            this.mLocationUtils.showDialog(this, LocationUtils.PERMISSION_DENIED);
        }
    }

    private void showGoBackDialog() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setMessage(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_addCustomerGoBackDialog())).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_cancelDialogButtonText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.AttendanceActivity.9
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        });
        builder.setNeutralButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_draftFarmerText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.AttendanceActivity.10
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                AttendanceActivity.this.btnDraft.performClick();
                dialogInterface.dismiss();
            }
        });
        builder.setNegativeButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.AttendanceActivity.11
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
                AttendanceActivity.this.finish();
            }
        });
        AlertDialog show = builder.show();
        if (UtilDeclarations.isTablet(this)) {
            UtilDeclarations.makeTabletDialogTextlarge(show);
        }
    }

    private void showAlertDialog() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setMessage("Please fill all mandatory fields and click on submit button to save the attendance.").setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.AttendanceActivity.12
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

    private void showClearDataAlertDialog() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setMessage("Are you sure, you want to delete all the entered details? ").setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.AttendanceActivity.13
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                try {
                    if (AttendanceActivity.this.attendanceDetails != null && AttendanceActivity.this.attendanceDetails.size() > 0) {
                        GetDataFromDB.getInstance().executeRawQuery(Queries.getInstance().getAttendanceDeleteQry(AttendanceActivity.this.attendanceDetails.get(0).getAttendanceID()));
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
                dialogInterface.dismiss();
                AttendanceActivity.this.startActivity(new Intent(AttendanceActivity.this, (Class<?>) AttendanceActivity.class).setFlags(67108864));
                AttendanceActivity.this.finish();
            }
        });
        builder.setNegativeButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_cancelDialogButtonText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.AttendanceActivity.14
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
    public void bindAddress(Location location, TextView textView) {
        try {
            textView.setText(UtilDeclarations.getAddressWithLatLong(this, location.getLatitude(), location.getLongitude()));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void setBottomViewPadding(final View view) {
        ViewCompat.setOnApplyWindowInsetsListener(view, new OnApplyWindowInsetsListener() { // from class: com.conceptglobal.pmc.AttendanceActivity$$ExternalSyntheticLambda0
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public final WindowInsetsCompat onApplyWindowInsets(View view2, WindowInsetsCompat windowInsetsCompat) {
                return AttendanceActivity.lambda$setBottomViewPadding$0(view, view2, windowInsetsCompat);
            }
        });
    }

    static /* synthetic */ WindowInsetsCompat lambda$setBottomViewPadding$0(View view, View view2, WindowInsetsCompat windowInsetsCompat) {
        Insets insets = windowInsetsCompat.getInsets(WindowInsetsCompat.Type.systemBars());
        if (view != null) {
            view.setPadding(view.getPaddingLeft(), view.getPaddingTop(), view.getPaddingRight(), insets.bottom);
        }
        return windowInsetsCompat;
    }
}

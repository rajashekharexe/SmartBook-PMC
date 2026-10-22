package com.conceptglobal.pmc.fragments;

import android.app.AlertDialog;
import android.app.DatePickerDialog;
import android.app.Dialog;
import android.app.PendingIntent;
import android.app.ProgressDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.database.Cursor;
import android.location.Location;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.InputFilter;
import android.text.Spanned;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import com.conceptglobal.imaterialdesign.widget.FloatingActionButton;
import com.conceptglobal.pmc.BaseActivity;
import com.conceptglobal.pmc.PMCApplication;
import com.conceptglobal.pmc.adapter.GridImageAdapter;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.common.ListPopupOne;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.DataBaseHandler;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.database.InsertDataIntoDB;
import com.conceptglobal.pmc.fo.PictureReporting;
import com.conceptglobal.pmc.interfaces.OnLocationFoundListener;
import com.conceptglobal.pmc.locationprovider.FetchLocation;
import com.conceptglobal.pmc.model.DynamicFields;
import com.conceptglobal.pmc.model.FarmerMaster;
import com.conceptglobal.pmc.model.ImageDetails;
import com.conceptglobal.pmc.model.LocationInfo;
import com.conceptglobal.pmc.model.RulesConfig;
import com.conceptglobal.pmc.promotions.utils.FileUtils;
import com.conceptglobal.pmc.promotions.video.MediaController;
import com.conceptglobal.pmc.registration.DraftList;
import com.conceptglobal.pmc.service.SyncDataService;
import com.conceptglobal.pmc.utils.CompressHelper;
import com.conceptglobal.pmc.utils.CustomActionBar;
import com.conceptglobal.pmc.utils.Encryption;
import com.conceptglobal.pmc.utils.LabelUtils;
import com.conceptglobal.pmc.utils.LocationUtils;
import com.conceptglobal.pmc.utils.PLog;
import com.conceptglobal.pmc.utils.SendDataServiceUtil;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import com.conceptglobal.pmcdeepakfertilizers.R;
import de.keyboardsurfer.android.widget.crouton.Crouton;
import de.keyboardsurfer.android.widget.crouton.Style;
import io.fabric.sdk.android.services.common.AbstractSpiCall;
import java.io.File;
import java.net.URISyntaxException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;
import org.apache.commons.io.IOUtils;

/* loaded from: classes.dex */
public class AddTestimonial extends BaseActivity implements View.OnClickListener {
    private static final int DATEDIALOGID = 0;
    private static final int DATEDIALOGID_YEARLESS = 1;
    private static final int GET_CAM_IMG = 101;
    private static final int INITIALCROPID = -1;
    private static final int MY_CAMERA_REQUEST_CODE = 100;
    static final int REQUEST_VIDEO_CAPTURE = 2;
    private static final int RESULT_CODE_COMPRESS_VIDEO = 3;
    private static final String TAG = "VideoCaptureActivity";
    private static DataBaseHandler dbInstance = DataBaseHandler.getInstance();
    private static String farmerType;
    private static String isFraom;
    private String barcode;
    String bindQuery;
    private Button btnCaptureVedio;
    private Button btnDraft;
    private ImageView btnLatLng;
    private Button btnRemarks;
    private Button btnSave;
    private Button btnSlectFile;
    private String columnName;
    File compressedFile;
    private Context context;
    private Dialog dialog;
    private TextView dialogMsgTxtview;
    private List<FarmerMaster> draftStaticData;
    StringBuilder dynamicColumnnames;
    private EditText edtDistrict;
    private EditText edtMandal;
    private EditText edtState;
    private EditText edtVillage;
    private EditText etCropAccr;
    private EditText etCropDos;
    private EditText etCropName;
    private EditText etRemarks;
    private EditText ethybrid;
    private String farmerID;
    private FarmerMaster farmerMaster;
    private int farmercount;
    private String filePath;
    private String[][] geoDetailsConditions;
    private GetDataFromDB getDataFromDB;
    private GridView gridView;
    private GridImageAdapter imageAdapter;
    private String imagePath;
    private ArrayList<String> imagelist;
    private List<ImageDetails> images;
    private ImageView imgFarmer;
    private ImageView img_view;
    private boolean isFromAll;
    private boolean isImageDeleted;
    private ListView lvCrops;
    private LinearLayout mAddDynamicLinear;
    private LinearLayout mAddDynamicLinearOthers;
    private LinearLayout mAddGeoDetailsInOthers;
    private LinearLayout mAddGeoDetailsInPersonal;
    private ConstantsPMC mAppConstants;
    private int mDay;
    private ArrayList<EditText> mEntryArr;
    private ArrayList<EditText> mEntryArrIds;
    private ListPopupOne mListPopupOne;
    private LocationUtils mLocationUtils;
    private int mMonth;
    private ArrayList<TextView> mOprDatesArr;
    private int mYear;
    int masterTablecount;
    private ArrayList<TextView> mattributesnamesArr;
    private List<String> mentryValues;
    private String mobile;
    private ProgressBar progressBar;
    private Dialog progressDialog;
    private ProgressDialog progressdialog;
    private int segmentID;
    private int status;
    private String tableName;
    private File tempFile;
    private TextView tvAcreagesNote;
    private TextView tvAddCrop;
    private TextView tvCropid;
    private TextView tvImage;
    private TextView tvLatitude;
    private TextView tvLongitude;
    private TextView tvStatus;
    private TextView tvdistrictid;
    private TextView tvhybridid;
    private TextView tvmandalid;
    private TextView tvstateid;
    private TextView tvvillageid;
    private TextView txt;
    private int typeOfFarmer;
    private String updateDOS;
    private String tag = "AddTestimonial";
    private long defaultMinDate = -1;
    private long defaultMaxDate = -1;
    private String mFiledStr = "";
    private int datePos = 0;
    private HashMap<Integer, Integer> hAttributes = null;
    private ArrayList<DynamicFields> attributesArry = null;
    private ArrayList<DynamicFields> attributesOthersArry = null;
    private int mForOperations = -1;
    private int mForDates = -1;
    private int layoutId = 0;
    int _clickId = 0;
    private int enableCropHybrids = 0;
    private int enableSowingDate = 0;
    private String plotLatlongs = "";
    String[] attribName = {GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_stateText()), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_districtText()), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_mandalsText()), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_villageText())};
    ArrayList<TextView> geoDetailsTV = new ArrayList<>();
    ArrayList<EditText> geoDetailsET = new ArrayList<>();
    private int isFromTransaction = 0;
    String latlongTag = "";
    private HashMap<Integer, HashMap<Integer, List<RulesConfig>>> rulesMap = new HashMap<>();
    private String validationFailedMsg = "";
    View.OnClickListener operationListener = new View.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.AddTestimonial.4
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (view instanceof EditText) {
                ((EditText) view).setError(null);
            }
            AddTestimonial.this._clickId = view.getId();
            String dbquery = ((DynamicFields) AddTestimonial.this.attributesArry.get(view.getId())).getDbquery();
            AddTestimonial addTestimonial = AddTestimonial.this;
            ListPopupOne listPopupOne = new ListPopupOne(addTestimonial, addTestimonial.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_selectOneDropDownTitle()), dbquery, view, (TextView) AddTestimonial.this.mEntryArrIds.get(view.getId()));
            listPopupOne.getWindow().getAttributes().windowAnimations = R.style.PauseDialogAnimation;
            listPopupOne.show();
            listPopupOne.getWindow().setSoftInputMode(3);
        }
    };
    View.OnClickListener datesListener = new View.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.AddTestimonial.5
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AddTestimonial.this.datePos = view.getId();
            AddTestimonial.this.txt = (TextView) view;
            AddTestimonial.this.showDialog(0);
        }
    };
    View.OnClickListener datesListenerYearless = new View.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.AddTestimonial.6
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AddTestimonial.this.datePos = view.getId();
            AddTestimonial.this.showDialog(1);
        }
    };
    private DatePickerDialog.OnDateSetListener mDateSetListener = new DatePickerDialog.OnDateSetListener() { // from class: com.conceptglobal.pmc.fragments.AddTestimonial.8
        @Override // android.app.DatePickerDialog.OnDateSetListener
        public void onDateSet(DatePicker datePicker, int i, int i2, int i3) {
            AddTestimonial.this.mYear = i;
            AddTestimonial.this.mMonth = i2;
            AddTestimonial.this.mDay = i3;
            try {
                new SimpleDateFormat("yyyy-MM-dd").parse(i + "-" + (i2 + 1) + "-" + i3);
                new Date();
                AddTestimonial.this.updateDisplay();
            } catch (Exception e) {
                PLog.e(AddTestimonial.this.tag, e);
            }
        }
    };
    private DatePickerDialog.OnDateSetListener mDateSetListener_Yearless = new DatePickerDialog.OnDateSetListener() { // from class: com.conceptglobal.pmc.fragments.AddTestimonial.9
        @Override // android.app.DatePickerDialog.OnDateSetListener
        public void onDateSet(DatePicker datePicker, int i, int i2, int i3) {
            AddTestimonial.this.mYear = i;
            AddTestimonial.this.mMonth = i2;
            AddTestimonial.this.mDay = i3;
            try {
                AddTestimonial.this.updateDisplay_yearless();
            } catch (Exception e) {
                PLog.e(AddTestimonial.this.tag, e);
            }
        }
    };
    private BroadcastReceiver message = new BroadcastReceiver() { // from class: com.conceptglobal.pmc.fragments.AddTestimonial.15
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String stringExtra = intent.getStringExtra("deletedImage");
            AddTestimonial.this.imagelist.remove(stringExtra);
            AddTestimonial.this.isImageDeleted = true;
            try {
                File file = new File(stringExtra);
                if (file.exists()) {
                    file.delete();
                }
            } catch (Exception e) {
                PLog.e(AddTestimonial.TAG, e);
            }
        }
    };

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity, android.view.Window.Callback
    public boolean onCreatePanelMenu(int i, Menu menu) {
        return super.onCreatePanelMenu(i, menu);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.Window.Callback
    public boolean onMenuOpened(int i, Menu menu) {
        return super.onMenuOpened(i, menu);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity
    public void supportInvalidateOptionsMenu() {
        super.supportInvalidateOptionsMenu();
    }

    @Override // com.conceptglobal.pmc.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.addtestimonial_personal);
        this.context = this;
        ConstantsPMC.getInstance().getLanguageConfigurations(this.context);
        this.getDataFromDB = GetDataFromDB.getInstance();
        this.mLocationUtils = new LocationUtils();
        Intent intent = getIntent();
        farmerType = intent.getStringExtra("farmerType");
        isFraom = intent.getStringExtra("isFraom");
        CustomActionBar.initActionBar(this, "Add Testimonial(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
        initialization();
        gettingData();
        generateResPondentNumber();
        createOperationAttributes();
        bindOperations();
        this.gridView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.conceptglobal.pmc.fragments.AddTestimonial.1
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                AddTestimonial addTestimonial = AddTestimonial.this;
                addTestimonial.captureImage(((ImageDetails) addTestimonial.images.get(i)).getImageId());
            }
        });
        ((FloatingActionButton) findViewById(R.id.fab)).setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.AddTestimonial.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (AddTestimonial.this.images.size() <= 4) {
                    AddTestimonial.this.captureImage(0L);
                } else {
                    Toast.makeText(AddTestimonial.this.getApplication(), AddTestimonial.this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_maxImagesToast()), 1).show();
                }
            }
        });
        this.mAppConstants = ConstantsPMC.getInstance();
        Button button = (Button) findViewById(R.id.btnSlectAndCompress);
        this.btnSlectFile = button;
        button.setOnClickListener(this);
        Button button2 = (Button) findViewById(R.id.btnCaptureVideo);
        this.btnCaptureVedio = button2;
        button2.setOnClickListener(this);
        this.tvStatus = (TextView) findViewById(R.id.tvStatus);
        this.progressBar = (ProgressBar) findViewById(R.id.progressBar);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        getSupportActionBar().setDisplayShowHomeEnabled(true);
        TextView textView = (TextView) findViewById(R.id.tv_img_preview);
        this.tvImage = textView;
        textView.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_pictureTitle()));
        ImageView imageView = (ImageView) findViewById(R.id.img_preview);
        this.img_view = imageView;
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.AddTestimonial.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Intent intent2 = new Intent("android.media.action.VIDEO_CAPTURE");
                if (intent2.resolveActivity(AddTestimonial.this.getPackageManager()) != null) {
                    intent2.putExtra("android.intent.extra.durationLimit", 30);
                    intent2.putExtra("android.intent.extra.videoQuality", 1);
                    AddTestimonial.this.startActivityForResult(intent2, 2);
                }
            }
        });
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i, Menu menu) {
        super.onPanelClosed(i, menu);
    }

    private void initialization() {
        this.updateDOS = null;
        this.dynamicColumnnames = new StringBuilder();
        this.mentryValues = new ArrayList();
        Button button = (Button) findViewById(R.id.btn_save);
        this.btnSave = button;
        button.setText(this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_saveText()));
        this.gridView = (GridView) findViewById(R.id.grid_view_farmer);
        this.btnSave.setOnClickListener(this);
        Calendar calendar = Calendar.getInstance();
        this.mYear = calendar.get(1);
        this.mMonth = calendar.get(2);
        this.mDay = calendar.get(5);
        this.farmerMaster = new FarmerMaster();
        this.imagelist = new ArrayList<>();
    }

    @Override // com.conceptglobal.pmc.BaseActivity
    protected void displayNotification(String str, String str2) {
        Crouton.showText(this, "" + str2 + IOUtils.LINE_SEPARATOR_UNIX + str, Style.ALERT);
    }

    private void gettingData() {
        Intent intent = getIntent();
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            String string = extras.getString("farmerId");
            this.farmerID = string;
            if (string != null) {
                try {
                    this.farmerMaster.setRespondentNo(string);
                    this.isFromAll = true;
                } catch (Exception e) {
                    PLog.e(this.tag, e);
                }
            } else {
                farmeridIncrement();
                if (extras != null && extras.getString("MobileNumber") != null) {
                    this.mobile = extras.getString("MobileNumber");
                }
            }
        } else {
            farmeridIncrement();
        }
        if (intent.hasExtra("SegmentId")) {
            this.segmentID = intent.getIntExtra("SegmentId", 1);
        }
        if (intent.hasExtra("fromTransaction")) {
            this.isFromTransaction = intent.getIntExtra("fromTransaction", 1);
        }
    }

    @Override // android.app.Activity
    public PendingIntent createPendingResult(int i, Intent intent, int i2) {
        return super.createPendingResult(i, intent, i2);
    }

    private void bindOperations() {
        try {
            this.mentryValues = this.getDataFromDB.getFarmerOrRetailerBindDataDynamic(this.bindQuery);
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (this.attributesArry.size() <= 0 || this.mentryValues.size() <= 0) {
            return;
        }
        for (int i = 0; i < this.attributesArry.size(); i++) {
            if (this.attributesArry.get(i).getControlType().equalsIgnoreCase("Dropdown")) {
                this.mEntryArrIds.get(i).setText(this.mentryValues.get(i));
                if (this.attributesArry.get(i).getDbquery().contains("DealerMaster")) {
                    try {
                        this.mEntryArr.get(i).setText(Encryption.decrypt(GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getColumnValueWhereConditionBased("RetailerShopName", "DealerMaster", "ContactId", this.mentryValues.get(i)))).trim());
                    } catch (Exception e2) {
                        PLog.e(TAG, e2);
                    }
                } else if (this.attributesArry.get(i).getDbquery().contains("FarmerMaster")) {
                    try {
                        this.mEntryArr.get(i).setText(Encryption.decrypt(GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getColumnValueWhereConditionBased("FarmerName", "FarmerMaster", "RespondentNo", this.mentryValues.get(i)))).trim());
                    } catch (Exception e3) {
                        PLog.e(TAG, e3);
                    }
                } else if (this.attributesArry.get(i).getDbquery().contains("TerritoryMaster")) {
                    try {
                        this.mEntryArr.get(i).setText(GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getColumnValueWhereConditionBased("territoryName", "TerritoryMaster", "territoryId", this.mentryValues.get(i))));
                    } catch (Exception e4) {
                        PLog.e(TAG, e4);
                    }
                } else {
                    this.mEntryArr.get(i).setText(this.mentryValues.get(i));
                }
            } else {
                this.mEntryArr.get(i).setText(this.mentryValues.get(i));
            }
        }
    }

    @Override // android.app.Activity
    public void onProvideAssistData(Bundle bundle) {
        super.onProvideAssistData(bundle);
    }

    private String generateResPondentNumber() {
        if (this.farmerMaster.getRespondentNo() == null || this.farmerMaster.getRespondentNo().equalsIgnoreCase("")) {
            this.farmerMaster.setRespondentNo(this.farmerMaster.getPdaid() + Calendar.getInstance().getTimeInMillis());
        }
        this.farmerID = this.farmerMaster.getRespondentNo();
        return this.farmerMaster.getRespondentNo();
    }

    private void farmeridIncrement() {
        try {
            InsertDataIntoDB.getMaxCount(Queries.getInstance().farmerIDIncrement());
        } catch (Exception e) {
            PLog.e(this.tag, e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x021e  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x036c  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x037b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void createOperationAttributes() {
        /*
            Method dump skipped, instructions count: 945
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.fragments.AddTestimonial.createOperationAttributes():void");
    }

    /* JADX WARN: Removed duplicated region for block: B:117:0x03e8  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x03d3  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0494  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0541  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0576  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x057d  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0560  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x04a1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void addOperationsDynamicLayout(java.lang.String r22, java.lang.String r23, java.lang.String r24, java.lang.String r25, java.lang.String r26, java.lang.String r27, java.lang.String r28, int r29, int r30, int r31, int r32, int r33, android.widget.LinearLayout r34, int r35, com.conceptglobal.pmc.model.DynamicFields r36) {
        /*
            Method dump skipped, instructions count: 1549
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.fragments.AddTestimonial.addOperationsDynamicLayout(java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, int, int, int, int, int, android.widget.LinearLayout, int, com.conceptglobal.pmc.model.DynamicFields):void");
    }

    class DecimalDigitsInputFilter implements InputFilter {
        Pattern mPattern;

        public DecimalDigitsInputFilter(int i, int i2) {
            StringBuilder sb = new StringBuilder("[0-9]{0,");
            sb.append(i - 1);
            sb.append("}+((\\.[0-9]{0,");
            sb.append(i2 - 1);
            sb.append("})?)||(\\.)?");
            this.mPattern = Pattern.compile(sb.toString());
        }

        @Override // android.text.InputFilter
        public CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
            if (this.mPattern.matcher(spanned).matches()) {
                return null;
            }
            return "";
        }
    }

    @Override // android.app.Activity
    public Dialog onCreateDialog(int i) {
        View findViewById;
        if (i != 0) {
            if (i != 1) {
                return null;
            }
            DatePickerDialog datePickerDialog = new DatePickerDialog(this, this.mDateSetListener_Yearless, this.mYear, this.mMonth, this.mDay) { // from class: com.conceptglobal.pmc.fragments.AddTestimonial.7
                @Override // android.app.DatePickerDialog, android.widget.DatePicker.OnDateChangedListener
                public void onDateChanged(DatePicker datePicker, int i2, int i3, int i4) {
                    setTitle(AddTestimonial.this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_selectDayMonthDPTitle()));
                }
            };
            datePickerDialog.setTitle(this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_selectDayMonthDPTitle()));
            int identifier = Resources.getSystem().getIdentifier("year", "id", AbstractSpiCall.ANDROID_CLIENT_TYPE);
            if (identifier != 0 && (findViewById = datePickerDialog.getDatePicker().findViewById(identifier)) != null) {
                findViewById.setVisibility(8);
            }
            return datePickerDialog;
        }
        DatePickerDialog datePickerDialog2 = new DatePickerDialog(this, this.mDateSetListener, this.mYear, this.mMonth, this.mDay);
        try {
            this.defaultMinDate = datePickerDialog2.getDatePicker().getMinDate();
            this.defaultMaxDate = datePickerDialog2.getDatePicker().getMaxDate();
            Date date = new Date();
            EditText editText = this.mEntryArr.get(this.datePos);
            if (editText != null && editText.getTag(R.string.MIN_DAYS) != null && !editText.getTag(R.string.MIN_DAYS).toString().isEmpty() && !editText.getTag(R.string.MIN_DAYS).equals(-1)) {
                Calendar calendar = Calendar.getInstance();
                calendar.setTime(date);
                calendar.add(5, (-Integer.parseInt(editText.getTag(R.string.MIN_DAYS).toString())) + 1);
                datePickerDialog2.getDatePicker().setMinDate(calendar.getTime().getTime());
            }
            if (editText != null && editText.getTag(R.string.MAX_DAYS) != null && !editText.getTag(R.string.MAX_DAYS).toString().isEmpty() && !editText.getTag(R.string.MAX_DAYS).equals(-1)) {
                Calendar calendar2 = Calendar.getInstance();
                calendar2.setTime(date);
                calendar2.add(1, -Integer.parseInt(editText.getTag(R.string.MAX_DAYS).toString()));
                datePickerDialog2.getDatePicker().setMaxDate(calendar2.getTime().getTime());
            }
        } catch (Exception unused) {
        }
        return datePickerDialog2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateDisplay() {
        this.mFiledStr = new StringBuffer().append(this.mDay).append("-").append(this.mMonth + 1).append("-").append(this.mYear).toString();
        try {
            new SimpleDateFormat("dd-MM-yyyy").parse(this.mFiledStr);
        } catch (ParseException e) {
            PLog.e(this.tag, e);
        }
        setDate(this.datePos);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateDisplay_yearless() {
        this.mFiledStr = new StringBuffer().append(this.mDay).append("-").append(this.mMonth + 1).toString();
        try {
            new SimpleDateFormat("dd-MM").parse(this.mFiledStr);
        } catch (ParseException e) {
            PLog.e(this.tag, e);
        }
        setDate_yearless(this.datePos);
    }

    private void setDate(int i) {
        try {
            new SimpleDateFormat("dd-MM-yyyy").parse(this.mFiledStr);
        } catch (ParseException e) {
            PLog.e(this.tag, e);
        }
        this.txt.setText(this.mFiledStr);
        this.updateDOS = this.mFiledStr;
    }

    private void setDate_yearless(int i) {
        EditText editText = this.mEntryArr.get(i);
        try {
            new SimpleDateFormat("dd-MM").parse(this.mFiledStr);
        } catch (ParseException e) {
            PLog.e(this.tag, e);
        }
        editText.setText(this.mFiledStr);
        this.updateDOS = this.mFiledStr;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == 16908332) {
            if (this.isFromTransaction != 1) {
                showGoBackDialog();
            } else {
                finish();
            }
            return true;
        }
        if (itemId == R.id.item_add_draft) {
            this.status = 0;
            new DataInsertion(this).execute(new Void[0]);
        }
        return super.onOptionsItemSelected(menuItem);
    }

    private void showGoBackDialog() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.context);
        builder.setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.AddTestimonial.10
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
                AddTestimonial.this.finish();
            }
        });
        builder.setMessage(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_addCustomerGoBackDialog())).setCancelable(false).setNegativeButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_cancelDialogButtonText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.AddTestimonial.11
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

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.farmer, menu);
        return super.onCreateOptionsMenu(menu);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.btnSlectAndCompress /* 2131296392 */:
                Intent intent = new Intent("android.intent.action.GET_CONTENT");
                intent.setType("video/*");
                startActivityForResult(intent, 3);
                break;
            case R.id.btn_get_latlong_farmer_personal_details /* 2131296416 */:
                fetchLocation(this.tvLatitude, this.tvLongitude);
                break;
            case R.id.btn_save /* 2131296431 */:
                this.status = 1;
                new DataSaveTask().execute(new Void[0]);
                break;
            case R.id.img_farmer_image_other_details /* 2131296834 */:
                if (this.imagelist.size() <= 4) {
                    captureImage(0L);
                    break;
                } else {
                    Toast.makeText(getApplication(), this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_maxImagesToast()), 1).show();
                    break;
                }
        }
    }

    private void setEditableFalse(EditText editText) {
        editText.setFocusable(false);
        editText.setClickable(false);
        editText.setEnabled(false);
        editText.setBackgroundDrawable(getResources().getDrawable(R.drawable.card_layout_back_desable));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dataInsertion() {
        if (this.farmerID.equals(null) || this.farmerID.equalsIgnoreCase("") || this.farmerID.length() == 0) {
            farmeridIncrement();
        }
        if (this.farmerMaster.getPdaid().trim().length() == 0) {
            gettingPdaid();
        }
        this.farmerMaster.setStateID(this.geoDetailsTV.get(0).getText().toString());
        this.farmerMaster.setDistrictID(this.geoDetailsTV.get(1).getText().toString());
        this.farmerMaster.setMandalID(this.geoDetailsTV.get(2).getText().toString());
        this.farmerMaster.setVillageId(this.geoDetailsTV.get(3).getText().toString());
        this.farmerMaster.setStateName(this.geoDetailsET.get(0).getText().toString());
        this.farmerMaster.setDistrictName(this.geoDetailsET.get(1).getText().toString());
        this.farmerMaster.setMandalName(this.geoDetailsET.get(2).getText().toString());
        this.farmerMaster.setVillageName(this.geoDetailsET.get(3).getText().toString());
        this.farmerMaster.setLatitude(this.tvLatitude.getText().toString());
        this.farmerMaster.setLongitude(this.tvLongitude.getText().toString());
        this.farmerMaster.setisNew("true");
        this.farmerMaster.setServerupdatedstatus("false");
        FarmerMaster farmerMaster = this.farmerMaster;
        farmerMaster.setPdaid(farmerMaster.getPdaid());
        this.farmerMaster.setStatus(this.status);
        if (farmerType.equalsIgnoreCase(ConstantsPMC.TYPE_FARMER)) {
            this.farmerMaster.setTypeofFarmer("1");
            this.farmerMaster.setFarmerTypeId("1");
            this.farmerMaster.setProfilePicCaptured(1);
            if (this.status == 1) {
                this.farmerMaster.setColumn3(1);
            }
        } else if (farmerType.equalsIgnoreCase("Planter")) {
            this.farmerMaster.setTypeofFarmer("8");
            this.farmerMaster.setFarmerTypeId("8");
        } else if (farmerType.equalsIgnoreCase("Village")) {
            this.farmerMaster.setTypeofFarmer("4");
            this.farmerMaster.setFarmerTypeId("4");
        }
        this.farmerMaster.setIsActive("True");
        try {
            int i = this.getDataFromDB.getcount(Queries.getInstance().gettingFarmerCount(this.farmerID));
            this.farmercount = i;
            if (i > 0) {
                InsertDataIntoDB.updateFarmerDetails(this.farmerMaster, this.attributesArry, this.mEntryArr, this.farmerID, 0, this.mEntryArrIds);
            } else {
                InsertDataIntoDB.insertFarmerDetails(this.farmerMaster, this.attributesArry, this.mEntryArr, this.mEntryArrIds);
            }
        } catch (Exception e) {
            PLog.e(this.tag, e);
        }
    }

    private void gettingPdaid() {
        try {
            this.farmerMaster.setPdaid(this.getDataFromDB.getSingleValue(Queries.getInstance().geetingPdaid()));
        } catch (Exception e) {
            PLog.e(this.tag, e);
        }
    }

    public static boolean isNumeric(String str) {
        try {
            Integer.parseInt(str);
            return true;
        } catch (NumberFormatException e) {
            PLog.e(TAG, e);
            return false;
        }
    }

    public static boolean isDecimal(String str) {
        try {
            Double.valueOf(Double.parseDouble(str));
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0d8a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0c0c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:162:0x0bf9  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x0af5 A[Catch: Exception -> 0x0dba, TryCatch #3 {Exception -> 0x0dba, blocks: (B:318:0x0026, B:11:0x0046, B:15:0x0066, B:78:0x0c4d, B:80:0x0c65, B:81:0x0c85, B:83:0x0c8b, B:85:0x0ca5, B:86:0x0cbe, B:88:0x0cc4, B:100:0x0cfb, B:107:0x0d11, B:108:0x0d16, B:110:0x0d1c, B:123:0x0d54, B:124:0x0d58, B:126:0x0d5e, B:28:0x0d8a, B:224:0x0290, B:226:0x02a2, B:228:0x02b4, B:230:0x02d4, B:233:0x0311, B:234:0x031f, B:236:0x0356, B:238:0x0391, B:239:0x039d, B:241:0x03b1, B:243:0x03cb, B:245:0x03e9, B:246:0x03f5, B:248:0x0403, B:252:0x0417, B:254:0x0425, B:256:0x0433, B:258:0x0449, B:260:0x0479, B:264:0x047f, B:265:0x0604, B:267:0x0612, B:269:0x0628, B:271:0x0682, B:278:0x048d, B:147:0x0d9b, B:150:0x0da3, B:152:0x0da9, B:281:0x04c8, B:283:0x04d6, B:285:0x04e4, B:287:0x04fa, B:289:0x051c, B:291:0x0559, B:293:0x0567, B:295:0x0575, B:297:0x0583, B:299:0x0599, B:301:0x05bb, B:303:0x05f8, B:41:0x0864, B:43:0x0876, B:45:0x0888, B:47:0x08a8, B:50:0x08e5, B:51:0x08f3, B:53:0x092a, B:55:0x0965, B:56:0x0971, B:58:0x097f, B:60:0x098d, B:62:0x09a3, B:64:0x09d3, B:68:0x09d9, B:71:0x0b67, B:73:0x0b75, B:75:0x0b8b, B:76:0x0bfa, B:163:0x09e7, B:166:0x0a22, B:168:0x0a30, B:170:0x0a3e, B:172:0x0a54, B:174:0x0a76, B:176:0x0ab3, B:178:0x0ac3, B:180:0x0ad1, B:182:0x0adf, B:184:0x0af5, B:186:0x0b17, B:188:0x0b54), top: B:317:0x0026 }] */
    /* JADX WARN: Removed duplicated region for block: B:189:0x0b61 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:226:0x02a2 A[Catch: Exception -> 0x0dba, TryCatch #3 {Exception -> 0x0dba, blocks: (B:318:0x0026, B:11:0x0046, B:15:0x0066, B:78:0x0c4d, B:80:0x0c65, B:81:0x0c85, B:83:0x0c8b, B:85:0x0ca5, B:86:0x0cbe, B:88:0x0cc4, B:100:0x0cfb, B:107:0x0d11, B:108:0x0d16, B:110:0x0d1c, B:123:0x0d54, B:124:0x0d58, B:126:0x0d5e, B:28:0x0d8a, B:224:0x0290, B:226:0x02a2, B:228:0x02b4, B:230:0x02d4, B:233:0x0311, B:234:0x031f, B:236:0x0356, B:238:0x0391, B:239:0x039d, B:241:0x03b1, B:243:0x03cb, B:245:0x03e9, B:246:0x03f5, B:248:0x0403, B:252:0x0417, B:254:0x0425, B:256:0x0433, B:258:0x0449, B:260:0x0479, B:264:0x047f, B:265:0x0604, B:267:0x0612, B:269:0x0628, B:271:0x0682, B:278:0x048d, B:147:0x0d9b, B:150:0x0da3, B:152:0x0da9, B:281:0x04c8, B:283:0x04d6, B:285:0x04e4, B:287:0x04fa, B:289:0x051c, B:291:0x0559, B:293:0x0567, B:295:0x0575, B:297:0x0583, B:299:0x0599, B:301:0x05bb, B:303:0x05f8, B:41:0x0864, B:43:0x0876, B:45:0x0888, B:47:0x08a8, B:50:0x08e5, B:51:0x08f3, B:53:0x092a, B:55:0x0965, B:56:0x0971, B:58:0x097f, B:60:0x098d, B:62:0x09a3, B:64:0x09d3, B:68:0x09d9, B:71:0x0b67, B:73:0x0b75, B:75:0x0b8b, B:76:0x0bfa, B:163:0x09e7, B:166:0x0a22, B:168:0x0a30, B:170:0x0a3e, B:172:0x0a54, B:174:0x0a76, B:176:0x0ab3, B:178:0x0ac3, B:180:0x0ad1, B:182:0x0adf, B:184:0x0af5, B:186:0x0b17, B:188:0x0b54), top: B:317:0x0026 }] */
    /* JADX WARN: Removed duplicated region for block: B:241:0x03b1 A[Catch: Exception -> 0x0dba, TryCatch #3 {Exception -> 0x0dba, blocks: (B:318:0x0026, B:11:0x0046, B:15:0x0066, B:78:0x0c4d, B:80:0x0c65, B:81:0x0c85, B:83:0x0c8b, B:85:0x0ca5, B:86:0x0cbe, B:88:0x0cc4, B:100:0x0cfb, B:107:0x0d11, B:108:0x0d16, B:110:0x0d1c, B:123:0x0d54, B:124:0x0d58, B:126:0x0d5e, B:28:0x0d8a, B:224:0x0290, B:226:0x02a2, B:228:0x02b4, B:230:0x02d4, B:233:0x0311, B:234:0x031f, B:236:0x0356, B:238:0x0391, B:239:0x039d, B:241:0x03b1, B:243:0x03cb, B:245:0x03e9, B:246:0x03f5, B:248:0x0403, B:252:0x0417, B:254:0x0425, B:256:0x0433, B:258:0x0449, B:260:0x0479, B:264:0x047f, B:265:0x0604, B:267:0x0612, B:269:0x0628, B:271:0x0682, B:278:0x048d, B:147:0x0d9b, B:150:0x0da3, B:152:0x0da9, B:281:0x04c8, B:283:0x04d6, B:285:0x04e4, B:287:0x04fa, B:289:0x051c, B:291:0x0559, B:293:0x0567, B:295:0x0575, B:297:0x0583, B:299:0x0599, B:301:0x05bb, B:303:0x05f8, B:41:0x0864, B:43:0x0876, B:45:0x0888, B:47:0x08a8, B:50:0x08e5, B:51:0x08f3, B:53:0x092a, B:55:0x0965, B:56:0x0971, B:58:0x097f, B:60:0x098d, B:62:0x09a3, B:64:0x09d3, B:68:0x09d9, B:71:0x0b67, B:73:0x0b75, B:75:0x0b8b, B:76:0x0bfa, B:163:0x09e7, B:166:0x0a22, B:168:0x0a30, B:170:0x0a3e, B:172:0x0a54, B:174:0x0a76, B:176:0x0ab3, B:178:0x0ac3, B:180:0x0ad1, B:182:0x0adf, B:184:0x0af5, B:186:0x0b17, B:188:0x0b54), top: B:317:0x0026 }] */
    /* JADX WARN: Removed duplicated region for block: B:267:0x0612 A[Catch: Exception -> 0x0dba, TryCatch #3 {Exception -> 0x0dba, blocks: (B:318:0x0026, B:11:0x0046, B:15:0x0066, B:78:0x0c4d, B:80:0x0c65, B:81:0x0c85, B:83:0x0c8b, B:85:0x0ca5, B:86:0x0cbe, B:88:0x0cc4, B:100:0x0cfb, B:107:0x0d11, B:108:0x0d16, B:110:0x0d1c, B:123:0x0d54, B:124:0x0d58, B:126:0x0d5e, B:28:0x0d8a, B:224:0x0290, B:226:0x02a2, B:228:0x02b4, B:230:0x02d4, B:233:0x0311, B:234:0x031f, B:236:0x0356, B:238:0x0391, B:239:0x039d, B:241:0x03b1, B:243:0x03cb, B:245:0x03e9, B:246:0x03f5, B:248:0x0403, B:252:0x0417, B:254:0x0425, B:256:0x0433, B:258:0x0449, B:260:0x0479, B:264:0x047f, B:265:0x0604, B:267:0x0612, B:269:0x0628, B:271:0x0682, B:278:0x048d, B:147:0x0d9b, B:150:0x0da3, B:152:0x0da9, B:281:0x04c8, B:283:0x04d6, B:285:0x04e4, B:287:0x04fa, B:289:0x051c, B:291:0x0559, B:293:0x0567, B:295:0x0575, B:297:0x0583, B:299:0x0599, B:301:0x05bb, B:303:0x05f8, B:41:0x0864, B:43:0x0876, B:45:0x0888, B:47:0x08a8, B:50:0x08e5, B:51:0x08f3, B:53:0x092a, B:55:0x0965, B:56:0x0971, B:58:0x097f, B:60:0x098d, B:62:0x09a3, B:64:0x09d3, B:68:0x09d9, B:71:0x0b67, B:73:0x0b75, B:75:0x0b8b, B:76:0x0bfa, B:163:0x09e7, B:166:0x0a22, B:168:0x0a30, B:170:0x0a3e, B:172:0x0a54, B:174:0x0a76, B:176:0x0ab3, B:178:0x0ac3, B:180:0x0ad1, B:182:0x0adf, B:184:0x0af5, B:186:0x0b17, B:188:0x0b54), top: B:317:0x0026 }] */
    /* JADX WARN: Removed duplicated region for block: B:274:0x0694 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:299:0x0599 A[Catch: Exception -> 0x0dba, TryCatch #3 {Exception -> 0x0dba, blocks: (B:318:0x0026, B:11:0x0046, B:15:0x0066, B:78:0x0c4d, B:80:0x0c65, B:81:0x0c85, B:83:0x0c8b, B:85:0x0ca5, B:86:0x0cbe, B:88:0x0cc4, B:100:0x0cfb, B:107:0x0d11, B:108:0x0d16, B:110:0x0d1c, B:123:0x0d54, B:124:0x0d58, B:126:0x0d5e, B:28:0x0d8a, B:224:0x0290, B:226:0x02a2, B:228:0x02b4, B:230:0x02d4, B:233:0x0311, B:234:0x031f, B:236:0x0356, B:238:0x0391, B:239:0x039d, B:241:0x03b1, B:243:0x03cb, B:245:0x03e9, B:246:0x03f5, B:248:0x0403, B:252:0x0417, B:254:0x0425, B:256:0x0433, B:258:0x0449, B:260:0x0479, B:264:0x047f, B:265:0x0604, B:267:0x0612, B:269:0x0628, B:271:0x0682, B:278:0x048d, B:147:0x0d9b, B:150:0x0da3, B:152:0x0da9, B:281:0x04c8, B:283:0x04d6, B:285:0x04e4, B:287:0x04fa, B:289:0x051c, B:291:0x0559, B:293:0x0567, B:295:0x0575, B:297:0x0583, B:299:0x0599, B:301:0x05bb, B:303:0x05f8, B:41:0x0864, B:43:0x0876, B:45:0x0888, B:47:0x08a8, B:50:0x08e5, B:51:0x08f3, B:53:0x092a, B:55:0x0965, B:56:0x0971, B:58:0x097f, B:60:0x098d, B:62:0x09a3, B:64:0x09d3, B:68:0x09d9, B:71:0x0b67, B:73:0x0b75, B:75:0x0b8b, B:76:0x0bfa, B:163:0x09e7, B:166:0x0a22, B:168:0x0a30, B:170:0x0a3e, B:172:0x0a54, B:174:0x0a76, B:176:0x0ab3, B:178:0x0ac3, B:180:0x0ad1, B:182:0x0adf, B:184:0x0af5, B:186:0x0b17, B:188:0x0b54), top: B:317:0x0026 }] */
    /* JADX WARN: Removed duplicated region for block: B:304:0x0b61 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0876 A[Catch: Exception -> 0x0dba, TryCatch #3 {Exception -> 0x0dba, blocks: (B:318:0x0026, B:11:0x0046, B:15:0x0066, B:78:0x0c4d, B:80:0x0c65, B:81:0x0c85, B:83:0x0c8b, B:85:0x0ca5, B:86:0x0cbe, B:88:0x0cc4, B:100:0x0cfb, B:107:0x0d11, B:108:0x0d16, B:110:0x0d1c, B:123:0x0d54, B:124:0x0d58, B:126:0x0d5e, B:28:0x0d8a, B:224:0x0290, B:226:0x02a2, B:228:0x02b4, B:230:0x02d4, B:233:0x0311, B:234:0x031f, B:236:0x0356, B:238:0x0391, B:239:0x039d, B:241:0x03b1, B:243:0x03cb, B:245:0x03e9, B:246:0x03f5, B:248:0x0403, B:252:0x0417, B:254:0x0425, B:256:0x0433, B:258:0x0449, B:260:0x0479, B:264:0x047f, B:265:0x0604, B:267:0x0612, B:269:0x0628, B:271:0x0682, B:278:0x048d, B:147:0x0d9b, B:150:0x0da3, B:152:0x0da9, B:281:0x04c8, B:283:0x04d6, B:285:0x04e4, B:287:0x04fa, B:289:0x051c, B:291:0x0559, B:293:0x0567, B:295:0x0575, B:297:0x0583, B:299:0x0599, B:301:0x05bb, B:303:0x05f8, B:41:0x0864, B:43:0x0876, B:45:0x0888, B:47:0x08a8, B:50:0x08e5, B:51:0x08f3, B:53:0x092a, B:55:0x0965, B:56:0x0971, B:58:0x097f, B:60:0x098d, B:62:0x09a3, B:64:0x09d3, B:68:0x09d9, B:71:0x0b67, B:73:0x0b75, B:75:0x0b8b, B:76:0x0bfa, B:163:0x09e7, B:166:0x0a22, B:168:0x0a30, B:170:0x0a3e, B:172:0x0a54, B:174:0x0a76, B:176:0x0ab3, B:178:0x0ac3, B:180:0x0ad1, B:182:0x0adf, B:184:0x0af5, B:186:0x0b17, B:188:0x0b54), top: B:317:0x0026 }] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0b75 A[Catch: Exception -> 0x0dba, TryCatch #3 {Exception -> 0x0dba, blocks: (B:318:0x0026, B:11:0x0046, B:15:0x0066, B:78:0x0c4d, B:80:0x0c65, B:81:0x0c85, B:83:0x0c8b, B:85:0x0ca5, B:86:0x0cbe, B:88:0x0cc4, B:100:0x0cfb, B:107:0x0d11, B:108:0x0d16, B:110:0x0d1c, B:123:0x0d54, B:124:0x0d58, B:126:0x0d5e, B:28:0x0d8a, B:224:0x0290, B:226:0x02a2, B:228:0x02b4, B:230:0x02d4, B:233:0x0311, B:234:0x031f, B:236:0x0356, B:238:0x0391, B:239:0x039d, B:241:0x03b1, B:243:0x03cb, B:245:0x03e9, B:246:0x03f5, B:248:0x0403, B:252:0x0417, B:254:0x0425, B:256:0x0433, B:258:0x0449, B:260:0x0479, B:264:0x047f, B:265:0x0604, B:267:0x0612, B:269:0x0628, B:271:0x0682, B:278:0x048d, B:147:0x0d9b, B:150:0x0da3, B:152:0x0da9, B:281:0x04c8, B:283:0x04d6, B:285:0x04e4, B:287:0x04fa, B:289:0x051c, B:291:0x0559, B:293:0x0567, B:295:0x0575, B:297:0x0583, B:299:0x0599, B:301:0x05bb, B:303:0x05f8, B:41:0x0864, B:43:0x0876, B:45:0x0888, B:47:0x08a8, B:50:0x08e5, B:51:0x08f3, B:53:0x092a, B:55:0x0965, B:56:0x0971, B:58:0x097f, B:60:0x098d, B:62:0x09a3, B:64:0x09d3, B:68:0x09d9, B:71:0x0b67, B:73:0x0b75, B:75:0x0b8b, B:76:0x0bfa, B:163:0x09e7, B:166:0x0a22, B:168:0x0a30, B:170:0x0a3e, B:172:0x0a54, B:174:0x0a76, B:176:0x0ab3, B:178:0x0ac3, B:180:0x0ad1, B:182:0x0adf, B:184:0x0af5, B:186:0x0b17, B:188:0x0b54), top: B:317:0x0026 }] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0c65 A[Catch: Exception -> 0x0dba, TryCatch #3 {Exception -> 0x0dba, blocks: (B:318:0x0026, B:11:0x0046, B:15:0x0066, B:78:0x0c4d, B:80:0x0c65, B:81:0x0c85, B:83:0x0c8b, B:85:0x0ca5, B:86:0x0cbe, B:88:0x0cc4, B:100:0x0cfb, B:107:0x0d11, B:108:0x0d16, B:110:0x0d1c, B:123:0x0d54, B:124:0x0d58, B:126:0x0d5e, B:28:0x0d8a, B:224:0x0290, B:226:0x02a2, B:228:0x02b4, B:230:0x02d4, B:233:0x0311, B:234:0x031f, B:236:0x0356, B:238:0x0391, B:239:0x039d, B:241:0x03b1, B:243:0x03cb, B:245:0x03e9, B:246:0x03f5, B:248:0x0403, B:252:0x0417, B:254:0x0425, B:256:0x0433, B:258:0x0449, B:260:0x0479, B:264:0x047f, B:265:0x0604, B:267:0x0612, B:269:0x0628, B:271:0x0682, B:278:0x048d, B:147:0x0d9b, B:150:0x0da3, B:152:0x0da9, B:281:0x04c8, B:283:0x04d6, B:285:0x04e4, B:287:0x04fa, B:289:0x051c, B:291:0x0559, B:293:0x0567, B:295:0x0575, B:297:0x0583, B:299:0x0599, B:301:0x05bb, B:303:0x05f8, B:41:0x0864, B:43:0x0876, B:45:0x0888, B:47:0x08a8, B:50:0x08e5, B:51:0x08f3, B:53:0x092a, B:55:0x0965, B:56:0x0971, B:58:0x097f, B:60:0x098d, B:62:0x09a3, B:64:0x09d3, B:68:0x09d9, B:71:0x0b67, B:73:0x0b75, B:75:0x0b8b, B:76:0x0bfa, B:163:0x09e7, B:166:0x0a22, B:168:0x0a30, B:170:0x0a3e, B:172:0x0a54, B:174:0x0a76, B:176:0x0ab3, B:178:0x0ac3, B:180:0x0ad1, B:182:0x0adf, B:184:0x0af5, B:186:0x0b17, B:188:0x0b54), top: B:317:0x0026 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean validation() {
        /*
            Method dump skipped, instructions count: 3535
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.fragments.AddTestimonial.validation():boolean");
    }

    private void setText(final EditText editText, final String str) {
        runOnUiThread(new Runnable() { // from class: com.conceptglobal.pmc.fragments.AddTestimonial.12
            @Override // java.lang.Runnable
            public void run() {
                editText.setText(str);
            }
        });
    }

    private void setError(final TextView textView, final String str) {
        runOnUiThread(new Runnable() { // from class: com.conceptglobal.pmc.fragments.AddTestimonial.13
            @Override // java.lang.Runnable
            public void run() {
                textView.setError(str);
            }
        });
    }

    private void showToast(final String str) {
        runOnUiThread(new Runnable() { // from class: com.conceptglobal.pmc.fragments.AddTestimonial.14
            @Override // java.lang.Runnable
            public void run() {
                Toast.makeText(AddTestimonial.this.context, str, 1).show();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createProgressDialog(String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        View inflate = getLayoutInflater().inflate(R.layout.progress_bar, (ViewGroup) null);
        TextView textView = (TextView) inflate.findViewById(R.id.msg);
        this.dialogMsgTxtview = textView;
        textView.setText(str);
        builder.setView(inflate);
        AlertDialog create = builder.create();
        this.dialog = create;
        create.setCancelable(false);
    }

    private class DataSaveTask extends AsyncTask<Void, String, Boolean> {
        boolean isSaveSuccess;

        private DataSaveTask() {
            this.isSaveSuccess = true;
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            super.onPreExecute();
            AddTestimonial.this.createProgressDialog("Please wait while performing validations...");
            AddTestimonial.this.dialog.show();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Boolean doInBackground(Void... voidArr) {
            Log.i("VD", "start-" + UtilDeclarations.getDateTime());
            boolean validation = AddTestimonial.this.validation();
            Log.i("VD", "end-" + UtilDeclarations.getDateTime());
            if (validation) {
                publishProgress("Saving data..");
                for (int i = 0; i < AddTestimonial.this.images.size(); i++) {
                    try {
                        InsertDataIntoDB.UpdateImageServerStatus(((ImageDetails) AddTestimonial.this.images.get(i)).getImageId());
                    } catch (Exception unused) {
                        this.isSaveSuccess = false;
                    }
                }
                AddTestimonial.this.dataInsertion();
            }
            return Boolean.valueOf(validation);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onProgressUpdate(String... strArr) {
            super.onProgressUpdate((Object[]) strArr);
            AddTestimonial.this.dialogMsgTxtview.setText(strArr[0]);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Boolean bool) {
            super.onPostExecute((DataSaveTask) bool);
            if (!bool.booleanValue()) {
                if (AddTestimonial.this.dialog != null && AddTestimonial.this.dialog.isShowing()) {
                    AddTestimonial.this.dialog.dismiss();
                }
                if (AddTestimonial.this.validationFailedMsg.length() > 0) {
                    Toast.makeText(AddTestimonial.this.getApplicationContext(), AddTestimonial.this.validationFailedMsg, 1).show();
                    AddTestimonial.this.validationFailedMsg = "";
                    return;
                } else {
                    Toast.makeText(AddTestimonial.this.getApplicationContext(), AddTestimonial.this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_validationToast()), 1).show();
                    return;
                }
            }
            if (this.isSaveSuccess) {
                Toast.makeText(AddTestimonial.this.getApplicationContext(), AddTestimonial.this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_dataSavedSuccessfullyDialog()), 1).show();
                if (AddTestimonial.this.isFromTransaction == 1) {
                    AddTestimonial.this.finish();
                } else {
                    Intent intent = new Intent(AddTestimonial.this, (Class<?>) DraftList.class);
                    intent.putExtra("farmerType", AddTestimonial.farmerType);
                    intent.addFlags(335544320);
                    AddTestimonial.this.startActivity(intent);
                    AddTestimonial.this.finish();
                }
                if (!UtilDeclarations.isOnline(AddTestimonial.this.context) || UtilDeclarations.isServiceRunning(AddTestimonial.this.getApplicationContext(), SyncDataService.class)) {
                    return;
                }
                Toast.makeText(AddTestimonial.this.getBaseContext(), "Service initiated", 1);
                new SendDataServiceUtil(AddTestimonial.this).startService();
                return;
            }
            Toast.makeText(AddTestimonial.this.getApplicationContext(), "Error! while saving data, try again", 1).show();
        }
    }

    private class DataInsertion extends AsyncTask<Void, Void, Void> {
        private Context _mContext;
        private ProgressDialog _mDialog;

        public DataInsertion(Context context) {
            this._mContext = context;
            ProgressDialog show = ProgressDialog.show(context, "", AddTestimonial.this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_pwDataSaving()));
            this._mDialog = show;
            show.setCancelable(false);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Void doInBackground(Void... voidArr) {
            try {
                AddTestimonial.this.dataInsertion();
                return null;
            } catch (Exception e) {
                PLog.e(AddTestimonial.this.tag, e);
                return null;
            }
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(Void r4) {
            ProgressDialog progressDialog = this._mDialog;
            if (progressDialog != null) {
                progressDialog.dismiss();
            }
            Toast.makeText(AddTestimonial.this.getApplicationContext(), AddTestimonial.this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_dataSavedSuccessfullyDialog()), 1).show();
            if (AddTestimonial.this.isFromTransaction == 1) {
                AddTestimonial.this.finish();
            } else {
                Intent intent = new Intent(AddTestimonial.this, (Class<?>) DraftList.class);
                intent.putExtra("farmerType", AddTestimonial.farmerType);
                intent.addFlags(335544320);
                AddTestimonial.this.startActivity(intent);
                AddTestimonial.this.finish();
            }
            if (!UtilDeclarations.isOnline(AddTestimonial.this.context) || UtilDeclarations.isServiceRunning(AddTestimonial.this.getApplicationContext(), SyncDataService.class)) {
                return;
            }
            Toast.makeText(AddTestimonial.this.getBaseContext(), "Service initiated", 1);
            new SendDataServiceUtil(AddTestimonial.this).startService();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity, androidx.core.app.ActivityCompat.OnRequestPermissionsResultCallback
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        Log.i(TAG, "onRequestPermissionResult");
        if (i == 34) {
            if (iArr.length <= 0) {
                Log.i(TAG, "User interaction was cancelled.");
            } else if (iArr[0] == 0) {
                fetchLocation(this.tvLatitude, this.tvLongitude);
            } else {
                this.mLocationUtils.showDialog(this, LocationUtils.PERMISSION_DENIED);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void captureImage(long j) {
        new CompressHelper().getCompressLoaction(this);
        ConstantsPMC.getInstance().setPictureReportingContext(this);
        Intent intent = new Intent(this.context, (Class<?>) PictureReporting.class);
        intent.putExtra("activityId", 0);
        intent.putExtra("assignmentId", 0);
        try {
            if (farmerType.equalsIgnoreCase(ConstantsPMC.TYPE_FARMER)) {
                intent.putExtra("setReferenceType", GetDataFromDB.getInstance().getLookupValue(Queries.getInstance().getItemValue(ConstantsPMC.TYPE_FARMER)));
            } else if (!farmerType.equalsIgnoreCase("Planter")) {
                if (farmerType.equalsIgnoreCase("Village")) {
                    intent.putExtra("setReferenceType", GetDataFromDB.getInstance().getLookupValue(Queries.getInstance().getItemValue("Village")));
                }
            } else {
                intent.putExtra("setReferenceType", GetDataFromDB.getInstance().getLookupValue(Queries.getInstance().getItemValue("Planter")));
            }
        } catch (Exception e) {
            PLog.e(this.tag, e);
        }
        intent.putExtra("setReferenceID", this.farmerMaster.getRespondentNo());
        intent.putExtra("attributeId", 0);
        intent.putExtra("farmerId", this.farmerID);
        intent.putExtra("imageId", j);
        startActivity(intent);
    }

    @Override // com.conceptglobal.pmc.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        setAdapter();
        View currentFocus = getCurrentFocus();
        if (currentFocus != null) {
            currentFocus.clearFocus();
        }
    }

    private void setAdapter() {
        List<ImageDetails> imageDetailsList = this.getDataFromDB.getImageDetailsList(Queries.getInstance().getImageDetailsQry_Assignment(this.farmerMaster.getRespondentNo()));
        this.images = imageDetailsList;
        if (imageDetailsList.size() > 0) {
            this.imageAdapter = new GridImageAdapter(this, this.images, this.imagelist);
            this.gridView.setAdapter((ListAdapter) null);
            this.gridView.setAdapter((ListAdapter) this.imageAdapter);
            this.gridView.setVisibility(0);
            return;
        }
        this.gridView.setVisibility(8);
    }

    private void getRulesConfigs() {
        List<RulesConfig> rulesConfigurations = this.getDataFromDB.getRulesConfigurations(Queries.getInstance().getRulesQuery(farmerType));
        this.rulesMap.clear();
        for (RulesConfig rulesConfig : rulesConfigurations) {
            if (this.rulesMap.get(Integer.valueOf(rulesConfig.getvAttrId())) != null) {
                HashMap<Integer, List<RulesConfig>> hashMap = this.rulesMap.get(Integer.valueOf(rulesConfig.getvAttrId()));
                if (hashMap.get(Integer.valueOf(rulesConfig.getRule())) != null) {
                    hashMap.get(Integer.valueOf(rulesConfig.getRule())).add(rulesConfig);
                } else {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(rulesConfig);
                    hashMap.put(Integer.valueOf(rulesConfig.getRule()), arrayList);
                }
            } else {
                ArrayList arrayList2 = new ArrayList();
                arrayList2.add(rulesConfig);
                HashMap<Integer, List<RulesConfig>> hashMap2 = new HashMap<>();
                hashMap2.put(Integer.valueOf(rulesConfig.getRule()), arrayList2);
                this.rulesMap.put(Integer.valueOf(rulesConfig.getvAttrId()), hashMap2);
            }
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
            new FetchLocation(this, true, new OnLocationFoundListener() { // from class: com.conceptglobal.pmc.fragments.AddTestimonial.16
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
                    if (textView.equals(AddTestimonial.this.tvLatitude)) {
                        AddTestimonial.this.farmerMaster.setGPSTimeStamp(UtilDeclarations.getLongToDate(location.getTime()));
                    }
                }
            }, this.latlongTag);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void deleteTempFile() {
        File file = this.tempFile;
        if (file == null || !file.exists()) {
            return;
        }
        this.tempFile.delete();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        deleteTempFile();
    }

    @Override // com.conceptglobal.pmc.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        deleteTempFile();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        if (i2 != -1 || intent == null) {
            return;
        }
        if (i == 1) {
            if (i2 == -1) {
                fetchLocation(this.tvLatitude, this.tvLongitude);
                return;
            } else {
                if (i2 != 0) {
                    return;
                }
                this.mLocationUtils.showDialog(this, LocationUtils.GPS_NOT_TURNED_ON);
                return;
            }
        }
        if (i == 2) {
            try {
                this.filePath = getFilePath(this, intent.getData());
            } catch (URISyntaxException e) {
                e.printStackTrace();
            }
            this.tempFile = new File(this.filePath);
            Log.e("before compression", this.tempFile.getAbsolutePath() + "");
            new VideoCompressor().execute(new Void[0]);
            return;
        }
        if (i != 3) {
            if (i == 101 && i2 == -1) {
                this.imagelist.add(this.imagePath);
                setAdapter();
                return;
            }
            return;
        }
        Uri data = intent.getData();
        if (i != 3 || data == null) {
            return;
        }
        Cursor query = getContentResolver().query(data, null, null, null, null, null);
        if (query != null) {
            try {
                if (query.moveToFirst()) {
                    String string = query.getString(query.getColumnIndex("_display_name"));
                    Log.i(TAG, "Display Name: " + string);
                    int columnIndex = query.getColumnIndex("_size");
                    Log.i(TAG, "Size: " + (!query.isNull(columnIndex) ? query.getString(columnIndex) : "Unknown"));
                    this.tempFile = FileUtils.saveTempFile(string, this, data);
                    new VideoCompressor().execute(new Void[0]);
                }
            } finally {
                if (query != null) {
                    query.close();
                }
            }
        }
    }

    class VideoCompressor extends AsyncTask<Void, Void, Boolean> {
        private final ProgressDialog dialog;

        VideoCompressor() {
            this.dialog = new ProgressDialog(AddTestimonial.this.context);
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            super.onPreExecute();
            this.dialog.setMessage("Compressing video please wait");
            this.dialog.setCanceledOnTouchOutside(false);
            this.dialog.show();
            Log.d(AddTestimonial.TAG, "Start video compression");
            AddTestimonial.this.tvStatus.setText("Before Compreesion file size : " + ((AddTestimonial.this.tempFile.length() / 1024) / 1024) + "MB\n");
            AddTestimonial.this.compressedFile = new File(com.conceptglobal.pmc.utils.FileUtils.getDataDir(PMCApplication.getContext()).getAbsolutePath() + File.separator + ".VideoCompressor/Compressed Videos/", "VIDEO_" + new SimpleDateFormat("yyyyMMdd_HHmmss", Locale.US).format(new Date()) + ".mp4");
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Boolean doInBackground(Void... voidArr) {
            return Boolean.valueOf(MediaController.getInstance().convertVideo(AddTestimonial.this.tempFile.getPath(), AddTestimonial.this.compressedFile.getPath()));
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Boolean bool) {
            super.onPostExecute((VideoCompressor) bool);
            if (this.dialog.isShowing() && !AddTestimonial.this.isFinishing()) {
                this.dialog.dismiss();
            }
            if (bool.booleanValue()) {
                Log.d(AddTestimonial.TAG, "Compression successfully!");
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00c6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String getFilePath(android.content.Context r11, android.net.Uri r12) throws java.net.URISyntaxException {
        /*
            android.content.Context r0 = r11.getApplicationContext()
            boolean r0 = android.provider.DocumentsContract.isDocumentUri(r0, r12)
            r1 = 0
            if (r0 == 0) goto L99
            boolean r0 = isExternalStorageDocument(r12)
            java.lang.String r2 = ":"
            r3 = 1
            if (r0 == 0) goto L3f
            java.lang.String r11 = android.provider.DocumentsContract.getDocumentId(r12)
            java.lang.String[] r11 = r11.split(r2)
            java.lang.StringBuilder r12 = new java.lang.StringBuilder
            r12.<init>()
            android.content.Context r0 = com.conceptglobal.pmc.PMCApplication.getContext()
            java.io.File r0 = com.conceptglobal.pmc.utils.FileUtils.getDataDir(r0)
            java.lang.String r0 = r0.getAbsolutePath()
            r12.append(r0)
            java.lang.String r0 = "/"
            r12.append(r0)
            r11 = r11[r3]
            r12.append(r11)
            java.lang.String r11 = r12.toString()
            return r11
        L3f:
            boolean r0 = isDownloadsDocument(r12)
            if (r0 == 0) goto L5c
            java.lang.String r12 = android.provider.DocumentsContract.getDocumentId(r12)
            java.lang.String r0 = "content://downloads/public_downloads"
            android.net.Uri r0 = android.net.Uri.parse(r0)
            java.lang.Long r12 = java.lang.Long.valueOf(r12)
            long r2 = r12.longValue()
            android.net.Uri r12 = android.content.ContentUris.withAppendedId(r0, r2)
            goto L99
        L5c:
            boolean r0 = isMediaDocument(r12)
            if (r0 == 0) goto L99
            java.lang.String r0 = android.provider.DocumentsContract.getDocumentId(r12)
            java.lang.String[] r0 = r0.split(r2)
            r2 = 0
            r4 = r0[r2]
            java.lang.String r5 = "image"
            boolean r5 = r5.equals(r4)
            if (r5 == 0) goto L78
            android.net.Uri r12 = android.provider.MediaStore.Images.Media.EXTERNAL_CONTENT_URI
            goto L8d
        L78:
            java.lang.String r5 = "video"
            boolean r5 = r5.equals(r4)
            if (r5 == 0) goto L83
            android.net.Uri r12 = android.provider.MediaStore.Video.Media.EXTERNAL_CONTENT_URI
            goto L8d
        L83:
            java.lang.String r5 = "audio"
            boolean r4 = r5.equals(r4)
            if (r4 == 0) goto L8d
            android.net.Uri r12 = android.provider.MediaStore.Audio.Media.EXTERNAL_CONTENT_URI
        L8d:
            java.lang.String[] r4 = new java.lang.String[r3]
            r0 = r0[r3]
            r4[r2] = r0
            java.lang.String r0 = "_id=?"
            r6 = r12
            r8 = r0
            r9 = r4
            goto L9c
        L99:
            r6 = r12
            r8 = r1
            r9 = r8
        L9c:
            java.lang.String r12 = "content"
            java.lang.String r0 = r6.getScheme()
            boolean r12 = r12.equalsIgnoreCase(r0)
            if (r12 == 0) goto Lc6
            java.lang.String r12 = "_data"
            java.lang.String[] r7 = new java.lang.String[]{r12}
            android.content.ContentResolver r5 = r11.getContentResolver()     // Catch: java.lang.Exception -> Ld7
            r10 = 0
            android.database.Cursor r11 = r5.query(r6, r7, r8, r9, r10)     // Catch: java.lang.Exception -> Ld7
            int r12 = r11.getColumnIndexOrThrow(r12)     // Catch: java.lang.Exception -> Ld7
            boolean r0 = r11.moveToFirst()     // Catch: java.lang.Exception -> Ld7
            if (r0 == 0) goto Ld7
            java.lang.String r11 = r11.getString(r12)     // Catch: java.lang.Exception -> Ld7
            return r11
        Lc6:
            java.lang.String r11 = "file"
            java.lang.String r12 = r6.getScheme()
            boolean r11 = r11.equalsIgnoreCase(r12)
            if (r11 == 0) goto Ld7
            java.lang.String r11 = r6.getPath()
            return r11
        Ld7:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.fragments.AddTestimonial.getFilePath(android.content.Context, android.net.Uri):java.lang.String");
    }

    public static boolean isExternalStorageDocument(Uri uri) {
        return "com.android.externalstorage.documents".equals(uri.getAuthority());
    }

    public static boolean isDownloadsDocument(Uri uri) {
        return "com.android.providers.downloads.documents".equals(uri.getAuthority());
    }

    public static boolean isMediaDocument(Uri uri) {
        return "com.android.providers.media.documents".equals(uri.getAuthority());
    }

    public void hideLoader() {
        runOnUiThread(new Runnable() { // from class: com.conceptglobal.pmc.fragments.AddTestimonial.17
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (AddTestimonial.this.progressdialog != null && AddTestimonial.this.progressdialog.isShowing()) {
                        AddTestimonial.this.progressdialog.dismiss();
                    }
                    AddTestimonial.this.progressdialog = null;
                } catch (Exception e) {
                    PLog.e(AddTestimonial.TAG, e);
                }
            }
        });
    }
}

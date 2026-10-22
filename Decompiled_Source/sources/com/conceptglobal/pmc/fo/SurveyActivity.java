package com.conceptglobal.pmc.fo;

import android.app.AlertDialog;
import android.app.DatePickerDialog;
import android.app.Dialog;
import android.app.LocalActivityManager;
import android.content.BroadcastReceiver;
import android.content.ContentValues;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDoneException;
import android.graphics.drawable.ColorDrawable;
import android.location.Location;
import android.os.Bundle;
import android.text.Editable;
import android.text.Html;
import android.text.InputFilter;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ScrollView;
import android.widget.TabHost;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.app.ActivityCompat;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.Fragment;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.conceptglobal.imaterialdesign.widget.FloatingActionButton;
import com.conceptglobal.pmc.BaseActivity;
import com.conceptglobal.pmc.MainHomePageActivity;
import com.conceptglobal.pmc.adapter.ActivityDisplayAdapter;
import com.conceptglobal.pmc.adapter.CompanyDisplayAdapter;
import com.conceptglobal.pmc.adapter.CropDisplayAdapter;
import com.conceptglobal.pmc.adapter.GridImageAdapter;
import com.conceptglobal.pmc.adapter.GridVideoAdapter;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.common.ListPopupOne;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.DataBaseHandler;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.database.InsertDataIntoDB;
import com.conceptglobal.pmc.fragments.AddFarmer;
import com.conceptglobal.pmc.fragments.AddRetailer;
import com.conceptglobal.pmc.fragments.AttributesDynamicTableFarmatFragment;
import com.conceptglobal.pmc.fragments.AttributesTableFarmatFragment;
import com.conceptglobal.pmc.interfaces.AttributeEventListener;
import com.conceptglobal.pmc.interfaces.OnCompleteListener;
import com.conceptglobal.pmc.interfaces.OnLocationFoundListener;
import com.conceptglobal.pmc.interfaces.ValidatorInterface;
import com.conceptglobal.pmc.locationprovider.FetchLocation;
import com.conceptglobal.pmc.model.ActivityModel;
import com.conceptglobal.pmc.model.AssignmentActivityDetailsModel;
import com.conceptglobal.pmc.model.AssignmentVisitDetails;
import com.conceptglobal.pmc.model.AttributeModel;
import com.conceptglobal.pmc.model.DealerCompanyMapping;
import com.conceptglobal.pmc.model.DynamicFields;
import com.conceptglobal.pmc.model.FarmerCropMapping;
import com.conceptglobal.pmc.model.FarmerDetails;
import com.conceptglobal.pmc.model.FarmerMaster;
import com.conceptglobal.pmc.model.ImageDetails;
import com.conceptglobal.pmc.model.LastVisitModel;
import com.conceptglobal.pmc.model.LocationInfo;
import com.conceptglobal.pmc.model.PictureReportingData;
import com.conceptglobal.pmc.model.TerritoryMaster;
import com.conceptglobal.pmc.promotions.activity.VideoCapureActivityCopy2;
import com.conceptglobal.pmc.service.SyncDataService;
import com.conceptglobal.pmc.utils.CompressHelper;
import com.conceptglobal.pmc.utils.CompressListener;
import com.conceptglobal.pmc.utils.ConstantDeclarations;
import com.conceptglobal.pmc.utils.CustomActionBar;
import com.conceptglobal.pmc.utils.Encryption;
import com.conceptglobal.pmc.utils.ImageCompressionAsyncTask;
import com.conceptglobal.pmc.utils.LabelUtils;
import com.conceptglobal.pmc.utils.ListviewFillToParent;
import com.conceptglobal.pmc.utils.LocationUtils;
import com.conceptglobal.pmc.utils.PLog;
import com.conceptglobal.pmc.utils.SendDataServiceUtil;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import com.conceptglobal.pmcdeepakfertilizers.R;
import io.fabric.sdk.android.services.common.AbstractSpiCall;
import java.io.File;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public class SurveyActivity extends BaseActivity implements View.OnClickListener, AdapterView.OnItemClickListener, OnCompleteListener, AttributeEventListener, CompressListener {
    private static final int DATEDIALOGID = 0;
    private static final int DATEDIALOGID_YEARLESS = 1;
    private static final int GETATTRIBUTEDONE = 3;
    private static final int GETCUSTOMER = 3;
    private static final int GETNEWACTIVITY = 2;
    private static final int GETRETAILERLIST = 10;
    private static final int INITIALCROPID = -1;
    private static final String TAG = "SurveyActivity";
    private static final String TODO_TAG = "TODO";
    public static Context context;
    private int activityAssignmentId;
    private int activityId;
    private ImageView activityImage;
    private String activityName;
    private ActivityDisplayAdapter adapterActivities;
    private CompanyDisplayAdapter adapterCompany;
    private CropDisplayAdapter adapterCrops;
    private AssignmentActivityDetailsModel assignmentDetals;
    private int assignmentId;
    String bindQuery;
    private Button btnDealer;
    private Button btnDiscription;
    private Button btnInactive;
    private ImageView btnLatLng;
    private Button btnSave;
    private Button btnTerritoryDetails;
    Button btnViewHistory;
    private Button btnVisit;
    private int consentflag;
    private TextView custDetailsText;
    private ContentValues cv;
    protected Dialog d_remarks;
    StringBuilder dynamicColumnnames;
    private EditText etCropAccr;
    private EditText etCropDos;
    private EditText etCropName;
    private EditText etCultivated;
    private EditText etDiscription;
    private EditText etDistrict;
    private EditText etFarmerAddress;
    private EditText etFarmerConumber;
    private EditText etFarmerFathername;
    private EditText etFarmerLandline;
    private EditText etFarmerLandmark;
    private EditText etFarmerMobile;
    private EditText etFarmerName;
    private EditText etFarmerSurname;
    private EditText etLeasedin;
    private EditText etLeasedout;
    private EditText etOwned;
    private EditText etState;
    private EditText etTaluka;
    private EditText etTotalLandHolding;
    private EditText etVillage;
    private FarmerDetails farmerDetailsListFinal;
    private FarmerMaster farmerMaster;
    private List<Fragment> fragmentsList;
    private TextView fullDetailsBtn;
    private GetDataFromDB getDataFromDB;
    private GridView gridView;
    private GridImageAdapter imageAdapter;
    private File imageFile;
    private long imageId;
    private String imagePath;
    private ArrayList<String> imagelist;
    private List<ImageDetails> images;
    private Intent intentGetData;
    private boolean isImageDeleted;
    private List<LastVisitModel> lastVisitData;
    private LinkedHashMap<String, List<LastVisitModel>> lastVisitModelHash;
    private List<ActivityModel> listActivities;
    private List<AttributeModel> listAttributes_Assgnmt;
    private List<DealerCompanyMapping> listDealerCompanies;
    private List<FarmerCropMapping> listFarmerCrops;
    private LinearLayout llLastvisitBody;
    private LinearLayout lladdActivities;
    private ListView lvActivity;
    private ListView lvCrops;
    private ListView lvLastVisitData;
    private LinearLayout mAddDynamicLinear;
    private int mDay;
    private ArrayList<EditText> mEntryArr;
    private ArrayList<EditText> mEntryArrIds;
    private List<EditText> mEntryArrIds_Assgnmt;
    private List<EditText> mEntryArr_Assgnmt;
    private ArrayList<TextView> mEntrySpinnerArr;
    private int mMonth;
    private ArrayList<TextView> mOprDatesArr;
    private GridView mVideoGridView;
    private ImageDetails mVideoThumbNail;
    private int mYear;
    private ArrayList<TextView> mattributesnamesArr;
    private List<String> mentryValues;
    private MenuItem miDraft;
    private Queries queries;
    private String[] remarkNames;
    private String[] remarkids;
    private String replacestring;
    private ScrollView scrollView;
    private int segmentId;
    private int selSegmentID;
    private ScrollView slLastVistdata;
    private TabHost tabHost;
    private TextView territoryDetailsText;
    private TextView tvAddCrop;
    TextView tvAlert;
    private TextView tvCropid;
    private TextView tvFarmer;
    private TextView tvIsBayerFarmer;
    private TextView tvLatitude;
    private TextView tvLongitude;
    private TextView tvRetailers;
    private TextView tvVideos;
    private TextView tvpictures;
    private TextView txt;
    private GridVideoAdapter videoAdapter;
    private ArrayList<String> videoList;
    private List<ImageDetails> videos;
    private AssignmentVisitDetails visitDetails;
    private WebView webView;
    private File zipFilePath;
    private String tag = TAG;
    private int dateDialogID = 0;
    private String farmerID = "";
    private int packageId = 0;
    private HashMap<String, String> hAttributes = null;
    private String selCustomerId = "";
    private String segmentName = "";
    private ArrayList<DynamicFields> attributesArry = null;
    private int layoutId = 0;
    private int mForOperations = -1;
    private int mForDates = -1;
    private int datePos = 0;
    private String mFiledStr = "";
    private String updateDOS = null;
    private boolean isMIActivity = false;
    private boolean isTableViewActivity = false;
    private boolean isDynamicTableViewActivity = false;
    private String locationProvider = "";
    private String GPSTimeStamp = "";
    LocationUtils mLocationUtils = new LocationUtils();
    private final TextWatcher tvLatitudeListener = new TextWatcher() { // from class: com.conceptglobal.pmc.fo.SurveyActivity.4
        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            if (editable.toString().trim().length() > 0) {
                SurveyActivity.this.tvLatitude.setError(null);
                SurveyActivity.this.tvLongitude.setError(null);
            }
        }
    };
    View.OnClickListener operationListener = new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.SurveyActivity.5
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ListPopupOne listPopupOne = new ListPopupOne(SurveyActivity.this, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectOneDropDownTitle()), ((DynamicFields) SurveyActivity.this.attributesArry.get(view.getId())).getDbquery(), view, (TextView) SurveyActivity.this.mEntryArrIds.get(view.getId()));
            listPopupOne.getWindow().getAttributes().windowAnimations = R.style.PauseDialogAnimation;
            listPopupOne.show();
            listPopupOne.getWindow().setSoftInputMode(3);
        }
    };
    View.OnClickListener datesListener = new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.SurveyActivity.17
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SurveyActivity.this.datePos = view.getId();
            SurveyActivity.this.txt = (TextView) view;
            SurveyActivity.this.showDialog(0);
        }
    };
    View.OnClickListener datesListenerYearless = new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.SurveyActivity.18
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SurveyActivity.this.datePos = view.getId();
            SurveyActivity.this.showDialog(1);
        }
    };
    CompressListener listener = new CompressListener() { // from class: com.conceptglobal.pmc.fo.SurveyActivity.21
        @Override // com.conceptglobal.pmc.utils.CompressListener
        public void onComprssCompleteListener(String str) {
            SurveyActivity.this.imagelist.add(str);
            SurveyActivity.this.setAdapter();
        }
    };
    private DatePickerDialog.OnDateSetListener mDateSetListener = new DatePickerDialog.OnDateSetListener() { // from class: com.conceptglobal.pmc.fo.SurveyActivity.26
        @Override // android.app.DatePickerDialog.OnDateSetListener
        public void onDateSet(DatePicker datePicker, int i, int i2, int i3) {
            String str;
            String str2;
            SurveyActivity.this.mYear = i;
            SurveyActivity.this.mMonth = i2;
            SurveyActivity.this.mDay = i3;
            try {
                if (new SimpleDateFormat("yyyy-MM-dd").parse(i + "-" + (i2 + 1) + "-" + i3).compareTo(new Date()) < 0) {
                    if (SurveyActivity.this.dateDialogID == 0) {
                        if (SurveyActivity.this.mMonth + 1 < 10) {
                            str = "0" + (SurveyActivity.this.mMonth + 1);
                        } else {
                            str = (SurveyActivity.this.mMonth + 1) + "";
                        }
                        if (SurveyActivity.this.mDay < 10) {
                            str2 = "0" + SurveyActivity.this.mDay;
                        } else {
                            str2 = SurveyActivity.this.mDay + "";
                        }
                        SurveyActivity.this.etCropDos.setText(str2 + "-" + str + "-" + SurveyActivity.this.mYear);
                        return;
                    }
                    return;
                }
                Toast.makeText(SurveyActivity.this.getApplicationContext(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectProperDate()), 1).show();
            } catch (Exception e) {
                PLog.e(SurveyActivity.TAG, e);
            }
        }
    };
    private DatePickerDialog.OnDateSetListener mDateSetListener_Yearless = new DatePickerDialog.OnDateSetListener() { // from class: com.conceptglobal.pmc.fo.SurveyActivity.27
        @Override // android.app.DatePickerDialog.OnDateSetListener
        public void onDateSet(DatePicker datePicker, int i, int i2, int i3) {
            SurveyActivity.this.mYear = i;
            SurveyActivity.this.mMonth = i2;
            SurveyActivity.this.mDay = i3;
            try {
                SurveyActivity.this.updateDisplay_yearless();
            } catch (Exception e) {
                PLog.e(SurveyActivity.this.tag, e);
            }
        }
    };
    private BroadcastReceiver message = new BroadcastReceiver() { // from class: com.conceptglobal.pmc.fo.SurveyActivity.28
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context2, Intent intent) {
            String stringExtra = intent.getStringExtra("deletedImage");
            SurveyActivity.this.imagelist.remove(stringExtra);
            SurveyActivity.this.isImageDeleted = true;
            try {
                File file = new File(stringExtra);
                if (file.exists()) {
                    file.delete();
                }
            } catch (Exception e) {
                PLog.e(SurveyActivity.TAG, e);
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
        setContentView(R.layout.survey_activity_tabs);
        context = this;
        ConstantsPMC.getInstance().getLanguageConfigurations(context);
        PLog.location("Navigation", "onCreate", TODO_TAG, UtilDeclarations.getDateTime());
        initialization();
        getData();
        settingTabs();
        setLayoutData();
        settingData();
        int i = this.segmentId;
        if (i != 4 && i != 10) {
            createOperationAttributes();
        }
        setListeners();
        int i2 = this.segmentId;
        if (i2 != 4 && i2 != 10) {
            bindOperations();
        }
        this.gridView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.conceptglobal.pmc.fo.SurveyActivity.1
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i3, long j) {
                SurveyActivity surveyActivity = SurveyActivity.this;
                surveyActivity.captureImage(((ImageDetails) surveyActivity.images.get(i3)).getImageId());
            }
        });
        ((FloatingActionButton) findViewById(R.id.fab)).setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.SurveyActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (SurveyActivity.this.images.size() <= 4) {
                    SurveyActivity.this.captureImage(0L);
                } else {
                    Toast.makeText(SurveyActivity.this.getApplication(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_maxImagesToast()), 1).show();
                }
            }
        });
        FloatingActionButton floatingActionButton = (FloatingActionButton) findViewById(R.id.fab2);
        floatingActionButton.setVisibility(8);
        floatingActionButton.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.SurveyActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ActivityCompat.checkSelfPermission(SurveyActivity.this, "android.permission.CAMERA") == 0) {
                    if (SurveyActivity.this.videos.size() < 5) {
                        SurveyActivity.this.captureVideo(0L);
                        return;
                    } else {
                        Toast.makeText(SurveyActivity.this.getApplication(), "only 5 video allowed", 1).show();
                        return;
                    }
                }
                ActivityCompat.requestPermissions(SurveyActivity.this, new String[]{"android.permission.CAMERA"}, 101);
            }
        });
        LocalBroadcastManager.getInstance(this).registerReceiver(this.message, new IntentFilter("send"));
    }

    private void newChangesReadOnly() {
        setEditableFalse(this.etFarmerMobile);
        setEditableFalse(this.etFarmerLandline);
        setEditableFalse(this.etFarmerConumber);
        setEditableFalse(this.etFarmerLandmark);
        setEditableFalse(this.etOwned);
        setEditableFalse(this.etLeasedin);
        setEditableFalse(this.etTotalLandHolding);
        setEditableFalse(this.etLeasedout);
        this.tvRetailers.setClickable(false);
    }

    private void setEditableFalse(EditText editText) {
        editText.setFocusable(false);
        editText.setClickable(false);
        editText.setEnabled(false);
        editText.setBackgroundDrawable(getResources().getDrawable(R.drawable.edt_disable));
    }

    private void setActionBar() {
        getSupportActionBar().setDisplayOptions(16);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        getSupportActionBar().setHomeButtonEnabled(true);
        getSupportActionBar().setDisplayShowHomeEnabled(true);
        getSupportActionBar().setCustomView(R.layout.header_actionbar);
        getSupportActionBar().setBackgroundDrawable(new ColorDrawable(getResources().getColor(R.color.actionbar_blue)));
        TextView textView = (TextView) findViewById(R.id.tv_title_header_actionbar);
        ((TextView) findViewById(R.id.tv_subtitle_header_actionbar)).setVisibility(8);
        textView.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_addFarmerDetailsText()));
    }

    private void initialization() {
        this.intentGetData = getIntent();
        this.queries = Queries.getInstance();
        this.getDataFromDB = GetDataFromDB.getInstance();
        this.dynamicColumnnames = new StringBuilder();
        this.tabHost = (TabHost) findViewById(R.id.tabhost);
        this.images = new ArrayList();
        this.videos = new ArrayList();
        this.etLeasedin = (EditText) this.tabHost.findViewById(R.id.et_leasedin_farmer_acreage);
        this.etTotalLandHolding = (EditText) this.tabHost.findViewById(R.id.et_land_holding_farmer_acreage);
        this.etLeasedout = (EditText) this.tabHost.findViewById(R.id.et_leasedout_farmer_acreage);
        this.etCultivated = (EditText) this.tabHost.findViewById(R.id.et_cultivated_farmer_acreage);
        this.tvAddCrop = (TextView) this.tabHost.findViewById(R.id.btn_add_crop_farmer_acreage);
        this.lvCrops = (ListView) this.tabHost.findViewById(R.id.lv_crops_farmer_acreage);
        this.tvFarmer = (TextView) this.tabHost.findViewById(R.id.tv_farmer_farmer_other_details);
        this.btnDealer = (Button) this.tabHost.findViewById(R.id.tv_dealer_farmer_other_details);
        this.btnDiscription = (Button) this.tabHost.findViewById(R.id.tv_discription_farmer_other_details);
        this.etDiscription = (EditText) this.tabHost.findViewById(R.id.et_discription_farmer_other_details);
        this.tvIsBayerFarmer = (TextView) this.tabHost.findViewById(R.id.tv_bayerfarmer_other_details);
        this.tvRetailers = (TextView) this.tabHost.findViewById(R.id.tv_retailers_farmer_other_details);
        Button button = (Button) this.tabHost.findViewById(R.id.btn_save_farmer_other_details);
        this.btnSave = button;
        button.setVisibility(8);
        Button button2 = (Button) this.tabHost.findViewById(R.id.btn_inactive_farmer_other_details);
        this.btnInactive = button2;
        button2.setVisibility(8);
        this.btnVisit = (Button) this.tabHost.findViewById(R.id.btn_visit_farmer_other_details);
        this.lvLastVisitData = (ListView) findViewById(R.id.lv_list_alert);
        this.llLastvisitBody = (LinearLayout) findViewById(R.id.llLastvisitBody);
        this.slLastVistdata = (ScrollView) findViewById(R.id.svLastVisitData);
        this.btnLatLng = (ImageView) this.tabHost.findViewById(R.id.btn_get_latlong_farmer_personal_detailss);
        this.tvLatitude = (TextView) this.tabHost.findViewById(R.id.tv_latitude_personal_detailss);
        this.tvLongitude = (TextView) this.tabHost.findViewById(R.id.tv_longitude_personal_detailss);
        this.tvpictures = (TextView) this.tabHost.findViewById(R.id.pictures);
        this.tvVideos = (TextView) this.tabHost.findViewById(R.id.videos);
        TextView textView = (TextView) this.tabHost.findViewById(R.id.txtSelectTerritory);
        this.territoryDetailsText = textView;
        textView.setVisibility(0);
        Button button3 = (Button) this.tabHost.findViewById(R.id.btnSelectTerritory);
        this.btnTerritoryDetails = button3;
        button3.setVisibility(0);
        this.webView = (WebView) findViewById(R.id.webView);
        this.activityImage = (ImageView) this.tabHost.findViewById(R.id.imageViewPicture);
        this.gridView = (GridView) this.tabHost.findViewById(R.id.grid_view_farmer);
        this.mVideoGridView = (GridView) this.tabHost.findViewById(R.id.grid_view_farmer_copy2);
        this.imagelist = new ArrayList<>();
        this.farmerMaster = new FarmerMaster();
        this.mentryValues = new ArrayList();
        this.fullDetailsBtn = (TextView) this.tabHost.findViewById(R.id.textViewFullDetails);
        this.lastVisitModelHash = new LinkedHashMap<>();
        this.scrollView = (ScrollView) findViewById(R.id.scrollView1);
        this.tvAlert = (TextView) this.tabHost.findViewById(R.id.tv_list_alert);
    }

    private void settingTabs() {
        LocalActivityManager localActivityManager = new LocalActivityManager(this, false);
        localActivityManager.dispatchCreate(null);
        this.tabHost.setup(localActivityManager);
        addTab("Survey", R.drawable.ic_activity_wight, getResources().getString(R.string.pmc_tag3));
        addTab(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_finishTabSelfAssignText()), R.drawable.ic_others_wight, getResources().getString(R.string.pmc_tag4));
        if (this.segmentId == 3) {
            this.fullDetailsBtn.setVisibility(8);
        } else {
            this.fullDetailsBtn.setVisibility(0);
        }
    }

    private void addTab(String str, int i, String str2) {
        Intent intent;
        TabHost.TabSpec newTabSpec = this.tabHost.newTabSpec(str);
        View inflate = LayoutInflater.from(this).inflate(R.layout.tab_indicator, (ViewGroup) this.tabHost.getTabWidget(), false);
        ((TextView) inflate.findViewById(R.id.title_tab_indicator)).setText(str);
        ((ImageView) inflate.findViewById(R.id.icon_tab_indicator)).setImageResource(i);
        newTabSpec.setIndicator(inflate);
        if (str2.equalsIgnoreCase(getResources().getString(R.string.pmc_tag1))) {
            newTabSpec.setContent(R.id.tab1);
        } else if (str2.equalsIgnoreCase(getResources().getString(R.string.pmc_tag2))) {
            newTabSpec.setContent(R.id.tab2);
        } else if (str2.equalsIgnoreCase(getResources().getString(R.string.pmc_tag3))) {
            try {
                if (this.isMIActivity) {
                    Intent intent2 = new Intent(context, (Class<?>) MarketAttributesActivity.class);
                    intent2.putExtra(ConstantDeclarations.getInstance().getKEYFARMERID(), this.farmerID);
                    intent2.putExtra(ConstantDeclarations.getInstance().getKeyIsMba(), 0);
                    intent2.putExtra("SEGMENTID", this.segmentId);
                    intent2.putExtra("ISSELFASSIGN", 0);
                    intent2.putExtra("ACTIVITYNAME", this.activityName);
                    intent2.putExtra("AssignmentId", this.assignmentId);
                    intent2.putExtra("ActivityAssignmentId", this.activityAssignmentId);
                    intent2.putExtra(ConstantDeclarations.getInstance().getKEYACTIVITYID(), this.activityId);
                    intent2.putExtra(ConstantDeclarations.getInstance().getKEYISPLANNED(), 1);
                    Bundle bundle = new Bundle();
                    bundle.putParcelable("MODELCLASS", this.assignmentDetals);
                    intent2.putExtras(bundle);
                    intent2.addFlags(131072).addFlags(8192);
                    newTabSpec.setContent(intent2);
                } else {
                    Intent intent3 = new Intent(context, (Class<?>) SurveyAttributesActivity.class);
                    try {
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    if (this.isTableViewActivity) {
                        intent = new Intent(context, (Class<?>) AttributesTableViewActivity.class);
                    } else {
                        if (this.isDynamicTableViewActivity) {
                            intent = new Intent(context, (Class<?>) AttributesDynmicTableViewActivity.class);
                        }
                        intent3.putExtra(ConstantDeclarations.getInstance().getKEYFARMERID(), this.farmerID);
                        intent3.putExtra(ConstantDeclarations.getInstance().getKeyIsMba(), 0);
                        intent3.putExtra("SEGMENTID", this.segmentId);
                        intent3.putExtra("ISSELFASSIGN", 0);
                        intent3.putExtra("ACTIVITYNAME", this.activityName);
                        intent3.putExtra("AssignmentId", this.assignmentId);
                        intent3.putExtra("ActivityAssignmentId", this.activityAssignmentId);
                        intent3.putExtra(ConstantDeclarations.getInstance().getKEYACTIVITYID(), this.activityId);
                        intent3.putExtra(ConstantDeclarations.getInstance().getKEYISPLANNED(), 1);
                        Bundle bundle2 = new Bundle();
                        bundle2.putParcelable("MODELCLASS", this.assignmentDetals);
                        intent3.putExtras(bundle2);
                        intent3.addFlags(131072).addFlags(8192);
                        newTabSpec.setContent(intent3);
                    }
                    intent3 = intent;
                    intent3.putExtra(ConstantDeclarations.getInstance().getKEYFARMERID(), this.farmerID);
                    intent3.putExtra(ConstantDeclarations.getInstance().getKeyIsMba(), 0);
                    intent3.putExtra("SEGMENTID", this.segmentId);
                    intent3.putExtra("ISSELFASSIGN", 0);
                    intent3.putExtra("ACTIVITYNAME", this.activityName);
                    intent3.putExtra("AssignmentId", this.assignmentId);
                    intent3.putExtra("ActivityAssignmentId", this.activityAssignmentId);
                    intent3.putExtra(ConstantDeclarations.getInstance().getKEYACTIVITYID(), this.activityId);
                    intent3.putExtra(ConstantDeclarations.getInstance().getKEYISPLANNED(), 1);
                    Bundle bundle22 = new Bundle();
                    bundle22.putParcelable("MODELCLASS", this.assignmentDetals);
                    intent3.putExtras(bundle22);
                    intent3.addFlags(131072).addFlags(8192);
                    newTabSpec.setContent(intent3);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
                PLog.e(TAG, e2);
            }
        } else if (str2.equalsIgnoreCase(getResources().getString(R.string.pmc_tag4))) {
            newTabSpec.setContent(R.id.tab4);
        } else if (str2.equalsIgnoreCase(getResources().getString(R.string.pmc_tag5))) {
            newTabSpec.setContent(R.id.tab5);
        } else {
            newTabSpec.setContent(R.id.tab1);
        }
        this.tabHost.addTab(newTabSpec);
    }

    private void getData() {
        this.assignmentDetals = (AssignmentActivityDetailsModel) getIntent().getExtras().getParcelable("MODELCLASS");
        this.farmerID = this.intentGetData.getStringExtra(ConstantDeclarations.getInstance().getKEYFARMERID());
        this.intentGetData.getStringExtra(ConstantDeclarations.getInstance().getKEYVILLAGEID());
        this.activityId = this.intentGetData.getIntExtra(ConstantDeclarations.getInstance().getKEYACTIVITYID(), 0);
        this.assignmentId = this.intentGetData.getIntExtra("AssignmentId", 0);
        this.activityName = this.intentGetData.getStringExtra("ACTIVITYNAME");
        this.activityAssignmentId = this.intentGetData.getIntExtra("ActivityAssignmentId", 0);
        this.segmentId = this.intentGetData.getIntExtra("SEGMENTID", 0);
        this.packageId = this.intentGetData.getIntExtra("PackageId", 0);
        this.segmentName = this.getDataFromDB.getSegmentName(this.segmentId);
        if (ConstantsPMC.getInstance().getIsTrainingORLive() != 2) {
            CustomActionBar.initActionBar(this, "Survey Details(" + UtilDeclarations.getApplicationVersion(context) + ")");
        } else {
            CustomActionBar.initActionBar(this, "Survey Details(" + UtilDeclarations.getApplicationVersion(context) + ")");
        }
        this.farmerDetailsListFinal = new FarmerDetails();
        this.lastVisitData = this.getDataFromDB.getLastVistData(this.queries.getLastvistFarmerData(this.farmerID, this.activityAssignmentId));
        for (int i = 0; i < this.lastVisitData.size(); i++) {
            if (this.lastVisitModelHash.get(this.lastVisitData.get(i).getLastVisitDate()) == null) {
                this.lastVisitModelHash.put(this.lastVisitData.get(i).getLastVisitDate(), new ArrayList());
                this.lastVisitModelHash.get(this.lastVisitData.get(i).getLastVisitDate()).add(this.lastVisitData.get(i));
            } else {
                this.lastVisitModelHash.get(this.lastVisitData.get(i).getLastVisitDate()).add(this.lastVisitData.get(i));
            }
        }
        try {
            this.farmerMaster.setRespondentNo(this.farmerID);
        } catch (Exception e) {
            this.farmerMaster.setRespondentNo("");
            PLog.e(this.tag, e);
        }
        this.visitDetails = this.getDataFromDB.getAssignmentVisitDetail(Queries.getInstance().getSurveyAssignmentVisitDetail(this.activityAssignmentId));
        try {
            if (this.getDataFromDB.getIFContains(Queries.getInstance().getQueryActivityType(this.activityId)) == 8) {
                this.isMIActivity = true;
            }
            String singleValue = this.getDataFromDB.getSingleValue(Queries.getInstance().getSurveyActivityDisplayType(this.activityId));
            if (singleValue != null && singleValue.equals("2")) {
                this.isTableViewActivity = true;
            } else {
                if (singleValue == null || !singleValue.equals("3")) {
                    return;
                }
                this.isDynamicTableViewActivity = true;
            }
        } catch (Exception e2) {
            PLog.e(this.tag, e2);
        }
    }

    private void setLayoutData() {
        this.tvFarmer.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_pmcFarmerInFFA()));
        this.btnDealer.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_prefDealerInFFA()));
        this.btnDiscription.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_visitDescInFFA()));
        this.etDiscription.setHint(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_addDescInFFA()));
        this.btnSave.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_draftFarmerText()));
        this.btnInactive.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_discardText()));
        this.btnVisit.setText("Complete Survey");
        this.btnVisit.setSelected(true);
        this.btnVisit.setEllipsize(TextUtils.TruncateAt.MARQUEE);
        this.btnVisit.setSingleLine(true);
        try {
            if (this.visitDetails != null) {
                int intValue = this.getDataFromDB.getIntValue(this.queries.getTerritoryDraftQuery(this.activityAssignmentId, 0L));
                if (intValue != 0) {
                    this.territoryDetailsText.setText(this.getDataFromDB.getStringValue(this.queries.getTerritoryName(intValue)));
                    this.territoryDetailsText.setTag(R.string.ENTRYID_SET, Integer.valueOf(intValue));
                }
                this.etDiscription.setText(this.visitDetails.getVisitDescription());
                if (this.visitDetails.getLatitude() != 0.0d && this.visitDetails.getLongitude() != 0.0d) {
                    this.tvLatitude.setText(this.visitDetails.getLatitude() + "");
                    this.tvLongitude.setText(this.visitDetails.getLongitude() + "");
                }
            }
            if (this.territoryDetailsText.getText().toString().equals("")) {
                List<TerritoryMaster> territoryDetails = this.getDataFromDB.getTerritoryDetails(this.queries.getTerritoryNamesListQuery(0));
                if (territoryDetails.size() == 1) {
                    this.territoryDetailsText.setText(territoryDetails.get(0).getTerritoryName());
                    this.territoryDetailsText.setTag(R.string.ENTRYID_SET, Integer.valueOf(territoryDetails.get(0).getTerritoryId()));
                }
            }
        } catch (Exception e) {
            PLog.e(TAG, e);
        }
    }

    private void settingData() {
        Calendar calendar = Calendar.getInstance();
        this.mYear = calendar.get(1);
        this.mMonth = calendar.get(2);
        this.mDay = calendar.get(5);
    }

    private void addLastVisitAcitivityAttributes(List<LastVisitModel> list) {
        LastVisitModel lastVisitModel = list.get(0);
        addLastVisitAcitivityAttributes(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getMo_FoName()), lastVisitModel.getFOName());
        addLastVisitAcitivityAttributes(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_lastVisitDataText()), lastVisitModel.getLastVisitDate());
        addLastVisitAcitivityAttributes(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_activityLastVisitText()), lastVisitModel.getActivityName());
        addLastVisitAcitivityAttributes(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_descriptioLastVisitText()), lastVisitModel.getVisitDescription());
        for (int i = 0; i < list.size(); i++) {
            LastVisitModel lastVisitModel2 = list.get(i);
            addLastVisitAcitivityAttributes(lastVisitModel2.getAttributeName(), lastVisitModel2.getAttributeValue());
        }
    }

    private void addLastVisitAcitivityAttributes(String str, String str2) {
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(0);
        linearLayout.setGravity(16);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2, 1.0f);
        layoutParams.setMargins(10, 4, 10, 0);
        linearLayout.setLayoutParams(layoutParams);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(0, -1, 1.0f);
        TextView textView = new TextView(this);
        textView.setLayoutParams(layoutParams2);
        textView.setText(str);
        textView.setGravity(3);
        textView.setTextColor(ViewCompat.MEASURED_STATE_MASK);
        textView.setPadding(getResources().getDimensionPixelSize(R.dimen.padding_2), getResources().getDimensionPixelSize(R.dimen.padding_2), getResources().getDimensionPixelSize(R.dimen.padding_2), getResources().getDimensionPixelSize(R.dimen.padding_2));
        linearLayout.addView(textView);
        TextView textView2 = new TextView(this);
        textView2.setLayoutParams(layoutParams2);
        textView2.setText(str2);
        textView2.setGravity(17);
        textView2.setBackgroundResource(R.drawable.edt_disable);
        textView2.setTextColor(ViewCompat.MEASURED_STATE_MASK);
        textView.setPadding(getResources().getDimensionPixelSize(R.dimen.padding_2), getResources().getDimensionPixelSize(R.dimen.padding_2), getResources().getDimensionPixelSize(R.dimen.padding_2), getResources().getDimensionPixelSize(R.dimen.padding_2));
        linearLayout.addView(textView2);
        this.llLastvisitBody.addView(linearLayout);
    }

    private void createOperationAttributes() {
        this.mAddDynamicLinear = (LinearLayout) findViewById(R.id.operations_dynamic_LL);
        this.hAttributes = new HashMap<>();
        this.mattributesnamesArr = new ArrayList<>();
        this.mOprDatesArr = new ArrayList<>();
        this.mEntryArr = new ArrayList<>();
        this.mEntrySpinnerArr = new ArrayList<>();
        this.mEntryArrIds = new ArrayList<>();
        int i = this.segmentId;
        if (i == 1 || i == 8) {
            this.attributesArry = this.getDataFromDB.getDynanicFields(Queries.getInstance().gettingDynamicFieldsForTransaction(ConstantsPMC.TYPE_FARMER));
        } else if (i == 2 || i == 3) {
            this.attributesArry = this.getDataFromDB.getDynanicFields(Queries.getInstance().gettingDynamicFieldsForTransaction("Dealer"));
        }
        int i2 = this.segmentId;
        if (i2 == 1) {
            this.attributesArry = this.getDataFromDB.getDynanicFields(Queries.getInstance().gettingDynamicFieldsForTransaction(ConstantsPMC.TYPE_FARMER));
        } else if (i2 == 2) {
            this.attributesArry = this.getDataFromDB.getDynanicFields(Queries.getInstance().gettingDynamicFieldsForTransaction("Dealer"));
        } else if (i2 == 3) {
            this.attributesArry = this.getDataFromDB.getDynanicFields(Queries.getInstance().gettingDynamicFieldsForTransaction(ConstantsPMC.TYPE_Distributor));
        } else if (i2 == 8) {
            this.attributesArry = this.getDataFromDB.getDynanicFields(Queries.getInstance().gettingDynamicFieldsForTransaction("Planter"));
        }
        int size = this.attributesArry.size();
        this.hAttributes.clear();
        if (size > 0) {
            int i3 = 0;
            while (i3 < size) {
                int i4 = i3;
                addOperationsDynamicLayout(this.attributesArry.get(i3).getDisplayName(), this.attributesArry.get(i3).getControlType(), this.attributesArry.get(i3).getIsMandatory(), this.attributesArry.get(i3).getDbColumnName(), this.attributesArry.get(i3).getDbquery(), this.attributesArry.get(i3).getValidationType(), this.attributesArry.get(i3).getValidationExpression(), this.attributesArry.get(i3).getMaxLength(), this.attributesArry.get(i3).getMinLength(), this.attributesArry.get(i3).getMaxValue(), this.attributesArry.get(i3).getMinValue(), this.attributesArry.get(i3).getDecimalLength(), this.mAddDynamicLinear, this.attributesArry.get(i3).getIsTransactionEditable());
                this.dynamicColumnnames.append(this.attributesArry.get(i4).getDbColumnName() + ",");
                i3 = i4 + 1;
                size = size;
            }
        }
        if (size > 0 || this.attributesArry.size() > 0) {
            StringBuilder sb = this.dynamicColumnnames;
            sb.deleteCharAt(sb.length() - 1);
            String sb2 = this.dynamicColumnnames.toString();
            int i5 = this.segmentId;
            if (i5 == 1 || i5 == 8) {
                this.bindQuery = "select " + sb2 + " from FarmerMaster where RespondentNo ='" + this.farmerID + "'";
                return;
            }
            if (i5 == 2 || i5 == 3) {
                this.bindQuery = "select " + sb2 + " from DealerMaster where contactId ='" + this.farmerID + "'";
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0334  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x03ca  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0458  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x045f  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x03d7  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0343  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void addOperationsDynamicLayout(java.lang.String r20, java.lang.String r21, java.lang.String r22, java.lang.String r23, java.lang.String r24, java.lang.String r25, java.lang.String r26, int r27, int r28, int r29, int r30, int r31, android.widget.LinearLayout r32, int r33) {
        /*
            Method dump skipped, instructions count: 1239
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.fo.SurveyActivity.addOperationsDynamicLayout(java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, int, int, int, int, int, android.widget.LinearLayout, int):void");
    }

    private void bindOperations() {
        try {
            this.mentryValues = this.getDataFromDB.getFarmerOrRetailerBindDataDynamic(this.bindQuery);
        } catch (Exception e) {
            PLog.e(TAG, e);
            return;
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
                        e2.printStackTrace();
                    }
                } else if (!this.attributesArry.get(i).getDbquery().contains("FarmerMaster")) {
                    if (this.attributesArry.get(i).getDbquery().contains("TerritoryMaster")) {
                        try {
                            this.mEntryArr.get(i).setText(GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getColumnValueWhereConditionBased("territoryName", "TerritoryMaster", "territoryId", this.mentryValues.get(i))));
                        } catch (Exception e3) {
                            PLog.e(TAG, e3);
                        }
                    } else {
                        this.mEntryArr.get(i).setText(this.mentryValues.get(i));
                    }
                } else {
                    try {
                        this.mEntryArr.get(i).setText(Encryption.decrypt(GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getColumnValueWhereConditionBased("FarmerName", "FarmerMaster", "RespondentNo", this.mentryValues.get(i)))).trim());
                    } catch (Exception e4) {
                        PLog.e(TAG, e4);
                        e4.printStackTrace();
                    }
                }
                PLog.e(TAG, e);
                return;
            }
            this.mEntryArr.get(i).setText(this.mentryValues.get(i));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setListviewForAcreages() {
        int i = this.segmentId;
        if (i == 1) {
            this.listFarmerCrops = new ArrayList();
            this.listFarmerCrops = this.getDataFromDB.getCropSelectionData(this.queries.getCropsandAcreages(this.farmerID));
            CropDisplayAdapter cropDisplayAdapter = new CropDisplayAdapter(this, this.listFarmerCrops, this.farmerID);
            this.adapterCrops = cropDisplayAdapter;
            this.lvCrops.setAdapter((ListAdapter) cropDisplayAdapter);
            ListviewFillToParent.setListViewHeightBasedOnChildren(this.lvCrops);
            return;
        }
        if (i == 2) {
            this.listDealerCompanies = new ArrayList();
            this.listDealerCompanies = this.getDataFromDB.getCompanySelectionData(Queries.getInstance().getCompaniesAndSales(this.farmerID));
            CompanyDisplayAdapter companyDisplayAdapter = new CompanyDisplayAdapter(this, this.listDealerCompanies, this.farmerID);
            this.adapterCompany = companyDisplayAdapter;
            this.lvCrops.setAdapter((ListAdapter) companyDisplayAdapter);
            ListviewFillToParent.setListViewHeightBasedOnChildren(this.lvCrops);
        }
    }

    private void setListeners() {
        this.btnSave.setOnClickListener(this);
        this.btnInactive.setOnClickListener(this);
        this.btnVisit.setOnClickListener(this);
        this.tvRetailers.setOnClickListener(this);
        this.btnLatLng.setOnClickListener(this);
        this.activityImage.setOnClickListener(this);
        this.fullDetailsBtn.setOnClickListener(this);
        this.tabHost.setOnTabChangedListener(new TabHost.OnTabChangeListener() { // from class: com.conceptglobal.pmc.fo.SurveyActivity.6
            @Override // android.widget.TabHost.OnTabChangeListener
            public void onTabChanged(String str) {
                int currentTab = SurveyActivity.this.tabHost.getCurrentTab();
                if (currentTab != 2) {
                    SurveyActivity.this.miDraft.setVisible(false);
                } else {
                    SurveyActivity.this.miDraft.setVisible(true);
                }
                if (currentTab == 1) {
                    if (!SurveyActivity.this.isMIActivity) {
                        if (!SurveyActivity.this.isTableViewActivity) {
                            if (SurveyActivity.this.isDynamicTableViewActivity) {
                                AttributesDynmicTableViewActivity.methodToGetData(SurveyActivity.context);
                                return;
                            } else {
                                SurveyAttributesActivity.methodToGetData(SurveyActivity.context);
                                return;
                            }
                        }
                        AttributesTableViewActivity.methodToGetData(SurveyActivity.context);
                        return;
                    }
                    MarketAttributesActivity.methodToGetData(SurveyActivity.context);
                }
            }
        });
        this.territoryDetailsText.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.SurveyActivity.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ListPopupOne listPopupOne = new ListPopupOne(SurveyActivity.this, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectText()) + " Territory", " SELECT territoryId,territoryName FROM TerritoryMaster where isActive ='True' or isActive=1", view, SurveyActivity.this.territoryDetailsText);
                listPopupOne.getWindow().getAttributes().windowAnimations = R.style.PauseDialogAnimation;
                listPopupOne.show();
                listPopupOne.getWindow().setSoftInputMode(3);
            }
        });
    }

    private void validateCustomerInfo() {
        if (!validation() || this.cv.size() <= 0) {
            return;
        }
        this.cv.put("serverupdatedstatus", "false");
        SQLiteDatabase openDatabase = DataBaseHandler.getInstance().openDatabase();
        int i = this.segmentId;
        if (i == 1 || i == 8) {
            this.cv.put("Status", (Integer) 1);
            openDatabase.update("FarmerMaster", this.cv, "RespondentNo ='" + this.farmerID + "'", null);
            return;
        }
        if (i == 2 || i == 3) {
            this.cv.put("StatusReason", "1");
            openDatabase.update("DealerMaster", this.cv, "ContactId ='" + this.farmerID + "'", null);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x0a7a A[Catch: Exception -> 0x0c02, TryCatch #2 {Exception -> 0x0c02, blocks: (B:138:0x0075, B:140:0x008f, B:142:0x00ac, B:144:0x00ba, B:146:0x00cc, B:149:0x00df, B:151:0x0105, B:153:0x026b, B:155:0x027f, B:157:0x0299, B:159:0x02b8, B:160:0x02c3, B:162:0x02d5, B:164:0x02e9, B:166:0x0309, B:169:0x0347, B:170:0x0354, B:172:0x038b, B:174:0x03c6, B:175:0x03d1, B:177:0x03df, B:179:0x03ed, B:181:0x0403, B:183:0x0433, B:187:0x0439, B:196:0x0446, B:198:0x0481, B:200:0x048f, B:202:0x049d, B:204:0x04b3, B:206:0x04d5, B:208:0x0514, B:210:0x0521, B:212:0x052f, B:214:0x053d, B:216:0x0553, B:218:0x0575, B:220:0x05b2, B:222:0x0138, B:223:0x0145, B:225:0x015f, B:227:0x0167, B:230:0x0170, B:232:0x0178, B:236:0x01ec, B:238:0x01fa, B:239:0x0215, B:241:0x022f, B:242:0x025f, B:243:0x0183, B:244:0x01b7, B:13:0x0630, B:15:0x064a, B:17:0x0658, B:19:0x066a, B:22:0x067d, B:24:0x06a3, B:26:0x080b, B:28:0x081d, B:30:0x082f, B:32:0x084f, B:35:0x088d, B:36:0x089b, B:38:0x08d2, B:40:0x090d, B:41:0x0919, B:43:0x0927, B:45:0x0935, B:47:0x094b, B:49:0x097b, B:53:0x0981, B:83:0x098f, B:88:0x09cc, B:90:0x09db, B:92:0x09e9, B:94:0x09ff, B:96:0x0a21, B:98:0x0a5e, B:100:0x0a6c, B:102:0x0a7a, B:104:0x0a88, B:106:0x0a9e, B:108:0x0ac0, B:110:0x0afd, B:112:0x06d6, B:113:0x06e4, B:115:0x06fe, B:117:0x0706, B:120:0x070f, B:122:0x0717, B:126:0x078b, B:128:0x0799, B:129:0x07b4, B:131:0x07ce, B:132:0x07fe, B:133:0x0722, B:134:0x0756), top: B:137:0x0075 }] */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0a9e A[Catch: Exception -> 0x0c02, TryCatch #2 {Exception -> 0x0c02, blocks: (B:138:0x0075, B:140:0x008f, B:142:0x00ac, B:144:0x00ba, B:146:0x00cc, B:149:0x00df, B:151:0x0105, B:153:0x026b, B:155:0x027f, B:157:0x0299, B:159:0x02b8, B:160:0x02c3, B:162:0x02d5, B:164:0x02e9, B:166:0x0309, B:169:0x0347, B:170:0x0354, B:172:0x038b, B:174:0x03c6, B:175:0x03d1, B:177:0x03df, B:179:0x03ed, B:181:0x0403, B:183:0x0433, B:187:0x0439, B:196:0x0446, B:198:0x0481, B:200:0x048f, B:202:0x049d, B:204:0x04b3, B:206:0x04d5, B:208:0x0514, B:210:0x0521, B:212:0x052f, B:214:0x053d, B:216:0x0553, B:218:0x0575, B:220:0x05b2, B:222:0x0138, B:223:0x0145, B:225:0x015f, B:227:0x0167, B:230:0x0170, B:232:0x0178, B:236:0x01ec, B:238:0x01fa, B:239:0x0215, B:241:0x022f, B:242:0x025f, B:243:0x0183, B:244:0x01b7, B:13:0x0630, B:15:0x064a, B:17:0x0658, B:19:0x066a, B:22:0x067d, B:24:0x06a3, B:26:0x080b, B:28:0x081d, B:30:0x082f, B:32:0x084f, B:35:0x088d, B:36:0x089b, B:38:0x08d2, B:40:0x090d, B:41:0x0919, B:43:0x0927, B:45:0x0935, B:47:0x094b, B:49:0x097b, B:53:0x0981, B:83:0x098f, B:88:0x09cc, B:90:0x09db, B:92:0x09e9, B:94:0x09ff, B:96:0x0a21, B:98:0x0a5e, B:100:0x0a6c, B:102:0x0a7a, B:104:0x0a88, B:106:0x0a9e, B:108:0x0ac0, B:110:0x0afd, B:112:0x06d6, B:113:0x06e4, B:115:0x06fe, B:117:0x0706, B:120:0x070f, B:122:0x0717, B:126:0x078b, B:128:0x0799, B:129:0x07b4, B:131:0x07ce, B:132:0x07fe, B:133:0x0722, B:134:0x0756), top: B:137:0x0075 }] */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0b0a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0799 A[Catch: Exception -> 0x0c02, TryCatch #2 {Exception -> 0x0c02, blocks: (B:138:0x0075, B:140:0x008f, B:142:0x00ac, B:144:0x00ba, B:146:0x00cc, B:149:0x00df, B:151:0x0105, B:153:0x026b, B:155:0x027f, B:157:0x0299, B:159:0x02b8, B:160:0x02c3, B:162:0x02d5, B:164:0x02e9, B:166:0x0309, B:169:0x0347, B:170:0x0354, B:172:0x038b, B:174:0x03c6, B:175:0x03d1, B:177:0x03df, B:179:0x03ed, B:181:0x0403, B:183:0x0433, B:187:0x0439, B:196:0x0446, B:198:0x0481, B:200:0x048f, B:202:0x049d, B:204:0x04b3, B:206:0x04d5, B:208:0x0514, B:210:0x0521, B:212:0x052f, B:214:0x053d, B:216:0x0553, B:218:0x0575, B:220:0x05b2, B:222:0x0138, B:223:0x0145, B:225:0x015f, B:227:0x0167, B:230:0x0170, B:232:0x0178, B:236:0x01ec, B:238:0x01fa, B:239:0x0215, B:241:0x022f, B:242:0x025f, B:243:0x0183, B:244:0x01b7, B:13:0x0630, B:15:0x064a, B:17:0x0658, B:19:0x066a, B:22:0x067d, B:24:0x06a3, B:26:0x080b, B:28:0x081d, B:30:0x082f, B:32:0x084f, B:35:0x088d, B:36:0x089b, B:38:0x08d2, B:40:0x090d, B:41:0x0919, B:43:0x0927, B:45:0x0935, B:47:0x094b, B:49:0x097b, B:53:0x0981, B:83:0x098f, B:88:0x09cc, B:90:0x09db, B:92:0x09e9, B:94:0x09ff, B:96:0x0a21, B:98:0x0a5e, B:100:0x0a6c, B:102:0x0a7a, B:104:0x0a88, B:106:0x0a9e, B:108:0x0ac0, B:110:0x0afd, B:112:0x06d6, B:113:0x06e4, B:115:0x06fe, B:117:0x0706, B:120:0x070f, B:122:0x0717, B:126:0x078b, B:128:0x0799, B:129:0x07b4, B:131:0x07ce, B:132:0x07fe, B:133:0x0722, B:134:0x0756), top: B:137:0x0075 }] */
    /* JADX WARN: Removed duplicated region for block: B:129:0x07b4 A[Catch: Exception -> 0x0c02, TryCatch #2 {Exception -> 0x0c02, blocks: (B:138:0x0075, B:140:0x008f, B:142:0x00ac, B:144:0x00ba, B:146:0x00cc, B:149:0x00df, B:151:0x0105, B:153:0x026b, B:155:0x027f, B:157:0x0299, B:159:0x02b8, B:160:0x02c3, B:162:0x02d5, B:164:0x02e9, B:166:0x0309, B:169:0x0347, B:170:0x0354, B:172:0x038b, B:174:0x03c6, B:175:0x03d1, B:177:0x03df, B:179:0x03ed, B:181:0x0403, B:183:0x0433, B:187:0x0439, B:196:0x0446, B:198:0x0481, B:200:0x048f, B:202:0x049d, B:204:0x04b3, B:206:0x04d5, B:208:0x0514, B:210:0x0521, B:212:0x052f, B:214:0x053d, B:216:0x0553, B:218:0x0575, B:220:0x05b2, B:222:0x0138, B:223:0x0145, B:225:0x015f, B:227:0x0167, B:230:0x0170, B:232:0x0178, B:236:0x01ec, B:238:0x01fa, B:239:0x0215, B:241:0x022f, B:242:0x025f, B:243:0x0183, B:244:0x01b7, B:13:0x0630, B:15:0x064a, B:17:0x0658, B:19:0x066a, B:22:0x067d, B:24:0x06a3, B:26:0x080b, B:28:0x081d, B:30:0x082f, B:32:0x084f, B:35:0x088d, B:36:0x089b, B:38:0x08d2, B:40:0x090d, B:41:0x0919, B:43:0x0927, B:45:0x0935, B:47:0x094b, B:49:0x097b, B:53:0x0981, B:83:0x098f, B:88:0x09cc, B:90:0x09db, B:92:0x09e9, B:94:0x09ff, B:96:0x0a21, B:98:0x0a5e, B:100:0x0a6c, B:102:0x0a7a, B:104:0x0a88, B:106:0x0a9e, B:108:0x0ac0, B:110:0x0afd, B:112:0x06d6, B:113:0x06e4, B:115:0x06fe, B:117:0x0706, B:120:0x070f, B:122:0x0717, B:126:0x078b, B:128:0x0799, B:129:0x07b4, B:131:0x07ce, B:132:0x07fe, B:133:0x0722, B:134:0x0756), top: B:137:0x0075 }] */
    /* JADX WARN: Removed duplicated region for block: B:155:0x027f A[Catch: Exception -> 0x0c02, TryCatch #2 {Exception -> 0x0c02, blocks: (B:138:0x0075, B:140:0x008f, B:142:0x00ac, B:144:0x00ba, B:146:0x00cc, B:149:0x00df, B:151:0x0105, B:153:0x026b, B:155:0x027f, B:157:0x0299, B:159:0x02b8, B:160:0x02c3, B:162:0x02d5, B:164:0x02e9, B:166:0x0309, B:169:0x0347, B:170:0x0354, B:172:0x038b, B:174:0x03c6, B:175:0x03d1, B:177:0x03df, B:179:0x03ed, B:181:0x0403, B:183:0x0433, B:187:0x0439, B:196:0x0446, B:198:0x0481, B:200:0x048f, B:202:0x049d, B:204:0x04b3, B:206:0x04d5, B:208:0x0514, B:210:0x0521, B:212:0x052f, B:214:0x053d, B:216:0x0553, B:218:0x0575, B:220:0x05b2, B:222:0x0138, B:223:0x0145, B:225:0x015f, B:227:0x0167, B:230:0x0170, B:232:0x0178, B:236:0x01ec, B:238:0x01fa, B:239:0x0215, B:241:0x022f, B:242:0x025f, B:243:0x0183, B:244:0x01b7, B:13:0x0630, B:15:0x064a, B:17:0x0658, B:19:0x066a, B:22:0x067d, B:24:0x06a3, B:26:0x080b, B:28:0x081d, B:30:0x082f, B:32:0x084f, B:35:0x088d, B:36:0x089b, B:38:0x08d2, B:40:0x090d, B:41:0x0919, B:43:0x0927, B:45:0x0935, B:47:0x094b, B:49:0x097b, B:53:0x0981, B:83:0x098f, B:88:0x09cc, B:90:0x09db, B:92:0x09e9, B:94:0x09ff, B:96:0x0a21, B:98:0x0a5e, B:100:0x0a6c, B:102:0x0a7a, B:104:0x0a88, B:106:0x0a9e, B:108:0x0ac0, B:110:0x0afd, B:112:0x06d6, B:113:0x06e4, B:115:0x06fe, B:117:0x0706, B:120:0x070f, B:122:0x0717, B:126:0x078b, B:128:0x0799, B:129:0x07b4, B:131:0x07ce, B:132:0x07fe, B:133:0x0722, B:134:0x0756), top: B:137:0x0075 }] */
    /* JADX WARN: Removed duplicated region for block: B:162:0x02d5 A[Catch: Exception -> 0x0c02, TryCatch #2 {Exception -> 0x0c02, blocks: (B:138:0x0075, B:140:0x008f, B:142:0x00ac, B:144:0x00ba, B:146:0x00cc, B:149:0x00df, B:151:0x0105, B:153:0x026b, B:155:0x027f, B:157:0x0299, B:159:0x02b8, B:160:0x02c3, B:162:0x02d5, B:164:0x02e9, B:166:0x0309, B:169:0x0347, B:170:0x0354, B:172:0x038b, B:174:0x03c6, B:175:0x03d1, B:177:0x03df, B:179:0x03ed, B:181:0x0403, B:183:0x0433, B:187:0x0439, B:196:0x0446, B:198:0x0481, B:200:0x048f, B:202:0x049d, B:204:0x04b3, B:206:0x04d5, B:208:0x0514, B:210:0x0521, B:212:0x052f, B:214:0x053d, B:216:0x0553, B:218:0x0575, B:220:0x05b2, B:222:0x0138, B:223:0x0145, B:225:0x015f, B:227:0x0167, B:230:0x0170, B:232:0x0178, B:236:0x01ec, B:238:0x01fa, B:239:0x0215, B:241:0x022f, B:242:0x025f, B:243:0x0183, B:244:0x01b7, B:13:0x0630, B:15:0x064a, B:17:0x0658, B:19:0x066a, B:22:0x067d, B:24:0x06a3, B:26:0x080b, B:28:0x081d, B:30:0x082f, B:32:0x084f, B:35:0x088d, B:36:0x089b, B:38:0x08d2, B:40:0x090d, B:41:0x0919, B:43:0x0927, B:45:0x0935, B:47:0x094b, B:49:0x097b, B:53:0x0981, B:83:0x098f, B:88:0x09cc, B:90:0x09db, B:92:0x09e9, B:94:0x09ff, B:96:0x0a21, B:98:0x0a5e, B:100:0x0a6c, B:102:0x0a7a, B:104:0x0a88, B:106:0x0a9e, B:108:0x0ac0, B:110:0x0afd, B:112:0x06d6, B:113:0x06e4, B:115:0x06fe, B:117:0x0706, B:120:0x070f, B:122:0x0717, B:126:0x078b, B:128:0x0799, B:129:0x07b4, B:131:0x07ce, B:132:0x07fe, B:133:0x0722, B:134:0x0756), top: B:137:0x0075 }] */
    /* JADX WARN: Removed duplicated region for block: B:177:0x03df A[Catch: Exception -> 0x0c02, TryCatch #2 {Exception -> 0x0c02, blocks: (B:138:0x0075, B:140:0x008f, B:142:0x00ac, B:144:0x00ba, B:146:0x00cc, B:149:0x00df, B:151:0x0105, B:153:0x026b, B:155:0x027f, B:157:0x0299, B:159:0x02b8, B:160:0x02c3, B:162:0x02d5, B:164:0x02e9, B:166:0x0309, B:169:0x0347, B:170:0x0354, B:172:0x038b, B:174:0x03c6, B:175:0x03d1, B:177:0x03df, B:179:0x03ed, B:181:0x0403, B:183:0x0433, B:187:0x0439, B:196:0x0446, B:198:0x0481, B:200:0x048f, B:202:0x049d, B:204:0x04b3, B:206:0x04d5, B:208:0x0514, B:210:0x0521, B:212:0x052f, B:214:0x053d, B:216:0x0553, B:218:0x0575, B:220:0x05b2, B:222:0x0138, B:223:0x0145, B:225:0x015f, B:227:0x0167, B:230:0x0170, B:232:0x0178, B:236:0x01ec, B:238:0x01fa, B:239:0x0215, B:241:0x022f, B:242:0x025f, B:243:0x0183, B:244:0x01b7, B:13:0x0630, B:15:0x064a, B:17:0x0658, B:19:0x066a, B:22:0x067d, B:24:0x06a3, B:26:0x080b, B:28:0x081d, B:30:0x082f, B:32:0x084f, B:35:0x088d, B:36:0x089b, B:38:0x08d2, B:40:0x090d, B:41:0x0919, B:43:0x0927, B:45:0x0935, B:47:0x094b, B:49:0x097b, B:53:0x0981, B:83:0x098f, B:88:0x09cc, B:90:0x09db, B:92:0x09e9, B:94:0x09ff, B:96:0x0a21, B:98:0x0a5e, B:100:0x0a6c, B:102:0x0a7a, B:104:0x0a88, B:106:0x0a9e, B:108:0x0ac0, B:110:0x0afd, B:112:0x06d6, B:113:0x06e4, B:115:0x06fe, B:117:0x0706, B:120:0x070f, B:122:0x0717, B:126:0x078b, B:128:0x0799, B:129:0x07b4, B:131:0x07ce, B:132:0x07fe, B:133:0x0722, B:134:0x0756), top: B:137:0x0075 }] */
    /* JADX WARN: Removed duplicated region for block: B:191:0x05cd A[Catch: Exception -> 0x0c00, TryCatch #0 {Exception -> 0x0c00, blocks: (B:63:0x0b81, B:69:0x0b93, B:71:0x0b9b, B:73:0x0ba3, B:76:0x0bac, B:65:0x0bd2, B:189:0x05bf, B:191:0x05cd, B:193:0x05e3, B:55:0x0b10, B:57:0x0b1e, B:59:0x0b34), top: B:68:0x0b93 }] */
    /* JADX WARN: Removed duplicated region for block: B:200:0x048f A[Catch: Exception -> 0x0c02, TryCatch #2 {Exception -> 0x0c02, blocks: (B:138:0x0075, B:140:0x008f, B:142:0x00ac, B:144:0x00ba, B:146:0x00cc, B:149:0x00df, B:151:0x0105, B:153:0x026b, B:155:0x027f, B:157:0x0299, B:159:0x02b8, B:160:0x02c3, B:162:0x02d5, B:164:0x02e9, B:166:0x0309, B:169:0x0347, B:170:0x0354, B:172:0x038b, B:174:0x03c6, B:175:0x03d1, B:177:0x03df, B:179:0x03ed, B:181:0x0403, B:183:0x0433, B:187:0x0439, B:196:0x0446, B:198:0x0481, B:200:0x048f, B:202:0x049d, B:204:0x04b3, B:206:0x04d5, B:208:0x0514, B:210:0x0521, B:212:0x052f, B:214:0x053d, B:216:0x0553, B:218:0x0575, B:220:0x05b2, B:222:0x0138, B:223:0x0145, B:225:0x015f, B:227:0x0167, B:230:0x0170, B:232:0x0178, B:236:0x01ec, B:238:0x01fa, B:239:0x0215, B:241:0x022f, B:242:0x025f, B:243:0x0183, B:244:0x01b7, B:13:0x0630, B:15:0x064a, B:17:0x0658, B:19:0x066a, B:22:0x067d, B:24:0x06a3, B:26:0x080b, B:28:0x081d, B:30:0x082f, B:32:0x084f, B:35:0x088d, B:36:0x089b, B:38:0x08d2, B:40:0x090d, B:41:0x0919, B:43:0x0927, B:45:0x0935, B:47:0x094b, B:49:0x097b, B:53:0x0981, B:83:0x098f, B:88:0x09cc, B:90:0x09db, B:92:0x09e9, B:94:0x09ff, B:96:0x0a21, B:98:0x0a5e, B:100:0x0a6c, B:102:0x0a7a, B:104:0x0a88, B:106:0x0a9e, B:108:0x0ac0, B:110:0x0afd, B:112:0x06d6, B:113:0x06e4, B:115:0x06fe, B:117:0x0706, B:120:0x070f, B:122:0x0717, B:126:0x078b, B:128:0x0799, B:129:0x07b4, B:131:0x07ce, B:132:0x07fe, B:133:0x0722, B:134:0x0756), top: B:137:0x0075 }] */
    /* JADX WARN: Removed duplicated region for block: B:212:0x052f A[Catch: Exception -> 0x0c02, TryCatch #2 {Exception -> 0x0c02, blocks: (B:138:0x0075, B:140:0x008f, B:142:0x00ac, B:144:0x00ba, B:146:0x00cc, B:149:0x00df, B:151:0x0105, B:153:0x026b, B:155:0x027f, B:157:0x0299, B:159:0x02b8, B:160:0x02c3, B:162:0x02d5, B:164:0x02e9, B:166:0x0309, B:169:0x0347, B:170:0x0354, B:172:0x038b, B:174:0x03c6, B:175:0x03d1, B:177:0x03df, B:179:0x03ed, B:181:0x0403, B:183:0x0433, B:187:0x0439, B:196:0x0446, B:198:0x0481, B:200:0x048f, B:202:0x049d, B:204:0x04b3, B:206:0x04d5, B:208:0x0514, B:210:0x0521, B:212:0x052f, B:214:0x053d, B:216:0x0553, B:218:0x0575, B:220:0x05b2, B:222:0x0138, B:223:0x0145, B:225:0x015f, B:227:0x0167, B:230:0x0170, B:232:0x0178, B:236:0x01ec, B:238:0x01fa, B:239:0x0215, B:241:0x022f, B:242:0x025f, B:243:0x0183, B:244:0x01b7, B:13:0x0630, B:15:0x064a, B:17:0x0658, B:19:0x066a, B:22:0x067d, B:24:0x06a3, B:26:0x080b, B:28:0x081d, B:30:0x082f, B:32:0x084f, B:35:0x088d, B:36:0x089b, B:38:0x08d2, B:40:0x090d, B:41:0x0919, B:43:0x0927, B:45:0x0935, B:47:0x094b, B:49:0x097b, B:53:0x0981, B:83:0x098f, B:88:0x09cc, B:90:0x09db, B:92:0x09e9, B:94:0x09ff, B:96:0x0a21, B:98:0x0a5e, B:100:0x0a6c, B:102:0x0a7a, B:104:0x0a88, B:106:0x0a9e, B:108:0x0ac0, B:110:0x0afd, B:112:0x06d6, B:113:0x06e4, B:115:0x06fe, B:117:0x0706, B:120:0x070f, B:122:0x0717, B:126:0x078b, B:128:0x0799, B:129:0x07b4, B:131:0x07ce, B:132:0x07fe, B:133:0x0722, B:134:0x0756), top: B:137:0x0075 }] */
    /* JADX WARN: Removed duplicated region for block: B:216:0x0553 A[Catch: Exception -> 0x0c02, TryCatch #2 {Exception -> 0x0c02, blocks: (B:138:0x0075, B:140:0x008f, B:142:0x00ac, B:144:0x00ba, B:146:0x00cc, B:149:0x00df, B:151:0x0105, B:153:0x026b, B:155:0x027f, B:157:0x0299, B:159:0x02b8, B:160:0x02c3, B:162:0x02d5, B:164:0x02e9, B:166:0x0309, B:169:0x0347, B:170:0x0354, B:172:0x038b, B:174:0x03c6, B:175:0x03d1, B:177:0x03df, B:179:0x03ed, B:181:0x0403, B:183:0x0433, B:187:0x0439, B:196:0x0446, B:198:0x0481, B:200:0x048f, B:202:0x049d, B:204:0x04b3, B:206:0x04d5, B:208:0x0514, B:210:0x0521, B:212:0x052f, B:214:0x053d, B:216:0x0553, B:218:0x0575, B:220:0x05b2, B:222:0x0138, B:223:0x0145, B:225:0x015f, B:227:0x0167, B:230:0x0170, B:232:0x0178, B:236:0x01ec, B:238:0x01fa, B:239:0x0215, B:241:0x022f, B:242:0x025f, B:243:0x0183, B:244:0x01b7, B:13:0x0630, B:15:0x064a, B:17:0x0658, B:19:0x066a, B:22:0x067d, B:24:0x06a3, B:26:0x080b, B:28:0x081d, B:30:0x082f, B:32:0x084f, B:35:0x088d, B:36:0x089b, B:38:0x08d2, B:40:0x090d, B:41:0x0919, B:43:0x0927, B:45:0x0935, B:47:0x094b, B:49:0x097b, B:53:0x0981, B:83:0x098f, B:88:0x09cc, B:90:0x09db, B:92:0x09e9, B:94:0x09ff, B:96:0x0a21, B:98:0x0a5e, B:100:0x0a6c, B:102:0x0a7a, B:104:0x0a88, B:106:0x0a9e, B:108:0x0ac0, B:110:0x0afd, B:112:0x06d6, B:113:0x06e4, B:115:0x06fe, B:117:0x0706, B:120:0x070f, B:122:0x0717, B:126:0x078b, B:128:0x0799, B:129:0x07b4, B:131:0x07ce, B:132:0x07fe, B:133:0x0722, B:134:0x0756), top: B:137:0x0075 }] */
    /* JADX WARN: Removed duplicated region for block: B:221:0x0b0a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:238:0x01fa A[Catch: Exception -> 0x0c02, TryCatch #2 {Exception -> 0x0c02, blocks: (B:138:0x0075, B:140:0x008f, B:142:0x00ac, B:144:0x00ba, B:146:0x00cc, B:149:0x00df, B:151:0x0105, B:153:0x026b, B:155:0x027f, B:157:0x0299, B:159:0x02b8, B:160:0x02c3, B:162:0x02d5, B:164:0x02e9, B:166:0x0309, B:169:0x0347, B:170:0x0354, B:172:0x038b, B:174:0x03c6, B:175:0x03d1, B:177:0x03df, B:179:0x03ed, B:181:0x0403, B:183:0x0433, B:187:0x0439, B:196:0x0446, B:198:0x0481, B:200:0x048f, B:202:0x049d, B:204:0x04b3, B:206:0x04d5, B:208:0x0514, B:210:0x0521, B:212:0x052f, B:214:0x053d, B:216:0x0553, B:218:0x0575, B:220:0x05b2, B:222:0x0138, B:223:0x0145, B:225:0x015f, B:227:0x0167, B:230:0x0170, B:232:0x0178, B:236:0x01ec, B:238:0x01fa, B:239:0x0215, B:241:0x022f, B:242:0x025f, B:243:0x0183, B:244:0x01b7, B:13:0x0630, B:15:0x064a, B:17:0x0658, B:19:0x066a, B:22:0x067d, B:24:0x06a3, B:26:0x080b, B:28:0x081d, B:30:0x082f, B:32:0x084f, B:35:0x088d, B:36:0x089b, B:38:0x08d2, B:40:0x090d, B:41:0x0919, B:43:0x0927, B:45:0x0935, B:47:0x094b, B:49:0x097b, B:53:0x0981, B:83:0x098f, B:88:0x09cc, B:90:0x09db, B:92:0x09e9, B:94:0x09ff, B:96:0x0a21, B:98:0x0a5e, B:100:0x0a6c, B:102:0x0a7a, B:104:0x0a88, B:106:0x0a9e, B:108:0x0ac0, B:110:0x0afd, B:112:0x06d6, B:113:0x06e4, B:115:0x06fe, B:117:0x0706, B:120:0x070f, B:122:0x0717, B:126:0x078b, B:128:0x0799, B:129:0x07b4, B:131:0x07ce, B:132:0x07fe, B:133:0x0722, B:134:0x0756), top: B:137:0x0075 }] */
    /* JADX WARN: Removed duplicated region for block: B:239:0x0215 A[Catch: Exception -> 0x0c02, TryCatch #2 {Exception -> 0x0c02, blocks: (B:138:0x0075, B:140:0x008f, B:142:0x00ac, B:144:0x00ba, B:146:0x00cc, B:149:0x00df, B:151:0x0105, B:153:0x026b, B:155:0x027f, B:157:0x0299, B:159:0x02b8, B:160:0x02c3, B:162:0x02d5, B:164:0x02e9, B:166:0x0309, B:169:0x0347, B:170:0x0354, B:172:0x038b, B:174:0x03c6, B:175:0x03d1, B:177:0x03df, B:179:0x03ed, B:181:0x0403, B:183:0x0433, B:187:0x0439, B:196:0x0446, B:198:0x0481, B:200:0x048f, B:202:0x049d, B:204:0x04b3, B:206:0x04d5, B:208:0x0514, B:210:0x0521, B:212:0x052f, B:214:0x053d, B:216:0x0553, B:218:0x0575, B:220:0x05b2, B:222:0x0138, B:223:0x0145, B:225:0x015f, B:227:0x0167, B:230:0x0170, B:232:0x0178, B:236:0x01ec, B:238:0x01fa, B:239:0x0215, B:241:0x022f, B:242:0x025f, B:243:0x0183, B:244:0x01b7, B:13:0x0630, B:15:0x064a, B:17:0x0658, B:19:0x066a, B:22:0x067d, B:24:0x06a3, B:26:0x080b, B:28:0x081d, B:30:0x082f, B:32:0x084f, B:35:0x088d, B:36:0x089b, B:38:0x08d2, B:40:0x090d, B:41:0x0919, B:43:0x0927, B:45:0x0935, B:47:0x094b, B:49:0x097b, B:53:0x0981, B:83:0x098f, B:88:0x09cc, B:90:0x09db, B:92:0x09e9, B:94:0x09ff, B:96:0x0a21, B:98:0x0a5e, B:100:0x0a6c, B:102:0x0a7a, B:104:0x0a88, B:106:0x0a9e, B:108:0x0ac0, B:110:0x0afd, B:112:0x06d6, B:113:0x06e4, B:115:0x06fe, B:117:0x0706, B:120:0x070f, B:122:0x0717, B:126:0x078b, B:128:0x0799, B:129:0x07b4, B:131:0x07ce, B:132:0x07fe, B:133:0x0722, B:134:0x0756), top: B:137:0x0075 }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x081d A[Catch: Exception -> 0x0c02, TryCatch #2 {Exception -> 0x0c02, blocks: (B:138:0x0075, B:140:0x008f, B:142:0x00ac, B:144:0x00ba, B:146:0x00cc, B:149:0x00df, B:151:0x0105, B:153:0x026b, B:155:0x027f, B:157:0x0299, B:159:0x02b8, B:160:0x02c3, B:162:0x02d5, B:164:0x02e9, B:166:0x0309, B:169:0x0347, B:170:0x0354, B:172:0x038b, B:174:0x03c6, B:175:0x03d1, B:177:0x03df, B:179:0x03ed, B:181:0x0403, B:183:0x0433, B:187:0x0439, B:196:0x0446, B:198:0x0481, B:200:0x048f, B:202:0x049d, B:204:0x04b3, B:206:0x04d5, B:208:0x0514, B:210:0x0521, B:212:0x052f, B:214:0x053d, B:216:0x0553, B:218:0x0575, B:220:0x05b2, B:222:0x0138, B:223:0x0145, B:225:0x015f, B:227:0x0167, B:230:0x0170, B:232:0x0178, B:236:0x01ec, B:238:0x01fa, B:239:0x0215, B:241:0x022f, B:242:0x025f, B:243:0x0183, B:244:0x01b7, B:13:0x0630, B:15:0x064a, B:17:0x0658, B:19:0x066a, B:22:0x067d, B:24:0x06a3, B:26:0x080b, B:28:0x081d, B:30:0x082f, B:32:0x084f, B:35:0x088d, B:36:0x089b, B:38:0x08d2, B:40:0x090d, B:41:0x0919, B:43:0x0927, B:45:0x0935, B:47:0x094b, B:49:0x097b, B:53:0x0981, B:83:0x098f, B:88:0x09cc, B:90:0x09db, B:92:0x09e9, B:94:0x09ff, B:96:0x0a21, B:98:0x0a5e, B:100:0x0a6c, B:102:0x0a7a, B:104:0x0a88, B:106:0x0a9e, B:108:0x0ac0, B:110:0x0afd, B:112:0x06d6, B:113:0x06e4, B:115:0x06fe, B:117:0x0706, B:120:0x070f, B:122:0x0717, B:126:0x078b, B:128:0x0799, B:129:0x07b4, B:131:0x07ce, B:132:0x07fe, B:133:0x0722, B:134:0x0756), top: B:137:0x0075 }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0927 A[Catch: Exception -> 0x0c02, TryCatch #2 {Exception -> 0x0c02, blocks: (B:138:0x0075, B:140:0x008f, B:142:0x00ac, B:144:0x00ba, B:146:0x00cc, B:149:0x00df, B:151:0x0105, B:153:0x026b, B:155:0x027f, B:157:0x0299, B:159:0x02b8, B:160:0x02c3, B:162:0x02d5, B:164:0x02e9, B:166:0x0309, B:169:0x0347, B:170:0x0354, B:172:0x038b, B:174:0x03c6, B:175:0x03d1, B:177:0x03df, B:179:0x03ed, B:181:0x0403, B:183:0x0433, B:187:0x0439, B:196:0x0446, B:198:0x0481, B:200:0x048f, B:202:0x049d, B:204:0x04b3, B:206:0x04d5, B:208:0x0514, B:210:0x0521, B:212:0x052f, B:214:0x053d, B:216:0x0553, B:218:0x0575, B:220:0x05b2, B:222:0x0138, B:223:0x0145, B:225:0x015f, B:227:0x0167, B:230:0x0170, B:232:0x0178, B:236:0x01ec, B:238:0x01fa, B:239:0x0215, B:241:0x022f, B:242:0x025f, B:243:0x0183, B:244:0x01b7, B:13:0x0630, B:15:0x064a, B:17:0x0658, B:19:0x066a, B:22:0x067d, B:24:0x06a3, B:26:0x080b, B:28:0x081d, B:30:0x082f, B:32:0x084f, B:35:0x088d, B:36:0x089b, B:38:0x08d2, B:40:0x090d, B:41:0x0919, B:43:0x0927, B:45:0x0935, B:47:0x094b, B:49:0x097b, B:53:0x0981, B:83:0x098f, B:88:0x09cc, B:90:0x09db, B:92:0x09e9, B:94:0x09ff, B:96:0x0a21, B:98:0x0a5e, B:100:0x0a6c, B:102:0x0a7a, B:104:0x0a88, B:106:0x0a9e, B:108:0x0ac0, B:110:0x0afd, B:112:0x06d6, B:113:0x06e4, B:115:0x06fe, B:117:0x0706, B:120:0x070f, B:122:0x0717, B:126:0x078b, B:128:0x0799, B:129:0x07b4, B:131:0x07ce, B:132:0x07fe, B:133:0x0722, B:134:0x0756), top: B:137:0x0075 }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0b1e A[Catch: Exception -> 0x0c00, TryCatch #0 {Exception -> 0x0c00, blocks: (B:63:0x0b81, B:69:0x0b93, B:71:0x0b9b, B:73:0x0ba3, B:76:0x0bac, B:65:0x0bd2, B:189:0x05bf, B:191:0x05cd, B:193:0x05e3, B:55:0x0b10, B:57:0x0b1e, B:59:0x0b34), top: B:68:0x0b93 }] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0b93 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x09db A[Catch: Exception -> 0x0c02, TryCatch #2 {Exception -> 0x0c02, blocks: (B:138:0x0075, B:140:0x008f, B:142:0x00ac, B:144:0x00ba, B:146:0x00cc, B:149:0x00df, B:151:0x0105, B:153:0x026b, B:155:0x027f, B:157:0x0299, B:159:0x02b8, B:160:0x02c3, B:162:0x02d5, B:164:0x02e9, B:166:0x0309, B:169:0x0347, B:170:0x0354, B:172:0x038b, B:174:0x03c6, B:175:0x03d1, B:177:0x03df, B:179:0x03ed, B:181:0x0403, B:183:0x0433, B:187:0x0439, B:196:0x0446, B:198:0x0481, B:200:0x048f, B:202:0x049d, B:204:0x04b3, B:206:0x04d5, B:208:0x0514, B:210:0x0521, B:212:0x052f, B:214:0x053d, B:216:0x0553, B:218:0x0575, B:220:0x05b2, B:222:0x0138, B:223:0x0145, B:225:0x015f, B:227:0x0167, B:230:0x0170, B:232:0x0178, B:236:0x01ec, B:238:0x01fa, B:239:0x0215, B:241:0x022f, B:242:0x025f, B:243:0x0183, B:244:0x01b7, B:13:0x0630, B:15:0x064a, B:17:0x0658, B:19:0x066a, B:22:0x067d, B:24:0x06a3, B:26:0x080b, B:28:0x081d, B:30:0x082f, B:32:0x084f, B:35:0x088d, B:36:0x089b, B:38:0x08d2, B:40:0x090d, B:41:0x0919, B:43:0x0927, B:45:0x0935, B:47:0x094b, B:49:0x097b, B:53:0x0981, B:83:0x098f, B:88:0x09cc, B:90:0x09db, B:92:0x09e9, B:94:0x09ff, B:96:0x0a21, B:98:0x0a5e, B:100:0x0a6c, B:102:0x0a7a, B:104:0x0a88, B:106:0x0a9e, B:108:0x0ac0, B:110:0x0afd, B:112:0x06d6, B:113:0x06e4, B:115:0x06fe, B:117:0x0706, B:120:0x070f, B:122:0x0717, B:126:0x078b, B:128:0x0799, B:129:0x07b4, B:131:0x07ce, B:132:0x07fe, B:133:0x0722, B:134:0x0756), top: B:137:0x0075 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean validation() {
        /*
            Method dump skipped, instructions count: 3102
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.fo.SurveyActivity.validation():boolean");
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

    private void showAddCropDialog(String str, float f, String str2, int i) {
        final Dialog dialog = new Dialog(context);
        dialog.requestWindowFeature(1);
        dialog.setContentView(R.layout.alert_crop_selection);
        this.etCropAccr = (EditText) dialog.findViewById(R.id.et_crop_discription_crop_alert);
        Button button = (Button) dialog.findViewById(R.id.btn_save_crop_alert);
        final Button button2 = (Button) dialog.findViewById(R.id.btn_na);
        this.etCropName = (EditText) dialog.findViewById(R.id.et_crop_crop_alert);
        this.etCropDos = (EditText) dialog.findViewById(R.id.et_crop_dos);
        this.tvCropid = (TextView) dialog.findViewById(R.id.tvcropid);
        this.etCropAccr.setInputType(8194);
        this.etCropAccr.setFilters(new InputFilter[]{new DecimalDigitsInputFilter(6, 2)});
        button2.setBackgroundColor(-7829368);
        if (str2 != null) {
            this.etCropDos.setText(str2);
        }
        if (i == 0) {
            this.etCropAccr.setVisibility(8);
            this.etCropDos.setVisibility(8);
        } else {
            this.etCropAccr.setVisibility(0);
            this.etCropDos.setVisibility(0);
        }
        if (str.length() > 0) {
            this.etCropName.setText(str);
            this.tvCropid.setText(Integer.toString(i));
            this.etCropAccr.setText(f + ConstantDeclarations.getInstance().getEMPTY());
        } else {
            this.etCropName.setText(ConstantDeclarations.getInstance().getEMPTY());
            this.etCropAccr.setText(ConstantDeclarations.getInstance().getEMPTY());
        }
        this.etCropAccr.addTextChangedListener(new TextWatcher() { // from class: com.conceptglobal.pmc.fo.SurveyActivity.8
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (editable.length() > 0) {
                    if (Double.parseDouble(editable.toString()) == 0.0d) {
                        SurveyActivity.this.etCropDos.setText(SurveyActivity.this.getResources().getString(R.string.na));
                    } else if (SurveyActivity.this.etCropDos.getText().toString().equalsIgnoreCase(SurveyActivity.this.getResources().getString(R.string.na))) {
                        SurveyActivity.this.etCropDos.setText("");
                    }
                }
            }
        });
        this.etCropDos.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.SurveyActivity.9
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (SurveyActivity.this.etCropDos.getText().toString().equalsIgnoreCase(SurveyActivity.this.getResources().getString(R.string.na))) {
                    return;
                }
                SurveyActivity.this.dateDialogID = 0;
                SurveyActivity surveyActivity = SurveyActivity.this;
                surveyActivity.showDialog(surveyActivity.dateDialogID);
            }
        });
        this.etCropName.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.SurveyActivity.10
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                UtilDeclarations.hideInputKeyboard(SurveyActivity.context);
                try {
                    ListPopupOne listPopupOne = new ListPopupOne(SurveyActivity.context, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectOneDropDownTitle()), SurveyActivity.this.queries.gettingDropdownValues(1), view, SurveyActivity.this.tvCropid);
                    listPopupOne.getWindow().getAttributes().windowAnimations = R.style.PauseDialogAnimation;
                    listPopupOne.show();
                    listPopupOne.getWindow().setSoftInputMode(3);
                } catch (Exception e) {
                    PLog.e(SurveyActivity.this.tag, e);
                }
            }
        });
        this.tvCropid.addTextChangedListener(new TextWatcher() { // from class: com.conceptglobal.pmc.fo.SurveyActivity.11
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            }

            /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x009b -> B:13:0x00af). Please report as a decompilation issue!!! */
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (SurveyActivity.this.tvCropid.getText().toString().trim().length() > 0) {
                    try {
                        if (Integer.parseInt(SurveyActivity.this.tvCropid.getText().toString()) == 0) {
                            SurveyActivity.this.etCropAccr.setVisibility(8);
                            SurveyActivity.this.etCropDos.setVisibility(8);
                            return;
                        }
                        try {
                            String stringValue = SurveyActivity.this.getDataFromDB.getStringValue(SurveyActivity.this.queries.getCropAcreagesForCrop(SurveyActivity.this.farmerID, Integer.parseInt(SurveyActivity.this.tvCropid.getText().toString())));
                            if (stringValue == null || stringValue.trim().length() <= 0) {
                                SurveyActivity.this.etCropAccr.setText(ConstantDeclarations.getInstance().getEMPTY());
                            } else {
                                SurveyActivity.this.etCropAccr.setText(stringValue);
                            }
                        } catch (SQLiteDoneException e) {
                            SurveyActivity.this.etCropAccr.setText(ConstantDeclarations.getInstance().getEMPTY());
                            PLog.e(SurveyActivity.TAG, e);
                        }
                        try {
                            String stringValue2 = SurveyActivity.this.getDataFromDB.getStringValue(SurveyActivity.this.queries.getDosFromCrop(SurveyActivity.this.farmerID, Integer.parseInt(SurveyActivity.this.tvCropid.getText().toString())));
                            if (stringValue2 != null) {
                                SurveyActivity.this.etCropDos.setText(stringValue2);
                            }
                        } catch (SQLiteDoneException e2) {
                            SurveyActivity.this.etCropDos.setText(ConstantDeclarations.getInstance().getEMPTY());
                            PLog.e(SurveyActivity.TAG, e2);
                        }
                    } catch (Exception e3) {
                        PLog.e(SurveyActivity.this.tag, e3);
                    }
                }
            }
        });
        button.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.SurveyActivity.12
            private FarmerCropMapping farmerCropMapping;

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                UtilDeclarations.hideInputKeyboard(SurveyActivity.context);
                String trim = SurveyActivity.this.etCropName.getText().toString().trim();
                String trim2 = SurveyActivity.this.etCropAccr.getText().toString().trim();
                String trim3 = SurveyActivity.this.etCropDos.getText().toString().trim();
                if (trim == null || trim.equals("")) {
                    Toast.makeText(SurveyActivity.context, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_pleaseSelectCropToast()), 0).show();
                    return;
                }
                if (trim2 == null || trim2.equals("") || trim2.equals(".")) {
                    Toast.makeText(SurveyActivity.context, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_enterPropAcreToast()), 0).show();
                    return;
                }
                if (trim3 == null || trim3.equals("")) {
                    Toast.makeText(SurveyActivity.context, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectDOSowingToast()), 0).show();
                    return;
                }
                FarmerCropMapping farmerCropMapping = new FarmerCropMapping();
                this.farmerCropMapping = farmerCropMapping;
                try {
                    try {
                        farmerCropMapping.setAcreages(Float.parseFloat(trim2));
                        this.farmerCropMapping.setRespondentNo(SurveyActivity.this.farmerID);
                        this.farmerCropMapping.setCropId(Integer.parseInt(SurveyActivity.this.getDataFromDB.getStringValue(SurveyActivity.this.queries.getCropIdByCropName(trim))));
                        this.farmerCropMapping.setDos(trim3);
                    } catch (Exception e) {
                        PLog.e(SurveyActivity.this.tag, e);
                    }
                    SurveyActivity.this.getDataFromDB.executeRawQueryInDB(SurveyActivity.this.queries.deleteFarmerCropData(SurveyActivity.this.farmerID, Integer.parseInt(SurveyActivity.this.tvCropid.getText().toString())));
                    SurveyActivity.this.setListviewForAcreages();
                } catch (Exception e2) {
                    PLog.e(SurveyActivity.this.tag, e2);
                }
                dialog.dismiss();
            }
        });
        button2.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.SurveyActivity.13
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (!SurveyActivity.this.etCropDos.getText().toString().equalsIgnoreCase(SurveyActivity.this.getResources().getString(R.string.na))) {
                    SurveyActivity.this.etCropDos.setText(SurveyActivity.this.getResources().getString(R.string.na));
                    button2.setBackgroundColor(-12303292);
                } else {
                    SurveyActivity.this.etCropDos.setText("");
                    button2.setBackgroundColor(-7829368);
                }
            }
        });
        dialog.getWindow().setBackgroundDrawable(new ColorDrawable(0));
        dialog.setCancelable(true);
        dialog.setCanceledOnTouchOutside(true);
        dialog.show();
        dialog.getWindow().setGravity(17);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        UtilDeclarations.hideInputKeyboard(context);
        switch (view.getId()) {
            case R.id.btnViewHistory /* 2131296396 */:
                if (UtilDeclarations.isOnline(this)) {
                    if (this.btnViewHistory.getText().toString().equalsIgnoreCase("Show History")) {
                        this.btnViewHistory.setText("Back");
                        this.slLastVistdata.setVisibility(8);
                        this.tabHost.findViewById(R.id.ll_list_alert).setVisibility(8);
                        this.webView.setVisibility(0);
                        this.webView.getSettings().setJavaScriptEnabled(true);
                        this.webView.clearHistory();
                        this.webView.clearCache(true);
                        this.webView.clearFormData();
                        this.webView.loadUrl(ConstantsPMC.getInstance().getUrlLastVisitHistory() + "/" + this.farmerID);
                        break;
                    } else {
                        this.btnViewHistory.setText("Show History");
                        this.webView.setVisibility(8);
                        List<LastVisitModel> list = this.lastVisitData;
                        if (list != null && list.size() > 0) {
                            this.slLastVistdata.setVisibility(0);
                            this.tabHost.findViewById(R.id.ll_list_alert).setVisibility(8);
                            break;
                        } else {
                            this.slLastVistdata.setVisibility(8);
                            this.tabHost.findViewById(R.id.ll_list_alert).setVisibility(0);
                            break;
                        }
                    }
                } else {
                    showNoInternetDialog(getResources().getString(R.string.pmc_check_internet));
                    break;
                }
            case R.id.btn_add_crop_farmer_acreage /* 2131296400 */:
                showAddCropDialog(ConstantDeclarations.getInstance().getEMPTY(), 0.0f, ConstantDeclarations.getInstance().getEMPTY(), -1);
                break;
            case R.id.btn_get_latlong_farmer_personal_detailss /* 2131296417 */:
                fetchLocation();
                break;
            case R.id.btn_inactive_farmer_other_details /* 2131296421 */:
                showDiscardAlert();
                break;
            case R.id.btn_save_farmer_other_details /* 2131296436 */:
                saveDataIntoDataBase(2);
                break;
            case R.id.btn_visit_farmer_other_details /* 2131296452 */:
                if (isValidData(true) && saveTableAttributeData(1) && checkTerritorydetails() && checkImagesMandatory() && checkVideoMandatory()) {
                    showAlertCancel(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getpmc_confirmSurveyCompleteDialogText()), 1);
                    break;
                }
                break;
            case R.id.imageViewPicture /* 2131296825 */:
                Intent intent = new Intent(context, (Class<?>) PictureReporting.class);
                intent.putExtra("activityId", this.activityId);
                intent.putExtra("farmerId", this.farmerID);
                startActivityForResult(intent, 101);
                break;
            case R.id.textViewFullDetails /* 2131297349 */:
                int i = this.segmentId;
                if (i != 1) {
                    if (i != 8) {
                        if (i != 2) {
                            if (i == 3) {
                                Intent intent2 = new Intent(this, (Class<?>) AddRetailer.class);
                                intent2.putExtra("SegmentId", this.segmentId);
                                intent2.putExtra("farmerId", this.farmerID);
                                intent2.putExtra("fromTransaction", 1);
                                intent2.putExtra("farmerType", ConstantsPMC.TYPE_Distributor);
                                startActivity(intent2);
                                break;
                            }
                        } else {
                            Intent intent3 = new Intent(this, (Class<?>) AddRetailer.class);
                            intent3.putExtra("SegmentId", this.segmentId);
                            intent3.putExtra("farmerId", this.farmerID);
                            intent3.putExtra("fromTransaction", 1);
                            intent3.putExtra("farmerType", ConstantsPMC.TYPE_Retailer);
                            startActivity(intent3);
                            break;
                        }
                    } else {
                        Intent intent4 = new Intent(this, (Class<?>) AddFarmer.class);
                        intent4.putExtra("SegmentId", this.segmentId);
                        intent4.putExtra("farmerId", this.farmerID);
                        intent4.putExtra("fromTransaction", 1);
                        intent4.putExtra("farmerType", "Planter");
                        startActivity(intent4);
                        break;
                    }
                } else {
                    try {
                        String singleValue = GetDataFromDB.getInstance().getSingleValue("select Sanitized from FarmerMaster where RespondentNo= '" + this.farmerID + "'");
                        if (singleValue != null && !singleValue.equals("1")) {
                            Toast.makeText(this, "The Farmer Is Unsanitized, You Can't Edit. ", 1).show();
                            break;
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    Intent intent5 = new Intent(this, (Class<?>) AddFarmer.class);
                    intent5.putExtra("SegmentId", this.segmentId);
                    intent5.putExtra("farmerId", this.farmerID);
                    intent5.putExtra("fromTransaction", 1);
                    intent5.putExtra("farmerType", ConstantsPMC.TYPE_FARMER);
                    startActivity(intent5);
                    break;
                }
                break;
            case R.id.tv_retailers_farmer_other_details /* 2131297653 */:
                startActivityForResult(new Intent(context, (Class<?>) RetailersDisplayActivity.class).addFlags(131072), 10);
                break;
        }
    }

    private void showNoInternetDialog(String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setMessage(str).setCancelable(false).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.SurveyActivity.14
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
    public void saveDataIntoDataBase(int i) {
        String str;
        Object obj;
        String str2;
        String str3;
        try {
            insertPictureData();
        } catch (Exception e) {
            PLog.e(this.tag, e);
            return;
        }
        if (i != 0) {
            String str4 = "0";
            String str5 = TAG;
            if (i != 1) {
                if (i != 2) {
                    return;
                }
                prepareAttributeData();
                saveTableAttributeData(2);
                try {
                    try {
                        if (this.listAttributes_Assgnmt.size() != 0) {
                            GetDataFromDB.getInstance().executeRawQueryInDB(Queries.getInstance().deleteSurveyDetailsActivity(this.farmerID, this.activityId, this.activityAssignmentId));
                        }
                        InsertDataIntoDB.insertSurveyActivityDetailsUpdate(this.listAttributes_Assgnmt, this.farmerID, this.activityId, 1, 0, this.assignmentId, this.segmentId, 0L, 0, this.activityAssignmentId, this.assignmentDetals, this.packageId);
                    } catch (Exception e2) {
                        PLog.e(TAG, e2);
                    }
                    if (this.territoryDetailsText.getTag(R.string.ENTRYID_SET) == null) {
                        str3 = "0";
                    } else {
                        str3 = this.territoryDetailsText.getTag(R.string.ENTRYID_SET).toString();
                    }
                    if (!str3.equals("0")) {
                        try {
                            InsertDataIntoDB.UpdateSurveyAssignmentActivitiesCustomerDetails("", 0, this.activityAssignmentId, 0L, str3);
                        } catch (Exception e3) {
                            PLog.e(TAG, e3);
                        }
                    }
                    GetDataFromDB.getInstance().executeRawQueryInDB(Queries.getInstance().updateDraftForSurveyActivities(this.activityId, this.farmerID, this.activityAssignmentId, 2));
                    if (this.getDataFromDB.getIFContains(Queries.getInstance().updateDraftForAssignmentvisitSurvey(this.activityAssignmentId)) != 0) {
                        InsertDataIntoDB.UpdateSurveyAssignmentVisistDetails(this.assignmentId, this.farmerID, this.etDiscription.getText().toString(), this.tvLatitude.getText().toString(), this.tvLongitude.getText().toString(), this.activityAssignmentId, 0L, "0", this.locationProvider, this.GPSTimeStamp);
                    } else {
                        InsertDataIntoDB.insertSurveyAssignmentVisistDetails(this.assignmentId, this.farmerID, this.etDiscription.getText().toString(), this.tvLatitude.getText().toString(), this.tvLongitude.getText().toString(), this.activityAssignmentId, 0L, "0", this.locationProvider, this.GPSTimeStamp);
                    }
                } catch (Exception e4) {
                    PLog.e(TAG, e4);
                }
                finish();
                return;
            }
            prepareAttributeData();
            try {
                if (!this.isTableViewActivity) {
                    int i2 = 0;
                    while (i2 < this.listAttributes_Assgnmt.size()) {
                        AttributeModel attributeModel = this.listAttributes_Assgnmt.get(i2);
                        String str6 = str4;
                        String str7 = str5;
                        if (attributeModel.getIsMandatory() == 1 && !AttributesActivity.visibiltyGoneIds.contains(Integer.valueOf(attributeModel.getAttributeId())) && TextUtils.isEmpty(attributeModel.getAttributeValue().trim())) {
                            PLog.e("SAattributesActivity", "mandatory value empty " + attributeModel.getAttributeValue() + "  --  " + attributeModel.getAttributeId());
                            for (int i3 = 0; i3 < this.listAttributes_Assgnmt.size(); i3++) {
                                if (this.listAttributes_Assgnmt.get(i3).getControlType().equalsIgnoreCase("Multiselect Dropdown")) {
                                    showErrorAlertDialog("Something went wrong please perform activity again.");
                                    PLog.e("SAattributesActivity", "mandatory value empty dropdown " + attributeModel.getAttributeValue() + "  --  " + attributeModel.getAttributeId());
                                    return;
                                }
                            }
                            if (attributeModel.getControlType().equalsIgnoreCase("Dropdown")) {
                                SurveyAttributesActivity.setFieldDataEmpty(i2, true);
                                showAlert("Please reselect " + attributeModel.getAttributeName() + " again");
                                PLog.e("SAattributesActivity", "mandatory value empty dropdown " + attributeModel.getAttributeValue() + "  --  " + attributeModel.getAttributeId());
                                return;
                            }
                            AttributesActivity.setFieldDataEmpty(i2, false);
                            showAlert("Please enter  " + attributeModel.getAttributeName());
                            PLog.e("SAattributesActivity", "mandatory value empty entry field " + attributeModel.getAttributeValue() + "  --  " + attributeModel.getAttributeId());
                            return;
                        }
                        i2++;
                        str4 = str6;
                        str5 = str7;
                    }
                }
                Object obj2 = str4;
                String str8 = str5;
                try {
                    if (!this.isTableViewActivity) {
                        for (int i4 = 0; i4 < this.listAttributes_Assgnmt.size(); i4++) {
                            AttributeModel attributeModel2 = this.listAttributes_Assgnmt.get(i4);
                            if (attributeModel2.getIsMandatory() == 1 && !AttributesActivity.visibiltyGoneIds.contains(Integer.valueOf(attributeModel2.getAttributeId())) && TextUtils.isEmpty(attributeModel2.getAttributeValue().trim())) {
                                PLog.e("SAattributesActivity", "mandatory value empty " + attributeModel2.getAttributeValue() + "  --  " + attributeModel2.getAttributeId());
                                for (int i5 = 0; i5 < this.listAttributes_Assgnmt.size(); i5++) {
                                    if (this.listAttributes_Assgnmt.get(i5).getControlType().equalsIgnoreCase("Multiselect Dropdown")) {
                                        showErrorAlertDialog("Something went wrong please perform activity again.");
                                        PLog.e("SAattributesActivity", "mandatory value empty dropdown " + attributeModel2.getAttributeValue() + "  --  " + attributeModel2.getAttributeId());
                                        return;
                                    }
                                }
                                if (attributeModel2.getControlType().equalsIgnoreCase("Dropdown")) {
                                    SurveyAttributesActivity.setFieldDataEmpty(i4, true);
                                    showAlert("Please reselect " + attributeModel2.getAttributeName() + " again");
                                    PLog.e("SAattributesActivity", "mandatory value empty dropdown " + attributeModel2.getAttributeValue() + "  --  " + attributeModel2.getAttributeId());
                                    return;
                                }
                                AttributesActivity.setFieldDataEmpty(i4, false);
                                showAlert("Please enter  " + attributeModel2.getAttributeName());
                                PLog.e("SAattributesActivity", "mandatory value empty entry field " + attributeModel2.getAttributeValue() + "  --  " + attributeModel2.getAttributeId());
                                return;
                            }
                        }
                    }
                    try {
                        if (this.listAttributes_Assgnmt.size() != 0) {
                            GetDataFromDB.getInstance().executeRawQueryInDB(Queries.getInstance().deleteSurveyDetailsActivity(this.farmerID, this.activityId, this.activityAssignmentId));
                        }
                        InsertDataIntoDB.insertSurveyActivityDetailsUpdate(this.listAttributes_Assgnmt, this.farmerID, this.activityId, 1, 1, this.assignmentId, this.segmentId, 0L, 1, this.activityAssignmentId, this.assignmentDetals, this.packageId);
                        GetDataFromDB.getInstance().updateSurveyChildTransactionDetails(Queries.getInstance().getSurveychildDetailsActivity(this.farmerID, this.activityId, this.activityAssignmentId, 0L));
                        for (int i6 = 0; i6 < this.images.size(); i6++) {
                            InsertDataIntoDB.UpdateImageServerStatus(this.images.get(i6).getImageId());
                        }
                        str = str8;
                    } catch (Exception e5) {
                        str = str8;
                        PLog.e(str, e5);
                    }
                    if (this.territoryDetailsText.getTag(R.string.ENTRYID_SET) != null) {
                        str2 = this.territoryDetailsText.getTag(R.string.ENTRYID_SET).toString();
                        obj = obj2;
                    } else {
                        obj = obj2;
                        str2 = obj;
                    }
                    if (!str2.equals(obj)) {
                        try {
                            InsertDataIntoDB.UpdateSurveyAssignmentActivitiesCustomerDetails("", 0, this.activityAssignmentId, 0L, str2);
                        } catch (Exception e6) {
                            PLog.e(str, e6);
                        }
                    }
                    try {
                        if (this.getDataFromDB.getIFContains(Queries.getInstance().updateDraftForAssignmentvisit(this.activityAssignmentId)) != 0) {
                            InsertDataIntoDB.UpdateSurveyAssignmentVisistDetails(this.assignmentId, this.farmerID, this.etDiscription.getText().toString(), this.tvLatitude.getText().toString(), this.tvLongitude.getText().toString(), this.activityAssignmentId, 0L, "false", this.locationProvider, this.GPSTimeStamp);
                        } else {
                            InsertDataIntoDB.insertSurveyAssignmentVisistDetails(this.assignmentId, this.farmerID, this.etDiscription.getText().toString(), this.tvLatitude.getText().toString(), this.tvLongitude.getText().toString(), this.activityAssignmentId, 0L, "false", this.locationProvider, this.GPSTimeStamp);
                        }
                    } catch (Exception e7) {
                        PLog.e(str, e7);
                        e7.printStackTrace();
                    }
                    if (UtilDeclarations.isOnline(context) && !UtilDeclarations.isServiceRunning(getApplicationContext(), SyncDataService.class)) {
                        Toast.makeText(getBaseContext(), "Service initiated", 0);
                        new SendDataServiceUtil(this).startService();
                    }
                    Intent intent = new Intent(this, (Class<?>) MainHomePageActivity.class);
                    intent.addFlags(268468224);
                    startActivity(intent);
                    finish();
                    return;
                } catch (Exception unused) {
                    showErrorAlertDialog("Something went wrong please perform activity again.");
                    return;
                }
            } catch (Exception unused2) {
                showErrorAlertDialog("Something went wrong please perform activity again.");
                return;
            }
            PLog.e(this.tag, e);
            return;
        }
        showAlertCancel(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_saveNCloseDialogInUFA()), 0);
    }

    private void showErrorAlertDialog(String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setMessage(Html.fromHtml("<font color='#ff0000'>" + str + "</font>")).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.SurveyActivity.15
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
                SurveyActivity.this.finish();
            }
        });
        AlertDialog show = builder.show();
        if (UtilDeclarations.isTablet(this)) {
            UtilDeclarations.makeTabletDialogTextlarge(show);
        }
    }

    private void showAlert(String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setMessage(str).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.SurveyActivity.16
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

    private boolean saveTableAttributeData(int i) {
        List<Fragment> list = this.fragmentsList;
        if (list == null || list.size() <= 0) {
            return true;
        }
        if (this.isTableViewActivity) {
            for (int i2 = 0; i2 < this.fragmentsList.size(); i2++) {
                AttributesTableFarmatFragment attributesTableFarmatFragment = (AttributesTableFarmatFragment) this.fragmentsList.get(i2);
                if (i == 2) {
                    attributesTableFarmatFragment.prepareDataDraft();
                    attributesTableFarmatFragment.testMethod(i2);
                } else if (attributesTableFarmatFragment.isDataValid()) {
                    attributesTableFarmatFragment.prepareDataDraft();
                    attributesTableFarmatFragment.testMethod(i2);
                } else {
                    this.tabHost.setCurrentTab(2);
                    return false;
                }
            }
            return true;
        }
        if (!this.isDynamicTableViewActivity) {
            return true;
        }
        for (int i3 = 0; i3 < this.fragmentsList.size(); i3++) {
            AttributesDynamicTableFarmatFragment attributesDynamicTableFarmatFragment = (AttributesDynamicTableFarmatFragment) this.fragmentsList.get(i3);
            if (i == 2) {
                attributesDynamicTableFarmatFragment.prepareDataDraft();
                attributesDynamicTableFarmatFragment.testMethod(i3);
            } else if (attributesDynamicTableFarmatFragment.isDataValid()) {
                attributesDynamicTableFarmatFragment.testMethod(i3);
            } else {
                this.tabHost.setCurrentTab(2);
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void prepareAttributeData() {
        if (this.mEntryArr_Assgnmt == null || this.listAttributes_Assgnmt == null) {
            this.tabHost.setCurrentTab(2);
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < this.mEntryArr_Assgnmt.size(); i++) {
            AttributeModel attributeModel = this.listAttributes_Assgnmt.get(i);
            StringBuilder sb = new StringBuilder();
            sb.append(attributeModel.getIsMandatory() == 1 && this.mEntryArr_Assgnmt.get(i).getText().toString().equalsIgnoreCase(""));
            sb.append("");
            Log.e("test", sb.toString());
            if (attributeModel.getControlType().equalsIgnoreCase("Dropdown")) {
                attributeModel.setAttributeValue(this.mEntryArrIds_Assgnmt.get(i).getText().toString());
            } else if (attributeModel.getControlType().equalsIgnoreCase("Multiselect Dropdown")) {
                attributeModel.setAttributeValue(this.mEntryArrIds_Assgnmt.get(i).getText().toString());
                String[] split = this.mEntryArrIds_Assgnmt.get(i).getText().toString().split(",");
                if (split != null && split.length > 0) {
                    arrayList.add(Integer.valueOf(attributeModel.getAttributeId()));
                    for (String str : split) {
                        AttributeModel attributeModel2 = new AttributeModel();
                        attributeModel2.setAttributeId(attributeModel.getAttributeId());
                        attributeModel2.setAttributeValue(str.trim());
                        this.listAttributes_Assgnmt.add(attributeModel2);
                    }
                }
            } else if (this.mEntryArr_Assgnmt.get(i).getText().toString().equalsIgnoreCase("")) {
                attributeModel.setAttributeValue("");
            } else {
                attributeModel.setAttributeValue(this.mEntryArr_Assgnmt.get(i).getText().toString());
            }
        }
        if (arrayList.size() > 0) {
            Iterator<AttributeModel> it = this.listAttributes_Assgnmt.iterator();
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    AttributeModel next = it.next();
                    if (next != null && next.getAttributeId() == ((Integer) arrayList.get(i2)).intValue()) {
                        it.remove();
                        break;
                    }
                }
            }
        }
    }

    @Override // android.app.Activity
    public Dialog onCreateDialog(int i) {
        View findViewById;
        if (i == 0) {
            return new DatePickerDialog(this, this.mDateSetListener, this.mYear, this.mMonth, this.mDay);
        }
        if (i != 1) {
            return null;
        }
        DatePickerDialog datePickerDialog = new DatePickerDialog(this, this.mDateSetListener_Yearless, this.mYear, this.mMonth, this.mDay) { // from class: com.conceptglobal.pmc.fo.SurveyActivity.19
            @Override // android.app.DatePickerDialog, android.widget.DatePicker.OnDateChangedListener
            public void onDateChanged(DatePicker datePicker, int i2, int i3, int i4) {
                setTitle(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectDayMonthDPTitle()));
            }
        };
        datePickerDialog.setTitle("Select Day-Month");
        int identifier = Resources.getSystem().getIdentifier("year", "id", AbstractSpiCall.ANDROID_CLIENT_TYPE);
        if (identifier != 0 && (findViewById = datePickerDialog.getDatePicker().findViewById(identifier)) != null) {
            findViewById.setVisibility(8);
        }
        return datePickerDialog;
    }

    private boolean isValidData(boolean z) {
        boolean z2;
        if (this.mEntryArr_Assgnmt == null || this.listAttributes_Assgnmt == null) {
            this.tabHost.setCurrentTab(2);
            return false;
        }
        int i = 1;
        String str = "";
        String str2 = str;
        String str3 = str2;
        String str4 = str3;
        String str5 = str4;
        int i2 = 0;
        boolean z3 = true;
        while (i2 < this.mEntryArr_Assgnmt.size()) {
            AttributeModel attributeModel = this.listAttributes_Assgnmt.get(i2);
            if (attributeModel.getAttributeId() == 297) {
                str = this.mEntryArr_Assgnmt.get(i2).getText().toString();
            }
            if (attributeModel.getAttributeId() == 298) {
                str2 = this.mEntryArr_Assgnmt.get(i2).getText().toString();
            }
            if (attributeModel.getAttributeId() == 299) {
                str3 = this.mEntryArr_Assgnmt.get(i2).getText().toString();
            }
            if (attributeModel.getAttributeId() == 300) {
                str4 = this.mEntryArr_Assgnmt.get(i2).getText().toString();
            }
            if (attributeModel.getAttributeId() == 301) {
                str5 = this.mEntryArr_Assgnmt.get(i2).getText().toString();
            }
            try {
            } catch (Exception e) {
                PLog.e(TAG, e);
            }
            if (attributeModel.getIsMandatory() == i) {
                if (!SurveyAttributesActivity.visibiltyGoneIds.contains(Integer.valueOf(attributeModel.getAttributeId()))) {
                    if (this.mEntryArr_Assgnmt.get(i2).getText().toString().trim().length() != 0) {
                        if (attributeModel.getMinLength() != 0 && this.mEntryArr_Assgnmt.get(i2).getText().length() < attributeModel.getMinLength()) {
                            z3 = false;
                        }
                        if (attributeModel.getControlType().equals("TextBoxND")) {
                            try {
                                Float.parseFloat(this.mEntryArr_Assgnmt.get(i2).getText().toString());
                            } catch (Exception unused) {
                                z3 = false;
                            }
                        }
                        if ((attributeModel.getControlType().equalsIgnoreCase("TextBoxN") || attributeModel.getControlType().equalsIgnoreCase("TextBoxND")) && attributeModel.getMinValue() != 0) {
                            if (Integer.parseInt(this.mEntryArr_Assgnmt.get(i2).getText().toString().trim().length() > 0 ? this.mEntryArr_Assgnmt.get(i2).getText().toString() : "0") < attributeModel.getMinValue()) {
                            }
                        }
                    }
                }
                i2++;
                i = 1;
            } else {
                if (this.mEntryArr_Assgnmt.get(i2).getText().toString().trim().length() != 0) {
                    if (attributeModel.getMinLength() != 0 && this.mEntryArr_Assgnmt.get(i2).getText().length() < attributeModel.getMinLength()) {
                        z3 = false;
                    }
                    if (attributeModel.getControlType().equals("TextBoxND")) {
                        try {
                            Float.parseFloat(this.mEntryArr_Assgnmt.get(i2).getText().toString());
                        } catch (Exception unused2) {
                            z3 = false;
                        }
                    }
                    if ((attributeModel.getControlType().equalsIgnoreCase("TextBoxN") || attributeModel.getControlType().equalsIgnoreCase("TextBoxND")) && attributeModel.getMinValue() != 0) {
                        if (Integer.parseInt(this.mEntryArr_Assgnmt.get(i2).getText().toString().trim().length() > 0 ? this.mEntryArr_Assgnmt.get(i2).getText().toString() : "0") >= attributeModel.getMinValue()) {
                        }
                    }
                }
                i2++;
                i = 1;
            }
            z3 = false;
            i2++;
            i = 1;
        }
        if (!z3 && z) {
            try {
                if (this.isTableViewActivity) {
                    ((ValidatorInterface) AttributesTableViewActivity.ctx).onValidate(true);
                } else {
                    ((ValidatorInterface) AttributesActivity.ctx).onValidate(true);
                }
            } catch (Exception e2) {
                PLog.e(TAG, e2);
            }
            Toast.makeText(getApplicationContext(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_validationToast()), 0).show();
            this.tabHost.setCurrentTab(2);
        }
        GetDataFromDB.getInstance();
        if (GetDataFromDB.getLatLondMandatory(Queries.getInstance().getIsLatLongMandatoryInSurvey(this.activityId)) == 1 && (this.tvLatitude.getText().toString().trim().length() <= 0 || this.tvLongitude.getText().toString().trim().length() <= 0)) {
            this.tvLatitude.setError(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_locationIsMandateError()));
            this.tvLongitude.setError(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_locationIsMandateError()));
            this.scrollView.post(new Runnable() { // from class: com.conceptglobal.pmc.fo.SurveyActivity.20
                @Override // java.lang.Runnable
                public void run() {
                    SurveyActivity.this.scrollView.scrollTo(0, SurveyActivity.this.tvLatitude.getBottom());
                }
            });
            z3 = false;
        }
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || Integer.parseInt(str2) <= Integer.parseInt(str)) {
            z2 = z3;
        } else {
            Toast.makeText(getApplicationContext(), "Total Fertilizer Business Turnover (Rs lakh) in last Financial Year should be less than Total Business Turnover (Rs lakh) in last Financial Year", 0).show();
            z2 = false;
        }
        if (!TextUtils.isEmpty(str3) && !TextUtils.isEmpty(str4) && Integer.parseInt(str4) > Integer.parseInt(str3)) {
            Toast.makeText(getApplicationContext(), "Total Fertilizer Bulk Business Quantity (MT) in last Financial Year  should be less than Total Fertilizer Business Quantity (MT) in last Financial Year", 0).show();
            z2 = false;
        }
        if (TextUtils.isEmpty(str3) || TextUtils.isEmpty(str5) || Integer.parseInt(str5) <= Integer.parseInt(str3)) {
            return z2;
        }
        Toast.makeText(getApplicationContext(), " Total Fertilizer SF Business Quantity (MT) in last Financial Year should be less than Total Fertilizer Business Quantity (MT) in last Financial Year", 0).show();
        return false;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        showAddCropDialog(this.listFarmerCrops.get(i).getCropName(), this.listFarmerCrops.get(i).getAcreages(), this.listFarmerCrops.get(i).getDos(), this.listFarmerCrops.get(i).getCropId());
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.farmer, menu);
        MenuItem findItem = menu.findItem(R.id.item_add_draft);
        this.miDraft = findItem;
        findItem.setTitle(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_draftFarmerText()));
        this.miDraft.setVisible(false);
        return super.onCreateOptionsMenu(menu);
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == 16908332) {
            showGoBackDialog();
            return true;
        }
        if (itemId == R.id.item_add_draft) {
            saveDataIntoDataBase(2);
        }
        return super.onOptionsItemSelected(menuItem);
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
        if (i == 1) {
            if (i2 == -1) {
                fetchLocation();
                return;
            } else {
                if (i2 != 0) {
                    return;
                }
                this.mLocationUtils.showDialog(this, LocationUtils.GPS_NOT_TURNED_ON);
                return;
            }
        }
        if (i != 3) {
            if (i != 10) {
                if (i != 101) {
                    return;
                }
                PLog.location("Navigation", "Image Capture End", TODO_TAG, UtilDeclarations.getDateTime());
                new ImageCompressionAsyncTask(context, this.listener).execute(this.imageFile.getAbsolutePath());
                return;
            }
            if (i2 == 0 || intent == null) {
                return;
            }
            if (intent.getStringExtra(ConstantDeclarations.getInstance().getKEYRETAILERNAME()) != null && intent.getStringExtra(ConstantDeclarations.getInstance().getKEYRETAILERNAME()).length() > 0) {
                this.farmerDetailsListFinal.setRetailerName(intent.getStringExtra(ConstantDeclarations.getInstance().getKEYRETAILERNAME()).replace("()", ConstantDeclarations.getInstance().getEMPTY()));
                this.farmerDetailsListFinal.setRetailerName(intent.getStringExtra(ConstantDeclarations.getInstance().getKEYRETAILERNAME()).replace("(null)", ConstantDeclarations.getInstance().getEMPTY()));
                this.tvRetailers.setText(this.farmerDetailsListFinal.getRetailerName());
            }
            if (intent.getStringExtra(ConstantDeclarations.getInstance().getKEYRETAILERID()) != null) {
                this.farmerDetailsListFinal.setRetailerId(intent.getStringExtra(ConstantDeclarations.getInstance().getKEYRETAILERID()));
                return;
            }
            return;
        }
        if (i2 == 0 || intent == null) {
            return;
        }
        if (intent.hasExtra("FarmerId")) {
            this.selCustomerId = intent.getStringExtra("FarmerId");
        }
        if (intent.hasExtra("SegmentId")) {
            this.selSegmentID = intent.getIntExtra("SegmentId", 0);
        }
        if (this.selCustomerId.equalsIgnoreCase("") || this.selSegmentID == 0) {
            return;
        }
        try {
            this.custDetailsText.setText(intent.getStringExtra("FarmerName") + "");
        } catch (Exception e) {
            PLog.e("MBAACTIVITY", e);
        }
    }

    private void showAlertCancel(String str, final int i) {
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setMessage(str).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.SurveyActivity.23
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                dialogInterface.dismiss();
                int i3 = i;
                if (i3 == 0) {
                    SurveyActivity.this.finish();
                } else {
                    if (i3 != 1) {
                        return;
                    }
                    SurveyActivity.this.saveDataIntoDataBase(1);
                }
            }
        }).setNegativeButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_cancelDialogButtonText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.SurveyActivity.22
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
            }
        });
        AlertDialog show = builder.show();
        if (UtilDeclarations.isTablet(this)) {
            UtilDeclarations.makeTabletDialogTextlarge(show);
        }
    }

    private void saveDataInLocal(String str, int i) {
        saveDataIntoDataBase(i);
    }

    private void saveDataInLocalAgree(String str, int i, String str2) {
        saveDataIntoDataBase(i);
    }

    private void showGoBackDialog() {
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setMessage(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_addCustomerGoBackDialog())).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_cancelDialogButtonText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.SurveyActivity.24
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        });
        builder.setNegativeButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.SurveyActivity.25
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
                SurveyActivity.this.finish();
            }
        });
        AlertDialog show = builder.show();
        if (UtilDeclarations.isTablet(this)) {
            UtilDeclarations.makeTabletDialogTextlarge(show);
        }
    }

    @Override // com.conceptglobal.pmc.interfaces.OnCompleteListener
    public void onComplete(String str, Exception exc) {
        if (str.equalsIgnoreCase("1")) {
            this.tabHost.setCurrentTab(3);
        }
    }

    @Override // com.conceptglobal.pmc.interfaces.AttributeEventListener
    public void GetData(List<AttributeModel> list, List<EditText> list2, List<EditText> list3) {
        this.listAttributes_Assgnmt = list;
        this.mEntryArr_Assgnmt = list2;
        this.mEntryArrIds_Assgnmt = list3;
    }

    @Override // com.conceptglobal.pmc.interfaces.AttributeEventListener
    public void getFragmentsList(List<Fragment> list) {
        this.fragmentsList = list;
    }

    @Override // com.conceptglobal.pmc.utils.CompressListener
    public void onComprssCompleteListener(String str) {
        setAdapter();
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

    /* JADX INFO: Access modifiers changed from: private */
    public void updateDisplay_yearless() {
        this.mFiledStr = new StringBuffer().append(this.mDay).append("-").append(this.mMonth + 1).toString();
        try {
            new SimpleDateFormat("dd-MM").parse(this.mFiledStr);
        } catch (ParseException e) {
            PLog.e(TAG, e);
        }
        setDate_yearless(this.datePos);
    }

    private void setDate_yearless(int i) {
        EditText editText = this.mEntryArr.get(i);
        try {
            new SimpleDateFormat("dd-MM").parse(this.mFiledStr);
        } catch (ParseException e) {
            PLog.e(TAG, e);
        }
        editText.setText(this.mFiledStr);
        this.updateDOS = this.mFiledStr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void captureImage(long j) {
        new CompressHelper().getCompressLoaction(this);
        ConstantsPMC.getInstance().setPictureReportingContext(this);
        PLog.location("Navigation", "Image Capture Click", TODO_TAG, UtilDeclarations.getDateTime());
        Intent intent = new Intent(context, (Class<?>) PictureReporting.class);
        intent.putExtra("activityId", this.activityId);
        intent.putExtra("assignmentId", this.assignmentId);
        try {
            intent.putExtra("setReferenceType", GetDataFromDB.getInstance().getLookupValue(Queries.getInstance().getItemValue("Survey")));
        } catch (Exception e) {
            PLog.e(TAG, e);
            e.printStackTrace();
        }
        intent.putExtra("setReferenceID", String.valueOf(this.activityAssignmentId));
        intent.putExtra("attributeId", 0);
        intent.putExtra("farmerId", this.farmerID);
        intent.putExtra("imageId", j);
        startActivity(intent);
    }

    private void insertPictureData() {
        PictureReportingData pictureReportingData = new PictureReportingData();
        long j = 0;
        for (int i = 0; i < this.imagelist.size(); i++) {
            try {
                this.getDataFromDB.getcount(Queries.getInstance().getPictureIdCount(this.farmerID));
                pictureReportingData.setImageId(System.currentTimeMillis());
                j = GetDataFromDB.getInstance().getLookupValue(Queries.getInstance().getItemValue("ToDo"));
            } catch (Exception e) {
                PLog.e(TAG, e);
                e.printStackTrace();
            }
            pictureReportingData.setActivityId("" + this.activityAssignmentId);
            pictureReportingData.setPicturePath(this.imagelist.get(i).toString());
            pictureReportingData.setPdaCreatedDate(UtilDeclarations.getDateTime());
            pictureReportingData.setServerStatus("false");
            pictureReportingData.setPDAID(ConstantsPMC.getInstance().getDeviceID());
            pictureReportingData.setCreatedBy(ConstantsPMC.getInstance().getUserId());
            pictureReportingData.setCreatedDate(UtilDeclarations.getDateTime());
            pictureReportingData.setUpdatedBy(ConstantsPMC.getInstance().getUserId());
            pictureReportingData.setUpdatedDate(UtilDeclarations.getDateTime());
            pictureReportingData.setReferenceType(j + "");
            pictureReportingData.setAssignmentId(this.assignmentId + "");
            pictureReportingData.setActivityId(this.activityId + "");
            StringBuilder sb = new StringBuilder("");
            sb.append(this.activityAssignmentId);
            pictureReportingData.setReferenceID(sb.toString());
            try {
                InsertDataIntoDB.insertPictureDetails(pictureReportingData, context);
            } catch (Exception e2) {
                PLog.e(TAG, e2);
                e2.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAdapter() {
        List<ImageDetails> imageDetailsList = this.getDataFromDB.getImageDetailsList(Queries.getInstance().getImageDetailsQry_Assignment(String.valueOf(this.activityAssignmentId)));
        this.images = imageDetailsList;
        if (imageDetailsList.size() > 0) {
            this.imageAdapter = new GridImageAdapter(this, this.images, this.imagelist);
            this.gridView.setAdapter((ListAdapter) null);
            this.gridView.setAdapter((ListAdapter) this.imageAdapter);
            this.gridView.setVisibility(0);
            this.tvpictures.setVisibility(0);
        } else {
            this.gridView.setVisibility(8);
            this.tvpictures.setVisibility(8);
        }
        List<ImageDetails> imageDetailsList2 = this.getDataFromDB.getImageDetailsList(Queries.getInstance().getVideoDetaisQry_assignment_testimonial(String.valueOf(this.activityAssignmentId)));
        this.videos = imageDetailsList2;
        if (imageDetailsList2 != null && imageDetailsList2.size() > 0) {
            this.videoAdapter = new GridVideoAdapter(context, this.videos, this.videoList);
            this.mVideoGridView.setAdapter((ListAdapter) null);
            this.mVideoGridView.setAdapter((ListAdapter) this.videoAdapter);
            this.mVideoGridView.setVisibility(0);
            this.tvVideos.setVisibility(0);
            return;
        }
        this.mVideoGridView.setVisibility(8);
        this.tvVideos.setVisibility(8);
    }

    @Override // com.conceptglobal.pmc.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        Log.d("timer", "start FForm resume " + System.currentTimeMillis());
        PLog.location("Navigation", "onResume/CaptureEnd", TODO_TAG, UtilDeclarations.getDateTime());
        setAdapter();
    }

    private void showDiscardAlert() {
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setMessage(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_discardSelfAssignConfirmDialog()));
        builder.setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.SurveyActivity.29
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                SurveyActivity.this.showRemarkSelectionAlert();
            }
        });
        builder.setNegativeButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_cancelVisitCompleteDialogButton()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.SurveyActivity.30
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

    /* JADX INFO: Access modifiers changed from: private */
    public void showRemarkSelectionAlert() {
        String[][] strArr = this.getDataFromDB.getlotdata(Queries.getInstance().getRemarkValues());
        this.remarkNames = new String[strArr.length];
        this.remarkids = new String[strArr.length];
        for (int i = 0; i < strArr.length; i++) {
            this.remarkids[i] = strArr[i][0];
            this.remarkNames[i] = strArr[i][1];
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setTitle(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectReasonDiscardTitle()));
        builder.setSingleChoiceItems(this.remarkNames, -1, new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.SurveyActivity.31
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                SurveyActivity.this.d_remarks.dismiss();
                try {
                    SurveyActivity.this.prepareAttributeData();
                    if (SurveyActivity.this.listAttributes_Assgnmt.size() != 0) {
                        GetDataFromDB.getInstance().executeRawQueryInDB(Queries.getInstance().deleteFarmerDetailsActivity(SurveyActivity.this.farmerID, SurveyActivity.this.activityId, SurveyActivity.this.activityAssignmentId));
                    }
                    InsertDataIntoDB.insertFarmerActivityDetailsUpdate(SurveyActivity.this.listAttributes_Assgnmt, SurveyActivity.this.farmerID, SurveyActivity.this.activityId, 1, 1, SurveyActivity.this.assignmentId, SurveyActivity.this.segmentId, 0L, 1, SurveyActivity.this.activityAssignmentId, SurveyActivity.this.assignmentDetals, SurveyActivity.this.packageId);
                    GetDataFromDB.getInstance().executeRawQueryInDB(Queries.getInstance().updateNotDoneForActivities(SurveyActivity.this.activityId, SurveyActivity.this.farmerID, SurveyActivity.this.assignmentId, SurveyActivity.this.remarkNames[i2]));
                    if (SurveyActivity.this.getDataFromDB.getIFContains(Queries.getInstance().updateDraftForAssignmentvisit(SurveyActivity.this.activityAssignmentId)) != 0) {
                        InsertDataIntoDB.UpdateAssignmentVisistDetails(SurveyActivity.this.assignmentId, SurveyActivity.this.farmerID, SurveyActivity.this.etDiscription.getText().toString(), SurveyActivity.this.tvLatitude.getText().toString(), SurveyActivity.this.tvLongitude.getText().toString(), SurveyActivity.this.activityAssignmentId, 0L, "false", SurveyActivity.this.locationProvider, SurveyActivity.this.GPSTimeStamp, "", "");
                    } else {
                        InsertDataIntoDB.insertAssignmentVisistDetails(SurveyActivity.this.assignmentId, SurveyActivity.this.farmerID, SurveyActivity.this.etDiscription.getText().toString(), SurveyActivity.this.tvLatitude.getText().toString(), SurveyActivity.this.tvLongitude.getText().toString(), SurveyActivity.this.activityAssignmentId, 0L, "false", SurveyActivity.this.locationProvider, SurveyActivity.this.GPSTimeStamp, "", "");
                    }
                    for (int i3 = 0; i3 < SurveyActivity.this.images.size(); i3++) {
                        InsertDataIntoDB.UpdateImageServerStatus(((ImageDetails) SurveyActivity.this.images.get(i3)).getImageId());
                    }
                    SurveyActivity.this.setResult(-1, new Intent());
                    try {
                        ((OnCompleteListener) SurveyActivity.this.getParent()).onComplete("1", null);
                    } catch (Exception e) {
                        PLog.e(SurveyActivity.TAG, e);
                        e.printStackTrace();
                    }
                    if (UtilDeclarations.isOnline(SurveyActivity.context)) {
                        if (!UtilDeclarations.isServiceRunning(SurveyActivity.this.getApplicationContext(), SyncDataService.class)) {
                            new SendDataServiceUtil(SurveyActivity.this).startService();
                        }
                    } else {
                        SurveyActivity.this.startActivity(new Intent(SurveyActivity.context, (Class<?>) ToDoActivity.class));
                    }
                    SurveyActivity.this.finish();
                } catch (Exception e2) {
                    PLog.e(SurveyActivity.TAG, e2);
                }
            }
        });
        AlertDialog create = builder.create();
        this.d_remarks = create;
        create.show();
        this.d_remarks.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.conceptglobal.pmc.fo.SurveyActivity.32
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                SurveyActivity.this.d_remarks.dismiss();
            }
        });
    }

    @Override // com.conceptglobal.pmc.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        LocalBroadcastManager.getInstance(this).unregisterReceiver(this.message);
        PLog.location("Navigation", "onDestroy", TODO_TAG, UtilDeclarations.getDateTime());
        super.onDestroy();
    }

    private boolean checkTerritorydetails() {
        try {
            if (this.territoryDetailsText.getTag(R.string.ENTRYID_SET) != null && !this.territoryDetailsText.getTag(R.string.ENTRYID_SET).equals("0") && !this.territoryDetailsText.getText().toString().equals("")) {
                return true;
            }
            Toast.makeText(getApplicationContext(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_plsSelectTerritory()), 0).show();
            return false;
        } catch (Exception e) {
            PLog.e(TAG, e.getMessage());
            return false;
        }
    }

    private boolean checkImagesMandatory() {
        try {
            if (this.getDataFromDB.getLookupValue(Queries.getInstance().getImageIsMandatoryInSurvey(this.activityId)) != 1 || this.images.size() != 0) {
                return true;
            }
            Toast.makeText(getApplicationContext(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_plsSelectImageToast()), 0).show();
            return false;
        } catch (Exception e) {
            PLog.e(TAG, e.getMessage());
            return false;
        }
    }

    private boolean checkVideoMandatory() {
        try {
            if (this.getDataFromDB.getLookupValue(Queries.getInstance().getVideoIsMandatoryInSurvey(this.activityId)) != 1 || this.videos.size() != 0) {
                return true;
            }
            Toast.makeText(getApplicationContext(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_plsSelectVideoToast()), 0).show();
            return false;
        } catch (Exception e) {
            PLog.e(TAG, e.getMessage());
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void captureVideo(long j) {
        Intent intent = new Intent(context, (Class<?>) VideoCapureActivityCopy2.class);
        intent.putExtra("activityId", this.activityId);
        intent.putExtra("assignmentId", this.assignmentId);
        try {
            intent.putExtra("setReferenceType", GetDataFromDB.getInstance().getLookupValue(Queries.getInstance().getItemValue("ToDo")));
        } catch (Exception e) {
            PLog.e(TAG, e);
            e.printStackTrace();
        }
        intent.putExtra("setReferenceID", String.valueOf(this.activityAssignmentId));
        intent.putExtra("attributeId", 0);
        intent.putExtra("farmerId", this.farmerID);
        intent.putExtra("imageId", 0);
        startActivity(intent);
    }

    private void fetchLocation() {
        if (!this.mLocationUtils.checkPermissions(this)) {
            this.mLocationUtils.requestPermissions(this);
            return;
        }
        try {
            new FetchLocation(this, true, new OnLocationFoundListener() { // from class: com.conceptglobal.pmc.fo.SurveyActivity.33
                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onTimerTimeOut() {
                }

                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onLocationFound(LocationInfo locationInfo) {
                    SurveyActivity.this.tvLatitude.setText(locationInfo.getLatitude() + "");
                    SurveyActivity.this.tvLongitude.setText(locationInfo.getLongitude() + "");
                }

                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onLocationFound(Location location) {
                    SurveyActivity.this.GPSTimeStamp = UtilDeclarations.getLongToDate(location.getTime());
                }
            }, TAG);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

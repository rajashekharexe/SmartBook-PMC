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
import android.widget.TabWidget;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.fragment.app.Fragment;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.conceptglobal.imaterialdesign.widget.FloatingActionButton;
import com.conceptglobal.pmc.BaseActivity;
import com.conceptglobal.pmc.adapter.ActivityDisplayAdapter;
import com.conceptglobal.pmc.adapter.CompanyDisplayAdapter;
import com.conceptglobal.pmc.adapter.CropDisplayAdapter;
import com.conceptglobal.pmc.adapter.GridImageAdapter;
import com.conceptglobal.pmc.adapter.GridVideoAdapter;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.common.ListPopupOne;
import com.conceptglobal.pmc.common.NeoCampaignConstants;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.DataBaseHandler;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.database.InsertDataIntoDB;
import com.conceptglobal.pmc.fragments.AddFarmer;
import com.conceptglobal.pmc.fragments.AddRetailer;
import com.conceptglobal.pmc.fragments.AttributesDynamicTableFarmatFragment;
import com.conceptglobal.pmc.fragments.AttributesTableFarmatFragment;
import com.conceptglobal.pmc.interfaces.AttributeEventListener;
import com.conceptglobal.pmc.interfaces.GetTableDataInterface;
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
import com.conceptglobal.pmc.model.TimeDetails;
import com.conceptglobal.pmc.promotions.activity.VideoCapureActivityCopy2;
import com.conceptglobal.pmc.service.SyncDataService;
import com.conceptglobal.pmc.utils.CompressHelper;
import com.conceptglobal.pmc.utils.CompressListener;
import com.conceptglobal.pmc.utils.ConstantDeclarations;
import com.conceptglobal.pmc.utils.CustomActionBar;
import com.conceptglobal.pmc.utils.Encryption;
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
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class FarmerFormActivity extends BaseActivity implements View.OnClickListener, AdapterView.OnItemClickListener, OnCompleteListener, AttributeEventListener, CompressListener {
    private static final int DATEDIALOGID = 0;
    private static final int DATEDIALOGID_YEARLESS = 1;
    private static final int GETATTRIBUTEDONE = 3;
    private static final int GETCUSTOMER = 3;
    private static final int GETNEWACTIVITY = 2;
    private static final int GETRETAILERLIST = 10;
    private static final int INITIALCROPID = -1;
    private static final String TAG = "FarmerFormActivity";
    private static final String TODO_TAG = "TODO";
    public static String campaignID = "";
    public static Context context;
    public static int currentActivityAssignmentId;
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
    private Button btnCustomerDetails;
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
    FloatingActionButton fab2;
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
    private ArrayList<String> imglstConfigId;
    private Intent intentGetData;
    private boolean isDisplayOthers;
    private boolean isDraftSave;
    private boolean isImageDeleted;
    private List<LastVisitModel> lastVisitData;
    private LinkedHashMap<String, List<LastVisitModel>> lastVisitModelHash;
    private List<ActivityModel> listActivities;
    private List<AttributeModel> listAttributes_Assgnmt;
    private List<DealerCompanyMapping> listDealerCompanies;
    private List<FarmerCropMapping> listFarmerCrops;
    private LinearLayout llLastvisitBody;
    private LinearLayout llactAddress;
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
    private TimeDetails timeDetails;
    private TextView tvAddCrop;
    TextView tvAlert;
    private TextView tvCropid;
    private TextView tvFarmer;
    private TextView tvIsBayerFarmer;
    private TextView tvLatitude;
    private TextView tvLongitude;
    private TextView tvRetailers;
    private TextView tvVideos;
    private TextView tv_address;
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
    private int isFromDraft = 0;
    private HashMap<String, String> hAttributes = null;
    HashMap<String, AttributeModel> campaignFarmersData = new HashMap<>();
    private ArrayList<String> sartiMoilesList = new ArrayList<>();
    private String segmentName = "";
    private ArrayList<DynamicFields> attributesArry = null;
    private int layoutId = 0;
    private int mForOperations = -1;
    private int mForDates = -1;
    private int datePos = 0;
    private String mFiledStr = "";
    private String updateDOS = null;
    private List<AttributeModel> listAttributes_Assgnmt_multiSelect = new ArrayList();
    private boolean isMIActivity = false;
    private boolean isTableViewActivity = false;
    private boolean isDynamicTableViewActivity = false;
    private String locationProvider = "";
    private String GPSTimeStamp = "";
    LocationUtils mLocationUtils = new LocationUtils();
    private String campaignStatus = "";
    private String total_CampaignIDs = "";
    private ArrayList<String> campaignIDList = new ArrayList<>();
    private String selCustomerId = "";
    private final TextWatcher tvLatitudeListener = new TextWatcher() { // from class: com.conceptglobal.pmc.fo.FarmerFormActivity.4
        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            if (editable.toString().trim().length() > 0) {
                FarmerFormActivity.this.tvLatitude.setError(null);
                FarmerFormActivity.this.tvLongitude.setError(null);
            }
        }
    };
    View.OnClickListener operationListener = new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.FarmerFormActivity.5
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ListPopupOne listPopupOne = new ListPopupOne(FarmerFormActivity.this, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectOneDropDownTitle()), ((DynamicFields) FarmerFormActivity.this.attributesArry.get(view.getId())).getDbquery(), view, (TextView) FarmerFormActivity.this.mEntryArrIds.get(view.getId()));
            listPopupOne.getWindow().getAttributes().windowAnimations = R.style.PauseDialogAnimation;
            listPopupOne.show();
            listPopupOne.getWindow().setSoftInputMode(3);
        }
    };
    View.OnClickListener datesListener = new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.FarmerFormActivity.17
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            FarmerFormActivity.this.datePos = view.getId();
            FarmerFormActivity.this.txt = (TextView) view;
            FarmerFormActivity.this.showDialog(0);
        }
    };
    View.OnClickListener datesListenerYearless = new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.FarmerFormActivity.18
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            FarmerFormActivity.this.datePos = view.getId();
            FarmerFormActivity.this.showDialog(1);
        }
    };
    CompressListener listener = new CompressListener() { // from class: com.conceptglobal.pmc.fo.FarmerFormActivity.21
        @Override // com.conceptglobal.pmc.utils.CompressListener
        public void onComprssCompleteListener(String str) {
            FarmerFormActivity.this.imagelist.add(str);
            FarmerFormActivity.this.setAdapter();
        }
    };
    private DatePickerDialog.OnDateSetListener mDateSetListener = new DatePickerDialog.OnDateSetListener() { // from class: com.conceptglobal.pmc.fo.FarmerFormActivity.26
        @Override // android.app.DatePickerDialog.OnDateSetListener
        public void onDateSet(DatePicker datePicker, int i, int i2, int i3) {
            String str;
            String str2;
            FarmerFormActivity.this.mYear = i;
            FarmerFormActivity.this.mMonth = i2;
            FarmerFormActivity.this.mDay = i3;
            try {
                if (new SimpleDateFormat("yyyy-MM-dd").parse(i + "-" + (i2 + 1) + "-" + i3).compareTo(new Date()) < 0) {
                    if (FarmerFormActivity.this.dateDialogID == 0) {
                        if (FarmerFormActivity.this.mMonth + 1 < 10) {
                            str = "0" + (FarmerFormActivity.this.mMonth + 1);
                        } else {
                            str = (FarmerFormActivity.this.mMonth + 1) + "";
                        }
                        if (FarmerFormActivity.this.mDay < 10) {
                            str2 = "0" + FarmerFormActivity.this.mDay;
                        } else {
                            str2 = FarmerFormActivity.this.mDay + "";
                        }
                        FarmerFormActivity.this.etCropDos.setText(str2 + "-" + str + "-" + FarmerFormActivity.this.mYear);
                        return;
                    }
                    return;
                }
                Toast.makeText(FarmerFormActivity.this.getApplicationContext(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectProperDate()), 1).show();
            } catch (Exception e) {
                PLog.e(FarmerFormActivity.TAG, e);
            }
        }
    };
    private DatePickerDialog.OnDateSetListener mDateSetListener_Yearless = new DatePickerDialog.OnDateSetListener() { // from class: com.conceptglobal.pmc.fo.FarmerFormActivity.27
        @Override // android.app.DatePickerDialog.OnDateSetListener
        public void onDateSet(DatePicker datePicker, int i, int i2, int i3) {
            FarmerFormActivity.this.mYear = i;
            FarmerFormActivity.this.mMonth = i2;
            FarmerFormActivity.this.mDay = i3;
            try {
                FarmerFormActivity.this.updateDisplay_yearless();
            } catch (Exception e) {
                PLog.e(FarmerFormActivity.this.tag, e);
            }
        }
    };
    BroadcastReceiver camaigndata_receiver = new BroadcastReceiver() { // from class: com.conceptglobal.pmc.fo.FarmerFormActivity.28
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context2, Intent intent) {
            try {
                if (intent.getExtras().containsKey("MobileNumber")) {
                    String string = intent.getExtras().getString("MobileNumber");
                    if (!FarmerFormActivity.this.campaignFarmersData.containsKey(string)) {
                        AttributeModel attributeModel = new AttributeModel();
                        attributeModel.setAttributeId(543);
                        attributeModel.setAttributeValue(string);
                        int size = FarmerFormActivity.this.campaignFarmersData.size() + 1;
                        attributeModel.setSequenceId("880." + size);
                        attributeModel.setChildLevelId("880." + size + ".543");
                        FarmerFormActivity.this.campaignFarmersData.put(string, attributeModel);
                    }
                }
                if (intent.getExtras().containsKey(NeoCampaignConstants.UPDATE_CAMPAIGN_ID)) {
                    FarmerFormActivity.campaignID = intent.getExtras().getString(NeoCampaignConstants.UPDATE_CAMPAIGN_ID);
                    if (!FarmerFormActivity.this.campaignIDList.contains(FarmerFormActivity.campaignID)) {
                        FarmerFormActivity.this.campaignIDList.add(FarmerFormActivity.campaignID);
                    }
                }
                if (intent.getExtras().containsKey(NeoCampaignConstants.CAMPAIGN_COMPLETED)) {
                    if (!FarmerFormActivity.this.campaignIDList.contains(FarmerFormActivity.campaignID)) {
                        FarmerFormActivity.this.campaignIDList.add(FarmerFormActivity.campaignID);
                    }
                    FarmerFormActivity.campaignID = "";
                    FarmerFormActivity.this.campaignStatus = intent.getExtras().getString(NeoCampaignConstants.CAMPAIGN_COMPLETED);
                    LocalBroadcastManager.getInstance(FarmerFormActivity.this.getApplicationContext()).sendBroadcast(new Intent(NeoCampaignConstants.CAMPAIGN_COMPLETED));
                }
                if (intent.getBundleExtra("BUNDLE") != null && intent.getBundleExtra("BUNDLE").containsKey("MissedCallsList")) {
                    List list = (List) intent.getBundleExtra("BUNDLE").getSerializable("MissedCallsList");
                    for (int i = 0; i < list.size(); i++) {
                        Map map = (Map) list.get(i);
                        JSONObject jSONObject = (JSONObject) map.get("CampaignMissedCall");
                        JSONObject jSONObject2 = (JSONObject) map.get("FarmerDetails");
                        if (jSONObject2 != null) {
                            try {
                                if (jSONObject2.has("IsSaarthieFarmer")) {
                                    Object obj = jSONObject2.get("IsSaarthieFarmer");
                                    Object obj2 = jSONObject2.get("MobileNumber");
                                    if ((obj instanceof Boolean) && ((Boolean) obj).booleanValue() && !FarmerFormActivity.this.sartiMoilesList.contains(obj2)) {
                                        FarmerFormActivity.this.sartiMoilesList.add((String) obj2);
                                    }
                                }
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        }
                        if (jSONObject != null && jSONObject.has("mobilenumber")) {
                            Object obj3 = jSONObject.get("mobilenumber");
                            if ((obj3 instanceof String) && !FarmerFormActivity.this.campaignFarmersData.containsKey(obj3)) {
                                AttributeModel attributeModel2 = new AttributeModel();
                                attributeModel2.setAttributeId(543);
                                attributeModel2.setAttributeValue((String) obj3);
                                int size2 = FarmerFormActivity.this.campaignFarmersData.size() + 1;
                                attributeModel2.setSequenceId("880." + size2);
                                attributeModel2.setChildLevelId("880." + size2 + ".543");
                                FarmerFormActivity.this.campaignFarmersData.put((String) obj3, attributeModel2);
                            }
                        }
                    }
                }
                Intent intent2 = new Intent("CAMPAIGNS_FARMERS_LIST");
                intent2.putExtra("Campaigns_Farmers_Count", FarmerFormActivity.this.campaignFarmersData.size());
                intent2.putExtra("Campaigns_SartiFarmers_Count", FarmerFormActivity.this.sartiMoilesList.size());
                LocalBroadcastManager.getInstance(FarmerFormActivity.this.getApplicationContext()).sendBroadcast(intent2);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    };
    private BroadcastReceiver message = new BroadcastReceiver() { // from class: com.conceptglobal.pmc.fo.FarmerFormActivity.29
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context2, Intent intent) {
            String stringExtra = intent.getStringExtra("deletedImage");
            FarmerFormActivity.this.imagelist.remove(stringExtra);
            FarmerFormActivity.this.isImageDeleted = true;
            try {
                File file = new File(stringExtra);
                if (file.exists()) {
                    file.delete();
                }
            } catch (Exception e) {
                PLog.e(FarmerFormActivity.TAG, e);
                e.printStackTrace();
            }
        }
    };
    private BroadcastReceiver datasaveReceiver = new BroadcastReceiver() { // from class: com.conceptglobal.pmc.fo.FarmerFormActivity.35
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context2, Intent intent) {
            FarmerFormActivity.this.isDisplayOthers = intent.getBooleanExtra("IsDisplayOthersTab", false);
            if (FarmerFormActivity.this.isDisplayOthers) {
                FarmerFormActivity.this.setTab(2);
            } else {
                FarmerFormActivity.this.setTab(1);
            }
        }
    };

    @Override // com.conceptglobal.pmc.BaseActivity
    protected void displayNotification(String str, String str2) {
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
    }

    /* JADX WARN: Can't wrap try/catch for region: R(19:0|1|(3:3|(1:5)|6)|7|(1:47)(1:11)|12|(1:16)|17|(2:18|19)|(7:24|25|26|27|28|29|(2:39|40)(1:37))|44|25|26|27|28|29|(1:31)|39|40) */
    @Override // com.conceptglobal.pmc.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onCreate(android.os.Bundle r11) {
        /*
            Method dump skipped, instructions count: 366
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.fo.FarmerFormActivity.onCreate(android.os.Bundle):void");
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
        this.btnInactive = (Button) this.tabHost.findViewById(R.id.btn_inactive_farmer_other_details);
        this.btnVisit = (Button) this.tabHost.findViewById(R.id.btn_visit_farmer_other_details);
        this.lvLastVisitData = (ListView) findViewById(R.id.lv_list_alert);
        this.llLastvisitBody = (LinearLayout) findViewById(R.id.llLastvisitBody);
        this.slLastVistdata = (ScrollView) findViewById(R.id.svLastVisitData);
        this.btnLatLng = (ImageView) this.tabHost.findViewById(R.id.btn_get_latlong_farmer_personal_detailss);
        this.tvLatitude = (TextView) this.tabHost.findViewById(R.id.tv_latitude_personal_detailss);
        this.tvLongitude = (TextView) this.tabHost.findViewById(R.id.tv_longitude_personal_detailss);
        this.tvpictures = (TextView) this.tabHost.findViewById(R.id.pictures);
        this.tvVideos = (TextView) this.tabHost.findViewById(R.id.videos);
        this.tv_address = (TextView) this.tabHost.findViewById(R.id.tv_address);
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.llactAddress);
        this.llactAddress = linearLayout;
        linearLayout.setVisibility(0);
        this.custDetailsText = (TextView) this.tabHost.findViewById(R.id.txtSelectCustomer);
        this.btnCustomerDetails = (Button) this.tabHost.findViewById(R.id.btnSelectCustomer);
        TextView textView = (TextView) this.tabHost.findViewById(R.id.txtSelectTerritory);
        this.territoryDetailsText = textView;
        textView.setVisibility(0);
        Button button2 = (Button) this.tabHost.findViewById(R.id.btnSelectTerritory);
        this.btnTerritoryDetails = button2;
        button2.setVisibility(0);
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
        Button button3 = (Button) this.tabHost.findViewById(R.id.btnViewHistory);
        this.btnViewHistory = button3;
        button3.setOnClickListener(this);
        this.btnViewHistory.setText("Show History");
        campaignID = "";
    }

    private void settingTabs() {
        LocalActivityManager localActivityManager = new LocalActivityManager(this, false);
        localActivityManager.dispatchCreate(null);
        this.tabHost.setup(localActivityManager);
        addTab(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_lastVisitTabName()), R.drawable.ic_action_last_vist, getResources().getString(R.string.pmc_tag5));
        int i = this.segmentId;
        if (i != 4 && i != 10 && i != 18) {
            addTab(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_customerDetailsTabName()), R.drawable.ic_action_person_wight, getResources().getString(R.string.pmc_tag1));
        }
        addTab(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_activityLastVisitText()), R.drawable.ic_activity_wight, getResources().getString(R.string.pmc_tag3));
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
                    Intent intent3 = new Intent(context, (Class<?>) AttributesActivity.class);
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
        String str;
        this.assignmentDetals = (AssignmentActivityDetailsModel) getIntent().getExtras().getParcelable("MODELCLASS");
        this.farmerID = this.intentGetData.getStringExtra(ConstantDeclarations.getInstance().getKEYFARMERID());
        this.intentGetData.getStringExtra(ConstantDeclarations.getInstance().getKEYVILLAGEID());
        this.activityId = this.intentGetData.getIntExtra(ConstantDeclarations.getInstance().getKEYACTIVITYID(), 0);
        this.assignmentId = this.intentGetData.getIntExtra("AssignmentId", 0);
        String stringExtra = this.intentGetData.getStringExtra("ACTIVITYNAME");
        this.activityName = stringExtra;
        if (!TextUtils.isEmpty(stringExtra)) {
            try {
                this.activityName += "-" + GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getActivityShortCode(this.activityId));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        int intExtra = this.intentGetData.getIntExtra("ActivityAssignmentId", 0);
        this.activityAssignmentId = intExtra;
        currentActivityAssignmentId = intExtra;
        this.segmentId = this.intentGetData.getIntExtra("SEGMENTID", 0);
        this.packageId = this.intentGetData.getIntExtra("PackageId", 0);
        this.segmentName = this.getDataFromDB.getSegmentName(this.segmentId);
        if (ConstantsPMC.getInstance().getIsTrainingORLive() != 2) {
            CustomActionBar.initActionBar(this, this.segmentName + " Details(" + UtilDeclarations.getApplicationVersion(context) + ")");
        } else {
            CustomActionBar.initActionBar(this, this.segmentName + " Details(" + UtilDeclarations.getApplicationVersion(context) + ")");
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
        } catch (Exception e2) {
            this.farmerMaster.setRespondentNo("");
            PLog.e(this.tag, e2);
        }
        this.visitDetails = this.getDataFromDB.getAssignmentVisitDetail(Queries.getInstance().getAssignmentVisitDetail(this.activityAssignmentId));
        try {
            if (this.getDataFromDB.getIFContains(Queries.getInstance().getQueryActivityType(this.activityId)) == 8) {
                this.isMIActivity = true;
            }
            String singleValue = this.getDataFromDB.getSingleValue(Queries.getInstance().getActivityDisplayType(this.activityId));
            if (singleValue != null && singleValue.equals("2")) {
                this.isTableViewActivity = true;
            } else if (singleValue != null && singleValue.equals("3")) {
                this.isDynamicTableViewActivity = true;
            }
        } catch (Exception e3) {
            PLog.e(this.tag, e3);
        }
        try {
            try {
                str = GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getCampaignIDToDo(this.activityAssignmentId));
            } catch (Exception e4) {
                e4.printStackTrace();
                str = null;
            }
            if (TextUtils.isEmpty(str)) {
                return;
            }
            ArrayList<String> arrayList = new ArrayList<>(Arrays.asList(str.split(",")));
            this.campaignIDList = arrayList;
            if (arrayList.size() > 0) {
                ArrayList<String> arrayList2 = this.campaignIDList;
                campaignID = arrayList2.get(arrayList2.size() - 1);
            }
        } catch (Exception e5) {
            e5.printStackTrace();
        }
    }

    private void setLayoutData() {
        int i;
        this.tvFarmer.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_pmcFarmerInFFA()));
        this.btnDealer.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_prefDealerInFFA()));
        this.btnDiscription.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_visitDescInFFA()));
        this.etDiscription.setHint(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_addDescInFFA()));
        this.btnSave.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_draftFarmerText()));
        this.btnInactive.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_discardText()));
        this.btnVisit.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_visitCompleteButtonText()));
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
            int intValue2 = this.getDataFromDB.getIntValue(this.queries.getEcexutionSegmentIdDraftQuery(this.activityAssignmentId, 0L));
            if (intValue2 != 0) {
                this.selSegmentID = intValue2;
                String stringValue = this.getDataFromDB.getStringValue(this.queries.getEcexutionSegmentValueDraftQuery(this.activityAssignmentId, 0L));
                this.selCustomerId = stringValue;
                String stringValue2 = this.getDataFromDB.getStringValue(this.queries.getCustomerNameBySegmentValue(stringValue, this.selSegmentID));
                if (stringValue2 != null && ((i = this.selSegmentID) == 1 || i == 2 || i == 3 || i == 8)) {
                    this.custDetailsText.setText(Encryption.decrypt(stringValue2));
                } else {
                    this.custDetailsText.setText(stringValue2);
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
        List<LastVisitModel> list = this.lastVisitData;
        if (list != null && list.size() > 0) {
            this.tabHost.findViewById(R.id.ll_list_alert).setVisibility(8);
            addLastVisitAcitivityAttributes(this.lastVisitData);
        } else {
            this.tvAlert.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_visitDetNotAvailText()));
            this.tabHost.findViewById(R.id.ll_list_alert).setVisibility(0);
        }
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

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        try {
            ArrayList<String> arrayList = new ArrayList<>();
            StringBuilder sb = new StringBuilder();
            List<EditText> list = this.mEntryArrIds_Assgnmt;
            if (list != null) {
                Iterator<EditText> it = list.iterator();
                while (it.hasNext()) {
                    String obj = it.next().getText().toString();
                    arrayList.add(obj);
                    sb.append(obj);
                    sb.append(" | ");
                }
                bundle.putStringArrayList("edit_text_id_values_2", arrayList);
                PLog.e(TAG, sb.toString());
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // android.app.Activity
    protected void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        try {
            ArrayList<String> stringArrayList = bundle.getStringArrayList("edit_text_id_values_2");
            if (stringArrayList == null || this.mEntryArrIds_Assgnmt == null) {
                return;
            }
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < stringArrayList.size() && i < this.mEntryArrIds_Assgnmt.size(); i++) {
                String str = stringArrayList.get(i);
                this.mEntryArrIds_Assgnmt.get(i).setText(str);
                sb.append(str);
                sb.append(" | ");
            }
            PLog.e(TAG, sb.toString());
        } catch (Exception unused) {
        }
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
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.fo.FarmerFormActivity.addOperationsDynamicLayout(java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, int, int, int, int, int, android.widget.LinearLayout, int):void");
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
        this.tabHost.setOnTabChangedListener(new TabHost.OnTabChangeListener() { // from class: com.conceptglobal.pmc.fo.FarmerFormActivity.6
            @Override // android.widget.TabHost.OnTabChangeListener
            public void onTabChanged(String str) {
                int currentTab = FarmerFormActivity.this.tabHost.getCurrentTab();
                if (!FarmerFormActivity.this.isDisplayOthers || FarmerFormActivity.this.tabHost.getCurrentTab() != 1) {
                    if (FarmerFormActivity.this.segmentId == 4 || FarmerFormActivity.this.segmentId == 10 || FarmerFormActivity.this.segmentId == 18) {
                        if (currentTab != 2) {
                            FarmerFormActivity.this.miDraft.setVisible(false);
                        } else {
                            FarmerFormActivity.this.miDraft.setVisible(true);
                        }
                        if (currentTab == 1 || currentTab != 2) {
                            return;
                        }
                        if (!FarmerFormActivity.this.isMIActivity) {
                            if (!FarmerFormActivity.this.isTableViewActivity) {
                                if (FarmerFormActivity.this.isDynamicTableViewActivity) {
                                    AttributesDynmicTableViewActivity.methodToGetData(FarmerFormActivity.context);
                                    return;
                                } else {
                                    AttributesActivity.methodToGetData(FarmerFormActivity.context);
                                    return;
                                }
                            }
                            AttributesTableViewActivity.methodToGetData(FarmerFormActivity.context);
                            return;
                        }
                        MarketAttributesActivity.methodToGetData(FarmerFormActivity.context);
                        return;
                    }
                    if (currentTab != 3) {
                        FarmerFormActivity.this.miDraft.setVisible(false);
                    } else {
                        FarmerFormActivity.this.miDraft.setVisible(true);
                    }
                    if (currentTab == 1 || currentTab != 3) {
                        return;
                    }
                    if (!FarmerFormActivity.this.isMIActivity) {
                        if (!FarmerFormActivity.this.isTableViewActivity) {
                            if (FarmerFormActivity.this.isDynamicTableViewActivity) {
                                AttributesDynmicTableViewActivity.methodToGetData(FarmerFormActivity.context);
                                return;
                            } else {
                                AttributesActivity.methodToGetData(FarmerFormActivity.context);
                                return;
                            }
                        }
                        AttributesTableViewActivity.methodToGetData(FarmerFormActivity.context);
                        return;
                    }
                    MarketAttributesActivity.methodToGetData(FarmerFormActivity.context);
                    return;
                }
                FarmerFormActivity.this.setTab(2);
            }
        });
        this.territoryDetailsText.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.FarmerFormActivity.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ListPopupOne listPopupOne = new ListPopupOne(FarmerFormActivity.this, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectText()) + " Territory", " SELECT territoryId,territoryName FROM TerritoryMaster where isActive ='True' or isActive=1", view, FarmerFormActivity.this.territoryDetailsText);
                listPopupOne.getWindow().getAttributes().windowAnimations = R.style.PauseDialogAnimation;
                listPopupOne.show();
                listPopupOne.getWindow().setSoftInputMode(3);
            }
        });
        this.custDetailsText.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.FarmerFormActivity.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                try {
                    if (TextUtils.isEmpty(AttributesActivity.starttimeMobile) && TextUtils.isEmpty(AttributesTableViewActivity.starttimeMobile) && TextUtils.isEmpty(AttributesDynmicTableViewActivity.starttimeMobile)) {
                        FarmerFormActivity.this.showAlertDialog(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_StartTimerText()));
                        return;
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
                Intent intent = new Intent(FarmerFormActivity.this.getBaseContext(), (Class<?>) SelfAssignActivity.class);
                intent.putExtra("isFromAssignment", 1);
                intent.putExtra("isFromTodo", 1);
                intent.putExtra("ACTIVITYID", FarmerFormActivity.this.activityId);
                FarmerFormActivity.this.startActivityForResult(intent, 3);
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

    /* JADX WARN: Removed duplicated region for block: B:102:0x0a9b A[Catch: Exception -> 0x0c23, TryCatch #1 {Exception -> 0x0c23, blocks: (B:138:0x0074, B:143:0x008e, B:145:0x00a8, B:147:0x00c5, B:149:0x00d3, B:151:0x00e5, B:154:0x00f8, B:156:0x011e, B:158:0x0286, B:160:0x029a, B:162:0x02b4, B:164:0x02d3, B:165:0x02df, B:167:0x02f1, B:169:0x0305, B:171:0x0325, B:174:0x0363, B:175:0x0371, B:177:0x03a8, B:179:0x03e3, B:180:0x03ef, B:182:0x03fd, B:184:0x040b, B:186:0x0421, B:188:0x0451, B:192:0x0457, B:201:0x0465, B:203:0x04a0, B:205:0x04ae, B:207:0x04bc, B:209:0x04d2, B:211:0x04f4, B:213:0x0533, B:215:0x0541, B:217:0x054f, B:219:0x055d, B:221:0x0573, B:223:0x0595, B:225:0x05d2, B:227:0x0151, B:228:0x015f, B:230:0x0179, B:232:0x0181, B:235:0x018a, B:237:0x0192, B:241:0x0206, B:243:0x0214, B:244:0x022f, B:246:0x0249, B:247:0x0279, B:248:0x019d, B:249:0x01d1, B:13:0x0651, B:15:0x066b, B:17:0x0679, B:19:0x068b, B:22:0x069e, B:24:0x06c4, B:26:0x082c, B:28:0x083e, B:30:0x0850, B:32:0x0870, B:35:0x08ae, B:36:0x08bc, B:38:0x08f3, B:40:0x092e, B:41:0x093a, B:43:0x0948, B:45:0x0956, B:47:0x096c, B:49:0x099c, B:53:0x09a2, B:83:0x09b0, B:88:0x09ed, B:90:0x09fc, B:92:0x0a0a, B:94:0x0a20, B:96:0x0a42, B:98:0x0a7f, B:100:0x0a8d, B:102:0x0a9b, B:104:0x0aa9, B:106:0x0abf, B:108:0x0ae1, B:110:0x0b1e, B:112:0x06f7, B:113:0x0705, B:115:0x071f, B:117:0x0727, B:120:0x0730, B:122:0x0738, B:126:0x07ac, B:128:0x07ba, B:129:0x07d5, B:131:0x07ef, B:132:0x081f, B:133:0x0743, B:134:0x0777), top: B:137:0x0074 }] */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0abf A[Catch: Exception -> 0x0c23, TryCatch #1 {Exception -> 0x0c23, blocks: (B:138:0x0074, B:143:0x008e, B:145:0x00a8, B:147:0x00c5, B:149:0x00d3, B:151:0x00e5, B:154:0x00f8, B:156:0x011e, B:158:0x0286, B:160:0x029a, B:162:0x02b4, B:164:0x02d3, B:165:0x02df, B:167:0x02f1, B:169:0x0305, B:171:0x0325, B:174:0x0363, B:175:0x0371, B:177:0x03a8, B:179:0x03e3, B:180:0x03ef, B:182:0x03fd, B:184:0x040b, B:186:0x0421, B:188:0x0451, B:192:0x0457, B:201:0x0465, B:203:0x04a0, B:205:0x04ae, B:207:0x04bc, B:209:0x04d2, B:211:0x04f4, B:213:0x0533, B:215:0x0541, B:217:0x054f, B:219:0x055d, B:221:0x0573, B:223:0x0595, B:225:0x05d2, B:227:0x0151, B:228:0x015f, B:230:0x0179, B:232:0x0181, B:235:0x018a, B:237:0x0192, B:241:0x0206, B:243:0x0214, B:244:0x022f, B:246:0x0249, B:247:0x0279, B:248:0x019d, B:249:0x01d1, B:13:0x0651, B:15:0x066b, B:17:0x0679, B:19:0x068b, B:22:0x069e, B:24:0x06c4, B:26:0x082c, B:28:0x083e, B:30:0x0850, B:32:0x0870, B:35:0x08ae, B:36:0x08bc, B:38:0x08f3, B:40:0x092e, B:41:0x093a, B:43:0x0948, B:45:0x0956, B:47:0x096c, B:49:0x099c, B:53:0x09a2, B:83:0x09b0, B:88:0x09ed, B:90:0x09fc, B:92:0x0a0a, B:94:0x0a20, B:96:0x0a42, B:98:0x0a7f, B:100:0x0a8d, B:102:0x0a9b, B:104:0x0aa9, B:106:0x0abf, B:108:0x0ae1, B:110:0x0b1e, B:112:0x06f7, B:113:0x0705, B:115:0x071f, B:117:0x0727, B:120:0x0730, B:122:0x0738, B:126:0x07ac, B:128:0x07ba, B:129:0x07d5, B:131:0x07ef, B:132:0x081f, B:133:0x0743, B:134:0x0777), top: B:137:0x0074 }] */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0b2b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:128:0x07ba A[Catch: Exception -> 0x0c23, TryCatch #1 {Exception -> 0x0c23, blocks: (B:138:0x0074, B:143:0x008e, B:145:0x00a8, B:147:0x00c5, B:149:0x00d3, B:151:0x00e5, B:154:0x00f8, B:156:0x011e, B:158:0x0286, B:160:0x029a, B:162:0x02b4, B:164:0x02d3, B:165:0x02df, B:167:0x02f1, B:169:0x0305, B:171:0x0325, B:174:0x0363, B:175:0x0371, B:177:0x03a8, B:179:0x03e3, B:180:0x03ef, B:182:0x03fd, B:184:0x040b, B:186:0x0421, B:188:0x0451, B:192:0x0457, B:201:0x0465, B:203:0x04a0, B:205:0x04ae, B:207:0x04bc, B:209:0x04d2, B:211:0x04f4, B:213:0x0533, B:215:0x0541, B:217:0x054f, B:219:0x055d, B:221:0x0573, B:223:0x0595, B:225:0x05d2, B:227:0x0151, B:228:0x015f, B:230:0x0179, B:232:0x0181, B:235:0x018a, B:237:0x0192, B:241:0x0206, B:243:0x0214, B:244:0x022f, B:246:0x0249, B:247:0x0279, B:248:0x019d, B:249:0x01d1, B:13:0x0651, B:15:0x066b, B:17:0x0679, B:19:0x068b, B:22:0x069e, B:24:0x06c4, B:26:0x082c, B:28:0x083e, B:30:0x0850, B:32:0x0870, B:35:0x08ae, B:36:0x08bc, B:38:0x08f3, B:40:0x092e, B:41:0x093a, B:43:0x0948, B:45:0x0956, B:47:0x096c, B:49:0x099c, B:53:0x09a2, B:83:0x09b0, B:88:0x09ed, B:90:0x09fc, B:92:0x0a0a, B:94:0x0a20, B:96:0x0a42, B:98:0x0a7f, B:100:0x0a8d, B:102:0x0a9b, B:104:0x0aa9, B:106:0x0abf, B:108:0x0ae1, B:110:0x0b1e, B:112:0x06f7, B:113:0x0705, B:115:0x071f, B:117:0x0727, B:120:0x0730, B:122:0x0738, B:126:0x07ac, B:128:0x07ba, B:129:0x07d5, B:131:0x07ef, B:132:0x081f, B:133:0x0743, B:134:0x0777), top: B:137:0x0074 }] */
    /* JADX WARN: Removed duplicated region for block: B:129:0x07d5 A[Catch: Exception -> 0x0c23, TryCatch #1 {Exception -> 0x0c23, blocks: (B:138:0x0074, B:143:0x008e, B:145:0x00a8, B:147:0x00c5, B:149:0x00d3, B:151:0x00e5, B:154:0x00f8, B:156:0x011e, B:158:0x0286, B:160:0x029a, B:162:0x02b4, B:164:0x02d3, B:165:0x02df, B:167:0x02f1, B:169:0x0305, B:171:0x0325, B:174:0x0363, B:175:0x0371, B:177:0x03a8, B:179:0x03e3, B:180:0x03ef, B:182:0x03fd, B:184:0x040b, B:186:0x0421, B:188:0x0451, B:192:0x0457, B:201:0x0465, B:203:0x04a0, B:205:0x04ae, B:207:0x04bc, B:209:0x04d2, B:211:0x04f4, B:213:0x0533, B:215:0x0541, B:217:0x054f, B:219:0x055d, B:221:0x0573, B:223:0x0595, B:225:0x05d2, B:227:0x0151, B:228:0x015f, B:230:0x0179, B:232:0x0181, B:235:0x018a, B:237:0x0192, B:241:0x0206, B:243:0x0214, B:244:0x022f, B:246:0x0249, B:247:0x0279, B:248:0x019d, B:249:0x01d1, B:13:0x0651, B:15:0x066b, B:17:0x0679, B:19:0x068b, B:22:0x069e, B:24:0x06c4, B:26:0x082c, B:28:0x083e, B:30:0x0850, B:32:0x0870, B:35:0x08ae, B:36:0x08bc, B:38:0x08f3, B:40:0x092e, B:41:0x093a, B:43:0x0948, B:45:0x0956, B:47:0x096c, B:49:0x099c, B:53:0x09a2, B:83:0x09b0, B:88:0x09ed, B:90:0x09fc, B:92:0x0a0a, B:94:0x0a20, B:96:0x0a42, B:98:0x0a7f, B:100:0x0a8d, B:102:0x0a9b, B:104:0x0aa9, B:106:0x0abf, B:108:0x0ae1, B:110:0x0b1e, B:112:0x06f7, B:113:0x0705, B:115:0x071f, B:117:0x0727, B:120:0x0730, B:122:0x0738, B:126:0x07ac, B:128:0x07ba, B:129:0x07d5, B:131:0x07ef, B:132:0x081f, B:133:0x0743, B:134:0x0777), top: B:137:0x0074 }] */
    /* JADX WARN: Removed duplicated region for block: B:160:0x029a A[Catch: Exception -> 0x0c23, TryCatch #1 {Exception -> 0x0c23, blocks: (B:138:0x0074, B:143:0x008e, B:145:0x00a8, B:147:0x00c5, B:149:0x00d3, B:151:0x00e5, B:154:0x00f8, B:156:0x011e, B:158:0x0286, B:160:0x029a, B:162:0x02b4, B:164:0x02d3, B:165:0x02df, B:167:0x02f1, B:169:0x0305, B:171:0x0325, B:174:0x0363, B:175:0x0371, B:177:0x03a8, B:179:0x03e3, B:180:0x03ef, B:182:0x03fd, B:184:0x040b, B:186:0x0421, B:188:0x0451, B:192:0x0457, B:201:0x0465, B:203:0x04a0, B:205:0x04ae, B:207:0x04bc, B:209:0x04d2, B:211:0x04f4, B:213:0x0533, B:215:0x0541, B:217:0x054f, B:219:0x055d, B:221:0x0573, B:223:0x0595, B:225:0x05d2, B:227:0x0151, B:228:0x015f, B:230:0x0179, B:232:0x0181, B:235:0x018a, B:237:0x0192, B:241:0x0206, B:243:0x0214, B:244:0x022f, B:246:0x0249, B:247:0x0279, B:248:0x019d, B:249:0x01d1, B:13:0x0651, B:15:0x066b, B:17:0x0679, B:19:0x068b, B:22:0x069e, B:24:0x06c4, B:26:0x082c, B:28:0x083e, B:30:0x0850, B:32:0x0870, B:35:0x08ae, B:36:0x08bc, B:38:0x08f3, B:40:0x092e, B:41:0x093a, B:43:0x0948, B:45:0x0956, B:47:0x096c, B:49:0x099c, B:53:0x09a2, B:83:0x09b0, B:88:0x09ed, B:90:0x09fc, B:92:0x0a0a, B:94:0x0a20, B:96:0x0a42, B:98:0x0a7f, B:100:0x0a8d, B:102:0x0a9b, B:104:0x0aa9, B:106:0x0abf, B:108:0x0ae1, B:110:0x0b1e, B:112:0x06f7, B:113:0x0705, B:115:0x071f, B:117:0x0727, B:120:0x0730, B:122:0x0738, B:126:0x07ac, B:128:0x07ba, B:129:0x07d5, B:131:0x07ef, B:132:0x081f, B:133:0x0743, B:134:0x0777), top: B:137:0x0074 }] */
    /* JADX WARN: Removed duplicated region for block: B:167:0x02f1 A[Catch: Exception -> 0x0c23, TryCatch #1 {Exception -> 0x0c23, blocks: (B:138:0x0074, B:143:0x008e, B:145:0x00a8, B:147:0x00c5, B:149:0x00d3, B:151:0x00e5, B:154:0x00f8, B:156:0x011e, B:158:0x0286, B:160:0x029a, B:162:0x02b4, B:164:0x02d3, B:165:0x02df, B:167:0x02f1, B:169:0x0305, B:171:0x0325, B:174:0x0363, B:175:0x0371, B:177:0x03a8, B:179:0x03e3, B:180:0x03ef, B:182:0x03fd, B:184:0x040b, B:186:0x0421, B:188:0x0451, B:192:0x0457, B:201:0x0465, B:203:0x04a0, B:205:0x04ae, B:207:0x04bc, B:209:0x04d2, B:211:0x04f4, B:213:0x0533, B:215:0x0541, B:217:0x054f, B:219:0x055d, B:221:0x0573, B:223:0x0595, B:225:0x05d2, B:227:0x0151, B:228:0x015f, B:230:0x0179, B:232:0x0181, B:235:0x018a, B:237:0x0192, B:241:0x0206, B:243:0x0214, B:244:0x022f, B:246:0x0249, B:247:0x0279, B:248:0x019d, B:249:0x01d1, B:13:0x0651, B:15:0x066b, B:17:0x0679, B:19:0x068b, B:22:0x069e, B:24:0x06c4, B:26:0x082c, B:28:0x083e, B:30:0x0850, B:32:0x0870, B:35:0x08ae, B:36:0x08bc, B:38:0x08f3, B:40:0x092e, B:41:0x093a, B:43:0x0948, B:45:0x0956, B:47:0x096c, B:49:0x099c, B:53:0x09a2, B:83:0x09b0, B:88:0x09ed, B:90:0x09fc, B:92:0x0a0a, B:94:0x0a20, B:96:0x0a42, B:98:0x0a7f, B:100:0x0a8d, B:102:0x0a9b, B:104:0x0aa9, B:106:0x0abf, B:108:0x0ae1, B:110:0x0b1e, B:112:0x06f7, B:113:0x0705, B:115:0x071f, B:117:0x0727, B:120:0x0730, B:122:0x0738, B:126:0x07ac, B:128:0x07ba, B:129:0x07d5, B:131:0x07ef, B:132:0x081f, B:133:0x0743, B:134:0x0777), top: B:137:0x0074 }] */
    /* JADX WARN: Removed duplicated region for block: B:182:0x03fd A[Catch: Exception -> 0x0c23, TryCatch #1 {Exception -> 0x0c23, blocks: (B:138:0x0074, B:143:0x008e, B:145:0x00a8, B:147:0x00c5, B:149:0x00d3, B:151:0x00e5, B:154:0x00f8, B:156:0x011e, B:158:0x0286, B:160:0x029a, B:162:0x02b4, B:164:0x02d3, B:165:0x02df, B:167:0x02f1, B:169:0x0305, B:171:0x0325, B:174:0x0363, B:175:0x0371, B:177:0x03a8, B:179:0x03e3, B:180:0x03ef, B:182:0x03fd, B:184:0x040b, B:186:0x0421, B:188:0x0451, B:192:0x0457, B:201:0x0465, B:203:0x04a0, B:205:0x04ae, B:207:0x04bc, B:209:0x04d2, B:211:0x04f4, B:213:0x0533, B:215:0x0541, B:217:0x054f, B:219:0x055d, B:221:0x0573, B:223:0x0595, B:225:0x05d2, B:227:0x0151, B:228:0x015f, B:230:0x0179, B:232:0x0181, B:235:0x018a, B:237:0x0192, B:241:0x0206, B:243:0x0214, B:244:0x022f, B:246:0x0249, B:247:0x0279, B:248:0x019d, B:249:0x01d1, B:13:0x0651, B:15:0x066b, B:17:0x0679, B:19:0x068b, B:22:0x069e, B:24:0x06c4, B:26:0x082c, B:28:0x083e, B:30:0x0850, B:32:0x0870, B:35:0x08ae, B:36:0x08bc, B:38:0x08f3, B:40:0x092e, B:41:0x093a, B:43:0x0948, B:45:0x0956, B:47:0x096c, B:49:0x099c, B:53:0x09a2, B:83:0x09b0, B:88:0x09ed, B:90:0x09fc, B:92:0x0a0a, B:94:0x0a20, B:96:0x0a42, B:98:0x0a7f, B:100:0x0a8d, B:102:0x0a9b, B:104:0x0aa9, B:106:0x0abf, B:108:0x0ae1, B:110:0x0b1e, B:112:0x06f7, B:113:0x0705, B:115:0x071f, B:117:0x0727, B:120:0x0730, B:122:0x0738, B:126:0x07ac, B:128:0x07ba, B:129:0x07d5, B:131:0x07ef, B:132:0x081f, B:133:0x0743, B:134:0x0777), top: B:137:0x0074 }] */
    /* JADX WARN: Removed duplicated region for block: B:196:0x05ee A[Catch: Exception -> 0x0c21, TryCatch #2 {Exception -> 0x0c21, blocks: (B:63:0x0ba2, B:69:0x0bb4, B:71:0x0bbc, B:73:0x0bc4, B:76:0x0bcd, B:65:0x0bf3, B:194:0x05e0, B:196:0x05ee, B:198:0x0604, B:55:0x0b31, B:57:0x0b3f, B:59:0x0b55), top: B:68:0x0bb4 }] */
    /* JADX WARN: Removed duplicated region for block: B:205:0x04ae A[Catch: Exception -> 0x0c23, TryCatch #1 {Exception -> 0x0c23, blocks: (B:138:0x0074, B:143:0x008e, B:145:0x00a8, B:147:0x00c5, B:149:0x00d3, B:151:0x00e5, B:154:0x00f8, B:156:0x011e, B:158:0x0286, B:160:0x029a, B:162:0x02b4, B:164:0x02d3, B:165:0x02df, B:167:0x02f1, B:169:0x0305, B:171:0x0325, B:174:0x0363, B:175:0x0371, B:177:0x03a8, B:179:0x03e3, B:180:0x03ef, B:182:0x03fd, B:184:0x040b, B:186:0x0421, B:188:0x0451, B:192:0x0457, B:201:0x0465, B:203:0x04a0, B:205:0x04ae, B:207:0x04bc, B:209:0x04d2, B:211:0x04f4, B:213:0x0533, B:215:0x0541, B:217:0x054f, B:219:0x055d, B:221:0x0573, B:223:0x0595, B:225:0x05d2, B:227:0x0151, B:228:0x015f, B:230:0x0179, B:232:0x0181, B:235:0x018a, B:237:0x0192, B:241:0x0206, B:243:0x0214, B:244:0x022f, B:246:0x0249, B:247:0x0279, B:248:0x019d, B:249:0x01d1, B:13:0x0651, B:15:0x066b, B:17:0x0679, B:19:0x068b, B:22:0x069e, B:24:0x06c4, B:26:0x082c, B:28:0x083e, B:30:0x0850, B:32:0x0870, B:35:0x08ae, B:36:0x08bc, B:38:0x08f3, B:40:0x092e, B:41:0x093a, B:43:0x0948, B:45:0x0956, B:47:0x096c, B:49:0x099c, B:53:0x09a2, B:83:0x09b0, B:88:0x09ed, B:90:0x09fc, B:92:0x0a0a, B:94:0x0a20, B:96:0x0a42, B:98:0x0a7f, B:100:0x0a8d, B:102:0x0a9b, B:104:0x0aa9, B:106:0x0abf, B:108:0x0ae1, B:110:0x0b1e, B:112:0x06f7, B:113:0x0705, B:115:0x071f, B:117:0x0727, B:120:0x0730, B:122:0x0738, B:126:0x07ac, B:128:0x07ba, B:129:0x07d5, B:131:0x07ef, B:132:0x081f, B:133:0x0743, B:134:0x0777), top: B:137:0x0074 }] */
    /* JADX WARN: Removed duplicated region for block: B:217:0x054f A[Catch: Exception -> 0x0c23, TryCatch #1 {Exception -> 0x0c23, blocks: (B:138:0x0074, B:143:0x008e, B:145:0x00a8, B:147:0x00c5, B:149:0x00d3, B:151:0x00e5, B:154:0x00f8, B:156:0x011e, B:158:0x0286, B:160:0x029a, B:162:0x02b4, B:164:0x02d3, B:165:0x02df, B:167:0x02f1, B:169:0x0305, B:171:0x0325, B:174:0x0363, B:175:0x0371, B:177:0x03a8, B:179:0x03e3, B:180:0x03ef, B:182:0x03fd, B:184:0x040b, B:186:0x0421, B:188:0x0451, B:192:0x0457, B:201:0x0465, B:203:0x04a0, B:205:0x04ae, B:207:0x04bc, B:209:0x04d2, B:211:0x04f4, B:213:0x0533, B:215:0x0541, B:217:0x054f, B:219:0x055d, B:221:0x0573, B:223:0x0595, B:225:0x05d2, B:227:0x0151, B:228:0x015f, B:230:0x0179, B:232:0x0181, B:235:0x018a, B:237:0x0192, B:241:0x0206, B:243:0x0214, B:244:0x022f, B:246:0x0249, B:247:0x0279, B:248:0x019d, B:249:0x01d1, B:13:0x0651, B:15:0x066b, B:17:0x0679, B:19:0x068b, B:22:0x069e, B:24:0x06c4, B:26:0x082c, B:28:0x083e, B:30:0x0850, B:32:0x0870, B:35:0x08ae, B:36:0x08bc, B:38:0x08f3, B:40:0x092e, B:41:0x093a, B:43:0x0948, B:45:0x0956, B:47:0x096c, B:49:0x099c, B:53:0x09a2, B:83:0x09b0, B:88:0x09ed, B:90:0x09fc, B:92:0x0a0a, B:94:0x0a20, B:96:0x0a42, B:98:0x0a7f, B:100:0x0a8d, B:102:0x0a9b, B:104:0x0aa9, B:106:0x0abf, B:108:0x0ae1, B:110:0x0b1e, B:112:0x06f7, B:113:0x0705, B:115:0x071f, B:117:0x0727, B:120:0x0730, B:122:0x0738, B:126:0x07ac, B:128:0x07ba, B:129:0x07d5, B:131:0x07ef, B:132:0x081f, B:133:0x0743, B:134:0x0777), top: B:137:0x0074 }] */
    /* JADX WARN: Removed duplicated region for block: B:221:0x0573 A[Catch: Exception -> 0x0c23, TryCatch #1 {Exception -> 0x0c23, blocks: (B:138:0x0074, B:143:0x008e, B:145:0x00a8, B:147:0x00c5, B:149:0x00d3, B:151:0x00e5, B:154:0x00f8, B:156:0x011e, B:158:0x0286, B:160:0x029a, B:162:0x02b4, B:164:0x02d3, B:165:0x02df, B:167:0x02f1, B:169:0x0305, B:171:0x0325, B:174:0x0363, B:175:0x0371, B:177:0x03a8, B:179:0x03e3, B:180:0x03ef, B:182:0x03fd, B:184:0x040b, B:186:0x0421, B:188:0x0451, B:192:0x0457, B:201:0x0465, B:203:0x04a0, B:205:0x04ae, B:207:0x04bc, B:209:0x04d2, B:211:0x04f4, B:213:0x0533, B:215:0x0541, B:217:0x054f, B:219:0x055d, B:221:0x0573, B:223:0x0595, B:225:0x05d2, B:227:0x0151, B:228:0x015f, B:230:0x0179, B:232:0x0181, B:235:0x018a, B:237:0x0192, B:241:0x0206, B:243:0x0214, B:244:0x022f, B:246:0x0249, B:247:0x0279, B:248:0x019d, B:249:0x01d1, B:13:0x0651, B:15:0x066b, B:17:0x0679, B:19:0x068b, B:22:0x069e, B:24:0x06c4, B:26:0x082c, B:28:0x083e, B:30:0x0850, B:32:0x0870, B:35:0x08ae, B:36:0x08bc, B:38:0x08f3, B:40:0x092e, B:41:0x093a, B:43:0x0948, B:45:0x0956, B:47:0x096c, B:49:0x099c, B:53:0x09a2, B:83:0x09b0, B:88:0x09ed, B:90:0x09fc, B:92:0x0a0a, B:94:0x0a20, B:96:0x0a42, B:98:0x0a7f, B:100:0x0a8d, B:102:0x0a9b, B:104:0x0aa9, B:106:0x0abf, B:108:0x0ae1, B:110:0x0b1e, B:112:0x06f7, B:113:0x0705, B:115:0x071f, B:117:0x0727, B:120:0x0730, B:122:0x0738, B:126:0x07ac, B:128:0x07ba, B:129:0x07d5, B:131:0x07ef, B:132:0x081f, B:133:0x0743, B:134:0x0777), top: B:137:0x0074 }] */
    /* JADX WARN: Removed duplicated region for block: B:226:0x0b2b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:243:0x0214 A[Catch: Exception -> 0x0c23, TryCatch #1 {Exception -> 0x0c23, blocks: (B:138:0x0074, B:143:0x008e, B:145:0x00a8, B:147:0x00c5, B:149:0x00d3, B:151:0x00e5, B:154:0x00f8, B:156:0x011e, B:158:0x0286, B:160:0x029a, B:162:0x02b4, B:164:0x02d3, B:165:0x02df, B:167:0x02f1, B:169:0x0305, B:171:0x0325, B:174:0x0363, B:175:0x0371, B:177:0x03a8, B:179:0x03e3, B:180:0x03ef, B:182:0x03fd, B:184:0x040b, B:186:0x0421, B:188:0x0451, B:192:0x0457, B:201:0x0465, B:203:0x04a0, B:205:0x04ae, B:207:0x04bc, B:209:0x04d2, B:211:0x04f4, B:213:0x0533, B:215:0x0541, B:217:0x054f, B:219:0x055d, B:221:0x0573, B:223:0x0595, B:225:0x05d2, B:227:0x0151, B:228:0x015f, B:230:0x0179, B:232:0x0181, B:235:0x018a, B:237:0x0192, B:241:0x0206, B:243:0x0214, B:244:0x022f, B:246:0x0249, B:247:0x0279, B:248:0x019d, B:249:0x01d1, B:13:0x0651, B:15:0x066b, B:17:0x0679, B:19:0x068b, B:22:0x069e, B:24:0x06c4, B:26:0x082c, B:28:0x083e, B:30:0x0850, B:32:0x0870, B:35:0x08ae, B:36:0x08bc, B:38:0x08f3, B:40:0x092e, B:41:0x093a, B:43:0x0948, B:45:0x0956, B:47:0x096c, B:49:0x099c, B:53:0x09a2, B:83:0x09b0, B:88:0x09ed, B:90:0x09fc, B:92:0x0a0a, B:94:0x0a20, B:96:0x0a42, B:98:0x0a7f, B:100:0x0a8d, B:102:0x0a9b, B:104:0x0aa9, B:106:0x0abf, B:108:0x0ae1, B:110:0x0b1e, B:112:0x06f7, B:113:0x0705, B:115:0x071f, B:117:0x0727, B:120:0x0730, B:122:0x0738, B:126:0x07ac, B:128:0x07ba, B:129:0x07d5, B:131:0x07ef, B:132:0x081f, B:133:0x0743, B:134:0x0777), top: B:137:0x0074 }] */
    /* JADX WARN: Removed duplicated region for block: B:244:0x022f A[Catch: Exception -> 0x0c23, TryCatch #1 {Exception -> 0x0c23, blocks: (B:138:0x0074, B:143:0x008e, B:145:0x00a8, B:147:0x00c5, B:149:0x00d3, B:151:0x00e5, B:154:0x00f8, B:156:0x011e, B:158:0x0286, B:160:0x029a, B:162:0x02b4, B:164:0x02d3, B:165:0x02df, B:167:0x02f1, B:169:0x0305, B:171:0x0325, B:174:0x0363, B:175:0x0371, B:177:0x03a8, B:179:0x03e3, B:180:0x03ef, B:182:0x03fd, B:184:0x040b, B:186:0x0421, B:188:0x0451, B:192:0x0457, B:201:0x0465, B:203:0x04a0, B:205:0x04ae, B:207:0x04bc, B:209:0x04d2, B:211:0x04f4, B:213:0x0533, B:215:0x0541, B:217:0x054f, B:219:0x055d, B:221:0x0573, B:223:0x0595, B:225:0x05d2, B:227:0x0151, B:228:0x015f, B:230:0x0179, B:232:0x0181, B:235:0x018a, B:237:0x0192, B:241:0x0206, B:243:0x0214, B:244:0x022f, B:246:0x0249, B:247:0x0279, B:248:0x019d, B:249:0x01d1, B:13:0x0651, B:15:0x066b, B:17:0x0679, B:19:0x068b, B:22:0x069e, B:24:0x06c4, B:26:0x082c, B:28:0x083e, B:30:0x0850, B:32:0x0870, B:35:0x08ae, B:36:0x08bc, B:38:0x08f3, B:40:0x092e, B:41:0x093a, B:43:0x0948, B:45:0x0956, B:47:0x096c, B:49:0x099c, B:53:0x09a2, B:83:0x09b0, B:88:0x09ed, B:90:0x09fc, B:92:0x0a0a, B:94:0x0a20, B:96:0x0a42, B:98:0x0a7f, B:100:0x0a8d, B:102:0x0a9b, B:104:0x0aa9, B:106:0x0abf, B:108:0x0ae1, B:110:0x0b1e, B:112:0x06f7, B:113:0x0705, B:115:0x071f, B:117:0x0727, B:120:0x0730, B:122:0x0738, B:126:0x07ac, B:128:0x07ba, B:129:0x07d5, B:131:0x07ef, B:132:0x081f, B:133:0x0743, B:134:0x0777), top: B:137:0x0074 }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x083e A[Catch: Exception -> 0x0c23, TryCatch #1 {Exception -> 0x0c23, blocks: (B:138:0x0074, B:143:0x008e, B:145:0x00a8, B:147:0x00c5, B:149:0x00d3, B:151:0x00e5, B:154:0x00f8, B:156:0x011e, B:158:0x0286, B:160:0x029a, B:162:0x02b4, B:164:0x02d3, B:165:0x02df, B:167:0x02f1, B:169:0x0305, B:171:0x0325, B:174:0x0363, B:175:0x0371, B:177:0x03a8, B:179:0x03e3, B:180:0x03ef, B:182:0x03fd, B:184:0x040b, B:186:0x0421, B:188:0x0451, B:192:0x0457, B:201:0x0465, B:203:0x04a0, B:205:0x04ae, B:207:0x04bc, B:209:0x04d2, B:211:0x04f4, B:213:0x0533, B:215:0x0541, B:217:0x054f, B:219:0x055d, B:221:0x0573, B:223:0x0595, B:225:0x05d2, B:227:0x0151, B:228:0x015f, B:230:0x0179, B:232:0x0181, B:235:0x018a, B:237:0x0192, B:241:0x0206, B:243:0x0214, B:244:0x022f, B:246:0x0249, B:247:0x0279, B:248:0x019d, B:249:0x01d1, B:13:0x0651, B:15:0x066b, B:17:0x0679, B:19:0x068b, B:22:0x069e, B:24:0x06c4, B:26:0x082c, B:28:0x083e, B:30:0x0850, B:32:0x0870, B:35:0x08ae, B:36:0x08bc, B:38:0x08f3, B:40:0x092e, B:41:0x093a, B:43:0x0948, B:45:0x0956, B:47:0x096c, B:49:0x099c, B:53:0x09a2, B:83:0x09b0, B:88:0x09ed, B:90:0x09fc, B:92:0x0a0a, B:94:0x0a20, B:96:0x0a42, B:98:0x0a7f, B:100:0x0a8d, B:102:0x0a9b, B:104:0x0aa9, B:106:0x0abf, B:108:0x0ae1, B:110:0x0b1e, B:112:0x06f7, B:113:0x0705, B:115:0x071f, B:117:0x0727, B:120:0x0730, B:122:0x0738, B:126:0x07ac, B:128:0x07ba, B:129:0x07d5, B:131:0x07ef, B:132:0x081f, B:133:0x0743, B:134:0x0777), top: B:137:0x0074 }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0948 A[Catch: Exception -> 0x0c23, TryCatch #1 {Exception -> 0x0c23, blocks: (B:138:0x0074, B:143:0x008e, B:145:0x00a8, B:147:0x00c5, B:149:0x00d3, B:151:0x00e5, B:154:0x00f8, B:156:0x011e, B:158:0x0286, B:160:0x029a, B:162:0x02b4, B:164:0x02d3, B:165:0x02df, B:167:0x02f1, B:169:0x0305, B:171:0x0325, B:174:0x0363, B:175:0x0371, B:177:0x03a8, B:179:0x03e3, B:180:0x03ef, B:182:0x03fd, B:184:0x040b, B:186:0x0421, B:188:0x0451, B:192:0x0457, B:201:0x0465, B:203:0x04a0, B:205:0x04ae, B:207:0x04bc, B:209:0x04d2, B:211:0x04f4, B:213:0x0533, B:215:0x0541, B:217:0x054f, B:219:0x055d, B:221:0x0573, B:223:0x0595, B:225:0x05d2, B:227:0x0151, B:228:0x015f, B:230:0x0179, B:232:0x0181, B:235:0x018a, B:237:0x0192, B:241:0x0206, B:243:0x0214, B:244:0x022f, B:246:0x0249, B:247:0x0279, B:248:0x019d, B:249:0x01d1, B:13:0x0651, B:15:0x066b, B:17:0x0679, B:19:0x068b, B:22:0x069e, B:24:0x06c4, B:26:0x082c, B:28:0x083e, B:30:0x0850, B:32:0x0870, B:35:0x08ae, B:36:0x08bc, B:38:0x08f3, B:40:0x092e, B:41:0x093a, B:43:0x0948, B:45:0x0956, B:47:0x096c, B:49:0x099c, B:53:0x09a2, B:83:0x09b0, B:88:0x09ed, B:90:0x09fc, B:92:0x0a0a, B:94:0x0a20, B:96:0x0a42, B:98:0x0a7f, B:100:0x0a8d, B:102:0x0a9b, B:104:0x0aa9, B:106:0x0abf, B:108:0x0ae1, B:110:0x0b1e, B:112:0x06f7, B:113:0x0705, B:115:0x071f, B:117:0x0727, B:120:0x0730, B:122:0x0738, B:126:0x07ac, B:128:0x07ba, B:129:0x07d5, B:131:0x07ef, B:132:0x081f, B:133:0x0743, B:134:0x0777), top: B:137:0x0074 }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0b3f A[Catch: Exception -> 0x0c21, TryCatch #2 {Exception -> 0x0c21, blocks: (B:63:0x0ba2, B:69:0x0bb4, B:71:0x0bbc, B:73:0x0bc4, B:76:0x0bcd, B:65:0x0bf3, B:194:0x05e0, B:196:0x05ee, B:198:0x0604, B:55:0x0b31, B:57:0x0b3f, B:59:0x0b55), top: B:68:0x0bb4 }] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0bb4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x09fc A[Catch: Exception -> 0x0c23, TryCatch #1 {Exception -> 0x0c23, blocks: (B:138:0x0074, B:143:0x008e, B:145:0x00a8, B:147:0x00c5, B:149:0x00d3, B:151:0x00e5, B:154:0x00f8, B:156:0x011e, B:158:0x0286, B:160:0x029a, B:162:0x02b4, B:164:0x02d3, B:165:0x02df, B:167:0x02f1, B:169:0x0305, B:171:0x0325, B:174:0x0363, B:175:0x0371, B:177:0x03a8, B:179:0x03e3, B:180:0x03ef, B:182:0x03fd, B:184:0x040b, B:186:0x0421, B:188:0x0451, B:192:0x0457, B:201:0x0465, B:203:0x04a0, B:205:0x04ae, B:207:0x04bc, B:209:0x04d2, B:211:0x04f4, B:213:0x0533, B:215:0x0541, B:217:0x054f, B:219:0x055d, B:221:0x0573, B:223:0x0595, B:225:0x05d2, B:227:0x0151, B:228:0x015f, B:230:0x0179, B:232:0x0181, B:235:0x018a, B:237:0x0192, B:241:0x0206, B:243:0x0214, B:244:0x022f, B:246:0x0249, B:247:0x0279, B:248:0x019d, B:249:0x01d1, B:13:0x0651, B:15:0x066b, B:17:0x0679, B:19:0x068b, B:22:0x069e, B:24:0x06c4, B:26:0x082c, B:28:0x083e, B:30:0x0850, B:32:0x0870, B:35:0x08ae, B:36:0x08bc, B:38:0x08f3, B:40:0x092e, B:41:0x093a, B:43:0x0948, B:45:0x0956, B:47:0x096c, B:49:0x099c, B:53:0x09a2, B:83:0x09b0, B:88:0x09ed, B:90:0x09fc, B:92:0x0a0a, B:94:0x0a20, B:96:0x0a42, B:98:0x0a7f, B:100:0x0a8d, B:102:0x0a9b, B:104:0x0aa9, B:106:0x0abf, B:108:0x0ae1, B:110:0x0b1e, B:112:0x06f7, B:113:0x0705, B:115:0x071f, B:117:0x0727, B:120:0x0730, B:122:0x0738, B:126:0x07ac, B:128:0x07ba, B:129:0x07d5, B:131:0x07ef, B:132:0x081f, B:133:0x0743, B:134:0x0777), top: B:137:0x0074 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean validation() {
        /*
            Method dump skipped, instructions count: 3135
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.fo.FarmerFormActivity.validation():boolean");
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
        this.etCropAccr.addTextChangedListener(new TextWatcher() { // from class: com.conceptglobal.pmc.fo.FarmerFormActivity.9
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
                        FarmerFormActivity.this.etCropDos.setText(FarmerFormActivity.this.getResources().getString(R.string.na));
                    } else if (FarmerFormActivity.this.etCropDos.getText().toString().equalsIgnoreCase(FarmerFormActivity.this.getResources().getString(R.string.na))) {
                        FarmerFormActivity.this.etCropDos.setText("");
                    }
                }
            }
        });
        this.etCropDos.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.FarmerFormActivity.10
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (FarmerFormActivity.this.etCropDos.getText().toString().equalsIgnoreCase(FarmerFormActivity.this.getResources().getString(R.string.na))) {
                    return;
                }
                FarmerFormActivity.this.dateDialogID = 0;
                FarmerFormActivity farmerFormActivity = FarmerFormActivity.this;
                farmerFormActivity.showDialog(farmerFormActivity.dateDialogID);
            }
        });
        this.etCropName.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.FarmerFormActivity.11
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                UtilDeclarations.hideInputKeyboard(FarmerFormActivity.context);
                try {
                    ListPopupOne listPopupOne = new ListPopupOne(FarmerFormActivity.context, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectOneDropDownTitle()), FarmerFormActivity.this.queries.gettingDropdownValues(1), view, FarmerFormActivity.this.tvCropid);
                    listPopupOne.getWindow().getAttributes().windowAnimations = R.style.PauseDialogAnimation;
                    listPopupOne.show();
                    listPopupOne.getWindow().setSoftInputMode(3);
                } catch (Exception e) {
                    PLog.e(FarmerFormActivity.this.tag, e);
                }
            }
        });
        this.tvCropid.addTextChangedListener(new TextWatcher() { // from class: com.conceptglobal.pmc.fo.FarmerFormActivity.12
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            }

            /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x009b -> B:13:0x00af). Please report as a decompilation issue!!! */
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (FarmerFormActivity.this.tvCropid.getText().toString().trim().length() > 0) {
                    try {
                        if (Integer.parseInt(FarmerFormActivity.this.tvCropid.getText().toString()) == 0) {
                            FarmerFormActivity.this.etCropAccr.setVisibility(8);
                            FarmerFormActivity.this.etCropDos.setVisibility(8);
                            return;
                        }
                        try {
                            String stringValue = FarmerFormActivity.this.getDataFromDB.getStringValue(FarmerFormActivity.this.queries.getCropAcreagesForCrop(FarmerFormActivity.this.farmerID, Integer.parseInt(FarmerFormActivity.this.tvCropid.getText().toString())));
                            if (stringValue == null || stringValue.trim().length() <= 0) {
                                FarmerFormActivity.this.etCropAccr.setText(ConstantDeclarations.getInstance().getEMPTY());
                            } else {
                                FarmerFormActivity.this.etCropAccr.setText(stringValue);
                            }
                        } catch (SQLiteDoneException e) {
                            FarmerFormActivity.this.etCropAccr.setText(ConstantDeclarations.getInstance().getEMPTY());
                            PLog.e(FarmerFormActivity.TAG, e);
                        }
                        try {
                            String stringValue2 = FarmerFormActivity.this.getDataFromDB.getStringValue(FarmerFormActivity.this.queries.getDosFromCrop(FarmerFormActivity.this.farmerID, Integer.parseInt(FarmerFormActivity.this.tvCropid.getText().toString())));
                            if (stringValue2 != null) {
                                FarmerFormActivity.this.etCropDos.setText(stringValue2);
                            }
                        } catch (SQLiteDoneException e2) {
                            FarmerFormActivity.this.etCropDos.setText(ConstantDeclarations.getInstance().getEMPTY());
                            PLog.e(FarmerFormActivity.TAG, e2);
                        }
                    } catch (Exception e3) {
                        PLog.e(FarmerFormActivity.this.tag, e3);
                    }
                }
            }
        });
        button.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.FarmerFormActivity.13
            private FarmerCropMapping farmerCropMapping;

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                UtilDeclarations.hideInputKeyboard(FarmerFormActivity.context);
                String trim = FarmerFormActivity.this.etCropName.getText().toString().trim();
                String trim2 = FarmerFormActivity.this.etCropAccr.getText().toString().trim();
                String trim3 = FarmerFormActivity.this.etCropDos.getText().toString().trim();
                if (trim == null || trim.equals("")) {
                    Toast.makeText(FarmerFormActivity.context, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_pleaseSelectCropToast()), 0).show();
                    return;
                }
                if (trim2 == null || trim2.equals("") || trim2.equals(".")) {
                    Toast.makeText(FarmerFormActivity.context, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_enterPropAcreToast()), 0).show();
                    return;
                }
                if (trim3 == null || trim3.equals("")) {
                    Toast.makeText(FarmerFormActivity.context, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectDOSowingToast()), 0).show();
                    return;
                }
                FarmerCropMapping farmerCropMapping = new FarmerCropMapping();
                this.farmerCropMapping = farmerCropMapping;
                try {
                    try {
                        farmerCropMapping.setAcreages(Float.parseFloat(trim2));
                        this.farmerCropMapping.setRespondentNo(FarmerFormActivity.this.farmerID);
                        this.farmerCropMapping.setCropId(Integer.parseInt(FarmerFormActivity.this.getDataFromDB.getStringValue(FarmerFormActivity.this.queries.getCropIdByCropName(trim))));
                        this.farmerCropMapping.setDos(trim3);
                    } catch (Exception e) {
                        PLog.e(FarmerFormActivity.this.tag, e);
                    }
                    FarmerFormActivity.this.getDataFromDB.executeRawQueryInDB(FarmerFormActivity.this.queries.deleteFarmerCropData(FarmerFormActivity.this.farmerID, Integer.parseInt(FarmerFormActivity.this.tvCropid.getText().toString())));
                    FarmerFormActivity.this.setListviewForAcreages();
                } catch (Exception e2) {
                    PLog.e(FarmerFormActivity.this.tag, e2);
                }
                dialog.dismiss();
            }
        });
        button2.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.FarmerFormActivity.14
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (!FarmerFormActivity.this.etCropDos.getText().toString().equalsIgnoreCase(FarmerFormActivity.this.getResources().getString(R.string.na))) {
                    FarmerFormActivity.this.etCropDos.setText(FarmerFormActivity.this.getResources().getString(R.string.na));
                    button2.setBackgroundColor(-12303292);
                } else {
                    FarmerFormActivity.this.etCropDos.setText("");
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
                GetDataFromDB.getInstance();
                if (GetDataFromDB.getLatLondMandatory(Queries.getInstance().getIsLatLongMandatory(this.activityId)) == 1 && (this.tvLatitude.getText().toString().trim().length() <= 0 || this.tvLongitude.getText().toString().trim().length() <= 0)) {
                    this.tvLatitude.setError(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_locationIsMandateError()));
                    this.tvLongitude.setError(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_locationIsMandateError()));
                    Toast.makeText(this, "Please take Latitude and Longitude ", 1).show();
                    this.scrollView.post(new Runnable() { // from class: com.conceptglobal.pmc.fo.FarmerFormActivity.15
                        @Override // java.lang.Runnable
                        public void run() {
                            FarmerFormActivity.this.scrollView.scrollTo(0, FarmerFormActivity.this.tvLatitude.getBottom());
                        }
                    });
                    break;
                } else {
                    if (this.isTableViewActivity) {
                        this.timeDetails = AttributesTableViewActivity.methodToGetTimeerData(context, false);
                    } else if (this.isDynamicTableViewActivity) {
                        this.timeDetails = AttributesDynmicTableViewActivity.methodToGetTimeerData(context, false);
                    } else {
                        this.timeDetails = AttributesActivity.methodToGetTimeerData(context, false);
                    }
                    showDiscardAlert();
                    break;
                }
                break;
            case R.id.btn_save_farmer_other_details /* 2131296436 */:
                saveDataIntoDataBase(2);
                break;
            case R.id.btn_visit_farmer_other_details /* 2131296452 */:
                int i = this.activityId;
                if (i == 38 || i == 41 || i == 46 || i == 63) {
                    if (checkCustomerDetails() && isValidData(true) && saveTableAttributeData(1) && checkTerritorydetails() && checkImagesMandatory() && checkVideoMandatory() && checkAllMandatoryImages()) {
                        showAlertCancel(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_confirmVisitCompleteDialogText()), 1);
                        break;
                    }
                } else if (isValidData(true) && saveTableAttributeData(1) && checkTerritorydetails() && checkImagesMandatory() && checkVideoMandatory() && checkAllMandatoryImages()) {
                    showAlertCancel(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_confirmVisitCompleteDialogText()), 1);
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
                int i2 = this.segmentId;
                if (i2 != 1) {
                    if (i2 != 8) {
                        if (i2 != 2) {
                            if (i2 == 3) {
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
        builder.setMessage(str).setCancelable(false).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.FarmerFormActivity.16
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
    /* JADX WARN: Can't wrap try/catch for region: R(31:21|(1:23)(2:100|(1:102)(1:103))|24|25|26|(1:28)|30|31|(1:33)|34|35|(1:37)(1:93)|38|(17:47|(2:75|76)|49|(2:52|50)|53|54|(2:57|55)|58|59|(1:61)(1:74)|62|63|64|65|(1:67)|69|70)|82|(2:86|87)|49|(1:50)|53|54|(1:55)|58|59|(0)(0)|62|63|64|65|(0)|69|70) */
    /* JADX WARN: Can't wrap try/catch for region: R(36:122|(1:124)(2:247|(1:249)(1:250))|125|126|(2:128|(3:131|(1:161)(9:137|138|139|140|141|(4:145|(3:148|149|150)(1:147)|142|143)|151|152|(2:154|155)(2:156|157))|129))|164|165|(1:167)|169|(1:171)|172|(1:174)|175|(2:178|176)|179|180|(2:183|181)|184|185|(1:187)(1:239)|188|(14:197|(2:199|200)|204|205|(1:207)(1:225)|208|209|(1:211)|213|(1:217)|218|219|220|221)|228|(2:232|233)|204|205|(0)(0)|208|209|(0)|213|(2:215|217)|218|219|220|221) */
    /* JADX WARN: Code restructure failed: missing block: B:226:0x06f9, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:227:0x06fa, code lost:
    
        com.conceptglobal.pmc.utils.PLog.e(com.conceptglobal.pmc.fo.FarmerFormActivity.TAG, r0);
        r0.printStackTrace();
     */
    /* JADX WARN: Removed duplicated region for block: B:207:0x063d A[Catch: Exception -> 0x06f9, TryCatch #12 {Exception -> 0x06f9, blocks: (B:205:0x062a, B:207:0x063d, B:225:0x0699), top: B:204:0x062a, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:211:0x0716 A[Catch: Exception -> 0x071d, TRY_LEAVE, TryCatch #9 {Exception -> 0x071d, blocks: (B:209:0x0700, B:211:0x0716), top: B:208:0x0700 }] */
    /* JADX WARN: Removed duplicated region for block: B:225:0x0699 A[Catch: Exception -> 0x06f9, TRY_LEAVE, TryCatch #12 {Exception -> 0x06f9, blocks: (B:205:0x062a, B:207:0x063d, B:225:0x0699), top: B:204:0x062a, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x014e A[Catch: Exception -> 0x025f, LOOP:0: B:50:0x0146->B:52:0x014e, LOOP_END, TryCatch #8 {Exception -> 0x025f, blocks: (B:35:0x00d9, B:37:0x00e1, B:38:0x00ed, B:47:0x0100, B:50:0x0146, B:52:0x014e, B:55:0x0161, B:57:0x0169, B:59:0x017b, B:61:0x01a3, B:74:0x01ff, B:79:0x0117, B:82:0x011b, B:84:0x0123, B:90:0x0142, B:91:0x0127, B:97:0x00d6, B:76:0x0106, B:87:0x012d), top: B:96:0x00d6, outer: #1, inners: #4, #17 }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0169 A[Catch: Exception -> 0x025f, LOOP:1: B:55:0x0161->B:57:0x0169, LOOP_END, TryCatch #8 {Exception -> 0x025f, blocks: (B:35:0x00d9, B:37:0x00e1, B:38:0x00ed, B:47:0x0100, B:50:0x0146, B:52:0x014e, B:55:0x0161, B:57:0x0169, B:59:0x017b, B:61:0x01a3, B:74:0x01ff, B:79:0x0117, B:82:0x011b, B:84:0x0123, B:90:0x0142, B:91:0x0127, B:97:0x00d6, B:76:0x0106, B:87:0x012d), top: B:96:0x00d6, outer: #1, inners: #4, #17 }] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x01a3 A[Catch: Exception -> 0x025f, TryCatch #8 {Exception -> 0x025f, blocks: (B:35:0x00d9, B:37:0x00e1, B:38:0x00ed, B:47:0x0100, B:50:0x0146, B:52:0x014e, B:55:0x0161, B:57:0x0169, B:59:0x017b, B:61:0x01a3, B:74:0x01ff, B:79:0x0117, B:82:0x011b, B:84:0x0123, B:90:0x0142, B:91:0x0127, B:97:0x00d6, B:76:0x0106, B:87:0x012d), top: B:96:0x00d6, outer: #1, inners: #4, #17 }] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0298 A[Catch: Exception -> 0x029f, TRY_LEAVE, TryCatch #7 {Exception -> 0x029f, blocks: (B:65:0x0282, B:67:0x0298), top: B:64:0x0282 }] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01ff A[Catch: Exception -> 0x025f, TRY_LEAVE, TryCatch #8 {Exception -> 0x025f, blocks: (B:35:0x00d9, B:37:0x00e1, B:38:0x00ed, B:47:0x0100, B:50:0x0146, B:52:0x014e, B:55:0x0161, B:57:0x0169, B:59:0x017b, B:61:0x01a3, B:74:0x01ff, B:79:0x0117, B:82:0x011b, B:84:0x0123, B:90:0x0142, B:91:0x0127, B:97:0x00d6, B:76:0x0106, B:87:0x012d), top: B:96:0x00d6, outer: #1, inners: #4, #17 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void saveDataIntoDataBase(int r52) {
        /*
            Method dump skipped, instructions count: 1938
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.fo.FarmerFormActivity.saveDataIntoDataBase(int):void");
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
        this.listAttributes_Assgnmt_multiSelect.clear();
        if (this.mEntryArr_Assgnmt == null || this.listAttributes_Assgnmt == null) {
            this.tabHost.setCurrentTab(2);
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < this.mEntryArr_Assgnmt.size(); i++) {
            try {
                AttributeModel attributeModel = this.listAttributes_Assgnmt.get(i);
                if ((attributeModel.getControlType().equalsIgnoreCase("Dropdown") || attributeModel.getControlType().equalsIgnoreCase("Multiselect Dropdown")) && TextUtils.isEmpty(this.mEntryArrIds_Assgnmt.get(i).getText().toString()) && this.mEntryArr_Assgnmt.get(i).getTag(R.string.ENTRYID_SET) != null) {
                    this.mEntryArrIds_Assgnmt.get(i).setText(this.mEntryArr_Assgnmt.get(i).getTag(R.string.ENTRYID_SET).toString());
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        for (int i2 = 0; i2 < this.mEntryArr_Assgnmt.size(); i2++) {
            AttributeModel attributeModel2 = this.listAttributes_Assgnmt.get(i2);
            StringBuilder sb = new StringBuilder();
            sb.append(attributeModel2.getIsMandatory() == 1 && this.mEntryArr_Assgnmt.get(i2).getText().toString().equalsIgnoreCase(""));
            sb.append("");
            Log.e("test", sb.toString());
            if (!TextUtils.isEmpty(attributeModel2.getControlType())) {
                if (!attributeModel2.getControlType().equalsIgnoreCase("Dropdown")) {
                    if (attributeModel2.getControlType().equalsIgnoreCase("Multiselect Dropdown")) {
                        attributeModel2.setAttributeValue(this.mEntryArrIds_Assgnmt.get(i2).getText().toString());
                        String[] split = this.mEntryArrIds_Assgnmt.get(i2).getText().toString().split(",");
                        if (split != null && split.length > 0) {
                            arrayList.add(Integer.valueOf(attributeModel2.getAttributeId()));
                            for (String str : split) {
                                AttributeModel attributeModel3 = new AttributeModel(attributeModel2);
                                attributeModel3.setAttributeId(attributeModel2.getAttributeId());
                                attributeModel3.setAttributeValue(str.trim());
                                this.listAttributes_Assgnmt_multiSelect.add(attributeModel3);
                            }
                        }
                    } else if (this.mEntryArr_Assgnmt.get(i2).getText().toString().equalsIgnoreCase("")) {
                        attributeModel2.setAttributeValue("");
                    } else {
                        attributeModel2.setAttributeValue(this.mEntryArr_Assgnmt.get(i2).getText().toString());
                    }
                } else {
                    attributeModel2.setAttributeValue(this.mEntryArrIds_Assgnmt.get(i2).getText().toString());
                }
            }
        }
        if (arrayList.size() > 0) {
            Iterator<AttributeModel> it = this.listAttributes_Assgnmt.iterator();
            for (int i3 = 0; i3 < arrayList.size(); i3++) {
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    AttributeModel next = it.next();
                    if (next != null && next.getAttributeId() == ((Integer) arrayList.get(i3)).intValue()) {
                        it.remove();
                        break;
                    }
                }
            }
        }
        for (int i4 = 0; i4 < this.listAttributes_Assgnmt_multiSelect.size(); i4++) {
            this.listAttributes_Assgnmt.add(this.listAttributes_Assgnmt_multiSelect.get(i4));
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
        DatePickerDialog datePickerDialog = new DatePickerDialog(this, this.mDateSetListener_Yearless, this.mYear, this.mMonth, this.mDay) { // from class: com.conceptglobal.pmc.fo.FarmerFormActivity.19
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
        String str6 = str5;
        int i2 = 0;
        boolean z3 = true;
        while (i2 < this.mEntryArr_Assgnmt.size()) {
            AttributeModel attributeModel = this.listAttributes_Assgnmt.get(i2);
            try {
                if (attributeModel.getAttributeId() == 847) {
                    str5 = this.mEntryArr_Assgnmt.get(i2).getText().toString();
                }
                if (attributeModel.getAttributeId() == 848) {
                    str6 = this.mEntryArr_Assgnmt.get(i2).getText().toString();
                }
                if (attributeModel.getAttributeId() == 849) {
                    str = this.mEntryArr_Assgnmt.get(i2).getText().toString();
                }
                if (attributeModel.getAttributeId() == 850) {
                    str2 = this.mEntryArr_Assgnmt.get(i2).getText().toString();
                }
                if (attributeModel.getAttributeId() == 800) {
                    str3 = this.mEntryArr_Assgnmt.get(i2).getText().toString();
                }
                if (attributeModel.getAttributeId() == 797) {
                    str4 = this.mEntryArr_Assgnmt.get(i2).getText().toString();
                }
                if (attributeModel.getAttributeId() == 774) {
                    this.mEntryArr_Assgnmt.get(i2).getText().toString();
                }
                if (attributeModel.getAttributeId() == 861) {
                    this.mEntryArr_Assgnmt.get(i2).getText().toString();
                }
            } catch (Exception e) {
                PLog.e(TAG, e);
            }
            if (attributeModel.getIsMandatory() == i) {
                if (!AttributesActivity.visibiltyGoneIds.contains(Integer.valueOf(attributeModel.getAttributeId()))) {
                    try {
                        if (this.isTableViewActivity && ((GetTableDataInterface) AttributesTableViewActivity.ctx).getValidationData().contains(Integer.valueOf(attributeModel.getAttributeId()))) {
                        }
                    } catch (Exception unused) {
                    }
                    if (this.mEntryArr_Assgnmt.get(i2).getText().toString().trim().length() != 0 && ((!attributeModel.getControlType().equalsIgnoreCase("Dropdown") && !attributeModel.getControlType().equalsIgnoreCase("Multiselect Dropdown")) || this.mEntryArrIds_Assgnmt.get(i2).getText().toString().trim().length() != 0)) {
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
                        } catch (Exception unused3) {
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
        if (GetDataFromDB.getLatLondMandatory(Queries.getInstance().getIsLatLongMandatory(this.activityId)) == 1 && (this.tvLatitude.getText().toString().trim().length() <= 0 || this.tvLongitude.getText().toString().trim().length() <= 0)) {
            this.tvLatitude.setError(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_locationIsMandateError()));
            this.tvLongitude.setError(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_locationIsMandateError()));
            this.scrollView.post(new Runnable() { // from class: com.conceptglobal.pmc.fo.FarmerFormActivity.20
                @Override // java.lang.Runnable
                public void run() {
                    FarmerFormActivity.this.scrollView.scrollTo(0, FarmerFormActivity.this.tvLatitude.getBottom());
                }
            });
            z3 = false;
        }
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && Integer.parseInt(str) > Integer.parseInt(str2)) {
            Toast.makeText(getApplicationContext(), "The start km reading should not be greater than the end km reading.", 0).show();
            z3 = false;
        }
        if (TextUtils.isEmpty(str3) || TextUtils.isEmpty(str4) || Integer.parseInt(str3) == 0) {
            z2 = z3;
        } else {
            Toast.makeText(getApplicationContext(), "Total Quantity Remain should be zero.", 0).show();
            z2 = false;
        }
        if (TextUtils.isEmpty(str5) || TextUtils.isEmpty(str6)) {
            return z2;
        }
        try {
            if (com.conceptglobal.pmc.fotracker.util.UtilDeclarations.timeDifferenceInMinutes(new SimpleDateFormat("dd-MM-yyyy").parse(str5), new SimpleDateFormat("dd-MM-yyyy").parse(str6)) >= 0) {
                return z2;
            }
            Toast.makeText(getApplicationContext(), "The Start Date should not be greater than the End Date.", 0).show();
            return false;
        } catch (ParseException e3) {
            e3.printStackTrace();
            return z2;
        }
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
        super.onRequestPermissionsResult(i, strArr, iArr);
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
                if (intent != null) {
                    this.imagePath = intent.getStringExtra("ImagePath");
                    return;
                }
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
        if (!this.selCustomerId.equalsIgnoreCase("") && this.selSegmentID != 0) {
            try {
                this.custDetailsText.setText(intent.getStringExtra("FarmerName") + "");
            } catch (Exception e) {
                PLog.e("MBAACTIVITY", e);
            }
        }
        Intent intent2 = new Intent();
        intent2.setAction("FARMER_SELECTED");
        intent2.putExtra("FarmerId", this.selCustomerId);
        LocalBroadcastManager.getInstance(this).sendBroadcast(intent2);
    }

    private void showAlertCancel(String str, final int i) {
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setMessage(str).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.FarmerFormActivity.23
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                dialogInterface.dismiss();
                int i3 = i;
                if (i3 == 0) {
                    FarmerFormActivity.this.finish();
                } else {
                    if (i3 != 1) {
                        return;
                    }
                    FarmerFormActivity.this.saveDataIntoDataBase(1);
                }
            }
        }).setNegativeButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_cancelDialogButtonText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.FarmerFormActivity.22
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
        builder.setMessage(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_addCustomerGoBackDialog())).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_cancelDialogButtonText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.FarmerFormActivity.24
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        });
        builder.setNegativeButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.FarmerFormActivity.25
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
                FarmerFormActivity.this.finish();
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
            intent.putExtra("setReferenceType", GetDataFromDB.getInstance().getLookupValue(Queries.getInstance().getItemValue("ToDo")));
        } catch (Exception e) {
            PLog.e(TAG, e);
            e.printStackTrace();
        }
        intent.putExtra("setReferenceID", String.valueOf(this.activityAssignmentId));
        intent.putExtra("attributeId", 0);
        intent.putExtra("farmerId", this.farmerID);
        intent.putExtra("imageId", j);
        startActivityForResult(intent, 101);
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
        builder.setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.FarmerFormActivity.30
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                FarmerFormActivity.this.showRemarkSelectionAlert();
            }
        });
        builder.setNegativeButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_cancelVisitCompleteDialogButton()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.FarmerFormActivity.31
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
        builder.setSingleChoiceItems(this.remarkNames, -1, new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.FarmerFormActivity.32
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                FarmerFormActivity.this.d_remarks.dismiss();
                try {
                    FarmerFormActivity.this.prepareAttributeData();
                    if (FarmerFormActivity.this.listAttributes_Assgnmt.size() != 0) {
                        GetDataFromDB.getInstance().executeRawQueryInDB(Queries.getInstance().deleteFarmerDetailsActivity(FarmerFormActivity.this.farmerID, FarmerFormActivity.this.activityId, FarmerFormActivity.this.activityAssignmentId));
                    }
                    InsertDataIntoDB.insertFarmerActivityDetailsUpdate(FarmerFormActivity.this.listAttributes_Assgnmt, FarmerFormActivity.this.farmerID, FarmerFormActivity.this.activityId, 1, 1, FarmerFormActivity.this.assignmentId, FarmerFormActivity.this.segmentId, 0L, 1, FarmerFormActivity.this.activityAssignmentId, FarmerFormActivity.this.assignmentDetals, FarmerFormActivity.this.packageId);
                    GetDataFromDB.getInstance().executeRawQueryInDB(Queries.getInstance().updateNotDoneForActivities(FarmerFormActivity.this.activityId, FarmerFormActivity.this.farmerID, FarmerFormActivity.this.assignmentId, FarmerFormActivity.this.remarkNames[i2]));
                    try {
                        if (FarmerFormActivity.this.campaignIDList.size() > 0) {
                            FarmerFormActivity farmerFormActivity = FarmerFormActivity.this;
                            farmerFormActivity.total_CampaignIDs = FarmerFormActivity$$ExternalSyntheticBackport0.m(",", farmerFormActivity.campaignIDList);
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    if (FarmerFormActivity.this.getDataFromDB.getIFContains(Queries.getInstance().updateDraftForAssignmentvisit(FarmerFormActivity.this.activityAssignmentId)) != 0) {
                        InsertDataIntoDB.UpdateAssignmentVisistDetails(FarmerFormActivity.this.assignmentId, FarmerFormActivity.this.farmerID, FarmerFormActivity.this.etDiscription.getText().toString(), FarmerFormActivity.this.tvLatitude.getText().toString(), FarmerFormActivity.this.tvLongitude.getText().toString(), FarmerFormActivity.this.activityAssignmentId, 0L, "false", FarmerFormActivity.this.locationProvider, FarmerFormActivity.this.GPSTimeStamp, FarmerFormActivity.this.timeDetails.getMobileStartTime(), FarmerFormActivity.this.timeDetails.getMobileEndTime(), FarmerFormActivity.this.timeDetails.getGPSStartTime(), FarmerFormActivity.this.timeDetails.getGPSEndTime(), FarmerFormActivity.this.total_CampaignIDs, "");
                    } else {
                        InsertDataIntoDB.insertAssignmentVisistDetails(FarmerFormActivity.this.assignmentId, FarmerFormActivity.this.farmerID, FarmerFormActivity.this.etDiscription.getText().toString(), FarmerFormActivity.this.tvLatitude.getText().toString(), FarmerFormActivity.this.tvLongitude.getText().toString(), FarmerFormActivity.this.activityAssignmentId, 0L, "false", FarmerFormActivity.this.locationProvider, FarmerFormActivity.this.GPSTimeStamp, FarmerFormActivity.this.timeDetails.getMobileStartTime(), FarmerFormActivity.this.timeDetails.getMobileEndTime(), FarmerFormActivity.this.timeDetails.getGPSStartTime(), FarmerFormActivity.this.timeDetails.getGPSEndTime(), FarmerFormActivity.this.total_CampaignIDs, "");
                    }
                    for (int i3 = 0; i3 < FarmerFormActivity.this.images.size(); i3++) {
                        InsertDataIntoDB.UpdateImageServerStatus(((ImageDetails) FarmerFormActivity.this.images.get(i3)).getImageId());
                    }
                    try {
                        String updateLastVisitedDate = Queries.getInstance().getUpdateLastVisitedDate(FarmerFormActivity.this.segmentId, FarmerFormActivity.this.farmerID, UtilDeclarations.getDateTime());
                        if (!TextUtils.isEmpty(updateLastVisitedDate)) {
                            GetDataFromDB.getInstance().executeRawQueryInDB(updateLastVisitedDate);
                        }
                    } catch (Exception unused) {
                    }
                    FarmerFormActivity.this.setResult(-1, new Intent());
                    try {
                        ((OnCompleteListener) FarmerFormActivity.this.getParent()).onComplete("1", null);
                    } catch (Exception e2) {
                        PLog.e(FarmerFormActivity.TAG, e2);
                        e2.printStackTrace();
                    }
                    if (UtilDeclarations.isOnline(FarmerFormActivity.context)) {
                        if (!UtilDeclarations.isServiceRunning(FarmerFormActivity.this.getApplicationContext(), SyncDataService.class)) {
                            new SendDataServiceUtil(FarmerFormActivity.this).startService();
                        }
                    } else {
                        FarmerFormActivity.this.startActivity(new Intent(FarmerFormActivity.context, (Class<?>) ToDoActivity.class));
                    }
                    FarmerFormActivity.this.finish();
                } catch (Exception e3) {
                    PLog.e(FarmerFormActivity.TAG, e3);
                }
            }
        });
        AlertDialog create = builder.create();
        this.d_remarks = create;
        create.show();
        this.d_remarks.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.conceptglobal.pmc.fo.FarmerFormActivity.33
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                FarmerFormActivity.this.d_remarks.dismiss();
            }
        });
    }

    @Override // com.conceptglobal.pmc.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        LocalBroadcastManager.getInstance(this).unregisterReceiver(this.message);
        PLog.location("Navigation", "onDestroy", TODO_TAG, UtilDeclarations.getDateTime());
        LocalBroadcastManager.getInstance(this).unregisterReceiver(this.datasaveReceiver);
        LocalBroadcastManager.getInstance(this).unregisterReceiver(this.camaigndata_receiver);
        if (!this.isDraftSave && !TextUtils.isEmpty(campaignID) && !this.campaignStatus.equalsIgnoreCase("Completed")) {
            Intent intent = new Intent("CLOSE_ACTIVITY");
            intent.putExtra(NeoCampaignConstants.CAMPAIGN_ID, campaignID);
            LocalBroadcastManager.getInstance(getApplicationContext()).sendBroadcast(intent);
        }
        super.onDestroy();
    }

    private boolean checkCustomerDetails() {
        try {
            if (this.getDataFromDB.getLookupValue(Queries.getInstance().getItemValue("ActivityCustomerSelection")) != 1 || !this.selCustomerId.equalsIgnoreCase("") || this.selSegmentID != 0) {
                return true;
            }
            Toast.makeText(getApplicationContext(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_plsSelectCustomerToast()), 0).show();
            return false;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
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
            if (this.getDataFromDB.getLookupValue(Queries.getInstance().getImageIsMandatory(this.activityId)) != 1 || this.images.size() != 0) {
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
            if (this.getDataFromDB.getLookupValue(Queries.getInstance().getVideoIsMandatory(this.activityId)) != 1 || this.videos.size() != 0) {
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
            new FetchLocation(this, true, new OnLocationFoundListener() { // from class: com.conceptglobal.pmc.fo.FarmerFormActivity.34
                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onTimerTimeOut() {
                }

                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onLocationFound(LocationInfo locationInfo) {
                    FarmerFormActivity.this.tvLatitude.setText(locationInfo.getLatitude() + "");
                    FarmerFormActivity.this.tvLongitude.setText(locationInfo.getLongitude() + "");
                }

                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onLocationFound(Location location) {
                    FarmerFormActivity.this.GPSTimeStamp = UtilDeclarations.getLongToDate(location.getTime());
                    FarmerFormActivity farmerFormActivity = FarmerFormActivity.this;
                    farmerFormActivity.bindAddress(location, farmerFormActivity.tv_address);
                }
            }, TAG);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setTab(int i) {
        int i2 = this.segmentId;
        if (i2 != 4 && i2 != 10 && i2 != 18) {
            this.tabHost.setCurrentTab(i + 1);
        } else {
            this.tabHost.setCurrentTab(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showAlertDialog(String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setMessage(str).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.FarmerFormActivity.36
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

    private void showErrorAlertDialog(String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setMessage(Html.fromHtml("<font color='#ff0000'>" + str + "</font>")).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.FarmerFormActivity.37
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
                FarmerFormActivity.this.finish();
            }
        });
        AlertDialog show = builder.show();
        if (UtilDeclarations.isTablet(this)) {
            UtilDeclarations.makeTabletDialogTextlarge(show);
        }
    }

    private boolean checkAllMandatoryImages() {
        try {
            this.imglstConfigId = GetDataFromDB.getInstance().getImagesPathDetail(Queries.getInstance().getAllImagesMandatory(this.activityId));
            for (int i = 0; i < this.imglstConfigId.size(); i++) {
                String singleValue = GetDataFromDB.getInstance().getSingleValue(Queries.getInstance().getItemId(this.imglstConfigId.get(i)));
                if (singleValue != null && !singleValue.isEmpty() && GetDataFromDB.getInstance().getIntValue(Queries.getInstance().getImagesAvailableOrNotToDo(singleValue, this.assignmentId)) == 0) {
                    Toast.makeText(context, "Please take photo " + GetDataFromDB.getInstance().getSingleValue(Queries.getInstance().getItemKey(this.imglstConfigId.get(i))), 0).show();
                    return false;
                }
            }
            return true;
        } catch (Exception e) {
            PLog.e(TAG, e.getMessage());
            return true;
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

    private void setBottomViewPadding(TabHost tabHost) {
        ViewCompat.setOnApplyWindowInsetsListener(findViewById(R.id.tabhost), new OnApplyWindowInsetsListener() { // from class: com.conceptglobal.pmc.fo.FarmerFormActivity$$ExternalSyntheticLambda1
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                return FarmerFormActivity.lambda$setBottomViewPadding$0(view, windowInsetsCompat);
            }
        });
    }

    static /* synthetic */ WindowInsetsCompat lambda$setBottomViewPadding$0(View view, WindowInsetsCompat windowInsetsCompat) {
        Insets insets = windowInsetsCompat.getInsets(WindowInsetsCompat.Type.systemBars());
        TabWidget tabWidget = (TabWidget) view.findViewById(android.R.id.tabs);
        if (tabWidget != null) {
            tabWidget.setPadding(tabWidget.getPaddingLeft(), tabWidget.getPaddingTop(), tabWidget.getPaddingRight(), insets.bottom);
        }
        return windowInsetsCompat;
    }
}

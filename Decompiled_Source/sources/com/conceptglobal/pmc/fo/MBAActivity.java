package com.conceptglobal.pmc.fo;

import android.app.AlertDialog;
import android.app.DatePickerDialog;
import android.app.Dialog;
import android.app.LocalActivityManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.database.sqlite.SQLiteDoneException;
import android.graphics.drawable.ColorDrawable;
import android.location.Location;
import android.os.Bundle;
import android.text.Editable;
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
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TabHost;
import android.widget.TextView;
import android.widget.Toast;
import androidx.fragment.app.Fragment;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.conceptglobal.imaterialdesign.widget.FloatingActionButton;
import com.conceptglobal.pmc.BaseActivity;
import com.conceptglobal.pmc.MainHomePageActivity;
import com.conceptglobal.pmc.adapter.ActivityDisplayAdapter;
import com.conceptglobal.pmc.adapter.CropDisplayAdapter;
import com.conceptglobal.pmc.adapter.GridImageAdapter;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.common.ListPopupOne;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.database.InsertDataIntoDB;
import com.conceptglobal.pmc.interfaces.AttributeEventListener;
import com.conceptglobal.pmc.interfaces.OnCompleteListener;
import com.conceptglobal.pmc.interfaces.OnLocationFoundListener;
import com.conceptglobal.pmc.interfaces.ValidatorInterface;
import com.conceptglobal.pmc.locationprovider.FetchLocation;
import com.conceptglobal.pmc.model.ActivityModel;
import com.conceptglobal.pmc.model.AssignmentActivityDetailsModel;
import com.conceptglobal.pmc.model.AssignmentVisitDetails;
import com.conceptglobal.pmc.model.AttributeModel;
import com.conceptglobal.pmc.model.FarmerCropMapping;
import com.conceptglobal.pmc.model.ImageDetails;
import com.conceptglobal.pmc.model.LastVisitModel;
import com.conceptglobal.pmc.model.LocationInfo;
import com.conceptglobal.pmc.model.PictureReportingData;
import com.conceptglobal.pmc.model.TerritoryMaster;
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
import de.keyboardsurfer.android.widget.crouton.Crouton;
import de.keyboardsurfer.android.widget.crouton.Style;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;
import org.apache.commons.io.IOUtils;

/* loaded from: classes.dex */
public class MBAActivity extends BaseActivity implements View.OnClickListener, AdapterView.OnItemClickListener, OnCompleteListener, AttributeEventListener, CompressListener {
    private static final int GETATTRIBUTEDONE = 3;
    private static final int GETCUSTOMER = 3;
    private static final int GETNEWACTIVITY = 2;
    private static final int GETRETAILERLIST = 10;
    private static final int INITIALCROPID = -1;
    private static final String TAG = "MBAActivity";
    private int activityAssignmentId;
    private int activityId;
    private ImageView activityImage;
    private String activityName;
    private ActivityDisplayAdapter adapterActivities;
    private CropDisplayAdapter adapterCrops;
    private AssignmentActivityDetailsModel assignmentDetals;
    private int assignmentId;
    private Button btnCultivated;
    private Button btnCustomerDetails;
    private Button btnDealer;
    private Button btnDiscription;
    private Button btnDistrict;
    private Button btnFamermerName;
    private Button btnFarmerConumber;
    private Button btnFarmerFathername;
    private Button btnFarmerLandline;
    private Button btnFarmerMobile;
    private Button btnFarmerSurname;
    private Button btnInactive;
    private ImageView btnLatLng;
    private Button btnLeasedin;
    private Button btnLeasedout;
    private Button btnOwned;
    private Button btnSave;
    private Button btnState;
    private Button btnTaluka;
    private Button btnTerritoryDetails;
    private Button btnVillage;
    private Button btnVisit;
    private Context context;
    private TextView custDetailsText;
    protected Dialog d_remarks;
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
    private GetDataFromDB getDataFromDB;
    private GridView gridView;
    private GridImageAdapter imageAdapter;
    private File imageFile;
    private String imagePath;
    private ArrayList<String> imagelist;
    private List<ImageDetails> images;
    private Intent intentGetData;
    private boolean isImageDeleted;
    private List<LastVisitModel> lastVisitData;
    private List<ActivityModel> listActivities;
    private List<AttributeModel> listAttributes_Assgnmt;
    private List<FarmerCropMapping> listFarmerCrops;
    private ListView lvActivity;
    private ListView lvCrops;
    private ListView lvLastVisitData;
    private int mDay;
    private List<EditText> mEntryArrIds_Assgnmt;
    private List<EditText> mEntryArr_Assgnmt;
    private LocationUtils mLocationUtils;
    private int mMonth;
    private int mYear;
    private MenuItem miDraft;
    SharedPreferences preferences;
    private Queries queries;
    private String[] remarkNames;
    private String[] remarkids;
    private int segmentId;
    private int selSegmentID;
    private TabHost tabHost;
    private TextView territoryDetailsText;
    private TextView tvAddCrop;
    private TextView tvCropid;
    private TextView tvFarmer;
    private TextView tvIsBayerFarmer;
    private TextView tvLatitude;
    private TextView tvLongitude;
    private TextView tvRetailers;
    private AssignmentVisitDetails visitDetails;
    private File zipFilePath;
    private String tag = TAG;
    private int dateDialogID = 0;
    private String farmerID = "";
    private int packageId = 0;
    private String selCustomerId = "";
    private String segmentName = "";
    private String GPSTimeStamp = "";
    private boolean isMIActivity = false;
    private String locationProvider = "";
    private final TextWatcher tvLatitudeListener = new TextWatcher() { // from class: com.conceptglobal.pmc.fo.MBAActivity.8
        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            if (editable.toString().length() > 0) {
                MBAActivity.this.tvLatitude.setError(null);
                MBAActivity.this.tvLongitude.setError(null);
            }
        }
    };
    private DatePickerDialog.OnDateSetListener mDateSetListener = new DatePickerDialog.OnDateSetListener() { // from class: com.conceptglobal.pmc.fo.MBAActivity.20
        @Override // android.app.DatePickerDialog.OnDateSetListener
        public void onDateSet(DatePicker datePicker, int i, int i2, int i3) {
            String str;
            String str2;
            MBAActivity.this.mYear = i;
            MBAActivity.this.mMonth = i2;
            MBAActivity.this.mDay = i3;
            try {
                if (new SimpleDateFormat("yyyy-MM-dd").parse(i + "-" + (i2 + 1) + "-" + i3).compareTo(new Date()) < 0) {
                    if (MBAActivity.this.dateDialogID == 0) {
                        if (MBAActivity.this.mMonth + 1 < 10) {
                            str = "0" + (MBAActivity.this.mMonth + 1);
                        } else {
                            str = (MBAActivity.this.mMonth + 1) + "";
                        }
                        if (MBAActivity.this.mDay < 10) {
                            str2 = "0" + MBAActivity.this.mDay;
                        } else {
                            str2 = MBAActivity.this.mDay + "";
                        }
                        MBAActivity.this.etCropDos.setText(str2 + "-" + str + "-" + MBAActivity.this.mYear);
                        return;
                    }
                    return;
                }
                Toast.makeText(MBAActivity.this.getApplicationContext(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectProperDate()), 1).show();
            } catch (Exception e) {
                PLog.e(MBAActivity.TAG, e);
            }
        }
    };
    private BroadcastReceiver message = new BroadcastReceiver() { // from class: com.conceptglobal.pmc.fo.MBAActivity.25
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String stringExtra = intent.getStringExtra("deletedImage");
            MBAActivity.this.imagelist.remove(stringExtra);
            MBAActivity.this.isImageDeleted = true;
            try {
                File file = new File(stringExtra);
                if (file.exists()) {
                    file.delete();
                }
            } catch (Exception e) {
                PLog.e(MBAActivity.TAG, e);
                e.printStackTrace();
            }
        }
    };

    @Override // com.conceptglobal.pmc.interfaces.AttributeEventListener
    public void getFragmentsList(List<Fragment> list) {
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
    }

    @Override // com.conceptglobal.pmc.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.mba_activity_tabs);
        this.context = this;
        ConstantsPMC.getInstance().getLanguageConfigurations(this.context);
        this.mLocationUtils = new LocationUtils();
        initialization();
        getData();
        settingTabs();
        setLayoutData();
        settingData();
        setListeners();
        this.gridView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.conceptglobal.pmc.fo.MBAActivity.1
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                MBAActivity mBAActivity = MBAActivity.this;
                mBAActivity.captureImage(((ImageDetails) mBAActivity.images.get(i)).getImageId());
            }
        });
        ((FloatingActionButton) findViewById(R.id.fab)).setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.MBAActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (MBAActivity.this.images.size() <= 4) {
                    MBAActivity.this.captureImage(0L);
                } else {
                    Toast.makeText(MBAActivity.this.getApplication(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_maxImagesToast()), 1).show();
                }
            }
        });
        LocalBroadcastManager.getInstance(this).registerReceiver(this.message, new IntentFilter("send"));
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

    @Override // com.conceptglobal.pmc.BaseActivity
    protected void displayNotification(String str, String str2) {
        Crouton.showText(this, "" + str2 + IOUtils.LINE_SEPARATOR_UNIX + str, Style.ALERT);
    }

    private void initialization() {
        this.context = this;
        this.intentGetData = getIntent();
        this.queries = Queries.getInstance();
        this.getDataFromDB = GetDataFromDB.getInstance();
        TabHost tabHost = (TabHost) findViewById(R.id.tabhost);
        this.tabHost = tabHost;
        this.btnOwned = (Button) tabHost.findViewById(R.id.tv_owned_farmer_acreage);
        this.btnLeasedin = (Button) this.tabHost.findViewById(R.id.tv_leasedin_farmer_acreage);
        this.btnLeasedout = (Button) this.tabHost.findViewById(R.id.tv_leasedout_farmer_acreage);
        this.btnCultivated = (Button) this.tabHost.findViewById(R.id.tv_cultivated_farmer_acreage);
        this.etOwned = (EditText) this.tabHost.findViewById(R.id.et_owned_farmer_acreage);
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
        this.btnSave = (Button) this.tabHost.findViewById(R.id.btn_save_farmer_other_details);
        this.btnInactive = (Button) this.tabHost.findViewById(R.id.btn_inactive_farmer_other_details);
        this.btnVisit = (Button) this.tabHost.findViewById(R.id.btn_visit_farmer_other_details);
        TextView textView = (TextView) this.tabHost.findViewById(R.id.txtSelectCustomer);
        this.custDetailsText = textView;
        textView.setVisibility(0);
        Button button = (Button) this.tabHost.findViewById(R.id.btnSelectCustomer);
        this.btnCustomerDetails = button;
        button.setVisibility(0);
        TextView textView2 = (TextView) this.tabHost.findViewById(R.id.txtSelectTerritory);
        this.territoryDetailsText = textView2;
        textView2.setVisibility(0);
        Button button2 = (Button) this.tabHost.findViewById(R.id.btnSelectTerritory);
        this.btnTerritoryDetails = button2;
        button2.setVisibility(0);
        this.lvLastVisitData = (ListView) findViewById(R.id.lv_list_alert);
        this.btnDealer.setVisibility(8);
        this.tvRetailers.setVisibility(8);
        this.btnLatLng = (ImageView) this.tabHost.findViewById(R.id.btn_get_latlong_farmer_personal_detailss);
        this.tvLatitude = (TextView) this.tabHost.findViewById(R.id.tv_latitude_personal_detailss);
        this.tvLongitude = (TextView) this.tabHost.findViewById(R.id.tv_longitude_personal_detailss);
        this.tvLatitude.addTextChangedListener(this.tvLatitudeListener);
        this.activityImage = (ImageView) this.tabHost.findViewById(R.id.imageViewPicture);
        this.gridView = (GridView) this.tabHost.findViewById(R.id.grid_view_farmer);
        this.imagelist = new ArrayList<>();
    }

    private void settingTabs() {
        LocalActivityManager localActivityManager = new LocalActivityManager(this, false);
        localActivityManager.dispatchCreate(null);
        this.tabHost.setup(localActivityManager);
        addTab(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_activityLastVisitText()), R.drawable.ic_activity_wight, getResources().getString(R.string.pmc_tag3));
        addTab(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_finishTabSelfAssignText()), R.drawable.ic_others_wight, getResources().getString(R.string.pmc_tag4));
    }

    private void addTab(String str, int i, String str2) {
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
            if (this.isMIActivity) {
                Intent intent = new Intent(this.context, (Class<?>) MarketAttributesActivity.class);
                intent.putExtra(ConstantDeclarations.getInstance().getKEYFARMERID(), this.farmerID);
                intent.putExtra(ConstantDeclarations.getInstance().getKeyIsMba(), 1);
                intent.putExtra("SEGMENTID", this.segmentId);
                intent.putExtra("ISSELFASSIGN", 0);
                intent.putExtra("ACTIVITYNAME", this.activityName);
                intent.putExtra("AssignmentId", this.assignmentId);
                intent.putExtra("ActivityAssignmentId", this.activityAssignmentId);
                intent.putExtra(ConstantDeclarations.getInstance().getKEYACTIVITYID(), this.activityId);
                intent.putExtra(ConstantDeclarations.getInstance().getKEYISPLANNED(), 1);
                Bundle bundle = new Bundle();
                bundle.putParcelable("MODELCLASS", this.assignmentDetals);
                intent.putExtras(bundle);
                intent.addFlags(131072).addFlags(8192);
                newTabSpec.setContent(intent);
            } else {
                Intent intent2 = new Intent(this.context, (Class<?>) AttributesActivity.class);
                intent2.putExtra(ConstantDeclarations.getInstance().getKEYFARMERID(), this.farmerID);
                intent2.putExtra(ConstantDeclarations.getInstance().getKeyIsMba(), 1);
                intent2.putExtra("SEGMENTID", this.segmentId);
                intent2.putExtra("ISSELFASSIGN", 0);
                intent2.putExtra("ACTIVITYNAME", this.activityName);
                intent2.putExtra("AssignmentId", this.assignmentId);
                intent2.putExtra("ActivityAssignmentId", this.activityAssignmentId);
                Bundle bundle2 = new Bundle();
                bundle2.putParcelable("MODELCLASS", this.assignmentDetals);
                intent2.putExtras(bundle2);
                intent2.putExtra(ConstantDeclarations.getInstance().getKEYACTIVITYID(), this.activityId);
                intent2.putExtra(ConstantDeclarations.getInstance().getKEYISPLANNED(), 1);
                intent2.addFlags(131072).addFlags(8192);
                newTabSpec.setContent(intent2);
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
        this.farmerID = this.intentGetData.getStringExtra("farmerId");
        this.intentGetData.getIntExtra(ConstantDeclarations.getInstance().getKEYVILLAGEID(), 0);
        this.activityId = this.intentGetData.getIntExtra(ConstantDeclarations.getInstance().getKEYACTIVITYID(), 0);
        this.assignmentId = this.intentGetData.getIntExtra("AssignmentId", 0);
        this.activityName = this.intentGetData.getStringExtra("ACTIVITYNAME");
        this.segmentId = this.intentGetData.getIntExtra("SEGMENTID", 0);
        this.activityAssignmentId = this.intentGetData.getIntExtra("ActivityAssignmentId", 0);
        this.packageId = this.intentGetData.getIntExtra("PackageId", 0);
        this.lastVisitData = new ArrayList();
        CustomActionBar.initActionBar(this, this.getDataFromDB.getSegmentName(this.segmentId) + " Details");
        this.segmentName = this.getDataFromDB.getSegmentName(this.segmentId);
        if (ConstantsPMC.getInstance().getIsTrainingORLive() != 2) {
            CustomActionBar.initActionBar(this, this.segmentName + " Details(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
        } else {
            CustomActionBar.initActionBar(this, this.segmentName + " Details(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
        }
        this.visitDetails = this.getDataFromDB.getAssignmentVisitDetail(Queries.getInstance().getAssignmentVisitDetail(this.activityAssignmentId));
        try {
            if (this.getDataFromDB.getIFContains(Queries.getInstance().getQueryActivityType(this.activityId)) == 8) {
                this.isMIActivity = true;
            }
        } catch (Exception e) {
            PLog.e(this.tag, e);
        }
    }

    private void setLayoutData() {
        int i;
        this.btnDealer.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_prefDealerInFFA()));
        this.btnDiscription.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_visitDescInUFA()));
        this.etDiscription.setHint(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_addDescInFFA()));
        this.btnSave.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_draftFarmerText()));
        this.btnSave.setVisibility(8);
        this.btnInactive.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_discardText()));
        this.btnVisit.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_visitCompleteButtonText()));
        this.btnVisit.setSelected(true);
        this.btnVisit.setEllipsize(TextUtils.TruncateAt.MARQUEE);
        this.btnVisit.setSingleLine(true);
        try {
            if (this.visitDetails != null) {
                try {
                    int intValue = this.getDataFromDB.getIntValue(this.queries.getTerritoryDraftQuery(this.activityAssignmentId, 0L));
                    if (intValue != 0) {
                        this.territoryDetailsText.setText(this.getDataFromDB.getStringValue(this.queries.getTerritoryName(intValue)));
                        this.territoryDetailsText.setTag(R.string.ENTRYID_SET, Integer.valueOf(intValue));
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
                    PLog.e(TAG, e.toString());
                }
                if (this.territoryDetailsText.getText().toString().equals("")) {
                    List<TerritoryMaster> territoryDetails = this.getDataFromDB.getTerritoryDetails(this.queries.getTerritoryNamesListQuery(0));
                    if (territoryDetails.size() == 1) {
                        this.territoryDetailsText.setText(territoryDetails.get(0).getTerritoryName());
                        this.territoryDetailsText.setTag(R.string.ENTRYID_SET, Integer.valueOf(territoryDetails.get(0).getTerritoryId()));
                    }
                }
                this.etDiscription.setText(this.visitDetails.getVisitDescription());
                if (this.visitDetails.getLatitude() == 0.0d || this.visitDetails.getLongitude() == 0.0d) {
                    return;
                }
                this.tvLatitude.setText(this.visitDetails.getLatitude() + "");
                this.tvLongitude.setText(this.visitDetails.getLongitude() + "");
            }
        } catch (Exception e2) {
            PLog.e(this.tag, e2, 0);
        }
    }

    private void settingData() {
        Calendar calendar = Calendar.getInstance();
        this.mYear = calendar.get(1);
        this.mMonth = calendar.get(2);
        this.mDay = calendar.get(5);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setListviewForAcreages() {
        this.listFarmerCrops = new ArrayList();
        this.listFarmerCrops = this.getDataFromDB.getCropSelectionData(this.queries.getCropsandAcreages(this.farmerID));
        CropDisplayAdapter cropDisplayAdapter = new CropDisplayAdapter(this, this.listFarmerCrops, this.farmerID);
        this.adapterCrops = cropDisplayAdapter;
        this.lvCrops.setAdapter((ListAdapter) cropDisplayAdapter);
        ListviewFillToParent.setListViewHeightBasedOnChildren(this.lvCrops);
    }

    private void setListeners() {
        this.tvAddCrop.setOnClickListener(this);
        this.btnSave.setOnClickListener(this);
        this.btnInactive.setOnClickListener(this);
        this.btnVisit.setOnClickListener(this);
        this.lvCrops.setOnItemClickListener(this);
        this.tvRetailers.setOnClickListener(this);
        this.btnLatLng.setOnClickListener(this);
        this.activityImage.setOnClickListener(this);
        this.custDetailsText.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.MBAActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Intent intent = new Intent(MBAActivity.this.getBaseContext(), (Class<?>) SelfAssignActivity.class);
                intent.putExtra("isFromAssignment", 1);
                intent.putExtra("ACTIVITYID", MBAActivity.this.activityId);
                MBAActivity.this.startActivityForResult(intent, 3);
            }
        });
        this.territoryDetailsText.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.MBAActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ListPopupOne listPopupOne = new ListPopupOne(MBAActivity.this, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectText()) + " Market", " SELECT territoryId,territoryName FROM TerritoryMaster where isActive ='True' or isActive=1", view, MBAActivity.this.territoryDetailsText);
                listPopupOne.getWindow().getAttributes().windowAnimations = R.style.PauseDialogAnimation;
                listPopupOne.show();
                listPopupOne.getWindow().setSoftInputMode(3);
            }
        });
        this.tabHost.setOnTabChangedListener(new TabHost.OnTabChangeListener() { // from class: com.conceptglobal.pmc.fo.MBAActivity.5
            @Override // android.widget.TabHost.OnTabChangeListener
            public void onTabChanged(String str) {
                if (MBAActivity.this.tabHost.getCurrentTab() != 1) {
                    MBAActivity.this.miDraft.setVisible(false);
                } else {
                    MBAActivity.this.miDraft.setVisible(true);
                }
                if (MBAActivity.this.tabHost.getCurrentTab() == 1) {
                    if (MBAActivity.this.isMIActivity) {
                        MarketAttributesActivity.methodToGetData(MBAActivity.this.context);
                    } else {
                        AttributesActivity.methodToGetData(MBAActivity.this.context);
                    }
                }
            }
        });
        this.etOwned.addTextChangedListener(new TextWatcher() { // from class: com.conceptglobal.pmc.fo.MBAActivity.6
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                float f = 0.0f;
                float parseFloat = (MBAActivity.this.etOwned.getText().toString().trim().equalsIgnoreCase(".") || MBAActivity.this.etOwned.getText().toString().trim().length() <= 0) ? 0.0f : Float.parseFloat(MBAActivity.this.etOwned.getText().toString());
                if (!MBAActivity.this.etLeasedin.getText().toString().trim().equalsIgnoreCase(".") && MBAActivity.this.etLeasedin.getText().toString().trim().length() > 0) {
                    f = Float.parseFloat(MBAActivity.this.etLeasedin.getText().toString());
                }
                MBAActivity.this.etCultivated.setText(Float.toString(parseFloat + f));
            }
        });
        this.etLeasedin.addTextChangedListener(new TextWatcher() { // from class: com.conceptglobal.pmc.fo.MBAActivity.7
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                float f = 0.0f;
                float parseFloat = (MBAActivity.this.etOwned.getText().toString().trim().equalsIgnoreCase(".") || MBAActivity.this.etOwned.getText().toString().trim().length() <= 0) ? 0.0f : Float.parseFloat(MBAActivity.this.etOwned.getText().toString());
                if (!MBAActivity.this.etLeasedin.getText().toString().trim().equalsIgnoreCase(".") && MBAActivity.this.etLeasedin.getText().toString().trim().length() > 0) {
                    f = Float.parseFloat(MBAActivity.this.etLeasedin.getText().toString());
                }
                MBAActivity.this.etCultivated.setText(Float.toString(parseFloat + f));
            }
        });
    }

    private void showAddCropDialog(String str, float f, String str2, int i) {
        final Dialog dialog = new Dialog(this.context);
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
        this.etCropAccr.addTextChangedListener(new TextWatcher() { // from class: com.conceptglobal.pmc.fo.MBAActivity.9
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
                        MBAActivity.this.etCropDos.setText(MBAActivity.this.getResources().getString(R.string.na));
                    } else if (MBAActivity.this.etCropDos.getText().toString().equalsIgnoreCase(MBAActivity.this.getResources().getString(R.string.na))) {
                        MBAActivity.this.etCropDos.setText("");
                    }
                }
            }
        });
        this.etCropDos.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.MBAActivity.10
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (MBAActivity.this.etCropDos.getText().toString().equalsIgnoreCase(MBAActivity.this.getResources().getString(R.string.na))) {
                    return;
                }
                MBAActivity.this.dateDialogID = 0;
                MBAActivity mBAActivity = MBAActivity.this;
                mBAActivity.showDialog(mBAActivity.dateDialogID);
            }
        });
        this.etCropName.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.MBAActivity.11
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                UtilDeclarations.hideInputKeyboard(MBAActivity.this.context);
                try {
                    ListPopupOne listPopupOne = new ListPopupOne(MBAActivity.this.context, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectOneDropDownTitle()), MBAActivity.this.queries.gettingDropdownValues(1), view, MBAActivity.this.tvCropid);
                    listPopupOne.getWindow().getAttributes().windowAnimations = R.style.PauseDialogAnimation;
                    listPopupOne.show();
                    listPopupOne.getWindow().setSoftInputMode(3);
                } catch (Exception e) {
                    PLog.e(MBAActivity.this.tag, e);
                }
            }
        });
        this.tvCropid.addTextChangedListener(new TextWatcher() { // from class: com.conceptglobal.pmc.fo.MBAActivity.12
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (MBAActivity.this.tvCropid.getText().toString().length() > 0) {
                    if (Integer.parseInt(MBAActivity.this.tvCropid.getText().toString()) == 0) {
                        MBAActivity.this.etCropAccr.setVisibility(8);
                        MBAActivity.this.etCropDos.setVisibility(8);
                        return;
                    }
                    try {
                        try {
                            String stringValue = MBAActivity.this.getDataFromDB.getStringValue(MBAActivity.this.queries.getCropAcreagesForCrop(MBAActivity.this.farmerID, Integer.parseInt(MBAActivity.this.tvCropid.getText().toString())));
                            if (stringValue == null || stringValue.trim().length() <= 0) {
                                MBAActivity.this.etCropAccr.setText(ConstantDeclarations.getInstance().getEMPTY());
                            } else {
                                MBAActivity.this.etCropAccr.setText(stringValue);
                            }
                        } catch (SQLiteDoneException unused) {
                            MBAActivity.this.etCropAccr.setText(ConstantDeclarations.getInstance().getEMPTY());
                        }
                        try {
                            String stringValue2 = MBAActivity.this.getDataFromDB.getStringValue(MBAActivity.this.queries.getDosFromCrop(MBAActivity.this.farmerID, Integer.parseInt(MBAActivity.this.tvCropid.getText().toString())));
                            if (stringValue2 != null) {
                                MBAActivity.this.etCropDos.setText(stringValue2);
                            }
                        } catch (SQLiteDoneException unused2) {
                            MBAActivity.this.etCropDos.setText(ConstantDeclarations.getInstance().getEMPTY());
                        }
                    } catch (Exception e) {
                        PLog.e(MBAActivity.this.tag, e);
                    }
                }
            }
        });
        button.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.MBAActivity.13
            private FarmerCropMapping farmerCropMapping;

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                UtilDeclarations.hideInputKeyboard(MBAActivity.this.context);
                if (MBAActivity.this.etCropName.getText().toString().trim().length() == 0) {
                    Toast.makeText(MBAActivity.this.context, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_pleaseSelectCropToast()), 0).show();
                    return;
                }
                if (MBAActivity.this.etCropAccr.getText().toString().trim().length() < 1 || MBAActivity.this.etCropAccr.getText().toString().trim().equalsIgnoreCase(".")) {
                    Toast.makeText(MBAActivity.this.context, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_enterPropAcreToast()), 0).show();
                    return;
                }
                if (MBAActivity.this.etCropDos.getText().toString().trim().length() < 1) {
                    Toast.makeText(MBAActivity.this.context, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectDOSowingToast()), 0).show();
                    return;
                }
                FarmerCropMapping farmerCropMapping = new FarmerCropMapping();
                this.farmerCropMapping = farmerCropMapping;
                try {
                    try {
                        farmerCropMapping.setAcreages(Float.parseFloat(MBAActivity.this.etCropAccr.getText().toString()));
                        this.farmerCropMapping.setRespondentNo(MBAActivity.this.farmerID);
                        this.farmerCropMapping.setCropId(Integer.parseInt(MBAActivity.this.getDataFromDB.getStringValue(MBAActivity.this.queries.getCropIdByCropName(MBAActivity.this.etCropName.getText().toString()))));
                        this.farmerCropMapping.setDos(MBAActivity.this.etCropDos.getText().toString());
                    } catch (Exception e) {
                        PLog.e(MBAActivity.this.tag, e);
                    }
                    MBAActivity.this.getDataFromDB.executeRawQueryInDB(MBAActivity.this.queries.deleteFarmerCropData(MBAActivity.this.farmerID, Integer.parseInt(MBAActivity.this.tvCropid.getText().toString())));
                    InsertDataIntoDB.insertCropSelectionDetails(this.farmerCropMapping);
                    MBAActivity.this.setListviewForAcreages();
                } catch (Exception e2) {
                    PLog.e(MBAActivity.this.tag, e2);
                }
                dialog.dismiss();
            }
        });
        button2.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.MBAActivity.14
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (!MBAActivity.this.etCropDos.getText().toString().equalsIgnoreCase(MBAActivity.this.getResources().getString(R.string.na))) {
                    MBAActivity.this.etCropDos.setText(MBAActivity.this.getResources().getString(R.string.na));
                    button2.setBackgroundColor(-12303292);
                } else {
                    MBAActivity.this.etCropDos.setText("");
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
        UtilDeclarations.hideInputKeyboard(this.context);
        switch (view.getId()) {
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
                if (isValidData(true) && checkCustomerDetails() && checkTerritorydetails() && checkImagesMandatory()) {
                    showAlertCancel(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_confirmVisitCompleteDialogText()), 1);
                    break;
                }
                break;
            case R.id.imageViewPicture /* 2131296825 */:
                Intent intent = new Intent(this.context, (Class<?>) PictureReporting.class);
                intent.putExtra("activityId", this.activityId);
                intent.putExtra("farmerId", this.farmerID);
                startActivityForResult(intent, 101);
                break;
            case R.id.tv_retailers_farmer_other_details /* 2131297653 */:
                startActivityForResult(new Intent(this.context, (Class<?>) RetailersDisplayActivity.class).addFlags(131072), 10);
                break;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveDataIntoDataBase(int i) {
        int i2;
        try {
            insertPictureData();
        } catch (Exception e) {
            PLog.e(this.tag, e);
        }
        if (i == 0) {
            showAlertCancel(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_saveNCloseDialogInUFA()), 0);
            return;
        }
        if (i != 1) {
            if (i != 2) {
                return;
            }
            prepareAttributeData();
            try {
                try {
                    if (this.listAttributes_Assgnmt.size() != 0) {
                        GetDataFromDB.getInstance().executeRawQueryInDB(Queries.getInstance().deleteFarmerDetailsActivity(this.farmerID, this.activityId, this.activityAssignmentId));
                    }
                    InsertDataIntoDB.insertFarmerActivityDetailsUpdate(this.listAttributes_Assgnmt, this.farmerID, this.activityId, 1, 0, this.assignmentId, this.segmentId, 0L, 0, this.activityAssignmentId, this.assignmentDetals, this.packageId);
                } catch (Exception e2) {
                    PLog.e("FarmerFormActivity", e2);
                }
            } catch (Exception e3) {
                PLog.e("FarmerFormActivity", e3);
            }
            String obj = this.territoryDetailsText.getTag(R.string.ENTRYID_SET) != null ? this.territoryDetailsText.getTag(R.string.ENTRYID_SET).toString() : "0";
            if ((!this.selCustomerId.equalsIgnoreCase("") && this.selSegmentID != 0) || !obj.equals("0")) {
                try {
                    InsertDataIntoDB.UpdateAssignmentActivitiesCustomerDetails(this.selCustomerId, this.selSegmentID, this.activityAssignmentId, 0L, obj);
                } catch (Exception e4) {
                    PLog.e("MBAACTIVITY", e4);
                }
            }
            GetDataFromDB.getInstance().executeRawQueryInDB(Queries.getInstance().updateDraftForActivities(this.activityId, this.farmerID, this.activityAssignmentId, 2));
            if (this.getDataFromDB.getIFContains(Queries.getInstance().updateDraftForAssignmentvisit(this.activityAssignmentId)) != 0) {
                InsertDataIntoDB.UpdateAssignmentVisistDetails(this.assignmentId, this.farmerID, this.etDiscription.getText().toString(), this.tvLatitude.getText().toString(), this.tvLongitude.getText().toString(), this.activityAssignmentId, 0L, "0", this.locationProvider, this.GPSTimeStamp, "", "");
            } else {
                InsertDataIntoDB.insertAssignmentVisistDetails(this.assignmentId, this.farmerID, this.etDiscription.getText().toString(), this.tvLatitude.getText().toString(), this.tvLongitude.getText().toString(), this.activityAssignmentId, 0L, "0", this.locationProvider, this.GPSTimeStamp, "", "");
            }
            finish();
            return;
        }
        prepareAttributeData();
        try {
            if (this.listAttributes_Assgnmt.size() != 0) {
                GetDataFromDB.getInstance().executeRawQueryInDB(Queries.getInstance().deleteFarmerDetailsActivity(this.farmerID, this.activityId, this.activityAssignmentId));
            }
            InsertDataIntoDB.insertFarmerActivityDetailsUpdate(this.listAttributes_Assgnmt, this.farmerID, this.activityId, 1, 1, this.assignmentId, this.segmentId, 0L, 1, this.activityAssignmentId, this.assignmentDetals, this.packageId);
            for (i2 = 0; i2 < this.images.size(); i2++) {
                InsertDataIntoDB.UpdateImageServerStatus(this.images.get(i2).getImageId());
            }
        } catch (Exception e5) {
            PLog.e("FarmerFormActivity", e5);
        }
        if (this.getDataFromDB.getIFContains(Queries.getInstance().updateDraftForAssignmentvisit(this.activityAssignmentId)) != 0) {
            InsertDataIntoDB.UpdateAssignmentVisistDetails(this.assignmentId, this.farmerID, this.etDiscription.getText().toString(), this.tvLatitude.getText().toString(), this.tvLongitude.getText().toString(), this.activityAssignmentId, 0L, "false", this.locationProvider, this.GPSTimeStamp, "", "");
        } else {
            InsertDataIntoDB.insertAssignmentVisistDetails(this.assignmentId, this.farmerID, this.etDiscription.getText().toString(), this.tvLatitude.getText().toString(), this.tvLongitude.getText().toString(), this.activityAssignmentId, 0L, "false", this.locationProvider, this.GPSTimeStamp, "", "");
        }
        GetDataFromDB.getInstance().updateChildTransactionDetails(Queries.getInstance().getchildDetailsActivity(this.farmerID, this.activityId, this.activityAssignmentId, 0L));
        String obj2 = this.territoryDetailsText.getTag(R.string.ENTRYID_SET) != null ? this.territoryDetailsText.getTag(R.string.ENTRYID_SET).toString() : "0";
        if ((!this.selCustomerId.equalsIgnoreCase("") && this.selSegmentID != 0) || !obj2.equals("0")) {
            try {
                InsertDataIntoDB.UpdateAssignmentActivitiesCustomerDetails(this.selCustomerId, this.selSegmentID, this.activityAssignmentId, 0L, obj2);
            } catch (Exception e6) {
                PLog.e("MBAACTIVITY", e6);
            }
        }
        if (UtilDeclarations.isOnline(this.context)) {
            new SendDataServiceUtil(this).startService();
        }
        Intent intent = new Intent(this, (Class<?>) MainHomePageActivity.class);
        intent.addFlags(268468224);
        startActivity(intent);
        finish();
        return;
        PLog.e(this.tag, e);
    }

    private boolean checkCustomerDetails() {
        try {
            if (this.getDataFromDB.getSegmentType(this.segmentId) != 2 || this.getDataFromDB.getLookupValue(Queries.getInstance().getItemValue("ActivityCustomerSelection")) != 1 || !this.selCustomerId.equalsIgnoreCase("") || this.selSegmentID != 0) {
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

    private boolean isValidData(boolean z) {
        if (this.mEntryArr_Assgnmt == null || this.listAttributes_Assgnmt == null) {
            this.tabHost.setCurrentTab(0);
            return false;
        }
        boolean z2 = true;
        for (int i = 0; i < this.mEntryArr_Assgnmt.size(); i++) {
            AttributeModel attributeModel = this.listAttributes_Assgnmt.get(i);
            try {
            } catch (Exception e) {
                PLog.e(TAG, e);
            }
            if (attributeModel.getIsMandatory() == 1) {
                if (this.mEntryArr_Assgnmt.get(i).getText().toString().trim().length() != 0) {
                    if (attributeModel.getMinLength() != 0 && this.mEntryArr_Assgnmt.get(i).getText().length() < attributeModel.getMinLength()) {
                        z2 = false;
                    }
                    if ((attributeModel.getControlType().equalsIgnoreCase("TextBoxN") || attributeModel.getControlType().equalsIgnoreCase("TextBoxND")) && attributeModel.getMinValue() != 0) {
                        if (Integer.parseInt(this.mEntryArr_Assgnmt.get(i).getText().toString().trim().length() > 0 ? this.mEntryArr_Assgnmt.get(i).getText().toString() : "0") < attributeModel.getMinValue()) {
                        }
                    }
                }
            } else {
                if (this.mEntryArr_Assgnmt.get(i).getText().toString().trim().length() != 0) {
                    if (attributeModel.getMinLength() != 0 && this.mEntryArr_Assgnmt.get(i).getText().length() < attributeModel.getMinLength()) {
                        z2 = false;
                    }
                    if ((attributeModel.getControlType().equalsIgnoreCase("TextBoxN") || attributeModel.getControlType().equalsIgnoreCase("TextBoxND")) && attributeModel.getMinValue() != 0) {
                        if (Integer.parseInt(this.mEntryArr_Assgnmt.get(i).getText().toString().trim().length() > 0 ? this.mEntryArr_Assgnmt.get(i).getText().toString() : "0") >= attributeModel.getMinValue()) {
                        }
                    }
                }
            }
            z2 = false;
        }
        if (!z2 && z) {
            try {
                ((ValidatorInterface) AttributesActivity.ctx).onValidate(true);
            } catch (Exception e2) {
                PLog.e(TAG, e2);
            }
            this.tabHost.setCurrentTab(0);
        }
        GetDataFromDB.getInstance();
        if (GetDataFromDB.getLatLondMandatory(Queries.getInstance().getIsLatLongMandatory(this.activityId)) != 1 || (this.tvLatitude.getText().toString().trim().length() > 0 && this.tvLongitude.getText().toString().trim().length() > 0)) {
            return z2;
        }
        this.tvLatitude.setError(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_locationIsMandateError()));
        this.tvLongitude.setError(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_locationIsMandateError()));
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void prepareAttributeData() {
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
                        attributeModel2.setAttributeValue(str);
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

    private void showGoBackDialog() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.context);
        builder.setMessage(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_addCustomerGoBackDialog())).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_cancelDialogButtonText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.MBAActivity.15
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        });
        builder.setNegativeButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.MBAActivity.16
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
                MBAActivity.this.finish();
            }
        });
        AlertDialog show = builder.show();
        if (UtilDeclarations.isTablet(this)) {
            UtilDeclarations.makeTabletDialogTextlarge(show);
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
                this.imagelist.add(this.imagePath);
                setAdapter();
                return;
            }
            if (i2 == 0 || intent == null) {
                return;
            }
            if (intent.getStringExtra(ConstantDeclarations.getInstance().getKEYRETAILERNAME()) != null) {
                intent.getStringExtra(ConstantDeclarations.getInstance().getKEYRETAILERNAME()).length();
            }
            intent.getStringExtra(ConstantDeclarations.getInstance().getKEYRETAILERID());
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
        sendBroadcast(intent2);
    }

    private void fetchLocation() {
        if (!this.mLocationUtils.checkPermissions(this)) {
            this.mLocationUtils.requestPermissions(this);
            return;
        }
        try {
            new FetchLocation(this, true, new OnLocationFoundListener() { // from class: com.conceptglobal.pmc.fo.MBAActivity.17
                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onTimerTimeOut() {
                }

                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onLocationFound(LocationInfo locationInfo) {
                    MBAActivity.this.tvLatitude.setText(locationInfo.getLatitude() + "");
                    MBAActivity.this.tvLongitude.setText(locationInfo.getLongitude() + "");
                }

                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onLocationFound(Location location) {
                    MBAActivity.this.GPSTimeStamp = UtilDeclarations.getLongToDate(location.getTime());
                }
            }, TAG);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void showAlertCancel(String str, final int i) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.context);
        builder.setMessage(str).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.MBAActivity.19
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                dialogInterface.dismiss();
                int i3 = i;
                if (i3 == 0) {
                    MBAActivity.this.finish();
                } else {
                    if (i3 != 1) {
                        return;
                    }
                    MBAActivity.this.saveDataIntoDataBase(1);
                }
            }
        }).setNegativeButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_cancelDialogButtonText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.MBAActivity.18
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
            }
        });
        AlertDialog show = builder.show();
        if (UtilDeclarations.isTablet(this)) {
            UtilDeclarations.makeTabletDialogTextlarge(show);
        }
    }

    @Override // android.app.Activity
    public Dialog onCreateDialog(int i) {
        if (i != 0) {
            return null;
        }
        return new DatePickerDialog(this, this.mDateSetListener, this.mYear, this.mMonth, this.mDay);
    }

    @Override // com.conceptglobal.pmc.interfaces.OnCompleteListener
    public void onComplete(String str, Exception exc) {
        if (str.equalsIgnoreCase("1")) {
            this.tabHost.setCurrentTab(1);
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
    }

    @Override // com.conceptglobal.pmc.interfaces.AttributeEventListener
    public void GetData(List<AttributeModel> list, List<EditText> list2, List<EditText> list3) {
        this.listAttributes_Assgnmt = list;
        this.mEntryArr_Assgnmt = list2;
        this.mEntryArrIds_Assgnmt = list3;
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
    public void captureImage(long j) {
        new CompressHelper().getCompressLoaction(this);
        ConstantsPMC.getInstance().setPictureReportingContext(this);
        Intent intent = new Intent(this.context, (Class<?>) PictureReporting.class);
        intent.putExtra("activityId", this.activityId);
        intent.putExtra("assignmentId", this.assignmentId);
        try {
            intent.putExtra("setReferenceType", GetDataFromDB.getInstance().getLookupValue(Queries.getInstance().getItemValue("ToDo")));
        } catch (Exception e) {
            e.printStackTrace();
            PLog.e(TAG, e);
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
            pictureReportingData.setCreatedBy(ConstantsPMC.getInstance().getDeviceID());
            pictureReportingData.setCreatedDate(UtilDeclarations.getDateTime());
            pictureReportingData.setUpdatedBy(ConstantsPMC.getInstance().getDeviceID());
            pictureReportingData.setUpdatedDate(UtilDeclarations.getDateTime());
            pictureReportingData.setReferenceType(j + "");
            pictureReportingData.setAssignmentId(this.assignmentId + "");
            pictureReportingData.setActivityId(this.activityId + "");
            StringBuilder sb = new StringBuilder("");
            sb.append(this.activityAssignmentId);
            pictureReportingData.setReferenceID(sb.toString());
            try {
                InsertDataIntoDB.insertPictureDetails(pictureReportingData, this.context);
            } catch (Exception e2) {
                PLog.e(TAG, e2);
                e2.printStackTrace();
            }
        }
    }

    private void setAdapter() {
        List<ImageDetails> imageDetailsList = this.getDataFromDB.getImageDetailsList(Queries.getInstance().getImageDetailsQry_Assignment(String.valueOf(this.activityAssignmentId)));
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

    private void showDiscardAlert() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.context);
        builder.setMessage(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_discardSelfAssignConfirmDialog()));
        builder.setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.MBAActivity.21
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                MBAActivity.this.showRemarkSelectionAlert();
            }
        });
        builder.setNegativeButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_cancelDialogButtonText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.MBAActivity.22
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
        String[][] strArr = this.getDataFromDB.getlotdata("SELECT itemType,itemValue FROM ConfigurableLookupMaster where itemKey='DiscardRemarks'");
        this.remarkNames = new String[strArr.length];
        this.remarkids = new String[strArr.length];
        for (int i = 0; i < strArr.length; i++) {
            this.remarkids[i] = strArr[i][0];
            this.remarkNames[i] = strArr[i][1];
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setTitle(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectReasonDiscardTitle()));
        builder.setSingleChoiceItems(this.remarkNames, -1, new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.MBAActivity.23
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                MBAActivity.this.d_remarks.dismiss();
                try {
                    MBAActivity.this.prepareAttributeData();
                    if (MBAActivity.this.listAttributes_Assgnmt.size() != 0) {
                        GetDataFromDB.getInstance().executeRawQueryInDB(Queries.getInstance().deleteFarmerDetailsActivity(MBAActivity.this.farmerID, MBAActivity.this.activityId, MBAActivity.this.activityAssignmentId));
                    }
                    InsertDataIntoDB.insertFarmerActivityDetailsUpdate(MBAActivity.this.listAttributes_Assgnmt, MBAActivity.this.farmerID, MBAActivity.this.activityId, 1, 1, MBAActivity.this.assignmentId, MBAActivity.this.segmentId, 0L, 1, MBAActivity.this.activityAssignmentId, MBAActivity.this.assignmentDetals, MBAActivity.this.packageId);
                    GetDataFromDB.getInstance().executeRawQueryInDB(Queries.getInstance().updateNotDoneForActivities(MBAActivity.this.activityId, MBAActivity.this.farmerID, MBAActivity.this.assignmentId, MBAActivity.this.remarkNames[i2]));
                    if (MBAActivity.this.getDataFromDB.getIFContains(Queries.getInstance().updateDraftForAssignmentvisit(MBAActivity.this.activityAssignmentId)) != 0) {
                        InsertDataIntoDB.UpdateAssignmentVisistDetails(MBAActivity.this.assignmentId, MBAActivity.this.farmerID, MBAActivity.this.etDiscription.getText().toString(), MBAActivity.this.tvLatitude.getText().toString(), MBAActivity.this.tvLongitude.getText().toString(), MBAActivity.this.activityAssignmentId, 0L, "false", MBAActivity.this.locationProvider, MBAActivity.this.GPSTimeStamp, "", "");
                    } else {
                        InsertDataIntoDB.insertAssignmentVisistDetails(MBAActivity.this.assignmentId, MBAActivity.this.farmerID, MBAActivity.this.etDiscription.getText().toString(), MBAActivity.this.tvLatitude.getText().toString(), MBAActivity.this.tvLongitude.getText().toString(), MBAActivity.this.activityAssignmentId, 0L, "false", MBAActivity.this.locationProvider, MBAActivity.this.GPSTimeStamp, "", "");
                    }
                    for (int i3 = 0; i3 < MBAActivity.this.images.size(); i3++) {
                        InsertDataIntoDB.UpdateImageServerStatus(((ImageDetails) MBAActivity.this.images.get(i3)).getImageId());
                    }
                    MBAActivity.this.setResult(-1, new Intent());
                    try {
                        ((OnCompleteListener) MBAActivity.this.getParent()).onComplete("1", null);
                    } catch (Exception e) {
                        PLog.e(MBAActivity.TAG, e);
                        e.printStackTrace();
                    }
                    if (!UtilDeclarations.isOnline(MBAActivity.this.context)) {
                        MBAActivity.this.startActivity(new Intent(MBAActivity.this.context, (Class<?>) ToDoActivity.class));
                    } else if (!UtilDeclarations.isServiceRunning(MBAActivity.this.getApplicationContext(), SyncDataService.class)) {
                        new SendDataServiceUtil(MBAActivity.this).startService();
                    }
                    MBAActivity.this.finish();
                } catch (Exception e2) {
                    PLog.e(MBAActivity.TAG, e2);
                }
            }
        });
        AlertDialog create = builder.create();
        this.d_remarks = create;
        create.show();
        this.d_remarks.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.conceptglobal.pmc.fo.MBAActivity.24
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                MBAActivity.this.d_remarks.dismiss();
            }
        });
    }

    @Override // com.conceptglobal.pmc.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        setAdapter();
    }

    @Override // com.conceptglobal.pmc.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        LocalBroadcastManager.getInstance(this).unregisterReceiver(this.message);
        super.onDestroy();
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
}

package com.conceptglobal.pmc.fo;

import android.app.AlertDialog;
import android.app.DatePickerDialog;
import android.app.Dialog;
import android.app.LocalActivityManager;
import android.content.BroadcastReceiver;
import android.content.ClipData;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.location.Location;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.Editable;
import android.text.InputFilter;
import android.text.Spanned;
import android.text.TextWatcher;
import android.util.Log;
import android.view.LayoutInflater;
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
import android.widget.TabHost;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.content.FileProvider;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.conceptglobal.imaterialdesign.widget.FloatingActionButton;
import com.conceptglobal.pmc.BaseActivity;
import com.conceptglobal.pmc.adapter.ActivityDisplayAdapter;
import com.conceptglobal.pmc.adapter.CompanyDisplayAdapter;
import com.conceptglobal.pmc.adapter.CropDisplayAdapter;
import com.conceptglobal.pmc.adapter.GridImageAdapter;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.database.InsertDataIntoDB;
import com.conceptglobal.pmc.fragments.AddFarmer;
import com.conceptglobal.pmc.fragments.AddRetailer;
import com.conceptglobal.pmc.interfaces.OnCompleteListener;
import com.conceptglobal.pmc.interfaces.OnLocationFoundListener;
import com.conceptglobal.pmc.locationprovider.FetchLocation;
import com.conceptglobal.pmc.model.ActivityModel;
import com.conceptglobal.pmc.model.DealerCompanyMapping;
import com.conceptglobal.pmc.model.DynamicFields;
import com.conceptglobal.pmc.model.FarmerCropMapping;
import com.conceptglobal.pmc.model.FarmerDetails;
import com.conceptglobal.pmc.model.FarmerMaster;
import com.conceptglobal.pmc.model.LastVisitModel;
import com.conceptglobal.pmc.model.LocationInfo;
import com.conceptglobal.pmc.model.PictureReportingData;
import com.conceptglobal.pmc.registration.ImagePager;
import com.conceptglobal.pmc.service.SyncDataService;
import com.conceptglobal.pmc.utils.CompressHelper;
import com.conceptglobal.pmc.utils.ConstantDeclarations;
import com.conceptglobal.pmc.utils.CustomActionBar;
import com.conceptglobal.pmc.utils.LabelUtils;
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
import java.util.HashMap;
import java.util.List;
import java.util.regex.Pattern;
import org.apache.commons.io.IOUtils;

/* loaded from: classes.dex */
public class UserFormActivity extends BaseActivity implements View.OnClickListener, OnCompleteListener {
    private static final int GETATTRIBUTEDONE = 3;
    private static final int GETNEWACTIVITY = 2;
    private static final int GETRETAILERLIST = 10;
    private static final int INITIALCROPID = -1;
    private static final String TAG = "UserFormActivity";
    private int activityAssignmentId;
    private int activityId;
    private ImageView activityImage;
    private String activityName;
    private ActivityDisplayAdapter adapterActivities;
    private CompanyDisplayAdapter adapterCompany;
    private CropDisplayAdapter adapterCrops;
    private int assignmentId;
    String bindQuery;
    private Button btnCultivated;
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
    private Button btnVillage;
    private Button btnVisit;
    private int consentflag;
    private Context context;
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
    private GetDataFromDB getDataFromDB;
    private GridView gridView;
    private GridImageAdapter imageAdapter;
    private File imageFile;
    private String imagePath;
    private ArrayList<String> imagelist;
    private Intent intentGetData;
    private boolean isImageDeleted;
    private List<LastVisitModel> lastVisitData;
    private List<ActivityModel> listActivities;
    private List<DealerCompanyMapping> listDealerCompanies;
    private List<FarmerCropMapping> listFarmerCrops;
    private LinearLayout lladdActivities;
    private ListView lvActivity;
    private ListView lvCrops;
    private ListView lvLastVisitData;
    private LinearLayout mAddDynamicLinear;
    private int mDay;
    private ArrayList<EditText> mEntryArr;
    private ArrayList<EditText> mEntryArrIds;
    private ArrayList<TextView> mEntrySpinnerArr;
    private LocationUtils mLocationUtils;
    private int mMonth;
    private ArrayList<TextView> mOprDatesArr;
    private int mYear;
    private ArrayList<TextView> mattributesnamesArr;
    private List<String> mentryValues;
    private Queries queries;
    private String replacestring;
    private int segmentId;
    private TabHost tabHost;
    private TextView tvAddCrop;
    private TextView tvCropid;
    private TextView tvFarmer;
    private TextView tvIsBayerFarmer;
    private TextView tvLatitude;
    private TextView tvLongitude;
    private TextView tvRetailers;
    private File zipFilePath;
    private String tag = TAG;
    private int dateDialogID = 0;
    private String farmerID = "0";
    private HashMap<String, String> hAttributes = null;
    private ArrayList<DynamicFields> attributesArry = null;
    private int layoutId = 0;
    private int mForOperations = -1;
    private int mForDates = -1;
    private String GPSTimeStamp = "";
    private DatePickerDialog.OnDateSetListener mDateSetListener = new DatePickerDialog.OnDateSetListener() { // from class: com.conceptglobal.pmc.fo.UserFormActivity.19
        @Override // android.app.DatePickerDialog.OnDateSetListener
        public void onDateSet(DatePicker datePicker, int i, int i2, int i3) {
            String str;
            String str2;
            UserFormActivity.this.mYear = i;
            UserFormActivity.this.mMonth = i2;
            UserFormActivity.this.mDay = i3;
            try {
                if (new SimpleDateFormat("yyyy-MM-dd").parse(i + "-" + (i2 + 1) + "-" + i3).compareTo(new Date()) < 0) {
                    if (UserFormActivity.this.dateDialogID == 0) {
                        if (UserFormActivity.this.mMonth + 1 < 10) {
                            str = "0" + (UserFormActivity.this.mMonth + 1);
                        } else {
                            str = (UserFormActivity.this.mMonth + 1) + "";
                        }
                        if (UserFormActivity.this.mDay < 10) {
                            str2 = "0" + UserFormActivity.this.mDay;
                        } else {
                            str2 = UserFormActivity.this.mDay + "";
                        }
                        UserFormActivity.this.etCropDos.setText(str2 + "-" + str + "-" + UserFormActivity.this.mYear);
                        return;
                    }
                    return;
                }
                Toast.makeText(UserFormActivity.this.getApplicationContext(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectProperDate()), 1).show();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    };
    private BroadcastReceiver message = new BroadcastReceiver() { // from class: com.conceptglobal.pmc.fo.UserFormActivity.20
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String stringExtra = intent.getStringExtra("deletedImage");
            UserFormActivity.this.imagelist.remove(stringExtra);
            UserFormActivity.this.isImageDeleted = true;
            try {
                File file = new File(stringExtra);
                if (file.exists()) {
                    file.delete();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    };

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
    }

    @Override // com.conceptglobal.pmc.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_tabs);
        this.context = this;
        this.mLocationUtils = new LocationUtils();
        ConstantsPMC.getInstance().getLanguageConfigurations(this.context);
        initialization();
        getData();
        settingTabs();
        setLayoutData();
        settingData();
        setListeners();
        this.gridView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.conceptglobal.pmc.fo.UserFormActivity.1
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                Intent intent = new Intent(UserFormActivity.this, (Class<?>) ImagePager.class);
                intent.putStringArrayListExtra("imageList", UserFormActivity.this.imagelist);
                intent.putExtra("position", i);
                UserFormActivity.this.startActivity(intent);
            }
        });
        ((FloatingActionButton) findViewById(R.id.fab)).setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.UserFormActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (UserFormActivity.this.imagelist.size() <= 4) {
                    UserFormActivity.this.captureImage(101);
                } else {
                    Toast.makeText(UserFormActivity.this.getApplication(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_maxImagesToast()), 1).show();
                }
            }
        });
        LocalBroadcastManager.getInstance(this).registerReceiver(this.message, new IntentFilter("send"));
    }

    @Override // com.conceptglobal.pmc.BaseActivity
    protected void displayNotification(String str, String str2) {
        Crouton.showText(this, "" + str2 + IOUtils.LINE_SEPARATOR_UNIX + str, Style.ALERT);
    }

    private void setEditableFalse(EditText editText) {
        editText.setFocusable(false);
        editText.setClickable(false);
        editText.setEnabled(false);
        editText.setBackgroundDrawable(getResources().getDrawable(R.drawable.edt_disable));
    }

    private void initialization() {
        this.intentGetData = getIntent();
        this.queries = Queries.getInstance();
        this.getDataFromDB = GetDataFromDB.getInstance();
        this.dynamicColumnnames = new StringBuilder();
        TabHost tabHost = (TabHost) findViewById(R.id.tabhost);
        this.tabHost = tabHost;
        this.tvFarmer = (TextView) tabHost.findViewById(R.id.tv_farmer_farmer_other_details);
        this.btnDealer = (Button) this.tabHost.findViewById(R.id.tv_dealer_farmer_other_details);
        this.btnDiscription = (Button) this.tabHost.findViewById(R.id.tv_discription_farmer_other_details);
        this.etDiscription = (EditText) this.tabHost.findViewById(R.id.et_discription_farmer_other_details);
        this.tvIsBayerFarmer = (TextView) this.tabHost.findViewById(R.id.tv_bayerfarmer_other_details);
        this.tvRetailers = (TextView) this.tabHost.findViewById(R.id.tv_retailers_farmer_other_details);
        this.btnSave = (Button) this.tabHost.findViewById(R.id.btn_save_farmer_other_details);
        this.btnInactive = (Button) this.tabHost.findViewById(R.id.btn_inactive_farmer_other_details);
        this.btnVisit = (Button) this.tabHost.findViewById(R.id.btn_visit_farmer_other_details);
        this.lvLastVisitData = (ListView) findViewById(R.id.lv_list_alert);
        this.btnLatLng = (ImageView) this.tabHost.findViewById(R.id.btn_get_latlong_farmer_personal_detailss);
        this.tvLatitude = (TextView) this.tabHost.findViewById(R.id.tv_latitude_personal_detailss);
        this.tvLongitude = (TextView) this.tabHost.findViewById(R.id.tv_longitude_personal_detailss);
        this.activityImage = (ImageView) this.tabHost.findViewById(R.id.imageViewPicture);
        this.gridView = (GridView) this.tabHost.findViewById(R.id.grid_view_farmer);
        this.imagelist = new ArrayList<>();
        this.farmerMaster = new FarmerMaster();
        this.mentryValues = new ArrayList();
    }

    private void settingTabs() {
        LocalActivityManager localActivityManager = new LocalActivityManager(this, false);
        localActivityManager.dispatchCreate(null);
        this.tabHost.setup(localActivityManager);
        addTab(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_lastVisitTabName()), R.drawable.ic_action_last_vist, getResources().getString(R.string.pmc_tag5));
        addTab(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_activityLastVisitText()), R.drawable.ic_activity_wight, getResources().getString(R.string.pmc_tag3));
        addTab(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_finishTabSelfAssignText()), R.drawable.ic_others_wight, getResources().getString(R.string.pmc_tag4));
        this.tabHost.setOnTabChangedListener(new TabHost.OnTabChangeListener() { // from class: com.conceptglobal.pmc.fo.UserFormActivity.3
            @Override // android.widget.TabHost.OnTabChangeListener
            public void onTabChanged(String str) {
                if (UserFormActivity.this.tabHost.getCurrentTab() != 1) {
                    return;
                }
                UserFormActivity.this.tabHost.setCurrentTab(2);
                if (UserFormActivity.this.segmentId != 1) {
                    if (UserFormActivity.this.segmentId == 2) {
                        Intent intent = new Intent(UserFormActivity.this, (Class<?>) AddRetailer.class);
                        intent.putExtra("SegmentId", UserFormActivity.this.segmentId);
                        intent.putExtra("farmerid", UserFormActivity.this.farmerID);
                        intent.putExtra("fromTransaction", 1);
                        intent.putExtra("farmerType", ConstantsPMC.TYPE_Retailer);
                        UserFormActivity.this.startActivity(intent);
                        return;
                    }
                    return;
                }
                Intent intent2 = new Intent(UserFormActivity.this, (Class<?>) AddFarmer.class);
                intent2.putExtra("SegmentId", UserFormActivity.this.segmentId);
                intent2.putExtra("farmerid", UserFormActivity.this.farmerID);
                intent2.putExtra("fromTransaction", 1);
                intent2.putExtra("farmerType", ConstantsPMC.TYPE_FARMER);
                UserFormActivity.this.startActivity(intent2);
            }
        });
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
            Intent intent = new Intent(this.context, (Class<?>) AttributesActivity.class);
            intent.putExtra(ConstantDeclarations.getInstance().getKEYFARMERID(), this.farmerID);
            intent.putExtra(ConstantDeclarations.getInstance().getKeyIsMba(), 0);
            intent.putExtra("SEGMENTID", this.segmentId);
            intent.putExtra("ISSELFASSIGN", 0);
            intent.putExtra("ACTIVITYNAME", this.activityName);
            intent.putExtra("AssignmentId", this.assignmentId);
            intent.putExtra("ActivityAssignmentId", this.activityAssignmentId);
            intent.putExtra(ConstantDeclarations.getInstance().getKEYACTIVITYID(), this.activityId);
            intent.putExtra(ConstantDeclarations.getInstance().getKEYISPLANNED(), 1);
            intent.addFlags(131072).addFlags(67108864);
            newTabSpec.setContent(intent);
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
        this.farmerID = this.intentGetData.getStringExtra(ConstantDeclarations.getInstance().getKEYFARMERID());
        int intExtra = this.intentGetData.getIntExtra(ConstantDeclarations.getInstance().getKEYVILLAGEID(), 0);
        this.activityId = this.intentGetData.getIntExtra(ConstantDeclarations.getInstance().getKEYACTIVITYID(), 0);
        this.assignmentId = this.intentGetData.getIntExtra("AssignmentId", 0);
        this.activityName = this.intentGetData.getStringExtra("ACTIVITYNAME");
        this.activityAssignmentId = this.intentGetData.getIntExtra("ActivityAssignmentId", 0);
        int intExtra2 = this.intentGetData.getIntExtra("SEGMENTID", 0);
        this.segmentId = intExtra2;
        if (intExtra2 == 1) {
            CustomActionBar.initActionBar(this, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_addFarmerDetailsText()));
        } else if (intExtra2 == 2) {
            CustomActionBar.initActionBar(this, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_retailerDetailsText()));
        }
        FarmerDetails farmerDetails = new FarmerDetails();
        this.farmerDetailsListFinal = farmerDetails;
        farmerDetails.setVillageID(intExtra);
        try {
            this.farmerMaster.setRespondentNo(this.farmerID);
        } catch (Exception e) {
            PLog.e(this.tag, e);
        }
    }

    private void setLayoutData() {
        this.tvFarmer.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_pmcFarmerInFFA()));
        this.btnDealer.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_prefDealerInFFA()));
        this.btnDiscription.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_visitDescInFFA()));
        this.etDiscription.setHint(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_addDescInFFA()));
        this.btnSave.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_closeInUFA()));
        this.btnInactive.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_deactivateInUFA()));
        this.btnVisit.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_visitCompleteButtonText()));
    }

    private void settingData() {
        Calendar calendar = Calendar.getInstance();
        this.mYear = calendar.get(1);
        this.mMonth = calendar.get(2);
        this.mDay = calendar.get(5);
        if (this.farmerDetailsListFinal.getFarmerName() != null && !this.farmerDetailsListFinal.getFarmerName().equalsIgnoreCase("null")) {
            try {
                this.etFarmerName.setText(this.farmerDetailsListFinal.getFarmerName());
            } catch (Exception e) {
                PLog.e(this.tag, e);
            }
        }
        this.etTotalLandHolding.setFilters(new InputFilter[]{new DecimalDigitsInputFilter(6, 2)});
        this.etDiscription.setFilters(new InputFilter[]{new InputFilter.LengthFilter(Integer.parseInt(getResources().getString(R.string.pmc_valid_hundreds)))});
        this.etLeasedin.setText(this.farmerDetailsListFinal.getLeasedIn() + ConstantDeclarations.getInstance().getEMPTY());
        this.etLeasedout.setText(this.farmerDetailsListFinal.getLeasedOut() + ConstantDeclarations.getInstance().getEMPTY());
        this.etOwned.setText(this.farmerDetailsListFinal.getAcreagesOwned() + ConstantDeclarations.getInstance().getEMPTY());
        this.etCultivated.setText(String.format("%.2f", Float.valueOf((this.etOwned.getText().toString().trim().length() > 0 ? Float.parseFloat(this.etOwned.getText().toString()) : 0.0f) + (this.etLeasedin.getText().toString().trim().length() > 0 ? Float.parseFloat(this.etLeasedin.getText().toString()) : 0.0f))));
        if (this.farmerDetailsListFinal.getVisitDescription() != null && !this.farmerDetailsListFinal.getVisitDescription().equalsIgnoreCase("null")) {
            this.etDiscription.setText(this.farmerDetailsListFinal.getVisitDescription());
        }
        if (this.farmerDetailsListFinal.getIsBayerFarmer() != null && !this.farmerDetailsListFinal.getIsBayerFarmer().equalsIgnoreCase("false")) {
            this.tvIsBayerFarmer.setText("Yes");
        } else {
            this.tvIsBayerFarmer.setText("No");
        }
        if (this.farmerDetailsListFinal.getRetailerName() != null && this.farmerDetailsListFinal.getRetailerName().length() > 0) {
            FarmerDetails farmerDetails = this.farmerDetailsListFinal;
            farmerDetails.setRetailerName(farmerDetails.getRetailerName().replace("()", ""));
            FarmerDetails farmerDetails2 = this.farmerDetailsListFinal;
            farmerDetails2.setRetailerName(farmerDetails2.getRetailerName().replace("(null)", ""));
        }
        if (this.farmerDetailsListFinal.getRetailerName() != null && this.farmerDetailsListFinal.getRetailerName().length() > 0) {
            this.tvRetailers.setText(this.farmerDetailsListFinal.getRetailerName());
        } else {
            this.tvRetailers.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectDealerInFFA()));
        }
        List<LastVisitModel> list = this.lastVisitData;
        if (list != null && list.size() > 0) {
            this.tabHost.findViewById(R.id.ll_list_alert).setVisibility(8);
            this.lvLastVisitData.setDividerHeight(1);
        } else {
            ((TextView) this.tabHost.findViewById(R.id.tv_list_alert)).setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_visitDetNotAvailText()));
            this.tabHost.findViewById(R.id.ll_list_alert).setVisibility(0);
        }
    }

    private void setListeners() {
        this.tvAddCrop.setOnClickListener(this);
        this.btnSave.setOnClickListener(this);
        this.btnInactive.setOnClickListener(this);
        this.btnVisit.setOnClickListener(this);
        this.tvRetailers.setOnClickListener(this);
        this.btnLatLng.setOnClickListener(this);
        this.activityImage.setOnClickListener(this);
        this.tabHost.setOnTabChangedListener(new TabHost.OnTabChangeListener() { // from class: com.conceptglobal.pmc.fo.UserFormActivity.4
            @Override // android.widget.TabHost.OnTabChangeListener
            public void onTabChanged(String str) {
                if (UserFormActivity.this.tabHost.getCurrentTab() != 1) {
                    return;
                }
                if (UserFormActivity.this.segmentId != 1) {
                    if (UserFormActivity.this.segmentId == 2) {
                        Intent intent = new Intent(UserFormActivity.this, (Class<?>) AddRetailer.class);
                        intent.putExtra("SegmentId", UserFormActivity.this.segmentId);
                        intent.putExtra("farmerid", UserFormActivity.this.farmerID);
                        intent.putExtra("fromTransaction", 1);
                        intent.putExtra("farmerType", ConstantsPMC.TYPE_Retailer);
                        UserFormActivity.this.startActivity(intent);
                    }
                } else {
                    Intent intent2 = new Intent(UserFormActivity.this, (Class<?>) AddFarmer.class);
                    intent2.putExtra("SegmentId", UserFormActivity.this.segmentId);
                    intent2.putExtra("farmerid", UserFormActivity.this.farmerID);
                    intent2.putExtra("fromTransaction", 1);
                    intent2.putExtra("farmerType", ConstantsPMC.TYPE_FARMER);
                    UserFormActivity.this.startActivity(intent2);
                }
                UserFormActivity.this.tabHost.setCurrentTab(2);
            }
        });
        this.etOwned.addTextChangedListener(new TextWatcher() { // from class: com.conceptglobal.pmc.fo.UserFormActivity.5
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                float f = 0.0f;
                float parseFloat = (UserFormActivity.this.etOwned.getText().toString().trim().equals(".") || UserFormActivity.this.etOwned.getText().toString().trim().length() <= 0) ? 0.0f : Float.parseFloat(UserFormActivity.this.etOwned.getText().toString());
                if (!UserFormActivity.this.etLeasedin.getText().toString().trim().equals(".") && UserFormActivity.this.etLeasedin.getText().toString().trim().length() > 0) {
                    f = Float.parseFloat(UserFormActivity.this.etLeasedin.getText().toString());
                }
                UserFormActivity.this.etCultivated.setText(String.format("%.2f", Float.valueOf(parseFloat + f)));
            }
        });
        this.etLeasedin.addTextChangedListener(new TextWatcher() { // from class: com.conceptglobal.pmc.fo.UserFormActivity.6
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                float f = 0.0f;
                float parseFloat = (UserFormActivity.this.etOwned.getText().toString().trim().equals(".") || UserFormActivity.this.etOwned.getText().toString().trim().length() <= 0) ? 0.0f : Float.parseFloat(UserFormActivity.this.etOwned.getText().toString());
                if (!UserFormActivity.this.etLeasedin.getText().toString().trim().equals(".") && UserFormActivity.this.etLeasedin.getText().toString().trim().length() > 0) {
                    f = Float.parseFloat(UserFormActivity.this.etLeasedin.getText().toString());
                }
                UserFormActivity.this.etCultivated.setText(String.format("%.2f", Float.valueOf(parseFloat + f)));
            }
        });
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        UtilDeclarations.hideInputKeyboard(this.context);
        switch (view.getId()) {
            case R.id.btn_get_latlong_farmer_personal_detailss /* 2131296417 */:
                fetchLocation();
                break;
            case R.id.btn_inactive_farmer_other_details /* 2131296421 */:
                showAlertCancel(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_isNoLongerLivingFarmerInUFA()), 3);
                break;
            case R.id.btn_save_farmer_other_details /* 2131296436 */:
                String trim = this.etFarmerMobile.getText().toString().trim();
                String trim2 = this.etFarmerLandmark.getText().toString().trim();
                if (trim.equalsIgnoreCase(this.farmerDetailsListFinal.getMobile().trim()) && trim2.equalsIgnoreCase(this.farmerDetailsListFinal.getLandMark().trim())) {
                    showAlertWithNewtral(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_doUWantToSaveChangesInUFA()), 2);
                    break;
                } else {
                    try {
                        SharedPreferences.Editor edit = getSharedPreferences("consent", 0).edit();
                        edit.putString("consent", "1");
                        edit.putString("farmerid", Integer.toString(this.farmerDetailsListFinal.getFarmerId()));
                        edit.commit();
                    } catch (Exception e) {
                        PLog.e(this.tag, e);
                    }
                    showAlertWithNewtral(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_doUWantToSaveChangesInUFA()), 2);
                    break;
                }
            case R.id.btn_visit_farmer_other_details /* 2131296452 */:
                try {
                    this.consentflag = this.getDataFromDB.getcount(this.queries.getConsentFlag(this.farmerID));
                } catch (Exception e2) {
                    PLog.e(this.tag, e2);
                }
                if (this.consentflag > 0) {
                    showAlertCancel(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_confirmVisitCompleteDialogText()), 4);
                    break;
                } else {
                    try {
                        SharedPreferences sharedPreferences = getSharedPreferences("consent", 0);
                        String string = sharedPreferences.getString("consent", null);
                        String string2 = sharedPreferences.getString("farmerid", null);
                        if (string != null && string.equalsIgnoreCase("1") && string.length() > 0 && string2 != null && string2.equalsIgnoreCase(Integer.toString(this.farmerDetailsListFinal.getFarmerId()))) {
                            this.replacestring = this.getDataFromDB.getStringValue(this.queries.getGetConsinment()).replace("[XXXX]", this.farmerDetailsListFinal.getFarmerName());
                            saveDataInLocalAgree("true", 1, "1");
                        } else {
                            this.replacestring = getResources().getString(R.string.pmc_label_confirm_visit_complete);
                            showAlertCancel(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_confirmVisitCompleteDialogText()), 4);
                        }
                        break;
                    } catch (Exception e3) {
                        PLog.e(this.tag, e3);
                        return;
                    }
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
    public void saveDataIntoDataBase(int i, String str) {
        try {
            InsertDataIntoDB.insertFarmerRecordSave(this.farmerDetailsListFinal);
            insertPictureData();
        } catch (Exception e) {
            PLog.e(this.tag, e);
        }
        if (i == 0) {
            showAlertCancel(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_saveNCloseDialogInUFA()), 0);
            return;
        }
        if (i == 1) {
            InsertDataIntoDB.insertAssignmentVisistDetails(this.assignmentId, this.farmerID, this.etDiscription.getText().toString(), this.tvLatitude.getText().toString(), this.tvLongitude.getText().toString(), this.activityAssignmentId, 0L, "", "", this.GPSTimeStamp, "", "");
            if (str.equalsIgnoreCase("1")) {
                InsertDataIntoDB.updatearmer(this.queries.getUpdateFlag(1, this.farmerID));
                if (UtilDeclarations.isOnline(this.context)) {
                    if (!UtilDeclarations.isServiceRunning(getApplicationContext(), SyncDataService.class)) {
                        new SendDataServiceUtil(this).startService();
                    }
                } else {
                    startActivity(new Intent(this.context, (Class<?>) ToDoActivity.class));
                }
                finish();
                return;
            }
            if (str.equalsIgnoreCase("0")) {
                InsertDataIntoDB.updatearmer(this.queries.getUpdateFlag(0, this.farmerID));
                if (UtilDeclarations.isOnline(this.context)) {
                    if (!UtilDeclarations.isServiceRunning(getApplicationContext(), SyncDataService.class)) {
                        new SendDataServiceUtil(this).startService();
                    }
                } else {
                    startActivity(new Intent(this.context, (Class<?>) ToDoActivity.class));
                }
                finish();
                return;
            }
            return;
        }
        if (i == 3) {
            finish();
            return;
        }
        if (i == 4) {
            try {
                InsertDataIntoDB.updatearmer(this.queries.updateIsactive(this.farmerDetailsListFinal.getFarmerId()));
            } catch (Exception e2) {
                e2.printStackTrace();
                PLog.e(TAG, e2);
            }
            if (UtilDeclarations.isOnline(this.context)) {
                if (!UtilDeclarations.isServiceRunning(getApplicationContext(), SyncDataService.class)) {
                    new SendDataServiceUtil(this).startService();
                }
            } else {
                startActivity(new Intent(this.context, (Class<?>) ToDoActivity.class));
            }
            finish();
            return;
        }
        if (i != 5) {
            return;
        }
        try {
            InsertDataIntoDB.updatearmer(this.queries.updateFieldOne(this.farmerDetailsListFinal.getFarmerId()));
            this.getDataFromDB.executeRawQueryInDB(this.queries.updateFarmerCropMapping(this.farmerID));
            InsertDataIntoDB.insertAssignmentVisistDetails(this.assignmentId, this.farmerID, this.etDiscription.getText().toString(), this.tvLatitude.getText().toString(), this.tvLongitude.getText().toString(), this.activityAssignmentId, 0L, "", "", this.GPSTimeStamp, "", "");
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        if (UtilDeclarations.isOnline(this.context)) {
            if (!UtilDeclarations.isServiceRunning(getApplicationContext(), SyncDataService.class)) {
                new SendDataServiceUtil(this).startService();
            }
        } else {
            startActivity(new Intent(this.context, (Class<?>) ToDoActivity.class));
        }
        finish();
        return;
        PLog.e(this.tag, e);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDataToObject(String str) {
        this.farmerDetailsListFinal.setIsVisited(str);
        this.farmerDetailsListFinal.setVisitDescription(this.etDiscription.getText().toString());
        this.farmerDetailsListFinal.setIsMBA(0);
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            finish();
            return true;
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
        if (intent.getStringExtra(ConstantDeclarations.getInstance().getKEYRETAILERNAME()) != null && intent.getStringExtra(ConstantDeclarations.getInstance().getKEYRETAILERNAME()).length() > 0) {
            this.farmerDetailsListFinal.setRetailerName(intent.getStringExtra(ConstantDeclarations.getInstance().getKEYRETAILERNAME()).replace("()", ConstantDeclarations.getInstance().getEMPTY()));
            this.farmerDetailsListFinal.setRetailerName(intent.getStringExtra(ConstantDeclarations.getInstance().getKEYRETAILERNAME()).replace("(null)", ConstantDeclarations.getInstance().getEMPTY()));
            this.tvRetailers.setText(this.farmerDetailsListFinal.getRetailerName());
        }
        if (intent.getStringExtra(ConstantDeclarations.getInstance().getKEYRETAILERID()) != null) {
            this.farmerDetailsListFinal.setRetailerId(intent.getStringExtra(ConstantDeclarations.getInstance().getKEYRETAILERID()));
        }
    }

    private void showAlertWithNewtral(String str, int i) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.context);
        builder.setMessage(str).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_saveText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.UserFormActivity.9
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                dialogInterface.dismiss();
                UserFormActivity.this.setDataToObject("false");
                UserFormActivity.this.saveDataIntoDataBase(3, "");
            }
        }).setNeutralButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_dontSave()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.UserFormActivity.8
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                UserFormActivity.this.finish();
            }
        }).setNegativeButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_cancelDialogButtonText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.UserFormActivity.7
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                dialogInterface.dismiss();
            }
        });
        AlertDialog show = builder.show();
        if (UtilDeclarations.isTablet(this)) {
            UtilDeclarations.makeTabletDialogTextlarge(show);
        }
    }

    private void showAlertCancel(String str, final int i) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.context);
        builder.setMessage(str).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.UserFormActivity.11
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                dialogInterface.dismiss();
                int i3 = i;
                if (i3 == 0) {
                    UserFormActivity.this.finish();
                    return;
                }
                if (i3 == 2) {
                    UserFormActivity.this.saveDataInLocal("true", 1);
                    return;
                }
                if (i3 == 3) {
                    UserFormActivity.this.setDataToObject("true");
                    UserFormActivity.this.saveDataIntoDataBase(4, "");
                } else {
                    if (i3 != 4) {
                        return;
                    }
                    UserFormActivity.this.setDataToObject("true");
                    UserFormActivity.this.saveDataInLocal("true", 5);
                }
            }
        }).setNegativeButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_cancelDialogButtonText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.UserFormActivity.10
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
            }
        });
        AlertDialog show = builder.show();
        if (UtilDeclarations.isTablet(this)) {
            UtilDeclarations.makeTabletDialogTextlarge(show);
        }
    }

    private void showAlertWithAgreeDisagree(String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.context);
        builder.setMessage(str).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_agreeVisitCompleteDialogButton()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.UserFormActivity.14
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
                UserFormActivity.this.saveDataInLocalAgree("true", 1, "1");
            }
        }).setNeutralButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_disAgree()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.UserFormActivity.13
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                UserFormActivity.this.saveDataInLocalAgree("true", 1, "0");
            }
        }).setNegativeButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_cancelDialogButtonText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.UserFormActivity.12
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
    public void saveDataInLocal(final String str, final int i) {
        boolean z = true;
        try {
            this.listActivities = this.getDataFromDB.getPMCActivities(this.queries.getPMCAssignedActivitiesQuery(this.farmerID));
            for (int i2 = 0; i2 < this.listActivities.size(); i2++) {
                if (this.listActivities.get(i2).getIsDone() == 0) {
                    z = false;
                }
            }
        } catch (Exception e) {
            PLog.e(this.tag, e);
        }
        if (!z) {
            AlertDialog.Builder builder = new AlertDialog.Builder(this.context);
            builder.setMessage(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_pendActivities())).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.UserFormActivity.16
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i3) {
                    dialogInterface.dismiss();
                    UserFormActivity.this.setDataToObject(str);
                    UserFormActivity.this.saveDataIntoDataBase(i, "");
                }
            }).setNegativeButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_cancelDialogButtonText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.UserFormActivity.15
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i3) {
                    dialogInterface.dismiss();
                }
            });
            AlertDialog show = builder.show();
            if (UtilDeclarations.isTablet(this)) {
                UtilDeclarations.makeTabletDialogTextlarge(show);
                return;
            }
            return;
        }
        setDataToObject(str);
        saveDataIntoDataBase(i, "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveDataInLocalAgree(final String str, final int i, final String str2) {
        boolean z = true;
        try {
            this.listActivities = this.getDataFromDB.getPMCActivities(this.queries.getPMCAssignedActivitiesQuery(this.farmerID));
            for (int i2 = 0; i2 < this.listActivities.size(); i2++) {
                if (this.listActivities.get(i2).getIsDone() == 0) {
                    z = false;
                }
            }
        } catch (Exception e) {
            PLog.e(this.tag, e);
        }
        if (!z) {
            AlertDialog.Builder builder = new AlertDialog.Builder(this.context);
            builder.setMessage(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_pendActivities())).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.UserFormActivity.18
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i3) {
                    dialogInterface.dismiss();
                    UserFormActivity.this.setDataToObject(str);
                    UserFormActivity.this.saveDataIntoDataBase(i, str2);
                }
            }).setNegativeButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_cancelDialogButtonText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.UserFormActivity.17
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i3) {
                    dialogInterface.dismiss();
                }
            });
            AlertDialog show = builder.show();
            if (UtilDeclarations.isTablet(this)) {
                UtilDeclarations.makeTabletDialogTextlarge(show);
                return;
            }
            return;
        }
        setDataToObject(str);
        saveDataIntoDataBase(i, str2);
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
            this.tabHost.setCurrentTab(4);
        }
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
    public void captureImage(int i) {
        File compressLoaction = new CompressHelper().getCompressLoaction(this);
        this.imageFile = new File(compressLoaction + File.separator + "Todao" + UtilDeclarations.getImageFiledate() + this.farmerID + ".JPEG");
        StringBuilder sb = new StringBuilder();
        sb.append(compressLoaction);
        sb.append(File.separator);
        sb.append("Todo");
        sb.append(this.farmerID);
        sb.append(".ZIP");
        this.zipFilePath = new File(sb.toString());
        this.imagePath = this.imageFile.getAbsolutePath();
        Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
        Uri uriForFile = FileProvider.getUriForFile(this, "com.conceptglobal.pmcdeepakfertilizers.provider", this.imageFile);
        intent.putExtra("output", uriForFile);
        if (Build.VERSION.SDK_INT <= 21) {
            intent.setClipData(ClipData.newRawUri("", uriForFile));
            intent.addFlags(3);
        }
        intent.putExtra("output", uriForFile);
        startActivityForResult(intent, i);
    }

    private void insertPictureData() {
        PictureReportingData pictureReportingData = new PictureReportingData();
        long j = 0;
        int i = 0;
        for (int i2 = 0; i2 < this.imagelist.size(); i2++) {
            try {
                if (this.getDataFromDB.getcount(Queries.getInstance().getPictureIdCount(this.farmerID)) != 0) {
                    i = this.getDataFromDB.getPictureId(Queries.getInstance().getPictureId(this.farmerID));
                }
                if (i != 0) {
                    pictureReportingData.setImageId(i);
                } else {
                    pictureReportingData.setImageId(this.getDataFromDB.getMaxId("ActivityImageDetails", "ImageId") + 1);
                }
                j = GetDataFromDB.getInstance().getLookupValue(Queries.getInstance().getItemValue("ToDo"));
            } catch (Exception e) {
                e.printStackTrace();
            }
            pictureReportingData.setActivityId("" + this.activityAssignmentId);
            pictureReportingData.setPicturePath(this.imagelist.get(i2).toString());
            pictureReportingData.setPdaCreatedDate(UtilDeclarations.getDateTime());
            pictureReportingData.setServerStatus("false");
            pictureReportingData.setPDAID(ConstantsPMC.getInstance().getDeviceID());
            pictureReportingData.setCreatedBy(ConstantsPMC.getInstance().getDeviceID());
            pictureReportingData.setCreatedDate(UtilDeclarations.getDateTime());
            pictureReportingData.setUpdatedBy(ConstantsPMC.getInstance().getDeviceID());
            pictureReportingData.setUpdatedDate(UtilDeclarations.getDateTime());
            pictureReportingData.setReferenceType(j + "");
            pictureReportingData.setReferenceID(this.farmerID);
            try {
                InsertDataIntoDB.insertPictureDetails(pictureReportingData, this.context);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    private void setAdapter() {
        GridImageAdapter gridImageAdapter = this.imageAdapter;
        if (gridImageAdapter == null) {
            GridImageAdapter gridImageAdapter2 = new GridImageAdapter(this, null, this.imagelist);
            this.imageAdapter = gridImageAdapter2;
            this.gridView.setAdapter((ListAdapter) gridImageAdapter2);
            return;
        }
        gridImageAdapter.notifyDataSetChanged();
    }

    @Override // com.conceptglobal.pmc.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        if (this.imagelist == null || !this.isImageDeleted) {
            return;
        }
        this.isImageDeleted = false;
        setAdapter();
    }

    @Override // com.conceptglobal.pmc.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        LocalBroadcastManager.getInstance(this).unregisterReceiver(this.message);
        super.onDestroy();
    }

    private void fetchLocation() {
        if (!this.mLocationUtils.checkPermissions(this)) {
            this.mLocationUtils.requestPermissions(this);
            return;
        }
        try {
            new FetchLocation(this, true, new OnLocationFoundListener() { // from class: com.conceptglobal.pmc.fo.UserFormActivity.21
                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onTimerTimeOut() {
                }

                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onLocationFound(LocationInfo locationInfo) {
                    UserFormActivity.this.tvLatitude.setText(locationInfo.getLatitude() + "");
                    UserFormActivity.this.tvLongitude.setText(locationInfo.getLongitude() + "");
                }

                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onLocationFound(Location location) {
                    UserFormActivity.this.GPSTimeStamp = UtilDeclarations.getLongToDate(location.getTime());
                }
            }, TAG);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

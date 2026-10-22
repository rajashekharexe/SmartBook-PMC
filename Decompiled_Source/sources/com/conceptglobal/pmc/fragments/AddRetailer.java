package com.conceptglobal.pmc.fragments;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.DatePickerDialog;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.IntentSender;
import android.content.res.Resources;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDoneException;
import android.graphics.drawable.ColorDrawable;
import android.location.Location;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.Editable;
import android.text.Html;
import android.text.InputFilter;
import android.text.Spanned;
import android.text.TextWatcher;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
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
import android.widget.RelativeLayout;
import android.widget.TabHost;
import android.widget.TabWidget;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import androidx.recyclerview.widget.DividerItemDecoration;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.conceptglobal.imaterialdesign.widget.FloatingActionButton;
import com.conceptglobal.pmc.BaseActivity;
import com.conceptglobal.pmc.adapter.CompanyDisplayAdapter;
import com.conceptglobal.pmc.adapter.DealerCropDisplayAdapter;
import com.conceptglobal.pmc.adapter.DealerLandsListAdapter;
import com.conceptglobal.pmc.adapter.GridImageAdapter;
import com.conceptglobal.pmc.asynctask.WebService;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.common.CustomCheckBoxDialog;
import com.conceptglobal.pmc.common.ListPopupOne;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.DataBaseHandler;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.database.InsertDataIntoDB;
import com.conceptglobal.pmc.fo.ListSelectionActivity;
import com.conceptglobal.pmc.fo.PictureReporting;
import com.conceptglobal.pmc.fo.SAAttributeActivityCopy;
import com.conceptglobal.pmc.interfaces.OnCropItemClickListener;
import com.conceptglobal.pmc.interfaces.OnItemClickListener;
import com.conceptglobal.pmc.interfaces.OnLocationFoundListener;
import com.conceptglobal.pmc.interfaces.OnVerifyOTPListener;
import com.conceptglobal.pmc.locationprovider.FetchLocation;
import com.conceptglobal.pmc.model.BrandsModel;
import com.conceptglobal.pmc.model.DealerCompanyMapping;
import com.conceptglobal.pmc.model.DealerCropMapping;
import com.conceptglobal.pmc.model.DealerLandDetails;
import com.conceptglobal.pmc.model.DealerMaster;
import com.conceptglobal.pmc.model.DynamicFields;
import com.conceptglobal.pmc.model.ImageDetails;
import com.conceptglobal.pmc.model.LocationInfo;
import com.conceptglobal.pmc.model.MultiSelectData;
import com.conceptglobal.pmc.model.RetailerMultiAttributeDetails;
import com.conceptglobal.pmc.model.SampleModel;
import com.conceptglobal.pmc.model.TerritotyDealerMaster;
import com.conceptglobal.pmc.model.otp.GetOTP;
import com.conceptglobal.pmc.model.otp.GetOTPResponse;
import com.conceptglobal.pmc.registration.DraftList;
import com.conceptglobal.pmc.service.SyncDataService;
import com.conceptglobal.pmc.utils.CompressHelper;
import com.conceptglobal.pmc.utils.ConstantDeclarations;
import com.conceptglobal.pmc.utils.CustomActionBar;
import com.conceptglobal.pmc.utils.DataAttributes;
import com.conceptglobal.pmc.utils.Encryption;
import com.conceptglobal.pmc.utils.LabelUtils;
import com.conceptglobal.pmc.utils.ListviewFillToParent;
import com.conceptglobal.pmc.utils.LocationUtils;
import com.conceptglobal.pmc.utils.OTPVerificationDialog;
import com.conceptglobal.pmc.utils.PLog;
import com.conceptglobal.pmc.utils.SendDataServiceUtil;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import com.conceptglobal.pmcdeepakfertilizers.R;
import com.google.android.material.textfield.TextInputLayout;
import com.google.gson.Gson;
import com.google.zxing.integration.android.IntentIntegrator;
import de.keyboardsurfer.android.widget.crouton.Crouton;
import de.keyboardsurfer.android.widget.crouton.Style;
import io.fabric.sdk.android.services.common.AbstractSpiCall;
import io.fabric.sdk.android.services.settings.AppSettingsData;
import java.io.File;
import java.io.IOException;
import java.io.StringReader;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;
import org.apache.commons.io.IOUtils;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* loaded from: classes.dex */
public class AddRetailer extends BaseActivity implements View.OnClickListener, View.OnTouchListener, OnCropItemClickListener, OnVerifyOTPListener, OnItemClickListener {
    private static final int DATEDIALOGID1 = 0;
    private static final int DATEDIALOGID2 = 2;
    private static final int DATEDIALOGID3 = 3;
    private static final int DATEDIALOGID4 = 4;
    private static final int DATEDIALOGID5 = 5;
    private static final int DATEDIALOGID_YEARLESS = 1;
    private static final int GETNEWACTIVITY = 2;
    private static final int GET_CAM_IMG = 101;
    private static final int INITIALCOMPANYID = -1;
    private static final int INITIALCROPID = -1;
    private static final int MY_CAMERA_REQUEST_CODE = 100;
    private static final String TAG = "AddRetailer";
    public static List<Integer> deletedCompanyIds;
    public static List<Integer> deletedCropIds;
    public static List<Integer> deletedPlotIds;
    private static String farmerType;
    private static String isFraom;
    private String GPSTImeStamp;
    private String aadharRawData;
    private CompanyDisplayAdapter adapterCompany;
    private DealerCropDisplayAdapter adapterCrop;
    String bindQuery;
    private Button btnDraft;
    private ImageView btnLatLng;
    private Button btnRemarks;
    private Button btnRetailerSearch;
    private Button btnSave;
    private Button btnSaveLand;
    private Button btnScanAdhar;
    private MenuItem btn_Draft;
    private String columnName;
    private String companyOrCropTab;
    private Context context;
    View.OnClickListener datesListener;
    View.OnClickListener datesListenerYearless;
    private DealerMaster dealerMaster;
    private AlertDialog dialog;
    private TextView dialogMsgTxtview;
    private final TextWatcher districtChanged;
    private List<DealerMaster> draftStaticData;
    StringBuilder dynamicColumnnames;
    private EditText edtDistrict;
    private EditText edtMandal;
    private EditText edtState;
    private EditText edtVillage;
    private EditText etCompanyHybridSale1;
    private EditText etCompanyHybridSale1Value;
    private EditText etCompanyHybridSale2;
    private EditText etCompanyHybridSale2Value;
    private EditText etCompanyName;
    private EditText etCompanySale1;
    private EditText etCompanySale1Value;
    private EditText etCompanySales;
    private EditText etCompetitonCompany1;
    private EditText etCompetitonCompany2;
    private EditText etCompetitonHybridSale1;
    private EditText etCompetitonHybridSale1Value;
    private EditText etCompetitonHybridSale2;
    private EditText etCompetitonHybridSale2Value;
    private EditText etCropDos;
    private EditText etCropName;
    private EditText etCropSales;
    private EditText etOnOrOFfField;
    private EditText etPlotAcreages;
    private EditText etPlotAddress;
    private EditText etPlotName;
    private EditText etRemarks;
    private EditText ethybrid;
    private String farmerID;
    private String farmerUpdate;
    private String[][] geoDetailsConditions;
    private GetDataFromDB getDataFromDB;
    private GridView gridView;
    private String gstNumber;
    private GridImageAdapter imageAdapter;
    private String imagePath;
    private ArrayList<String> imagelist;
    private List<ImageDetails> images;
    private ImageView imgretailermain;
    public boolean isFromFeedBack;
    public boolean isFromSelfAssignment;
    public boolean isFromSurvey;
    public boolean isFromTestimonal;
    private int isFromTransaction;
    private boolean isImageDeleted;
    public boolean isLocationUpdate;
    long isNotRequiredFAB;
    private long isRetalerAFarmer;
    final int isextrasales;
    private ImageView ivGetLandLatLog;
    private List<DealerCompanyMapping> listDealerCompanies;
    private List<DealerCropMapping> listDealerCrops;
    private List<DealerLandDetails> listFarmerPlots;
    private int locationUpdateStatus;
    private ListView lvCompanies;
    private ListView lvCrops;
    private LinearLayout mAddDynamicLinear;
    private LinearLayout mAddDynamicLinearForOthers;
    private LinearLayout mAddGeoDetailsInOthers;
    private LinearLayout mAddGeoDetailsInPersonal;
    private DatePickerDialog.OnDateSetListener mDateSetListener;
    private DatePickerDialog.OnDateSetListener mDateSetListener_Yearless;
    private int mDay;
    private ArrayList<EditText> mEntryArr;
    private ArrayList<EditText> mEntryArrIds;
    private ArrayList<TextView> mEntrySpinnerArr;
    private ListPopupOne mListPopupOne;
    LocationUtils mLocationUtils;
    private int mMonth;
    private String mNewMobile;
    private String mOTP;
    private String mOldMobile;
    private ArrayList<TextView> mOprDatesArr;
    private int mYear;
    private final TextWatcher mandalChanged;
    int masterTablecount;
    private ArrayList<TextView> mattributesnamesArr;
    private List<String> mentryValues;
    private BroadcastReceiver message;
    private String mobile;
    private List<Integer> modifiedListOfFarmerPlots;
    View.OnClickListener operationListener;
    View.OnClickListener operationListenerMultiSelect;
    int pdaId;
    private DealerLandsListAdapter plotsAdapter;
    private int retailerCount;
    private long retailerMobileNumberColumnID;
    private ArrayList<RetailerMultiAttributeDetails> retailerMultiAttributeDetails;
    private RecyclerView rvPlots;
    private int segmentID;
    private final TextWatcher stateChanged;
    private int status;
    private int statusFieldVal;
    private LinearLayout tab1;
    private LinearLayout tab2;
    private RelativeLayout tab3;
    private TabHost tabHost;
    private String tableName;
    private TextInputLayout tilCompanyHybridSale1;
    private TextInputLayout tilCompanyHybridSale1Value;
    private TextInputLayout tilCompanyHybridSale2;
    private TextInputLayout tilCompanyHybridSale2Value;
    private TextInputLayout tilCompanyName;
    private TextInputLayout tilCompanySale1Value;
    private TextInputLayout tilCompetitonCompany1;
    private TextInputLayout tilCompetitonCompany2;
    private TextInputLayout tilCompetitonHybridSale1;
    private TextInputLayout tilCompetitonHybridSale1Value;
    private TextInputLayout tilCompetitonHybridSale2;
    private TextInputLayout tilCompetitonHybridSale2Value;
    private TextInputLayout tilCropSales;
    private TextView tvAddCompany;
    private TextView tvAddland;
    private TextView tvAllSalesvalues;
    private TextView tvCompanyHybridSale1;
    private TextView tvCompanyHybridSale2;
    private TextView tvCompanySale1;
    private TextView tvCompanyid;
    private TextView tvCompetitonCompany1;
    private TextView tvCompetitonCompany2;
    private TextView tvCompetitonHybridSale1;
    private TextView tvCompetitonHybridSale2;
    private TextView tvCropId;
    private TextView tvLatitude;
    private TextView tvLongitude;
    private TextView tvOnOrOffFieldID;
    private TextView tvPlotLatitude;
    private TextView tvPlotLongitude;
    private TextView tvdistrictid;
    private TextView tvmandalid;
    private TextView tvstateid;
    private TextView tvvillageid;
    private int typeOfCustomer;
    private String updateDOS;
    private String validationFailedMsg;
    private static DataBaseHandler dbInstance = DataBaseHandler.getInstance();
    public static List mandalIds = new ArrayList();
    public static List villageIds = new ArrayList();
    private String tag = TAG;
    private HashMap<String, String> hAttributes = null;
    private ArrayList<DynamicFields> attributesArry = null;
    private ArrayList<DynamicFields> attributesArryForOthers = null;
    private int datePos = 0;
    private long defaultMinDate = -1;
    private long defaultMaxDate = -1;
    private String mFiledStr = "";
    private int mForOperations = -1;
    private int mForDates = -1;
    private int layoutId = 0;
    private HashMap<Integer, Integer> dialodIdsMap = new HashMap<>();
    int _clickId = 0;
    public List<BrandsModel> brandsList = null;
    private String contactID = null;
    private boolean mIsMobileNumberChanged = false;
    private String plotLatlongs = "";
    String[] attribName = {GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_stateText()), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_districtText()), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_mandalsText()), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_villageText())};
    ArrayList<TextView> geoDetailsTV = new ArrayList<>();
    ArrayList<EditText> geoDetailsET = new ArrayList<>();
    private int isFromSelfassgin = 0;

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
    }

    @Override // com.conceptglobal.pmc.interfaces.OnCropItemClickListener
    public void onCropListItemClick(int i) {
    }

    public AddRetailer() {
        GetDataFromDB.getInstance();
        this.isextrasales = GetDataFromDB.getLatLondMandatory(Queries.getInstance().getItemValue("isExtraSalesinDCM"));
        this.isNotRequiredFAB = 0L;
        this.aadharRawData = "";
        this.GPSTImeStamp = "";
        this.validationFailedMsg = "";
        this.farmerUpdate = "";
        this.stateChanged = new TextWatcher() { // from class: com.conceptglobal.pmc.fragments.AddRetailer.4
            private String beforeState;

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                this.beforeState = charSequence.toString();
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (this.beforeState.equalsIgnoreCase(editable.toString())) {
                    return;
                }
                AddRetailer.this.tvdistrictid.setText("");
                AddRetailer.this.edtDistrict.setText("");
                AddRetailer.this.tvmandalid.setText("");
                AddRetailer.this.edtMandal.setText("");
                AddRetailer.this.tvvillageid.setText("");
                AddRetailer.this.edtVillage.setText("");
            }
        };
        this.districtChanged = new TextWatcher() { // from class: com.conceptglobal.pmc.fragments.AddRetailer.5
            String beforeDistrict;

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                this.beforeDistrict = charSequence.toString();
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (this.beforeDistrict.equalsIgnoreCase(editable.toString())) {
                    return;
                }
                AddRetailer.this.tvmandalid.setText("");
                AddRetailer.this.edtMandal.setText("");
                AddRetailer.this.tvvillageid.setText("");
                AddRetailer.this.edtVillage.setText("");
            }
        };
        this.mandalChanged = new TextWatcher() { // from class: com.conceptglobal.pmc.fragments.AddRetailer.6
            private String beforeMandal;

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                this.beforeMandal = charSequence.toString();
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (this.beforeMandal.equalsIgnoreCase(editable.toString())) {
                    return;
                }
                AddRetailer.this.tvvillageid.setText("");
                AddRetailer.this.edtVillage.setText("");
            }
        };
        this.operationListenerMultiSelect = new View.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.AddRetailer.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (view instanceof EditText) {
                    ((EditText) view).setError(null);
                }
                int intValue = ((Integer) view.getTag()).intValue();
                view.getId();
                AddRetailer.this.brandsList = new ArrayList();
                DynamicFields dynamicFields = (DynamicFields) AddRetailer.this.attributesArry.get(intValue);
                try {
                    if (dynamicFields.getDbquery() != null && !dynamicFields.getDbquery().equals("")) {
                        AddRetailer.this.brandsList = GetDataFromDB.getInstance().getFarmerAssociatedBrands(dynamicFields.getDbquery());
                        if (AddRetailer.this.brandsList != null && AddRetailer.this.brandsList.size() != 0) {
                            AddRetailer addRetailer = AddRetailer.this;
                            CustomCheckBoxDialog customCheckBoxDialog = new CustomCheckBoxDialog(addRetailer, addRetailer.brandsList, 0, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectText()) + " " + ((DynamicFields) AddRetailer.this.attributesArry.get(intValue)).getDisplayName(), view, (TextView) AddRetailer.this.mEntryArrIds.get(intValue), ((DynamicFields) AddRetailer.this.attributesArry.get(intValue)).getMaxLength(), 0, 0);
                            customCheckBoxDialog.getWindow().getAttributes().windowAnimations = R.style.PauseDialogAnimation;
                            customCheckBoxDialog.show();
                            customCheckBoxDialog.getWindow().setSoftInputMode(3);
                        }
                        Toast.makeText(AddRetailer.this.context, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_noDataFound()), 0).show();
                    }
                } catch (Exception e) {
                    PLog.e(AddRetailer.TAG, e);
                    e.printStackTrace();
                }
            }
        };
        this.operationListener = new View.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.AddRetailer.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (view instanceof EditText) {
                    ((EditText) view).setError(null);
                }
                AddRetailer.this._clickId = view.getId();
                String dbquery = ((DynamicFields) AddRetailer.this.attributesArry.get(view.getId())).getDbquery();
                if (dbquery.equals("")) {
                    dbquery = "select VillageId, VillageName  from VillageMaster ";
                }
                AddRetailer addRetailer = AddRetailer.this;
                ListPopupOne listPopupOne = new ListPopupOne(addRetailer, addRetailer.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_selectOneDropDownTitle()), dbquery, view, (TextView) AddRetailer.this.mEntryArrIds.get(view.getId()));
                listPopupOne.getWindow().getAttributes().windowAnimations = R.style.PauseDialogAnimation;
                listPopupOne.show();
                listPopupOne.getWindow().setSoftInputMode(3);
            }
        };
        this.datesListener = new View.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.AddRetailer.15
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AddRetailer.this.datePos = view.getId();
                Integer num = (Integer) view.getTag(R.string.VISIBILITY_ID);
                num.intValue();
                if (AddRetailer.this.dialodIdsMap.containsKey(num)) {
                    AddRetailer addRetailer = AddRetailer.this;
                    addRetailer.showDialog(((Integer) addRetailer.dialodIdsMap.get(num)).intValue());
                } else {
                    AddRetailer.this.showDialog(5);
                }
            }
        };
        this.datesListenerYearless = new View.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.AddRetailer.16
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AddRetailer.this.datePos = view.getId();
                AddRetailer.this.showDialog(1);
            }
        };
        this.mDateSetListener = new DatePickerDialog.OnDateSetListener() { // from class: com.conceptglobal.pmc.fragments.AddRetailer.18
            @Override // android.app.DatePickerDialog.OnDateSetListener
            public void onDateSet(DatePicker datePicker, int i, int i2, int i3) {
                AddRetailer.this.mYear = i;
                AddRetailer.this.mMonth = i2;
                AddRetailer.this.mDay = i3;
                try {
                    new SimpleDateFormat("yyyy-MM-dd").parse(i + "-" + (i2 + 1) + "-" + i3);
                    new Date();
                    AddRetailer.this.updateDisplay();
                } catch (Exception e) {
                    PLog.e(AddRetailer.this.tag, e);
                }
            }
        };
        this.mDateSetListener_Yearless = new DatePickerDialog.OnDateSetListener() { // from class: com.conceptglobal.pmc.fragments.AddRetailer.19
            @Override // android.app.DatePickerDialog.OnDateSetListener
            public void onDateSet(DatePicker datePicker, int i, int i2, int i3) {
                AddRetailer.this.mYear = i;
                AddRetailer.this.mMonth = i2;
                AddRetailer.this.mDay = i3;
                try {
                    AddRetailer.this.updateDisplay_yearless();
                } catch (Exception e) {
                    PLog.e(AddRetailer.this.tag, e);
                }
            }
        };
        this.message = new BroadcastReceiver() { // from class: com.conceptglobal.pmc.fragments.AddRetailer.26
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                String stringExtra = intent.getStringExtra("deletedImage");
                AddRetailer.this.imagelist.remove(stringExtra);
                AddRetailer.this.isImageDeleted = true;
                try {
                    File file = new File(stringExtra);
                    if (file.exists()) {
                        file.delete();
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                    PLog.e(AddRetailer.this.tag, e);
                }
            }
        };
    }

    @Override // com.conceptglobal.pmc.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        farmerType = intent.getStringExtra("farmerType");
        isFraom = intent.getStringExtra("isFraom");
        setContentView(R.layout.addretailer_tab);
        this.context = this;
        ConstantsPMC.getInstance().getLanguageConfigurations(this.context);
        this.getDataFromDB = GetDataFromDB.getInstance();
        this.mLocationUtils = new LocationUtils();
        PLog.location("Navigation", "onCreate()", TAG, UtilDeclarations.getDateTime());
        if (intent.hasExtra("farmerUpdate")) {
            this.farmerUpdate = intent.getStringExtra("farmerUpdate");
        }
        if (intent.hasExtra("FromSelfAssignment")) {
            this.isFromSelfAssignment = intent.getExtras().getBoolean("FromSelfAssignment");
        }
        if (intent.hasExtra("isFromTestimonal")) {
            this.isFromTestimonal = intent.getExtras().getBoolean("isFromTestimonal");
        }
        if (intent.hasExtra("isFromFeedBack")) {
            this.isFromFeedBack = intent.getExtras().getBoolean("isFromFeedBack");
        }
        if (intent.hasExtra("isFromSurvey")) {
            this.isFromSurvey = intent.getExtras().getBoolean("isFromSurvey");
        }
        if (intent.hasExtra("isLocationUpdate")) {
            this.isLocationUpdate = intent.getExtras().getBoolean("isLocationUpdate");
        }
        if (farmerType.equalsIgnoreCase(ConstantsPMC.TYPE_Retailer)) {
            if (ConstantsPMC.getInstance().getIsTrainingORLive() != 2) {
                if (GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_retailerDetailsText()) == null) {
                    CustomActionBar.initActionBar(this, "Add Retailer(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
                } else {
                    CustomActionBar.initActionBar(this, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_retailerDetailsText()) + "(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
                }
            } else if (GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_retailerDetailsText()) == null) {
                CustomActionBar.initActionBar(this, "Add Retailer(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
            } else {
                CustomActionBar.initActionBar(this, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_retailerDetailsText()) + "(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
            }
            this.geoDetailsConditions = this.getDataFromDB.getGeoDetailsConditions(Queries.getInstance().getGeoDetailsCondition("DealerMaster", "RetailerGeoDetails"));
            this.typeOfCustomer = 2;
        } else if (farmerType.equalsIgnoreCase(ConstantsPMC.TYPE_Distributor) || farmerType.equalsIgnoreCase("Dealer")) {
            if (ConstantsPMC.getInstance().getIsTrainingORLive() != 2) {
                if (GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_addDistributorText()) == null) {
                    CustomActionBar.initActionBar(this, "Add Distributor(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
                } else {
                    CustomActionBar.initActionBar(this, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_addDistributorText()) + "(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
                }
            } else if (GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_addDistributorText()) == null) {
                CustomActionBar.initActionBar(this, "Add Distributor(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
            } else {
                CustomActionBar.initActionBar(this, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_addDistributorText()) + "(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
            }
            this.geoDetailsConditions = this.getDataFromDB.getGeoDetailsConditions(Queries.getInstance().getGeoDetailsCondition("DealerMaster", "RetailerGeoDetails"));
            this.typeOfCustomer = 3;
        }
        initialization();
        setBottomViewPadding();
        settingTabs();
        gettingData();
        enableGeoDetailsLayout();
        createOperationAttributes();
        bindOperations();
        this.tabHost.setOnTabChangedListener(new TabHost.OnTabChangeListener() { // from class: com.conceptglobal.pmc.fragments.AddRetailer.1
            @Override // android.widget.TabHost.OnTabChangeListener
            public void onTabChanged(String str) {
                UtilDeclarations.hideInputKeyboard(AddRetailer.this.context);
                if (AddRetailer.this.getWindow().getCurrentFocus() != null && AddRetailer.this.getWindow().getCurrentFocus().hasFocus()) {
                    AddRetailer.this.getWindow().getCurrentFocus().clearFocus();
                }
                if (AddRetailer.this.tabHost.getCurrentTab() != 1) {
                    return;
                }
                AddRetailer.this.setPlotsAdapter();
            }
        });
        this.gridView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.conceptglobal.pmc.fragments.AddRetailer.2
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                AddRetailer addRetailer = AddRetailer.this;
                addRetailer.captureImage(((ImageDetails) addRetailer.images.get(i)).getImageId());
            }
        });
        ((FloatingActionButton) findViewById(R.id.fab)).setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.AddRetailer.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (AddRetailer.this.images.size() <= 4) {
                    AddRetailer.this.captureImage(0L);
                } else {
                    Toast.makeText(AddRetailer.this.getApplication(), AddRetailer.this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_maxImagesToast()), 1).show();
                }
            }
        });
        LocalBroadcastManager.getInstance(this).registerReceiver(this.message, new IntentFilter("send"));
        if (farmerType.equalsIgnoreCase(ConstantsPMC.TYPE_Retailer)) {
            validateMobileNumber();
            try {
                this.statusFieldVal = GetDataFromDB.getInstance().getIntValue(Queries.getInstance().getRetailerStatusQuery(this.contactID));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.conceptglobal.pmc.BaseActivity
    protected void displayNotification(String str, String str2) {
        Crouton.showText(this, "" + str2 + IOUtils.LINE_SEPARATOR_UNIX + str, Style.ALERT);
    }

    private void initialization() {
        this.updateDOS = null;
        this.dynamicColumnnames = new StringBuilder();
        this.mentryValues = new ArrayList();
        try {
            this.companyOrCropTab = this.getDataFromDB.getSingleValue(Queries.getInstance().getDealerDetailsSecondTab());
        } catch (Exception e) {
            e.printStackTrace();
            PLog.e(this.tag, e);
        }
        this.tabHost = (TabHost) findViewById(R.id.tabhost);
        this.listDealerCompanies = new ArrayList();
        this.listDealerCrops = new ArrayList();
        deletedCompanyIds = new ArrayList();
        deletedCropIds = new ArrayList();
        this.listFarmerPlots = new ArrayList();
        this.modifiedListOfFarmerPlots = new ArrayList();
        deletedPlotIds = new ArrayList();
        TextView textView = (TextView) this.tabHost.findViewById(R.id.btn_add_land_farmer);
        this.tvAddland = textView;
        textView.setText(this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_addLandText()) != null ? this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_addLandText()) : "");
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.rvPlots);
        this.rvPlots = recyclerView;
        recyclerView.setHasFixedSize(true);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this, 1, false);
        this.rvPlots.setLayoutManager(linearLayoutManager);
        this.rvPlots.addItemDecoration(new DividerItemDecoration(this.rvPlots.getContext(), linearLayoutManager.getOrientation()));
        ArrayList<TextView> arrayList = this.geoDetailsTV;
        TextView textView2 = new TextView(this);
        this.tvstateid = textView2;
        arrayList.add(textView2);
        ArrayList<TextView> arrayList2 = this.geoDetailsTV;
        TextView textView3 = new TextView(this);
        this.tvdistrictid = textView3;
        arrayList2.add(textView3);
        ArrayList<TextView> arrayList3 = this.geoDetailsTV;
        TextView textView4 = new TextView(this);
        this.tvmandalid = textView4;
        arrayList3.add(textView4);
        ArrayList<TextView> arrayList4 = this.geoDetailsTV;
        TextView textView5 = new TextView(this);
        this.tvvillageid = textView5;
        arrayList4.add(textView5);
        ArrayList<EditText> arrayList5 = this.geoDetailsET;
        EditText editText = new EditText(this);
        this.edtState = editText;
        arrayList5.add(editText);
        ArrayList<EditText> arrayList6 = this.geoDetailsET;
        EditText editText2 = new EditText(this);
        this.edtDistrict = editText2;
        arrayList6.add(editText2);
        ArrayList<EditText> arrayList7 = this.geoDetailsET;
        EditText editText3 = new EditText(this);
        this.edtMandal = editText3;
        arrayList7.add(editText3);
        ArrayList<EditText> arrayList8 = this.geoDetailsET;
        EditText editText4 = new EditText(this);
        this.edtVillage = editText4;
        arrayList8.add(editText4);
        this.edtState.addTextChangedListener(this.stateChanged);
        this.edtDistrict.addTextChangedListener(this.districtChanged);
        this.edtMandal.addTextChangedListener(this.mandalChanged);
        this.tab1 = (LinearLayout) findViewById(R.id.oprattributes_LL_main);
        this.tab2 = (LinearLayout) findViewById(R.id.oprattributesRetailerCompany_LL_main);
        this.tab3 = (RelativeLayout) findViewById(R.id.oprattributesRetailerOthers_LL_main);
        this.tvAddCompany = (TextView) this.tabHost.findViewById(R.id.btn_add_company_dealer_sales);
        if (this.companyOrCropTab.equalsIgnoreCase("Crops")) {
            this.tvAddCompany.setText(this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_addCropText()));
        } else {
            this.tvAddCompany.setText(this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_addCompanyText()));
        }
        Button button = (Button) this.tabHost.findViewById(R.id.btn_draft);
        this.btnDraft = button;
        button.setText(this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_draftTabText()));
        Button button2 = (Button) this.tabHost.findViewById(R.id.btn_save);
        this.btnSave = button2;
        button2.setText(this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_saveText()));
        this.lvCompanies = (ListView) this.tabHost.findViewById(R.id.lv_companies_dealer_sales);
        this.lvCrops = (ListView) this.tabHost.findViewById(R.id.lv_companies_dealer_sales);
        TextView textView6 = (TextView) this.tabHost.findViewById(R.id.tv_latitude_personal_details);
        this.tvLatitude = textView6;
        textView6.setHint(this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_latitudeText()));
        TextView textView7 = (TextView) this.tabHost.findViewById(R.id.tv_longitude_personal_details);
        this.tvLongitude = textView7;
        textView7.setHint(this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_longitudeText()));
        TextView textView8 = (TextView) this.tabHost.findViewById(R.id.tv_allsalesvalues);
        this.tvAllSalesvalues = textView8;
        textView8.setText(this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_salesValueText()));
        this.btnLatLng = (ImageView) this.tabHost.findViewById(R.id.btn_get_latlong_retailer_personal_details);
        this.imgretailermain = (ImageView) findViewById(R.id.img_retailer_image_other_details_main);
        this.gridView = (GridView) findViewById(R.id.grid_view);
        this.imgretailermain.setOnClickListener(this);
        Button button3 = (Button) this.tabHost.findViewById(R.id.tv_remarks_bank_details);
        this.btnRemarks = button3;
        button3.setText(this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_remarksText()));
        EditText editText5 = (EditText) this.tabHost.findViewById(R.id.et_remarks_retailer_details);
        this.etRemarks = editText5;
        editText5.setHint(this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_enterRemarksText()));
        Button button4 = (Button) findViewById(R.id.btnScanAdhar);
        this.btnScanAdhar = button4;
        button4.setOnClickListener(this);
        this.etRemarks.setOnClickListener(this);
        this.btnSave.setOnClickListener(this);
        this.btnDraft.setOnClickListener(this);
        this.tvAddCompany.setOnTouchListener(this);
        this.btnLatLng.setOnClickListener(this);
        this.tvAddland.setOnClickListener(this);
        Calendar calendar = Calendar.getInstance();
        this.mYear = calendar.get(1);
        this.mMonth = calendar.get(2);
        this.mDay = calendar.get(5);
        this.dealerMaster = new DealerMaster();
        this.imagelist = new ArrayList<>();
    }

    @Override // android.app.Activity
    public void onProvideAssistData(Bundle bundle) {
        super.onProvideAssistData(bundle);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void startIntentSenderForResult(IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4) throws IntentSender.SendIntentException {
        super.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4);
    }

    private void gettingData() {
        Intent intent = getIntent();
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            String string = extras.getString("farmerId");
            if (string != null && string.length() > 0) {
                this.contactID = String.valueOf(string);
            } else {
                contactIdIncrement();
                if (extras != null && extras.getString("MobileNumber") != null) {
                    this.mobile = extras.getString("MobileNumber");
                }
            }
        }
        if (extras != null && extras.getString("GstNo") != null) {
            this.gstNumber = extras.getString("GstNo");
        }
        if (intent.hasExtra("SegmentId")) {
            this.segmentID = intent.getIntExtra("SegmentId", 2);
        }
        if (intent.hasExtra("fromTransaction")) {
            this.isFromTransaction = intent.getIntExtra("fromTransaction", 1);
        }
        if (intent.hasExtra("fromSelfassgin")) {
            this.isFromSelfassgin = intent.getIntExtra("fromSelfassgin", 1);
        }
        try {
            if (this.companyOrCropTab.equalsIgnoreCase("Crops")) {
                if (this.isextrasales == 1) {
                    this.listDealerCrops = this.getDataFromDB.getDealerCropSalesDetails(Queries.getInstance().getDealerHybrids(this.contactID));
                } else {
                    this.listDealerCrops = this.getDataFromDB.getDealerCropSalesDetails(Queries.getInstance().getDealerCrops(this.contactID));
                }
            } else {
                this.listDealerCompanies = this.getDataFromDB.getCompanySelectionData(Queries.getInstance().getCompaniesAndSales(this.contactID));
            }
        } catch (Exception e) {
            PLog.e(TAG, e);
        }
        try {
            this.listFarmerPlots = this.getDataFromDB.getDealetrPlotDetails(Queries.getInstance().getDealerPlotDetails(this.contactID));
        } catch (Exception e2) {
            PLog.e(TAG, e2);
        }
    }

    private void bindOperations() {
        try {
            this.mentryValues = this.getDataFromDB.getFarmerOrRetailerBindDataDynamic(this.bindQuery);
        } catch (Exception e) {
            PLog.e(TAG, e);
        }
        if (this.attributesArry.size() > 0 && this.mentryValues.size() > 0) {
            for (int i = 0; i < this.attributesArry.size(); i++) {
                if (this.attributesArry.get(i).getControlType().equalsIgnoreCase("Dropdown")) {
                    this.mEntryArrIds.get(i).setText(this.mentryValues.get(i));
                    if (this.attributesArry.get(i).getDbquery().contains("DealerMaster")) {
                        try {
                            this.mEntryArr.get(i).setText(Encryption.decrypt(GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getColumnValueWhereConditionBased("RetailerShopName", "DealerMaster", "ContactId", this.mentryValues.get(i)))).trim());
                        } catch (Exception e2) {
                            e2.printStackTrace();
                            PLog.e(TAG, e2);
                        }
                    } else if (this.attributesArry.get(i).getDbquery().contains("FarmerMaster")) {
                        try {
                            this.mEntryArr.get(i).setText(Encryption.decrypt(GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getColumnValueWhereConditionBased("FarmerName", "FarmerMaster", "RespondentNo", this.mentryValues.get(i)))).trim());
                        } catch (Exception e3) {
                            e3.printStackTrace();
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
                } else if (this.attributesArry.get(i).getControlType().equalsIgnoreCase("Multiselect Dropdown")) {
                    MultiSelectData multiSelectData = GetDataFromDB.getInstance().getMultiSelectData(Queries.getInstance().getDealerMultiSelectDataQry(this.contactID, this.attributesArry.get(i).getColumnId()));
                    if (multiSelectData != null) {
                        this.mEntryArrIds.get(i).setText(multiSelectData.getIds());
                        this.mEntryArr.get(i).setText(multiSelectData.getNames());
                    } else {
                        this.mEntryArrIds.get(i).setText("");
                        this.mEntryArr.get(i).setText("");
                    }
                } else {
                    this.mEntryArr.get(i).setText(this.mentryValues.get(i));
                }
            }
            if (farmerType.equalsIgnoreCase(ConstantsPMC.TYPE_Retailer)) {
                validateMobileNumber();
            }
        }
        List<DealerMaster> retailerBindDataStatic = this.getDataFromDB.getRetailerBindDataStatic(Queries.getInstance().gettingRetailerAtaticData(this.contactID));
        this.draftStaticData = retailerBindDataStatic;
        if (retailerBindDataStatic.size() > 0) {
            this.geoDetailsTV.get(0).setText("" + this.draftStaticData.get(0).getStateId());
            this.geoDetailsET.get(0).setText(this.draftStaticData.get(0).getStateName());
            this.geoDetailsTV.get(1).setText("" + this.draftStaticData.get(0).getDistrictId());
            this.geoDetailsET.get(1).setText(this.draftStaticData.get(0).getDistrictName());
            this.geoDetailsTV.get(2).setText("" + this.draftStaticData.get(0).getMandalId());
            this.geoDetailsET.get(2).setText(this.draftStaticData.get(0).getMandalName());
            this.geoDetailsTV.get(3).setText("" + this.draftStaticData.get(0).getVillageId());
            this.geoDetailsET.get(3).setText(this.draftStaticData.get(0).getVillageName());
            this.tvLatitude.setText(this.draftStaticData.get(0).getLatitude());
            this.tvLongitude.setText(this.draftStaticData.get(0).getLongitude());
        }
        if (this.draftStaticData.size() == 0 || this.draftStaticData.get(0).getStateId() == 0) {
            try {
                if (this.getDataFromDB.getcount(Queries.getInstance().gettingStateCount()) == 1) {
                    SampleModel sampleModel = GetDataFromDB.getInstance().getSampleModel(Queries.getInstance().gettingStates());
                    this.geoDetailsTV.get(0).setText(sampleModel.getId());
                    this.geoDetailsET.get(0).setText(sampleModel.getName());
                }
            } catch (Exception e5) {
                PLog.e(this.tag, e5);
            }
        }
        if (this.draftStaticData.size() == 0 || this.draftStaticData.get(0).getDistrictId() == 0) {
            try {
                if (this.getDataFromDB.getcount(Queries.getInstance().gettingCountofMasters("DistrictMaster", "StateId", this.geoDetailsTV.get(0).getText().toString())) == 1) {
                    SampleModel sampleModel2 = GetDataFromDB.getInstance().getSampleModel(Queries.getInstance().gettingDistricts(this.geoDetailsTV.get(0).getText().toString()));
                    this.geoDetailsTV.get(1).setText(sampleModel2.getId());
                    this.geoDetailsET.get(1).setText(sampleModel2.getName());
                }
            } catch (Exception e6) {
                PLog.e(this.tag, e6);
            }
        }
        if (this.draftStaticData.size() == 0 || this.draftStaticData.get(0).getMandalId() == 0) {
            try {
                if (this.getDataFromDB.getcount(Queries.getInstance().gettingCountofMasters("MandalMaster", "Districtid", this.geoDetailsTV.get(1).getText().toString())) == 1) {
                    SampleModel sampleModel3 = GetDataFromDB.getInstance().getSampleModel(Queries.getInstance().gettingMandals(this.geoDetailsTV.get(1).getText().toString()));
                    this.geoDetailsTV.get(2).setText(sampleModel3.getId());
                    this.geoDetailsET.get(2).setText(sampleModel3.getName());
                }
            } catch (Exception e7) {
                PLog.e(this.tag, e7);
            }
        }
        if (farmerType.equalsIgnoreCase(ConstantsPMC.TYPE_Distributor) || farmerType.equalsIgnoreCase("Dealer")) {
            setEditableFalse(this.geoDetailsET.get(0));
            setEditableFalse(this.geoDetailsET.get(1));
        }
    }

    private void settingTabs() {
        this.tabHost.setup();
        addTab(this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_personalTabText()), R.drawable.ic_action_person_wight, getResources().getString(R.string.pmc_tag1));
        try {
            this.isNotRequiredFAB = GetDataFromDB.getInstance().getLookupValue(Queries.getInstance().getItemValue("IsNotRequireCropOrComapnyTab"));
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (this.isNotRequiredFAB != 1) {
            if (this.companyOrCropTab.equalsIgnoreCase("Crops")) {
                addTab(this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_cropFilterText()), R.drawable.ic_acerage_wight, getResources().getString(R.string.pmc_tag2));
            } else {
                addTab(this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_companyTabText()), R.drawable.ic_acerage_wight, getResources().getString(R.string.pmc_tag2));
            }
        } else {
            ((LinearLayout) findViewById(R.id.tabretailer2)).setVisibility(8);
        }
        addTab(this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_LandTabText()), R.drawable.ic_acerage_wight, getResources().getString(R.string.pmc_tag8));
        addTab(this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_profileTabText()), R.drawable.ic_others_wight, getResources().getString(R.string.pmc_tag5));
    }

    private void contactIdIncrement() {
        gettingPdaid();
        this.contactID = (this.dealerMaster.getPDAId() + Calendar.getInstance().getTimeInMillis()) + "";
    }

    private String generateResPondentNumberNew() {
        return this.dealerMaster.getPDAId() + "" + Calendar.getInstance().getTimeInMillis();
    }

    private void gettingPdaid() {
        try {
            this.dealerMaster.setPDAId(Integer.parseInt(this.getDataFromDB.getSingleValue(Queries.getInstance().geetingPdaid())));
            this.pdaId = Integer.parseInt(this.getDataFromDB.getSingleValue(Queries.getInstance().geetingPdaid()));
        } catch (Exception e) {
            PLog.e(this.tag, e);
            e.printStackTrace();
        }
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        int i;
        int i2;
        int i3;
        if (view instanceof EditText) {
            ((EditText) view).setError(null);
        }
        ListPopupOne listPopupOne = this.mListPopupOne;
        if ((listPopupOne == null || (listPopupOne != null && !listPopupOne.isShowing())) && motionEvent.getAction() == 0) {
            int id = view.getId();
            if (id == 0) {
                try {
                    this.masterTablecount = this.getDataFromDB.getcount(Queries.getInstance().gettingStateCount());
                } catch (Exception e) {
                    PLog.e(this.tag, e);
                }
                if (this.masterTablecount > 0) {
                    this.geoDetailsTV.get(0);
                    ListPopupOne listPopupOne2 = new ListPopupOne(this.context, this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_selectText()) + " " + this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_stateText()), Queries.getInstance().gettingStates(), view, this.geoDetailsTV.get(0));
                    listPopupOne2.getWindow().getAttributes().windowAnimations = R.style.PauseDialogAnimation;
                    listPopupOne2.show();
                    listPopupOne2.getWindow().setSoftInputMode(3);
                } else {
                    Toast.makeText(getApplicationContext(), this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_thereIsNoText()) + " " + this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_stateText()), 0).show();
                }
            } else if (id == 1) {
                this.tableName = "DistrictMaster";
                this.columnName = "StateId ";
                try {
                    i = this.getDataFromDB.getcount(Queries.getInstance().gettingCountofMasters(this.tableName, this.columnName, this.geoDetailsTV.get(0).getText().toString()));
                } catch (Exception e2) {
                    PLog.e(this.tag, e2);
                    i = 0;
                }
                if (i > 0) {
                    ListPopupOne listPopupOne3 = new ListPopupOne(this.context, this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_selectText()) + " " + this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_districtText()), Queries.getInstance().gettingDistricts(this.geoDetailsTV.get(0).getText().toString()), view, this.geoDetailsTV.get(1));
                    listPopupOne3.getWindow().getAttributes().windowAnimations = R.style.PauseDialogAnimation;
                    listPopupOne3.show();
                    listPopupOne3.getWindow().setSoftInputMode(3);
                } else {
                    Toast.makeText(getApplicationContext(), this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_thereIsNoText()) + " " + this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_districtText()), 0).show();
                }
            } else if (id == 2) {
                this.tableName = "MandalMaster";
                this.columnName = "Districtid";
                try {
                    i2 = this.getDataFromDB.getcount(Queries.getInstance().gettingCountofMasters(this.tableName, this.columnName, this.geoDetailsTV.get(1).getText().toString()));
                } catch (Exception e3) {
                    PLog.e(this.tag, e3);
                    i2 = 0;
                }
                if (i2 > 0) {
                    ListPopupOne listPopupOne4 = new ListPopupOne(this.context, this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_selectText()) + " " + this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_talukaFilterText()), Queries.getInstance().gettingMandals(this.geoDetailsTV.get(1).getText().toString()), view, this.geoDetailsTV.get(2));
                    listPopupOne4.getWindow().getAttributes().windowAnimations = R.style.PauseDialogAnimation;
                    listPopupOne4.show();
                    listPopupOne4.getWindow().setSoftInputMode(3);
                } else {
                    Toast.makeText(getApplicationContext(), this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_thereIsNoText()) + " " + this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_mandalsText()), 0).show();
                }
            } else if (id == 3) {
                this.tableName = "VillageMaster";
                this.columnName = "mandalId";
                try {
                    i3 = this.getDataFromDB.getcount(Queries.getInstance().gettingCountofMasters(this.tableName, this.columnName, this.geoDetailsTV.get(2).getText().toString()));
                } catch (Exception e4) {
                    PLog.e(this.tag, e4);
                    i3 = 0;
                }
                if (i3 > 0) {
                    ListPopupOne listPopupOne5 = new ListPopupOne(this.context, this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_selectText()) + " " + this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_villageText()), Queries.getInstance().gettinVillages(this.geoDetailsTV.get(2).getText().toString()), view, this.geoDetailsTV.get(3));
                    listPopupOne5.getWindow().getAttributes().windowAnimations = R.style.PauseDialogAnimation;
                    listPopupOne5.show();
                    listPopupOne5.getWindow().setSoftInputMode(3);
                } else {
                    Toast.makeText(getApplicationContext(), this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_thereIsNoText()) + " " + this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_villageText()), 0).show();
                }
            } else if (id == R.id.btn_add_company_dealer_sales && this.companyOrCropTab.equalsIgnoreCase("Crops")) {
                showAddCropSalesDialog(ConstantDeclarations.getInstance().getEMPTY(), 0.0f, -1);
            }
        }
        return false;
    }

    private void enableGeoDetailsLayout() {
        try {
            String inWhichTabGeoDetailsAvailable = this.getDataFromDB.getInWhichTabGeoDetailsAvailable(Queries.getInstance().getInWhichTab("Dealer"));
            this.mAddGeoDetailsInPersonal = (LinearLayout) findViewById(R.id.retailer_personal_geodetails_LL);
            this.mAddGeoDetailsInOthers = (LinearLayout) findViewById(R.id.retailer_others_geodetails_LL);
            for (int i = 0; i < this.attribName.length; i++) {
                if (inWhichTabGeoDetailsAvailable.equalsIgnoreCase("Personal")) {
                    this.geoDetailsTV.get(i);
                    addIndividualGeoDetails(i, this.attribName[i], this.geoDetailsTV.get(i), this.geoDetailsET.get(i), this.mAddGeoDetailsInPersonal, this.geoDetailsConditions[i][1]);
                } else if (inWhichTabGeoDetailsAvailable.equalsIgnoreCase("Others")) {
                    this.geoDetailsTV.get(i);
                    addIndividualGeoDetails(i, this.attribName[i], this.geoDetailsTV.get(i), this.geoDetailsET.get(i), this.mAddGeoDetailsInOthers, this.geoDetailsConditions[i][1]);
                }
            }
        } catch (Exception e) {
            PLog.e(TAG, e);
        }
    }

    public void addIndividualGeoDetails(int i, String str, TextView textView, EditText editText, LinearLayout linearLayout, String str2) {
        LinearLayout linearLayout2 = new LinearLayout(this);
        linearLayout2.setWeightSum(1.0f);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2, 1.0f);
        layoutParams.setMargins(0, 4, 0, 0);
        linearLayout2.setLayoutParams(layoutParams);
        linearLayout2.setOrientation(0);
        linearLayout2.setGravity(16);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -1, 0.6f);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, -1, 0.4f);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(0, 0);
        TextView textView2 = new TextView(this);
        textView2.setGravity(19);
        textView2.setTextAppearance(this.context, R.style.LightTitleText);
        textView2.setLayoutParams(layoutParams2);
        if (str2.equalsIgnoreCase("1")) {
            textView2.setText(Html.fromHtml(str + "<font color='#ff0000'>*</font>"));
        } else {
            textView2.setText(str);
        }
        editText.setTag("operation");
        editText.setId(i);
        editText.setHint(this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_selectText()));
        editText.setBackgroundResource(R.drawable.card_layout_back);
        editText.setCompoundDrawablesWithIntrinsicBounds(0, 0, R.drawable.drop_16, 0);
        editText.setOnTouchListener(this);
        editText.setFocusable(false);
        editText.setGravity(17);
        editText.setLayoutParams(layoutParams3);
        new TextView(this).setLayoutParams(layoutParams4);
        linearLayout2.addView(textView2);
        linearLayout2.addView(editText);
        linearLayout.addView(linearLayout2);
    }

    private void createOperationAttributes() {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        AddRetailer addRetailer;
        AddRetailer addRetailer2 = this;
        String str6 = ConstantsPMC.TYPE_Retailer;
        try {
            addRetailer2.mAddDynamicLinear = (LinearLayout) addRetailer2.findViewById(R.id.operations_dynamic_LL);
            addRetailer2.mAddDynamicLinearForOthers = (LinearLayout) addRetailer2.findViewById(R.id.others_operations_dynamic_LL);
            addRetailer2.hAttributes = new HashMap<>();
            addRetailer2.mattributesnamesArr = new ArrayList<>();
            addRetailer2.mOprDatesArr = new ArrayList<>();
            addRetailer2.mEntryArr = new ArrayList<>();
            addRetailer2.mEntrySpinnerArr = new ArrayList<>();
            addRetailer2.mEntryArrIds = new ArrayList<>();
            boolean equalsIgnoreCase = farmerType.equalsIgnoreCase(ConstantsPMC.TYPE_Retailer);
            String str7 = "Dealer";
            String str8 = ConstantsPMC.TYPE_Distributor;
            if (equalsIgnoreCase) {
                addRetailer2.attributesArry = addRetailer2.getDataFromDB.getDynanicFields(Queries.getInstance().gettingDynamicFields("Personal", "Dealer"));
            } else if (farmerType.equalsIgnoreCase(ConstantsPMC.TYPE_Distributor) || farmerType.equalsIgnoreCase("Dealer")) {
                addRetailer2.attributesArry = addRetailer2.getDataFromDB.getDynanicFields(Queries.getInstance().gettingDynamicFields("Personal", ConstantsPMC.TYPE_Distributor));
            }
            int size = addRetailer2.attributesArry.size();
            addRetailer2.hAttributes.clear();
            String str9 = ",";
            if (size > 0) {
                int i = 0;
                while (i < size) {
                    int i2 = i;
                    String str10 = str6;
                    String str11 = str9;
                    int i3 = size;
                    String str12 = str8;
                    String str13 = str7;
                    try {
                        addOperationsDynamicLayout(addRetailer2.attributesArry.get(i).getDisplayName(), addRetailer2.attributesArry.get(i).getControlType(), addRetailer2.attributesArry.get(i).getIsMandatory(), addRetailer2.attributesArry.get(i).getDbColumnName(), addRetailer2.attributesArry.get(i).getDbquery(), addRetailer2.attributesArry.get(i).getValidationType(), addRetailer2.attributesArry.get(i).getValidationExpression(), addRetailer2.attributesArry.get(i).getMaxLength(), addRetailer2.attributesArry.get(i).getMinLength(), addRetailer2.attributesArry.get(i).getMaxValue(), addRetailer2.attributesArry.get(i).getMinValue(), addRetailer2.attributesArry.get(i).getDecimalLength(), addRetailer2.mAddDynamicLinear, addRetailer2.attributesArry.get(i).getIsTransactionEditable(), i2, addRetailer2.attributesArry.get(i));
                        addRetailer2 = this;
                        addRetailer2.dynamicColumnnames.append(addRetailer2.attributesArry.get(i2).getDbColumnName() + str11);
                        i = i2 + 1;
                        str9 = str11;
                        str6 = str10;
                        size = i3;
                        str8 = str12;
                        str7 = str13;
                    } catch (Exception e) {
                        e = e;
                        addRetailer2 = this;
                        e.printStackTrace();
                        return;
                    }
                }
            }
            String str14 = str6;
            String str15 = str9;
            int i4 = size;
            String str16 = str8;
            String str17 = str7;
            String str18 = str14;
            if (farmerType.equalsIgnoreCase(str18)) {
                str = str17;
                addRetailer2.attributesArryForOthers = addRetailer2.getDataFromDB.getDynanicFields(Queries.getInstance().gettingDynamicFields("Others", str));
                str2 = str16;
            } else {
                str = str17;
                str2 = str16;
                if (farmerType.equalsIgnoreCase(str2) || farmerType.equalsIgnoreCase(str)) {
                    addRetailer2.attributesArryForOthers = addRetailer2.getDataFromDB.getDynanicFields(Queries.getInstance().gettingDynamicFields("Others", str2));
                }
            }
            if (addRetailer2.attributesArryForOthers.size() > 0) {
                addRetailer2.attributesArry.addAll(addRetailer2.attributesArryForOthers);
                int i5 = 0;
                while (i5 < addRetailer2.attributesArryForOthers.size()) {
                    int i6 = i5;
                    String str19 = str2;
                    String str20 = str;
                    String str21 = str18;
                    try {
                        addOperationsDynamicLayout(addRetailer2.attributesArryForOthers.get(i5).getDisplayName(), addRetailer2.attributesArryForOthers.get(i5).getControlType(), addRetailer2.attributesArryForOthers.get(i5).getIsMandatory(), addRetailer2.attributesArryForOthers.get(i5).getDbColumnName(), addRetailer2.attributesArryForOthers.get(i5).getDbquery(), addRetailer2.attributesArryForOthers.get(i5).getValidationType(), addRetailer2.attributesArryForOthers.get(i5).getValidationExpression(), addRetailer2.attributesArryForOthers.get(i5).getMaxLength(), addRetailer2.attributesArryForOthers.get(i5).getMinLength(), addRetailer2.attributesArryForOthers.get(i5).getMaxValue(), addRetailer2.attributesArryForOthers.get(i5).getMinValue(), addRetailer2.attributesArryForOthers.get(i5).getDecimalLength(), addRetailer2.mAddDynamicLinearForOthers, addRetailer2.attributesArryForOthers.get(i5).getIsTransactionEditable(), i6, addRetailer2.attributesArryForOthers.get(i5));
                    } catch (Exception e2) {
                        e = e2;
                    }
                    try {
                        this.dynamicColumnnames.append(this.attributesArryForOthers.get(i6).getDbColumnName() + str15);
                        i5 = i6 + 1;
                        addRetailer2 = this;
                        str2 = str19;
                        str = str20;
                        str18 = str21;
                    } catch (Exception e3) {
                        e = e3;
                        e.printStackTrace();
                        return;
                    }
                }
                str3 = str2;
                str4 = str;
                str5 = str18;
                addRetailer = addRetailer2;
                addRetailer.addDisclaimerView(addRetailer.mAddDynamicLinearForOthers);
            } else {
                str3 = str2;
                str4 = str;
                str5 = str18;
                addRetailer = addRetailer2;
            }
            if (i4 > 0 || addRetailer.attributesArryForOthers.size() > 0) {
                addRetailer.dynamicColumnnames.deleteCharAt(r0.length() - 1);
                String sb = addRetailer.dynamicColumnnames.toString();
                if (farmerType.equalsIgnoreCase(str5)) {
                    addRetailer.bindQuery = Queries.getInstance().bindQueryInAddRetailer(sb, addRetailer.contactID, 2);
                } else if (farmerType.equalsIgnoreCase(str3) || farmerType.equalsIgnoreCase(str4)) {
                    addRetailer.bindQuery = Queries.getInstance().bindQueryInAddRetailer(sb, addRetailer.contactID, 3);
                }
            }
        } catch (Exception e4) {
            e = e4;
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity
    public void supportInvalidateOptionsMenu() {
        super.supportInvalidateOptionsMenu();
    }

    private void addDisclaimerView(LinearLayout linearLayout) {
        try {
            LinearLayout linearLayout2 = new LinearLayout(this);
            linearLayout2.setWeightSum(1.0f);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2, 1.0f);
            layoutParams.setMargins(0, 4, 0, 0);
            linearLayout2.setLayoutParams(layoutParams);
            linearLayout2.setOrientation(0);
            linearLayout2.setGravity(16);
            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -1, 0.6f);
            TextView textView = new TextView(this);
            textView.setGravity(19);
            textView.setTextAppearance(this.context, R.style.LightTitleText);
            textView.setLayoutParams(layoutParams2);
            textView.setTextColor(getResources().getColor(R.color.red_light_bg));
            textView.setTextSize(12.0f);
            textView.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_RetailerDisclamer()));
            linearLayout2.addView(textView);
            linearLayout.addView(linearLayout2);
        } catch (Exception e) {
            PLog.e(TAG, e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:107:0x04b5  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x04a6  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x053c  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x05c2  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x05f7  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x05fe  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x05e1  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0549  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void addOperationsDynamicLayout(java.lang.String r22, java.lang.String r23, java.lang.String r24, java.lang.String r25, java.lang.String r26, java.lang.String r27, java.lang.String r28, int r29, int r30, int r31, int r32, int r33, android.widget.LinearLayout r34, int r35, int r36, com.conceptglobal.pmc.model.DynamicFields r37) {
        /*
            Method dump skipped, instructions count: 1683
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.fragments.AddRetailer.addOperationsDynamicLayout(java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, int, int, int, int, int, android.widget.LinearLayout, int, int, com.conceptglobal.pmc.model.DynamicFields):void");
    }

    private void addTab(String str, int i, String str2) {
        TabHost.TabSpec newTabSpec = this.tabHost.newTabSpec(str);
        View inflate = LayoutInflater.from(this).inflate(R.layout.tab_indicator, (ViewGroup) this.tabHost.getTabWidget(), false);
        ((TextView) inflate.findViewById(R.id.title_tab_indicator)).setText(str);
        ((ImageView) inflate.findViewById(R.id.icon_tab_indicator)).setImageResource(i);
        newTabSpec.setIndicator(inflate);
        if (str2.equalsIgnoreCase(getResources().getString(R.string.pmc_tag1))) {
            newTabSpec.setContent(R.id.tabretailer);
        } else if (str2.equalsIgnoreCase(getResources().getString(R.string.pmc_tag2))) {
            newTabSpec.setContent(R.id.tabretailer2);
        } else if (str2.equalsIgnoreCase(getResources().getString(R.string.pmc_tag5))) {
            newTabSpec.setContent(R.id.tabretailer5);
        } else if (str2.equalsIgnoreCase(getResources().getString(R.string.pmc_tag8))) {
            newTabSpec.setContent(R.id.tab8);
        } else {
            newTabSpec.setContent(R.id.tabretailer);
        }
        this.tabHost.addTab(newTabSpec);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setListviewForSales() {
        if (this.companyOrCropTab.equalsIgnoreCase("Crops")) {
            if (this.listDealerCrops.size() > 0) {
                DealerCropDisplayAdapter dealerCropDisplayAdapter = new DealerCropDisplayAdapter(this, this.listDealerCrops, this.contactID, this);
                this.adapterCrop = dealerCropDisplayAdapter;
                this.lvCrops.setAdapter((ListAdapter) dealerCropDisplayAdapter);
                ListviewFillToParent.setListViewHeightBasedOnChildren(this.lvCrops);
                return;
            }
            return;
        }
        if (this.listDealerCompanies.size() > 0) {
            CompanyDisplayAdapter companyDisplayAdapter = new CompanyDisplayAdapter(this, this.listDealerCompanies, this.contactID);
            this.adapterCompany = companyDisplayAdapter;
            this.lvCompanies.setAdapter((ListAdapter) companyDisplayAdapter);
            ListviewFillToParent.setListViewHeightBasedOnChildren(this.lvCompanies);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPlotsAdapter() {
        DealerLandsListAdapter dealerLandsListAdapter = this.plotsAdapter;
        if (dealerLandsListAdapter == null) {
            DealerLandsListAdapter dealerLandsListAdapter2 = new DealerLandsListAdapter(this, this.listFarmerPlots, this.contactID, this);
            this.plotsAdapter = dealerLandsListAdapter2;
            this.rvPlots.setAdapter(dealerLandsListAdapter2);
            return;
        }
        dealerLandsListAdapter.notifyDataSetChanged();
    }

    private void showAddLandDialog(final DealerLandDetails dealerLandDetails, final String str, final int i) {
        final Dialog dialog = new Dialog(this.context);
        dialog.requestWindowFeature(1);
        dialog.setContentView(R.layout.alert_land_details);
        EditText editText = (EditText) dialog.findViewById(R.id.etLandName);
        this.etPlotName = editText;
        editText.setHint(this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_plot_name()));
        EditText editText2 = (EditText) dialog.findViewById(R.id.etAcreages);
        this.etPlotAcreages = editText2;
        editText2.setHint(this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_plot_acerage()));
        this.etPlotAcreages.setInputType(8194);
        this.etPlotAcreages.setFilters(new InputFilter[]{new DecimalDigitsInputFilter(4, 2)});
        EditText editText3 = (EditText) dialog.findViewById(R.id.etAddress);
        this.etPlotAddress = editText3;
        editText3.setHint(this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_plot_address()));
        EditText editText4 = (EditText) dialog.findViewById(R.id.etOnFieldOrOff);
        this.etOnOrOFfField = editText4;
        editText4.setCompoundDrawablesWithIntrinsicBounds(0, 0, R.drawable.drop_16, 0);
        this.etOnOrOFfField.setHint(this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_plot_onFieldorOffField()));
        this.etOnOrOFfField.setVisibility(8);
        this.etPlotAcreages.setVisibility(8);
        this.tvPlotLatitude = (TextView) dialog.findViewById(R.id.tv_latitude_land_details);
        this.tvPlotLongitude = (TextView) dialog.findViewById(R.id.tv_longitude_land_details);
        this.ivGetLandLatLog = (ImageView) dialog.findViewById(R.id.btn_get_latlong_farmer_land_details);
        this.tvOnOrOffFieldID = (TextView) dialog.findViewById(R.id.tvonFieldOrOffField);
        Button button = (Button) dialog.findViewById(R.id.btn_save_land_alert);
        if (dealerLandDetails.getMappingId() > 0 || str.equals("update")) {
            this.etPlotName.setText(dealerLandDetails.getLandname());
            this.etPlotAddress.setText(dealerLandDetails.getAddress());
            this.tvPlotLatitude.setText(dealerLandDetails.getLatitude());
            this.tvPlotLongitude.setText(dealerLandDetails.getLongitude());
        }
        this.etOnOrOFfField.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.AddRetailer.9
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                UtilDeclarations.hideInputKeyboard(AddRetailer.this.context);
                try {
                    ListPopupOne listPopupOne = new ListPopupOne(AddRetailer.this.context, AddRetailer.this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_selectOneDropDownTitle()), Queries.getInstance().gettingDropdownValues(8), view, AddRetailer.this.tvOnOrOffFieldID);
                    listPopupOne.getWindow().getAttributes().windowAnimations = R.style.PauseDialogAnimation;
                    listPopupOne.show();
                    listPopupOne.getWindow().setSoftInputMode(3);
                } catch (Exception e) {
                    PLog.e(AddRetailer.this.tag, e);
                }
            }
        });
        this.ivGetLandLatLog.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.AddRetailer.10
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AddRetailer addRetailer = AddRetailer.this;
                addRetailer.fetchLocation(addRetailer.tvPlotLatitude, AddRetailer.this.tvPlotLongitude);
            }
        });
        button.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.AddRetailer.11
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                UtilDeclarations.hideInputKeyboard(AddRetailer.this.context);
                String obj = AddRetailer.this.etPlotName.getText().toString();
                String charSequence = AddRetailer.this.tvPlotLatitude.getText().toString();
                String charSequence2 = AddRetailer.this.tvPlotLongitude.getText().toString();
                if (obj == null || obj.equals("")) {
                    Toast.makeText(AddRetailer.this.context, AddRetailer.this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_plot_name_toast()), 1).show();
                    return;
                }
                if (charSequence == null || charSequence.equals("")) {
                    Toast.makeText(AddRetailer.this.context, AddRetailer.this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_locationIsMandateError()), 1).show();
                    return;
                }
                AddRetailer addRetailer = AddRetailer.this;
                if (!addRetailer.checkUniquPlotName(obj, addRetailer.listFarmerPlots, i)) {
                    AddRetailer.this.etPlotName.setError("Duplicate plot name");
                    Toast.makeText(AddRetailer.this.context, "Plot name already exist.", 1).show();
                    return;
                }
                try {
                    dealerLandDetails.setLandname(obj);
                    dealerLandDetails.setLatitude(charSequence);
                    dealerLandDetails.setLongitude(charSequence2);
                    dealerLandDetails.setContactid(AddRetailer.this.contactID);
                    if (AddRetailer.this.plotLatlongs != null && !AddRetailer.this.plotLatlongs.equals("")) {
                        dealerLandDetails.setGPSTimeStamp(AddRetailer.this.plotLatlongs);
                    }
                    if (dealerLandDetails.getMappingId() != 0 || !str.equals(AppSettingsData.STATUS_NEW)) {
                        AddRetailer.this.modifiedListOfFarmerPlots.add(Integer.valueOf(dealerLandDetails.getMappingId()));
                    } else {
                        AddRetailer.this.listFarmerPlots.add(dealerLandDetails);
                    }
                } catch (Exception e) {
                    try {
                        PLog.e(AddRetailer.this.tag, e);
                    } catch (Exception e2) {
                        PLog.e(AddRetailer.this.tag, e2);
                    }
                }
                AddRetailer.this.setPlotsAdapter();
                dialog.dismiss();
            }
        });
        dialog.getWindow().setBackgroundDrawable(new ColorDrawable(0));
        dialog.getWindow().setLayout(-1, -2);
        dialog.setCancelable(true);
        dialog.setCanceledOnTouchOutside(true);
        dialog.show();
        dialog.getWindow().setGravity(17);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean checkUniquPlotName(String str, List<DealerLandDetails> list, int i) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            try {
                if (i != i2 && list.get(i2).getLandname().equals(str)) {
                    return false;
                }
            } catch (Exception unused) {
                return true;
            }
        }
        return true;
    }

    @Override // com.conceptglobal.pmc.interfaces.OnItemClickListener
    public void onLandListItemClick(int i) {
        if (this.listFarmerPlots.get(i) != null) {
            showAddLandDialog(this.listFarmerPlots.get(i), "update", i);
        }
    }

    private void showAddCropSalesDialog(String str, float f, int i) {
        int i2;
        final Dialog dialog = new Dialog(this.context);
        dialog.requestWindowFeature(1);
        dialog.setContentView(R.layout.alert_company_selection);
        EditText editText = (EditText) dialog.findViewById(R.id.et_company_discription_alert);
        this.etCropSales = editText;
        editText.setHint(this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_addSales()));
        Button button = (Button) dialog.findViewById(R.id.btn_save_company_alert);
        button.setText(this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_saveText()));
        Button button2 = (Button) dialog.findViewById(R.id.btn_naa);
        EditText editText2 = (EditText) dialog.findViewById(R.id.et_company_alert);
        this.etCropName = editText2;
        editText2.setHint(this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_addCropText()));
        this.tvCropId = (TextView) dialog.findViewById(R.id.tvcompanyid);
        this.etCropSales.setInputType(8194);
        EditText editText3 = (EditText) dialog.findViewById(R.id.et_crop_dos);
        this.etCropDos = editText3;
        if (this.isextrasales == 1) {
            editText3.setVisibility(0);
            this.etCropDos.setHint(this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_addSales1()));
            this.etCropName.setHint(this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_addCropText1()));
            this.etCropDos.setInputType(8194);
        } else {
            editText3.setVisibility(8);
        }
        try {
            i2 = GetDataFromDB.getInstance().getcount(Queries.getInstance().getItemValue("CropSalesLength"));
        } catch (Exception e) {
            PLog.e(TAG, e.getMessage());
            i2 = 11;
        }
        this.etCropSales.setFilters(new InputFilter[]{new DecimalDigitsInputFilter(i2, 2)});
        this.etCropDos.setFilters(new InputFilter[]{new DecimalDigitsInputFilter(i2, 2)});
        button2.setBackgroundColor(-7829368);
        if (i == 0) {
            this.etCropSales.setVisibility(8);
            if (this.isextrasales == 1) {
                this.etCropDos.setVisibility(8);
            }
        } else {
            this.etCropSales.setVisibility(0);
            if (this.isextrasales == 1) {
                this.etCropDos.setVisibility(0);
            }
        }
        if (str.length() > 0) {
            this.etCropName.setText(str);
            this.tvCropId.setText(Integer.toString(i));
            this.etCropSales.setText(f + ConstantDeclarations.getInstance().getEMPTY());
            if (this.isextrasales == 1) {
                this.etCropDos.setText(str + ConstantDeclarations.getInstance().getEMPTY());
                try {
                    this.etCropName.setText(this.getDataFromDB.getStringValue(Queries.getInstance().getCropNameQuery(Integer.toString(i))));
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        } else {
            this.etCropName.setText(ConstantDeclarations.getInstance().getEMPTY());
            this.etCropSales.setText(ConstantDeclarations.getInstance().getEMPTY());
            if (this.isextrasales == 1) {
                this.etCropDos.setText(ConstantDeclarations.getInstance().getEMPTY());
            }
        }
        this.etCropName.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.AddRetailer.12
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                UtilDeclarations.hideInputKeyboard(AddRetailer.this.context);
                try {
                    if (AddRetailer.this.isextrasales == 1) {
                        ListPopupOne listPopupOne = new ListPopupOne(AddRetailer.this.context, AddRetailer.this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_selectText()) + " " + AddRetailer.this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_cropFilterText()), Queries.getInstance().gettingDropdownValues(2), view, AddRetailer.this.tvCropId);
                        listPopupOne.getWindow().getAttributes().windowAnimations = R.style.PauseDialogAnimation;
                        listPopupOne.show();
                        listPopupOne.getWindow().setSoftInputMode(3);
                    } else {
                        ListPopupOne listPopupOne2 = new ListPopupOne(AddRetailer.this.context, AddRetailer.this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_selectText()) + " " + AddRetailer.this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_cropFilterText()), Queries.getInstance().gettingDropdownValues(1), view, AddRetailer.this.tvCropId);
                        listPopupOne2.getWindow().getAttributes().windowAnimations = R.style.PauseDialogAnimation;
                        listPopupOne2.show();
                        listPopupOne2.getWindow().setSoftInputMode(3);
                    }
                } catch (Exception e3) {
                    PLog.e(AddRetailer.this.tag, e3);
                }
            }
        });
        this.tvCropId.addTextChangedListener(new TextWatcher() { // from class: com.conceptglobal.pmc.fragments.AddRetailer.13
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (AddRetailer.this.tvCropId.getText().toString().trim().length() > 0) {
                    try {
                        if (Integer.parseInt(AddRetailer.this.tvCropId.getText().toString()) == 0) {
                            AddRetailer.this.etCropSales.setVisibility(8);
                            return;
                        }
                        try {
                            String stringValue = AddRetailer.this.getDataFromDB.getStringValue(Queries.getInstance().getCropSales(AddRetailer.this.contactID, Integer.parseInt(AddRetailer.this.tvCropId.getText().toString())));
                            if (stringValue == null || stringValue.trim().length() <= 0) {
                                AddRetailer.this.etCropSales.setText(ConstantDeclarations.getInstance().getEMPTY());
                            } else {
                                AddRetailer.this.etCropSales.setText(stringValue);
                            }
                            if (AddRetailer.this.isextrasales == 1) {
                                String stringValue2 = AddRetailer.this.getDataFromDB.getStringValue(Queries.getInstance().getCropSales1(AddRetailer.this.contactID, Integer.parseInt(AddRetailer.this.tvCropId.getText().toString())));
                                if (stringValue2 == null || stringValue2.trim().length() <= 0) {
                                    AddRetailer.this.etCropDos.setText(ConstantDeclarations.getInstance().getEMPTY());
                                } else {
                                    AddRetailer.this.etCropDos.setText(stringValue2);
                                }
                            }
                        } catch (SQLiteDoneException e3) {
                            PLog.e(AddRetailer.this.tag, e3);
                            AddRetailer.this.etCropSales.setText(ConstantDeclarations.getInstance().getEMPTY());
                        }
                    } catch (Exception e4) {
                        PLog.e(AddRetailer.this.tag, e4);
                    }
                }
            }
        });
        button.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.AddRetailer.14
            private DealerCropMapping dealerCropMapping;

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                UtilDeclarations.hideInputKeyboard(AddRetailer.this.context);
                String trim = AddRetailer.this.etCropName.getText().toString().trim();
                String trim2 = AddRetailer.this.etCropSales.getText().toString().trim();
                String trim3 = AddRetailer.this.etCropDos.getText().toString().trim();
                if (trim == null || trim.equals("")) {
                    Toast.makeText(AddRetailer.this.context, AddRetailer.this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_pleaseSelectCropToast()), 0).show();
                    return;
                }
                if (trim2 == null || trim2.equals("") || trim2.equals(".")) {
                    Toast.makeText(AddRetailer.this.context, AddRetailer.this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_enterSalesDetailsToast()), 0).show();
                    return;
                }
                if (AddRetailer.this.isextrasales == 1 && (AddRetailer.this.etCropDos.getText().toString().trim() == null || AddRetailer.this.etCropDos.getText().toString().trim().equals(""))) {
                    Toast.makeText(AddRetailer.this.context, AddRetailer.this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_enterSalesDetailsToast()), 0).show();
                    return;
                }
                this.dealerCropMapping = new DealerCropMapping();
                try {
                    AddRetailer addRetailer = AddRetailer.this;
                    String filterfromlistCrops = addRetailer.filterfromlistCrops(addRetailer.contactID, Integer.parseInt(AddRetailer.this.tvCropId.getText().toString()));
                    if (filterfromlistCrops != null && filterfromlistCrops.trim().length() > 0) {
                        Toast.makeText(AddRetailer.this.context, "Crop/Hybrid already exists, please delete old entry to continue.", 0).show();
                        return;
                    }
                    try {
                        this.dealerCropMapping.setCropSales(Double.parseDouble(trim2));
                        this.dealerCropMapping.setContactId(AddRetailer.this.contactID);
                        this.dealerCropMapping.setCropId(Integer.parseInt(AddRetailer.this.tvCropId.getText().toString()));
                        this.dealerCropMapping.setCropName(trim);
                        if (AddRetailer.this.isextrasales == 1) {
                            this.dealerCropMapping.setCropName(trim3);
                        }
                    } catch (Exception e3) {
                        PLog.e(AddRetailer.this.tag, e3);
                    }
                    AddRetailer.this.listDealerCrops.add(this.dealerCropMapping);
                    AddRetailer.this.setListviewForSales();
                    dialog.dismiss();
                } catch (Exception e4) {
                    PLog.e(AddRetailer.this.tag, e4);
                }
            }
        });
        dialog.getWindow().setBackgroundDrawable(new ColorDrawable(0));
        dialog.setCancelable(true);
        dialog.setCanceledOnTouchOutside(true);
        dialog.show();
        dialog.getWindow().setGravity(17);
    }

    class DecimalDigitsInputFilter implements InputFilter {
        Pattern mPattern;

        public DecimalDigitsInputFilter(int i, int i2) {
            StringBuilder sb = new StringBuilder("[0-9]{0,");
            sb.append(i);
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
            if (i == 1) {
                DatePickerDialog datePickerDialog = new DatePickerDialog(this, this.mDateSetListener_Yearless, this.mYear, this.mMonth, this.mDay) { // from class: com.conceptglobal.pmc.fragments.AddRetailer.17
                    @Override // android.app.DatePickerDialog, android.widget.DatePicker.OnDateChangedListener
                    public void onDateChanged(DatePicker datePicker, int i2, int i3, int i4) {
                        setTitle(AddRetailer.this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_selectDayMonthDPTitle()));
                    }
                };
                datePickerDialog.setTitle(this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_selectDayMonthDPTitle()));
                int identifier = Resources.getSystem().getIdentifier("year", "id", AbstractSpiCall.ANDROID_CLIENT_TYPE);
                if (identifier != 0 && (findViewById = datePickerDialog.getDatePicker().findViewById(identifier)) != null) {
                    findViewById.setVisibility(8);
                }
                return datePickerDialog;
            }
            if (i != 2 && i != 3 && i != 4 && i != 5) {
                return null;
            }
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
    public void updateDisplay_yearless() {
        this.mFiledStr = new StringBuffer().append(this.mDay).append("-").append(this.mMonth + 1).toString();
        try {
            new SimpleDateFormat("dd-MM").parse(this.mFiledStr);
        } catch (ParseException e) {
            PLog.e(this.tag, e);
        }
        setDate_yearless(this.datePos);
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

    private void setDate(int i) {
        EditText editText = this.mEntryArr.get(i);
        try {
            new SimpleDateFormat("dd-MM-yyyy").parse(this.mFiledStr);
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
        builder.setMessage(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_addCustomerGoBackDialog())).setCancelable(false).setNegativeButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_cancelDialogButtonText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.AddRetailer.20
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        });
        builder.setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.AddRetailer.21
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
                AddRetailer.this.finish();
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
        MenuItem findItem = menu.findItem(R.id.item_add_draft);
        this.btn_Draft = findItem;
        if (findItem != null) {
            findItem.setVisible(false);
        }
        return super.onCreateOptionsMenu(menu);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        String str = "";
        int i = 0;
        switch (view.getId()) {
            case R.id.btnScanAdhar /* 2131296384 */:
                if (ContextCompat.checkSelfPermission(getApplicationContext(), "android.permission.CAMERA") == -1) {
                    ActivityCompat.requestPermissions(this, new String[]{"android.permission.CAMERA"}, 100);
                    break;
                } else {
                    IntentIntegrator intentIntegrator = new IntentIntegrator(this);
                    intentIntegrator.setDesiredBarcodeFormats(IntentIntegrator.QR_CODE);
                    intentIntegrator.setPrompt("Scan a Aadharcard QR Code");
                    intentIntegrator.setCameraId(0);
                    intentIntegrator.setBeepEnabled(true);
                    intentIntegrator.setBarcodeImageEnabled(true);
                    intentIntegrator.initiateScan();
                    break;
                }
            case R.id.btn_add_land_farmer /* 2131296401 */:
                showAddLandDialog(new DealerLandDetails(), AppSettingsData.STATUS_NEW, -1);
                break;
            case R.id.btn_get_latlong_retailer_personal_details /* 2131296420 */:
                try {
                    GetDataFromDB.getInstance().getIntValue(Queries.getInstance().getItemValue("GeoEditStatus"));
                    i = this.getDataFromDB.getIntValue(Queries.getInstance().getGeoEditStatus(this.contactID));
                    if (i == 2) {
                        showAlert(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_geo_desable_Text()));
                        break;
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
                if (farmerType.equalsIgnoreCase(ConstantsPMC.TYPE_Retailer)) {
                    str = GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_geo_desable_conformation_Text_Retailer());
                } else if (farmerType.equalsIgnoreCase(ConstantsPMC.TYPE_Distributor)) {
                    str = GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_geo_desable_conformation_Text_Distributor());
                }
                if (i == 1) {
                    if (farmerType.equalsIgnoreCase(ConstantsPMC.TYPE_Retailer)) {
                        str = GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_geo_desable_conformation_Text_Retailer());
                    } else if (farmerType.equalsIgnoreCase(ConstantsPMC.TYPE_Distributor)) {
                        str = GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_geo_desable_conformation_Text_Distributor());
                    }
                }
                showGeoEditAlert(str);
                break;
            case R.id.btn_save /* 2131296431 */:
                this.status = 1;
                if (validation()) {
                    for (int i2 = 0; i2 < this.images.size(); i2++) {
                        try {
                            InsertDataIntoDB.UpdateImageServerStatus(this.images.get(i2).getImageId());
                        } catch (Exception e2) {
                            PLog.e(this.tag, e2, 0);
                        }
                    }
                    new DataInsertion(this).execute(new Void[0]);
                    break;
                } else if (this.validationFailedMsg.length() > 0) {
                    Toast.makeText(getApplicationContext(), this.validationFailedMsg, 1).show();
                    this.validationFailedMsg = "";
                    break;
                } else {
                    Toast.makeText(getApplicationContext(), this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_validationToast()), 1).show();
                    break;
                }
            case R.id.img_retailer_image_other_details_main /* 2131296837 */:
                if (this.imagelist.size() <= 4) {
                    captureImage(101L);
                    break;
                } else {
                    Toast.makeText(getApplication(), this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_maxImagesToast()), 1).show();
                    break;
                }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean validateRetailerWithOTP() {
        try {
            String singleValue = GetDataFromDB.getInstance().getSingleValue(Queries.getInstance().getItemValuewithActiveCondition("RetailerOTPRoleId"));
            String singleValue2 = GetDataFromDB.getInstance().getSingleValue(Queries.getInstance().getRoleIdFromuserRoleMapping());
            if (singleValue == null || singleValue.length() <= 0) {
                return false;
            }
            for (String str : singleValue.split(",")) {
                if (str.equals(singleValue2)) {
                    return true;
                }
            }
            return false;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    private void bindPlotAddress(double d, double d2) {
        String addressWithLatLong = UtilDeclarations.getAddressWithLatLong(this.context, d, d2);
        try {
            if (GetDataFromDB.getInstance().getLookupValue(Queries.getInstance().getItemValue("farmerGoogleAddress")) == 0 || addressWithLatLong.isEmpty()) {
                return;
            }
            this.etPlotAddress.setText(addressWithLatLong);
        } catch (IOException e) {
            Log.e(TAG, "Impossible to connect to Geocoder", e);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showOTPDialog(DealerMaster dealerMaster) {
        new OTPVerificationDialog(this, dealerMaster.getMobileNumber(), dealerMaster.getRetailerShopName(), this, ConstantsPMC.TYPE_Retailer).showDialog();
    }

    private void validateMobileNumber() {
        if (this.attributesArry.size() > 0) {
            for (int i = 0; i < this.attributesArry.size(); i++) {
                if (this.attributesArry.get(i).getMinLength() != 0 && this.attributesArry.get(i).getDbColumnName().equalsIgnoreCase("MobileNumber")) {
                    if (this.mEntryArr.get(i).getText().toString().trim().length() > 0) {
                        this.mOldMobile = this.mEntryArr.get(i).getText().toString().trim();
                    } else {
                        this.mOldMobile = "";
                    }
                    Log.i(TAG, "mOldMobile Number ::::::::::: " + this.mEntryArr.get(i).getText().toString().trim());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void bindAddress(Location location) {
        long lookupValue;
        String addressWithLatLong = UtilDeclarations.getAddressWithLatLong(this.context, location.getLatitude(), location.getLongitude());
        try {
            this.dealerMaster.setGPSTimeStamp(UtilDeclarations.getLongToDate(location.getTime()));
            if (farmerType.equalsIgnoreCase(ConstantsPMC.TYPE_Retailer)) {
                lookupValue = GetDataFromDB.getInstance().getLookupValue(Queries.getInstance().getItemValue("retailerGoogleAddress"));
            } else {
                if (!farmerType.equalsIgnoreCase(ConstantsPMC.TYPE_Distributor) && !farmerType.equalsIgnoreCase("Dealer")) {
                    lookupValue = 0;
                }
                lookupValue = GetDataFromDB.getInstance().getLookupValue(Queries.getInstance().getItemValue("distributorGoogleAddress"));
            }
            if (lookupValue == 0 || addressWithLatLong.isEmpty()) {
                return;
            }
            for (int i = 0; i < this.attributesArry.size(); i++) {
                if (this.attributesArry.get(i).getColumnId() == lookupValue) {
                    this.mEntryArr.get(i).setText(addressWithLatLong);
                }
            }
        } catch (IOException e) {
            Log.e(TAG, "Impossible to connect to Geocoder", e);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private String getLocationTime(double d, double d2) {
        Location location = new Location("");
        location.setLatitude(d);
        location.setLongitude(d2);
        return UtilDeclarations.getLongToDate(location.getTime());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void captureImage(long j) {
        PLog.location("Navigation", "Image Capture Start", TAG, UtilDeclarations.getDateTime());
        new CompressHelper().getCompressLoaction(this);
        ConstantsPMC.getInstance().setPictureReportingContext(this);
        Intent intent = new Intent(this.context, (Class<?>) PictureReporting.class);
        intent.putExtra("activityId", 0);
        intent.putExtra("assignmentId", 0);
        try {
            if (farmerType.equalsIgnoreCase(ConstantsPMC.TYPE_Retailer)) {
                intent.putExtra("setReferenceType", GetDataFromDB.getInstance().getLookupValue(Queries.getInstance().getItemValueForImage(ConstantsPMC.TYPE_Retailer)));
            } else if (farmerType.equalsIgnoreCase(ConstantsPMC.TYPE_Distributor) || farmerType.equalsIgnoreCase("Dealer")) {
                intent.putExtra("setReferenceType", GetDataFromDB.getInstance().getLookupValue(Queries.getInstance().getItemValueForImage("Distributors")));
            }
        } catch (Exception e) {
            e.printStackTrace();
            PLog.e(this.tag, e);
        }
        intent.putExtra("setReferenceID", this.contactID);
        intent.putExtra("attributeId", 0);
        intent.putExtra("farmerId", this.farmerID);
        intent.putExtra("imageId", j);
        startActivity(intent);
    }

    @Override // com.conceptglobal.pmc.interfaces.OnVerifyOTPListener
    public void onSubmitOTP(String str) {
        if (this.mOTP.equals(str)) {
            try {
                this.getDataFromDB.executeRawQueryInDB(Queries.getInstance().getUpdateRetailerOTPVerificationQuery(this.contactID, "1"));
            } catch (Exception e) {
                PLog.e(TAG, e);
            }
            Toast.makeText(this, "Verification is done successfully.", 1).show();
            navigateToDraftList();
            return;
        }
        Toast.makeText(this, "Invalid Verification Code. Please try again!", 1).show();
    }

    @Override // com.conceptglobal.pmc.interfaces.OnVerifyOTPListener
    public void onResendOTP() {
        this.mOTP = "";
        if (UtilDeclarations.isOnline(this.context)) {
            Toast.makeText(this.context, "Verification code has been sent to your mobile number.", 1).show();
            callOTPAsync();
        } else {
            showOTPVerifyDialog();
        }
    }

    @Override // com.conceptglobal.pmc.interfaces.OnVerifyOTPListener
    public void onVerifyLater() {
        try {
            this.getDataFromDB.executeRawQueryInDB(Queries.getInstance().getUpdateRetailerOTPVerificationQuery(this.contactID, "0"));
        } catch (Exception e) {
            PLog.e(TAG, e);
        }
        navigateToDraftList();
    }

    @Override // com.conceptglobal.pmc.interfaces.OnVerifyOTPListener
    public void onClose() {
        try {
            this.getDataFromDB.executeRawQueryInDB(Queries.getInstance().getUpdateRetailerOTPVerificationQuery(this.contactID, "0"));
        } catch (Exception e) {
            PLog.e(TAG, e);
        }
        navigateToDraftList();
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0178  */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onActivityResult(int r21, int r22, android.content.Intent r23) {
        /*
            Method dump skipped, instructions count: 465
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.fragments.AddRetailer.onActivityResult(int, int, android.content.Intent):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dataInsertMultiAttributeValues() {
        String str;
        String str2 = "";
        int i = 0;
        while (i < this.attributesArry.size()) {
            try {
                this.retailerMultiAttributeDetails = new ArrayList<>();
                if (this.attributesArry.get(i).getControlType().equalsIgnoreCase("Multiselect Dropdown")) {
                    if (this.mEntryArr.get(i).getText() != null && this.mEntryArr.get(i).getText().length() > 0) {
                        String[] split = this.mEntryArr.get(i).getText().toString().split(",");
                        String[] split2 = this.mEntryArrIds.get(i).getText().toString().split(",");
                        if (split2 != null && split2.length > 0) {
                            this.getDataFromDB.executeRawQuery(Queries.getInstance().deleteRetailerMultiAttributeData(this.contactID, this.attributesArry.get(i).getColumnId()));
                            int i2 = 0;
                            while (i2 < split2.length) {
                                this.retailerMultiAttributeDetails.add(new RetailerMultiAttributeDetails("", this.contactID, this.attributesArry.get(i).getColumnId() + str2, split2[i2], split[i2], this.dealerMaster.getPDAId() + str2, "", "", "", ""));
                                i2++;
                                str2 = str2;
                            }
                        }
                    }
                    str = str2;
                    ArrayList<RetailerMultiAttributeDetails> arrayList = this.retailerMultiAttributeDetails;
                    if (arrayList != null && arrayList.size() > 0) {
                        InsertDataIntoDB.insertDealerMultiAttributeDetails(this.retailerMultiAttributeDetails);
                    }
                } else {
                    str = str2;
                }
                i++;
                str2 = str;
            } catch (Exception e) {
                e.printStackTrace();
                PLog.e(this.tag, e);
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dataInsertion() {
        DealerMaster dealerMaster = new DealerMaster();
        dealerMaster.setGPSTimeStamp(this.GPSTImeStamp);
        if (dealerMaster.getPDAId() == 0) {
            gettingPdaid();
        }
        dealerMaster.setContactId(this.contactID);
        if (this.geoDetailsTV.get(0).getText().toString().trim().length() > 0) {
            dealerMaster.setStateId(Integer.parseInt(this.geoDetailsTV.get(0).getText().toString()));
        } else {
            dealerMaster.setStateId(0);
        }
        if (this.geoDetailsTV.get(1).getText().toString().trim().length() > 0) {
            dealerMaster.setDistrictId(Integer.parseInt(this.geoDetailsTV.get(1).getText().toString()));
        } else {
            dealerMaster.setDistrictId(0);
        }
        if (this.geoDetailsTV.get(2).getText().toString().trim().length() > 0) {
            dealerMaster.setMandalId(Integer.parseInt(this.geoDetailsTV.get(2).getText().toString()));
        } else {
            dealerMaster.setMandalId(0);
        }
        if (this.geoDetailsTV.get(3).getText().toString().trim().length() > 0) {
            dealerMaster.setVillageId(Integer.parseInt(this.geoDetailsTV.get(3).getText().toString()));
        } else {
            dealerMaster.setVillageId(0);
        }
        if (this.status == 1) {
            dealerMaster.setColumn3("1");
        }
        dealerMaster.setPDAId(this.pdaId);
        dealerMaster.setStateName(this.geoDetailsET.get(0).getText().toString());
        dealerMaster.setDistrictName(this.geoDetailsET.get(1).getText().toString());
        dealerMaster.setMandalName(this.geoDetailsET.get(2).getText().toString());
        dealerMaster.setVillageName(this.geoDetailsET.get(3).getText().toString());
        dealerMaster.setLatitude(this.tvLatitude.getText().toString());
        dealerMaster.setLongitude(this.tvLongitude.getText().toString());
        dealerMaster.setServerUpdatedStatus(false);
        dealerMaster.setStatusReason(Integer.toString(this.status));
        dealerMaster.setIsNew(true);
        if (farmerType.equalsIgnoreCase(ConstantsPMC.TYPE_Retailer)) {
            dealerMaster.setCustomerTypeID(2);
        } else if (farmerType.equalsIgnoreCase(ConstantsPMC.TYPE_Distributor) || farmerType.equalsIgnoreCase("Dealer")) {
            dealerMaster.setCustomerTypeID(3);
        }
        dealerMaster.setIsActive("True");
        dealerMaster.setAadharRawData(this.aadharRawData);
        int i = this.status;
        if (i == 1) {
            dealerMaster.setHasProfilePicture("1");
            dealerMaster.setColumn3("1");
        } else if (i == 0) {
            try {
                String singleValue = this.getDataFromDB.getSingleValue(Queries.getInstance().getIsRetailerProfilePicCapturd(this.contactID));
                if (singleValue == null && singleValue.equals("1")) {
                    dealerMaster.setHasProfilePicture("1");
                } else {
                    for (int i2 = 0; i2 < this.images.size(); i2++) {
                        if (this.images.get(i2).getEventTypeId() == 4) {
                            dealerMaster.setHasProfilePicture("1");
                        }
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        try {
            int i3 = this.getDataFromDB.getcount(Queries.getInstance().gettingRetailerCount(this.contactID));
            this.retailerCount = i3;
            if (i3 > 0) {
                InsertDataIntoDB.updateRetailerDetails(dealerMaster, this.attributesArry, this.mEntryArr, this.contactID, 0, this.mEntryArrIds);
            } else {
                InsertDataIntoDB.insertRetailerDetails(dealerMaster, this.attributesArry, this.mEntryArr, this.mEntryArrIds);
                this.getDataFromDB.executeRawQueryInDB(Queries.getInstance().getUpdateRetailerOTPVerificationQuery(this.contactID, "0"));
            }
            if (this.locationUpdateStatus == 1) {
                this.getDataFromDB.executeRawQueryInDB(Queries.getInstance().getUpdateRetailerLocationUpdateStatusQuery(this.contactID, "1"));
            }
        } catch (Exception e2) {
            PLog.e(this.tag, e2);
            e2.printStackTrace();
        }
        Iterator<DealerCropMapping> it = this.listDealerCrops.iterator();
        while (it.hasNext()) {
            try {
                InsertDataIntoDB.insertCropSelectionDetails(it.next());
            } catch (Exception e3) {
                PLog.e(this.tag, e3);
            }
        }
        for (DealerLandDetails dealerLandDetails : this.listFarmerPlots) {
            if (dealerLandDetails.getMappingId() == 0) {
                try {
                    dealerLandDetails.setAddress(generateResPondentNumberNew());
                    InsertDataIntoDB.insertPlotDetails(dealerLandDetails);
                } catch (Exception e4) {
                    PLog.e(TAG, e4);
                }
            } else {
                try {
                    if (dealerLandDetails.getGPSTimeStamp() != null && !dealerLandDetails.getGPSTimeStamp().equals("")) {
                        InsertDataIntoDB.updateDealerPlotDetailsWithGstTimeStamp(dealerLandDetails);
                    }
                    InsertDataIntoDB.updateDealerPlotDetails(dealerLandDetails);
                } catch (Exception e5) {
                    PLog.e(TAG, e5);
                }
            }
        }
        try {
            try {
                SQLiteDatabase openDatabase = dbInstance.openDatabase();
                Iterator<Integer> it2 = deletedCropIds.iterator();
                while (it2.hasNext()) {
                    GetDataFromDB.getInstance().executeRawQueryOnDBInLoop(Queries.getInstance().deleteDealerCropDataByMappingId(this.contactID, it2.next().intValue()), openDatabase);
                }
            } catch (Exception e6) {
                PLog.e(TAG, e6);
            }
            try {
                try {
                    SQLiteDatabase openDatabase2 = dbInstance.openDatabase();
                    Iterator<Integer> it3 = deletedPlotIds.iterator();
                    while (it3.hasNext()) {
                        GetDataFromDB.getInstance().executeRawQueryOnDBInLoop(Queries.getInstance().deleteFarmerLandDataBymappingID(this.contactID, it3.next().intValue()), openDatabase2);
                    }
                } finally {
                }
            } catch (Exception e7) {
                PLog.e(TAG, e7);
            }
            try {
                this.getDataFromDB.executeRawQuery("update DealerLandDetails set serverupdatedstatus= 'false',pdaid = " + dealerMaster.getPDAId() + ",CreatedBy = " + Integer.parseInt(ConstantsPMC.getInstance().getUserId().toString()) + " where Contactid='" + this.farmerID + "'");
            } catch (Exception e8) {
                PLog.e(TAG, e8);
            }
        } finally {
        }
    }

    private class DataInsertion extends AsyncTask<Void, Void, Void> {
        private Context _mContext;
        private ProgressDialog _mDialog;

        public DataInsertion(Context context) {
            this._mContext = context;
            ProgressDialog show = ProgressDialog.show(context, "", AddRetailer.this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_pwDataSaving()));
            this._mDialog = show;
            show.setCancelable(false);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Void doInBackground(Void... voidArr) {
            try {
                AddRetailer.this.dataInsertion();
                AddRetailer.this.dataInsertMultiAttributeValues();
                return null;
            } catch (Exception e) {
                PLog.e(AddRetailer.this.tag, e);
                return null;
            }
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(Void r9) {
            ProgressDialog progressDialog = this._mDialog;
            if (progressDialog != null && progressDialog.isShowing() && !AddRetailer.this.isFinishing()) {
                this._mDialog.dismiss();
            }
            Toast.makeText(AddRetailer.this.getApplicationContext(), AddRetailer.this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_dataSavedSuccessfullyDialog()), 0).show();
            if (AddRetailer.this.isFromTransaction == 1) {
                if (AddRetailer.farmerType.equalsIgnoreCase(ConstantsPMC.TYPE_Retailer)) {
                    if (AddRetailer.this.validateRetailerWithOTP()) {
                        if (!AddRetailer.this.mOldMobile.equalsIgnoreCase(AddRetailer.this.mNewMobile)) {
                            if (AddRetailer.this.status == 1) {
                                try {
                                    AddRetailer.this.getDataFromDB.executeRawQueryInDB(Queries.getInstance().getUpdateRetailerOTPVerificationQuery(AddRetailer.this.contactID, "0"));
                                } catch (Exception e) {
                                    PLog.e(AddRetailer.TAG, e);
                                }
                                AlertDialog create = new AlertDialog.Builder(AddRetailer.this).create();
                                create.setCanceledOnTouchOutside(false);
                                create.setMessage("Please verify the farmer from \"Add Farmer\" option in main menu.");
                                create.setButton(-1, "Ok", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.AddRetailer.DataInsertion.1
                                    @Override // android.content.DialogInterface.OnClickListener
                                    public void onClick(DialogInterface dialogInterface, int i) {
                                        dialogInterface.dismiss();
                                        AddRetailer.this.finish();
                                        AddRetailer.this.startService();
                                    }
                                });
                                create.setCancelable(false);
                                create.setCanceledOnTouchOutside(false);
                                create.show();
                                return;
                            }
                            AddRetailer.this.finish();
                            AddRetailer.this.startService();
                            return;
                        }
                        AddRetailer.this.finish();
                        AddRetailer.this.startService();
                        return;
                    }
                    AddRetailer.this.finish();
                    AddRetailer.this.startService();
                    return;
                }
                AddRetailer.this.finish();
                AddRetailer.this.startService();
                return;
            }
            if (!AddRetailer.this.isFromSelfAssignment) {
                if ("MandatoryFrm".equalsIgnoreCase(AddRetailer.this.farmerUpdate)) {
                    Intent intent = new Intent(AddRetailer.this.context, (Class<?>) ListSelectionActivity.class);
                    intent.putExtra("FarmerId", AddRetailer.this.contactID);
                    intent.putExtra(ConstantDeclarations.getInstance().getKEYSELECTIONQUERY(), Queries.getInstance().getActivtiesListBySegment(AddRetailer.this.segmentID));
                    ((Activity) AddRetailer.this.context).startActivityForResult(intent, 2);
                    return;
                }
                if (AddRetailer.this.isFromTestimonal) {
                    Intent intent2 = new Intent(AddRetailer.this.context, (Class<?>) SAAttributeActivityCopy.class);
                    intent2.putExtra(ConstantDeclarations.getInstance().getKEYFARMERID(), AddRetailer.this.contactID);
                    intent2.putExtra(ConstantDeclarations.getInstance().getKEYSELECTIONQUERY(), Queries.getInstance().getActivtiesListBySegment(AddRetailer.this.segmentID));
                    intent2.putExtra("SEGMENTID", AddRetailer.this.segmentID);
                    AddRetailer.this.startActivity(intent2);
                    AddRetailer.this.finish();
                    return;
                }
                if (AddRetailer.this.isFromFeedBack) {
                    Intent intent3 = new Intent(AddRetailer.this.context, (Class<?>) ListSelectionActivity.class);
                    intent3.putExtra(ConstantDeclarations.getInstance().getKEYFARMERID(), AddRetailer.this.contactID);
                    intent3.putExtra(ConstantDeclarations.getInstance().getKEYSELECTIONQUERY(), Queries.getInstance().getFBFActivtiesListBySegment(AddRetailer.this.segmentID));
                    intent3.putExtra("SEGMENTID", AddRetailer.this.segmentID);
                    intent3.putExtra("isFrom", AddRetailer.this.isFromFeedBack);
                    ((Activity) AddRetailer.this.context).startActivityForResult(intent3, 2);
                    return;
                }
                if (!AddRetailer.this.isFromSurvey) {
                    if (AddRetailer.farmerType.equalsIgnoreCase(ConstantsPMC.TYPE_Retailer)) {
                        if (UtilDeclarations.isOnline(AddRetailer.this.context)) {
                            if (AddRetailer.this.validateRetailerWithOTP()) {
                                DealerMaster retailerNameMobileData = GetDataFromDB.getInstance().getRetailerNameMobileData(Queries.getInstance().getRetailerNameMobileQuery(AddRetailer.this.contactID));
                                if (!AddRetailer.this.mOldMobile.equalsIgnoreCase(AddRetailer.this.mNewMobile)) {
                                    if (AddRetailer.this.status == 1) {
                                        AddRetailer.this.callOTPAsync();
                                        AddRetailer.this.showOTPDialog(retailerNameMobileData);
                                        return;
                                    } else {
                                        AddRetailer.this.navigateToDraftList();
                                        return;
                                    }
                                }
                                try {
                                    String singleValue = GetDataFromDB.getInstance().getSingleValue(Queries.getInstance().getColumn1Query(AddRetailer.this.contactID));
                                    if (singleValue == null) {
                                        if (AddRetailer.this.statusFieldVal == 0) {
                                            if (AddRetailer.this.status == 1) {
                                                AddRetailer.this.callOTPAsync();
                                                AddRetailer.this.showOTPDialog(retailerNameMobileData);
                                            } else {
                                                AddRetailer.this.navigateToDraftList();
                                            }
                                        } else {
                                            AddRetailer.this.navigateToDraftList();
                                        }
                                    } else if (singleValue.equalsIgnoreCase("0")) {
                                        if (AddRetailer.this.status == 1) {
                                            AddRetailer.this.callOTPAsync();
                                            AddRetailer.this.showOTPDialog(retailerNameMobileData);
                                        } else {
                                            AddRetailer.this.navigateToDraftList();
                                        }
                                    } else {
                                        AddRetailer.this.navigateToDraftList();
                                    }
                                    return;
                                } catch (Exception e2) {
                                    e2.printStackTrace();
                                    return;
                                }
                            }
                            if (AddRetailer.this.isLocationUpdate) {
                                AddRetailer.this.startService();
                                AddRetailer.this.finish();
                                return;
                            } else {
                                AddRetailer.this.navigateToDraftList();
                                return;
                            }
                        }
                        if (!AddRetailer.this.mOldMobile.equalsIgnoreCase(AddRetailer.this.mNewMobile)) {
                            if (AddRetailer.this.status == 1) {
                                if (AddRetailer.this.validateRetailerWithOTP()) {
                                    try {
                                        AddRetailer.this.getDataFromDB.executeRawQueryInDB(Queries.getInstance().getUpdateRetailerOTPVerificationQuery(AddRetailer.this.contactID, "0"));
                                    } catch (Exception e3) {
                                        PLog.e(AddRetailer.TAG, e3);
                                    }
                                    AddRetailer.this.showOTPVerifyDialog();
                                    return;
                                }
                                AddRetailer.this.navigateToDraftList();
                                return;
                            }
                            AddRetailer.this.navigateToDraftList();
                            return;
                        }
                        AddRetailer.this.navigateToDraftList();
                        return;
                    }
                    if (AddRetailer.this.isLocationUpdate) {
                        AddRetailer.this.startService();
                        AddRetailer.this.finish();
                        return;
                    } else {
                        AddRetailer.this.navigateToDraftList();
                        return;
                    }
                }
                Intent intent4 = new Intent();
                intent4.putExtra(ConstantDeclarations.getInstance().getKEYFARMERID(), AddRetailer.this.contactID);
                intent4.putExtra("SEGMENTID", AddRetailer.this.segmentID);
                intent4.putExtra("isFrom", AddRetailer.this.isFromSurvey);
                AddRetailer.this.setResult(-1, intent4);
                AddRetailer.this.finish();
                return;
            }
            Intent intent5 = new Intent(AddRetailer.this.context, (Class<?>) ListSelectionActivity.class);
            intent5.putExtra("FarmerId", AddRetailer.this.contactID);
            intent5.putExtra(ConstantDeclarations.getInstance().getKEYSELECTIONQUERY(), Queries.getInstance().getActivtiesListBySegment(AddRetailer.this.segmentID));
            ((Activity) AddRetailer.this.context).startActivityForResult(intent5, 2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showOTPVerifyDialog() {
        AlertDialog create = new AlertDialog.Builder(this).create();
        create.setCanceledOnTouchOutside(false);
        create.setMessage("As you don't have internet connection now. Please verify the farmer later.");
        create.setButton(-1, "Ok", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.AddRetailer.22
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
                AddRetailer.this.navigateToDraftList();
            }
        });
        create.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void callOTPAsync() {
        if (UtilDeclarations.isOnline(this.context)) {
            try {
                new OTPAsync().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void navigateToDraftList() {
        Intent intent = new Intent(this, (Class<?>) DraftList.class);
        if (farmerType.equalsIgnoreCase(ConstantsPMC.TYPE_Retailer)) {
            intent.putExtra("farmerType", ConstantsPMC.TYPE_Retailer);
        } else if (farmerType.equalsIgnoreCase(ConstantsPMC.TYPE_Distributor) || farmerType.equalsIgnoreCase("Dealer")) {
            intent.putExtra("farmerType", ConstantsPMC.TYPE_Distributor);
        }
        intent.addFlags(335544320);
        startActivity(intent);
        finish();
        startService();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startService() {
        if (!UtilDeclarations.isOnline(this.context) || UtilDeclarations.isServiceRunning(getApplicationContext(), SyncDataService.class)) {
            return;
        }
        Toast.makeText(getBaseContext(), "Service initiated", 0);
        new SendDataServiceUtil(this).startService();
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
    /* JADX WARN: Can't wrap try/catch for region: R(25:430|(26:432|433|434|435|(2:437|(6:439|440|441|442|(1:444)(2:556|(1:558)(2:559|560))|445))(2:565|(3:567|(2:569|(2:571|445)(1:572))|560)(2:573|(2:575|445)(2:576|560)))|446|(4:448|(1:450)(1:(1:457))|451|(1:453)(1:(1:455)))|458|(2:460|(4:462|463|464|465)(1:(1:468)))|469|(6:471|(2:473|(2:475|476)(1:(1:549)))(2:550|(2:552|476)(1:(1:554)))|477|478|(2:484|(12:514|(6:526|(4:530|(2:532|(1:534)(1:(1:536)))|537|(2:539|(2:541|512)(1:(1:543))))|497|(2:499|(1:501)(2:502|348))|503|(3:505|506|508)(1:510))(2:518|(2:525|348)(2:520|(6:522|512|497|(0)|503|(0)(0))(5:(1:524)|497|(0)|503|(0)(0))))|43|(2:45|(1:50)(1:49))|51|(2:53|(1:58)(1:57))|59|(2:61|(1:66)(1:65))|67|(2:69|(2:74|75)(1:73))|77|78)(2:488|(8:490|(5:(1:496)|497|(0)|503|(0)(0))|511|512|497|(0)|503|(0)(0))(2:513|348)))(2:482|483)|355)|555|477|478|(1:480)|484|(1:486)|514|(1:516)|526|(5:528|530|(0)|537|(0))|497|(0)|503|(0)(0)|355)(1:580)|564|560|446|(0)|458|(0)|469|(0)|555|477|478|(0)|484|(0)|514|(0)|526|(0)|497|(0)|503|(0)(0)|355) */
    /* JADX WARN: Can't wrap try/catch for region: R(36:0|1|(54:5|6|(3:8|9|10)|226|227|228|(2:230|231)|232|233|(2:235|236)|237|238|239|(2:241|242)|243|244|245|(2:247|248)|249|250|251|(2:253|254)|255|256|(2:258|259)|260|261|(2:263|264)|265|266|(2:268|269)|270|271|(2:273|274)|275|276|(2:278|279)|280|281|(2:283|284)|285|286|(2:288|289)|290|291|(1:293)|294|295|(1:297)|298|299|(6:427|428|(3:581|582|583)(25:430|(26:432|433|434|435|(2:437|(6:439|440|441|442|(1:444)(2:556|(1:558)(2:559|560))|445))(2:565|(3:567|(2:569|(2:571|445)(1:572))|560)(2:573|(2:575|445)(2:576|560)))|446|(4:448|(1:450)(1:(1:457))|451|(1:453)(1:(1:455)))|458|(2:460|(4:462|463|464|465)(1:(1:468)))|469|(6:471|(2:473|(2:475|476)(1:(1:549)))(2:550|(2:552|476)(1:(1:554)))|477|478|(2:484|(12:514|(6:526|(4:530|(2:532|(1:534)(1:(1:536)))|537|(2:539|(2:541|512)(1:(1:543))))|497|(2:499|(1:501)(2:502|348))|503|(3:505|506|508)(1:510))(2:518|(2:525|348)(2:520|(6:522|512|497|(0)|503|(0)(0))(5:(1:524)|497|(0)|503|(0)(0))))|43|(2:45|(1:50)(1:49))|51|(2:53|(1:58)(1:57))|59|(2:61|(1:66)(1:65))|67|(2:69|(2:74|75)(1:73))|77|78)(2:488|(8:490|(5:(1:496)|497|(0)|503|(0)(0))|511|512|497|(0)|503|(0)(0))(2:513|348)))(2:482|483)|355)|555|477|478|(1:480)|484|(1:486)|514|(1:516)|526|(5:528|530|(0)|537|(0))|497|(0)|503|(0)(0)|355)(1:580)|564|560|446|(0)|458|(0)|469|(0)|555|477|478|(0)|484|(0)|514|(0)|526|(0)|497|(0)|503|(0)(0)|355)|357|358|355)(6:301|302|(17:309|(16:311|(2:313|(3:315|(1:317)(2:408|(1:410)(1:411))|318))(2:412|(2:414|(2:416|(2:418|318)(1:419)))(2:420|(2:422|318)(1:423)))|319|(4:321|(2:323|(2:325|326)(1:(1:401)))(2:402|(2:404|326)(1:(1:406)))|327|(2:362|(7:381|(2:385|(2:387|(2:389|341)(1:(1:391)))(2:392|(2:394|(2:396|341)(1:(1:398)))(2:399|348)))|342|(2:344|(1:346)(2:347|348))|349|(3:351|352|354)(1:361)|355)(2:366|(2:368|(7:370|341|342|(0)|349|(0)(0)|355)(6:(1:372)|342|(0)|349|(0)(0)|355))(2:373|(2:375|(7:377|341|342|(0)|349|(0)(0)|355)(6:(1:379)|342|(0)|349|(0)(0)|355))(2:380|348))))(7:331|(4:333|(1:(1:339))|340|341)|342|(0)|349|(0)(0)|355))|407|327|(1:329)|362|(1:364)|381|(3:383|385|(0)(0))|342|(0)|349|(0)(0)|355)|424|319|(0)|407|327|(0)|362|(0)|381|(0)|342|(0)|349|(0)(0)|355)|425|426|355)|2|3)|602|603|16|(2:18|(1:24))|25|(2:217|(1:223))|(3:37|38|39)|(2:87|88)|89|(2:102|103)|(2:113|114)|(2:127|128)|(2:134|135)|136|137|(2:139|(3:141|142|143))|149|150|(2:154|(3:158|(1:160)(3:169|(5:172|173|(2:175|176)(1:178)|177|170)|179)|(3:162|163|164)))|181|182|(10:188|(1:190)(2:209|(1:211)(1:212))|191|(2:194|192)|195|196|(1:208)(1:200)|201|202|(2:204|205))|43|(0)|51|(0)|59|(0)|67|(0)|77|78|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:213:0x13e7, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:214:0x13e8, code lost:
    
        r2 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:215:0x1366, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:216:0x1367, code lost:
    
        r3 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:545:0x112d, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:546:0x112e, code lost:
    
        r6 = r0;
     */
    /* JADX WARN: Removed duplicated region for block: B:105:0x12d9 A[Catch: Exception -> 0x14b4, TRY_ENTER, TryCatch #6 {Exception -> 0x14b4, blocks: (B:15:0x1176, B:16:0x1179, B:18:0x1183, B:20:0x1197, B:22:0x11ab, B:24:0x11bf, B:25:0x11ea, B:27:0x11f4, B:30:0x1267, B:33:0x126f, B:35:0x1275, B:80:0x1289, B:83:0x1291, B:85:0x1297, B:91:0x12a9, B:94:0x12b1, B:97:0x12b9, B:99:0x12bf, B:105:0x12d9, B:108:0x12e1, B:110:0x12e7, B:116:0x12ff, B:119:0x1307, B:122:0x130f, B:124:0x1315, B:130:0x132f, B:132:0x1335, B:147:0x1368, B:168:0x13e9, B:181:0x13ec, B:184:0x13fa, B:186:0x1402, B:188:0x140a, B:191:0x1429, B:192:0x1438, B:194:0x143e, B:196:0x144a, B:198:0x148f, B:201:0x149a, B:209:0x141c, B:217:0x11fe, B:219:0x1212, B:221:0x1226, B:223:0x123a), top: B:14:0x1176 }] */
    /* JADX WARN: Removed duplicated region for block: B:116:0x12ff A[Catch: Exception -> 0x14b4, TRY_ENTER, TryCatch #6 {Exception -> 0x14b4, blocks: (B:15:0x1176, B:16:0x1179, B:18:0x1183, B:20:0x1197, B:22:0x11ab, B:24:0x11bf, B:25:0x11ea, B:27:0x11f4, B:30:0x1267, B:33:0x126f, B:35:0x1275, B:80:0x1289, B:83:0x1291, B:85:0x1297, B:91:0x12a9, B:94:0x12b1, B:97:0x12b9, B:99:0x12bf, B:105:0x12d9, B:108:0x12e1, B:110:0x12e7, B:116:0x12ff, B:119:0x1307, B:122:0x130f, B:124:0x1315, B:130:0x132f, B:132:0x1335, B:147:0x1368, B:168:0x13e9, B:181:0x13ec, B:184:0x13fa, B:186:0x1402, B:188:0x140a, B:191:0x1429, B:192:0x1438, B:194:0x143e, B:196:0x144a, B:198:0x148f, B:201:0x149a, B:209:0x141c, B:217:0x11fe, B:219:0x1212, B:221:0x1226, B:223:0x123a), top: B:14:0x1176 }] */
    /* JADX WARN: Removed duplicated region for block: B:130:0x132f A[Catch: Exception -> 0x14b4, TRY_ENTER, TryCatch #6 {Exception -> 0x14b4, blocks: (B:15:0x1176, B:16:0x1179, B:18:0x1183, B:20:0x1197, B:22:0x11ab, B:24:0x11bf, B:25:0x11ea, B:27:0x11f4, B:30:0x1267, B:33:0x126f, B:35:0x1275, B:80:0x1289, B:83:0x1291, B:85:0x1297, B:91:0x12a9, B:94:0x12b1, B:97:0x12b9, B:99:0x12bf, B:105:0x12d9, B:108:0x12e1, B:110:0x12e7, B:116:0x12ff, B:119:0x1307, B:122:0x130f, B:124:0x1315, B:130:0x132f, B:132:0x1335, B:147:0x1368, B:168:0x13e9, B:181:0x13ec, B:184:0x13fa, B:186:0x1402, B:188:0x140a, B:191:0x1429, B:192:0x1438, B:194:0x143e, B:196:0x144a, B:198:0x148f, B:201:0x149a, B:209:0x141c, B:217:0x11fe, B:219:0x1212, B:221:0x1226, B:223:0x123a), top: B:14:0x1176 }] */
    /* JADX WARN: Removed duplicated region for block: B:139:0x1353 A[Catch: Exception -> 0x1366, TRY_LEAVE, TryCatch #13 {Exception -> 0x1366, blocks: (B:137:0x134b, B:139:0x1353), top: B:136:0x134b }] */
    /* JADX WARN: Removed duplicated region for block: B:152:0x137d A[Catch: Exception -> 0x13e7, TryCatch #12 {Exception -> 0x13e7, blocks: (B:150:0x136b, B:152:0x137d, B:154:0x1383, B:156:0x13a4, B:158:0x13aa, B:170:0x13b7, B:172:0x13bf), top: B:149:0x136b }] */
    /* JADX WARN: Removed duplicated region for block: B:160:0x13b2  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x13d5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:169:0x13b5  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x13fa A[Catch: Exception -> 0x14b4, TRY_ENTER, TryCatch #6 {Exception -> 0x14b4, blocks: (B:15:0x1176, B:16:0x1179, B:18:0x1183, B:20:0x1197, B:22:0x11ab, B:24:0x11bf, B:25:0x11ea, B:27:0x11f4, B:30:0x1267, B:33:0x126f, B:35:0x1275, B:80:0x1289, B:83:0x1291, B:85:0x1297, B:91:0x12a9, B:94:0x12b1, B:97:0x12b9, B:99:0x12bf, B:105:0x12d9, B:108:0x12e1, B:110:0x12e7, B:116:0x12ff, B:119:0x1307, B:122:0x130f, B:124:0x1315, B:130:0x132f, B:132:0x1335, B:147:0x1368, B:168:0x13e9, B:181:0x13ec, B:184:0x13fa, B:186:0x1402, B:188:0x140a, B:191:0x1429, B:192:0x1438, B:194:0x143e, B:196:0x144a, B:198:0x148f, B:201:0x149a, B:209:0x141c, B:217:0x11fe, B:219:0x1212, B:221:0x1226, B:223:0x123a), top: B:14:0x1176 }] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x1183 A[Catch: Exception -> 0x14b4, TryCatch #6 {Exception -> 0x14b4, blocks: (B:15:0x1176, B:16:0x1179, B:18:0x1183, B:20:0x1197, B:22:0x11ab, B:24:0x11bf, B:25:0x11ea, B:27:0x11f4, B:30:0x1267, B:33:0x126f, B:35:0x1275, B:80:0x1289, B:83:0x1291, B:85:0x1297, B:91:0x12a9, B:94:0x12b1, B:97:0x12b9, B:99:0x12bf, B:105:0x12d9, B:108:0x12e1, B:110:0x12e7, B:116:0x12ff, B:119:0x1307, B:122:0x130f, B:124:0x1315, B:130:0x132f, B:132:0x1335, B:147:0x1368, B:168:0x13e9, B:181:0x13ec, B:184:0x13fa, B:186:0x1402, B:188:0x140a, B:191:0x1429, B:192:0x1438, B:194:0x143e, B:196:0x144a, B:198:0x148f, B:201:0x149a, B:209:0x141c, B:217:0x11fe, B:219:0x1212, B:221:0x1226, B:223:0x123a), top: B:14:0x1176 }] */
    /* JADX WARN: Removed duplicated region for block: B:190:0x1419  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x143e A[Catch: Exception -> 0x14b4, LOOP:2: B:192:0x1438->B:194:0x143e, LOOP_END, TryCatch #6 {Exception -> 0x14b4, blocks: (B:15:0x1176, B:16:0x1179, B:18:0x1183, B:20:0x1197, B:22:0x11ab, B:24:0x11bf, B:25:0x11ea, B:27:0x11f4, B:30:0x1267, B:33:0x126f, B:35:0x1275, B:80:0x1289, B:83:0x1291, B:85:0x1297, B:91:0x12a9, B:94:0x12b1, B:97:0x12b9, B:99:0x12bf, B:105:0x12d9, B:108:0x12e1, B:110:0x12e7, B:116:0x12ff, B:119:0x1307, B:122:0x130f, B:124:0x1315, B:130:0x132f, B:132:0x1335, B:147:0x1368, B:168:0x13e9, B:181:0x13ec, B:184:0x13fa, B:186:0x1402, B:188:0x140a, B:191:0x1429, B:192:0x1438, B:194:0x143e, B:196:0x144a, B:198:0x148f, B:201:0x149a, B:209:0x141c, B:217:0x11fe, B:219:0x1212, B:221:0x1226, B:223:0x123a), top: B:14:0x1176 }] */
    /* JADX WARN: Removed duplicated region for block: B:198:0x148f A[Catch: Exception -> 0x14b4, TryCatch #6 {Exception -> 0x14b4, blocks: (B:15:0x1176, B:16:0x1179, B:18:0x1183, B:20:0x1197, B:22:0x11ab, B:24:0x11bf, B:25:0x11ea, B:27:0x11f4, B:30:0x1267, B:33:0x126f, B:35:0x1275, B:80:0x1289, B:83:0x1291, B:85:0x1297, B:91:0x12a9, B:94:0x12b1, B:97:0x12b9, B:99:0x12bf, B:105:0x12d9, B:108:0x12e1, B:110:0x12e7, B:116:0x12ff, B:119:0x1307, B:122:0x130f, B:124:0x1315, B:130:0x132f, B:132:0x1335, B:147:0x1368, B:168:0x13e9, B:181:0x13ec, B:184:0x13fa, B:186:0x1402, B:188:0x140a, B:191:0x1429, B:192:0x1438, B:194:0x143e, B:196:0x144a, B:198:0x148f, B:201:0x149a, B:209:0x141c, B:217:0x11fe, B:219:0x1212, B:221:0x1226, B:223:0x123a), top: B:14:0x1176 }] */
    /* JADX WARN: Removed duplicated region for block: B:204:0x14a9 A[Catch: Exception -> 0x1282, TRY_ENTER, TRY_LEAVE, TryCatch #18 {Exception -> 0x1282, blocks: (B:38:0x127b, B:87:0x129d, B:102:0x12d1, B:113:0x12f3, B:127:0x1327, B:134:0x1341, B:204:0x14a9), top: B:37:0x127b }] */
    /* JADX WARN: Removed duplicated region for block: B:209:0x141c A[Catch: Exception -> 0x14b4, TryCatch #6 {Exception -> 0x14b4, blocks: (B:15:0x1176, B:16:0x1179, B:18:0x1183, B:20:0x1197, B:22:0x11ab, B:24:0x11bf, B:25:0x11ea, B:27:0x11f4, B:30:0x1267, B:33:0x126f, B:35:0x1275, B:80:0x1289, B:83:0x1291, B:85:0x1297, B:91:0x12a9, B:94:0x12b1, B:97:0x12b9, B:99:0x12bf, B:105:0x12d9, B:108:0x12e1, B:110:0x12e7, B:116:0x12ff, B:119:0x1307, B:122:0x130f, B:124:0x1315, B:130:0x132f, B:132:0x1335, B:147:0x1368, B:168:0x13e9, B:181:0x13ec, B:184:0x13fa, B:186:0x1402, B:188:0x140a, B:191:0x1429, B:192:0x1438, B:194:0x143e, B:196:0x144a, B:198:0x148f, B:201:0x149a, B:209:0x141c, B:217:0x11fe, B:219:0x1212, B:221:0x1226, B:223:0x123a), top: B:14:0x1176 }] */
    /* JADX WARN: Removed duplicated region for block: B:219:0x1212 A[Catch: Exception -> 0x14b4, TryCatch #6 {Exception -> 0x14b4, blocks: (B:15:0x1176, B:16:0x1179, B:18:0x1183, B:20:0x1197, B:22:0x11ab, B:24:0x11bf, B:25:0x11ea, B:27:0x11f4, B:30:0x1267, B:33:0x126f, B:35:0x1275, B:80:0x1289, B:83:0x1291, B:85:0x1297, B:91:0x12a9, B:94:0x12b1, B:97:0x12b9, B:99:0x12bf, B:105:0x12d9, B:108:0x12e1, B:110:0x12e7, B:116:0x12ff, B:119:0x1307, B:122:0x130f, B:124:0x1315, B:130:0x132f, B:132:0x1335, B:147:0x1368, B:168:0x13e9, B:181:0x13ec, B:184:0x13fa, B:186:0x1402, B:188:0x140a, B:191:0x1429, B:192:0x1438, B:194:0x143e, B:196:0x144a, B:198:0x148f, B:201:0x149a, B:209:0x141c, B:217:0x11fe, B:219:0x1212, B:221:0x1226, B:223:0x123a), top: B:14:0x1176 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x11f4 A[Catch: Exception -> 0x14b4, TryCatch #6 {Exception -> 0x14b4, blocks: (B:15:0x1176, B:16:0x1179, B:18:0x1183, B:20:0x1197, B:22:0x11ab, B:24:0x11bf, B:25:0x11ea, B:27:0x11f4, B:30:0x1267, B:33:0x126f, B:35:0x1275, B:80:0x1289, B:83:0x1291, B:85:0x1297, B:91:0x12a9, B:94:0x12b1, B:97:0x12b9, B:99:0x12bf, B:105:0x12d9, B:108:0x12e1, B:110:0x12e7, B:116:0x12ff, B:119:0x1307, B:122:0x130f, B:124:0x1315, B:130:0x132f, B:132:0x1335, B:147:0x1368, B:168:0x13e9, B:181:0x13ec, B:184:0x13fa, B:186:0x1402, B:188:0x140a, B:191:0x1429, B:192:0x1438, B:194:0x143e, B:196:0x144a, B:198:0x148f, B:201:0x149a, B:209:0x141c, B:217:0x11fe, B:219:0x1212, B:221:0x1226, B:223:0x123a), top: B:14:0x1176 }] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x1267 A[Catch: Exception -> 0x14b4, TryCatch #6 {Exception -> 0x14b4, blocks: (B:15:0x1176, B:16:0x1179, B:18:0x1183, B:20:0x1197, B:22:0x11ab, B:24:0x11bf, B:25:0x11ea, B:27:0x11f4, B:30:0x1267, B:33:0x126f, B:35:0x1275, B:80:0x1289, B:83:0x1291, B:85:0x1297, B:91:0x12a9, B:94:0x12b1, B:97:0x12b9, B:99:0x12bf, B:105:0x12d9, B:108:0x12e1, B:110:0x12e7, B:116:0x12ff, B:119:0x1307, B:122:0x130f, B:124:0x1315, B:130:0x132f, B:132:0x1335, B:147:0x1368, B:168:0x13e9, B:181:0x13ec, B:184:0x13fa, B:186:0x1402, B:188:0x140a, B:191:0x1429, B:192:0x1438, B:194:0x143e, B:196:0x144a, B:198:0x148f, B:201:0x149a, B:209:0x141c, B:217:0x11fe, B:219:0x1212, B:221:0x1226, B:223:0x123a), top: B:14:0x1176 }] */
    /* JADX WARN: Removed duplicated region for block: B:321:0x0c50 A[Catch: Exception -> 0x113e, TryCatch #9 {Exception -> 0x113e, blocks: (B:442:0x02dd, B:444:0x030b, B:446:0x0487, B:448:0x049b, B:450:0x04b5, B:451:0x04e0, B:453:0x04fa, B:455:0x0519, B:457:0x04d4, B:458:0x0525, B:460:0x0539, B:462:0x0553, B:468:0x0595, B:469:0x05a1, B:471:0x05b3, B:473:0x05c5, B:475:0x05e5, B:549:0x0622, B:550:0x0630, B:552:0x0667, B:554:0x06a2, B:556:0x0326, B:558:0x0340, B:559:0x0370, B:565:0x037e, B:567:0x0392, B:569:0x03ac, B:571:0x03d2, B:572:0x0401, B:573:0x040f, B:575:0x0435, B:576:0x0467, B:302:0x0a2c, B:304:0x0a46, B:306:0x0a54, B:309:0x0a68, B:311:0x0a76, B:313:0x0a8a, B:315:0x0aa4, B:317:0x0ad8, B:319:0x0c3e, B:321:0x0c50, B:323:0x0c62, B:325:0x0c82, B:401:0x0cbf, B:402:0x0ccd, B:404:0x0d04, B:406:0x0d3f, B:408:0x0af3, B:410:0x0b0d, B:411:0x0b3d, B:412:0x0b4b, B:414:0x0b5d, B:416:0x0b77, B:418:0x0b9d, B:419:0x0bcc, B:420:0x0bd9, B:422:0x0bff, B:423:0x0c31), top: B:441:0x02dd }] */
    /* JADX WARN: Removed duplicated region for block: B:329:0x0d5b A[Catch: Exception -> 0x112d, TryCatch #1 {Exception -> 0x112d, blocks: (B:478:0x06b0, B:480:0x06be, B:484:0x06d2, B:486:0x06e0, B:488:0x06ee, B:490:0x0704, B:492:0x0734, B:496:0x073a, B:497:0x094b, B:499:0x0959, B:501:0x096f, B:503:0x09c9, B:511:0x0748, B:514:0x0783, B:516:0x0791, B:518:0x079f, B:520:0x07b5, B:522:0x07d7, B:524:0x0814, B:526:0x0822, B:528:0x0830, B:530:0x083e, B:532:0x0854, B:534:0x0876, B:536:0x08b4, B:537:0x08c0, B:539:0x08d6, B:541:0x0902, B:543:0x093f, B:327:0x0d4d, B:329:0x0d5b, B:331:0x0d69, B:333:0x0d7f, B:335:0x0daf, B:339:0x0db5, B:340:0x0dc3, B:342:0x1054, B:344:0x1062, B:346:0x1078, B:349:0x10dd, B:362:0x0dfe, B:364:0x0e0c, B:366:0x0e1a, B:368:0x0e30, B:370:0x0e52, B:372:0x0e8f, B:373:0x0e9d, B:375:0x0eb3, B:377:0x0edf, B:379:0x0f1c, B:381:0x0f2a, B:383:0x0f38, B:385:0x0f46, B:387:0x0f5c, B:389:0x0f7e, B:391:0x0fbb, B:392:0x0fc9, B:394:0x0fdf, B:396:0x100b, B:398:0x1048), top: B:477:0x06b0 }] */
    /* JADX WARN: Removed duplicated region for block: B:344:0x1062 A[Catch: Exception -> 0x112d, TryCatch #1 {Exception -> 0x112d, blocks: (B:478:0x06b0, B:480:0x06be, B:484:0x06d2, B:486:0x06e0, B:488:0x06ee, B:490:0x0704, B:492:0x0734, B:496:0x073a, B:497:0x094b, B:499:0x0959, B:501:0x096f, B:503:0x09c9, B:511:0x0748, B:514:0x0783, B:516:0x0791, B:518:0x079f, B:520:0x07b5, B:522:0x07d7, B:524:0x0814, B:526:0x0822, B:528:0x0830, B:530:0x083e, B:532:0x0854, B:534:0x0876, B:536:0x08b4, B:537:0x08c0, B:539:0x08d6, B:541:0x0902, B:543:0x093f, B:327:0x0d4d, B:329:0x0d5b, B:331:0x0d69, B:333:0x0d7f, B:335:0x0daf, B:339:0x0db5, B:340:0x0dc3, B:342:0x1054, B:344:0x1062, B:346:0x1078, B:349:0x10dd, B:362:0x0dfe, B:364:0x0e0c, B:366:0x0e1a, B:368:0x0e30, B:370:0x0e52, B:372:0x0e8f, B:373:0x0e9d, B:375:0x0eb3, B:377:0x0edf, B:379:0x0f1c, B:381:0x0f2a, B:383:0x0f38, B:385:0x0f46, B:387:0x0f5c, B:389:0x0f7e, B:391:0x0fbb, B:392:0x0fc9, B:394:0x0fdf, B:396:0x100b, B:398:0x1048), top: B:477:0x06b0 }] */
    /* JADX WARN: Removed duplicated region for block: B:351:0x10ef A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:361:0x1132 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:364:0x0e0c A[Catch: Exception -> 0x112d, TryCatch #1 {Exception -> 0x112d, blocks: (B:478:0x06b0, B:480:0x06be, B:484:0x06d2, B:486:0x06e0, B:488:0x06ee, B:490:0x0704, B:492:0x0734, B:496:0x073a, B:497:0x094b, B:499:0x0959, B:501:0x096f, B:503:0x09c9, B:511:0x0748, B:514:0x0783, B:516:0x0791, B:518:0x079f, B:520:0x07b5, B:522:0x07d7, B:524:0x0814, B:526:0x0822, B:528:0x0830, B:530:0x083e, B:532:0x0854, B:534:0x0876, B:536:0x08b4, B:537:0x08c0, B:539:0x08d6, B:541:0x0902, B:543:0x093f, B:327:0x0d4d, B:329:0x0d5b, B:331:0x0d69, B:333:0x0d7f, B:335:0x0daf, B:339:0x0db5, B:340:0x0dc3, B:342:0x1054, B:344:0x1062, B:346:0x1078, B:349:0x10dd, B:362:0x0dfe, B:364:0x0e0c, B:366:0x0e1a, B:368:0x0e30, B:370:0x0e52, B:372:0x0e8f, B:373:0x0e9d, B:375:0x0eb3, B:377:0x0edf, B:379:0x0f1c, B:381:0x0f2a, B:383:0x0f38, B:385:0x0f46, B:387:0x0f5c, B:389:0x0f7e, B:391:0x0fbb, B:392:0x0fc9, B:394:0x0fdf, B:396:0x100b, B:398:0x1048), top: B:477:0x06b0 }] */
    /* JADX WARN: Removed duplicated region for block: B:383:0x0f38 A[Catch: Exception -> 0x112d, TryCatch #1 {Exception -> 0x112d, blocks: (B:478:0x06b0, B:480:0x06be, B:484:0x06d2, B:486:0x06e0, B:488:0x06ee, B:490:0x0704, B:492:0x0734, B:496:0x073a, B:497:0x094b, B:499:0x0959, B:501:0x096f, B:503:0x09c9, B:511:0x0748, B:514:0x0783, B:516:0x0791, B:518:0x079f, B:520:0x07b5, B:522:0x07d7, B:524:0x0814, B:526:0x0822, B:528:0x0830, B:530:0x083e, B:532:0x0854, B:534:0x0876, B:536:0x08b4, B:537:0x08c0, B:539:0x08d6, B:541:0x0902, B:543:0x093f, B:327:0x0d4d, B:329:0x0d5b, B:331:0x0d69, B:333:0x0d7f, B:335:0x0daf, B:339:0x0db5, B:340:0x0dc3, B:342:0x1054, B:344:0x1062, B:346:0x1078, B:349:0x10dd, B:362:0x0dfe, B:364:0x0e0c, B:366:0x0e1a, B:368:0x0e30, B:370:0x0e52, B:372:0x0e8f, B:373:0x0e9d, B:375:0x0eb3, B:377:0x0edf, B:379:0x0f1c, B:381:0x0f2a, B:383:0x0f38, B:385:0x0f46, B:387:0x0f5c, B:389:0x0f7e, B:391:0x0fbb, B:392:0x0fc9, B:394:0x0fdf, B:396:0x100b, B:398:0x1048), top: B:477:0x06b0 }] */
    /* JADX WARN: Removed duplicated region for block: B:387:0x0f5c A[Catch: Exception -> 0x112d, TryCatch #1 {Exception -> 0x112d, blocks: (B:478:0x06b0, B:480:0x06be, B:484:0x06d2, B:486:0x06e0, B:488:0x06ee, B:490:0x0704, B:492:0x0734, B:496:0x073a, B:497:0x094b, B:499:0x0959, B:501:0x096f, B:503:0x09c9, B:511:0x0748, B:514:0x0783, B:516:0x0791, B:518:0x079f, B:520:0x07b5, B:522:0x07d7, B:524:0x0814, B:526:0x0822, B:528:0x0830, B:530:0x083e, B:532:0x0854, B:534:0x0876, B:536:0x08b4, B:537:0x08c0, B:539:0x08d6, B:541:0x0902, B:543:0x093f, B:327:0x0d4d, B:329:0x0d5b, B:331:0x0d69, B:333:0x0d7f, B:335:0x0daf, B:339:0x0db5, B:340:0x0dc3, B:342:0x1054, B:344:0x1062, B:346:0x1078, B:349:0x10dd, B:362:0x0dfe, B:364:0x0e0c, B:366:0x0e1a, B:368:0x0e30, B:370:0x0e52, B:372:0x0e8f, B:373:0x0e9d, B:375:0x0eb3, B:377:0x0edf, B:379:0x0f1c, B:381:0x0f2a, B:383:0x0f38, B:385:0x0f46, B:387:0x0f5c, B:389:0x0f7e, B:391:0x0fbb, B:392:0x0fc9, B:394:0x0fdf, B:396:0x100b, B:398:0x1048), top: B:477:0x06b0 }] */
    /* JADX WARN: Removed duplicated region for block: B:392:0x0fc9 A[Catch: Exception -> 0x112d, TryCatch #1 {Exception -> 0x112d, blocks: (B:478:0x06b0, B:480:0x06be, B:484:0x06d2, B:486:0x06e0, B:488:0x06ee, B:490:0x0704, B:492:0x0734, B:496:0x073a, B:497:0x094b, B:499:0x0959, B:501:0x096f, B:503:0x09c9, B:511:0x0748, B:514:0x0783, B:516:0x0791, B:518:0x079f, B:520:0x07b5, B:522:0x07d7, B:524:0x0814, B:526:0x0822, B:528:0x0830, B:530:0x083e, B:532:0x0854, B:534:0x0876, B:536:0x08b4, B:537:0x08c0, B:539:0x08d6, B:541:0x0902, B:543:0x093f, B:327:0x0d4d, B:329:0x0d5b, B:331:0x0d69, B:333:0x0d7f, B:335:0x0daf, B:339:0x0db5, B:340:0x0dc3, B:342:0x1054, B:344:0x1062, B:346:0x1078, B:349:0x10dd, B:362:0x0dfe, B:364:0x0e0c, B:366:0x0e1a, B:368:0x0e30, B:370:0x0e52, B:372:0x0e8f, B:373:0x0e9d, B:375:0x0eb3, B:377:0x0edf, B:379:0x0f1c, B:381:0x0f2a, B:383:0x0f38, B:385:0x0f46, B:387:0x0f5c, B:389:0x0f7e, B:391:0x0fbb, B:392:0x0fc9, B:394:0x0fdf, B:396:0x100b, B:398:0x1048), top: B:477:0x06b0 }] */
    /* JADX WARN: Removed duplicated region for block: B:448:0x049b A[Catch: Exception -> 0x113e, TryCatch #9 {Exception -> 0x113e, blocks: (B:442:0x02dd, B:444:0x030b, B:446:0x0487, B:448:0x049b, B:450:0x04b5, B:451:0x04e0, B:453:0x04fa, B:455:0x0519, B:457:0x04d4, B:458:0x0525, B:460:0x0539, B:462:0x0553, B:468:0x0595, B:469:0x05a1, B:471:0x05b3, B:473:0x05c5, B:475:0x05e5, B:549:0x0622, B:550:0x0630, B:552:0x0667, B:554:0x06a2, B:556:0x0326, B:558:0x0340, B:559:0x0370, B:565:0x037e, B:567:0x0392, B:569:0x03ac, B:571:0x03d2, B:572:0x0401, B:573:0x040f, B:575:0x0435, B:576:0x0467, B:302:0x0a2c, B:304:0x0a46, B:306:0x0a54, B:309:0x0a68, B:311:0x0a76, B:313:0x0a8a, B:315:0x0aa4, B:317:0x0ad8, B:319:0x0c3e, B:321:0x0c50, B:323:0x0c62, B:325:0x0c82, B:401:0x0cbf, B:402:0x0ccd, B:404:0x0d04, B:406:0x0d3f, B:408:0x0af3, B:410:0x0b0d, B:411:0x0b3d, B:412:0x0b4b, B:414:0x0b5d, B:416:0x0b77, B:418:0x0b9d, B:419:0x0bcc, B:420:0x0bd9, B:422:0x0bff, B:423:0x0c31), top: B:441:0x02dd }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x14ca  */
    /* JADX WARN: Removed duplicated region for block: B:460:0x0539 A[Catch: Exception -> 0x113e, TryCatch #9 {Exception -> 0x113e, blocks: (B:442:0x02dd, B:444:0x030b, B:446:0x0487, B:448:0x049b, B:450:0x04b5, B:451:0x04e0, B:453:0x04fa, B:455:0x0519, B:457:0x04d4, B:458:0x0525, B:460:0x0539, B:462:0x0553, B:468:0x0595, B:469:0x05a1, B:471:0x05b3, B:473:0x05c5, B:475:0x05e5, B:549:0x0622, B:550:0x0630, B:552:0x0667, B:554:0x06a2, B:556:0x0326, B:558:0x0340, B:559:0x0370, B:565:0x037e, B:567:0x0392, B:569:0x03ac, B:571:0x03d2, B:572:0x0401, B:573:0x040f, B:575:0x0435, B:576:0x0467, B:302:0x0a2c, B:304:0x0a46, B:306:0x0a54, B:309:0x0a68, B:311:0x0a76, B:313:0x0a8a, B:315:0x0aa4, B:317:0x0ad8, B:319:0x0c3e, B:321:0x0c50, B:323:0x0c62, B:325:0x0c82, B:401:0x0cbf, B:402:0x0ccd, B:404:0x0d04, B:406:0x0d3f, B:408:0x0af3, B:410:0x0b0d, B:411:0x0b3d, B:412:0x0b4b, B:414:0x0b5d, B:416:0x0b77, B:418:0x0b9d, B:419:0x0bcc, B:420:0x0bd9, B:422:0x0bff, B:423:0x0c31), top: B:441:0x02dd }] */
    /* JADX WARN: Removed duplicated region for block: B:471:0x05b3 A[Catch: Exception -> 0x113e, TryCatch #9 {Exception -> 0x113e, blocks: (B:442:0x02dd, B:444:0x030b, B:446:0x0487, B:448:0x049b, B:450:0x04b5, B:451:0x04e0, B:453:0x04fa, B:455:0x0519, B:457:0x04d4, B:458:0x0525, B:460:0x0539, B:462:0x0553, B:468:0x0595, B:469:0x05a1, B:471:0x05b3, B:473:0x05c5, B:475:0x05e5, B:549:0x0622, B:550:0x0630, B:552:0x0667, B:554:0x06a2, B:556:0x0326, B:558:0x0340, B:559:0x0370, B:565:0x037e, B:567:0x0392, B:569:0x03ac, B:571:0x03d2, B:572:0x0401, B:573:0x040f, B:575:0x0435, B:576:0x0467, B:302:0x0a2c, B:304:0x0a46, B:306:0x0a54, B:309:0x0a68, B:311:0x0a76, B:313:0x0a8a, B:315:0x0aa4, B:317:0x0ad8, B:319:0x0c3e, B:321:0x0c50, B:323:0x0c62, B:325:0x0c82, B:401:0x0cbf, B:402:0x0ccd, B:404:0x0d04, B:406:0x0d3f, B:408:0x0af3, B:410:0x0b0d, B:411:0x0b3d, B:412:0x0b4b, B:414:0x0b5d, B:416:0x0b77, B:418:0x0b9d, B:419:0x0bcc, B:420:0x0bd9, B:422:0x0bff, B:423:0x0c31), top: B:441:0x02dd }] */
    /* JADX WARN: Removed duplicated region for block: B:480:0x06be A[Catch: Exception -> 0x112d, TryCatch #1 {Exception -> 0x112d, blocks: (B:478:0x06b0, B:480:0x06be, B:484:0x06d2, B:486:0x06e0, B:488:0x06ee, B:490:0x0704, B:492:0x0734, B:496:0x073a, B:497:0x094b, B:499:0x0959, B:501:0x096f, B:503:0x09c9, B:511:0x0748, B:514:0x0783, B:516:0x0791, B:518:0x079f, B:520:0x07b5, B:522:0x07d7, B:524:0x0814, B:526:0x0822, B:528:0x0830, B:530:0x083e, B:532:0x0854, B:534:0x0876, B:536:0x08b4, B:537:0x08c0, B:539:0x08d6, B:541:0x0902, B:543:0x093f, B:327:0x0d4d, B:329:0x0d5b, B:331:0x0d69, B:333:0x0d7f, B:335:0x0daf, B:339:0x0db5, B:340:0x0dc3, B:342:0x1054, B:344:0x1062, B:346:0x1078, B:349:0x10dd, B:362:0x0dfe, B:364:0x0e0c, B:366:0x0e1a, B:368:0x0e30, B:370:0x0e52, B:372:0x0e8f, B:373:0x0e9d, B:375:0x0eb3, B:377:0x0edf, B:379:0x0f1c, B:381:0x0f2a, B:383:0x0f38, B:385:0x0f46, B:387:0x0f5c, B:389:0x0f7e, B:391:0x0fbb, B:392:0x0fc9, B:394:0x0fdf, B:396:0x100b, B:398:0x1048), top: B:477:0x06b0 }] */
    /* JADX WARN: Removed duplicated region for block: B:486:0x06e0 A[Catch: Exception -> 0x112d, TryCatch #1 {Exception -> 0x112d, blocks: (B:478:0x06b0, B:480:0x06be, B:484:0x06d2, B:486:0x06e0, B:488:0x06ee, B:490:0x0704, B:492:0x0734, B:496:0x073a, B:497:0x094b, B:499:0x0959, B:501:0x096f, B:503:0x09c9, B:511:0x0748, B:514:0x0783, B:516:0x0791, B:518:0x079f, B:520:0x07b5, B:522:0x07d7, B:524:0x0814, B:526:0x0822, B:528:0x0830, B:530:0x083e, B:532:0x0854, B:534:0x0876, B:536:0x08b4, B:537:0x08c0, B:539:0x08d6, B:541:0x0902, B:543:0x093f, B:327:0x0d4d, B:329:0x0d5b, B:331:0x0d69, B:333:0x0d7f, B:335:0x0daf, B:339:0x0db5, B:340:0x0dc3, B:342:0x1054, B:344:0x1062, B:346:0x1078, B:349:0x10dd, B:362:0x0dfe, B:364:0x0e0c, B:366:0x0e1a, B:368:0x0e30, B:370:0x0e52, B:372:0x0e8f, B:373:0x0e9d, B:375:0x0eb3, B:377:0x0edf, B:379:0x0f1c, B:381:0x0f2a, B:383:0x0f38, B:385:0x0f46, B:387:0x0f5c, B:389:0x0f7e, B:391:0x0fbb, B:392:0x0fc9, B:394:0x0fdf, B:396:0x100b, B:398:0x1048), top: B:477:0x06b0 }] */
    /* JADX WARN: Removed duplicated region for block: B:499:0x0959 A[Catch: Exception -> 0x112d, TryCatch #1 {Exception -> 0x112d, blocks: (B:478:0x06b0, B:480:0x06be, B:484:0x06d2, B:486:0x06e0, B:488:0x06ee, B:490:0x0704, B:492:0x0734, B:496:0x073a, B:497:0x094b, B:499:0x0959, B:501:0x096f, B:503:0x09c9, B:511:0x0748, B:514:0x0783, B:516:0x0791, B:518:0x079f, B:520:0x07b5, B:522:0x07d7, B:524:0x0814, B:526:0x0822, B:528:0x0830, B:530:0x083e, B:532:0x0854, B:534:0x0876, B:536:0x08b4, B:537:0x08c0, B:539:0x08d6, B:541:0x0902, B:543:0x093f, B:327:0x0d4d, B:329:0x0d5b, B:331:0x0d69, B:333:0x0d7f, B:335:0x0daf, B:339:0x0db5, B:340:0x0dc3, B:342:0x1054, B:344:0x1062, B:346:0x1078, B:349:0x10dd, B:362:0x0dfe, B:364:0x0e0c, B:366:0x0e1a, B:368:0x0e30, B:370:0x0e52, B:372:0x0e8f, B:373:0x0e9d, B:375:0x0eb3, B:377:0x0edf, B:379:0x0f1c, B:381:0x0f2a, B:383:0x0f38, B:385:0x0f46, B:387:0x0f5c, B:389:0x0f7e, B:391:0x0fbb, B:392:0x0fc9, B:394:0x0fdf, B:396:0x100b, B:398:0x1048), top: B:477:0x06b0 }] */
    /* JADX WARN: Removed duplicated region for block: B:505:0x09db A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:510:0x1132 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:516:0x0791 A[Catch: Exception -> 0x112d, TryCatch #1 {Exception -> 0x112d, blocks: (B:478:0x06b0, B:480:0x06be, B:484:0x06d2, B:486:0x06e0, B:488:0x06ee, B:490:0x0704, B:492:0x0734, B:496:0x073a, B:497:0x094b, B:499:0x0959, B:501:0x096f, B:503:0x09c9, B:511:0x0748, B:514:0x0783, B:516:0x0791, B:518:0x079f, B:520:0x07b5, B:522:0x07d7, B:524:0x0814, B:526:0x0822, B:528:0x0830, B:530:0x083e, B:532:0x0854, B:534:0x0876, B:536:0x08b4, B:537:0x08c0, B:539:0x08d6, B:541:0x0902, B:543:0x093f, B:327:0x0d4d, B:329:0x0d5b, B:331:0x0d69, B:333:0x0d7f, B:335:0x0daf, B:339:0x0db5, B:340:0x0dc3, B:342:0x1054, B:344:0x1062, B:346:0x1078, B:349:0x10dd, B:362:0x0dfe, B:364:0x0e0c, B:366:0x0e1a, B:368:0x0e30, B:370:0x0e52, B:372:0x0e8f, B:373:0x0e9d, B:375:0x0eb3, B:377:0x0edf, B:379:0x0f1c, B:381:0x0f2a, B:383:0x0f38, B:385:0x0f46, B:387:0x0f5c, B:389:0x0f7e, B:391:0x0fbb, B:392:0x0fc9, B:394:0x0fdf, B:396:0x100b, B:398:0x1048), top: B:477:0x06b0 }] */
    /* JADX WARN: Removed duplicated region for block: B:528:0x0830 A[Catch: Exception -> 0x112d, TryCatch #1 {Exception -> 0x112d, blocks: (B:478:0x06b0, B:480:0x06be, B:484:0x06d2, B:486:0x06e0, B:488:0x06ee, B:490:0x0704, B:492:0x0734, B:496:0x073a, B:497:0x094b, B:499:0x0959, B:501:0x096f, B:503:0x09c9, B:511:0x0748, B:514:0x0783, B:516:0x0791, B:518:0x079f, B:520:0x07b5, B:522:0x07d7, B:524:0x0814, B:526:0x0822, B:528:0x0830, B:530:0x083e, B:532:0x0854, B:534:0x0876, B:536:0x08b4, B:537:0x08c0, B:539:0x08d6, B:541:0x0902, B:543:0x093f, B:327:0x0d4d, B:329:0x0d5b, B:331:0x0d69, B:333:0x0d7f, B:335:0x0daf, B:339:0x0db5, B:340:0x0dc3, B:342:0x1054, B:344:0x1062, B:346:0x1078, B:349:0x10dd, B:362:0x0dfe, B:364:0x0e0c, B:366:0x0e1a, B:368:0x0e30, B:370:0x0e52, B:372:0x0e8f, B:373:0x0e9d, B:375:0x0eb3, B:377:0x0edf, B:379:0x0f1c, B:381:0x0f2a, B:383:0x0f38, B:385:0x0f46, B:387:0x0f5c, B:389:0x0f7e, B:391:0x0fbb, B:392:0x0fc9, B:394:0x0fdf, B:396:0x100b, B:398:0x1048), top: B:477:0x06b0 }] */
    /* JADX WARN: Removed duplicated region for block: B:532:0x0854 A[Catch: Exception -> 0x112d, TryCatch #1 {Exception -> 0x112d, blocks: (B:478:0x06b0, B:480:0x06be, B:484:0x06d2, B:486:0x06e0, B:488:0x06ee, B:490:0x0704, B:492:0x0734, B:496:0x073a, B:497:0x094b, B:499:0x0959, B:501:0x096f, B:503:0x09c9, B:511:0x0748, B:514:0x0783, B:516:0x0791, B:518:0x079f, B:520:0x07b5, B:522:0x07d7, B:524:0x0814, B:526:0x0822, B:528:0x0830, B:530:0x083e, B:532:0x0854, B:534:0x0876, B:536:0x08b4, B:537:0x08c0, B:539:0x08d6, B:541:0x0902, B:543:0x093f, B:327:0x0d4d, B:329:0x0d5b, B:331:0x0d69, B:333:0x0d7f, B:335:0x0daf, B:339:0x0db5, B:340:0x0dc3, B:342:0x1054, B:344:0x1062, B:346:0x1078, B:349:0x10dd, B:362:0x0dfe, B:364:0x0e0c, B:366:0x0e1a, B:368:0x0e30, B:370:0x0e52, B:372:0x0e8f, B:373:0x0e9d, B:375:0x0eb3, B:377:0x0edf, B:379:0x0f1c, B:381:0x0f2a, B:383:0x0f38, B:385:0x0f46, B:387:0x0f5c, B:389:0x0f7e, B:391:0x0fbb, B:392:0x0fc9, B:394:0x0fdf, B:396:0x100b, B:398:0x1048), top: B:477:0x06b0 }] */
    /* JADX WARN: Removed duplicated region for block: B:539:0x08d6 A[Catch: Exception -> 0x112d, TryCatch #1 {Exception -> 0x112d, blocks: (B:478:0x06b0, B:480:0x06be, B:484:0x06d2, B:486:0x06e0, B:488:0x06ee, B:490:0x0704, B:492:0x0734, B:496:0x073a, B:497:0x094b, B:499:0x0959, B:501:0x096f, B:503:0x09c9, B:511:0x0748, B:514:0x0783, B:516:0x0791, B:518:0x079f, B:520:0x07b5, B:522:0x07d7, B:524:0x0814, B:526:0x0822, B:528:0x0830, B:530:0x083e, B:532:0x0854, B:534:0x0876, B:536:0x08b4, B:537:0x08c0, B:539:0x08d6, B:541:0x0902, B:543:0x093f, B:327:0x0d4d, B:329:0x0d5b, B:331:0x0d69, B:333:0x0d7f, B:335:0x0daf, B:339:0x0db5, B:340:0x0dc3, B:342:0x1054, B:344:0x1062, B:346:0x1078, B:349:0x10dd, B:362:0x0dfe, B:364:0x0e0c, B:366:0x0e1a, B:368:0x0e30, B:370:0x0e52, B:372:0x0e8f, B:373:0x0e9d, B:375:0x0eb3, B:377:0x0edf, B:379:0x0f1c, B:381:0x0f2a, B:383:0x0f38, B:385:0x0f46, B:387:0x0f5c, B:389:0x0f7e, B:391:0x0fbb, B:392:0x0fc9, B:394:0x0fdf, B:396:0x100b, B:398:0x1048), top: B:477:0x06b0 }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x158d  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x1617  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x16da  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x1289 A[Catch: Exception -> 0x14b4, TRY_ENTER, TryCatch #6 {Exception -> 0x14b4, blocks: (B:15:0x1176, B:16:0x1179, B:18:0x1183, B:20:0x1197, B:22:0x11ab, B:24:0x11bf, B:25:0x11ea, B:27:0x11f4, B:30:0x1267, B:33:0x126f, B:35:0x1275, B:80:0x1289, B:83:0x1291, B:85:0x1297, B:91:0x12a9, B:94:0x12b1, B:97:0x12b9, B:99:0x12bf, B:105:0x12d9, B:108:0x12e1, B:110:0x12e7, B:116:0x12ff, B:119:0x1307, B:122:0x130f, B:124:0x1315, B:130:0x132f, B:132:0x1335, B:147:0x1368, B:168:0x13e9, B:181:0x13ec, B:184:0x13fa, B:186:0x1402, B:188:0x140a, B:191:0x1429, B:192:0x1438, B:194:0x143e, B:196:0x144a, B:198:0x148f, B:201:0x149a, B:209:0x141c, B:217:0x11fe, B:219:0x1212, B:221:0x1226, B:223:0x123a), top: B:14:0x1176 }] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x12a9 A[Catch: Exception -> 0x14b4, TRY_ENTER, TryCatch #6 {Exception -> 0x14b4, blocks: (B:15:0x1176, B:16:0x1179, B:18:0x1183, B:20:0x1197, B:22:0x11ab, B:24:0x11bf, B:25:0x11ea, B:27:0x11f4, B:30:0x1267, B:33:0x126f, B:35:0x1275, B:80:0x1289, B:83:0x1291, B:85:0x1297, B:91:0x12a9, B:94:0x12b1, B:97:0x12b9, B:99:0x12bf, B:105:0x12d9, B:108:0x12e1, B:110:0x12e7, B:116:0x12ff, B:119:0x1307, B:122:0x130f, B:124:0x1315, B:130:0x132f, B:132:0x1335, B:147:0x1368, B:168:0x13e9, B:181:0x13ec, B:184:0x13fa, B:186:0x1402, B:188:0x140a, B:191:0x1429, B:192:0x1438, B:194:0x143e, B:196:0x144a, B:198:0x148f, B:201:0x149a, B:209:0x141c, B:217:0x11fe, B:219:0x1212, B:221:0x1226, B:223:0x123a), top: B:14:0x1176 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean validation() {
        /*
            Method dump skipped, instructions count: 5977
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.fragments.AddRetailer.validation():boolean");
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
        boolean isSaveSuccess = true;

        private DataSaveTask() {
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            super.onPreExecute();
            AddRetailer.this.createProgressDialog("Please wait while performing validations...");
            AddRetailer.this.dialog.show();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Boolean doInBackground(Void... voidArr) {
            boolean validation = AddRetailer.this.validation();
            if (validation) {
                publishProgress("Saving data..");
                for (int i = 0; i < AddRetailer.this.images.size(); i++) {
                    try {
                        InsertDataIntoDB.UpdateImageServerStatus(((ImageDetails) AddRetailer.this.images.get(i)).getImageId());
                    } catch (Exception unused) {
                        this.isSaveSuccess = false;
                    }
                }
                AddRetailer.this.dataInsertion();
                AddRetailer.this.dataInsertMultiAttributeValues();
            }
            return Boolean.valueOf(validation);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onProgressUpdate(String... strArr) {
            super.onProgressUpdate((Object[]) strArr);
            AddRetailer.this.dialogMsgTxtview.setText(strArr[0]);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Boolean bool) {
            super.onPostExecute((DataSaveTask) bool);
            if (!bool.booleanValue()) {
                if (AddRetailer.this.dialog != null && AddRetailer.this.dialog.isShowing()) {
                    AddRetailer.this.dialog.dismiss();
                }
                Toast.makeText(AddRetailer.this.getApplicationContext(), AddRetailer.this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_validationToast()), 1).show();
                return;
            }
            if (this.isSaveSuccess) {
                if (AddRetailer.this.dialog != null && AddRetailer.this.dialog.isShowing()) {
                    AddRetailer.this.dialog.dismiss();
                }
                Toast.makeText(AddRetailer.this.getApplicationContext(), AddRetailer.this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_dataSavedSuccessfullyDialog()), 0).show();
                if (AddRetailer.this.isFromTransaction == 1) {
                    AddRetailer.this.finish();
                } else {
                    Intent intent = new Intent(AddRetailer.this, (Class<?>) DraftList.class);
                    if (!AddRetailer.farmerType.equalsIgnoreCase(ConstantsPMC.TYPE_Retailer)) {
                        if (AddRetailer.farmerType.equalsIgnoreCase(ConstantsPMC.TYPE_Distributor) || AddRetailer.farmerType.equalsIgnoreCase("Dealer")) {
                            intent.putExtra("farmerType", ConstantsPMC.TYPE_Distributor);
                        }
                    } else {
                        intent.putExtra("farmerType", ConstantsPMC.TYPE_Retailer);
                    }
                    intent.addFlags(335544320);
                    AddRetailer.this.startActivity(intent);
                    AddRetailer.this.finish();
                }
                if (!UtilDeclarations.isOnline(AddRetailer.this.context) || UtilDeclarations.isServiceRunning(AddRetailer.this.getApplicationContext(), SyncDataService.class)) {
                    return;
                }
                Toast.makeText(AddRetailer.this.getBaseContext(), "Service initiated", 0);
                new SendDataServiceUtil(AddRetailer.this).startService();
                return;
            }
            Toast.makeText(AddRetailer.this.getApplicationContext(), "Error! while saving data, try again", 1).show();
        }
    }

    private void setText(final EditText editText, final String str) {
        runOnUiThread(new Runnable() { // from class: com.conceptglobal.pmc.fragments.AddRetailer.23
            @Override // java.lang.Runnable
            public void run() {
                editText.setText(str);
            }
        });
    }

    private void setError(final TextView textView, final String str) {
        runOnUiThread(new Runnable() { // from class: com.conceptglobal.pmc.fragments.AddRetailer.24
            @Override // java.lang.Runnable
            public void run() {
                textView.setFocusable(true);
                textView.setError(str);
                textView.requestFocus();
            }
        });
    }

    private void showToast(final String str) {
        runOnUiThread(new Runnable() { // from class: com.conceptglobal.pmc.fragments.AddRetailer.25
            @Override // java.lang.Runnable
            public void run() {
                Toast.makeText(AddRetailer.this.context, str, 1).show();
            }
        });
    }

    private void setEditableFalse(EditText editText) {
        editText.setFocusable(false);
        editText.setClickable(false);
        editText.setEnabled(false);
        editText.setBackgroundDrawable(getResources().getDrawable(R.drawable.card_layout_back_desable));
    }

    @Override // com.conceptglobal.pmc.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        PLog.location("Navigation", "onResume()", TAG, UtilDeclarations.getDateTime());
        setAdapter();
        View currentFocus = getCurrentFocus();
        if (currentFocus != null) {
            currentFocus.clearFocus();
        }
    }

    @Override // com.conceptglobal.pmc.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        LocalBroadcastManager.getInstance(this).unregisterReceiver(this.message);
        super.onDestroy();
        PLog.location("Navigation", "onDestroy", TAG, UtilDeclarations.getDateTime());
    }

    private void setAdapter() {
        List<ImageDetails> imageDetailsList = this.getDataFromDB.getImageDetailsList(Queries.getInstance().getImageDetailsQry_Assignment(this.contactID));
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

    public String filterfromlistCrops(String str, int i) {
        String str2 = "";
        for (DealerCropMapping dealerCropMapping : this.listDealerCrops) {
            if (dealerCropMapping.getCropId() == i && dealerCropMapping.getContactId().equals(str)) {
                str2 = String.valueOf(dealerCropMapping.getCropSales());
            }
        }
        return str2;
    }

    protected void processScannedData(String str) {
        try {
            if (!str.isEmpty() && str.length() > 0) {
                this.aadharRawData = str;
            } else {
                this.aadharRawData = "";
            }
            XmlPullParser newPullParser = XmlPullParserFactory.newInstance().newPullParser();
            newPullParser.setFeature("http://xmlpull.org/v1/doc/features.html#process-namespaces", false);
            newPullParser.setInput(new StringReader(str));
            for (int eventType = newPullParser.getEventType(); eventType != 1; eventType = newPullParser.next()) {
                if (eventType != 0 && eventType == 2 && DataAttributes.AADHAAR_DATA_TAG.equals(newPullParser.getName())) {
                    HashMap hashMap = new HashMap();
                    for (int i = 0; i < this.attributesArry.size(); i++) {
                        hashMap.put(Integer.valueOf(this.attributesArry.get(i).getColumnId()), Integer.valueOf(i));
                    }
                    String attributeValue = newPullParser.getAttributeValue(null, DataAttributes.AADHAR_UID_ATTR);
                    String singleValue = this.getDataFromDB.getSingleValue(Queries.getInstance().getItemValueFromConfigurableLookup(DataAttributes.RETAILER_AADHAR_NUMBER));
                    if (singleValue != null && singleValue.length() > 0) {
                        this.mEntryArr.get(((Integer) hashMap.get(Integer.valueOf(Integer.parseInt(singleValue)))).intValue()).setText(attributeValue);
                    }
                    String attributeValue2 = newPullParser.getAttributeValue(null, "name");
                    String singleValue2 = this.getDataFromDB.getSingleValue(Queries.getInstance().getItemValueFromConfigurableLookup(DataAttributes.RETAILER_AADHAR_NAME));
                    if (singleValue2 != null && singleValue2.length() > 0) {
                        this.mEntryArr.get(((Integer) hashMap.get(Integer.valueOf(Integer.parseInt(singleValue2)))).intValue()).setText(attributeValue2);
                    }
                    String attributeValue3 = newPullParser.getAttributeValue(null, DataAttributes.DATE_OF_BIRTH);
                    String singleValue3 = this.getDataFromDB.getSingleValue(Queries.getInstance().getItemValueFromConfigurableLookup(DataAttributes.RETAILER_AADHAR_DOB));
                    if (singleValue3 != null && singleValue3.length() > 0) {
                        this.mEntryArr.get(((Integer) hashMap.get(Integer.valueOf(Integer.parseInt(singleValue3)))).intValue()).setText(attributeValue3);
                    }
                    String attributeValue4 = newPullParser.getAttributeValue(null, DataAttributes.AADHAR_CO_ATTR);
                    if (attributeValue4 != null && attributeValue4.contains("S/O")) {
                        attributeValue4 = attributeValue4.replaceAll("S/O", "");
                    }
                    String singleValue4 = this.getDataFromDB.getSingleValue(Queries.getInstance().getItemValueFromConfigurableLookup(DataAttributes.RETAILER_AADHAR_FATHER));
                    if (singleValue4 != null && singleValue4.length() > 0) {
                        this.mEntryArr.get(((Integer) hashMap.get(Integer.valueOf(Integer.parseInt(singleValue4)))).intValue()).setText(attributeValue4);
                    }
                    String attributeValue5 = newPullParser.getAttributeValue(null, DataAttributes.AADHAR_PC_ATTR);
                    String singleValue5 = this.getDataFromDB.getSingleValue(Queries.getInstance().getItemValueFromConfigurableLookup(DataAttributes.RETAILER_AADHAR_PINCODE));
                    if (singleValue5 != null && singleValue5.length() > 0) {
                        this.mEntryArr.get(((Integer) hashMap.get(Integer.valueOf(Integer.parseInt(singleValue5)))).intValue()).setText(attributeValue5);
                    }
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        } catch (XmlPullParserException e2) {
            e2.printStackTrace();
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    private void showMobileSearchDialog() {
        final Dialog dialog = new Dialog(this);
        dialog.requestWindowFeature(1);
        dialog.setContentView(R.layout.alert_mobile_search);
        final EditText editText = (EditText) dialog.findViewById(R.id.etMobileNumber);
        Button button = (Button) dialog.findViewById(R.id.btn_cancel_alert);
        Button button2 = (Button) dialog.findViewById(R.id.btn_search_alert);
        dialog.setCanceledOnTouchOutside(false);
        button2.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.AddRetailer.27
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                UtilDeclarations.hideInputKeyboard(AddRetailer.this);
                if (AddRetailer.this.isValidMobileNumber(editText.getText().toString())) {
                    AddRetailer.this.checkFarmerInTerritory(editText.getText().toString());
                    dialog.dismiss();
                } else {
                    editText.setError("Please enter 10 digit mobile number");
                }
            }
        });
        button.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.AddRetailer.28
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                UtilDeclarations.hideInputKeyboard(AddRetailer.this);
                dialog.dismiss();
            }
        });
        dialog.getWindow().setBackgroundDrawable(new ColorDrawable(0));
        dialog.getWindow().setLayout(-1, -2);
        dialog.setCancelable(false);
        dialog.setCanceledOnTouchOutside(false);
        dialog.show();
        dialog.getWindow().setGravity(17);
    }

    public void checkFarmerInTerritory(String str) {
        try {
            String encryptRemovenewLine = Encryption.encryptRemovenewLine(str);
            boolean isMobileNumExists = this.getDataFromDB.isMobileNumExists(Queries.getInstance().isMobileExistsForRetailer(this.contactID, this.typeOfCustomer), str);
            TerritotyDealerMaster territoryDealerDetails = this.getDataFromDB.getTerritoryDealerDetails(Queries.getInstance().getTerritoryRetailerQry(encryptRemovenewLine));
            if (territoryDealerDetails.getContactId().equals("0")) {
                showDetailsDialog(territoryDealerDetails);
            } else if (isMobileNumExists) {
                showDetailsDialog(this.getDataFromDB.getTerritoryDealerDetails(Queries.getInstance().getTerritoryRetailerQry1(encryptRemovenewLine)));
            } else {
                showNoDataAvailableDialog("No Retailer data found.");
            }
        } catch (Exception e) {
            e.printStackTrace();
            showNoDataAvailableDialog("No Retailer data found.");
        }
    }

    private void showNoDataAvailableDialog(String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setMessage(str).setCancelable(false).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.AddRetailer.29
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

    private void showDetailsDialog(TerritotyDealerMaster territotyDealerMaster) {
        final Dialog dialog = new Dialog(this);
        dialog.requestWindowFeature(1);
        dialog.setContentView(R.layout.alert_farmer_mobile_details);
        TextView textView = (TextView) dialog.findViewById(R.id.tvFarmerName);
        Button button = (Button) dialog.findViewById(R.id.btn_ok_alert);
        textView.setText(getResources().getString(R.string.pmc_reg_retailer_name) + "   : " + territotyDealerMaster.getRetailerShopName() + "\n\n" + getResources().getString(R.string.pmc_reg_mobile_no) + " : " + territotyDealerMaster.getMobileNumber() + "\n\nMarket Name    : " + territotyDealerMaster.getTerritory() + "\n\nVillage Name     : " + territotyDealerMaster.getVillage());
        button.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.AddRetailer.30
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                dialog.dismiss();
            }
        });
        dialog.getWindow().setBackgroundDrawable(new ColorDrawable(0));
        dialog.getWindow().setLayout(-1, -2);
        dialog.setCancelable(false);
        dialog.setCanceledOnTouchOutside(false);
        dialog.show();
        dialog.getWindow().setGravity(17);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isValidMobileNumber(String str) {
        return !str.isEmpty() && str.length() == 10;
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
    public void fetchLocation(final TextView textView, final TextView textView2) {
        if (!this.mLocationUtils.checkPermissions(this)) {
            this.mLocationUtils.requestPermissions(this);
            return;
        }
        try {
            new FetchLocation(this, true, new OnLocationFoundListener() { // from class: com.conceptglobal.pmc.fragments.AddRetailer.31
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
                    AddRetailer.this.bindAddress(location);
                    AddRetailer.this.GPSTImeStamp = UtilDeclarations.getLongToDate(location.getTime());
                    if (textView.equals(AddRetailer.this.tvLatitude)) {
                        AddRetailer.this.dealerMaster.setGPSTimeStamp(UtilDeclarations.getLongToDate(location.getTime()));
                    } else if (textView.equals(AddRetailer.this.tvPlotLatitude)) {
                        AddRetailer.this.plotLatlongs = UtilDeclarations.getLongToDate(location.getTime());
                    }
                }
            }, TAG);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private class OTPAsync extends AsyncTask<Void, String, String> {
        private OTPAsync() {
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            super.onPreExecute();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public String doInBackground(Void... voidArr) {
            AddRetailer.this.getOTPDetails();
            return "";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(String str) {
            super.onPostExecute((OTPAsync) str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getLocation() {
        this.locationUpdateStatus = 1;
        fetchLocation(this.tvLatitude, this.tvLongitude);
    }

    private void showAlert(String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.context);
        builder.setMessage(str).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okDiscardDialog()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.AddRetailer.32
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

    private void showGeoEditAlert(String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.context);
        builder.setMessage(str).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okDiscardDialog()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.AddRetailer.34
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                AddRetailer.this.getLocation();
                dialogInterface.dismiss();
            }
        }).setNegativeButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_cancelDialogButtonText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.AddRetailer.33
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
    public void getOTPDetails() {
        String str = null;
        try {
            PLog.i(TAG, "getOTPDetails");
            DealerMaster retailerNameMobileData = GetDataFromDB.getInstance().getRetailerNameMobileData(Queries.getInstance().getRetailerNameMobileQuery(this.contactID));
            Log.i(TAG, "name :::::::" + retailerNameMobileData.getRetailerShopName() + " mobile ::::::::::: " + retailerNameMobileData.getMobileNumber());
            GetOTP getOTP = new GetOTP();
            getOTP.setRespondentNo(this.contactID);
            getOTP.setMobileNo(retailerNameMobileData.getMobileNumber());
            getOTP.setFarmerName(retailerNameMobileData.getRetailerShopName());
            getOTP.setPdaid(this.dealerMaster.getPDAId() + "");
            Gson gson = new Gson();
            String json = gson.toJson(getOTP);
            Log.i(TAG, "OTP Request jsonObj ::::::::::::: " + json);
            str = WebService.getInstance().sendRequest(json, ConstantsPMC.getInstance().getUrlPMCService(ConstantsPMC.getInstance().getIsTrainingORLive()) + "/" + ConstantsPMC.getInstance().getMethodSendFarmerOTP());
            if (str != null && !str.isEmpty()) {
                Log.i(TAG, str + "");
                GetOTPResponse getOTPResponse = (GetOTPResponse) gson.fromJson(str, GetOTPResponse.class);
                if (getOTPResponse.getStatus().equalsIgnoreCase("Success")) {
                    this.mOTP = getOTPResponse.getData().getOTP();
                    Log.i(TAG, "mOTP ::::::::::::: " + this.mOTP);
                } else {
                    Toast.makeText(this, getOTPResponse.getStatusMessage(), 1).show();
                }
            }
        } catch (Exception e) {
            PLog.e(TAG, e.toString(), "getOTPDetails", str);
        }
    }

    private void setBottomViewPadding() {
        ViewCompat.setOnApplyWindowInsetsListener(this.tabHost, new OnApplyWindowInsetsListener() { // from class: com.conceptglobal.pmc.fragments.AddRetailer$$ExternalSyntheticLambda0
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                return AddRetailer.lambda$setBottomViewPadding$0(view, windowInsetsCompat);
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

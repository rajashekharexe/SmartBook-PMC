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
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.conceptglobal.imaterialdesign.widget.FloatingActionButton;
import com.conceptglobal.pmc.BaseActivity;
import com.conceptglobal.pmc.adapter.CompanyDisplayAdapter;
import com.conceptglobal.pmc.adapter.DealerCropDisplayAdapter;
import com.conceptglobal.pmc.adapter.GridImageAdapter;
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
import com.conceptglobal.pmc.interfaces.OnLocationFoundListener;
import com.conceptglobal.pmc.locationprovider.FetchLocation;
import com.conceptglobal.pmc.model.BrandsModel;
import com.conceptglobal.pmc.model.DealerCompanyMapping;
import com.conceptglobal.pmc.model.DealerCropMapping;
import com.conceptglobal.pmc.model.DealerMaster;
import com.conceptglobal.pmc.model.DynamicFields;
import com.conceptglobal.pmc.model.ImageDetails;
import com.conceptglobal.pmc.model.LocationInfo;
import com.conceptglobal.pmc.model.MultiSelectData;
import com.conceptglobal.pmc.model.RetailerMultiAttributeDetails;
import com.conceptglobal.pmc.model.SampleModel;
import com.conceptglobal.pmc.model.TerritotyDealerMaster;
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
import com.conceptglobal.pmc.utils.PLog;
import com.conceptglobal.pmc.utils.SendDataServiceUtil;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import com.conceptglobal.pmcdeepakfertilizers.R;
import com.google.android.material.textfield.TextInputLayout;
import com.google.zxing.integration.android.IntentIntegrator;
import de.keyboardsurfer.android.widget.crouton.Crouton;
import de.keyboardsurfer.android.widget.crouton.Style;
import io.fabric.sdk.android.services.common.AbstractSpiCall;
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
public class ValueChainPartner extends BaseActivity implements View.OnClickListener, View.OnTouchListener, OnCropItemClickListener {
    private static final int DATEDIALOGID = 0;
    private static final int DATEDIALOGID_YEARLESS = 1;
    private static final int GETNEWACTIVITY = 2;
    private static final int GET_CAM_IMG = 101;
    private static final int INITIALCOMPANYID = -1;
    private static final int INITIALCROPID = -1;
    private static final int MY_CAMERA_REQUEST_CODE = 100;
    private static final String TAG = "AddRetailer";
    public static List<Integer> deletedCompanyIds;
    public static List<Integer> deletedCropIds;
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
    private EditText etRemarks;
    private EditText ethybrid;
    private String farmerID;
    private String[][] geoDetailsConditions;
    private GetDataFromDB getDataFromDB;
    private GridView gridView;
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
    long isNotRequiredFAB;
    private long isRetalerAFarmer;
    final int isextrasales;
    private List<DealerCompanyMapping> listDealerCompanies;
    private List<DealerCropMapping> listDealerCrops;
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
    private ArrayList<TextView> mOprDatesArr;
    private int mYear;
    private final TextWatcher mandalChanged;
    int masterTablecount;
    private ArrayList<TextView> mattributesnamesArr;
    private List<String> mentryValues;
    private BroadcastReceiver message;
    private String mobile;
    View.OnClickListener operationListener;
    View.OnClickListener operationListenerMultiSelect;
    int pdaId;
    private int retailerCount;
    private long retailerMobileNumberColumnID;
    private ArrayList<RetailerMultiAttributeDetails> retailerMultiAttributeDetails;
    private int segmentID;
    private final TextWatcher stateChanged;
    private int status;
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
    int _clickId = 0;
    public List<BrandsModel> brandsList = null;
    private String contactID = null;
    String[] attribName = {GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_stateText()), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_districtText()), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_mandalsText()), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_villageText())};
    ArrayList<TextView> geoDetailsTV = new ArrayList<>();
    ArrayList<EditText> geoDetailsET = new ArrayList<>();

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
    }

    @Override // com.conceptglobal.pmc.interfaces.OnCropItemClickListener
    public void onCropListItemClick(int i) {
    }

    public ValueChainPartner() {
        GetDataFromDB.getInstance();
        this.isextrasales = GetDataFromDB.getLatLondMandatory(Queries.getInstance().getItemValue("isExtraSalesinDCM"));
        this.isNotRequiredFAB = 0L;
        this.aadharRawData = "";
        this.GPSTImeStamp = "";
        this.validationFailedMsg = "";
        this.stateChanged = new TextWatcher() { // from class: com.conceptglobal.pmc.fragments.ValueChainPartner.4
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
                ValueChainPartner.this.tvdistrictid.setText("");
                ValueChainPartner.this.edtDistrict.setText("");
                ValueChainPartner.this.tvmandalid.setText("");
                ValueChainPartner.this.edtMandal.setText("");
                ValueChainPartner.this.tvvillageid.setText("");
                ValueChainPartner.this.edtVillage.setText("");
            }
        };
        this.districtChanged = new TextWatcher() { // from class: com.conceptglobal.pmc.fragments.ValueChainPartner.5
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
                ValueChainPartner.this.tvmandalid.setText("");
                ValueChainPartner.this.edtMandal.setText("");
                ValueChainPartner.this.tvvillageid.setText("");
                ValueChainPartner.this.edtVillage.setText("");
            }
        };
        this.mandalChanged = new TextWatcher() { // from class: com.conceptglobal.pmc.fragments.ValueChainPartner.6
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
                ValueChainPartner.this.tvvillageid.setText("");
                ValueChainPartner.this.edtVillage.setText("");
            }
        };
        this.operationListenerMultiSelect = new View.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.ValueChainPartner.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (view instanceof EditText) {
                    ((EditText) view).setError(null);
                }
                int intValue = ((Integer) view.getTag()).intValue();
                view.getId();
                ValueChainPartner.this.brandsList = new ArrayList();
                DynamicFields dynamicFields = (DynamicFields) ValueChainPartner.this.attributesArry.get(intValue);
                try {
                    if (dynamicFields.getDbquery() != null && !dynamicFields.getDbquery().equals("")) {
                        ValueChainPartner.this.brandsList = GetDataFromDB.getInstance().getFarmerAssociatedBrands(dynamicFields.getDbquery());
                        if (ValueChainPartner.this.brandsList != null && ValueChainPartner.this.brandsList.size() != 0) {
                            ValueChainPartner valueChainPartner = ValueChainPartner.this;
                            CustomCheckBoxDialog customCheckBoxDialog = new CustomCheckBoxDialog(valueChainPartner, valueChainPartner.brandsList, 0, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectText()) + " " + ((DynamicFields) ValueChainPartner.this.attributesArry.get(intValue)).getDisplayName(), view, (TextView) ValueChainPartner.this.mEntryArrIds.get(intValue), ((DynamicFields) ValueChainPartner.this.attributesArry.get(intValue)).getMaxLength(), 0, 0);
                            customCheckBoxDialog.getWindow().getAttributes().windowAnimations = R.style.PauseDialogAnimation;
                            customCheckBoxDialog.show();
                            customCheckBoxDialog.getWindow().setSoftInputMode(3);
                        }
                        Toast.makeText(ValueChainPartner.this.context, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_noDataFound()), 0).show();
                    }
                } catch (Exception e) {
                    PLog.e(ValueChainPartner.TAG, e);
                    e.printStackTrace();
                }
            }
        };
        this.operationListener = new View.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.ValueChainPartner.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (view instanceof EditText) {
                    ((EditText) view).setError(null);
                }
                ValueChainPartner.this._clickId = view.getId();
                String dbquery = ((DynamicFields) ValueChainPartner.this.attributesArry.get(view.getId())).getDbquery();
                if (dbquery.equals("")) {
                    dbquery = "select VillageId, VillageName  from VillageMaster ";
                }
                ValueChainPartner valueChainPartner = ValueChainPartner.this;
                ListPopupOne listPopupOne = new ListPopupOne(valueChainPartner, valueChainPartner.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_selectOneDropDownTitle()), dbquery, view, (TextView) ValueChainPartner.this.mEntryArrIds.get(view.getId()));
                listPopupOne.getWindow().getAttributes().windowAnimations = R.style.PauseDialogAnimation;
                listPopupOne.show();
                listPopupOne.getWindow().setSoftInputMode(3);
            }
        };
        this.datesListener = new View.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.ValueChainPartner.12
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ValueChainPartner.this.datePos = view.getId();
                ValueChainPartner.this.showDialog(0);
            }
        };
        this.datesListenerYearless = new View.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.ValueChainPartner.13
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ValueChainPartner.this.datePos = view.getId();
                ValueChainPartner.this.showDialog(1);
            }
        };
        this.mDateSetListener = new DatePickerDialog.OnDateSetListener() { // from class: com.conceptglobal.pmc.fragments.ValueChainPartner.15
            @Override // android.app.DatePickerDialog.OnDateSetListener
            public void onDateSet(DatePicker datePicker, int i, int i2, int i3) {
                ValueChainPartner.this.mYear = i;
                ValueChainPartner.this.mMonth = i2;
                ValueChainPartner.this.mDay = i3;
                try {
                    new SimpleDateFormat("yyyy-MM-dd").parse(i + "-" + (i2 + 1) + "-" + i3);
                    new Date();
                    ValueChainPartner.this.updateDisplay();
                } catch (Exception e) {
                    PLog.e(ValueChainPartner.this.tag, e);
                }
            }
        };
        this.mDateSetListener_Yearless = new DatePickerDialog.OnDateSetListener() { // from class: com.conceptglobal.pmc.fragments.ValueChainPartner.16
            @Override // android.app.DatePickerDialog.OnDateSetListener
            public void onDateSet(DatePicker datePicker, int i, int i2, int i3) {
                ValueChainPartner.this.mYear = i;
                ValueChainPartner.this.mMonth = i2;
                ValueChainPartner.this.mDay = i3;
                try {
                    ValueChainPartner.this.updateDisplay_yearless();
                } catch (Exception e) {
                    PLog.e(ValueChainPartner.this.tag, e);
                }
            }
        };
        this.message = new BroadcastReceiver() { // from class: com.conceptglobal.pmc.fragments.ValueChainPartner.22
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                String stringExtra = intent.getStringExtra("deletedImage");
                ValueChainPartner.this.imagelist.remove(stringExtra);
                ValueChainPartner.this.isImageDeleted = true;
                try {
                    File file = new File(stringExtra);
                    if (file.exists()) {
                        file.delete();
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                    PLog.e(ValueChainPartner.this.tag, e);
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
        if (farmerType.equalsIgnoreCase(ConstantsPMC.TYPE_Retailer)) {
            if (ConstantsPMC.getInstance().getIsTrainingORLive() != 2) {
                if (GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_retailerDetailsText()) == null) {
                    CustomActionBar.initActionBar(this, "Value Chain Partner(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
                } else {
                    CustomActionBar.initActionBar(this, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_retailerDetailsText()) + "(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
                }
            } else if (GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_retailerDetailsText()) == null) {
                CustomActionBar.initActionBar(this, "Value Chain Partner(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
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
        settingTabs();
        gettingData();
        enableGeoDetailsLayout();
        createOperationAttributes();
        bindOperations();
        this.tabHost.setOnTabChangedListener(new TabHost.OnTabChangeListener() { // from class: com.conceptglobal.pmc.fragments.ValueChainPartner.1
            @Override // android.widget.TabHost.OnTabChangeListener
            public void onTabChanged(String str) {
                UtilDeclarations.hideInputKeyboard(ValueChainPartner.this.context);
                if (ValueChainPartner.this.getWindow().getCurrentFocus() != null && ValueChainPartner.this.getWindow().getCurrentFocus().hasFocus()) {
                    ValueChainPartner.this.getWindow().getCurrentFocus().clearFocus();
                }
                if (ValueChainPartner.this.tabHost.getCurrentTab() != 1) {
                    return;
                }
                ValueChainPartner.this.setListviewForSales();
            }
        });
        this.gridView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.conceptglobal.pmc.fragments.ValueChainPartner.2
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                ValueChainPartner valueChainPartner = ValueChainPartner.this;
                valueChainPartner.captureImage(((ImageDetails) valueChainPartner.images.get(i)).getImageId());
            }
        });
        ((FloatingActionButton) findViewById(R.id.fab)).setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.ValueChainPartner.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ValueChainPartner.this.images.size() <= 4) {
                    ValueChainPartner.this.captureImage(0L);
                } else {
                    Toast.makeText(ValueChainPartner.this.getApplication(), ValueChainPartner.this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_maxImagesToast()), 1).show();
                }
            }
        });
        LocalBroadcastManager.getInstance(this).registerReceiver(this.message, new IntentFilter("send"));
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
        ArrayList<TextView> arrayList = this.geoDetailsTV;
        TextView textView = new TextView(this);
        this.tvstateid = textView;
        arrayList.add(textView);
        ArrayList<TextView> arrayList2 = this.geoDetailsTV;
        TextView textView2 = new TextView(this);
        this.tvdistrictid = textView2;
        arrayList2.add(textView2);
        ArrayList<TextView> arrayList3 = this.geoDetailsTV;
        TextView textView3 = new TextView(this);
        this.tvmandalid = textView3;
        arrayList3.add(textView3);
        ArrayList<TextView> arrayList4 = this.geoDetailsTV;
        TextView textView4 = new TextView(this);
        this.tvvillageid = textView4;
        arrayList4.add(textView4);
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
        TextView textView5 = (TextView) this.tabHost.findViewById(R.id.tv_latitude_personal_details);
        this.tvLatitude = textView5;
        textView5.setHint(this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_latitudeText()));
        TextView textView6 = (TextView) this.tabHost.findViewById(R.id.tv_longitude_personal_details);
        this.tvLongitude = textView6;
        textView6.setHint(this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_longitudeText()));
        TextView textView7 = (TextView) this.tabHost.findViewById(R.id.tv_allsalesvalues);
        this.tvAllSalesvalues = textView7;
        textView7.setText(this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_salesValueText()));
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
        if (intent.hasExtra("SegmentId")) {
            this.segmentID = intent.getIntExtra("SegmentId", 2);
        }
        if (intent.hasExtra("fromTransaction")) {
            this.isFromTransaction = intent.getIntExtra("fromTransaction", 1);
        }
        try {
            if (this.companyOrCropTab.equalsIgnoreCase("Crops")) {
                if (this.isextrasales == 1) {
                    this.listDealerCrops = this.getDataFromDB.getDealerCropSalesDetails(Queries.getInstance().getDealerHybrids(this.contactID));
                    return;
                } else {
                    this.listDealerCrops = this.getDataFromDB.getDealerCropSalesDetails(Queries.getInstance().getDealerCrops(this.contactID));
                    return;
                }
            }
            this.listDealerCompanies = this.getDataFromDB.getCompanySelectionData(Queries.getInstance().getCompaniesAndSales(this.contactID));
        } catch (Exception e) {
            PLog.e(TAG, e);
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
        addTab(this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_profileTabText()), R.drawable.ic_others_wight, getResources().getString(R.string.pmc_tag5));
    }

    private void contactIdIncrement() {
        gettingPdaid();
        this.contactID = (this.dealerMaster.getPDAId() + Calendar.getInstance().getTimeInMillis()) + "";
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
        ValueChainPartner valueChainPartner;
        ValueChainPartner valueChainPartner2 = this;
        String str6 = ConstantsPMC.TYPE_Retailer;
        try {
            valueChainPartner2.mAddDynamicLinear = (LinearLayout) valueChainPartner2.findViewById(R.id.operations_dynamic_LL);
            valueChainPartner2.mAddDynamicLinearForOthers = (LinearLayout) valueChainPartner2.findViewById(R.id.others_operations_dynamic_LL);
            valueChainPartner2.hAttributes = new HashMap<>();
            valueChainPartner2.mattributesnamesArr = new ArrayList<>();
            valueChainPartner2.mOprDatesArr = new ArrayList<>();
            valueChainPartner2.mEntryArr = new ArrayList<>();
            valueChainPartner2.mEntrySpinnerArr = new ArrayList<>();
            valueChainPartner2.mEntryArrIds = new ArrayList<>();
            boolean equalsIgnoreCase = farmerType.equalsIgnoreCase(ConstantsPMC.TYPE_Retailer);
            String str7 = "Dealer";
            String str8 = ConstantsPMC.TYPE_Distributor;
            if (equalsIgnoreCase) {
                valueChainPartner2.attributesArry = valueChainPartner2.getDataFromDB.getDynanicFields(Queries.getInstance().gettingDynamicFields("Personal", "Dealer"));
            } else if (farmerType.equalsIgnoreCase(ConstantsPMC.TYPE_Distributor) || farmerType.equalsIgnoreCase("Dealer")) {
                valueChainPartner2.attributesArry = valueChainPartner2.getDataFromDB.getDynanicFields(Queries.getInstance().gettingDynamicFields("Personal", ConstantsPMC.TYPE_Distributor));
            }
            int size = valueChainPartner2.attributesArry.size();
            valueChainPartner2.hAttributes.clear();
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
                        addOperationsDynamicLayout(valueChainPartner2.attributesArry.get(i).getDisplayName(), valueChainPartner2.attributesArry.get(i).getControlType(), valueChainPartner2.attributesArry.get(i).getIsMandatory(), valueChainPartner2.attributesArry.get(i).getDbColumnName(), valueChainPartner2.attributesArry.get(i).getDbquery(), valueChainPartner2.attributesArry.get(i).getValidationType(), valueChainPartner2.attributesArry.get(i).getValidationExpression(), valueChainPartner2.attributesArry.get(i).getMaxLength(), valueChainPartner2.attributesArry.get(i).getMinLength(), valueChainPartner2.attributesArry.get(i).getMaxValue(), valueChainPartner2.attributesArry.get(i).getMinValue(), valueChainPartner2.attributesArry.get(i).getDecimalLength(), valueChainPartner2.mAddDynamicLinear, valueChainPartner2.attributesArry.get(i).getIsTransactionEditable(), i2, valueChainPartner2.attributesArry.get(i));
                        valueChainPartner2 = this;
                        valueChainPartner2.dynamicColumnnames.append(valueChainPartner2.attributesArry.get(i2).getDbColumnName() + str11);
                        i = i2 + 1;
                        str9 = str11;
                        str6 = str10;
                        size = i3;
                        str8 = str12;
                        str7 = str13;
                    } catch (Exception e) {
                        e = e;
                        valueChainPartner2 = this;
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
                valueChainPartner2.attributesArryForOthers = valueChainPartner2.getDataFromDB.getDynanicFields(Queries.getInstance().gettingDynamicFields("Others", str));
                str2 = str16;
            } else {
                str = str17;
                str2 = str16;
                if (farmerType.equalsIgnoreCase(str2) || farmerType.equalsIgnoreCase(str)) {
                    valueChainPartner2.attributesArryForOthers = valueChainPartner2.getDataFromDB.getDynanicFields(Queries.getInstance().gettingDynamicFields("Others", str2));
                }
            }
            if (valueChainPartner2.attributesArryForOthers.size() > 0) {
                valueChainPartner2.attributesArry.addAll(valueChainPartner2.attributesArryForOthers);
                int i5 = 0;
                while (i5 < valueChainPartner2.attributesArryForOthers.size()) {
                    int i6 = i5;
                    String str19 = str2;
                    String str20 = str;
                    String str21 = str18;
                    try {
                        addOperationsDynamicLayout(valueChainPartner2.attributesArryForOthers.get(i5).getDisplayName(), valueChainPartner2.attributesArryForOthers.get(i5).getControlType(), valueChainPartner2.attributesArryForOthers.get(i5).getIsMandatory(), valueChainPartner2.attributesArryForOthers.get(i5).getDbColumnName(), valueChainPartner2.attributesArryForOthers.get(i5).getDbquery(), valueChainPartner2.attributesArryForOthers.get(i5).getValidationType(), valueChainPartner2.attributesArryForOthers.get(i5).getValidationExpression(), valueChainPartner2.attributesArryForOthers.get(i5).getMaxLength(), valueChainPartner2.attributesArryForOthers.get(i5).getMinLength(), valueChainPartner2.attributesArryForOthers.get(i5).getMaxValue(), valueChainPartner2.attributesArryForOthers.get(i5).getMinValue(), valueChainPartner2.attributesArryForOthers.get(i5).getDecimalLength(), valueChainPartner2.mAddDynamicLinearForOthers, valueChainPartner2.attributesArryForOthers.get(i5).getIsTransactionEditable(), i6, valueChainPartner2.attributesArryForOthers.get(i5));
                    } catch (Exception e2) {
                        e = e2;
                    }
                    try {
                        this.dynamicColumnnames.append(this.attributesArryForOthers.get(i6).getDbColumnName() + str15);
                        i5 = i6 + 1;
                        valueChainPartner2 = this;
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
                valueChainPartner = valueChainPartner2;
                valueChainPartner.addDisclaimerView(valueChainPartner.mAddDynamicLinearForOthers);
            } else {
                str3 = str2;
                str4 = str;
                str5 = str18;
                valueChainPartner = valueChainPartner2;
            }
            if (i4 > 0 || valueChainPartner.attributesArryForOthers.size() > 0) {
                valueChainPartner.dynamicColumnnames.deleteCharAt(r0.length() - 1);
                String sb = valueChainPartner.dynamicColumnnames.toString();
                if (farmerType.equalsIgnoreCase(str5)) {
                    valueChainPartner.bindQuery = Queries.getInstance().bindQueryInAddRetailer(sb, valueChainPartner.contactID, 2);
                } else if (farmerType.equalsIgnoreCase(str3) || farmerType.equalsIgnoreCase(str4)) {
                    valueChainPartner.bindQuery = Queries.getInstance().bindQueryInAddRetailer(sb, valueChainPartner.contactID, 3);
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

    /* JADX WARN: Removed duplicated region for block: B:103:0x03f7  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x03e8  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x047a  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x04fb  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0530  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0537  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x051a  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0487  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void addOperationsDynamicLayout(java.lang.String r21, java.lang.String r22, java.lang.String r23, java.lang.String r24, java.lang.String r25, java.lang.String r26, java.lang.String r27, int r28, int r29, int r30, int r31, int r32, android.widget.LinearLayout r33, int r34, int r35, com.conceptglobal.pmc.model.DynamicFields r36) {
        /*
            Method dump skipped, instructions count: 1484
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.fragments.ValueChainPartner.addOperationsDynamicLayout(java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, int, int, int, int, int, android.widget.LinearLayout, int, int, com.conceptglobal.pmc.model.DynamicFields):void");
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
        this.etCropName.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.ValueChainPartner.9
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                UtilDeclarations.hideInputKeyboard(ValueChainPartner.this.context);
                try {
                    if (ValueChainPartner.this.isextrasales == 1) {
                        ListPopupOne listPopupOne = new ListPopupOne(ValueChainPartner.this.context, ValueChainPartner.this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_selectText()) + " " + ValueChainPartner.this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_cropFilterText()), Queries.getInstance().gettingDropdownValues(2), view, ValueChainPartner.this.tvCropId);
                        listPopupOne.getWindow().getAttributes().windowAnimations = R.style.PauseDialogAnimation;
                        listPopupOne.show();
                        listPopupOne.getWindow().setSoftInputMode(3);
                    } else {
                        ListPopupOne listPopupOne2 = new ListPopupOne(ValueChainPartner.this.context, ValueChainPartner.this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_selectText()) + " " + ValueChainPartner.this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_cropFilterText()), Queries.getInstance().gettingDropdownValues(1), view, ValueChainPartner.this.tvCropId);
                        listPopupOne2.getWindow().getAttributes().windowAnimations = R.style.PauseDialogAnimation;
                        listPopupOne2.show();
                        listPopupOne2.getWindow().setSoftInputMode(3);
                    }
                } catch (Exception e3) {
                    PLog.e(ValueChainPartner.this.tag, e3);
                }
            }
        });
        this.tvCropId.addTextChangedListener(new TextWatcher() { // from class: com.conceptglobal.pmc.fragments.ValueChainPartner.10
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (ValueChainPartner.this.tvCropId.getText().toString().trim().length() > 0) {
                    try {
                        if (Integer.parseInt(ValueChainPartner.this.tvCropId.getText().toString()) == 0) {
                            ValueChainPartner.this.etCropSales.setVisibility(8);
                            return;
                        }
                        try {
                            String stringValue = ValueChainPartner.this.getDataFromDB.getStringValue(Queries.getInstance().getCropSales(ValueChainPartner.this.contactID, Integer.parseInt(ValueChainPartner.this.tvCropId.getText().toString())));
                            if (stringValue == null || stringValue.trim().length() <= 0) {
                                ValueChainPartner.this.etCropSales.setText(ConstantDeclarations.getInstance().getEMPTY());
                            } else {
                                ValueChainPartner.this.etCropSales.setText(stringValue);
                            }
                            if (ValueChainPartner.this.isextrasales == 1) {
                                String stringValue2 = ValueChainPartner.this.getDataFromDB.getStringValue(Queries.getInstance().getCropSales1(ValueChainPartner.this.contactID, Integer.parseInt(ValueChainPartner.this.tvCropId.getText().toString())));
                                if (stringValue2 == null || stringValue2.trim().length() <= 0) {
                                    ValueChainPartner.this.etCropDos.setText(ConstantDeclarations.getInstance().getEMPTY());
                                } else {
                                    ValueChainPartner.this.etCropDos.setText(stringValue2);
                                }
                            }
                        } catch (SQLiteDoneException e3) {
                            PLog.e(ValueChainPartner.this.tag, e3);
                            ValueChainPartner.this.etCropSales.setText(ConstantDeclarations.getInstance().getEMPTY());
                        }
                    } catch (Exception e4) {
                        PLog.e(ValueChainPartner.this.tag, e4);
                    }
                }
            }
        });
        button.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.ValueChainPartner.11
            private DealerCropMapping dealerCropMapping;

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                UtilDeclarations.hideInputKeyboard(ValueChainPartner.this.context);
                String trim = ValueChainPartner.this.etCropName.getText().toString().trim();
                String trim2 = ValueChainPartner.this.etCropSales.getText().toString().trim();
                String trim3 = ValueChainPartner.this.etCropDos.getText().toString().trim();
                if (trim == null || trim.equals("")) {
                    Toast.makeText(ValueChainPartner.this.context, ValueChainPartner.this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_pleaseSelectCropToast()), 0).show();
                    return;
                }
                if (trim2 == null || trim2.equals("") || trim2.equals(".")) {
                    Toast.makeText(ValueChainPartner.this.context, ValueChainPartner.this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_enterSalesDetailsToast()), 0).show();
                    return;
                }
                if (ValueChainPartner.this.isextrasales == 1 && (ValueChainPartner.this.etCropDos.getText().toString().trim() == null || ValueChainPartner.this.etCropDos.getText().toString().trim().equals(""))) {
                    Toast.makeText(ValueChainPartner.this.context, ValueChainPartner.this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_enterSalesDetailsToast()), 0).show();
                    return;
                }
                this.dealerCropMapping = new DealerCropMapping();
                try {
                    ValueChainPartner valueChainPartner = ValueChainPartner.this;
                    String filterfromlistCrops = valueChainPartner.filterfromlistCrops(valueChainPartner.contactID, Integer.parseInt(ValueChainPartner.this.tvCropId.getText().toString()));
                    if (filterfromlistCrops != null && filterfromlistCrops.trim().length() > 0) {
                        Toast.makeText(ValueChainPartner.this.context, "Crop/Hybrid already exists, please delete old entry to continue.", 0).show();
                        return;
                    }
                    try {
                        this.dealerCropMapping.setCropSales(Double.parseDouble(trim2));
                        this.dealerCropMapping.setContactId(ValueChainPartner.this.contactID);
                        this.dealerCropMapping.setCropId(Integer.parseInt(ValueChainPartner.this.tvCropId.getText().toString()));
                        this.dealerCropMapping.setCropName(trim);
                        if (ValueChainPartner.this.isextrasales == 1) {
                            this.dealerCropMapping.setCropName(trim3);
                        }
                    } catch (Exception e3) {
                        PLog.e(ValueChainPartner.this.tag, e3);
                    }
                    ValueChainPartner.this.listDealerCrops.add(this.dealerCropMapping);
                    ValueChainPartner.this.setListviewForSales();
                    dialog.dismiss();
                } catch (Exception e4) {
                    PLog.e(ValueChainPartner.this.tag, e4);
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
            if (i != 1) {
                return null;
            }
            DatePickerDialog datePickerDialog = new DatePickerDialog(this, this.mDateSetListener_Yearless, this.mYear, this.mMonth, this.mDay) { // from class: com.conceptglobal.pmc.fragments.ValueChainPartner.14
                @Override // android.app.DatePickerDialog, android.widget.DatePicker.OnDateChangedListener
                public void onDateChanged(DatePicker datePicker, int i2, int i3, int i4) {
                    setTitle(ValueChainPartner.this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_selectDayMonthDPTitle()));
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
        builder.setMessage(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_addCustomerGoBackDialog())).setCancelable(false).setNegativeButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_cancelDialogButtonText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.ValueChainPartner.17
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        });
        builder.setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.ValueChainPartner.18
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
                ValueChainPartner.this.finish();
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
        findItem.setTitle(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_draftFarmerText()));
        return super.onCreateOptionsMenu(menu);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
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
            case R.id.btn_get_latlong_retailer_personal_details /* 2131296420 */:
                fetchLocation();
                break;
            case R.id.btn_save /* 2131296431 */:
                this.status = 1;
                if (validation()) {
                    for (int i = 0; i < this.images.size(); i++) {
                        try {
                            InsertDataIntoDB.UpdateImageServerStatus(this.images.get(i).getImageId());
                        } catch (Exception e) {
                            PLog.e(this.tag, e, 0);
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

    /* JADX WARN: Removed duplicated region for block: B:26:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0178  */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onActivityResult(int r21, int r22, android.content.Intent r23) {
        /*
            Method dump skipped, instructions count: 461
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.fragments.ValueChainPartner.onActivityResult(int, int, android.content.Intent):void");
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
        if (farmerType.equalsIgnoreCase("ValueChain")) {
            dealerMaster.setCustomerTypeID(5);
        } else if (farmerType.equalsIgnoreCase("CropExpert")) {
            dealerMaster.setCustomerTypeID(6);
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
            }
        } catch (Exception e2) {
            PLog.e(this.tag, e2);
            e2.printStackTrace();
        }
        Iterator<DealerCropMapping> it = this.listDealerCrops.iterator();
        while (it.hasNext()) {
            try {
                try {
                    InsertDataIntoDB.insertCropSelectionDetails(it.next());
                } catch (Exception e3) {
                    PLog.e(this.tag, e3);
                }
            } finally {
                dbInstance.closeDatabase();
            }
        }
        try {
            SQLiteDatabase openDatabase = dbInstance.openDatabase();
            Iterator<Integer> it2 = deletedCropIds.iterator();
            while (it2.hasNext()) {
                GetDataFromDB.getInstance().executeRawQueryOnDBInLoop(Queries.getInstance().deleteDealerCropDataByMappingId(this.contactID, it2.next().intValue()), openDatabase);
            }
        } catch (Exception e4) {
            PLog.e(TAG, e4);
        }
    }

    private class DataInsertion extends AsyncTask<Void, Void, Void> {
        private Context _mContext;
        private ProgressDialog _mDialog;

        public DataInsertion(Context context) {
            this._mContext = context;
            ProgressDialog show = ProgressDialog.show(context, "", ValueChainPartner.this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_pwDataSaving()));
            this._mDialog = show;
            show.setCancelable(false);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Void doInBackground(Void... voidArr) {
            try {
                ValueChainPartner.this.dataInsertion();
                ValueChainPartner.this.dataInsertMultiAttributeValues();
                return null;
            } catch (Exception e) {
                PLog.e(ValueChainPartner.this.tag, e);
                return null;
            }
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(Void r8) {
            ProgressDialog progressDialog = this._mDialog;
            if (progressDialog != null && progressDialog.isShowing() && !ValueChainPartner.this.isFinishing()) {
                this._mDialog.dismiss();
            }
            Toast.makeText(ValueChainPartner.this.getApplicationContext(), ValueChainPartner.this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_dataSavedSuccessfullyDialog()), 0).show();
            if (ValueChainPartner.this.isFromSelfAssignment) {
                Intent intent = new Intent(ValueChainPartner.this.context, (Class<?>) ListSelectionActivity.class);
                intent.putExtra("FarmerId", ValueChainPartner.this.contactID);
                intent.putExtra(ConstantDeclarations.getInstance().getKEYSELECTIONQUERY(), Queries.getInstance().getActivtiesListBySegment(ValueChainPartner.this.segmentID));
                ((Activity) ValueChainPartner.this.context).startActivityForResult(intent, 2);
            } else if (ValueChainPartner.this.isFromTestimonal) {
                Intent intent2 = new Intent(ValueChainPartner.this.context, (Class<?>) SAAttributeActivityCopy.class);
                intent2.putExtra(ConstantDeclarations.getInstance().getKEYFARMERID(), ValueChainPartner.this.contactID);
                intent2.putExtra(ConstantDeclarations.getInstance().getKEYSELECTIONQUERY(), Queries.getInstance().getActivtiesListBySegment(ValueChainPartner.this.segmentID));
                intent2.putExtra("SEGMENTID", ValueChainPartner.this.segmentID);
                ValueChainPartner.this.startActivity(intent2);
                ValueChainPartner.this.finish();
            } else if (ValueChainPartner.this.isFromFeedBack) {
                Intent intent3 = new Intent(ValueChainPartner.this.context, (Class<?>) ListSelectionActivity.class);
                intent3.putExtra(ConstantDeclarations.getInstance().getKEYFARMERID(), ValueChainPartner.this.contactID);
                intent3.putExtra(ConstantDeclarations.getInstance().getKEYSELECTIONQUERY(), Queries.getInstance().getFBFActivtiesListBySegment(ValueChainPartner.this.segmentID));
                intent3.putExtra("SEGMENTID", ValueChainPartner.this.segmentID);
                intent3.putExtra("isFrom", ValueChainPartner.this.isFromFeedBack);
                ((Activity) ValueChainPartner.this.context).startActivityForResult(intent3, 2);
            } else if (!ValueChainPartner.this.isFromSurvey) {
                if (ValueChainPartner.this.isFromTransaction == 1) {
                    ValueChainPartner.this.finish();
                } else {
                    Intent intent4 = new Intent(ValueChainPartner.this, (Class<?>) DraftList.class);
                    if (!ValueChainPartner.farmerType.equalsIgnoreCase(ConstantsPMC.TYPE_Retailer)) {
                        if (ValueChainPartner.farmerType.equalsIgnoreCase(ConstantsPMC.TYPE_Distributor) || ValueChainPartner.farmerType.equalsIgnoreCase("Dealer")) {
                            intent4.putExtra("farmerType", ConstantsPMC.TYPE_Distributor);
                        }
                    } else {
                        intent4.putExtra("farmerType", ConstantsPMC.TYPE_Retailer);
                    }
                    intent4.addFlags(335544320);
                    ValueChainPartner.this.startActivity(intent4);
                    ValueChainPartner.this.finish();
                }
            } else {
                Intent intent5 = new Intent();
                intent5.putExtra(ConstantDeclarations.getInstance().getKEYFARMERID(), ValueChainPartner.this.contactID);
                intent5.putExtra("SEGMENTID", ValueChainPartner.this.segmentID);
                intent5.putExtra("isFrom", ValueChainPartner.this.isFromSurvey);
                ValueChainPartner.this.setResult(-1, intent5);
                ValueChainPartner.this.finish();
            }
            if (!UtilDeclarations.isOnline(ValueChainPartner.this.context) || UtilDeclarations.isServiceRunning(ValueChainPartner.this.getApplicationContext(), SyncDataService.class)) {
                return;
            }
            Toast.makeText(ValueChainPartner.this.getBaseContext(), "Service initiated", 0);
            new SendDataServiceUtil(ValueChainPartner.this).startService();
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
    /* JADX WARN: Removed duplicated region for block: B:109:0x0fc4 A[Catch: Exception -> 0x10be, TryCatch #1 {Exception -> 0x10be, blocks: (B:482:0x0036, B:11:0x0057, B:16:0x0078, B:21:0x0099, B:26:0x00ba, B:31:0x00db, B:36:0x00fc, B:41:0x011e, B:46:0x0140, B:51:0x0162, B:56:0x0184, B:61:0x01a6, B:384:0x05cf, B:386:0x05dd, B:390:0x05f1, B:392:0x05ff, B:394:0x060d, B:396:0x0623, B:398:0x0653, B:402:0x0659, B:403:0x0876, B:405:0x0884, B:407:0x089a, B:409:0x08f4, B:417:0x0667, B:115:0x109e, B:118:0x10a6, B:120:0x10ac, B:125:0x10c3, B:128:0x10cb, B:130:0x10d1, B:136:0x10e3, B:139:0x10eb, B:142:0x10f3, B:144:0x10f9, B:150:0x1113, B:153:0x111b, B:155:0x1121, B:161:0x1139, B:164:0x1141, B:167:0x1149, B:169:0x114f, B:233:0x11d5, B:246:0x11d8, B:248:0x11e2, B:250:0x11f6, B:252:0x120a, B:254:0x121e, B:255:0x1249, B:257:0x1253, B:259:0x125d, B:261:0x1271, B:263:0x1285, B:265:0x1299, B:420:0x06a2, B:422:0x06b0, B:424:0x06be, B:426:0x06d4, B:428:0x06f6, B:430:0x0733, B:432:0x074d, B:434:0x075b, B:436:0x0769, B:438:0x077f, B:440:0x07a1, B:442:0x07df, B:443:0x07eb, B:445:0x0801, B:447:0x082d, B:449:0x086a, B:92:0x0caf, B:94:0x0cbd, B:96:0x0ccb, B:98:0x0ce1, B:100:0x0d11, B:104:0x0d17, B:105:0x0d25, B:107:0x0fb6, B:109:0x0fc4, B:111:0x0fda, B:272:0x1034, B:283:0x0d60, B:285:0x0d6e, B:287:0x0d7c, B:289:0x0d92, B:291:0x0db4, B:293:0x0df1, B:294:0x0dff, B:296:0x0e15, B:298:0x0e41, B:300:0x0e7e, B:302:0x0e8c, B:304:0x0e9a, B:306:0x0ea8, B:308:0x0ebe, B:310:0x0ee0, B:312:0x0f1d, B:313:0x0f2b, B:315:0x0f41, B:317:0x0f6d, B:319:0x0faa), top: B:481:0x0036 }] */
    /* JADX WARN: Removed duplicated region for block: B:180:0x12dd  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x13a0  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x142a  */
    /* JADX WARN: Removed duplicated region for block: B:204:0x14ed  */
    /* JADX WARN: Removed duplicated region for block: B:248:0x11e2 A[Catch: Exception -> 0x10be, TryCatch #1 {Exception -> 0x10be, blocks: (B:482:0x0036, B:11:0x0057, B:16:0x0078, B:21:0x0099, B:26:0x00ba, B:31:0x00db, B:36:0x00fc, B:41:0x011e, B:46:0x0140, B:51:0x0162, B:56:0x0184, B:61:0x01a6, B:384:0x05cf, B:386:0x05dd, B:390:0x05f1, B:392:0x05ff, B:394:0x060d, B:396:0x0623, B:398:0x0653, B:402:0x0659, B:403:0x0876, B:405:0x0884, B:407:0x089a, B:409:0x08f4, B:417:0x0667, B:115:0x109e, B:118:0x10a6, B:120:0x10ac, B:125:0x10c3, B:128:0x10cb, B:130:0x10d1, B:136:0x10e3, B:139:0x10eb, B:142:0x10f3, B:144:0x10f9, B:150:0x1113, B:153:0x111b, B:155:0x1121, B:161:0x1139, B:164:0x1141, B:167:0x1149, B:169:0x114f, B:233:0x11d5, B:246:0x11d8, B:248:0x11e2, B:250:0x11f6, B:252:0x120a, B:254:0x121e, B:255:0x1249, B:257:0x1253, B:259:0x125d, B:261:0x1271, B:263:0x1285, B:265:0x1299, B:420:0x06a2, B:422:0x06b0, B:424:0x06be, B:426:0x06d4, B:428:0x06f6, B:430:0x0733, B:432:0x074d, B:434:0x075b, B:436:0x0769, B:438:0x077f, B:440:0x07a1, B:442:0x07df, B:443:0x07eb, B:445:0x0801, B:447:0x082d, B:449:0x086a, B:92:0x0caf, B:94:0x0cbd, B:96:0x0ccb, B:98:0x0ce1, B:100:0x0d11, B:104:0x0d17, B:105:0x0d25, B:107:0x0fb6, B:109:0x0fc4, B:111:0x0fda, B:272:0x1034, B:283:0x0d60, B:285:0x0d6e, B:287:0x0d7c, B:289:0x0d92, B:291:0x0db4, B:293:0x0df1, B:294:0x0dff, B:296:0x0e15, B:298:0x0e41, B:300:0x0e7e, B:302:0x0e8c, B:304:0x0e9a, B:306:0x0ea8, B:308:0x0ebe, B:310:0x0ee0, B:312:0x0f1d, B:313:0x0f2b, B:315:0x0f41, B:317:0x0f6d, B:319:0x0faa), top: B:481:0x0036 }] */
    /* JADX WARN: Removed duplicated region for block: B:274:0x1046 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:282:0x1086 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:285:0x0d6e A[Catch: Exception -> 0x10be, TryCatch #1 {Exception -> 0x10be, blocks: (B:482:0x0036, B:11:0x0057, B:16:0x0078, B:21:0x0099, B:26:0x00ba, B:31:0x00db, B:36:0x00fc, B:41:0x011e, B:46:0x0140, B:51:0x0162, B:56:0x0184, B:61:0x01a6, B:384:0x05cf, B:386:0x05dd, B:390:0x05f1, B:392:0x05ff, B:394:0x060d, B:396:0x0623, B:398:0x0653, B:402:0x0659, B:403:0x0876, B:405:0x0884, B:407:0x089a, B:409:0x08f4, B:417:0x0667, B:115:0x109e, B:118:0x10a6, B:120:0x10ac, B:125:0x10c3, B:128:0x10cb, B:130:0x10d1, B:136:0x10e3, B:139:0x10eb, B:142:0x10f3, B:144:0x10f9, B:150:0x1113, B:153:0x111b, B:155:0x1121, B:161:0x1139, B:164:0x1141, B:167:0x1149, B:169:0x114f, B:233:0x11d5, B:246:0x11d8, B:248:0x11e2, B:250:0x11f6, B:252:0x120a, B:254:0x121e, B:255:0x1249, B:257:0x1253, B:259:0x125d, B:261:0x1271, B:263:0x1285, B:265:0x1299, B:420:0x06a2, B:422:0x06b0, B:424:0x06be, B:426:0x06d4, B:428:0x06f6, B:430:0x0733, B:432:0x074d, B:434:0x075b, B:436:0x0769, B:438:0x077f, B:440:0x07a1, B:442:0x07df, B:443:0x07eb, B:445:0x0801, B:447:0x082d, B:449:0x086a, B:92:0x0caf, B:94:0x0cbd, B:96:0x0ccb, B:98:0x0ce1, B:100:0x0d11, B:104:0x0d17, B:105:0x0d25, B:107:0x0fb6, B:109:0x0fc4, B:111:0x0fda, B:272:0x1034, B:283:0x0d60, B:285:0x0d6e, B:287:0x0d7c, B:289:0x0d92, B:291:0x0db4, B:293:0x0df1, B:294:0x0dff, B:296:0x0e15, B:298:0x0e41, B:300:0x0e7e, B:302:0x0e8c, B:304:0x0e9a, B:306:0x0ea8, B:308:0x0ebe, B:310:0x0ee0, B:312:0x0f1d, B:313:0x0f2b, B:315:0x0f41, B:317:0x0f6d, B:319:0x0faa), top: B:481:0x0036 }] */
    /* JADX WARN: Removed duplicated region for block: B:304:0x0e9a A[Catch: Exception -> 0x10be, TryCatch #1 {Exception -> 0x10be, blocks: (B:482:0x0036, B:11:0x0057, B:16:0x0078, B:21:0x0099, B:26:0x00ba, B:31:0x00db, B:36:0x00fc, B:41:0x011e, B:46:0x0140, B:51:0x0162, B:56:0x0184, B:61:0x01a6, B:384:0x05cf, B:386:0x05dd, B:390:0x05f1, B:392:0x05ff, B:394:0x060d, B:396:0x0623, B:398:0x0653, B:402:0x0659, B:403:0x0876, B:405:0x0884, B:407:0x089a, B:409:0x08f4, B:417:0x0667, B:115:0x109e, B:118:0x10a6, B:120:0x10ac, B:125:0x10c3, B:128:0x10cb, B:130:0x10d1, B:136:0x10e3, B:139:0x10eb, B:142:0x10f3, B:144:0x10f9, B:150:0x1113, B:153:0x111b, B:155:0x1121, B:161:0x1139, B:164:0x1141, B:167:0x1149, B:169:0x114f, B:233:0x11d5, B:246:0x11d8, B:248:0x11e2, B:250:0x11f6, B:252:0x120a, B:254:0x121e, B:255:0x1249, B:257:0x1253, B:259:0x125d, B:261:0x1271, B:263:0x1285, B:265:0x1299, B:420:0x06a2, B:422:0x06b0, B:424:0x06be, B:426:0x06d4, B:428:0x06f6, B:430:0x0733, B:432:0x074d, B:434:0x075b, B:436:0x0769, B:438:0x077f, B:440:0x07a1, B:442:0x07df, B:443:0x07eb, B:445:0x0801, B:447:0x082d, B:449:0x086a, B:92:0x0caf, B:94:0x0cbd, B:96:0x0ccb, B:98:0x0ce1, B:100:0x0d11, B:104:0x0d17, B:105:0x0d25, B:107:0x0fb6, B:109:0x0fc4, B:111:0x0fda, B:272:0x1034, B:283:0x0d60, B:285:0x0d6e, B:287:0x0d7c, B:289:0x0d92, B:291:0x0db4, B:293:0x0df1, B:294:0x0dff, B:296:0x0e15, B:298:0x0e41, B:300:0x0e7e, B:302:0x0e8c, B:304:0x0e9a, B:306:0x0ea8, B:308:0x0ebe, B:310:0x0ee0, B:312:0x0f1d, B:313:0x0f2b, B:315:0x0f41, B:317:0x0f6d, B:319:0x0faa), top: B:481:0x0036 }] */
    /* JADX WARN: Removed duplicated region for block: B:308:0x0ebe A[Catch: Exception -> 0x10be, TryCatch #1 {Exception -> 0x10be, blocks: (B:482:0x0036, B:11:0x0057, B:16:0x0078, B:21:0x0099, B:26:0x00ba, B:31:0x00db, B:36:0x00fc, B:41:0x011e, B:46:0x0140, B:51:0x0162, B:56:0x0184, B:61:0x01a6, B:384:0x05cf, B:386:0x05dd, B:390:0x05f1, B:392:0x05ff, B:394:0x060d, B:396:0x0623, B:398:0x0653, B:402:0x0659, B:403:0x0876, B:405:0x0884, B:407:0x089a, B:409:0x08f4, B:417:0x0667, B:115:0x109e, B:118:0x10a6, B:120:0x10ac, B:125:0x10c3, B:128:0x10cb, B:130:0x10d1, B:136:0x10e3, B:139:0x10eb, B:142:0x10f3, B:144:0x10f9, B:150:0x1113, B:153:0x111b, B:155:0x1121, B:161:0x1139, B:164:0x1141, B:167:0x1149, B:169:0x114f, B:233:0x11d5, B:246:0x11d8, B:248:0x11e2, B:250:0x11f6, B:252:0x120a, B:254:0x121e, B:255:0x1249, B:257:0x1253, B:259:0x125d, B:261:0x1271, B:263:0x1285, B:265:0x1299, B:420:0x06a2, B:422:0x06b0, B:424:0x06be, B:426:0x06d4, B:428:0x06f6, B:430:0x0733, B:432:0x074d, B:434:0x075b, B:436:0x0769, B:438:0x077f, B:440:0x07a1, B:442:0x07df, B:443:0x07eb, B:445:0x0801, B:447:0x082d, B:449:0x086a, B:92:0x0caf, B:94:0x0cbd, B:96:0x0ccb, B:98:0x0ce1, B:100:0x0d11, B:104:0x0d17, B:105:0x0d25, B:107:0x0fb6, B:109:0x0fc4, B:111:0x0fda, B:272:0x1034, B:283:0x0d60, B:285:0x0d6e, B:287:0x0d7c, B:289:0x0d92, B:291:0x0db4, B:293:0x0df1, B:294:0x0dff, B:296:0x0e15, B:298:0x0e41, B:300:0x0e7e, B:302:0x0e8c, B:304:0x0e9a, B:306:0x0ea8, B:308:0x0ebe, B:310:0x0ee0, B:312:0x0f1d, B:313:0x0f2b, B:315:0x0f41, B:317:0x0f6d, B:319:0x0faa), top: B:481:0x0036 }] */
    /* JADX WARN: Removed duplicated region for block: B:313:0x0f2b A[Catch: Exception -> 0x10be, TryCatch #1 {Exception -> 0x10be, blocks: (B:482:0x0036, B:11:0x0057, B:16:0x0078, B:21:0x0099, B:26:0x00ba, B:31:0x00db, B:36:0x00fc, B:41:0x011e, B:46:0x0140, B:51:0x0162, B:56:0x0184, B:61:0x01a6, B:384:0x05cf, B:386:0x05dd, B:390:0x05f1, B:392:0x05ff, B:394:0x060d, B:396:0x0623, B:398:0x0653, B:402:0x0659, B:403:0x0876, B:405:0x0884, B:407:0x089a, B:409:0x08f4, B:417:0x0667, B:115:0x109e, B:118:0x10a6, B:120:0x10ac, B:125:0x10c3, B:128:0x10cb, B:130:0x10d1, B:136:0x10e3, B:139:0x10eb, B:142:0x10f3, B:144:0x10f9, B:150:0x1113, B:153:0x111b, B:155:0x1121, B:161:0x1139, B:164:0x1141, B:167:0x1149, B:169:0x114f, B:233:0x11d5, B:246:0x11d8, B:248:0x11e2, B:250:0x11f6, B:252:0x120a, B:254:0x121e, B:255:0x1249, B:257:0x1253, B:259:0x125d, B:261:0x1271, B:263:0x1285, B:265:0x1299, B:420:0x06a2, B:422:0x06b0, B:424:0x06be, B:426:0x06d4, B:428:0x06f6, B:430:0x0733, B:432:0x074d, B:434:0x075b, B:436:0x0769, B:438:0x077f, B:440:0x07a1, B:442:0x07df, B:443:0x07eb, B:445:0x0801, B:447:0x082d, B:449:0x086a, B:92:0x0caf, B:94:0x0cbd, B:96:0x0ccb, B:98:0x0ce1, B:100:0x0d11, B:104:0x0d17, B:105:0x0d25, B:107:0x0fb6, B:109:0x0fc4, B:111:0x0fda, B:272:0x1034, B:283:0x0d60, B:285:0x0d6e, B:287:0x0d7c, B:289:0x0d92, B:291:0x0db4, B:293:0x0df1, B:294:0x0dff, B:296:0x0e15, B:298:0x0e41, B:300:0x0e7e, B:302:0x0e8c, B:304:0x0e9a, B:306:0x0ea8, B:308:0x0ebe, B:310:0x0ee0, B:312:0x0f1d, B:313:0x0f2b, B:315:0x0f41, B:317:0x0f6d, B:319:0x0faa), top: B:481:0x0036 }] */
    /* JADX WARN: Removed duplicated region for block: B:371:0x047b A[Catch: Exception -> 0x1094, TryCatch #6 {Exception -> 0x1094, blocks: (B:352:0x01d8, B:354:0x01f2, B:355:0x0214, B:357:0x0222, B:359:0x0238, B:361:0x0252, B:365:0x02b3, B:367:0x02cd, B:369:0x0467, B:371:0x047b, B:373:0x0495, B:375:0x04b4, B:376:0x04c0, B:378:0x04d2, B:380:0x04e4, B:382:0x0504, B:451:0x0541, B:452:0x054f, B:454:0x0586, B:456:0x05c1, B:458:0x02fd, B:460:0x030b, B:462:0x0326, B:464:0x033c, B:466:0x0356, B:468:0x038a, B:469:0x03a5, B:471:0x03bf, B:472:0x03ee, B:473:0x03fb, B:475:0x0421, B:476:0x0453, B:67:0x094b, B:69:0x0965, B:71:0x0973, B:74:0x0987, B:76:0x0995, B:78:0x09a9, B:80:0x09c3, B:82:0x09f7, B:84:0x0ba0, B:86:0x0bb2, B:88:0x0bc4, B:90:0x0be4, B:322:0x0c21, B:323:0x0c2f, B:325:0x0c66, B:327:0x0ca1, B:329:0x0a12, B:331:0x0a2c, B:332:0x0a5c, B:333:0x0a6a, B:335:0x0a7c, B:337:0x0a96, B:339:0x0aca, B:340:0x0ae5, B:342:0x0aff, B:343:0x0b2e, B:344:0x0b3b, B:346:0x0b61, B:347:0x0b93), top: B:351:0x01d8 }] */
    /* JADX WARN: Removed duplicated region for block: B:378:0x04d2 A[Catch: Exception -> 0x1094, TryCatch #6 {Exception -> 0x1094, blocks: (B:352:0x01d8, B:354:0x01f2, B:355:0x0214, B:357:0x0222, B:359:0x0238, B:361:0x0252, B:365:0x02b3, B:367:0x02cd, B:369:0x0467, B:371:0x047b, B:373:0x0495, B:375:0x04b4, B:376:0x04c0, B:378:0x04d2, B:380:0x04e4, B:382:0x0504, B:451:0x0541, B:452:0x054f, B:454:0x0586, B:456:0x05c1, B:458:0x02fd, B:460:0x030b, B:462:0x0326, B:464:0x033c, B:466:0x0356, B:468:0x038a, B:469:0x03a5, B:471:0x03bf, B:472:0x03ee, B:473:0x03fb, B:475:0x0421, B:476:0x0453, B:67:0x094b, B:69:0x0965, B:71:0x0973, B:74:0x0987, B:76:0x0995, B:78:0x09a9, B:80:0x09c3, B:82:0x09f7, B:84:0x0ba0, B:86:0x0bb2, B:88:0x0bc4, B:90:0x0be4, B:322:0x0c21, B:323:0x0c2f, B:325:0x0c66, B:327:0x0ca1, B:329:0x0a12, B:331:0x0a2c, B:332:0x0a5c, B:333:0x0a6a, B:335:0x0a7c, B:337:0x0a96, B:339:0x0aca, B:340:0x0ae5, B:342:0x0aff, B:343:0x0b2e, B:344:0x0b3b, B:346:0x0b61, B:347:0x0b93), top: B:351:0x01d8 }] */
    /* JADX WARN: Removed duplicated region for block: B:386:0x05dd A[Catch: Exception -> 0x10be, TryCatch #1 {Exception -> 0x10be, blocks: (B:482:0x0036, B:11:0x0057, B:16:0x0078, B:21:0x0099, B:26:0x00ba, B:31:0x00db, B:36:0x00fc, B:41:0x011e, B:46:0x0140, B:51:0x0162, B:56:0x0184, B:61:0x01a6, B:384:0x05cf, B:386:0x05dd, B:390:0x05f1, B:392:0x05ff, B:394:0x060d, B:396:0x0623, B:398:0x0653, B:402:0x0659, B:403:0x0876, B:405:0x0884, B:407:0x089a, B:409:0x08f4, B:417:0x0667, B:115:0x109e, B:118:0x10a6, B:120:0x10ac, B:125:0x10c3, B:128:0x10cb, B:130:0x10d1, B:136:0x10e3, B:139:0x10eb, B:142:0x10f3, B:144:0x10f9, B:150:0x1113, B:153:0x111b, B:155:0x1121, B:161:0x1139, B:164:0x1141, B:167:0x1149, B:169:0x114f, B:233:0x11d5, B:246:0x11d8, B:248:0x11e2, B:250:0x11f6, B:252:0x120a, B:254:0x121e, B:255:0x1249, B:257:0x1253, B:259:0x125d, B:261:0x1271, B:263:0x1285, B:265:0x1299, B:420:0x06a2, B:422:0x06b0, B:424:0x06be, B:426:0x06d4, B:428:0x06f6, B:430:0x0733, B:432:0x074d, B:434:0x075b, B:436:0x0769, B:438:0x077f, B:440:0x07a1, B:442:0x07df, B:443:0x07eb, B:445:0x0801, B:447:0x082d, B:449:0x086a, B:92:0x0caf, B:94:0x0cbd, B:96:0x0ccb, B:98:0x0ce1, B:100:0x0d11, B:104:0x0d17, B:105:0x0d25, B:107:0x0fb6, B:109:0x0fc4, B:111:0x0fda, B:272:0x1034, B:283:0x0d60, B:285:0x0d6e, B:287:0x0d7c, B:289:0x0d92, B:291:0x0db4, B:293:0x0df1, B:294:0x0dff, B:296:0x0e15, B:298:0x0e41, B:300:0x0e7e, B:302:0x0e8c, B:304:0x0e9a, B:306:0x0ea8, B:308:0x0ebe, B:310:0x0ee0, B:312:0x0f1d, B:313:0x0f2b, B:315:0x0f41, B:317:0x0f6d, B:319:0x0faa), top: B:481:0x0036 }] */
    /* JADX WARN: Removed duplicated region for block: B:392:0x05ff A[Catch: Exception -> 0x10be, TryCatch #1 {Exception -> 0x10be, blocks: (B:482:0x0036, B:11:0x0057, B:16:0x0078, B:21:0x0099, B:26:0x00ba, B:31:0x00db, B:36:0x00fc, B:41:0x011e, B:46:0x0140, B:51:0x0162, B:56:0x0184, B:61:0x01a6, B:384:0x05cf, B:386:0x05dd, B:390:0x05f1, B:392:0x05ff, B:394:0x060d, B:396:0x0623, B:398:0x0653, B:402:0x0659, B:403:0x0876, B:405:0x0884, B:407:0x089a, B:409:0x08f4, B:417:0x0667, B:115:0x109e, B:118:0x10a6, B:120:0x10ac, B:125:0x10c3, B:128:0x10cb, B:130:0x10d1, B:136:0x10e3, B:139:0x10eb, B:142:0x10f3, B:144:0x10f9, B:150:0x1113, B:153:0x111b, B:155:0x1121, B:161:0x1139, B:164:0x1141, B:167:0x1149, B:169:0x114f, B:233:0x11d5, B:246:0x11d8, B:248:0x11e2, B:250:0x11f6, B:252:0x120a, B:254:0x121e, B:255:0x1249, B:257:0x1253, B:259:0x125d, B:261:0x1271, B:263:0x1285, B:265:0x1299, B:420:0x06a2, B:422:0x06b0, B:424:0x06be, B:426:0x06d4, B:428:0x06f6, B:430:0x0733, B:432:0x074d, B:434:0x075b, B:436:0x0769, B:438:0x077f, B:440:0x07a1, B:442:0x07df, B:443:0x07eb, B:445:0x0801, B:447:0x082d, B:449:0x086a, B:92:0x0caf, B:94:0x0cbd, B:96:0x0ccb, B:98:0x0ce1, B:100:0x0d11, B:104:0x0d17, B:105:0x0d25, B:107:0x0fb6, B:109:0x0fc4, B:111:0x0fda, B:272:0x1034, B:283:0x0d60, B:285:0x0d6e, B:287:0x0d7c, B:289:0x0d92, B:291:0x0db4, B:293:0x0df1, B:294:0x0dff, B:296:0x0e15, B:298:0x0e41, B:300:0x0e7e, B:302:0x0e8c, B:304:0x0e9a, B:306:0x0ea8, B:308:0x0ebe, B:310:0x0ee0, B:312:0x0f1d, B:313:0x0f2b, B:315:0x0f41, B:317:0x0f6d, B:319:0x0faa), top: B:481:0x0036 }] */
    /* JADX WARN: Removed duplicated region for block: B:405:0x0884 A[Catch: Exception -> 0x10be, TryCatch #1 {Exception -> 0x10be, blocks: (B:482:0x0036, B:11:0x0057, B:16:0x0078, B:21:0x0099, B:26:0x00ba, B:31:0x00db, B:36:0x00fc, B:41:0x011e, B:46:0x0140, B:51:0x0162, B:56:0x0184, B:61:0x01a6, B:384:0x05cf, B:386:0x05dd, B:390:0x05f1, B:392:0x05ff, B:394:0x060d, B:396:0x0623, B:398:0x0653, B:402:0x0659, B:403:0x0876, B:405:0x0884, B:407:0x089a, B:409:0x08f4, B:417:0x0667, B:115:0x109e, B:118:0x10a6, B:120:0x10ac, B:125:0x10c3, B:128:0x10cb, B:130:0x10d1, B:136:0x10e3, B:139:0x10eb, B:142:0x10f3, B:144:0x10f9, B:150:0x1113, B:153:0x111b, B:155:0x1121, B:161:0x1139, B:164:0x1141, B:167:0x1149, B:169:0x114f, B:233:0x11d5, B:246:0x11d8, B:248:0x11e2, B:250:0x11f6, B:252:0x120a, B:254:0x121e, B:255:0x1249, B:257:0x1253, B:259:0x125d, B:261:0x1271, B:263:0x1285, B:265:0x1299, B:420:0x06a2, B:422:0x06b0, B:424:0x06be, B:426:0x06d4, B:428:0x06f6, B:430:0x0733, B:432:0x074d, B:434:0x075b, B:436:0x0769, B:438:0x077f, B:440:0x07a1, B:442:0x07df, B:443:0x07eb, B:445:0x0801, B:447:0x082d, B:449:0x086a, B:92:0x0caf, B:94:0x0cbd, B:96:0x0ccb, B:98:0x0ce1, B:100:0x0d11, B:104:0x0d17, B:105:0x0d25, B:107:0x0fb6, B:109:0x0fc4, B:111:0x0fda, B:272:0x1034, B:283:0x0d60, B:285:0x0d6e, B:287:0x0d7c, B:289:0x0d92, B:291:0x0db4, B:293:0x0df1, B:294:0x0dff, B:296:0x0e15, B:298:0x0e41, B:300:0x0e7e, B:302:0x0e8c, B:304:0x0e9a, B:306:0x0ea8, B:308:0x0ebe, B:310:0x0ee0, B:312:0x0f1d, B:313:0x0f2b, B:315:0x0f41, B:317:0x0f6d, B:319:0x0faa), top: B:481:0x0036 }] */
    /* JADX WARN: Removed duplicated region for block: B:411:0x0906 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:416:0x1086 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:422:0x06b0 A[Catch: Exception -> 0x10be, TryCatch #1 {Exception -> 0x10be, blocks: (B:482:0x0036, B:11:0x0057, B:16:0x0078, B:21:0x0099, B:26:0x00ba, B:31:0x00db, B:36:0x00fc, B:41:0x011e, B:46:0x0140, B:51:0x0162, B:56:0x0184, B:61:0x01a6, B:384:0x05cf, B:386:0x05dd, B:390:0x05f1, B:392:0x05ff, B:394:0x060d, B:396:0x0623, B:398:0x0653, B:402:0x0659, B:403:0x0876, B:405:0x0884, B:407:0x089a, B:409:0x08f4, B:417:0x0667, B:115:0x109e, B:118:0x10a6, B:120:0x10ac, B:125:0x10c3, B:128:0x10cb, B:130:0x10d1, B:136:0x10e3, B:139:0x10eb, B:142:0x10f3, B:144:0x10f9, B:150:0x1113, B:153:0x111b, B:155:0x1121, B:161:0x1139, B:164:0x1141, B:167:0x1149, B:169:0x114f, B:233:0x11d5, B:246:0x11d8, B:248:0x11e2, B:250:0x11f6, B:252:0x120a, B:254:0x121e, B:255:0x1249, B:257:0x1253, B:259:0x125d, B:261:0x1271, B:263:0x1285, B:265:0x1299, B:420:0x06a2, B:422:0x06b0, B:424:0x06be, B:426:0x06d4, B:428:0x06f6, B:430:0x0733, B:432:0x074d, B:434:0x075b, B:436:0x0769, B:438:0x077f, B:440:0x07a1, B:442:0x07df, B:443:0x07eb, B:445:0x0801, B:447:0x082d, B:449:0x086a, B:92:0x0caf, B:94:0x0cbd, B:96:0x0ccb, B:98:0x0ce1, B:100:0x0d11, B:104:0x0d17, B:105:0x0d25, B:107:0x0fb6, B:109:0x0fc4, B:111:0x0fda, B:272:0x1034, B:283:0x0d60, B:285:0x0d6e, B:287:0x0d7c, B:289:0x0d92, B:291:0x0db4, B:293:0x0df1, B:294:0x0dff, B:296:0x0e15, B:298:0x0e41, B:300:0x0e7e, B:302:0x0e8c, B:304:0x0e9a, B:306:0x0ea8, B:308:0x0ebe, B:310:0x0ee0, B:312:0x0f1d, B:313:0x0f2b, B:315:0x0f41, B:317:0x0f6d, B:319:0x0faa), top: B:481:0x0036 }] */
    /* JADX WARN: Removed duplicated region for block: B:434:0x075b A[Catch: Exception -> 0x10be, TryCatch #1 {Exception -> 0x10be, blocks: (B:482:0x0036, B:11:0x0057, B:16:0x0078, B:21:0x0099, B:26:0x00ba, B:31:0x00db, B:36:0x00fc, B:41:0x011e, B:46:0x0140, B:51:0x0162, B:56:0x0184, B:61:0x01a6, B:384:0x05cf, B:386:0x05dd, B:390:0x05f1, B:392:0x05ff, B:394:0x060d, B:396:0x0623, B:398:0x0653, B:402:0x0659, B:403:0x0876, B:405:0x0884, B:407:0x089a, B:409:0x08f4, B:417:0x0667, B:115:0x109e, B:118:0x10a6, B:120:0x10ac, B:125:0x10c3, B:128:0x10cb, B:130:0x10d1, B:136:0x10e3, B:139:0x10eb, B:142:0x10f3, B:144:0x10f9, B:150:0x1113, B:153:0x111b, B:155:0x1121, B:161:0x1139, B:164:0x1141, B:167:0x1149, B:169:0x114f, B:233:0x11d5, B:246:0x11d8, B:248:0x11e2, B:250:0x11f6, B:252:0x120a, B:254:0x121e, B:255:0x1249, B:257:0x1253, B:259:0x125d, B:261:0x1271, B:263:0x1285, B:265:0x1299, B:420:0x06a2, B:422:0x06b0, B:424:0x06be, B:426:0x06d4, B:428:0x06f6, B:430:0x0733, B:432:0x074d, B:434:0x075b, B:436:0x0769, B:438:0x077f, B:440:0x07a1, B:442:0x07df, B:443:0x07eb, B:445:0x0801, B:447:0x082d, B:449:0x086a, B:92:0x0caf, B:94:0x0cbd, B:96:0x0ccb, B:98:0x0ce1, B:100:0x0d11, B:104:0x0d17, B:105:0x0d25, B:107:0x0fb6, B:109:0x0fc4, B:111:0x0fda, B:272:0x1034, B:283:0x0d60, B:285:0x0d6e, B:287:0x0d7c, B:289:0x0d92, B:291:0x0db4, B:293:0x0df1, B:294:0x0dff, B:296:0x0e15, B:298:0x0e41, B:300:0x0e7e, B:302:0x0e8c, B:304:0x0e9a, B:306:0x0ea8, B:308:0x0ebe, B:310:0x0ee0, B:312:0x0f1d, B:313:0x0f2b, B:315:0x0f41, B:317:0x0f6d, B:319:0x0faa), top: B:481:0x0036 }] */
    /* JADX WARN: Removed duplicated region for block: B:438:0x077f A[Catch: Exception -> 0x10be, TryCatch #1 {Exception -> 0x10be, blocks: (B:482:0x0036, B:11:0x0057, B:16:0x0078, B:21:0x0099, B:26:0x00ba, B:31:0x00db, B:36:0x00fc, B:41:0x011e, B:46:0x0140, B:51:0x0162, B:56:0x0184, B:61:0x01a6, B:384:0x05cf, B:386:0x05dd, B:390:0x05f1, B:392:0x05ff, B:394:0x060d, B:396:0x0623, B:398:0x0653, B:402:0x0659, B:403:0x0876, B:405:0x0884, B:407:0x089a, B:409:0x08f4, B:417:0x0667, B:115:0x109e, B:118:0x10a6, B:120:0x10ac, B:125:0x10c3, B:128:0x10cb, B:130:0x10d1, B:136:0x10e3, B:139:0x10eb, B:142:0x10f3, B:144:0x10f9, B:150:0x1113, B:153:0x111b, B:155:0x1121, B:161:0x1139, B:164:0x1141, B:167:0x1149, B:169:0x114f, B:233:0x11d5, B:246:0x11d8, B:248:0x11e2, B:250:0x11f6, B:252:0x120a, B:254:0x121e, B:255:0x1249, B:257:0x1253, B:259:0x125d, B:261:0x1271, B:263:0x1285, B:265:0x1299, B:420:0x06a2, B:422:0x06b0, B:424:0x06be, B:426:0x06d4, B:428:0x06f6, B:430:0x0733, B:432:0x074d, B:434:0x075b, B:436:0x0769, B:438:0x077f, B:440:0x07a1, B:442:0x07df, B:443:0x07eb, B:445:0x0801, B:447:0x082d, B:449:0x086a, B:92:0x0caf, B:94:0x0cbd, B:96:0x0ccb, B:98:0x0ce1, B:100:0x0d11, B:104:0x0d17, B:105:0x0d25, B:107:0x0fb6, B:109:0x0fc4, B:111:0x0fda, B:272:0x1034, B:283:0x0d60, B:285:0x0d6e, B:287:0x0d7c, B:289:0x0d92, B:291:0x0db4, B:293:0x0df1, B:294:0x0dff, B:296:0x0e15, B:298:0x0e41, B:300:0x0e7e, B:302:0x0e8c, B:304:0x0e9a, B:306:0x0ea8, B:308:0x0ebe, B:310:0x0ee0, B:312:0x0f1d, B:313:0x0f2b, B:315:0x0f41, B:317:0x0f6d, B:319:0x0faa), top: B:481:0x0036 }] */
    /* JADX WARN: Removed duplicated region for block: B:445:0x0801 A[Catch: Exception -> 0x10be, TryCatch #1 {Exception -> 0x10be, blocks: (B:482:0x0036, B:11:0x0057, B:16:0x0078, B:21:0x0099, B:26:0x00ba, B:31:0x00db, B:36:0x00fc, B:41:0x011e, B:46:0x0140, B:51:0x0162, B:56:0x0184, B:61:0x01a6, B:384:0x05cf, B:386:0x05dd, B:390:0x05f1, B:392:0x05ff, B:394:0x060d, B:396:0x0623, B:398:0x0653, B:402:0x0659, B:403:0x0876, B:405:0x0884, B:407:0x089a, B:409:0x08f4, B:417:0x0667, B:115:0x109e, B:118:0x10a6, B:120:0x10ac, B:125:0x10c3, B:128:0x10cb, B:130:0x10d1, B:136:0x10e3, B:139:0x10eb, B:142:0x10f3, B:144:0x10f9, B:150:0x1113, B:153:0x111b, B:155:0x1121, B:161:0x1139, B:164:0x1141, B:167:0x1149, B:169:0x114f, B:233:0x11d5, B:246:0x11d8, B:248:0x11e2, B:250:0x11f6, B:252:0x120a, B:254:0x121e, B:255:0x1249, B:257:0x1253, B:259:0x125d, B:261:0x1271, B:263:0x1285, B:265:0x1299, B:420:0x06a2, B:422:0x06b0, B:424:0x06be, B:426:0x06d4, B:428:0x06f6, B:430:0x0733, B:432:0x074d, B:434:0x075b, B:436:0x0769, B:438:0x077f, B:440:0x07a1, B:442:0x07df, B:443:0x07eb, B:445:0x0801, B:447:0x082d, B:449:0x086a, B:92:0x0caf, B:94:0x0cbd, B:96:0x0ccb, B:98:0x0ce1, B:100:0x0d11, B:104:0x0d17, B:105:0x0d25, B:107:0x0fb6, B:109:0x0fc4, B:111:0x0fda, B:272:0x1034, B:283:0x0d60, B:285:0x0d6e, B:287:0x0d7c, B:289:0x0d92, B:291:0x0db4, B:293:0x0df1, B:294:0x0dff, B:296:0x0e15, B:298:0x0e41, B:300:0x0e7e, B:302:0x0e8c, B:304:0x0e9a, B:306:0x0ea8, B:308:0x0ebe, B:310:0x0ee0, B:312:0x0f1d, B:313:0x0f2b, B:315:0x0f41, B:317:0x0f6d, B:319:0x0faa), top: B:481:0x0036 }] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0bb2 A[Catch: Exception -> 0x1094, TryCatch #6 {Exception -> 0x1094, blocks: (B:352:0x01d8, B:354:0x01f2, B:355:0x0214, B:357:0x0222, B:359:0x0238, B:361:0x0252, B:365:0x02b3, B:367:0x02cd, B:369:0x0467, B:371:0x047b, B:373:0x0495, B:375:0x04b4, B:376:0x04c0, B:378:0x04d2, B:380:0x04e4, B:382:0x0504, B:451:0x0541, B:452:0x054f, B:454:0x0586, B:456:0x05c1, B:458:0x02fd, B:460:0x030b, B:462:0x0326, B:464:0x033c, B:466:0x0356, B:468:0x038a, B:469:0x03a5, B:471:0x03bf, B:472:0x03ee, B:473:0x03fb, B:475:0x0421, B:476:0x0453, B:67:0x094b, B:69:0x0965, B:71:0x0973, B:74:0x0987, B:76:0x0995, B:78:0x09a9, B:80:0x09c3, B:82:0x09f7, B:84:0x0ba0, B:86:0x0bb2, B:88:0x0bc4, B:90:0x0be4, B:322:0x0c21, B:323:0x0c2f, B:325:0x0c66, B:327:0x0ca1, B:329:0x0a12, B:331:0x0a2c, B:332:0x0a5c, B:333:0x0a6a, B:335:0x0a7c, B:337:0x0a96, B:339:0x0aca, B:340:0x0ae5, B:342:0x0aff, B:343:0x0b2e, B:344:0x0b3b, B:346:0x0b61, B:347:0x0b93), top: B:351:0x01d8 }] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0cbd A[Catch: Exception -> 0x10be, TryCatch #1 {Exception -> 0x10be, blocks: (B:482:0x0036, B:11:0x0057, B:16:0x0078, B:21:0x0099, B:26:0x00ba, B:31:0x00db, B:36:0x00fc, B:41:0x011e, B:46:0x0140, B:51:0x0162, B:56:0x0184, B:61:0x01a6, B:384:0x05cf, B:386:0x05dd, B:390:0x05f1, B:392:0x05ff, B:394:0x060d, B:396:0x0623, B:398:0x0653, B:402:0x0659, B:403:0x0876, B:405:0x0884, B:407:0x089a, B:409:0x08f4, B:417:0x0667, B:115:0x109e, B:118:0x10a6, B:120:0x10ac, B:125:0x10c3, B:128:0x10cb, B:130:0x10d1, B:136:0x10e3, B:139:0x10eb, B:142:0x10f3, B:144:0x10f9, B:150:0x1113, B:153:0x111b, B:155:0x1121, B:161:0x1139, B:164:0x1141, B:167:0x1149, B:169:0x114f, B:233:0x11d5, B:246:0x11d8, B:248:0x11e2, B:250:0x11f6, B:252:0x120a, B:254:0x121e, B:255:0x1249, B:257:0x1253, B:259:0x125d, B:261:0x1271, B:263:0x1285, B:265:0x1299, B:420:0x06a2, B:422:0x06b0, B:424:0x06be, B:426:0x06d4, B:428:0x06f6, B:430:0x0733, B:432:0x074d, B:434:0x075b, B:436:0x0769, B:438:0x077f, B:440:0x07a1, B:442:0x07df, B:443:0x07eb, B:445:0x0801, B:447:0x082d, B:449:0x086a, B:92:0x0caf, B:94:0x0cbd, B:96:0x0ccb, B:98:0x0ce1, B:100:0x0d11, B:104:0x0d17, B:105:0x0d25, B:107:0x0fb6, B:109:0x0fc4, B:111:0x0fda, B:272:0x1034, B:283:0x0d60, B:285:0x0d6e, B:287:0x0d7c, B:289:0x0d92, B:291:0x0db4, B:293:0x0df1, B:294:0x0dff, B:296:0x0e15, B:298:0x0e41, B:300:0x0e7e, B:302:0x0e8c, B:304:0x0e9a, B:306:0x0ea8, B:308:0x0ebe, B:310:0x0ee0, B:312:0x0f1d, B:313:0x0f2b, B:315:0x0f41, B:317:0x0f6d, B:319:0x0faa), top: B:481:0x0036 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean validation() {
        /*
            Method dump skipped, instructions count: 5483
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.fragments.ValueChainPartner.validation():boolean");
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
            ValueChainPartner.this.createProgressDialog("Please wait while performing validations...");
            ValueChainPartner.this.dialog.show();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Boolean doInBackground(Void... voidArr) {
            boolean validation = ValueChainPartner.this.validation();
            if (validation) {
                publishProgress("Saving data..");
                for (int i = 0; i < ValueChainPartner.this.images.size(); i++) {
                    try {
                        InsertDataIntoDB.UpdateImageServerStatus(((ImageDetails) ValueChainPartner.this.images.get(i)).getImageId());
                    } catch (Exception unused) {
                        this.isSaveSuccess = false;
                    }
                }
                ValueChainPartner.this.dataInsertion();
                ValueChainPartner.this.dataInsertMultiAttributeValues();
            }
            return Boolean.valueOf(validation);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onProgressUpdate(String... strArr) {
            super.onProgressUpdate((Object[]) strArr);
            ValueChainPartner.this.dialogMsgTxtview.setText(strArr[0]);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Boolean bool) {
            super.onPostExecute((DataSaveTask) bool);
            if (!bool.booleanValue()) {
                if (ValueChainPartner.this.dialog != null && ValueChainPartner.this.dialog.isShowing()) {
                    ValueChainPartner.this.dialog.dismiss();
                }
                Toast.makeText(ValueChainPartner.this.getApplicationContext(), ValueChainPartner.this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_validationToast()), 1).show();
                return;
            }
            if (this.isSaveSuccess) {
                if (ValueChainPartner.this.dialog != null && ValueChainPartner.this.dialog.isShowing()) {
                    ValueChainPartner.this.dialog.dismiss();
                }
                Toast.makeText(ValueChainPartner.this.getApplicationContext(), ValueChainPartner.this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_dataSavedSuccessfullyDialog()), 0).show();
                if (ValueChainPartner.this.isFromTransaction == 1) {
                    ValueChainPartner.this.finish();
                } else {
                    Intent intent = new Intent(ValueChainPartner.this, (Class<?>) DraftList.class);
                    if (!ValueChainPartner.farmerType.equalsIgnoreCase(ConstantsPMC.TYPE_Retailer)) {
                        if (ValueChainPartner.farmerType.equalsIgnoreCase(ConstantsPMC.TYPE_Distributor) || ValueChainPartner.farmerType.equalsIgnoreCase("Dealer")) {
                            intent.putExtra("farmerType", ConstantsPMC.TYPE_Distributor);
                        }
                    } else {
                        intent.putExtra("farmerType", ConstantsPMC.TYPE_Retailer);
                    }
                    intent.addFlags(335544320);
                    ValueChainPartner.this.startActivity(intent);
                    ValueChainPartner.this.finish();
                }
                if (!UtilDeclarations.isOnline(ValueChainPartner.this.context) || UtilDeclarations.isServiceRunning(ValueChainPartner.this.getApplicationContext(), SyncDataService.class)) {
                    return;
                }
                Toast.makeText(ValueChainPartner.this.getBaseContext(), "Service initiated", 0);
                new SendDataServiceUtil(ValueChainPartner.this).startService();
                return;
            }
            Toast.makeText(ValueChainPartner.this.getApplicationContext(), "Error! while saving data, try again", 1).show();
        }
    }

    private void setText(final EditText editText, final String str) {
        runOnUiThread(new Runnable() { // from class: com.conceptglobal.pmc.fragments.ValueChainPartner.19
            @Override // java.lang.Runnable
            public void run() {
                editText.setText(str);
            }
        });
    }

    private void setError(final TextView textView, final String str) {
        runOnUiThread(new Runnable() { // from class: com.conceptglobal.pmc.fragments.ValueChainPartner.20
            @Override // java.lang.Runnable
            public void run() {
                textView.setFocusable(true);
                textView.setError(str);
                textView.requestFocus();
            }
        });
    }

    private void showToast(final String str) {
        runOnUiThread(new Runnable() { // from class: com.conceptglobal.pmc.fragments.ValueChainPartner.21
            @Override // java.lang.Runnable
            public void run() {
                Toast.makeText(ValueChainPartner.this.context, str, 1).show();
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
        button2.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.ValueChainPartner.23
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                UtilDeclarations.hideInputKeyboard(ValueChainPartner.this);
                if (ValueChainPartner.this.isValidMobileNumber(editText.getText().toString())) {
                    ValueChainPartner.this.checkFarmerInTerritory(editText.getText().toString());
                    dialog.dismiss();
                } else {
                    editText.setError("Please enter 10 digit mobile number");
                }
            }
        });
        button.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.ValueChainPartner.24
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                UtilDeclarations.hideInputKeyboard(ValueChainPartner.this);
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
        builder.setMessage(str).setCancelable(false).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.ValueChainPartner.25
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
        button.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.ValueChainPartner.26
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
                fetchLocation();
            } else {
                this.mLocationUtils.showDialog(this, LocationUtils.PERMISSION_DENIED);
            }
        }
    }

    private void fetchLocation() {
        if (!this.mLocationUtils.checkPermissions(this)) {
            this.mLocationUtils.requestPermissions(this);
            return;
        }
        try {
            new FetchLocation(this, true, new OnLocationFoundListener() { // from class: com.conceptglobal.pmc.fragments.ValueChainPartner.27
                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onTimerTimeOut() {
                }

                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onLocationFound(LocationInfo locationInfo) {
                    ValueChainPartner.this.tvLatitude.setText(locationInfo.getLatitude() + "");
                    ValueChainPartner.this.tvLongitude.setText(locationInfo.getLongitude() + "");
                }

                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onLocationFound(Location location) {
                    ValueChainPartner.this.bindAddress(location);
                    ValueChainPartner.this.GPSTImeStamp = UtilDeclarations.getLongToDate(location.getTime());
                }
            }, TAG);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

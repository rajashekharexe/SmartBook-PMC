package com.conceptglobal.pmc.fragments;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.DatePickerDialog;
import android.app.Dialog;
import android.app.PendingIntent;
import android.app.ProgressDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
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
import android.text.TextUtils;
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
import android.widget.NumberPicker;
import android.widget.RelativeLayout;
import android.widget.TabHost;
import android.widget.TabWidget;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.conceptglobal.imaterialdesign.widget.FloatingActionButton;
import com.conceptglobal.pmc.BaseActivity;
import com.conceptglobal.pmc.adapter.CropDisplayAdapter;
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
import com.conceptglobal.pmc.fo.SAAttributeActivity;
import com.conceptglobal.pmc.fo.SAAttributeActivityCopy;
import com.conceptglobal.pmc.fo.SAAttributeActivity_FBF;
import com.conceptglobal.pmc.interfaces.OnLocationFoundListener;
import com.conceptglobal.pmc.interfaces.OnVerifyOTPListener;
import com.conceptglobal.pmc.locationprovider.FetchLocation;
import com.conceptglobal.pmc.model.BrandsModel;
import com.conceptglobal.pmc.model.DynamicFields;
import com.conceptglobal.pmc.model.FarmerCropMapping;
import com.conceptglobal.pmc.model.FarmerMaster;
import com.conceptglobal.pmc.model.FarmerMultiAttributeDetails;
import com.conceptglobal.pmc.model.ImageDetails;
import com.conceptglobal.pmc.model.LocationInfo;
import com.conceptglobal.pmc.model.MultiSelectData;
import com.conceptglobal.pmc.model.RulesConfig;
import com.conceptglobal.pmc.model.SampleModel;
import com.conceptglobal.pmc.model.TerritotyFarmerMaster;
import com.conceptglobal.pmc.model.otp.GetOTP;
import com.conceptglobal.pmc.model.otp.GetOTPResponse;
import com.conceptglobal.pmc.registration.DraftList;
import com.conceptglobal.pmc.service.SyncDataService;
import com.conceptglobal.pmc.utils.CompressHelper;
import com.conceptglobal.pmc.utils.ConstantDeclarations;
import com.conceptglobal.pmc.utils.CustomActionBar;
import com.conceptglobal.pmc.utils.Encryption;
import com.conceptglobal.pmc.utils.LabelUtils;
import com.conceptglobal.pmc.utils.ListviewFillToParent;
import com.conceptglobal.pmc.utils.LocationUtils;
import com.conceptglobal.pmc.utils.OTPVerificationDialog;
import com.conceptglobal.pmc.utils.PLog;
import com.conceptglobal.pmc.utils.SendDataServiceUtil;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import com.conceptglobal.pmcdeepakfertilizers.R;
import com.google.gson.Gson;
import de.keyboardsurfer.android.widget.crouton.Crouton;
import de.keyboardsurfer.android.widget.crouton.Style;
import io.fabric.sdk.android.services.common.AbstractSpiCall;
import java.io.File;
import java.io.IOException;
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

/* loaded from: classes.dex */
public class AddFarmer extends BaseActivity implements View.OnClickListener, View.OnTouchListener, OnVerifyOTPListener {
    private static final int DATEDIALOGID1 = 0;
    private static final int DATEDIALOGID2 = 2;
    private static final int DATEDIALOGID3 = 3;
    private static final int DATEDIALOGID4 = 4;
    private static final int DATEDIALOGID5 = 5;
    private static final int DATEDIALOGID_YEARLESS = 1;
    private static final int GETNEWACTIVITY = 2;
    private static final int GET_CAM_IMG = 101;
    private static final int INITIALCROPID = -1;
    private static final int MY_CAMERA_REQUEST_CODE = 100;
    private static final String TAG = "AddFarmer";
    private static DataBaseHandler dbInstance = DataBaseHandler.getInstance();
    public static List<Integer> deletedCropsIds;
    private static String farmerType;
    private static String isFraom;
    private CropDisplayAdapter adapterCrops;
    private String barcode;
    String bindQuery;
    private Button btnDraft;
    private ImageView btnLatLng;
    private Button btnRemarks;
    private Button btnSave;
    private String columnName;
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
    private EditText et_crop_type_alert;
    private EditText ethybrid;
    private String farmerID;
    private FarmerMaster farmerMaster;
    private int farmercount;
    private String[][] geoDetailsConditions;
    private GetDataFromDB getDataFromDB;
    private GridView gridView;
    private GridImageAdapter imageAdapter;
    private String imagePath;
    private ArrayList<String> imagelist;
    private List<ImageDetails> images;
    private ImageView imgFarmer;
    private boolean isFromAll;
    public boolean isFromFeedBack;
    public boolean isFromSelfAssignment;
    public boolean isFromSurvey;
    public boolean isFromTestimonal;
    private boolean isImageDeleted;
    public boolean isRoleReadonlyCropHero;
    public boolean isRoleReadonlyFarmer;
    private List<FarmerCropMapping> listFarmerCrops;
    private ListView lvCrops;
    private LinearLayout mAddDynamicLinear;
    private LinearLayout mAddDynamicLinearOthers;
    private LinearLayout mAddGeoDetailsInOthers;
    private LinearLayout mAddGeoDetailsInPersonal;
    private int mCurrentYear;
    private int mDay;
    private ArrayList<EditText> mEntryArr;
    private ArrayList<EditText> mEntryArrIds;
    private ArrayList<FarmerMultiAttributeDetails> mFarmerMultiAttributeDetailsList;
    private ListPopupOne mListPopupOne;
    private LocationUtils mLocationUtils;
    private int mMonth;
    private String mNewMobile;
    private String mOTP;
    private String mOldMobile;
    private ArrayList<TextView> mOprDatesArr;
    private int mYear;
    int masterTablecount;
    private ArrayList<TextView> mattributesnamesArr;
    private List<String> mentryValues;
    ListPopupOne mliListPopupOne;
    private String mobile;
    private List<Integer> modifiedListOfFarmerCrops;
    private Dialog progressDialog;
    private ArrayList<Integer> ruleAttributeIds;
    private int ruleID;
    private int segmentID;
    private int status;
    private int statusFieldVal;
    private LinearLayout tab1;
    private RelativeLayout tab2;
    private LinearLayout tab3;
    private TabHost tabHost;
    private String tableName;
    private TextView tvAcreagesNote;
    private TextView tvAddCrop;
    private TextView tvCropid;
    private TextView tvLatitude;
    private TextView tvLongitude;
    private TextView tvcrop_acrage_type_id;
    private TextView tvdistrictid;
    private TextView tvhybridid;
    private TextView tvmandalid;
    private TextView tvstateid;
    private TextView tvvillageid;
    private TextView txt;
    private int typeOfFarmer;
    private String updateDOS;
    private String tag = TAG;
    ArrayList<String> mMultiAttribute = new ArrayList<>();
    private long defaultMinDate = -1;
    private long defaultMaxDate = -1;
    private String mFiledStr = "";
    private int datePos = 0;
    private HashMap<Integer, Integer> hAttributes = null;
    public List<BrandsModel> brandsList = null;
    private ArrayList<DynamicFields> attributesArry = null;
    private ArrayList<DynamicFields> attributesOthersArry = null;
    private int sdtvValue = 0;
    private int mForOperations = -1;
    private int mForDates = -1;
    private int layoutId = 0;
    int _clickId = 0;
    private int enableCropHybrids = 0;
    private int enableSowingDate = 0;
    private String plotLatlongs = "";
    private boolean mIsMobileNumberChanged = false;
    private int isFromSelfassgin = 0;
    private HashMap<Integer, Integer> dialodIdsMap = new HashMap<>();
    EditText mMultiSelectEditText = null;
    int maxLength_multiselect = 0;
    private String isSaarthieFarmer = "";
    private String farmerUpdate = "";
    String[] attribName = {GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_stateText()), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_districtText()), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_mandalsText()), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_villageText())};
    ArrayList<TextView> geoDetailsTV = new ArrayList<>();
    ArrayList<EditText> geoDetailsET = new ArrayList<>();
    private int isFromTransaction = 0;
    String latlongTag = "";
    private HashMap<Integer, HashMap<Integer, List<RulesConfig>>> rulesMap = new HashMap<>();
    private String validationFailedMsg = "";
    private ArrayList<Integer> visibiltyGoneIds = new ArrayList<>();
    private final TextWatcher stateChanged = new TextWatcher() { // from class: com.conceptglobal.pmc.fragments.AddFarmer.4
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
            AddFarmer.this.tvdistrictid.setText("");
            AddFarmer.this.edtDistrict.setText("");
            AddFarmer.this.tvmandalid.setText("");
            AddFarmer.this.edtMandal.setText("");
            AddFarmer.this.tvvillageid.setText("");
            AddFarmer.this.edtVillage.setText("");
        }
    };
    private final TextWatcher districtChanged = new TextWatcher() { // from class: com.conceptglobal.pmc.fragments.AddFarmer.5
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
            AddFarmer.this.tvmandalid.setText("");
            AddFarmer.this.edtMandal.setText("");
            AddFarmer.this.tvvillageid.setText("");
            AddFarmer.this.edtVillage.setText("");
        }
    };
    private final TextWatcher mandalChanged = new TextWatcher() { // from class: com.conceptglobal.pmc.fragments.AddFarmer.6
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
            AddFarmer.this.tvvillageid.setText("");
            AddFarmer.this.edtVillage.setText("");
        }
    };
    View.OnClickListener operationListenerMultiSelect = new View.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.AddFarmer.7
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (view instanceof EditText) {
                ((EditText) view).setError(null);
            }
            int intValue = ((Integer) view.getTag()).intValue();
            view.getId();
            AddFarmer.this.brandsList = new ArrayList();
            DynamicFields dynamicFields = (DynamicFields) AddFarmer.this.attributesArry.get(intValue);
            try {
                if (dynamicFields.getDbquery() != null && !dynamicFields.getDbquery().equals("")) {
                    AddFarmer.this.brandsList = GetDataFromDB.getInstance().getFarmerAssociatedBrands(dynamicFields.getDbquery());
                    if (AddFarmer.this.brandsList != null && AddFarmer.this.brandsList.size() != 0) {
                        AddFarmer addFarmer = AddFarmer.this;
                        CustomCheckBoxDialog customCheckBoxDialog = new CustomCheckBoxDialog(addFarmer, addFarmer.brandsList, 0, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectText()) + " " + ((DynamicFields) AddFarmer.this.attributesArry.get(intValue)).getDisplayName(), view, (TextView) AddFarmer.this.mEntryArrIds.get(intValue), ((DynamicFields) AddFarmer.this.attributesArry.get(intValue)).getMaxLength(), 0, 0);
                        customCheckBoxDialog.getWindow().getAttributes().windowAnimations = R.style.PauseDialogAnimation;
                        customCheckBoxDialog.show();
                        customCheckBoxDialog.getWindow().setSoftInputMode(3);
                    }
                    Toast.makeText(AddFarmer.this.context, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_noDataFound()), 0).show();
                }
            } catch (Exception e) {
                PLog.e(AddFarmer.TAG, e);
                e.printStackTrace();
            }
        }
    };
    View.OnClickListener operationListener = new View.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.AddFarmer.8
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (view instanceof EditText) {
                ((EditText) view).setError(null);
            }
            AddFarmer.this._clickId = view.getId();
            String dbquery = ((DynamicFields) AddFarmer.this.attributesArry.get(view.getId())).getDbquery();
            AddFarmer addFarmer = AddFarmer.this;
            ListPopupOne listPopupOne = new ListPopupOne(addFarmer, addFarmer.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_selectOneDropDownTitle()), dbquery, view, (TextView) AddFarmer.this.mEntryArrIds.get(view.getId()));
            listPopupOne.getWindow().getAttributes().windowAnimations = R.style.PauseDialogAnimation;
            listPopupOne.show();
            listPopupOne.getWindow().setSoftInputMode(3);
        }
    };
    View.OnClickListener datesListener = new View.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.AddFarmer.17
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AddFarmer.this.datePos = view.getId();
            AddFarmer.this.txt = (TextView) view;
            Integer num = (Integer) view.getTag(R.string.VISIBILITY_ID);
            num.intValue();
            if (AddFarmer.this.dialodIdsMap.containsKey(num)) {
                AddFarmer addFarmer = AddFarmer.this;
                addFarmer.showDialog(((Integer) addFarmer.dialodIdsMap.get(num)).intValue());
            } else {
                AddFarmer.this.showDialog(5);
            }
        }
    };
    View.OnClickListener datesListenerYearless = new View.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.AddFarmer.18
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AddFarmer.this.datePos = view.getId();
            AddFarmer.this.showDialog(1);
        }
    };
    private DatePickerDialog.OnDateSetListener mDateSetListener = new DatePickerDialog.OnDateSetListener() { // from class: com.conceptglobal.pmc.fragments.AddFarmer.20
        @Override // android.app.DatePickerDialog.OnDateSetListener
        public void onDateSet(DatePicker datePicker, int i, int i2, int i3) {
            AddFarmer.this.mYear = i;
            AddFarmer.this.mMonth = i2;
            AddFarmer.this.mDay = i3;
            try {
                new SimpleDateFormat("yyyy-MM-dd").parse(i + "-" + (i2 + 1) + "-" + i3);
                new Date();
                AddFarmer.this.updateDisplay();
            } catch (Exception e) {
                PLog.e(AddFarmer.this.tag, e);
            }
        }
    };
    private DatePickerDialog.OnDateSetListener mDateSetListener_Yearless = new DatePickerDialog.OnDateSetListener() { // from class: com.conceptglobal.pmc.fragments.AddFarmer.21
        @Override // android.app.DatePickerDialog.OnDateSetListener
        public void onDateSet(DatePicker datePicker, int i, int i2, int i3) {
            AddFarmer.this.mYear = i;
            AddFarmer.this.mMonth = i2;
            AddFarmer.this.mDay = i3;
            try {
                AddFarmer.this.updateDisplay_yearless();
            } catch (Exception e) {
                PLog.e(AddFarmer.this.tag, e);
            }
        }
    };
    private BroadcastReceiver message = new BroadcastReceiver() { // from class: com.conceptglobal.pmc.fragments.AddFarmer.32
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String stringExtra = intent.getStringExtra("deletedImage");
            AddFarmer.this.imagelist.remove(stringExtra);
            AddFarmer.this.isImageDeleted = true;
            try {
                File file = new File(stringExtra);
                if (file.exists()) {
                    file.delete();
                }
            } catch (Exception e) {
                PLog.e(AddFarmer.TAG, e);
            }
        }
    };
    View.OnClickListener yearListener = new View.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.AddFarmer.38
        @Override // android.view.View.OnClickListener
        public void onClick(final View view) {
            if (view instanceof EditText) {
                ((EditText) view).setError(null);
            }
            AddFarmer.this._clickId = view.getId();
            view.getId();
            AlertDialog.Builder builder = new AlertDialog.Builder(AddFarmer.this.context);
            View inflate = AddFarmer.this.getLayoutInflater().inflate(R.layout.number_picker_dialog, (ViewGroup) null);
            builder.setTitle("Select Year");
            builder.setView(inflate);
            final NumberPicker numberPicker = (NumberPicker) inflate.findViewById(R.id.dialog_number_picker);
            DynamicFields dynamicFields = (DynamicFields) AddFarmer.this.attributesArry.get(((Integer) AddFarmer.this.hAttributes.get(78)).intValue());
            if (dynamicFields.getMinValue() > 0) {
                numberPicker.setMinValue(dynamicFields.getMinValue());
            } else {
                numberPicker.setMinValue(1950);
            }
            if (dynamicFields.getMaxValue() <= 0) {
                numberPicker.setMaxValue(AddFarmer.this.mCurrentYear);
            } else {
                numberPicker.setMaxValue(dynamicFields.getMaxValue());
            }
            numberPicker.setWrapSelectorWheel(false);
            numberPicker.setOnValueChangedListener(new NumberPicker.OnValueChangeListener() { // from class: com.conceptglobal.pmc.fragments.AddFarmer.38.1
                @Override // android.widget.NumberPicker.OnValueChangeListener
                public void onValueChange(NumberPicker numberPicker2, int i, int i2) {
                    Log.d(AddFarmer.TAG, "onValueChange: ");
                }
            });
            builder.setPositiveButton("Done", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.AddFarmer.38.2
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    Log.d(AddFarmer.TAG, "onClick: " + numberPicker.getValue());
                    ((EditText) view).setText(numberPicker.getValue() + "");
                    dialogInterface.dismiss();
                }
            });
            builder.setNegativeButton("Cancel", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.AddFarmer.38.3
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    dialogInterface.dismiss();
                }
            });
            builder.setNeutralButton("Clear", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.AddFarmer.38.4
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    dialogInterface.dismiss();
                    ((EditText) view).setText("");
                }
            });
            builder.create().show();
        }
    };

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
    }

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
        setContentView(R.layout.addfarmer_tab);
        this.context = this;
        ConstantsPMC.getInstance().getLanguageConfigurations(this.context);
        this.getDataFromDB = GetDataFromDB.getInstance();
        this.mLocationUtils = new LocationUtils();
        Intent intent = getIntent();
        farmerType = intent.getStringExtra("farmerType");
        isFraom = intent.getStringExtra("isFraom");
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
        if (farmerType.equalsIgnoreCase(ConstantsPMC.TYPE_FARMER) || farmerType.equalsIgnoreCase("UnVerifiedFarmer")) {
            if (ConstantsPMC.getInstance().getIsTrainingORLive() != 2) {
                if (GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_addFarmerDetailsText()) == null) {
                    CustomActionBar.initActionBar(this, "Add Farmer(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
                } else {
                    CustomActionBar.initActionBar(this, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_addFarmerDetailsText()) + "(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
                }
            } else if (GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_addFarmerDetailsText()) == null) {
                CustomActionBar.initActionBar(this, "Add Farmer(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
            } else {
                CustomActionBar.initActionBar(this, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_addFarmerDetailsText()) + "(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
            }
            this.typeOfFarmer = 1;
            this.geoDetailsConditions = this.getDataFromDB.getGeoDetailsConditions(Queries.getInstance().getGeoDetailsCondition("FarmerMaster", "FarmerGeoDetails"));
            this.ruleID = ConstantDeclarations.RULES_FARMER_ID;
        } else if (farmerType.equalsIgnoreCase("Planter")) {
            if (ConstantsPMC.getInstance().getIsTrainingORLive() != 2) {
                if (GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_addPlanterHomeText()) == null) {
                    CustomActionBar.initActionBar(this, "Add Planter(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
                } else {
                    CustomActionBar.initActionBar(this, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_addPlanterHomeText()) + "(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
                }
            } else if (GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_addPlanterHomeText()) == null) {
                CustomActionBar.initActionBar(this, "Add Planter(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
            } else {
                CustomActionBar.initActionBar(this, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_addPlanterHomeText()) + "(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
            }
            this.geoDetailsConditions = this.getDataFromDB.getGeoDetailsConditions(Queries.getInstance().getGeoDetailsCondition("FarmerMaster", "PlanterGeoDetails"));
            this.typeOfFarmer = 8;
        } else if (farmerType.equalsIgnoreCase("Village")) {
            if (ConstantsPMC.getInstance().getIsTrainingORLive() != 2) {
                if (GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_addPlanterHomeText()) == null) {
                    CustomActionBar.initActionBar(this, "Add Village(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
                } else {
                    CustomActionBar.initActionBar(this, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_addVillageText()) + "(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
                }
            } else if (GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_addPlanterHomeText()) == null) {
                CustomActionBar.initActionBar(this, "Add Village(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
            } else {
                CustomActionBar.initActionBar(this, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_addVillageText()) + "(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
            }
            this.geoDetailsConditions = this.getDataFromDB.getGeoDetailsConditions(Queries.getInstance().getGeoDetailsCondition("FarmerMaster", "VillageGeoDetails"));
            this.typeOfFarmer = 4;
        }
        PLog.location("Navigation", "onCreate()", TAG, UtilDeclarations.getDateTime());
        initialization();
        setBottomViewPadding();
        settingTabs();
        gettingData();
        enableGeoDetailsLayout();
        gettingPdaid();
        generateResPondentNumber();
        createOperationAttributes();
        bindOperations();
        getRulesConfigs();
        setDataForForm();
        this.tabHost.setOnTabChangedListener(new TabHost.OnTabChangeListener() { // from class: com.conceptglobal.pmc.fragments.AddFarmer.1
            @Override // android.widget.TabHost.OnTabChangeListener
            public void onTabChanged(String str) {
                UtilDeclarations.hideInputKeyboard(AddFarmer.this.context);
                AddFarmer.this.tabHost.clearFocus();
                if (AddFarmer.this.getWindow().getCurrentFocus() != null && AddFarmer.this.getWindow().getCurrentFocus().hasFocus()) {
                    AddFarmer.this.getWindow().getCurrentFocus().clearFocus();
                }
                if (AddFarmer.this.tabHost.getCurrentTab() != 1) {
                    return;
                }
                AddFarmer.this.setListviewForAcreages();
            }
        });
        this.gridView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.conceptglobal.pmc.fragments.AddFarmer.2
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                AddFarmer addFarmer = AddFarmer.this;
                addFarmer.captureImage(((ImageDetails) addFarmer.images.get(i)).getImageId());
            }
        });
        ((FloatingActionButton) findViewById(R.id.fab)).setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.AddFarmer.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (AddFarmer.this.isRoleReadonlyFarmer) {
                    AddFarmer.this.showAccessDeniedDialog();
                } else if (AddFarmer.this.images.size() <= 4) {
                    AddFarmer.this.captureImage(0L);
                } else {
                    Toast.makeText(AddFarmer.this.getApplication(), AddFarmer.this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_maxImagesToast()), 1).show();
                }
            }
        });
        LocalBroadcastManager.getInstance(this).registerReceiver(this.message, new IntentFilter("send"));
        validateMobileNumber();
        try {
            this.statusFieldVal = GetDataFromDB.getInstance().getIntValue(Queries.getInstance().getStatusQuery(this.farmerMaster.getRespondentNo()));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void setDataForForm() {
        for (int i = 0; i < this.attributesArry.size(); i++) {
            this.attributesArry.get(i).getColumnId();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i, Menu menu) {
        super.onPanelClosed(i, menu);
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x030d, code lost:
    
        r8.isRoleReadonlyCropHero = true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void initialization() {
        /*
            Method dump skipped, instructions count: 816
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.fragments.AddFarmer.initialization():void");
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public SQLiteDatabase openOrCreateDatabase(String str, int i, SQLiteDatabase.CursorFactory cursorFactory) {
        return super.openOrCreateDatabase(str, i, cursorFactory);
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
        if (intent.hasExtra("fromSelfassgin")) {
            this.isFromSelfassgin = intent.getIntExtra("fromSelfassgin", 1);
        }
        try {
            this.listFarmerCrops = this.getDataFromDB.getCropSelectionData(Queries.getInstance().getCropsandAcreages(this.farmerID));
        } catch (Exception e2) {
            PLog.e(TAG, e2);
        }
        try {
            GetDataFromDB.getInstance().getIntValue(Queries.getInstance().getItemValue("AUTODeriveSDTVFromPincode"));
            this.sdtvValue = 1;
        } catch (Exception e3) {
            e3.printStackTrace();
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
        if (this.attributesArry.size() > 0 && this.mentryValues.size() > 0) {
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
                        try {
                            this.mEntryArr.get(i).setText(this.mentryValues.get(i));
                        } catch (Exception unused) {
                        }
                    }
                } else if (this.attributesArry.get(i).getControlType().equalsIgnoreCase("Multiselect Dropdown")) {
                    MultiSelectData multiSelectData = GetDataFromDB.getInstance().getMultiSelectData(Queries.getInstance().getFarmerMultiSelectDataQry(this.farmerMaster.getRespondentNo(), this.attributesArry.get(i).getColumnId()));
                    if (multiSelectData != null) {
                        this.mEntryArrIds.get(i).setText(multiSelectData.getIds());
                        this.mEntryArr.get(i).setText(multiSelectData.getNames());
                    } else {
                        this.mEntryArrIds.get(i).setText("");
                        this.mEntryArr.get(i).setText("");
                    }
                } else if (this.attributesArry.get(i).getColumnId() == 254) {
                    if (!TextUtils.isEmpty(this.mentryValues.get(i)) && !this.mentryValues.get(i).equalsIgnoreCase("0")) {
                        this.mEntryArr.get(i).setText(Encryption.decrypt(GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getSaartiFarmerNameQry(this.mentryValues.get(i)))));
                    }
                } else {
                    this.mEntryArr.get(i).setText(this.mentryValues.get(i));
                }
            }
            validateMobileNumber();
        }
        List<FarmerMaster> farmerBindDataStatic = this.getDataFromDB.getFarmerBindDataStatic(Queries.getInstance().gettingAtaticData(this.farmerID));
        this.draftStaticData = farmerBindDataStatic;
        if (farmerBindDataStatic.size() > 0) {
            this.geoDetailsTV.get(0).setText(this.draftStaticData.get(0).getStateID());
            this.geoDetailsET.get(0).setText(this.draftStaticData.get(0).getStateName());
            this.geoDetailsTV.get(1).setText(this.draftStaticData.get(0).getDistrictID());
            this.geoDetailsET.get(1).setText(this.draftStaticData.get(0).getDistrictName());
            this.geoDetailsTV.get(2).setText(this.draftStaticData.get(0).getMandalID());
            this.geoDetailsET.get(2).setText(this.draftStaticData.get(0).getMandalName());
            this.geoDetailsTV.get(3).setText(this.draftStaticData.get(0).getVillageId());
            this.geoDetailsET.get(3).setText(this.draftStaticData.get(0).getVillageName());
            this.tvLatitude.setText(this.draftStaticData.get(0).getLatitude());
            this.tvLongitude.setText(this.draftStaticData.get(0).getLongitude());
        }
        if (this.draftStaticData.size() == 0 || this.draftStaticData.get(0).getStateID() == null || this.draftStaticData.get(0).getStateID().equals("")) {
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
        if (this.draftStaticData.size() == 0 || this.draftStaticData.get(0).getDistrictID() == null || this.draftStaticData.get(0).getDistrictID().equals("")) {
            try {
                if (this.getDataFromDB.getcount(Queries.getInstance().gettingCountofMasters("DistrictMaster", "StateId ", this.geoDetailsTV.get(0).getText().toString())) == 1) {
                    SampleModel sampleModel2 = GetDataFromDB.getInstance().getSampleModel(Queries.getInstance().gettingDistricts(this.geoDetailsTV.get(0).getText().toString()));
                    this.geoDetailsTV.get(1).setText(sampleModel2.getId());
                    this.geoDetailsET.get(1).setText(sampleModel2.getName());
                }
            } catch (Exception e6) {
                PLog.e(this.tag, e6);
            }
        }
        if (this.draftStaticData.size() == 0 || this.draftStaticData.get(0).getMandalID() == null || this.draftStaticData.get(0).getMandalID().equals("")) {
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
        if (farmerType.equalsIgnoreCase("Village")) {
            setEditableFalse(this.geoDetailsET.get(0));
            setEditableFalse(this.geoDetailsET.get(1));
            setEditableFalse(this.geoDetailsET.get(2));
            setEditableFalse(this.geoDetailsET.get(3));
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

    private void settingTabs() {
        this.tabHost.setup();
        addTab(this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_personalTabText()), R.drawable.ic_action_person_wight, getResources().getString(R.string.pmc_tag1));
        addTab(this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_acreageTabText()), R.drawable.ic_acerage_wight, getResources().getString(R.string.pmc_tag2));
        addTab(this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_othersTabText()), R.drawable.ic_others_wight, getResources().getString(R.string.pmc_tag5));
    }

    private void farmeridIncrement() {
        try {
            InsertDataIntoDB.getMaxCount(Queries.getInstance().farmerIDIncrement());
        } catch (Exception e) {
            PLog.e(this.tag, e);
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
                    ListPopupOne listPopupOne2 = new ListPopupOne(this.context, this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_selectText()) + " " + this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_stateText()), Queries.getInstance().gettingStates(), view, this.geoDetailsTV.get(0));
                    listPopupOne2.getWindow().getAttributes().windowAnimations = R.style.PauseDialogAnimation;
                    listPopupOne2.show();
                    listPopupOne2.getWindow().setSoftInputMode(3);
                } else {
                    Toast.makeText(getApplicationContext(), this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_thereIsNoText()) + " " + this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_stateText()), 1).show();
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
                    Toast.makeText(getApplicationContext(), this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_thereIsNoText()) + " " + this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_districtText()), 1).show();
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
                    Toast.makeText(getApplicationContext(), this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_thereIsNoText()) + " " + this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_mandalsText()), 1).show();
                }
            } else if (id == 3) {
                this.tableName = "VillageMaster";
                this.columnName = "MandalID";
                try {
                    i3 = this.getDataFromDB.getcount(Queries.getInstance().gettingCountofMasters(this.tableName, this.columnName, this.geoDetailsTV.get(2).getText().toString()));
                } catch (Exception e4) {
                    PLog.e(this.tag, e4);
                    i3 = 0;
                }
                if (i3 > 0) {
                    System.out.println(Queries.getInstance().gettinVillages(this.tvmandalid.getText().toString()));
                    ListPopupOne listPopupOne5 = new ListPopupOne(this.context, this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_selectText()) + " " + this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_villageText()), Queries.getInstance().gettinVillages(this.geoDetailsTV.get(2).getText().toString()), view, this.geoDetailsTV.get(3));
                    listPopupOne5.getWindow().getAttributes().windowAnimations = R.style.PauseDialogAnimation;
                    listPopupOne5.show();
                    listPopupOne5.getWindow().setSoftInputMode(3);
                } else {
                    Toast.makeText(getApplicationContext(), this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_thereIsNoText()) + " " + this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_villageText()), 1).show();
                }
            } else if (id == R.id.btn_add_crop_farmer_acreage && !this.isRoleReadonlyFarmer) {
                showAddCropDialog(ConstantDeclarations.getInstance().getEMPTY(), 0.0f, ConstantDeclarations.getInstance().getEMPTY(), -1);
            }
        }
        return false;
    }

    private void enableGeoDetailsLayout() {
        try {
            String inWhichTabGeoDetailsAvailable = this.getDataFromDB.getInWhichTabGeoDetailsAvailable(Queries.getInstance().getInWhichTab(ConstantsPMC.TYPE_FARMER));
            this.mAddGeoDetailsInPersonal = (LinearLayout) findViewById(R.id.retailer_personal_geodetails_LL);
            this.mAddGeoDetailsInOthers = (LinearLayout) findViewById(R.id.retailer_others_geodetails_LL);
            for (int i = 0; i < this.attribName.length; i++) {
                if (inWhichTabGeoDetailsAvailable.equalsIgnoreCase("Personal")) {
                    addIndividualGeoDetails(i, this.attribName[i], this.geoDetailsTV.get(i), this.geoDetailsET.get(i), this.mAddGeoDetailsInPersonal, this.geoDetailsConditions[i][1]);
                } else if (inWhichTabGeoDetailsAvailable.equalsIgnoreCase("Others")) {
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

    /* JADX WARN: Can't wrap try/catch for region: R(18:0|1|(1:60)(2:5|(1:7)(2:57|(1:59)))|8|(3:10|(1:12)|13)|14|(2:16|(1:18)(10:50|(1:52)(2:53|(1:55))|20|(3:22|(2:25|23)|26)|27|28|29|(2:36|(1:38)(2:39|(1:46)(2:43|(1:45))))|33|34))(1:56)|19|20|(0)|27|28|29|(1:31)|36|(0)(0)|33|34) */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x03a9, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x03aa, code lost:
    
        r0.printStackTrace();
     */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0255  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x03d3  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x03e2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void createOperationAttributes() {
        /*
            Method dump skipped, instructions count: 1059
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.fragments.AddFarmer.createOperationAttributes():void");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:28|(1:30)(2:139|(8:141|(7:143|(1:145)|33|(1:35)|36|37|(13:39|40|41|42|(3:46|(4:49|(2:51|52)(1:54)|53|47)|55)|57|(1:59)(2:93|(1:95)(2:96|(1:98)(2:99|(1:101)(2:102|(1:104)(2:105|(2:110|(2:115|(2:120|(2:125|(2:130|(1:132))(1:129))(1:124))(1:119))(1:114))(1:109))))))|60|(3:66|67|(1:71))|75|(3:81|82|(1:86))|90|91))|32|33|(0)|36|37|(0)))|31|32|33|(0)|36|37|(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x07cc, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x07cd, code lost:
    
        r16 = r9;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:147:0x0681  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0674  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x072e  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0776  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0783 A[Catch: Exception -> 0x07cc, TRY_LEAVE, TryCatch #2 {Exception -> 0x07cc, blocks: (B:37:0x077f, B:39:0x0783), top: B:36:0x077f }] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x07eb  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x08b2  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x08f4  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x07f2  */
    /* JADX WARN: Type inference failed for: r0v12, types: [android.widget.EditText] */
    /* JADX WARN: Type inference failed for: r35v0, types: [android.widget.LinearLayout] */
    /* JADX WARN: Type inference failed for: r8v10, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r8v2, types: [android.view.View, android.widget.LinearLayout] */
    /* JADX WARN: Type inference failed for: r9v9, types: [android.widget.EditText] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void addOperationsDynamicLayout(java.lang.String r23, java.lang.String r24, java.lang.String r25, java.lang.String r26, java.lang.String r27, java.lang.String r28, java.lang.String r29, int r30, int r31, int r32, int r33, int r34, android.widget.LinearLayout r35, int r36, com.conceptglobal.pmc.model.DynamicFields r37) {
        /*
            Method dump skipped, instructions count: 2361
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.fragments.AddFarmer.addOperationsDynamicLayout(java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, int, int, int, int, int, android.widget.LinearLayout, int, com.conceptglobal.pmc.model.DynamicFields):void");
    }

    private void addTab(String str, int i, String str2) {
        TabHost.TabSpec newTabSpec = this.tabHost.newTabSpec(str);
        View inflate = LayoutInflater.from(this).inflate(R.layout.tab_indicator, (ViewGroup) this.tabHost.getTabWidget(), false);
        ((TextView) inflate.findViewById(R.id.title_tab_indicator)).setText(str);
        ((ImageView) inflate.findViewById(R.id.icon_tab_indicator)).setImageResource(i);
        newTabSpec.setIndicator(inflate);
        if (str2.equalsIgnoreCase(getResources().getString(R.string.pmc_tag1))) {
            newTabSpec.setContent(R.id.tabfarmer);
        } else if (str2.equalsIgnoreCase(getResources().getString(R.string.pmc_tag2))) {
            newTabSpec.setContent(R.id.tab2);
        } else if (str2.equalsIgnoreCase(getResources().getString(R.string.pmc_tag5))) {
            newTabSpec.setContent(R.id.tab5);
        } else {
            newTabSpec.setContent(R.id.tabfarmer);
        }
        this.tabHost.addTab(newTabSpec);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setListviewForAcreages() {
        CropDisplayAdapter cropDisplayAdapter = new CropDisplayAdapter(this, this.listFarmerCrops, this.farmerID);
        this.adapterCrops = cropDisplayAdapter;
        this.lvCrops.setAdapter((ListAdapter) cropDisplayAdapter);
        ListviewFillToParent.setListViewHeightBasedOnChildren(this.lvCrops);
    }

    private void showAddCropDialog(String str, float f, String str2, int i) {
        final Dialog dialog = new Dialog(this.context);
        dialog.requestWindowFeature(1);
        dialog.setContentView(R.layout.alert_crop_selection);
        EditText editText = (EditText) dialog.findViewById(R.id.et_crop_discription_crop_alert);
        this.etCropAccr = editText;
        editText.setHint(this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_addAcreages()));
        Button button = (Button) dialog.findViewById(R.id.btn_save_crop_alert);
        button.setText(this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_saveText()));
        final Button button2 = (Button) dialog.findViewById(R.id.btn_na);
        EditText editText2 = (EditText) dialog.findViewById(R.id.et_crop_crop_alert);
        this.etCropName = editText2;
        editText2.setHint(this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_addCropText()));
        this.etCropName.setCompoundDrawablesWithIntrinsicBounds(0, 0, R.drawable.drop_16, 0);
        EditText editText3 = (EditText) dialog.findViewById(R.id.et_crop_dos);
        this.etCropDos = editText3;
        editText3.setHint(this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_dateOfSowingInFarmerCrops()));
        this.etCropDos.setCompoundDrawablesWithIntrinsicBounds(0, 0, R.drawable.datepicker_image, 0);
        this.tvCropid = (TextView) dialog.findViewById(R.id.tvcropid);
        EditText editText4 = (EditText) dialog.findViewById(R.id.et_hybrid);
        this.ethybrid = editText4;
        editText4.setHint(this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_addHybrid()));
        this.ethybrid.setCompoundDrawablesWithIntrinsicBounds(0, 0, R.drawable.drop_16, 0);
        this.tvhybridid = (TextView) dialog.findViewById(R.id.tvhybrid);
        this.etCropAccr.setInputType(8194);
        this.etCropAccr.setFilters(new InputFilter[]{new DecimalDigitsInputFilter(6, 2)});
        button2.setBackgroundColor(-7829368);
        if (this.enableSowingDate == 1) {
            this.etCropDos.setHint("Sowing window");
        }
        if (this.enableCropHybrids == 0) {
            this.ethybrid.setVisibility(8);
        } else {
            this.ethybrid.setVisibility(0);
        }
        if (this.enableSowingDate == 0) {
            this.etCropDos.setVisibility(8);
        } else {
            this.etCropDos.setVisibility(0);
        }
        if (farmerType.equalsIgnoreCase("Village")) {
            this.ethybrid.setVisibility(8);
            this.etCropDos.setVisibility(8);
        }
        if (str2 != null) {
            this.etCropDos.setText(str2);
        }
        if (i == 0) {
            this.etCropAccr.setVisibility(8);
        } else {
            this.etCropAccr.setVisibility(0);
        }
        if (str.length() > 0) {
            this.etCropName.setText(str);
            this.tvCropid.setText(Integer.toString(i));
            this.etCropAccr.setText(f + ConstantDeclarations.getInstance().getEMPTY());
        } else {
            this.etCropName.setText(ConstantDeclarations.getInstance().getEMPTY());
            this.etCropAccr.setText(ConstantDeclarations.getInstance().getEMPTY());
        }
        this.etCropAccr.addTextChangedListener(new TextWatcher() { // from class: com.conceptglobal.pmc.fragments.AddFarmer.9
            String beforet = "";

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (editable.length() <= 0 || editable.toString().equalsIgnoreCase(".")) {
                    return;
                }
                try {
                    if (GetDataFromDB.getInstance().getcount(Queries.getInstance().getAddCropFormat()) == 1) {
                        if (Double.parseDouble(editable.toString()) > 100.0d) {
                            AddFarmer.this.etCropAccr.setText(this.beforet);
                            Toast.makeText(AddFarmer.this.context, "Total crop percentage should not exceed 100%", 0).show();
                            return;
                        }
                        return;
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
                if (Double.parseDouble(editable.toString()) == 0.0d) {
                    AddFarmer.this.etCropDos.setText(AddFarmer.this.getResources().getString(R.string.na));
                } else if (AddFarmer.this.etCropDos.getText().toString().equalsIgnoreCase(AddFarmer.this.getResources().getString(R.string.na))) {
                    AddFarmer.this.etCropDos.setText("");
                }
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                this.beforet = charSequence.toString();
            }
        });
        this.etCropName.addTextChangedListener(new TextWatcher() { // from class: com.conceptglobal.pmc.fragments.AddFarmer.10
            private String beforeCrop;

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                this.beforeCrop = charSequence.toString();
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (this.beforeCrop.equalsIgnoreCase(editable.toString())) {
                    return;
                }
                AddFarmer.this.ethybrid.setText("");
                AddFarmer.this.tvhybridid.setText("");
            }
        });
        this.etCropDos.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.AddFarmer.11
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (AddFarmer.this.enableSowingDate == 1) {
                    UtilDeclarations.hideInputKeyboard(AddFarmer.this.context);
                    try {
                        ListPopupOne listPopupOne = new ListPopupOne(AddFarmer.this.context, AddFarmer.this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_selectText()) + " Sowing window", Queries.getInstance().getDropdownValuesLookup("ProfarmSowingWindow"), view, new TextView(AddFarmer.this));
                        listPopupOne.getWindow().getAttributes().windowAnimations = R.style.PauseDialogAnimation;
                        listPopupOne.show();
                        listPopupOne.getWindow().setSoftInputMode(3);
                        return;
                    } catch (Exception e) {
                        PLog.e(AddFarmer.this.tag, e);
                        return;
                    }
                }
                if (AddFarmer.this.etCropDos.getText().toString().equalsIgnoreCase(AddFarmer.this.getResources().getString(R.string.na))) {
                    return;
                }
                AddFarmer addFarmer = AddFarmer.this;
                addFarmer.txt = addFarmer.etCropDos;
                AddFarmer.this.showDialog(5);
            }
        });
        this.etCropName.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.AddFarmer.12
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                UtilDeclarations.hideInputKeyboard(AddFarmer.this.context);
                try {
                    ListPopupOne listPopupOne = new ListPopupOne(AddFarmer.this.context, AddFarmer.this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_selectText()) + " " + AddFarmer.this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_cropFilterText()), Queries.getInstance().gettingDropdownValues(1), view, AddFarmer.this.tvCropid);
                    listPopupOne.getWindow().getAttributes().windowAnimations = R.style.PauseDialogAnimation;
                    listPopupOne.show();
                    listPopupOne.getWindow().setSoftInputMode(3);
                } catch (Exception e) {
                    PLog.e(AddFarmer.this.tag, e);
                }
            }
        });
        this.ethybrid.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.AddFarmer.13
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                UtilDeclarations.hideInputKeyboard(AddFarmer.this.context);
                try {
                    ListPopupOne listPopupOne = new ListPopupOne(AddFarmer.this.context, AddFarmer.this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_selectOneDropDownTitle()), Queries.getInstance().gettingHybrieds(AddFarmer.this.tvCropid.getText().toString()), view, AddFarmer.this.tvhybridid);
                    listPopupOne.getWindow().getAttributes().windowAnimations = R.style.PauseDialogAnimation;
                    listPopupOne.show();
                    listPopupOne.getWindow().setSoftInputMode(3);
                } catch (Exception e) {
                    PLog.e(AddFarmer.this.tag, e);
                }
            }
        });
        this.tvCropid.addTextChangedListener(new TextWatcher() { // from class: com.conceptglobal.pmc.fragments.AddFarmer.14
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (AddFarmer.this.tvCropid.getText().toString().length() > 0) {
                    try {
                        if (Integer.parseInt(AddFarmer.this.tvCropid.getText().toString()) == 0) {
                            AddFarmer.this.etCropAccr.setVisibility(8);
                            AddFarmer.this.etCropDos.setVisibility(8);
                            return;
                        }
                        try {
                            String stringValue = AddFarmer.this.getDataFromDB.getStringValue(Queries.getInstance().getCropAcreagesForCrop(AddFarmer.this.farmerID, Integer.parseInt(AddFarmer.this.tvCropid.getText().toString())));
                            if (stringValue == null || stringValue.trim().length() <= 0) {
                                AddFarmer.this.etCropAccr.setText(ConstantDeclarations.getInstance().getEMPTY());
                            } else {
                                AddFarmer.this.etCropAccr.setText(stringValue);
                            }
                        } catch (SQLiteDoneException unused) {
                            AddFarmer.this.etCropAccr.setText(ConstantDeclarations.getInstance().getEMPTY());
                        }
                        try {
                            String stringValue2 = AddFarmer.this.getDataFromDB.getStringValue(Queries.getInstance().getDosFromCrop(AddFarmer.this.farmerID, Integer.parseInt(AddFarmer.this.tvCropid.getText().toString())));
                            if (stringValue2 != null) {
                                AddFarmer.this.etCropDos.setText(stringValue2);
                            }
                        } catch (SQLiteDoneException unused2) {
                            AddFarmer.this.etCropDos.setText(ConstantDeclarations.getInstance().getEMPTY());
                        }
                    } catch (Exception e) {
                        PLog.e(AddFarmer.this.tag, e);
                    }
                }
            }
        });
        button.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.AddFarmer.15
            private FarmerCropMapping farmerCropMapping;

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                UtilDeclarations.hideInputKeyboard(AddFarmer.this.context);
                String trim = AddFarmer.this.etCropName.getText().toString().trim();
                String trim2 = AddFarmer.this.etCropAccr.getText().toString().trim();
                String trim3 = AddFarmer.this.etCropDos.getText().toString().trim();
                AddFarmer.this.ethybrid.getText().toString();
                String charSequence = AddFarmer.this.tvhybridid.getText().toString();
                if (trim == null || trim.equals("")) {
                    Toast.makeText(AddFarmer.this.context, AddFarmer.this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_pleaseSelectCropToast()), 0).show();
                    return;
                }
                if (trim2 == null || trim2.equals("") || trim2.equals(".") || Float.valueOf(trim2).floatValue() <= 0.0f) {
                    Toast.makeText(AddFarmer.this.context, AddFarmer.this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_enterPropAcreToast()), 0).show();
                    return;
                }
                if (AddFarmer.this.isDuplicateCrop(trim) != null) {
                    Toast.makeText(AddFarmer.this, "Cropname already exist.", 1).show();
                }
                FarmerCropMapping farmerCropMapping = new FarmerCropMapping();
                this.farmerCropMapping = farmerCropMapping;
                try {
                    try {
                        farmerCropMapping.setAcreages(Float.parseFloat(trim2));
                        this.farmerCropMapping.setRespondentNo(AddFarmer.this.farmerID);
                        this.farmerCropMapping.setCropId(Integer.parseInt(AddFarmer.this.tvCropid.getText().toString()));
                        this.farmerCropMapping.setDos(trim3);
                        this.farmerCropMapping.setCropName(trim);
                        this.farmerCropMapping.setHybridId(charSequence.length() > 0 ? Integer.parseInt(charSequence) : 0);
                    } catch (Exception e) {
                        PLog.e(AddFarmer.this.tag, e);
                    }
                    if (AddFarmer.this.listFarmerCrops.size() > 0) {
                        boolean z = false;
                        for (int i2 = 0; i2 < AddFarmer.this.listFarmerCrops.size(); i2++) {
                            if (Integer.parseInt(AddFarmer.this.tvCropid.getText().toString()) == ((FarmerCropMapping) AddFarmer.this.listFarmerCrops.get(i2)).getCropId()) {
                                FarmerCropMapping farmerCropMapping2 = (FarmerCropMapping) AddFarmer.this.listFarmerCrops.get(i2);
                                farmerCropMapping2.setAcreages(Float.parseFloat(trim2));
                                farmerCropMapping2.setRespondentNo(AddFarmer.this.farmerID);
                                farmerCropMapping2.setDos(trim3);
                                farmerCropMapping2.setHybridId(charSequence.length() > 0 ? Integer.parseInt(charSequence) : 0);
                                AddFarmer.this.listFarmerCrops.remove(i2);
                                AddFarmer.this.listFarmerCrops.add(farmerCropMapping2);
                                AddFarmer.this.modifiedListOfFarmerCrops.add(Integer.valueOf(farmerCropMapping2.getMappingId()));
                                z = true;
                            }
                        }
                        if (!z) {
                            AddFarmer.this.listFarmerCrops.add(this.farmerCropMapping);
                        }
                    } else {
                        AddFarmer.this.listFarmerCrops.add(this.farmerCropMapping);
                    }
                    AddFarmer.this.setListviewForAcreages();
                } catch (Exception e2) {
                    PLog.e(AddFarmer.this.tag, e2);
                }
                dialog.dismiss();
            }
        });
        button2.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.AddFarmer.16
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (!AddFarmer.this.etCropDos.getText().toString().equalsIgnoreCase(AddFarmer.this.getResources().getString(R.string.na))) {
                    AddFarmer.this.etCropDos.setText(AddFarmer.this.getResources().getString(R.string.na));
                    button2.setBackgroundColor(-12303292);
                } else {
                    AddFarmer.this.etCropDos.setText("");
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

    /* JADX INFO: Access modifiers changed from: private */
    public FarmerCropMapping isDuplicateCrop(String str) {
        try {
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (this.listFarmerCrops.size() <= 0) {
            return null;
        }
        for (int i = 0; i < this.listFarmerCrops.size(); i++) {
            FarmerCropMapping farmerCropMapping = this.listFarmerCrops.get(i);
            if (farmerCropMapping.getCropName().equals(str)) {
                return farmerCropMapping;
            }
        }
        return null;
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
            if (i == 1) {
                DatePickerDialog datePickerDialog = new DatePickerDialog(this, this.mDateSetListener_Yearless, this.mYear, this.mMonth, this.mDay) { // from class: com.conceptglobal.pmc.fragments.AddFarmer.19
                    @Override // android.app.DatePickerDialog, android.widget.DatePicker.OnDateChangedListener
                    public void onDateChanged(DatePicker datePicker, int i2, int i3, int i4) {
                        setTitle(AddFarmer.this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_selectDayMonthDPTitle()));
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
            if (this.isFromTransaction != 1 && !this.isRoleReadonlyFarmer) {
                showGoBackDialog();
            } else {
                finish();
            }
            return true;
        }
        if (itemId == R.id.item_add_draft) {
            if (this.isRoleReadonlyFarmer) {
                showAccessDeniedDialog();
            } else {
                this.status = 0;
                new DataInsertion(this).execute(new Void[0]);
            }
        }
        return super.onOptionsItemSelected(menuItem);
    }

    private void showGoBackDialog() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.context);
        builder.setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.AddFarmer.22
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
                AddFarmer.this.finish();
            }
        });
        builder.setMessage(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_addCustomerGoBackDialog())).setCancelable(false).setNegativeButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_cancelDialogButtonText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.AddFarmer.23
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
        MenuItem findItem = menu.findItem(R.id.item_add_draft);
        if (findItem != null) {
            findItem.setVisible(false);
        }
        return super.onCreateOptionsMenu(menu);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.btn_get_latlong_farmer_personal_details) {
            if (this.isRoleReadonlyFarmer) {
                return;
            }
            fetchLocation(this.tvLatitude, this.tvLongitude);
            return;
        }
        if (id == R.id.btn_save) {
            if (this.isRoleReadonlyFarmer) {
                showAccessDeniedDialog();
                return;
            } else {
                this.status = 1;
                new DataSaveTask().execute(new Void[0]);
                return;
            }
        }
        if (id != R.id.img_farmer_image_other_details) {
            return;
        }
        if (this.isRoleReadonlyFarmer) {
            showAccessDeniedDialog();
        } else if (this.imagelist.size() <= 4) {
            captureImage(0L);
        } else {
            Toast.makeText(getApplication(), this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_maxImagesToast()), 1).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean validateFarmerWithOTP() {
        try {
            String singleValue = GetDataFromDB.getInstance().getSingleValue(Queries.getInstance().getItemValuewithActiveCondition("FarmerOTPRoleId"));
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

    /* JADX INFO: Access modifiers changed from: private */
    public void showOTPDialog(FarmerMaster farmerMaster) {
        new OTPVerificationDialog(this, farmerMaster.getMobile(), farmerMaster.getFarmerName(), this).showDialog();
    }

    private void validateMobileNumber() {
        if (this.attributesArry.size() > 0) {
            for (int i = 0; i < this.attributesArry.size(); i++) {
                if (this.attributesArry.get(i).getMinLength() != 0 && this.attributesArry.get(i).getDbColumnName().equalsIgnoreCase("Mobile")) {
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

    private void showMobileSearchDialog() {
        final Dialog dialog = new Dialog(this);
        dialog.requestWindowFeature(1);
        dialog.setContentView(R.layout.alert_mobile_search);
        final EditText editText = (EditText) dialog.findViewById(R.id.etMobileNumber);
        Button button = (Button) dialog.findViewById(R.id.btn_cancel_alert);
        ((Button) dialog.findViewById(R.id.btn_search_alert)).setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.AddFarmer.24
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                UtilDeclarations.hideInputKeyboard(AddFarmer.this);
                if (AddFarmer.this.isValidMobileNumber(editText.getText().toString())) {
                    AddFarmer.this.checkFarmerInTerritory(editText.getText().toString());
                    dialog.dismiss();
                } else {
                    editText.setError("Please enter 10 digit mobile number");
                }
            }
        });
        button.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.AddFarmer.25
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                UtilDeclarations.hideInputKeyboard(AddFarmer.this);
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
            String encrypt = Encryption.encrypt(str);
            if (encrypt.contains(IOUtils.LINE_SEPARATOR_UNIX)) {
                encrypt = encrypt.replace(IOUtils.LINE_SEPARATOR_UNIX, "");
            }
            boolean isMobileNumExists = this.getDataFromDB.isMobileNumExists(Queries.getInstance().isMobileExistsForFarmer(this.farmerID, this.typeOfFarmer), str);
            this.getDataFromDB.isMobileNumExists("SELECT Mobile FROM PMCTerritoryFarmerMaster where  Mobile ='" + encrypt + "'");
            TerritotyFarmerMaster territoryFarmereDetails = this.getDataFromDB.getTerritoryFarmereDetails(Queries.getInstance().getTerritoryFarmerQry(encrypt));
            if (territoryFarmereDetails.getFarmerID() != 0) {
                showDetailsDialog(territoryFarmereDetails);
            } else if (isMobileNumExists) {
                showDetailsDialog(this.getDataFromDB.getTerritoryFarmereDetails(Queries.getInstance().getTerritoryFarmerQryInFarmerMaster(encrypt)));
            } else {
                showNoDataAvailableDialog("No Farmer data found.");
            }
        } catch (Exception e) {
            e.printStackTrace();
            showNoDataAvailableDialog("No Farmer data found.");
        }
    }

    private void showNoDataAvailableDialog(String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setMessage(str).setCancelable(false).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.AddFarmer.26
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

    private void showDetailsDialog(TerritotyFarmerMaster territotyFarmerMaster) {
        final Dialog dialog = new Dialog(this);
        dialog.requestWindowFeature(1);
        dialog.setContentView(R.layout.alert_farmer_mobile_details);
        TextView textView = (TextView) dialog.findViewById(R.id.tvFarmerName);
        Button button = (Button) dialog.findViewById(R.id.btn_ok_alert);
        textView.setText(getResources().getString(R.string.pmc_reg_farmer_name) + "   : " + territotyFarmerMaster.getFarmerName() + "\n\n" + getResources().getString(R.string.pmc_reg_mobile_no) + " : " + territotyFarmerMaster.getMobile() + "\n\nMarket Name    : " + territotyFarmerMaster.getTerritory() + "\n\nVillage Name     : " + territotyFarmerMaster.getVillage());
        button.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.AddFarmer.27
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

    /* JADX INFO: Access modifiers changed from: private */
    public void bindAddress(Location location) {
        String addressWithLatLong = UtilDeclarations.getAddressWithLatLong(this.context, location.getLatitude(), location.getLongitude());
        try {
            this.farmerMaster.setGPSTimeStamp(UtilDeclarations.getLongToDate(location.getTime()));
            long lookupValue = GetDataFromDB.getInstance().getLookupValue(Queries.getInstance().getItemValue("farmerGoogleAddress"));
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
        if (farmerType.equalsIgnoreCase(ConstantsPMC.TYPE_FARMER) || farmerType.equalsIgnoreCase("UnVerifiedFarmer") || farmerType.equalsIgnoreCase("Village")) {
            this.farmerMaster.setTypeofFarmer("1");
            this.farmerMaster.setFarmerTypeId("1");
            int i = this.status;
            if (i == 1) {
                this.farmerMaster.setProfilePicCaptured(1);
                this.farmerMaster.setColumn3(1);
            } else if (i == 0) {
                try {
                    String singleValue = this.getDataFromDB.getSingleValue(Queries.getInstance().getIsProfilePicCapturd(this.farmerID));
                    if (singleValue != null && singleValue.equals("1")) {
                        this.farmerMaster.setProfilePicCaptured(1);
                    } else {
                        for (int i2 = 0; i2 < this.images.size(); i2++) {
                            if (this.images.get(i2).getEventTypeId() == 4) {
                                this.farmerMaster.setProfilePicCaptured(1);
                            }
                        }
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
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
            int i3 = this.getDataFromDB.getcount(Queries.getInstance().gettingFarmerCount(this.farmerID));
            this.farmercount = i3;
            if (i3 > 0) {
                InsertDataIntoDB.updateFarmerDetails(this.farmerMaster, this.attributesArry, this.mEntryArr, this.farmerID, 0, this.mEntryArrIds);
            } else {
                InsertDataIntoDB.insertFarmerDetails(this.farmerMaster, this.attributesArry, this.mEntryArr, this.mEntryArrIds);
            }
        } catch (Exception e2) {
            PLog.e(this.tag, e2);
        }
        for (FarmerCropMapping farmerCropMapping : this.listFarmerCrops) {
            try {
                if (farmerCropMapping.getMappingId() == 0) {
                    try {
                        InsertDataIntoDB.insertCropSelectionDetails(farmerCropMapping);
                    } catch (Exception e3) {
                        PLog.e(TAG, e3);
                    }
                } else if (this.modifiedListOfFarmerCrops.contains(Integer.valueOf(farmerCropMapping.getMappingId()))) {
                    try {
                        InsertDataIntoDB.updateCropSelectionDetails(farmerCropMapping);
                    } catch (Exception e4) {
                        PLog.e(TAG, e4);
                    }
                }
            } finally {
                dbInstance.closeDatabase();
            }
        }
        try {
            dbInstance.openDatabase();
            for (int i4 = 0; i4 < deletedCropsIds.size(); i4++) {
                this.getDataFromDB.executeRawQuery("Update FarmerCropDetails set IsActive= 0 , serverupdatedstatus ='false'  where RespondentNo ='" + this.farmerID + "' and DetailsID = " + deletedCropsIds.get(i4));
            }
        } catch (Exception e5) {
            PLog.e(TAG, e5);
        }
        try {
            GetDataFromDB.getInstance().executeRawQueryInDB(Queries.getInstance().UpdateFarmerCropStatus(this.farmerID, this.farmerMaster.getPdaid(), Integer.parseInt(ConstantsPMC.getInstance().getUserId().toString())));
        } catch (Exception e6) {
            PLog.e(TAG, e6);
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
    /* JADX WARN: Can't wrap try/catch for region: R(46:0|1|(4:2|3|4|(42:6|7|8|(3:732|733|734)|10|11|(2:13|14)|15|16|(1:18)|19|20|(2:22|23)|24|25|(2:27|28)|29|30|(1:32)|33|34|(2:36|37)|38|39|(2:41|42)|43|44|(2:46|47)|48|49|(2:51|52)|53|54|(2:56|57)|58|59|(1:61)|62|63|(1:65)|66|(2:68|(4:70|71|72|73)(7:114|(2:116|117)(29:177|178|(10:180|(2:182|(8:186|(1:188)|189|190|191|(2:195|(2:197|198)(2:320|321))|322|198))(2:323|(2:325|198)(2:326|321))|199|(4:201|(2:203|(2:205|206)(1:(1:208)))(2:209|(2:211|206)(1:(1:213)))|72|73)|214|(4:216|(1:218)(1:(1:225))|219|(1:221)(1:(1:223)))|226|(2:228|(4:230|231|232|233)(1:(1:238)))|239|(4:244|(2:284|(10:302|(2:306|(2:308|(2:310|283)(1:(1:312)))(2:313|(2:315|(2:317|283)(1:(1:319)))))|258|(1:262)|263|(2:267|268)|265|266|119|(2:121|(3:124|(6:157|158|(8:161|162|163|165|166|167|168|159)|171|172|(5:174|175|152|153|154)(2:176|154))(4:126|127|(6:129|130|(8:133|134|135|137|138|139|140|131)|143|144|(6:146|147|(2:150|148)|151|152|153)(1:155))(1:156)|154)|122)))(2:288|(2:290|(10:292|283|258|(2:260|262)|263|(0)|265|266|119|(0))(9:(1:294)|258|(0)|263|(0)|265|266|119|(0)))(10:295|(2:297|(2:299|283)(1:(1:301)))|258|(0)|263|(0)|265|266|119|(0))))(11:248|(3:250|(1:(1:256))|272)(2:273|(12:275|(9:(1:281)|258|(0)|263|(0)|265|266|119|(0))|282|283|258|(0)|263|(0)|265|266|119|(0)))|257|258|(0)|263|(0)|265|266|119|(0))|72|73)(3:243|72|73))|327|321|199|(0)|214|(0)|226|(0)|239|(1:241)|244|(1:246)|284|(1:286)|302|(5:304|306|(0)(0)|72|73)|258|(0)|263|(0)|265|266|119|(0)|72|73)|118|119|(0)|72|73))(8:328|329|(5:331|(19:335|(20:337|(2:339|(3:343|(1:345)(2:723|(1:725)(1:726))|346))(2:727|(2:729|346)(1:730))|347|(12:349|(2:351|(2:353|354)(1:(1:356)))(2:357|(2:359|354)(1:(1:361)))|78|(2:80|(1:85)(1:84))|86|(2:88|(1:93)(1:92))|94|(2:96|(1:101)(1:100))|102|(2:104|(2:109|110)(1:108))|112|113)|362|(2:687|(10:705|(2:709|(2:711|(2:713|686)(1:(1:715)))(2:716|(2:718|(2:720|686)(1:(1:722)))))|376|(2:378|(1:380)(1:381))|669|(2:671|672)|119|(0)|72|73)(2:691|(2:693|(10:695|686|376|(0)|669|(0)|119|(0)|72|73)(9:(1:697)|376|(0)|669|(0)|119|(0)|72|73))(10:698|(2:700|(2:702|686)(1:(1:704)))|376|(0)|669|(0)|119|(0)|72|73)))(11:366|(3:368|(1:(1:374))|675)(2:676|(12:678|(2:680|(1:682)(9:(1:684)|376|(0)|669|(0)|119|(0)|72|73))|685|686|376|(0)|669|(0)|119|(0)|72|73))|375|376|(0)|669|(0)|119|(0)|72|73)|74|75|76|77|78|(0)|86|(0)|94|(0)|102|(0)|112|113)|731|347|(0)|362|(1:364)|687|(1:689)|705|(17:707|709|(0)(0)|74|75|76|77|78|(0)|86|(0)|94|(0)|102|(0)|112|113)|376|(0)|669|(0)|119|(0)|72|73)|71|72|73)|266|119|(0)|72|73))(2:741|742))|382|(2:391|392)|(2:402|403)|404|(4:408|409|405|406)|410|411|(3:424|425|426)|427|(3:438|439|440)|441|(3:447|448|(3:450|451|452))|455|456|(5:458|459|(2:464|(7:467|(2:479|480)|471|472|(3:474|475|476)(1:478)|477|465))|482|483)|488|489|(4:491|492|493|(26:495|496|497|498|(3:504|(1:506)(3:518|(4:521|(3:523|524|525)(1:527)|526|519)|528)|(3:508|509|510))|530|531|(2:541|(3:545|546|547)(1:543))|552|553|(2:643|(4:649|650|651|652))|557|558|(2:560|(2:562|(6:568|(3:571|572|569)|573|574|(2:576|577)(1:579)|578))(2:580|(9:586|587|(1:589)(2:603|(1:605)(1:606))|590|(2:593|591)|594|595|(1:602)(1:599)|600)))|608|(3:610|(2:616|617)|77)(5:618|(3:623|(2:625|(2:631|617))|77)|632|(3:638|639|617)|77)|78|(0)|86|(0)|94|(0)|102|(0)|112|113))(1:661)|658|530|531|(5:533|535|537|541|(0)(0))|552|553|(1:555)|643|(5:645|649|650|651|652)|557|558|(0)|608|(0)(0)|78|(0)|86|(0)|94|(0)|102|(0)|112|113|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:653:0x1615, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:654:0x1616, code lost:
    
        r2 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:663:0x15b4, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:664:0x15b5, code lost:
    
        r3 = r28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:665:0x1528, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:666:0x1529, code lost:
    
        r2 = r0;
     */
    /* JADX WARN: Removed duplicated region for block: B:104:0x1ace  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x1263 A[Catch: Exception -> 0x13d2, TryCatch #8 {Exception -> 0x13d2, blocks: (B:73:0x1382, B:119:0x124b, B:121:0x1263, B:122:0x1283, B:124:0x1289, B:158:0x12a2, B:159:0x12bb, B:161:0x12c1, B:175:0x12f8, B:130:0x130c, B:131:0x1311, B:133:0x1317, B:147:0x1350, B:148:0x1354, B:150:0x135a, B:191:0x02f0, B:195:0x0367, B:197:0x037d, B:199:0x0443, B:201:0x0455, B:203:0x0469, B:205:0x0489, B:208:0x04c7, B:209:0x04d5, B:211:0x050c, B:213:0x0547, B:214:0x0553, B:216:0x0567, B:218:0x0581, B:219:0x05ac, B:221:0x05c6, B:223:0x05e5, B:225:0x05a0, B:226:0x05f1, B:228:0x0605, B:230:0x061f, B:238:0x0654, B:239:0x0660, B:241:0x066e, B:244:0x0689, B:246:0x0697, B:248:0x06a5, B:250:0x06bb, B:252:0x06eb, B:256:0x06f1, B:258:0x0a26, B:260:0x0a34, B:262:0x0a4a, B:263:0x0aa4, B:272:0x06fe, B:273:0x073d, B:275:0x0753, B:277:0x0788, B:281:0x0792, B:282:0x07a0, B:284:0x07db, B:286:0x07eb, B:288:0x07f9, B:290:0x080f, B:292:0x0831, B:294:0x086e, B:295:0x087c, B:297:0x0892, B:299:0x08b7, B:301:0x08f4, B:302:0x0902, B:304:0x0910, B:306:0x091e, B:308:0x0934, B:310:0x0956, B:312:0x0993, B:313:0x09a1, B:315:0x09b7, B:317:0x09dc, B:319:0x0a1a, B:320:0x03ad, B:322:0x03bb, B:323:0x03d5, B:325:0x03fd, B:326:0x042f, B:329:0x0b09, B:331:0x0b23, B:333:0x0b31, B:335:0x0b4b, B:337:0x0b59, B:339:0x0b6d, B:341:0x0b7b, B:343:0x0b95, B:345:0x0bc9, B:347:0x0c97, B:349:0x0ca9, B:351:0x0cbd, B:353:0x0cdd, B:356:0x0d1b, B:357:0x0d29, B:359:0x0d60, B:361:0x0d9b, B:362:0x0da7, B:364:0x0db5, B:366:0x0dc3, B:368:0x0dd9, B:370:0x0e09, B:374:0x0e0f, B:376:0x1164, B:378:0x1172, B:380:0x1188, B:384:0x13ae, B:387:0x13b6, B:389:0x13bc, B:394:0x13d6, B:397:0x13de, B:399:0x13e4, B:408:0x1406, B:413:0x1428, B:416:0x1430, B:419:0x1438, B:421:0x143e, B:429:0x145f, B:431:0x1465, B:433:0x146b, B:435:0x1471, B:445:0x149d, B:447:0x14a3, B:669:0x11f5, B:675:0x0e1c, B:676:0x0e5d, B:678:0x0e73, B:680:0x0eb3, B:684:0x0ec0, B:685:0x0ece, B:687:0x0f09, B:689:0x0f1b, B:691:0x0f29, B:693:0x0f3f, B:695:0x0f61, B:697:0x0f9e, B:698:0x0fac, B:700:0x0fc2, B:702:0x0fee, B:704:0x102b, B:705:0x1039, B:707:0x1047, B:709:0x1055, B:711:0x106b, B:713:0x108d, B:715:0x10ca, B:716:0x10d8, B:718:0x10ee, B:720:0x111a, B:722:0x1158, B:723:0x0be4, B:725:0x0bfa, B:726:0x0c29, B:727:0x0c36, B:729:0x0c58, B:730:0x0c8a), top: B:72:0x1382 }] */
    /* JADX WARN: Removed duplicated region for block: B:201:0x0455 A[Catch: Exception -> 0x13d2, TryCatch #8 {Exception -> 0x13d2, blocks: (B:73:0x1382, B:119:0x124b, B:121:0x1263, B:122:0x1283, B:124:0x1289, B:158:0x12a2, B:159:0x12bb, B:161:0x12c1, B:175:0x12f8, B:130:0x130c, B:131:0x1311, B:133:0x1317, B:147:0x1350, B:148:0x1354, B:150:0x135a, B:191:0x02f0, B:195:0x0367, B:197:0x037d, B:199:0x0443, B:201:0x0455, B:203:0x0469, B:205:0x0489, B:208:0x04c7, B:209:0x04d5, B:211:0x050c, B:213:0x0547, B:214:0x0553, B:216:0x0567, B:218:0x0581, B:219:0x05ac, B:221:0x05c6, B:223:0x05e5, B:225:0x05a0, B:226:0x05f1, B:228:0x0605, B:230:0x061f, B:238:0x0654, B:239:0x0660, B:241:0x066e, B:244:0x0689, B:246:0x0697, B:248:0x06a5, B:250:0x06bb, B:252:0x06eb, B:256:0x06f1, B:258:0x0a26, B:260:0x0a34, B:262:0x0a4a, B:263:0x0aa4, B:272:0x06fe, B:273:0x073d, B:275:0x0753, B:277:0x0788, B:281:0x0792, B:282:0x07a0, B:284:0x07db, B:286:0x07eb, B:288:0x07f9, B:290:0x080f, B:292:0x0831, B:294:0x086e, B:295:0x087c, B:297:0x0892, B:299:0x08b7, B:301:0x08f4, B:302:0x0902, B:304:0x0910, B:306:0x091e, B:308:0x0934, B:310:0x0956, B:312:0x0993, B:313:0x09a1, B:315:0x09b7, B:317:0x09dc, B:319:0x0a1a, B:320:0x03ad, B:322:0x03bb, B:323:0x03d5, B:325:0x03fd, B:326:0x042f, B:329:0x0b09, B:331:0x0b23, B:333:0x0b31, B:335:0x0b4b, B:337:0x0b59, B:339:0x0b6d, B:341:0x0b7b, B:343:0x0b95, B:345:0x0bc9, B:347:0x0c97, B:349:0x0ca9, B:351:0x0cbd, B:353:0x0cdd, B:356:0x0d1b, B:357:0x0d29, B:359:0x0d60, B:361:0x0d9b, B:362:0x0da7, B:364:0x0db5, B:366:0x0dc3, B:368:0x0dd9, B:370:0x0e09, B:374:0x0e0f, B:376:0x1164, B:378:0x1172, B:380:0x1188, B:384:0x13ae, B:387:0x13b6, B:389:0x13bc, B:394:0x13d6, B:397:0x13de, B:399:0x13e4, B:408:0x1406, B:413:0x1428, B:416:0x1430, B:419:0x1438, B:421:0x143e, B:429:0x145f, B:431:0x1465, B:433:0x146b, B:435:0x1471, B:445:0x149d, B:447:0x14a3, B:669:0x11f5, B:675:0x0e1c, B:676:0x0e5d, B:678:0x0e73, B:680:0x0eb3, B:684:0x0ec0, B:685:0x0ece, B:687:0x0f09, B:689:0x0f1b, B:691:0x0f29, B:693:0x0f3f, B:695:0x0f61, B:697:0x0f9e, B:698:0x0fac, B:700:0x0fc2, B:702:0x0fee, B:704:0x102b, B:705:0x1039, B:707:0x1047, B:709:0x1055, B:711:0x106b, B:713:0x108d, B:715:0x10ca, B:716:0x10d8, B:718:0x10ee, B:720:0x111a, B:722:0x1158, B:723:0x0be4, B:725:0x0bfa, B:726:0x0c29, B:727:0x0c36, B:729:0x0c58, B:730:0x0c8a), top: B:72:0x1382 }] */
    /* JADX WARN: Removed duplicated region for block: B:216:0x0567 A[Catch: Exception -> 0x13d2, TryCatch #8 {Exception -> 0x13d2, blocks: (B:73:0x1382, B:119:0x124b, B:121:0x1263, B:122:0x1283, B:124:0x1289, B:158:0x12a2, B:159:0x12bb, B:161:0x12c1, B:175:0x12f8, B:130:0x130c, B:131:0x1311, B:133:0x1317, B:147:0x1350, B:148:0x1354, B:150:0x135a, B:191:0x02f0, B:195:0x0367, B:197:0x037d, B:199:0x0443, B:201:0x0455, B:203:0x0469, B:205:0x0489, B:208:0x04c7, B:209:0x04d5, B:211:0x050c, B:213:0x0547, B:214:0x0553, B:216:0x0567, B:218:0x0581, B:219:0x05ac, B:221:0x05c6, B:223:0x05e5, B:225:0x05a0, B:226:0x05f1, B:228:0x0605, B:230:0x061f, B:238:0x0654, B:239:0x0660, B:241:0x066e, B:244:0x0689, B:246:0x0697, B:248:0x06a5, B:250:0x06bb, B:252:0x06eb, B:256:0x06f1, B:258:0x0a26, B:260:0x0a34, B:262:0x0a4a, B:263:0x0aa4, B:272:0x06fe, B:273:0x073d, B:275:0x0753, B:277:0x0788, B:281:0x0792, B:282:0x07a0, B:284:0x07db, B:286:0x07eb, B:288:0x07f9, B:290:0x080f, B:292:0x0831, B:294:0x086e, B:295:0x087c, B:297:0x0892, B:299:0x08b7, B:301:0x08f4, B:302:0x0902, B:304:0x0910, B:306:0x091e, B:308:0x0934, B:310:0x0956, B:312:0x0993, B:313:0x09a1, B:315:0x09b7, B:317:0x09dc, B:319:0x0a1a, B:320:0x03ad, B:322:0x03bb, B:323:0x03d5, B:325:0x03fd, B:326:0x042f, B:329:0x0b09, B:331:0x0b23, B:333:0x0b31, B:335:0x0b4b, B:337:0x0b59, B:339:0x0b6d, B:341:0x0b7b, B:343:0x0b95, B:345:0x0bc9, B:347:0x0c97, B:349:0x0ca9, B:351:0x0cbd, B:353:0x0cdd, B:356:0x0d1b, B:357:0x0d29, B:359:0x0d60, B:361:0x0d9b, B:362:0x0da7, B:364:0x0db5, B:366:0x0dc3, B:368:0x0dd9, B:370:0x0e09, B:374:0x0e0f, B:376:0x1164, B:378:0x1172, B:380:0x1188, B:384:0x13ae, B:387:0x13b6, B:389:0x13bc, B:394:0x13d6, B:397:0x13de, B:399:0x13e4, B:408:0x1406, B:413:0x1428, B:416:0x1430, B:419:0x1438, B:421:0x143e, B:429:0x145f, B:431:0x1465, B:433:0x146b, B:435:0x1471, B:445:0x149d, B:447:0x14a3, B:669:0x11f5, B:675:0x0e1c, B:676:0x0e5d, B:678:0x0e73, B:680:0x0eb3, B:684:0x0ec0, B:685:0x0ece, B:687:0x0f09, B:689:0x0f1b, B:691:0x0f29, B:693:0x0f3f, B:695:0x0f61, B:697:0x0f9e, B:698:0x0fac, B:700:0x0fc2, B:702:0x0fee, B:704:0x102b, B:705:0x1039, B:707:0x1047, B:709:0x1055, B:711:0x106b, B:713:0x108d, B:715:0x10ca, B:716:0x10d8, B:718:0x10ee, B:720:0x111a, B:722:0x1158, B:723:0x0be4, B:725:0x0bfa, B:726:0x0c29, B:727:0x0c36, B:729:0x0c58, B:730:0x0c8a), top: B:72:0x1382 }] */
    /* JADX WARN: Removed duplicated region for block: B:228:0x0605 A[Catch: Exception -> 0x13d2, TryCatch #8 {Exception -> 0x13d2, blocks: (B:73:0x1382, B:119:0x124b, B:121:0x1263, B:122:0x1283, B:124:0x1289, B:158:0x12a2, B:159:0x12bb, B:161:0x12c1, B:175:0x12f8, B:130:0x130c, B:131:0x1311, B:133:0x1317, B:147:0x1350, B:148:0x1354, B:150:0x135a, B:191:0x02f0, B:195:0x0367, B:197:0x037d, B:199:0x0443, B:201:0x0455, B:203:0x0469, B:205:0x0489, B:208:0x04c7, B:209:0x04d5, B:211:0x050c, B:213:0x0547, B:214:0x0553, B:216:0x0567, B:218:0x0581, B:219:0x05ac, B:221:0x05c6, B:223:0x05e5, B:225:0x05a0, B:226:0x05f1, B:228:0x0605, B:230:0x061f, B:238:0x0654, B:239:0x0660, B:241:0x066e, B:244:0x0689, B:246:0x0697, B:248:0x06a5, B:250:0x06bb, B:252:0x06eb, B:256:0x06f1, B:258:0x0a26, B:260:0x0a34, B:262:0x0a4a, B:263:0x0aa4, B:272:0x06fe, B:273:0x073d, B:275:0x0753, B:277:0x0788, B:281:0x0792, B:282:0x07a0, B:284:0x07db, B:286:0x07eb, B:288:0x07f9, B:290:0x080f, B:292:0x0831, B:294:0x086e, B:295:0x087c, B:297:0x0892, B:299:0x08b7, B:301:0x08f4, B:302:0x0902, B:304:0x0910, B:306:0x091e, B:308:0x0934, B:310:0x0956, B:312:0x0993, B:313:0x09a1, B:315:0x09b7, B:317:0x09dc, B:319:0x0a1a, B:320:0x03ad, B:322:0x03bb, B:323:0x03d5, B:325:0x03fd, B:326:0x042f, B:329:0x0b09, B:331:0x0b23, B:333:0x0b31, B:335:0x0b4b, B:337:0x0b59, B:339:0x0b6d, B:341:0x0b7b, B:343:0x0b95, B:345:0x0bc9, B:347:0x0c97, B:349:0x0ca9, B:351:0x0cbd, B:353:0x0cdd, B:356:0x0d1b, B:357:0x0d29, B:359:0x0d60, B:361:0x0d9b, B:362:0x0da7, B:364:0x0db5, B:366:0x0dc3, B:368:0x0dd9, B:370:0x0e09, B:374:0x0e0f, B:376:0x1164, B:378:0x1172, B:380:0x1188, B:384:0x13ae, B:387:0x13b6, B:389:0x13bc, B:394:0x13d6, B:397:0x13de, B:399:0x13e4, B:408:0x1406, B:413:0x1428, B:416:0x1430, B:419:0x1438, B:421:0x143e, B:429:0x145f, B:431:0x1465, B:433:0x146b, B:435:0x1471, B:445:0x149d, B:447:0x14a3, B:669:0x11f5, B:675:0x0e1c, B:676:0x0e5d, B:678:0x0e73, B:680:0x0eb3, B:684:0x0ec0, B:685:0x0ece, B:687:0x0f09, B:689:0x0f1b, B:691:0x0f29, B:693:0x0f3f, B:695:0x0f61, B:697:0x0f9e, B:698:0x0fac, B:700:0x0fc2, B:702:0x0fee, B:704:0x102b, B:705:0x1039, B:707:0x1047, B:709:0x1055, B:711:0x106b, B:713:0x108d, B:715:0x10ca, B:716:0x10d8, B:718:0x10ee, B:720:0x111a, B:722:0x1158, B:723:0x0be4, B:725:0x0bfa, B:726:0x0c29, B:727:0x0c36, B:729:0x0c58, B:730:0x0c8a), top: B:72:0x1382 }] */
    /* JADX WARN: Removed duplicated region for block: B:260:0x0a34 A[Catch: Exception -> 0x13d2, TryCatch #8 {Exception -> 0x13d2, blocks: (B:73:0x1382, B:119:0x124b, B:121:0x1263, B:122:0x1283, B:124:0x1289, B:158:0x12a2, B:159:0x12bb, B:161:0x12c1, B:175:0x12f8, B:130:0x130c, B:131:0x1311, B:133:0x1317, B:147:0x1350, B:148:0x1354, B:150:0x135a, B:191:0x02f0, B:195:0x0367, B:197:0x037d, B:199:0x0443, B:201:0x0455, B:203:0x0469, B:205:0x0489, B:208:0x04c7, B:209:0x04d5, B:211:0x050c, B:213:0x0547, B:214:0x0553, B:216:0x0567, B:218:0x0581, B:219:0x05ac, B:221:0x05c6, B:223:0x05e5, B:225:0x05a0, B:226:0x05f1, B:228:0x0605, B:230:0x061f, B:238:0x0654, B:239:0x0660, B:241:0x066e, B:244:0x0689, B:246:0x0697, B:248:0x06a5, B:250:0x06bb, B:252:0x06eb, B:256:0x06f1, B:258:0x0a26, B:260:0x0a34, B:262:0x0a4a, B:263:0x0aa4, B:272:0x06fe, B:273:0x073d, B:275:0x0753, B:277:0x0788, B:281:0x0792, B:282:0x07a0, B:284:0x07db, B:286:0x07eb, B:288:0x07f9, B:290:0x080f, B:292:0x0831, B:294:0x086e, B:295:0x087c, B:297:0x0892, B:299:0x08b7, B:301:0x08f4, B:302:0x0902, B:304:0x0910, B:306:0x091e, B:308:0x0934, B:310:0x0956, B:312:0x0993, B:313:0x09a1, B:315:0x09b7, B:317:0x09dc, B:319:0x0a1a, B:320:0x03ad, B:322:0x03bb, B:323:0x03d5, B:325:0x03fd, B:326:0x042f, B:329:0x0b09, B:331:0x0b23, B:333:0x0b31, B:335:0x0b4b, B:337:0x0b59, B:339:0x0b6d, B:341:0x0b7b, B:343:0x0b95, B:345:0x0bc9, B:347:0x0c97, B:349:0x0ca9, B:351:0x0cbd, B:353:0x0cdd, B:356:0x0d1b, B:357:0x0d29, B:359:0x0d60, B:361:0x0d9b, B:362:0x0da7, B:364:0x0db5, B:366:0x0dc3, B:368:0x0dd9, B:370:0x0e09, B:374:0x0e0f, B:376:0x1164, B:378:0x1172, B:380:0x1188, B:384:0x13ae, B:387:0x13b6, B:389:0x13bc, B:394:0x13d6, B:397:0x13de, B:399:0x13e4, B:408:0x1406, B:413:0x1428, B:416:0x1430, B:419:0x1438, B:421:0x143e, B:429:0x145f, B:431:0x1465, B:433:0x146b, B:435:0x1471, B:445:0x149d, B:447:0x14a3, B:669:0x11f5, B:675:0x0e1c, B:676:0x0e5d, B:678:0x0e73, B:680:0x0eb3, B:684:0x0ec0, B:685:0x0ece, B:687:0x0f09, B:689:0x0f1b, B:691:0x0f29, B:693:0x0f3f, B:695:0x0f61, B:697:0x0f9e, B:698:0x0fac, B:700:0x0fc2, B:702:0x0fee, B:704:0x102b, B:705:0x1039, B:707:0x1047, B:709:0x1055, B:711:0x106b, B:713:0x108d, B:715:0x10ca, B:716:0x10d8, B:718:0x10ee, B:720:0x111a, B:722:0x1158, B:723:0x0be4, B:725:0x0bfa, B:726:0x0c29, B:727:0x0c36, B:729:0x0c58, B:730:0x0c8a), top: B:72:0x1382 }] */
    /* JADX WARN: Removed duplicated region for block: B:267:0x0ab8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:308:0x0934 A[Catch: Exception -> 0x13d2, TryCatch #8 {Exception -> 0x13d2, blocks: (B:73:0x1382, B:119:0x124b, B:121:0x1263, B:122:0x1283, B:124:0x1289, B:158:0x12a2, B:159:0x12bb, B:161:0x12c1, B:175:0x12f8, B:130:0x130c, B:131:0x1311, B:133:0x1317, B:147:0x1350, B:148:0x1354, B:150:0x135a, B:191:0x02f0, B:195:0x0367, B:197:0x037d, B:199:0x0443, B:201:0x0455, B:203:0x0469, B:205:0x0489, B:208:0x04c7, B:209:0x04d5, B:211:0x050c, B:213:0x0547, B:214:0x0553, B:216:0x0567, B:218:0x0581, B:219:0x05ac, B:221:0x05c6, B:223:0x05e5, B:225:0x05a0, B:226:0x05f1, B:228:0x0605, B:230:0x061f, B:238:0x0654, B:239:0x0660, B:241:0x066e, B:244:0x0689, B:246:0x0697, B:248:0x06a5, B:250:0x06bb, B:252:0x06eb, B:256:0x06f1, B:258:0x0a26, B:260:0x0a34, B:262:0x0a4a, B:263:0x0aa4, B:272:0x06fe, B:273:0x073d, B:275:0x0753, B:277:0x0788, B:281:0x0792, B:282:0x07a0, B:284:0x07db, B:286:0x07eb, B:288:0x07f9, B:290:0x080f, B:292:0x0831, B:294:0x086e, B:295:0x087c, B:297:0x0892, B:299:0x08b7, B:301:0x08f4, B:302:0x0902, B:304:0x0910, B:306:0x091e, B:308:0x0934, B:310:0x0956, B:312:0x0993, B:313:0x09a1, B:315:0x09b7, B:317:0x09dc, B:319:0x0a1a, B:320:0x03ad, B:322:0x03bb, B:323:0x03d5, B:325:0x03fd, B:326:0x042f, B:329:0x0b09, B:331:0x0b23, B:333:0x0b31, B:335:0x0b4b, B:337:0x0b59, B:339:0x0b6d, B:341:0x0b7b, B:343:0x0b95, B:345:0x0bc9, B:347:0x0c97, B:349:0x0ca9, B:351:0x0cbd, B:353:0x0cdd, B:356:0x0d1b, B:357:0x0d29, B:359:0x0d60, B:361:0x0d9b, B:362:0x0da7, B:364:0x0db5, B:366:0x0dc3, B:368:0x0dd9, B:370:0x0e09, B:374:0x0e0f, B:376:0x1164, B:378:0x1172, B:380:0x1188, B:384:0x13ae, B:387:0x13b6, B:389:0x13bc, B:394:0x13d6, B:397:0x13de, B:399:0x13e4, B:408:0x1406, B:413:0x1428, B:416:0x1430, B:419:0x1438, B:421:0x143e, B:429:0x145f, B:431:0x1465, B:433:0x146b, B:435:0x1471, B:445:0x149d, B:447:0x14a3, B:669:0x11f5, B:675:0x0e1c, B:676:0x0e5d, B:678:0x0e73, B:680:0x0eb3, B:684:0x0ec0, B:685:0x0ece, B:687:0x0f09, B:689:0x0f1b, B:691:0x0f29, B:693:0x0f3f, B:695:0x0f61, B:697:0x0f9e, B:698:0x0fac, B:700:0x0fc2, B:702:0x0fee, B:704:0x102b, B:705:0x1039, B:707:0x1047, B:709:0x1055, B:711:0x106b, B:713:0x108d, B:715:0x10ca, B:716:0x10d8, B:718:0x10ee, B:720:0x111a, B:722:0x1158, B:723:0x0be4, B:725:0x0bfa, B:726:0x0c29, B:727:0x0c36, B:729:0x0c58, B:730:0x0c8a), top: B:72:0x1382 }] */
    /* JADX WARN: Removed duplicated region for block: B:313:0x09a1 A[Catch: Exception -> 0x13d2, TryCatch #8 {Exception -> 0x13d2, blocks: (B:73:0x1382, B:119:0x124b, B:121:0x1263, B:122:0x1283, B:124:0x1289, B:158:0x12a2, B:159:0x12bb, B:161:0x12c1, B:175:0x12f8, B:130:0x130c, B:131:0x1311, B:133:0x1317, B:147:0x1350, B:148:0x1354, B:150:0x135a, B:191:0x02f0, B:195:0x0367, B:197:0x037d, B:199:0x0443, B:201:0x0455, B:203:0x0469, B:205:0x0489, B:208:0x04c7, B:209:0x04d5, B:211:0x050c, B:213:0x0547, B:214:0x0553, B:216:0x0567, B:218:0x0581, B:219:0x05ac, B:221:0x05c6, B:223:0x05e5, B:225:0x05a0, B:226:0x05f1, B:228:0x0605, B:230:0x061f, B:238:0x0654, B:239:0x0660, B:241:0x066e, B:244:0x0689, B:246:0x0697, B:248:0x06a5, B:250:0x06bb, B:252:0x06eb, B:256:0x06f1, B:258:0x0a26, B:260:0x0a34, B:262:0x0a4a, B:263:0x0aa4, B:272:0x06fe, B:273:0x073d, B:275:0x0753, B:277:0x0788, B:281:0x0792, B:282:0x07a0, B:284:0x07db, B:286:0x07eb, B:288:0x07f9, B:290:0x080f, B:292:0x0831, B:294:0x086e, B:295:0x087c, B:297:0x0892, B:299:0x08b7, B:301:0x08f4, B:302:0x0902, B:304:0x0910, B:306:0x091e, B:308:0x0934, B:310:0x0956, B:312:0x0993, B:313:0x09a1, B:315:0x09b7, B:317:0x09dc, B:319:0x0a1a, B:320:0x03ad, B:322:0x03bb, B:323:0x03d5, B:325:0x03fd, B:326:0x042f, B:329:0x0b09, B:331:0x0b23, B:333:0x0b31, B:335:0x0b4b, B:337:0x0b59, B:339:0x0b6d, B:341:0x0b7b, B:343:0x0b95, B:345:0x0bc9, B:347:0x0c97, B:349:0x0ca9, B:351:0x0cbd, B:353:0x0cdd, B:356:0x0d1b, B:357:0x0d29, B:359:0x0d60, B:361:0x0d9b, B:362:0x0da7, B:364:0x0db5, B:366:0x0dc3, B:368:0x0dd9, B:370:0x0e09, B:374:0x0e0f, B:376:0x1164, B:378:0x1172, B:380:0x1188, B:384:0x13ae, B:387:0x13b6, B:389:0x13bc, B:394:0x13d6, B:397:0x13de, B:399:0x13e4, B:408:0x1406, B:413:0x1428, B:416:0x1430, B:419:0x1438, B:421:0x143e, B:429:0x145f, B:431:0x1465, B:433:0x146b, B:435:0x1471, B:445:0x149d, B:447:0x14a3, B:669:0x11f5, B:675:0x0e1c, B:676:0x0e5d, B:678:0x0e73, B:680:0x0eb3, B:684:0x0ec0, B:685:0x0ece, B:687:0x0f09, B:689:0x0f1b, B:691:0x0f29, B:693:0x0f3f, B:695:0x0f61, B:697:0x0f9e, B:698:0x0fac, B:700:0x0fc2, B:702:0x0fee, B:704:0x102b, B:705:0x1039, B:707:0x1047, B:709:0x1055, B:711:0x106b, B:713:0x108d, B:715:0x10ca, B:716:0x10d8, B:718:0x10ee, B:720:0x111a, B:722:0x1158, B:723:0x0be4, B:725:0x0bfa, B:726:0x0c29, B:727:0x0c36, B:729:0x0c58, B:730:0x0c8a), top: B:72:0x1382 }] */
    /* JADX WARN: Removed duplicated region for block: B:349:0x0ca9 A[Catch: Exception -> 0x13d2, TryCatch #8 {Exception -> 0x13d2, blocks: (B:73:0x1382, B:119:0x124b, B:121:0x1263, B:122:0x1283, B:124:0x1289, B:158:0x12a2, B:159:0x12bb, B:161:0x12c1, B:175:0x12f8, B:130:0x130c, B:131:0x1311, B:133:0x1317, B:147:0x1350, B:148:0x1354, B:150:0x135a, B:191:0x02f0, B:195:0x0367, B:197:0x037d, B:199:0x0443, B:201:0x0455, B:203:0x0469, B:205:0x0489, B:208:0x04c7, B:209:0x04d5, B:211:0x050c, B:213:0x0547, B:214:0x0553, B:216:0x0567, B:218:0x0581, B:219:0x05ac, B:221:0x05c6, B:223:0x05e5, B:225:0x05a0, B:226:0x05f1, B:228:0x0605, B:230:0x061f, B:238:0x0654, B:239:0x0660, B:241:0x066e, B:244:0x0689, B:246:0x0697, B:248:0x06a5, B:250:0x06bb, B:252:0x06eb, B:256:0x06f1, B:258:0x0a26, B:260:0x0a34, B:262:0x0a4a, B:263:0x0aa4, B:272:0x06fe, B:273:0x073d, B:275:0x0753, B:277:0x0788, B:281:0x0792, B:282:0x07a0, B:284:0x07db, B:286:0x07eb, B:288:0x07f9, B:290:0x080f, B:292:0x0831, B:294:0x086e, B:295:0x087c, B:297:0x0892, B:299:0x08b7, B:301:0x08f4, B:302:0x0902, B:304:0x0910, B:306:0x091e, B:308:0x0934, B:310:0x0956, B:312:0x0993, B:313:0x09a1, B:315:0x09b7, B:317:0x09dc, B:319:0x0a1a, B:320:0x03ad, B:322:0x03bb, B:323:0x03d5, B:325:0x03fd, B:326:0x042f, B:329:0x0b09, B:331:0x0b23, B:333:0x0b31, B:335:0x0b4b, B:337:0x0b59, B:339:0x0b6d, B:341:0x0b7b, B:343:0x0b95, B:345:0x0bc9, B:347:0x0c97, B:349:0x0ca9, B:351:0x0cbd, B:353:0x0cdd, B:356:0x0d1b, B:357:0x0d29, B:359:0x0d60, B:361:0x0d9b, B:362:0x0da7, B:364:0x0db5, B:366:0x0dc3, B:368:0x0dd9, B:370:0x0e09, B:374:0x0e0f, B:376:0x1164, B:378:0x1172, B:380:0x1188, B:384:0x13ae, B:387:0x13b6, B:389:0x13bc, B:394:0x13d6, B:397:0x13de, B:399:0x13e4, B:408:0x1406, B:413:0x1428, B:416:0x1430, B:419:0x1438, B:421:0x143e, B:429:0x145f, B:431:0x1465, B:433:0x146b, B:435:0x1471, B:445:0x149d, B:447:0x14a3, B:669:0x11f5, B:675:0x0e1c, B:676:0x0e5d, B:678:0x0e73, B:680:0x0eb3, B:684:0x0ec0, B:685:0x0ece, B:687:0x0f09, B:689:0x0f1b, B:691:0x0f29, B:693:0x0f3f, B:695:0x0f61, B:697:0x0f9e, B:698:0x0fac, B:700:0x0fc2, B:702:0x0fee, B:704:0x102b, B:705:0x1039, B:707:0x1047, B:709:0x1055, B:711:0x106b, B:713:0x108d, B:715:0x10ca, B:716:0x10d8, B:718:0x10ee, B:720:0x111a, B:722:0x1158, B:723:0x0be4, B:725:0x0bfa, B:726:0x0c29, B:727:0x0c36, B:729:0x0c58, B:730:0x0c8a), top: B:72:0x1382 }] */
    /* JADX WARN: Removed duplicated region for block: B:378:0x1172 A[Catch: Exception -> 0x13d2, TryCatch #8 {Exception -> 0x13d2, blocks: (B:73:0x1382, B:119:0x124b, B:121:0x1263, B:122:0x1283, B:124:0x1289, B:158:0x12a2, B:159:0x12bb, B:161:0x12c1, B:175:0x12f8, B:130:0x130c, B:131:0x1311, B:133:0x1317, B:147:0x1350, B:148:0x1354, B:150:0x135a, B:191:0x02f0, B:195:0x0367, B:197:0x037d, B:199:0x0443, B:201:0x0455, B:203:0x0469, B:205:0x0489, B:208:0x04c7, B:209:0x04d5, B:211:0x050c, B:213:0x0547, B:214:0x0553, B:216:0x0567, B:218:0x0581, B:219:0x05ac, B:221:0x05c6, B:223:0x05e5, B:225:0x05a0, B:226:0x05f1, B:228:0x0605, B:230:0x061f, B:238:0x0654, B:239:0x0660, B:241:0x066e, B:244:0x0689, B:246:0x0697, B:248:0x06a5, B:250:0x06bb, B:252:0x06eb, B:256:0x06f1, B:258:0x0a26, B:260:0x0a34, B:262:0x0a4a, B:263:0x0aa4, B:272:0x06fe, B:273:0x073d, B:275:0x0753, B:277:0x0788, B:281:0x0792, B:282:0x07a0, B:284:0x07db, B:286:0x07eb, B:288:0x07f9, B:290:0x080f, B:292:0x0831, B:294:0x086e, B:295:0x087c, B:297:0x0892, B:299:0x08b7, B:301:0x08f4, B:302:0x0902, B:304:0x0910, B:306:0x091e, B:308:0x0934, B:310:0x0956, B:312:0x0993, B:313:0x09a1, B:315:0x09b7, B:317:0x09dc, B:319:0x0a1a, B:320:0x03ad, B:322:0x03bb, B:323:0x03d5, B:325:0x03fd, B:326:0x042f, B:329:0x0b09, B:331:0x0b23, B:333:0x0b31, B:335:0x0b4b, B:337:0x0b59, B:339:0x0b6d, B:341:0x0b7b, B:343:0x0b95, B:345:0x0bc9, B:347:0x0c97, B:349:0x0ca9, B:351:0x0cbd, B:353:0x0cdd, B:356:0x0d1b, B:357:0x0d29, B:359:0x0d60, B:361:0x0d9b, B:362:0x0da7, B:364:0x0db5, B:366:0x0dc3, B:368:0x0dd9, B:370:0x0e09, B:374:0x0e0f, B:376:0x1164, B:378:0x1172, B:380:0x1188, B:384:0x13ae, B:387:0x13b6, B:389:0x13bc, B:394:0x13d6, B:397:0x13de, B:399:0x13e4, B:408:0x1406, B:413:0x1428, B:416:0x1430, B:419:0x1438, B:421:0x143e, B:429:0x145f, B:431:0x1465, B:433:0x146b, B:435:0x1471, B:445:0x149d, B:447:0x14a3, B:669:0x11f5, B:675:0x0e1c, B:676:0x0e5d, B:678:0x0e73, B:680:0x0eb3, B:684:0x0ec0, B:685:0x0ece, B:687:0x0f09, B:689:0x0f1b, B:691:0x0f29, B:693:0x0f3f, B:695:0x0f61, B:697:0x0f9e, B:698:0x0fac, B:700:0x0fc2, B:702:0x0fee, B:704:0x102b, B:705:0x1039, B:707:0x1047, B:709:0x1055, B:711:0x106b, B:713:0x108d, B:715:0x10ca, B:716:0x10d8, B:718:0x10ee, B:720:0x111a, B:722:0x1158, B:723:0x0be4, B:725:0x0bfa, B:726:0x0c29, B:727:0x0c36, B:729:0x0c58, B:730:0x0c8a), top: B:72:0x1382 }] */
    /* JADX WARN: Removed duplicated region for block: B:491:0x153f  */
    /* JADX WARN: Removed duplicated region for block: B:533:0x15cf A[Catch: Exception -> 0x1615, TryCatch #5 {Exception -> 0x1615, blocks: (B:531:0x15bd, B:533:0x15cf, B:535:0x15d5, B:537:0x15dd, B:539:0x15ef, B:541:0x15f5, B:543:0x160e), top: B:530:0x15bd }] */
    /* JADX WARN: Removed duplicated region for block: B:543:0x160e A[Catch: Exception -> 0x1615, TRY_ENTER, TRY_LEAVE, TryCatch #5 {Exception -> 0x1615, blocks: (B:531:0x15bd, B:533:0x15cf, B:535:0x15d5, B:537:0x15dd, B:539:0x15ef, B:541:0x15f5, B:543:0x160e), top: B:530:0x15bd }] */
    /* JADX WARN: Removed duplicated region for block: B:545:0x15fd A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:555:0x1626 A[Catch: Exception -> 0x191c, TRY_ENTER, TryCatch #14 {Exception -> 0x191c, blocks: (B:515:0x15ba, B:551:0x1617, B:552:0x161a, B:555:0x1626, B:557:0x16a0, B:560:0x16b6, B:562:0x16c9, B:564:0x16d1, B:566:0x16d9, B:568:0x16e1, B:569:0x16e7, B:571:0x16ed, B:580:0x1711, B:582:0x1719, B:584:0x1721, B:608:0x17bd, B:610:0x17c5, B:612:0x17d9, B:614:0x17ed, B:616:0x1801, B:618:0x182e, B:620:0x1836, B:623:0x183f, B:625:0x1847, B:627:0x185b, B:629:0x186f, B:631:0x1883, B:632:0x18af, B:634:0x18c3, B:636:0x18d7, B:638:0x18eb, B:643:0x162e, B:645:0x1642, B:647:0x1656, B:649:0x166a), top: B:514:0x15ba }] */
    /* JADX WARN: Removed duplicated region for block: B:560:0x16b6 A[Catch: Exception -> 0x191c, TRY_ENTER, TryCatch #14 {Exception -> 0x191c, blocks: (B:515:0x15ba, B:551:0x1617, B:552:0x161a, B:555:0x1626, B:557:0x16a0, B:560:0x16b6, B:562:0x16c9, B:564:0x16d1, B:566:0x16d9, B:568:0x16e1, B:569:0x16e7, B:571:0x16ed, B:580:0x1711, B:582:0x1719, B:584:0x1721, B:608:0x17bd, B:610:0x17c5, B:612:0x17d9, B:614:0x17ed, B:616:0x1801, B:618:0x182e, B:620:0x1836, B:623:0x183f, B:625:0x1847, B:627:0x185b, B:629:0x186f, B:631:0x1883, B:632:0x18af, B:634:0x18c3, B:636:0x18d7, B:638:0x18eb, B:643:0x162e, B:645:0x1642, B:647:0x1656, B:649:0x166a), top: B:514:0x15ba }] */
    /* JADX WARN: Removed duplicated region for block: B:610:0x17c5 A[Catch: Exception -> 0x191c, TryCatch #14 {Exception -> 0x191c, blocks: (B:515:0x15ba, B:551:0x1617, B:552:0x161a, B:555:0x1626, B:557:0x16a0, B:560:0x16b6, B:562:0x16c9, B:564:0x16d1, B:566:0x16d9, B:568:0x16e1, B:569:0x16e7, B:571:0x16ed, B:580:0x1711, B:582:0x1719, B:584:0x1721, B:608:0x17bd, B:610:0x17c5, B:612:0x17d9, B:614:0x17ed, B:616:0x1801, B:618:0x182e, B:620:0x1836, B:623:0x183f, B:625:0x1847, B:627:0x185b, B:629:0x186f, B:631:0x1883, B:632:0x18af, B:634:0x18c3, B:636:0x18d7, B:638:0x18eb, B:643:0x162e, B:645:0x1642, B:647:0x1656, B:649:0x166a), top: B:514:0x15ba }] */
    /* JADX WARN: Removed duplicated region for block: B:618:0x182e A[Catch: Exception -> 0x191c, TryCatch #14 {Exception -> 0x191c, blocks: (B:515:0x15ba, B:551:0x1617, B:552:0x161a, B:555:0x1626, B:557:0x16a0, B:560:0x16b6, B:562:0x16c9, B:564:0x16d1, B:566:0x16d9, B:568:0x16e1, B:569:0x16e7, B:571:0x16ed, B:580:0x1711, B:582:0x1719, B:584:0x1721, B:608:0x17bd, B:610:0x17c5, B:612:0x17d9, B:614:0x17ed, B:616:0x1801, B:618:0x182e, B:620:0x1836, B:623:0x183f, B:625:0x1847, B:627:0x185b, B:629:0x186f, B:631:0x1883, B:632:0x18af, B:634:0x18c3, B:636:0x18d7, B:638:0x18eb, B:643:0x162e, B:645:0x1642, B:647:0x1656, B:649:0x166a), top: B:514:0x15ba }] */
    /* JADX WARN: Removed duplicated region for block: B:645:0x1642 A[Catch: Exception -> 0x191c, TryCatch #14 {Exception -> 0x191c, blocks: (B:515:0x15ba, B:551:0x1617, B:552:0x161a, B:555:0x1626, B:557:0x16a0, B:560:0x16b6, B:562:0x16c9, B:564:0x16d1, B:566:0x16d9, B:568:0x16e1, B:569:0x16e7, B:571:0x16ed, B:580:0x1711, B:582:0x1719, B:584:0x1721, B:608:0x17bd, B:610:0x17c5, B:612:0x17d9, B:614:0x17ed, B:616:0x1801, B:618:0x182e, B:620:0x1836, B:623:0x183f, B:625:0x1847, B:627:0x185b, B:629:0x186f, B:631:0x1883, B:632:0x18af, B:634:0x18c3, B:636:0x18d7, B:638:0x18eb, B:643:0x162e, B:645:0x1642, B:647:0x1656, B:649:0x166a), top: B:514:0x15ba }] */
    /* JADX WARN: Removed duplicated region for block: B:661:0x15af  */
    /* JADX WARN: Removed duplicated region for block: B:671:0x1209 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:711:0x106b A[Catch: Exception -> 0x13d2, TryCatch #8 {Exception -> 0x13d2, blocks: (B:73:0x1382, B:119:0x124b, B:121:0x1263, B:122:0x1283, B:124:0x1289, B:158:0x12a2, B:159:0x12bb, B:161:0x12c1, B:175:0x12f8, B:130:0x130c, B:131:0x1311, B:133:0x1317, B:147:0x1350, B:148:0x1354, B:150:0x135a, B:191:0x02f0, B:195:0x0367, B:197:0x037d, B:199:0x0443, B:201:0x0455, B:203:0x0469, B:205:0x0489, B:208:0x04c7, B:209:0x04d5, B:211:0x050c, B:213:0x0547, B:214:0x0553, B:216:0x0567, B:218:0x0581, B:219:0x05ac, B:221:0x05c6, B:223:0x05e5, B:225:0x05a0, B:226:0x05f1, B:228:0x0605, B:230:0x061f, B:238:0x0654, B:239:0x0660, B:241:0x066e, B:244:0x0689, B:246:0x0697, B:248:0x06a5, B:250:0x06bb, B:252:0x06eb, B:256:0x06f1, B:258:0x0a26, B:260:0x0a34, B:262:0x0a4a, B:263:0x0aa4, B:272:0x06fe, B:273:0x073d, B:275:0x0753, B:277:0x0788, B:281:0x0792, B:282:0x07a0, B:284:0x07db, B:286:0x07eb, B:288:0x07f9, B:290:0x080f, B:292:0x0831, B:294:0x086e, B:295:0x087c, B:297:0x0892, B:299:0x08b7, B:301:0x08f4, B:302:0x0902, B:304:0x0910, B:306:0x091e, B:308:0x0934, B:310:0x0956, B:312:0x0993, B:313:0x09a1, B:315:0x09b7, B:317:0x09dc, B:319:0x0a1a, B:320:0x03ad, B:322:0x03bb, B:323:0x03d5, B:325:0x03fd, B:326:0x042f, B:329:0x0b09, B:331:0x0b23, B:333:0x0b31, B:335:0x0b4b, B:337:0x0b59, B:339:0x0b6d, B:341:0x0b7b, B:343:0x0b95, B:345:0x0bc9, B:347:0x0c97, B:349:0x0ca9, B:351:0x0cbd, B:353:0x0cdd, B:356:0x0d1b, B:357:0x0d29, B:359:0x0d60, B:361:0x0d9b, B:362:0x0da7, B:364:0x0db5, B:366:0x0dc3, B:368:0x0dd9, B:370:0x0e09, B:374:0x0e0f, B:376:0x1164, B:378:0x1172, B:380:0x1188, B:384:0x13ae, B:387:0x13b6, B:389:0x13bc, B:394:0x13d6, B:397:0x13de, B:399:0x13e4, B:408:0x1406, B:413:0x1428, B:416:0x1430, B:419:0x1438, B:421:0x143e, B:429:0x145f, B:431:0x1465, B:433:0x146b, B:435:0x1471, B:445:0x149d, B:447:0x14a3, B:669:0x11f5, B:675:0x0e1c, B:676:0x0e5d, B:678:0x0e73, B:680:0x0eb3, B:684:0x0ec0, B:685:0x0ece, B:687:0x0f09, B:689:0x0f1b, B:691:0x0f29, B:693:0x0f3f, B:695:0x0f61, B:697:0x0f9e, B:698:0x0fac, B:700:0x0fc2, B:702:0x0fee, B:704:0x102b, B:705:0x1039, B:707:0x1047, B:709:0x1055, B:711:0x106b, B:713:0x108d, B:715:0x10ca, B:716:0x10d8, B:718:0x10ee, B:720:0x111a, B:722:0x1158, B:723:0x0be4, B:725:0x0bfa, B:726:0x0c29, B:727:0x0c36, B:729:0x0c58, B:730:0x0c8a), top: B:72:0x1382 }] */
    /* JADX WARN: Removed duplicated region for block: B:716:0x10d8 A[Catch: Exception -> 0x13d2, TryCatch #8 {Exception -> 0x13d2, blocks: (B:73:0x1382, B:119:0x124b, B:121:0x1263, B:122:0x1283, B:124:0x1289, B:158:0x12a2, B:159:0x12bb, B:161:0x12c1, B:175:0x12f8, B:130:0x130c, B:131:0x1311, B:133:0x1317, B:147:0x1350, B:148:0x1354, B:150:0x135a, B:191:0x02f0, B:195:0x0367, B:197:0x037d, B:199:0x0443, B:201:0x0455, B:203:0x0469, B:205:0x0489, B:208:0x04c7, B:209:0x04d5, B:211:0x050c, B:213:0x0547, B:214:0x0553, B:216:0x0567, B:218:0x0581, B:219:0x05ac, B:221:0x05c6, B:223:0x05e5, B:225:0x05a0, B:226:0x05f1, B:228:0x0605, B:230:0x061f, B:238:0x0654, B:239:0x0660, B:241:0x066e, B:244:0x0689, B:246:0x0697, B:248:0x06a5, B:250:0x06bb, B:252:0x06eb, B:256:0x06f1, B:258:0x0a26, B:260:0x0a34, B:262:0x0a4a, B:263:0x0aa4, B:272:0x06fe, B:273:0x073d, B:275:0x0753, B:277:0x0788, B:281:0x0792, B:282:0x07a0, B:284:0x07db, B:286:0x07eb, B:288:0x07f9, B:290:0x080f, B:292:0x0831, B:294:0x086e, B:295:0x087c, B:297:0x0892, B:299:0x08b7, B:301:0x08f4, B:302:0x0902, B:304:0x0910, B:306:0x091e, B:308:0x0934, B:310:0x0956, B:312:0x0993, B:313:0x09a1, B:315:0x09b7, B:317:0x09dc, B:319:0x0a1a, B:320:0x03ad, B:322:0x03bb, B:323:0x03d5, B:325:0x03fd, B:326:0x042f, B:329:0x0b09, B:331:0x0b23, B:333:0x0b31, B:335:0x0b4b, B:337:0x0b59, B:339:0x0b6d, B:341:0x0b7b, B:343:0x0b95, B:345:0x0bc9, B:347:0x0c97, B:349:0x0ca9, B:351:0x0cbd, B:353:0x0cdd, B:356:0x0d1b, B:357:0x0d29, B:359:0x0d60, B:361:0x0d9b, B:362:0x0da7, B:364:0x0db5, B:366:0x0dc3, B:368:0x0dd9, B:370:0x0e09, B:374:0x0e0f, B:376:0x1164, B:378:0x1172, B:380:0x1188, B:384:0x13ae, B:387:0x13b6, B:389:0x13bc, B:394:0x13d6, B:397:0x13de, B:399:0x13e4, B:408:0x1406, B:413:0x1428, B:416:0x1430, B:419:0x1438, B:421:0x143e, B:429:0x145f, B:431:0x1465, B:433:0x146b, B:435:0x1471, B:445:0x149d, B:447:0x14a3, B:669:0x11f5, B:675:0x0e1c, B:676:0x0e5d, B:678:0x0e73, B:680:0x0eb3, B:684:0x0ec0, B:685:0x0ece, B:687:0x0f09, B:689:0x0f1b, B:691:0x0f29, B:693:0x0f3f, B:695:0x0f61, B:697:0x0f9e, B:698:0x0fac, B:700:0x0fc2, B:702:0x0fee, B:704:0x102b, B:705:0x1039, B:707:0x1047, B:709:0x1055, B:711:0x106b, B:713:0x108d, B:715:0x10ca, B:716:0x10d8, B:718:0x10ee, B:720:0x111a, B:722:0x1158, B:723:0x0be4, B:725:0x0bfa, B:726:0x0c29, B:727:0x0c36, B:729:0x0c58, B:730:0x0c8a), top: B:72:0x1382 }] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x193d  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x19c2  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x1a48  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean validation() {
        /*
            Method dump skipped, instructions count: 6985
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.fragments.AddFarmer.validation():boolean");
    }

    private void setText(final EditText editText, final String str) {
        runOnUiThread(new Runnable() { // from class: com.conceptglobal.pmc.fragments.AddFarmer.28
            @Override // java.lang.Runnable
            public void run() {
                editText.setText(str);
            }
        });
    }

    private void setError(final TextView textView, final String str) {
        runOnUiThread(new Runnable() { // from class: com.conceptglobal.pmc.fragments.AddFarmer.29
            @Override // java.lang.Runnable
            public void run() {
                textView.setError(str);
            }
        });
    }

    private void showToast(final String str) {
        runOnUiThread(new Runnable() { // from class: com.conceptglobal.pmc.fragments.AddFarmer.30
            @Override // java.lang.Runnable
            public void run() {
                Toast.makeText(AddFarmer.this.context, str, 1).show();
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
            AddFarmer.this.createProgressDialog("Please wait while performing validations...");
            if (AddFarmer.this.dialog == null || AddFarmer.this.isFinishing()) {
                return;
            }
            AddFarmer.this.dialog.show();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Boolean doInBackground(Void... voidArr) {
            Log.i("VD", "start-" + UtilDeclarations.getDateTime());
            boolean validation = AddFarmer.this.validation();
            Log.i("VD", "end-" + UtilDeclarations.getDateTime());
            if (validation) {
                publishProgress("Saving data..");
                for (int i = 0; i < AddFarmer.this.images.size(); i++) {
                    try {
                        InsertDataIntoDB.UpdateImageServerStatus(((ImageDetails) AddFarmer.this.images.get(i)).getImageId());
                    } catch (Exception unused) {
                        this.isSaveSuccess = false;
                    }
                }
                AddFarmer.this.dataInsertion();
                AddFarmer.this.dataInsertMultiAttributeValues();
            }
            return Boolean.valueOf(validation);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onProgressUpdate(String... strArr) {
            super.onProgressUpdate((Object[]) strArr);
            AddFarmer.this.dialogMsgTxtview.setText(strArr[0]);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Boolean bool) {
            super.onPostExecute((DataSaveTask) bool);
            if (!bool.booleanValue()) {
                if (AddFarmer.this.dialog != null && AddFarmer.this.dialog.isShowing()) {
                    AddFarmer.this.dialog.dismiss();
                }
                if (AddFarmer.this.validationFailedMsg.length() > 0) {
                    Toast.makeText(AddFarmer.this.getApplicationContext(), AddFarmer.this.validationFailedMsg, 1).show();
                    AddFarmer.this.validationFailedMsg = "";
                    return;
                } else {
                    Toast.makeText(AddFarmer.this.getApplicationContext(), AddFarmer.this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_validationToast()), 1).show();
                    return;
                }
            }
            if (this.isSaveSuccess) {
                Toast.makeText(AddFarmer.this.getApplicationContext(), AddFarmer.this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_dataSavedSuccessfullyDialog()), 1).show();
                if (!AddFarmer.this.isFromSelfAssignment) {
                    if ("MandatoryFrm".equalsIgnoreCase(AddFarmer.this.farmerUpdate)) {
                        Intent intent = new Intent(AddFarmer.this.context, (Class<?>) ListSelectionActivity.class);
                        intent.putExtra("FarmerId", AddFarmer.this.farmerMaster.getRespondentNo());
                        intent.putExtra(ConstantDeclarations.getInstance().getKEYSELECTIONQUERY(), Queries.getInstance().getActivtiesListBySegment(AddFarmer.this.segmentID));
                        ((Activity) AddFarmer.this.context).startActivityForResult(intent, 2);
                    } else if (AddFarmer.this.isFromTestimonal) {
                        Intent intent2 = new Intent(AddFarmer.this.context, (Class<?>) SAAttributeActivityCopy.class);
                        intent2.putExtra(ConstantDeclarations.getInstance().getKEYFARMERID(), AddFarmer.this.farmerMaster.getRespondentNo());
                        intent2.putExtra(ConstantDeclarations.getInstance().getKEYSELECTIONQUERY(), Queries.getInstance().getActivtiesListBySegment(AddFarmer.this.segmentID));
                        intent2.putExtra("SEGMENTID", AddFarmer.this.segmentID);
                        AddFarmer.this.startActivity(intent2);
                        AddFarmer.this.finish();
                    } else if (AddFarmer.this.isFromFeedBack) {
                        Intent intent3 = new Intent(AddFarmer.this.context, (Class<?>) ListSelectionActivity.class);
                        intent3.putExtra(ConstantDeclarations.getInstance().getKEYFARMERID(), AddFarmer.this.farmerMaster.getRespondentNo());
                        intent3.putExtra(ConstantDeclarations.getInstance().getKEYSELECTIONQUERY(), Queries.getInstance().getFBFActivtiesListBySegment(AddFarmer.this.segmentID));
                        intent3.putExtra("SEGMENTID", AddFarmer.this.segmentID);
                        intent3.putExtra("isFrom", AddFarmer.this.isFromFeedBack);
                        ((Activity) AddFarmer.this.context).startActivityForResult(intent3, 2);
                    } else if (!AddFarmer.this.isFromSurvey) {
                        if (AddFarmer.this.isFromTransaction == 1) {
                            AddFarmer.this.finish();
                        } else {
                            Intent intent4 = new Intent(AddFarmer.this, (Class<?>) DraftList.class);
                            intent4.putExtra("farmerType", AddFarmer.farmerType);
                            intent4.addFlags(335544320);
                            AddFarmer.this.startActivity(intent4);
                            AddFarmer.this.finish();
                        }
                    } else {
                        Intent intent5 = new Intent();
                        intent5.putExtra(ConstantDeclarations.getInstance().getKEYFARMERID(), AddFarmer.this.farmerMaster.getRespondentNo());
                        intent5.putExtra(ConstantDeclarations.getInstance().getKEYSELECTIONQUERY(), Queries.getInstance().getSurveyActivtiesListBySegment(AddFarmer.this.segmentID));
                        intent5.putExtra("SEGMENTID", AddFarmer.this.segmentID);
                        intent5.putExtra("isFrom", AddFarmer.this.isFromSurvey);
                        AddFarmer.this.setResult(-1, intent5);
                        AddFarmer.this.finish();
                    }
                } else {
                    Intent intent6 = new Intent(AddFarmer.this.context, (Class<?>) ListSelectionActivity.class);
                    intent6.putExtra("FarmerId", AddFarmer.this.farmerMaster.getRespondentNo());
                    intent6.putExtra(ConstantDeclarations.getInstance().getKEYSELECTIONQUERY(), Queries.getInstance().getActivtiesListBySegment(AddFarmer.this.segmentID));
                    ((Activity) AddFarmer.this.context).startActivityForResult(intent6, 2);
                }
                if (!UtilDeclarations.isOnline(AddFarmer.this.context) || UtilDeclarations.isServiceRunning(AddFarmer.this.getApplicationContext(), SyncDataService.class)) {
                    return;
                }
                Toast.makeText(AddFarmer.this.getBaseContext(), "Service initiated", 1);
                new SendDataServiceUtil(AddFarmer.this).startService();
                return;
            }
            Toast.makeText(AddFarmer.this.getApplicationContext(), "Error! while saving data, try again", 1).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dataInsertMultiAttributeValues() {
        for (int i = 0; i < this.attributesArry.size(); i++) {
            try {
                this.mFarmerMultiAttributeDetailsList = new ArrayList<>();
                if (this.attributesArry.get(i).getControlType().equalsIgnoreCase("Multiselect Dropdown") && this.mEntryArr.get(i).getText() != null && this.mEntryArr.get(i).getText().length() > 0) {
                    String[] split = this.mEntryArr.get(i).getText().toString().split(",");
                    String[] split2 = this.mEntryArrIds.get(i).getText().toString().split(",");
                    if (split2 != null && split2.length > 0) {
                        this.getDataFromDB.executeRawQuery(Queries.getInstance().deleteMultiAttributeData(this.farmerMaster.getRespondentNo(), this.attributesArry.get(i).getColumnId()));
                        for (int i2 = 0; i2 < split2.length; i2++) {
                            this.mFarmerMultiAttributeDetailsList.add(new FarmerMultiAttributeDetails("", this.farmerMaster.getFarmerID() + "", this.farmerMaster.getRespondentNo(), this.attributesArry.get(i).getColumnId() + "", split2[i2], split[i2], this.farmerMaster.getPdaid(), "", "", "", ""));
                        }
                    }
                }
                ArrayList<FarmerMultiAttributeDetails> arrayList = this.mFarmerMultiAttributeDetailsList;
                if (arrayList != null && arrayList.size() > 0) {
                    InsertDataIntoDB.insertFarmerMultiAttributeDetails(this.mFarmerMultiAttributeDetailsList);
                }
            } catch (Exception e) {
                e.printStackTrace();
                PLog.e(this.tag, e);
                return;
            }
        }
    }

    private class DataInsertion extends AsyncTask<Void, Void, Void> {
        private Context _mContext;
        private ProgressDialog _mDialog;

        public DataInsertion(Context context) {
            this._mContext = context;
            ProgressDialog show = ProgressDialog.show(context, "", AddFarmer.this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_pwDataSaving()));
            this._mDialog = show;
            show.setCancelable(false);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Void doInBackground(Void... voidArr) {
            try {
                AddFarmer.this.dataInsertion();
                AddFarmer.this.dataInsertMultiAttributeValues();
                return null;
            } catch (Exception e) {
                PLog.e(AddFarmer.this.tag, e);
                return null;
            }
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(Void r6) {
            ProgressDialog progressDialog = this._mDialog;
            if (progressDialog != null) {
                progressDialog.dismiss();
            }
            Toast.makeText(AddFarmer.this.getApplicationContext(), AddFarmer.this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_dataSavedSuccessfullyDialog()), 1).show();
            if (AddFarmer.this.isFromTransaction == 1) {
                if (AddFarmer.this.validateFarmerWithOTP()) {
                    if (!AddFarmer.this.mOldMobile.equalsIgnoreCase(AddFarmer.this.mNewMobile)) {
                        if (AddFarmer.this.status == 1) {
                            try {
                                AddFarmer.this.getDataFromDB.executeRawQueryInDB(Queries.getInstance().getUpdateFarmerOTPVerificationQuery(AddFarmer.this.farmerMaster.getRespondentNo(), "0"));
                                AddFarmer.this.getDataFromDB.executeRawQueryInDB(Queries.getInstance().getUpdateFarmerServerStatus(AddFarmer.this.farmerMaster.getRespondentNo()));
                            } catch (Exception e) {
                                PLog.e(AddFarmer.TAG, e);
                            }
                            AlertDialog create = new AlertDialog.Builder(AddFarmer.this).create();
                            create.setCanceledOnTouchOutside(false);
                            create.setMessage("Please verify the farmer from \"Add Farmer\" option in main menu.");
                            create.setButton(-1, "Ok", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.AddFarmer.DataInsertion.1
                                @Override // android.content.DialogInterface.OnClickListener
                                public void onClick(DialogInterface dialogInterface, int i) {
                                    dialogInterface.dismiss();
                                    AddFarmer.this.finish();
                                    AddFarmer.this.startService();
                                }
                            });
                            create.setCancelable(false);
                            create.setCanceledOnTouchOutside(false);
                            create.show();
                            return;
                        }
                        AddFarmer.this.finish();
                        AddFarmer.this.startService();
                        return;
                    }
                    AddFarmer.this.finish();
                    AddFarmer.this.startService();
                    return;
                }
                AddFarmer.this.finish();
                AddFarmer.this.startService();
                return;
            }
            if (AddFarmer.this.isFromSelfassgin != 1) {
                if (UtilDeclarations.isOnline(AddFarmer.this.context)) {
                    if (!AddFarmer.this.validateFarmerWithOTP()) {
                        AddFarmer.this.navigateToDraftList();
                        return;
                    }
                    FarmerMaster farmerNameMobileData = GetDataFromDB.getInstance().getFarmerNameMobileData(Queries.getInstance().getFarmerNameMobileQuery(AddFarmer.this.farmerMaster.getRespondentNo()));
                    if (!AddFarmer.this.mOldMobile.equalsIgnoreCase(AddFarmer.this.mNewMobile)) {
                        if (AddFarmer.this.status == 1) {
                            AddFarmer.this.callOTPAsync();
                            AddFarmer.this.showOTPDialog(farmerNameMobileData);
                            return;
                        } else {
                            AddFarmer.this.navigateToDraftList();
                            return;
                        }
                    }
                    try {
                        String singleValue = GetDataFromDB.getInstance().getSingleValue(Queries.getInstance().getField3Query(AddFarmer.this.farmerMaster.getRespondentNo()));
                        if (singleValue == null) {
                            if (AddFarmer.this.statusFieldVal == 0) {
                                if (AddFarmer.this.status == 1) {
                                    AddFarmer.this.callOTPAsync();
                                    AddFarmer.this.showOTPDialog(farmerNameMobileData);
                                } else {
                                    AddFarmer.this.navigateToDraftList();
                                }
                            } else {
                                AddFarmer.this.navigateToDraftList();
                            }
                        } else if (singleValue.equalsIgnoreCase("0")) {
                            if (AddFarmer.this.status == 1) {
                                AddFarmer.this.callOTPAsync();
                                AddFarmer.this.showOTPDialog(farmerNameMobileData);
                            } else {
                                AddFarmer.this.navigateToDraftList();
                            }
                        } else {
                            AddFarmer.this.navigateToDraftList();
                        }
                        return;
                    } catch (Exception e2) {
                        e2.printStackTrace();
                        return;
                    }
                }
                if (!AddFarmer.this.mOldMobile.equalsIgnoreCase(AddFarmer.this.mNewMobile)) {
                    if (AddFarmer.this.status == 1) {
                        if (AddFarmer.this.validateFarmerWithOTP()) {
                            try {
                                AddFarmer.this.getDataFromDB.executeRawQueryInDB(Queries.getInstance().getUpdateFarmerOTPVerificationQuery(AddFarmer.this.farmerMaster.getRespondentNo(), "0"));
                                AddFarmer.this.getDataFromDB.executeRawQueryInDB(Queries.getInstance().getUpdateFarmerServerStatus(AddFarmer.this.farmerMaster.getRespondentNo()));
                            } catch (Exception e3) {
                                PLog.e(AddFarmer.TAG, e3);
                            }
                            AddFarmer.this.showOTPVerifyDialog();
                            return;
                        }
                        AddFarmer.this.navigateToDraftList();
                        return;
                    }
                    AddFarmer.this.navigateToDraftList();
                    return;
                }
                AddFarmer.this.navigateToDraftList();
                return;
            }
            AddFarmer.this.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showOTPVerifyDialog() {
        AlertDialog create = new AlertDialog.Builder(this).create();
        create.setCanceledOnTouchOutside(false);
        create.setMessage("As you don't have internet connection now. Please verify the farmer later.");
        create.setButton(-1, "Ok", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.AddFarmer.31
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
                AddFarmer.this.navigateToDraftList();
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
        if (!farmerType.equalsIgnoreCase("UnVerifiedFarmer")) {
            Intent intent = new Intent(this, (Class<?>) DraftList.class);
            intent.putExtra("farmerType", farmerType);
            intent.addFlags(335544320);
            startActivity(intent);
        }
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

    @Override // com.conceptglobal.pmc.interfaces.OnVerifyOTPListener
    public void onSubmitOTP(String str) {
        if (this.mOTP.equals(str)) {
            try {
                this.getDataFromDB.executeRawQueryInDB(Queries.getInstance().getUpdateFarmerOTPVerificationQuery(this.farmerMaster.getRespondentNo(), "1"));
                this.getDataFromDB.executeRawQueryInDB(Queries.getInstance().getUpdateFarmerServerStatus(this.farmerMaster.getRespondentNo()));
                this.getDataFromDB.executeRawQueryInDB(Queries.getInstance().getUpdateFarmerStatus(this.farmerMaster.getRespondentNo()));
            } catch (Exception e) {
                PLog.e(TAG, e);
            }
            Toast.makeText(this, "Verification is done successfully.", 1).show();
            navigateToDraftList();
            return;
        }
        Toast.makeText(this, "Invalid OTP. Please try again!", 1).show();
    }

    @Override // com.conceptglobal.pmc.interfaces.OnVerifyOTPListener
    public void onResendOTP() {
        this.mOTP = "";
        if (UtilDeclarations.isOnline(this.context)) {
            Toast.makeText(this.context, "OTP has been sent to your mobile number.", 1).show();
            callOTPAsync();
        } else {
            showOTPVerifyDialog();
        }
    }

    @Override // com.conceptglobal.pmc.interfaces.OnVerifyOTPListener
    public void onVerifyLater() {
        try {
            this.getDataFromDB.executeRawQueryInDB(Queries.getInstance().getUpdateFarmerOTPVerificationQuery(this.farmerMaster.getRespondentNo(), "0"));
            this.getDataFromDB.executeRawQueryInDB(Queries.getInstance().getUpdateFarmerServerStatus(this.farmerMaster.getRespondentNo()));
        } catch (Exception e) {
            PLog.e(TAG, e);
        }
        navigateToDraftList();
    }

    @Override // com.conceptglobal.pmc.interfaces.OnVerifyOTPListener
    public void onClose() {
        try {
            this.getDataFromDB.executeRawQueryInDB(Queries.getInstance().getUpdateFarmerOTPVerificationQuery(this.farmerMaster.getRespondentNo(), "0"));
            this.getDataFromDB.executeRawQueryInDB(Queries.getInstance().getUpdateFarmerServerStatus(this.farmerMaster.getRespondentNo()));
        } catch (Exception e) {
            PLog.e(TAG, e);
        }
        navigateToDraftList();
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

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        String str;
        super.onActivityResult(i, i2, intent);
        try {
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
            if (i != 2) {
                if (i == 101 && i2 == -1) {
                    PLog.location("Navigation", "Image Capture End", TAG, UtilDeclarations.getDateTime());
                    this.imagelist.add(this.imagePath);
                    setAdapter();
                    return;
                }
                return;
            }
            if (i2 == 0 || intent == null) {
                return;
            }
            boolean z = intent.getExtras().getBoolean("isfrom");
            if (intent.getStringArrayExtra(ConstantDeclarations.getInstance().getKEYSELECTION()) != null) {
                String[] stringArray = intent.getExtras().getStringArray(ConstantDeclarations.getInstance().getKEYSELECTION());
                String stringExtra = intent.getStringExtra("FarmerId");
                long timeInMillis = Calendar.getInstance().getTimeInMillis();
                if (stringArray != null) {
                    try {
                        new ArrayList();
                        String str2 = stringArray[0];
                        List<String> list = GetDataFromDB.getInstance().getList(Queries.getInstance().getListOfAttributesUpdate(str2));
                        if (list != null && list.size() > 0) {
                            Iterator<String> it = list.iterator();
                            while (it.hasNext()) {
                                try {
                                    str = str2;
                                } catch (Exception e) {
                                    e = e;
                                    str = str2;
                                }
                                try {
                                    InsertDataIntoDB.insertCustomerAttributeDetails(stringExtra, str2, it.next(), this.segmentID, 0, timeInMillis, 1);
                                } catch (Exception e2) {
                                    e = e2;
                                    PLog.e(this.tag, e);
                                    str2 = str;
                                }
                                str2 = str;
                            }
                        }
                    } catch (Exception e3) {
                        PLog.e(this.tag, e3);
                    }
                }
                if (z) {
                    Intent intent2 = new Intent(this, (Class<?>) SAAttributeActivity_FBF.class);
                    intent2.putExtra(ConstantDeclarations.getInstance().getKEYFARMERID(), stringExtra);
                    intent2.putExtra("ACTIVITYID", Integer.parseInt(stringArray[0]));
                    intent2.putExtra("ACTIVITYNAME", stringArray[1]);
                    intent2.putExtra("SEGMENTID", this.segmentID);
                    intent2.putExtra("TRANSID", timeInMillis);
                    intent2.putExtra("ASSIGNMENTID", 0);
                    intent2.addFlags(67108864);
                    startActivity(intent2.addFlags(131072).addFlags(67108864));
                    finish();
                    return;
                }
                Intent intent3 = new Intent(this, (Class<?>) SAAttributeActivity.class);
                intent3.putExtra(ConstantDeclarations.getInstance().getKEYFARMERID(), stringExtra);
                intent3.putExtra("ACTIVITYID", Integer.parseInt(stringArray[0]));
                intent3.putExtra("ACTIVITYNAME", stringArray[1]);
                intent3.putExtra("SEGMENTID", this.segmentID);
                intent3.putExtra("ISSELFASSIGN", 1);
                intent3.putExtra("TRANSID", timeInMillis);
                intent3.putExtra("ASSIGNMENTID", 0);
                intent3.addFlags(67108864);
                startActivity(intent3.addFlags(131072).addFlags(67108864));
                finish();
                return;
            }
            finish();
        } catch (Exception e4) {
            PLog.e(this.tag, e4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void captureImage(long j) {
        new CompressHelper().getCompressLoaction(this);
        ConstantsPMC.getInstance().setPictureReportingContext(this);
        PLog.location("Navigation", "Image Capture Click", TAG, UtilDeclarations.getDateTime());
        Intent intent = new Intent(this.context, (Class<?>) PictureReporting.class);
        intent.putExtra("activityId", 0);
        intent.putExtra("assignmentId", 0);
        try {
        } catch (Exception e) {
            PLog.e(this.tag, e);
        }
        if (!farmerType.equalsIgnoreCase(ConstantsPMC.TYPE_FARMER) && !farmerType.equalsIgnoreCase("UnVerifiedFarmer")) {
            if (!farmerType.equalsIgnoreCase("Planter")) {
                if (farmerType.equalsIgnoreCase("Village")) {
                    intent.putExtra("setReferenceType", GetDataFromDB.getInstance().getLookupValue(Queries.getInstance().getItemValue("Village")));
                }
            } else {
                intent.putExtra("setReferenceType", GetDataFromDB.getInstance().getLookupValue(Queries.getInstance().getItemValue("Planter")));
            }
            intent.putExtra("setReferenceID", this.farmerMaster.getRespondentNo());
            intent.putExtra("attributeId", 0);
            intent.putExtra("farmerId", this.farmerID);
            intent.putExtra("imageId", j);
            startActivity(intent);
        }
        intent.putExtra("setReferenceType", GetDataFromDB.getInstance().getLookupValue(Queries.getInstance().getItemValue(ConstantsPMC.TYPE_FARMER)));
        intent.putExtra("setReferenceID", this.farmerMaster.getRespondentNo());
        intent.putExtra("attributeId", 0);
        intent.putExtra("farmerId", this.farmerID);
        intent.putExtra("imageId", j);
        startActivity(intent);
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
        PLog.location("Navigation", "onDestroy", TAG, UtilDeclarations.getDateTime());
        LocalBroadcastManager.getInstance(this).unregisterReceiver(this.message);
        super.onDestroy();
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
            new FetchLocation(this, true, new OnLocationFoundListener() { // from class: com.conceptglobal.pmc.fragments.AddFarmer.33
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
                    AddFarmer.this.bindAddress(location);
                    if (textView.equals(AddFarmer.this.tvLatitude)) {
                        AddFarmer.this.farmerMaster.setGPSTimeStamp(UtilDeclarations.getLongToDate(location.getTime()));
                    }
                }
            }, this.latlongTag);
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
            AddFarmer.this.getOTPDetails();
            return "";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(String str) {
            super.onPostExecute((OTPAsync) str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getOTPDetails() {
        String str = null;
        try {
            PLog.i(TAG, "getOTPDetails");
            FarmerMaster farmerNameMobileData = GetDataFromDB.getInstance().getFarmerNameMobileData(Queries.getInstance().getFarmerNameMobileQuery(this.farmerMaster.getRespondentNo()));
            Log.i(TAG, "name :::::::" + farmerNameMobileData.getFarmerName() + " mobile ::::::::::: " + farmerNameMobileData.getMobile());
            GetOTP getOTP = new GetOTP();
            getOTP.setRespondentNo(this.farmerMaster.getRespondentNo());
            getOTP.setMobileNo(farmerNameMobileData.getMobile());
            getOTP.setFarmerName(farmerNameMobileData.getFarmerName());
            getOTP.setPdaid(this.farmerMaster.getPdaid());
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

    private void showAlert(String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.context);
        builder.setMessage(str).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okDiscardDialog()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.AddFarmer.34
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

    private void showAlertDialog(String str) {
        try {
            AlertDialog.Builder builder = new AlertDialog.Builder(this.context);
            builder.setMessage(str).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_yesText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.AddFarmer.36
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    dialogInterface.dismiss();
                    AddFarmer.this.removeMobileNumber();
                }
            }).setNegativeButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_noText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.AddFarmer.35
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    dialogInterface.dismiss();
                }
            });
            AlertDialog show = builder.show();
            if (UtilDeclarations.isTablet(this.context)) {
                UtilDeclarations.makeTabletDialogTextlarge(show);
            }
        } catch (Exception e) {
            e.getMessage();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeMobileNumber() {
        for (int i = 0; i < this.attributesArry.size(); i++) {
            if (this.attributesArry.get(i).getMinLength() != 0 && this.attributesArry.get(i).getDbColumnName().equalsIgnoreCase("Mobile") && this.mEntryArr.get(i).getText().toString().trim().length() > 0) {
                this.mEntryArr.get(i).setText("");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showAccessDeniedDialog() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.context);
        builder.setMessage(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_accessDeniedDialog())).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.AddFarmer.37
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

    private class CustomTextWatcher implements TextWatcher {
        private String beforetext;
        private EditText editText;
        private DynamicFields obj;

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        private CustomTextWatcher(EditText editText, DynamicFields dynamicFields) {
            this.editText = editText;
            this.obj = dynamicFields;
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            this.beforetext = charSequence.toString();
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            this.editText.setError(null);
            if (!this.obj.getControlType().equalsIgnoreCase("Dropdown") || AddFarmer.this.ruleAttributeIds == null || AddFarmer.this.ruleAttributeIds.size() <= 0) {
                return;
            }
            try {
                int intValue = AddFarmer.this.getDataFromDB.getIntValue(Queries.getInstance().getParentAttributeId(AddFarmer.this.ruleID, this.obj.getColumnId()));
                if (intValue <= 0 || intValue != this.obj.getColumnId()) {
                    return;
                }
                for (int i = 0; i < AddFarmer.this.ruleAttributeIds.size(); i++) {
                    if (AddFarmer.this.getDataFromDB.getIntValue(Queries.getInstance().getIsValidChild(AddFarmer.this.ruleID, ((Integer) AddFarmer.this.ruleAttributeIds.get(i)).intValue(), this.obj.getColumnId())) > 0) {
                        int intValue2 = AddFarmer.this.getDataFromDB.getIntValue(Queries.getInstance().getRuleParentAttrValueId(AddFarmer.this.ruleID, this.obj.getColumnId(), ((Integer) AddFarmer.this.ruleAttributeIds.get(i)).intValue()));
                        String stringValue = GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getItemKeyByConfigId(intValue2));
                        if (TextUtils.isEmpty(stringValue) || !stringValue.equalsIgnoreCase(this.editText.getText().toString())) {
                            Integer num = (Integer) AddFarmer.this.ruleAttributeIds.get(i);
                            int intValue3 = num.intValue();
                            int childCount = AddFarmer.this.mAddDynamicLinear.getChildCount();
                            for (int i2 = 0; i2 < childCount; i2++) {
                                View childAt = AddFarmer.this.mAddDynamicLinear.getChildAt(i2);
                                if (((LinearLayout) childAt).getChildAt(1) != null && ((LinearLayout) childAt).getChildAt(1).getTag(R.string.VISIBILITY_ID) != null && ((Integer) ((LinearLayout) childAt).getChildAt(1).getTag(R.string.VISIBILITY_ID)).intValue() == intValue3) {
                                    AddFarmer.this.mAddDynamicLinear.getChildAt(i2).setVisibility(8);
                                    if (!AddFarmer.this.visibiltyGoneIds.contains(num)) {
                                        AddFarmer.this.visibiltyGoneIds.add(num);
                                    }
                                    try {
                                        ((EditText) AddFarmer.this.mEntryArrIds.get(((Integer) AddFarmer.this.hAttributes.get(num)).intValue())).setText("");
                                    } catch (Exception unused) {
                                    }
                                    try {
                                        LinearLayout linearLayout = (LinearLayout) AddFarmer.this.mAddDynamicLinear.getChildAt(i2);
                                        if (linearLayout.getChildAt(1) != null && (linearLayout.getChildAt(1) instanceof EditText)) {
                                            ((EditText) linearLayout.getChildAt(1)).setText("");
                                        }
                                    } catch (Exception unused2) {
                                    }
                                }
                            }
                            int childCount2 = AddFarmer.this.mAddDynamicLinearOthers.getChildCount();
                            for (int i3 = 0; i3 < childCount2; i3++) {
                                View childAt2 = AddFarmer.this.mAddDynamicLinearOthers.getChildAt(i3);
                                if (((LinearLayout) childAt2).getChildAt(1) != null && ((LinearLayout) childAt2).getChildAt(1).getTag(R.string.VISIBILITY_ID) != null && ((Integer) ((LinearLayout) childAt2).getChildAt(1).getTag(R.string.VISIBILITY_ID)).intValue() == intValue3) {
                                    AddFarmer.this.mAddDynamicLinearOthers.getChildAt(i3).setVisibility(8);
                                    if (!AddFarmer.this.visibiltyGoneIds.contains(num)) {
                                        AddFarmer.this.visibiltyGoneIds.add(num);
                                    }
                                    try {
                                        ((EditText) AddFarmer.this.mEntryArrIds.get(((Integer) AddFarmer.this.hAttributes.get(num)).intValue())).setText("");
                                    } catch (Exception unused3) {
                                    }
                                    try {
                                        LinearLayout linearLayout2 = (LinearLayout) AddFarmer.this.mAddDynamicLinearOthers.getChildAt(i3);
                                        if (linearLayout2.getChildAt(1) != null && (linearLayout2.getChildAt(1) instanceof EditText)) {
                                            ((EditText) linearLayout2.getChildAt(1)).setText("");
                                        }
                                    } catch (Exception unused4) {
                                    }
                                }
                            }
                        } else {
                            String stringValue2 = AddFarmer.this.getDataFromDB.getStringValue(Queries.getInstance().getOperationType(AddFarmer.this.ruleID, this.obj.getColumnId(), intValue2));
                            Integer num2 = (Integer) AddFarmer.this.ruleAttributeIds.get(i);
                            int intValue4 = num2.intValue();
                            if (stringValue2 != null && stringValue2.equalsIgnoreCase("Visibility")) {
                                int childCount3 = AddFarmer.this.mAddDynamicLinear.getChildCount();
                                for (int i4 = 0; i4 < childCount3; i4++) {
                                    View childAt3 = AddFarmer.this.mAddDynamicLinear.getChildAt(i4);
                                    if (((LinearLayout) childAt3).getChildAt(1) != null && ((LinearLayout) childAt3).getChildAt(1).getTag(R.string.VISIBILITY_ID) != null && ((Integer) ((LinearLayout) childAt3).getChildAt(1).getTag(R.string.VISIBILITY_ID)).intValue() == intValue4) {
                                        AddFarmer.this.mAddDynamicLinear.getChildAt(i4).setVisibility(0);
                                        if (AddFarmer.this.visibiltyGoneIds.contains(num2)) {
                                            AddFarmer.this.visibiltyGoneIds.remove(num2);
                                        }
                                    }
                                }
                                int childCount4 = AddFarmer.this.mAddDynamicLinearOthers.getChildCount();
                                for (int i5 = 0; i5 < childCount4; i5++) {
                                    View childAt4 = AddFarmer.this.mAddDynamicLinearOthers.getChildAt(i5);
                                    if (((LinearLayout) childAt4).getChildAt(1) != null && ((LinearLayout) childAt4).getChildAt(1).getTag(R.string.VISIBILITY_ID) != null && ((Integer) ((LinearLayout) childAt4).getChildAt(1).getTag(R.string.VISIBILITY_ID)).intValue() == intValue4) {
                                        AddFarmer.this.mAddDynamicLinearOthers.getChildAt(i5).setVisibility(0);
                                        if (AddFarmer.this.visibiltyGoneIds.contains(num2)) {
                                            AddFarmer.this.visibiltyGoneIds.remove(num2);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    private void makeParentChildVisibility(DynamicFields dynamicFields) {
        String stringValue;
        ArrayList<Integer> arrayList = this.ruleAttributeIds;
        if (arrayList == null || arrayList.size() <= 0) {
            return;
        }
        try {
            int intValue = this.getDataFromDB.getIntValue(Queries.getInstance().getParentAttributeIdDraft(this.ruleID, dynamicFields.getColumnId()));
            if (intValue > 0 && intValue == dynamicFields.getColumnId() && this.getDataFromDB.getIntValue(Queries.getInstance().getRuleParentAttrValueId(this.ruleID, intValue)) == Integer.parseInt(this.mEntryArrIds.get(this.hAttributes.get(Integer.valueOf(intValue)).intValue()).getText().toString()) && (stringValue = this.getDataFromDB.getStringValue(Queries.getInstance().getOperationType(this.ruleID, intValue, Integer.parseInt(this.mEntryArrIds.get(this.hAttributes.get(Integer.valueOf(intValue)).intValue()).getText().toString())))) != null && stringValue.equalsIgnoreCase("Visibility")) {
                int childCount = this.mAddDynamicLinear.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    View childAt = this.mAddDynamicLinear.getChildAt(i);
                    if (((LinearLayout) childAt).getChildAt(1) != null && ((LinearLayout) childAt).getChildAt(1).getTag().equals(Integer.valueOf(dynamicFields.getColumnId()))) {
                        this.mAddDynamicLinear.getChildAt(i).setVisibility(0);
                        if (this.visibiltyGoneIds.contains(Integer.valueOf(dynamicFields.getColumnId()))) {
                            this.visibiltyGoneIds.remove(Integer.valueOf(dynamicFields.getColumnId()));
                        }
                    }
                }
                int childCount2 = this.mAddDynamicLinearOthers.getChildCount();
                for (int i2 = 0; i2 < childCount2; i2++) {
                    View childAt2 = this.mAddDynamicLinearOthers.getChildAt(i2);
                    if (((LinearLayout) childAt2).getChildAt(1) != null && ((LinearLayout) childAt2).getChildAt(1).getTag().equals(Integer.valueOf(dynamicFields.getColumnId()))) {
                        this.mAddDynamicLinearOthers.getChildAt(i2).setVisibility(0);
                        if (this.visibiltyGoneIds.contains(Integer.valueOf(dynamicFields.getColumnId()))) {
                            this.visibiltyGoneIds.remove(Integer.valueOf(dynamicFields.getColumnId()));
                        }
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void setBottomViewPadding() {
        ViewCompat.setOnApplyWindowInsetsListener(this.tabHost, new OnApplyWindowInsetsListener() { // from class: com.conceptglobal.pmc.fragments.AddFarmer$$ExternalSyntheticLambda1
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                return AddFarmer.lambda$setBottomViewPadding$0(view, windowInsetsCompat);
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

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
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.ColorDrawable;
import android.location.Location;
import android.media.ThumbnailUtils;
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
import android.widget.CheckBox;
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
import androidx.appcompat.widget.Toolbar;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.fragment.app.Fragment;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.conceptglobal.imaterialdesign.widget.FloatingActionButton;
import com.conceptglobal.pmc.BaseActivity;
import com.conceptglobal.pmc.MainHomePageActivity;
import com.conceptglobal.pmc.adapter.ActivityDisplayAdapter;
import com.conceptglobal.pmc.adapter.CropDisplayAdapter;
import com.conceptglobal.pmc.adapter.GridImageAdapter;
import com.conceptglobal.pmc.adapter.GridVideoAdapter;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.common.ListPopupOne;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.database.InsertDataIntoDB;
import com.conceptglobal.pmc.fragments.AddFarmer;
import com.conceptglobal.pmc.fragments.AddRetailer;
import com.conceptglobal.pmc.fragments.AttributesTableFarmatFragment;
import com.conceptglobal.pmc.interfaces.AttributeEventListener;
import com.conceptglobal.pmc.interfaces.OnCompleteListener;
import com.conceptglobal.pmc.interfaces.OnLocationFoundListener;
import com.conceptglobal.pmc.interfaces.ValidatorInterface;
import com.conceptglobal.pmc.locationprovider.FetchLocation;
import com.conceptglobal.pmc.model.ActivityModel;
import com.conceptglobal.pmc.model.AssignmentVisitDetails;
import com.conceptglobal.pmc.model.AttributeModel;
import com.conceptglobal.pmc.model.ComplaintInfoModel;
import com.conceptglobal.pmc.model.DynamicFields;
import com.conceptglobal.pmc.model.FarmerCropMapping;
import com.conceptglobal.pmc.model.FarmerDetails;
import com.conceptglobal.pmc.model.ImageDetails;
import com.conceptglobal.pmc.model.LastVisitModel;
import com.conceptglobal.pmc.model.LocationInfo;
import com.conceptglobal.pmc.model.PictureReportingData;
import com.conceptglobal.pmc.model.TerritoryMaster;
import com.conceptglobal.pmc.promotions.activity.VideoCapureActivityCopy2;
import com.conceptglobal.pmc.service.SyncDataService;
import com.conceptglobal.pmc.utils.CompressListener;
import com.conceptglobal.pmc.utils.ConstantDeclarations;
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
import org.apache.commons.io.IOUtils;

/* loaded from: classes.dex */
public class SAAttributeActivity_FBF extends BaseActivity implements View.OnClickListener, OnCompleteListener, AttributeEventListener, CompressListener {
    private static final int DATEDIALOGID = 0;
    private static final int DATEDIALOGID_YEARLESS = 1;
    private static final int GETCUSTOMER = 3;
    private static final int GETNEWACTIVITY = 2;
    private static final int GETRETAILERLIST = 1;
    private static final int INITIALCROPID = -1;
    private static final String TAG = "SAAttributeActivity_FBF";
    private int activityId;
    private String activityName;
    private int activityassignmentID;
    private ActivityDisplayAdapter adapterActivities;
    private CropDisplayAdapter adapterCrops;
    String bindQuery;
    private Button btnCustomerDetails;
    private Button btnDealer;
    private Button btnDiscription;
    private Button btnInactive;
    private ImageView btnLatLng;
    private Button btnResolutionDiscription;
    private Button btnSave;
    private Button btnTerritoryDetails;
    private Button btnVisit;
    private Button btn_fbf_resolution;
    private CheckBox checkBoxExecutor;
    private CheckBox checkBoxSmsReportee;
    private Context context;
    private TextView custDetailsText;
    protected Dialog d_remarks;
    StringBuilder dynamicColumnnames;
    private EditText etDiscription;
    private EditText etResolutionDiscription;
    private FarmerDetails farmerDetailsListFinal;
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
    private String isCompleted;
    private boolean isImageDeleted;
    private int isSelfAssign;
    private List<LastVisitModel> lastVisitData;
    private LinkedHashMap<String, List<LastVisitModel>> lastVisitModelHash;
    private List<ActivityModel> listActivities;
    private List<AttributeModel> listAttributes_Assgnmt;
    private List<FarmerCropMapping> listFarmerCrops;
    private LinearLayout llLastvisitBody;
    private LinearLayout lladdActivities;
    private ListView lvLastVisitData;
    private LinearLayout mAddDynamicLinear;
    private int mDay;
    private ArrayList<EditText> mEntryArr;
    private ArrayList<EditText> mEntryArrIds;
    private List<EditText> mEntryArrIds_Assgnmt;
    private List<EditText> mEntryArr_Assgnmt;
    private ArrayList<TextView> mEntrySpinnerArr;
    private LocationUtils mLocationUtils;
    private int mMonth;
    private ArrayList<TextView> mOprDatesArr;
    private Bitmap mVideoBitmap;
    private GridView mVideoGridView;
    private ImageDetails mVideoThumbNail;
    private int mYear;
    private ArrayList<TextView> mattributesnamesArr;
    private List<String> mentryValues;
    private MenuItem miDraft;
    private Queries queries;
    private String[] remarkNames;
    private String[] remarkids;
    private ScrollView scrollView;
    private int segmentId;
    private int selSegmentID;
    private ScrollView slLastVistdata;
    private TabHost tabHost;
    private TextView territoryDetailsText;
    private TextView toolbarText;
    private long transId;
    TextView tvAlert;
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
    private ImageView video_thumbnail1;
    private ImageView video_thumbnail2;
    private List<ImageDetails> videos;
    private AssignmentVisitDetails visitDetails;
    private WebView webView;
    private File zipFilePath;
    private String tag = "MBAActivity";
    private int dateDialogID = 0;
    private String farmerID = "";
    private String selCustomerId = "";
    private String GPSTimeStamp = "";
    private boolean isMIActivity = false;
    private String locationProvider = "";
    private HashMap<String, String> hAttributes = null;
    private ArrayList<DynamicFields> attributesArry = null;
    private int mForOperations = -1;
    private int mForDates = -1;
    private int layoutId = 0;
    private int datePos = 0;
    private String mFiledStr = "";
    private String updateDOS = null;
    boolean isFromResolution = false;
    View.OnClickListener datesListener = new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.SAAttributeActivity_FBF.5
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SAAttributeActivity_FBF.this.datePos = view.getId();
            SAAttributeActivity_FBF.this.txt = (TextView) view;
            SAAttributeActivity_FBF.this.showDialog(0);
        }
    };
    View.OnClickListener datesListenerYearless = new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.SAAttributeActivity_FBF.6
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SAAttributeActivity_FBF.this.datePos = view.getId();
            SAAttributeActivity_FBF.this.showDialog(1);
        }
    };
    View.OnClickListener operationListener = new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.SAAttributeActivity_FBF.8
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ListPopupOne listPopupOne = new ListPopupOne(SAAttributeActivity_FBF.this, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectOneDropDownTitle()), ((DynamicFields) SAAttributeActivity_FBF.this.attributesArry.get(view.getId())).getDbquery(), view, (TextView) SAAttributeActivity_FBF.this.mEntryArrIds.get(view.getId()));
            listPopupOne.getWindow().getAttributes().windowAnimations = R.style.PauseDialogAnimation;
            listPopupOne.show();
            listPopupOne.getWindow().setSoftInputMode(3);
        }
    };
    private final TextWatcher tvLatitudeListener = new TextWatcher() { // from class: com.conceptglobal.pmc.fo.SAAttributeActivity_FBF.12
        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            if (editable.toString().length() > 0) {
                SAAttributeActivity_FBF.this.tvLatitude.setError(null);
                SAAttributeActivity_FBF.this.tvLongitude.setError(null);
            }
        }
    };
    private DatePickerDialog.OnDateSetListener mDateSetListener = new DatePickerDialog.OnDateSetListener() { // from class: com.conceptglobal.pmc.fo.SAAttributeActivity_FBF.19
        @Override // android.app.DatePickerDialog.OnDateSetListener
        public void onDateSet(DatePicker datePicker, int i, int i2, int i3) {
            SAAttributeActivity_FBF.this.mYear = i;
            SAAttributeActivity_FBF.this.mMonth = i2;
            SAAttributeActivity_FBF.this.mDay = i3;
            try {
                if (new SimpleDateFormat("yyyy-MM-dd").parse(i + "-" + (i2 + 1) + "-" + i3).compareTo(new Date()) < 0) {
                    if (SAAttributeActivity_FBF.this.dateDialogID == 0) {
                        if (SAAttributeActivity_FBF.this.mMonth + 1 < 10) {
                            int unused = SAAttributeActivity_FBF.this.mMonth;
                        } else {
                            int unused2 = SAAttributeActivity_FBF.this.mMonth;
                        }
                        if (SAAttributeActivity_FBF.this.mDay < 10) {
                            int unused3 = SAAttributeActivity_FBF.this.mDay;
                            return;
                        } else {
                            int unused4 = SAAttributeActivity_FBF.this.mDay;
                            return;
                        }
                    }
                    return;
                }
                Toast.makeText(SAAttributeActivity_FBF.this.getApplicationContext(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectProperDate()), 1).show();
            } catch (Exception e) {
                PLog.e(SAAttributeActivity_FBF.TAG, e);
            }
        }
    };
    private DatePickerDialog.OnDateSetListener mDateSetListener_Yearless = new DatePickerDialog.OnDateSetListener() { // from class: com.conceptglobal.pmc.fo.SAAttributeActivity_FBF.20
        @Override // android.app.DatePickerDialog.OnDateSetListener
        public void onDateSet(DatePicker datePicker, int i, int i2, int i3) {
            SAAttributeActivity_FBF.this.mYear = i;
            SAAttributeActivity_FBF.this.mMonth = i2;
            SAAttributeActivity_FBF.this.mDay = i3;
            try {
                SAAttributeActivity_FBF.this.updateDisplay_yearless();
            } catch (Exception e) {
                PLog.e(SAAttributeActivity_FBF.this.tag, e);
            }
        }
    };
    private BroadcastReceiver videoComressReceiver = new BroadcastReceiver() { // from class: com.conceptglobal.pmc.fo.SAAttributeActivity_FBF.21
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            SAAttributeActivity_FBF.this.setAdapter();
        }
    };
    private BroadcastReceiver message = new BroadcastReceiver() { // from class: com.conceptglobal.pmc.fo.SAAttributeActivity_FBF.22
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String stringExtra = intent.getStringExtra("deletedImage");
            SAAttributeActivity_FBF.this.imagelist.remove(stringExtra);
            SAAttributeActivity_FBF.this.isImageDeleted = true;
            try {
                File file = new File(stringExtra);
                if (file.exists()) {
                    file.delete();
                }
            } catch (Exception e) {
                e.printStackTrace();
                PLog.e(SAAttributeActivity_FBF.TAG, e);
            }
        }
    };

    private void setVideoThumbnail() {
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
    }

    @Override // com.conceptglobal.pmc.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (ToDoActivityCopy.fromComplaint == 0) {
            setContentView(R.layout.activity_saattribute_copy);
        } else {
            setContentView(R.layout.activity_saattribute_fbf);
        }
        this.context = this;
        this.mLocationUtils = new LocationUtils();
        ConstantsPMC.getInstance().getLanguageConfigurations(this.context);
        setSupportActionBar((Toolbar) findViewById(R.id.toolbar));
        initialization();
        setBottomViewPadding(this.tabHost);
        getData();
        settingTabs();
        setLayoutData();
        int i = this.segmentId;
        if (i != 4 && i != 10) {
            createOperationAttributes();
        }
        settingData();
        setListeners();
        int i2 = this.segmentId;
        if (i2 != 4 && i2 != 10) {
            bindOperations();
        }
        this.gridView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.conceptglobal.pmc.fo.SAAttributeActivity_FBF.1
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i3, long j) {
                if (view.getTag().equals("image")) {
                    SAAttributeActivity_FBF sAAttributeActivity_FBF = SAAttributeActivity_FBF.this;
                    sAAttributeActivity_FBF.captureImage(((ImageDetails) sAAttributeActivity_FBF.images.get(i3)).getImageId());
                }
            }
        });
        this.mVideoGridView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.conceptglobal.pmc.fo.SAAttributeActivity_FBF.2
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i3, long j) {
                if (view.getTag().equals("video")) {
                    Toast.makeText(SAAttributeActivity_FBF.this.getApplicationContext(), "Video file", 1).show();
                    SAAttributeActivity_FBF sAAttributeActivity_FBF = SAAttributeActivity_FBF.this;
                    sAAttributeActivity_FBF.captureVideo(((ImageDetails) sAAttributeActivity_FBF.videos.get(i3)).getImageId());
                }
            }
        });
        ((FloatingActionButton) findViewById(R.id.fab_copy)).setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.SAAttributeActivity_FBF.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (SAAttributeActivity_FBF.this.images.size() <= 4) {
                    SAAttributeActivity_FBF.this.captureImage(0L);
                } else {
                    Toast.makeText(SAAttributeActivity_FBF.this.getApplication(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_maxImagesToast()), 1).show();
                }
            }
        });
        FloatingActionButton floatingActionButton = (FloatingActionButton) findViewById(R.id.fab2_copy);
        floatingActionButton.setVisibility(8);
        floatingActionButton.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.SAAttributeActivity_FBF.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (SAAttributeActivity_FBF.this.videos.size() < 1) {
                    SAAttributeActivity_FBF.this.captureVideo(0L);
                } else {
                    Toast.makeText(SAAttributeActivity_FBF.this.getApplication(), "only one video allowed", 1).show();
                }
            }
        });
        LocalBroadcastManager.getInstance(this).registerReceiver(this.message, new IntentFilter("send"));
        LocalBroadcastManager.getInstance(this).registerReceiver(this.videoComressReceiver, new IntentFilter("CompressedSuccess"));
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
        } else {
            if (i2 != 4) {
                if (i2 == 8) {
                    this.attributesArry = this.getDataFromDB.getDynanicFields(Queries.getInstance().gettingDynamicFieldsForTransaction("Planter"));
                }
            }
            this.attributesArry = this.getDataFromDB.getDynanicFields(Queries.getInstance().gettingDynamicFieldsForTransaction("Village"));
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

    /* JADX WARN: Removed duplicated region for block: B:21:0x0330  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x03c6  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0454  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x045b  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x03d3  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x033f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void addOperationsDynamicLayout(java.lang.String r20, java.lang.String r21, java.lang.String r22, java.lang.String r23, java.lang.String r24, java.lang.String r25, java.lang.String r26, int r27, int r28, int r29, int r30, int r31, android.widget.LinearLayout r32, int r33) {
        /*
            Method dump skipped, instructions count: 1235
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.fo.SAAttributeActivity_FBF.addOperationsDynamicLayout(java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, int, int, int, int, int, android.widget.LinearLayout, int):void");
    }

    private void setEditableFalse(EditText editText) {
        editText.setFocusable(false);
        editText.setClickable(false);
        editText.setEnabled(false);
        editText.setBackgroundDrawable(getResources().getDrawable(R.drawable.edt_disable));
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
        DatePickerDialog datePickerDialog = new DatePickerDialog(this, this.mDateSetListener_Yearless, this.mYear, this.mMonth, this.mDay) { // from class: com.conceptglobal.pmc.fo.SAAttributeActivity_FBF.7
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

    @Override // com.conceptglobal.pmc.BaseActivity
    protected void displayNotification(String str, String str2) {
        Crouton.showText(this, "" + str2 + IOUtils.LINE_SEPARATOR_UNIX + str, Style.ALERT);
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
        this.toolbarText = (TextView) findViewById(R.id.toolbar_title);
        this.context = this;
        this.intentGetData = getIntent();
        this.queries = Queries.getInstance();
        this.getDataFromDB = GetDataFromDB.getInstance();
        TabHost tabHost = (TabHost) findViewById(R.id.tabhost);
        this.tabHost = tabHost;
        this.tvFarmer = (TextView) tabHost.findViewById(R.id.tv_farmer_farmer_other_details_copy);
        this.btnDealer = (Button) this.tabHost.findViewById(R.id.tv_dealer_farmer_other_details_copy);
        this.btnDiscription = (Button) this.tabHost.findViewById(R.id.tv_discription_farmer_other_details_copy);
        this.etDiscription = (EditText) this.tabHost.findViewById(R.id.et_discription_farmer_other_details_copy);
        this.tvIsBayerFarmer = (TextView) this.tabHost.findViewById(R.id.tv_bayerfarmer_other_details_copy);
        this.tvRetailers = (TextView) this.tabHost.findViewById(R.id.tv_retailers_farmer_other_details_copy);
        this.lladdActivities = (LinearLayout) this.tabHost.findViewById(R.id.ll_add_another_activity);
        this.btnSave = (Button) this.tabHost.findViewById(R.id.btn_save_farmer_other_details_copy);
        Button button = (Button) this.tabHost.findViewById(R.id.btn_inactive_farmer_other_details_copy);
        this.btnInactive = button;
        button.setVisibility(8);
        this.btnVisit = (Button) this.tabHost.findViewById(R.id.btn_visit_farmer_other_details_copy);
        this.custDetailsText = (TextView) this.tabHost.findViewById(R.id.txtSelectCustomer_copy);
        this.btnCustomerDetails = (Button) this.tabHost.findViewById(R.id.btnSelectCustomer_copy);
        TextView textView = (TextView) this.tabHost.findViewById(R.id.txtSelectTerritory_copy);
        this.territoryDetailsText = textView;
        textView.setVisibility(0);
        Button button2 = (Button) this.tabHost.findViewById(R.id.btnSelectTerritory_copy);
        this.btnTerritoryDetails = button2;
        button2.setVisibility(0);
        this.gridView = (GridView) this.tabHost.findViewById(R.id.grid_view_farmer_copy);
        this.mVideoGridView = (GridView) this.tabHost.findViewById(R.id.grid_view_farmer_copy2);
        this.video_thumbnail1 = null;
        this.video_thumbnail2 = null;
        this.lvLastVisitData = (ListView) findViewById(R.id.lv_list_alert);
        this.slLastVistdata = (ScrollView) findViewById(R.id.svLastVisitData);
        this.llLastvisitBody = (LinearLayout) findViewById(R.id.llLastvisitBody);
        this.btnDealer.setVisibility(8);
        this.tvRetailers.setVisibility(8);
        this.btnLatLng = (ImageView) this.tabHost.findViewById(R.id.btn_get_latlong_farmer_personal_detailss_copy);
        this.tvLatitude = (TextView) this.tabHost.findViewById(R.id.tv_latitude_personal_detailss_copy);
        this.tvLongitude = (TextView) this.tabHost.findViewById(R.id.tv_longitude_personal_detailss_copy);
        this.tvpictures = (TextView) this.tabHost.findViewById(R.id.pictures);
        this.tvVideos = (TextView) this.tabHost.findViewById(R.id.videos);
        this.tvLatitude.addTextChangedListener(this.tvLatitudeListener);
        this.imagelist = new ArrayList<>();
        this.images = new ArrayList();
        this.videos = new ArrayList();
        this.scrollView = (ScrollView) findViewById(R.id.scrollView1);
        this.webView = (WebView) findViewById(R.id.webView);
        this.tvAlert = (TextView) this.tabHost.findViewById(R.id.tv_list_alert);
        this.fullDetailsBtn = (TextView) this.tabHost.findViewById(R.id.textViewFullDetails);
        this.mAddDynamicLinear = (LinearLayout) findViewById(R.id.operations_dynamic_LL);
        this.dynamicColumnnames = new StringBuilder();
        this.mentryValues = new ArrayList();
        if (ToDoActivityCopy.fromComplaint == 1) {
            EditText editText = (EditText) findViewById(R.id.et_discription_farmer_other_details_fbff_resolution);
            this.etResolutionDiscription = editText;
            editText.setVisibility(0);
            this.btnResolutionDiscription = (Button) findViewById(R.id.tv_discription_farmer_other_details_fbf_resolution);
            this.btn_fbf_resolution = (Button) findViewById(R.id.btn_visit_farmer_other_details_fbf);
            this.btnResolutionDiscription.setVisibility(0);
            this.checkBoxExecutor = (CheckBox) this.tabHost.findViewById(R.id.checkbox_sms_exicutor);
            this.checkBoxSmsReportee = (CheckBox) this.tabHost.findViewById(R.id.checkbox_sms_reportee);
        }
    }

    private void settingTabs() {
        LocalActivityManager localActivityManager = new LocalActivityManager(this, false);
        localActivityManager.dispatchCreate(null);
        this.tabHost.setup(localActivityManager);
        if (this.isFromResolution) {
            addTab("Complaint Form", R.drawable.ic_activity_wight, getResources().getString(R.string.pmc_tag3));
            addTab("Resolution", R.drawable.ic_others_wight, getResources().getString(R.string.pmc_tag5));
        } else {
            addTab("Complaint Form", R.drawable.ic_activity_wight, getResources().getString(R.string.pmc_tag3));
            addTab("Capture", R.drawable.ic_others_wight, getResources().getString(R.string.pmc_tag4));
        }
    }

    private void addTab(String str, int i, String str2) {
        TabHost.TabSpec newTabSpec = this.tabHost.newTabSpec(str);
        View inflate = LayoutInflater.from(this).inflate(R.layout.tab_indicator, (ViewGroup) this.tabHost.getTabWidget(), false);
        ((TextView) inflate.findViewById(R.id.title_tab_indicator)).setText(str);
        ((ImageView) inflate.findViewById(R.id.icon_tab_indicator)).setImageResource(i);
        newTabSpec.setIndicator(inflate);
        if (str2.equalsIgnoreCase(getResources().getString(R.string.pmc_tag3))) {
            if (this.isMIActivity) {
                Intent intent = new Intent(this.context, (Class<?>) MarketAttributesActivity.class);
                intent.putExtra(ConstantDeclarations.getInstance().getKEYFARMERID(), this.farmerID);
                intent.putExtra(ConstantDeclarations.getInstance().getKeyIsMba(), 0);
                intent.putExtra("SEGMENTID", this.segmentId);
                intent.putExtra("ISSELFASSIGN", 1);
                intent.putExtra("ACTIVITYNAME", this.activityName);
                intent.putExtra("TRANSID", this.transId);
                intent.putExtra(ConstantDeclarations.getInstance().getKEYACTIVITYID(), this.activityId);
                intent.putExtra(ConstantDeclarations.getInstance().getKEYISPLANNED(), 0);
                intent.addFlags(131072).addFlags(8192);
                newTabSpec.setContent(intent);
            } else {
                Intent intent2 = new Intent(this.context, (Class<?>) AttributesActivity_FBF.class);
                try {
                    if (this.getDataFromDB.getSingleValue(Queries.getInstance().getActivityDisplayType(this.activityId)).equals("2")) {
                        intent2 = new Intent(this.context, (Class<?>) AttributesTableViewActivity.class);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
                intent2.putExtra(ConstantDeclarations.getInstance().getKEYFARMERID(), this.farmerID);
                intent2.putExtra(ConstantDeclarations.getInstance().getKeyIsMba(), 0);
                intent2.putExtra("SEGMENTID", this.segmentId);
                intent2.putExtra("ISSELFASSIGN", 1);
                intent2.putExtra("ACTIVITYNAME", this.activityName);
                intent2.putExtra("TRANSID", this.transId);
                intent2.putExtra("ActivityAssignmentId", this.activityassignmentID);
                intent2.putExtra("isCompleted", this.isCompleted);
                intent2.putExtra(ConstantDeclarations.getInstance().getKEYACTIVITYID(), this.activityId);
                intent2.putExtra(ConstantDeclarations.getInstance().getKEYISPLANNED(), 0);
                newTabSpec.setContent(intent2);
            }
        } else if (str2.equalsIgnoreCase(getResources().getString(R.string.pmc_tag4))) {
            newTabSpec.setContent(R.id.tab4);
        } else if (str2.equalsIgnoreCase(getResources().getString(R.string.pmc_tag5))) {
            newTabSpec.setContent(R.id.tab5);
        } else if (str2.equalsIgnoreCase(getResources().getString(R.string.pmc_tag1))) {
            newTabSpec.setContent(R.id.tab1);
        }
        this.tabHost.addTab(newTabSpec);
    }

    private void getData() {
        this.farmerID = this.intentGetData.getStringExtra(ConstantDeclarations.getInstance().getKEYFARMERID());
        this.intentGetData.getIntExtra(ConstantDeclarations.getInstance().getKEYVILLAGEID(), 0);
        this.isSelfAssign = this.intentGetData.getIntExtra("ISSELFASSIGN", 0);
        this.activityId = this.intentGetData.getIntExtra("ACTIVITYID", 0);
        this.transId = this.intentGetData.getLongExtra("TRANSID", 0L);
        this.isCompleted = this.intentGetData.getStringExtra("isCompleted");
        this.segmentId = this.intentGetData.getIntExtra("SEGMENTID", 0);
        this.activityName = this.intentGetData.getStringExtra("ACTIVITYNAME");
        this.activityassignmentID = this.intentGetData.getIntExtra("ActivityAssignmentId", 0);
        this.isFromResolution = this.intentGetData.getBooleanExtra("isFromResolution", false);
        if (ConstantsPMC.getInstance().getIsTrainingORLive() == 2) {
            CustomActionBar.initActionBar(this, this.getDataFromDB.getSegmentName(this.segmentId) + " Details(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
        }
        if (this.getDataFromDB.getSegmentType(this.segmentId) == 2) {
            this.btnCustomerDetails.setVisibility(0);
            this.custDetailsText.setVisibility(0);
        } else {
            this.btnCustomerDetails.setVisibility(8);
            this.custDetailsText.setVisibility(8);
        }
        this.visitDetails = this.getDataFromDB.getAssignmentVisitDetail(Queries.getInstance().getFBFAssignmentVisitDetailSelfAssign(this.transId));
        this.lastVisitData = this.getDataFromDB.getLastVistData(this.queries.getLastvistFarmerData(this.farmerID, this.activityId));
        for (int i = 0; i < this.lastVisitData.size(); i++) {
            if (this.lastVisitModelHash.get(this.lastVisitData.get(i).getLastVisitDate()) == null) {
                this.lastVisitModelHash.put(this.lastVisitData.get(i).getLastVisitDate(), new ArrayList());
                this.lastVisitModelHash.get(this.lastVisitData.get(i).getLastVisitDate()).add(this.lastVisitData.get(i));
            } else {
                this.lastVisitModelHash.get(this.lastVisitData.get(i).getLastVisitDate()).add(this.lastVisitData.get(i));
            }
        }
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
        this.tvFarmer.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_pmcFarmerInFFA()));
        this.btnDealer.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_prefDealerInFFA()));
        this.btnDiscription.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_visitDescInFFA()));
        this.etDiscription.setHint(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_addDescInFFA()));
        this.btnSave.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_draftFarmerText()));
        this.btnSave.setVisibility(8);
        this.btnInactive.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_discardText()));
        this.btnVisit.setText("Save");
        try {
            if (this.visitDetails != null) {
                try {
                    int intValue = this.getDataFromDB.getIntValue(this.queries.getTerritoryDraftQuery(0, this.transId));
                    if (intValue != 0) {
                        this.territoryDetailsText.setText(this.getDataFromDB.getStringValue(this.queries.getTerritoryName(intValue)));
                        this.territoryDetailsText.setTag(R.string.ENTRYID_SET, Integer.valueOf(intValue));
                    }
                    int intValue2 = this.getDataFromDB.getIntValue(this.queries.getEcexutionSegmentIdDraftQuery(0, this.transId));
                    if (intValue2 != 0) {
                        this.selSegmentID = intValue2;
                        String stringValue = this.getDataFromDB.getStringValue(this.queries.getEcexutionSegmentValueDraftQuery(0, this.transId));
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
                if (this.visitDetails.getLatitude() != 0.0d && this.visitDetails.getLongitude() != 0.0d) {
                    this.tvLatitude.setText(this.visitDetails.getLatitude() + "");
                    this.tvLongitude.setText(this.visitDetails.getLongitude() + "");
                }
                this.locationProvider = this.visitDetails.getRemarks() + "";
            }
        } catch (Exception e2) {
            PLog.e(this.tag, e2, 0);
        }
    }

    private void settingData() {
        CustomActionBar.initActionBar(this, "Complaint(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
        Calendar calendar = Calendar.getInstance();
        this.mYear = calendar.get(1);
        this.mMonth = calendar.get(2);
        this.mDay = calendar.get(5);
        List<LastVisitModel> list = this.lastVisitData;
        if (list == null || list.size() <= 0) {
            return;
        }
        this.tabHost.findViewById(R.id.ll_list_alert).setVisibility(8);
        addLastVisitAcitivityAttributes(this.lastVisitData);
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

    private void setListeners() {
        this.btnSave.setOnClickListener(this);
        this.btnInactive.setOnClickListener(this);
        this.btnVisit.setOnClickListener(this);
        this.tvRetailers.setOnClickListener(this);
        this.btnLatLng.setOnClickListener(this);
        this.fullDetailsBtn.setOnClickListener(this);
        if (ToDoActivityCopy.fromComplaint == 1) {
            this.btn_fbf_resolution.setOnClickListener(this);
        }
        this.custDetailsText.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.SAAttributeActivity_FBF.9
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Intent intent = new Intent(SAAttributeActivity_FBF.this.getBaseContext(), (Class<?>) SelfAssignActivity.class);
                intent.putExtra("isFromAssignment", 1);
                intent.putExtra("ACTIVITYID", SAAttributeActivity_FBF.this.activityId);
                SAAttributeActivity_FBF.this.startActivityForResult(intent, 3);
            }
        });
        this.territoryDetailsText.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.SAAttributeActivity_FBF.10
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ListPopupOne listPopupOne = new ListPopupOne(SAAttributeActivity_FBF.this, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectText()) + " Territory", " SELECT territoryId,territoryName FROM TerritoryMaster where isActive ='True' or isActive=1 ", view, SAAttributeActivity_FBF.this.territoryDetailsText);
                listPopupOne.getWindow().getAttributes().windowAnimations = R.style.PauseDialogAnimation;
                listPopupOne.show();
                listPopupOne.getWindow().setSoftInputMode(3);
            }
        });
        this.tabHost.setOnTabChangedListener(new TabHost.OnTabChangeListener() { // from class: com.conceptglobal.pmc.fo.SAAttributeActivity_FBF.11
            @Override // android.widget.TabHost.OnTabChangeListener
            public void onTabChanged(String str) {
                if (SAAttributeActivity_FBF.this.tabHost.getCurrentTab() == 0) {
                    AttributesActivity_FBF.methodToGetData(SAAttributeActivity_FBF.this.context);
                } else if (SAAttributeActivity_FBF.this.tabHost.getCurrentTab() == 1) {
                    AttributesActivity_FBF.methodToGetData(SAAttributeActivity_FBF.this.context);
                }
                if (SAAttributeActivity_FBF.this.segmentId == 4 || SAAttributeActivity_FBF.this.segmentId == 10) {
                    if (SAAttributeActivity_FBF.this.tabHost.getCurrentTab() == 2) {
                        SAAttributeActivity_FBF.this.miDraft.setVisible(true);
                        return;
                    } else {
                        SAAttributeActivity_FBF.this.miDraft.setVisible(false);
                        return;
                    }
                }
                if (SAAttributeActivity_FBF.this.tabHost.getCurrentTab() == 3) {
                    SAAttributeActivity_FBF.this.miDraft.setVisible(true);
                } else {
                    SAAttributeActivity_FBF.this.miDraft.setVisible(false);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void captureImage(long j) {
        Intent intent = new Intent(this.context, (Class<?>) PictureReporting.class);
        intent.putExtra("activityId", this.activityId);
        intent.putExtra("assignmentId", 0);
        try {
            intent.putExtra("setReferenceType", GetDataFromDB.getInstance().getLookupValue(Queries.getInstance().getItemValue("Complaint")));
        } catch (Exception e) {
            e.printStackTrace();
            PLog.e(TAG, e);
        }
        intent.putExtra("setReferenceID", String.valueOf(this.transId));
        intent.putExtra("attributeId", 0);
        intent.putExtra("farmerId", this.farmerID);
        intent.putExtra("imageId", j);
        intent.putExtra("FeedBack", "105");
        startActivity(intent);
    }

    private void insertPictureData() {
        PictureReportingData pictureReportingData;
        try {
            pictureReportingData = new PictureReportingData();
        } catch (Exception e) {
            e.getMessage();
            pictureReportingData = null;
        }
        long j = 0;
        for (int i = 0; i < this.imagelist.size(); i++) {
            try {
                pictureReportingData.setImageId(System.currentTimeMillis());
                j = GetDataFromDB.getInstance().getLookupValue(Queries.getInstance().getItemValue("SelfAssignment"));
            } catch (Exception e2) {
                e2.printStackTrace();
                PLog.e(TAG, e2);
            }
            pictureReportingData.setActivityId("" + this.activityId);
            pictureReportingData.setPicturePath(this.imagelist.get(i).toString());
            pictureReportingData.setPdaCreatedDate(UtilDeclarations.getDateTime());
            pictureReportingData.setServerStatus("false");
            pictureReportingData.setPDAID(ConstantsPMC.getInstance().getDeviceID());
            pictureReportingData.setCreatedBy(ConstantsPMC.getInstance().getDeviceID());
            pictureReportingData.setCreatedDate(UtilDeclarations.getDateTime());
            pictureReportingData.setUpdatedBy(ConstantsPMC.getInstance().getDeviceID());
            pictureReportingData.setUpdatedDate(UtilDeclarations.getDateTime());
            pictureReportingData.setReferenceType(j + "");
            pictureReportingData.setAssignmentId("0");
            pictureReportingData.setActivityId(this.activityId + "");
            StringBuilder sb = new StringBuilder("");
            sb.append(this.transId);
            pictureReportingData.setReferenceID(sb.toString());
            try {
                InsertDataIntoDB.insertPictureDetails(pictureReportingData, this.context);
            } catch (Exception e3) {
                e3.printStackTrace();
                PLog.e(TAG, e3);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAdapter() {
        List<ImageDetails> imageDetailsList = this.getDataFromDB.getImageDetailsList(Queries.getInstance().getImageDetailsQry_Assignment_Testimonial(String.valueOf(this.transId)));
        this.images = imageDetailsList;
        if (imageDetailsList != null && imageDetailsList.size() > 0) {
            this.imageAdapter = new GridImageAdapter(this.context, this.images, this.imagelist);
            this.gridView.setAdapter((ListAdapter) null);
            this.gridView.setAdapter((ListAdapter) this.imageAdapter);
            this.gridView.setVisibility(0);
            this.tvpictures.setVisibility(0);
        } else {
            this.gridView.setVisibility(8);
            this.tvpictures.setVisibility(8);
        }
        List<ImageDetails> imageDetailsList2 = this.getDataFromDB.getImageDetailsList(Queries.getInstance().getVideoDetaisQry_assignment_testimonial(String.valueOf(this.transId)));
        this.videos = imageDetailsList2;
        if (imageDetailsList2 != null && imageDetailsList2.size() > 0) {
            this.videoAdapter = new GridVideoAdapter(this.context, this.videos, this.videoList);
            this.mVideoGridView.setAdapter((ListAdapter) null);
            this.mVideoGridView.setAdapter((ListAdapter) this.videoAdapter);
            this.mVideoGridView.setVisibility(0);
            this.tvVideos.setVisibility(0);
            return;
        }
        this.mVideoGridView.setVisibility(8);
        this.tvVideos.setVisibility(8);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        UtilDeclarations.hideInputKeyboard(this.context);
        switch (view.getId()) {
            case R.id.btnViewHistory /* 2131296396 */:
                if (UtilDeclarations.isOnline(this)) {
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
                } else {
                    showNoInternetDialog(getResources().getString(R.string.pmc_check_internet));
                    break;
                }
            case R.id.btn_get_latlong_farmer_personal_detailss_copy /* 2131296418 */:
                fetchLocation();
                break;
            case R.id.btn_inactive_farmer_other_details_copy /* 2131296422 */:
                showDiscardAlert();
                break;
            case R.id.btn_save_farmer_other_details_copy /* 2131296437 */:
                saveDataIntoDataBase(2);
                break;
            case R.id.btn_visit_farmer_other_details_copy /* 2131296453 */:
                if (isValidData(true) && checkCustomerDetails() && checkTerritorydetails() && checkImagesMandatory() && checkVideoMandatory()) {
                    showAlertCancel("Do you want to save the Complaint?", 1);
                    break;
                }
                break;
            case R.id.btn_visit_farmer_other_details_fbf /* 2131296454 */:
                resolutionComplete();
                break;
            case R.id.textViewFullDetails /* 2131297349 */:
                int i = this.segmentId;
                if (i != 1) {
                    if (i != 8) {
                        if (i != 2) {
                            if (i == 3) {
                                Intent intent = new Intent(this, (Class<?>) AddRetailer.class);
                                intent.putExtra("SegmentId", this.segmentId);
                                intent.putExtra("farmerId", this.farmerID);
                                intent.putExtra("fromTransaction", 1);
                                intent.putExtra("farmerType", ConstantsPMC.TYPE_Distributor);
                                startActivity(intent);
                                break;
                            }
                        } else {
                            Intent intent2 = new Intent(this, (Class<?>) AddRetailer.class);
                            intent2.putExtra("SegmentId", this.segmentId);
                            intent2.putExtra("farmerId", this.farmerID);
                            intent2.putExtra("fromTransaction", 1);
                            intent2.putExtra("farmerType", ConstantsPMC.TYPE_Retailer);
                            startActivity(intent2);
                            break;
                        }
                    } else {
                        Intent intent3 = new Intent(this, (Class<?>) AddFarmer.class);
                        intent3.putExtra("SegmentId", this.segmentId);
                        intent3.putExtra("farmerId", this.farmerID);
                        intent3.putExtra("fromTransaction", 1);
                        intent3.putExtra("farmerType", "Planter");
                        startActivity(intent3);
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
                    Intent intent4 = new Intent(this, (Class<?>) AddFarmer.class);
                    intent4.putExtra("SegmentId", this.segmentId);
                    intent4.putExtra("farmerId", this.farmerID);
                    intent4.putExtra("fromTransaction", 1);
                    intent4.putExtra("farmerType", ConstantsPMC.TYPE_FARMER);
                    startActivity(intent4);
                    break;
                }
                break;
            case R.id.tv_retailers_farmer_other_details_copy /* 2131297654 */:
                startActivityForResult(new Intent(this.context, (Class<?>) RetailersDisplayActivity.class).addFlags(131072), 1);
                break;
        }
    }

    private void resolutionComplete() {
        String obj = this.etResolutionDiscription.getText().toString();
        this.checkBoxSmsReportee.isChecked();
        this.checkBoxExecutor.isChecked();
        if (obj != null) {
            new ArrayList();
            new ComplaintInfoModel();
            InsertDataIntoDB.insertResolutionDataIntoDb("", "", "", "", "", "", this.transId, 0, 0, 1);
            if (UtilDeclarations.isOnline(this.context) && !UtilDeclarations.isServiceRunning(getApplicationContext(), SyncDataService.class)) {
                Toast.makeText(getBaseContext(), "Service initiated", 0);
                new SendDataServiceUtil(this).startService();
            }
            Intent intent = new Intent(this, (Class<?>) MainHomePageActivity.class);
            intent.addFlags(268468224);
            startActivity(intent);
            finish();
        }
    }

    private void showNoInternetDialog(String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setMessage(str).setCancelable(false).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.SAAttributeActivity_FBF.13
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
                        GetDataFromDB.getInstance().executeRawQueryInDB(Queries.getInstance().deleteFarmerDetailsActivityFBF(this.farmerID, this.activityId, this.transId));
                    }
                    InsertDataIntoDB.insertFarmerActivityDetailsUpdateFBF(this.listAttributes_Assgnmt, this.farmerID, this.activityId, 0, 0, 0, this.segmentId, this.transId, 0, 0, null, 0);
                } catch (Exception e2) {
                    PLog.e("FarmerFormActivity", e2);
                }
                String obj = this.territoryDetailsText.getTag(R.string.ENTRYID_SET) != null ? this.territoryDetailsText.getTag(R.string.ENTRYID_SET).toString() : "0";
                if ((!this.selCustomerId.equalsIgnoreCase("") && this.selSegmentID != 0) || !obj.equals("0")) {
                    try {
                        InsertDataIntoDB.UpdateFBFAssignmentActivitiesCustomerDetails(this.selCustomerId, this.selSegmentID, 0, this.transId, obj);
                    } catch (Exception e3) {
                        PLog.e(TAG, e3);
                    }
                }
                GetDataFromDB.getInstance().executeRawQueryInDB(Queries.getInstance().updateDraftForFeedBackActivities(this.activityId, this.farmerID, this.transId, 2));
                if (this.getDataFromDB.getIFContains(Queries.getInstance().updateDraftForAssignmentvisit(this.transId)) != 0) {
                    InsertDataIntoDB.UpdateFBFAssignmentVisistDetails(0, this.farmerID, this.etDiscription.getText().toString(), this.tvLatitude.getText().toString(), this.tvLongitude.getText().toString(), 0, this.transId, "0", this.locationProvider, this.GPSTimeStamp);
                } else {
                    InsertDataIntoDB.insertFBFAssignmentVisistDetails(0, this.farmerID, this.etDiscription.getText().toString(), this.tvLatitude.getText().toString(), this.tvLongitude.getText().toString(), 0, this.transId, "0", this.locationProvider, this.GPSTimeStamp);
                }
            } catch (Exception e4) {
                PLog.e("FarmerFormActivity", e4);
            }
            finish();
            return;
        }
        prepareAttributeData();
        for (int i2 = 0; i2 < this.listAttributes_Assgnmt.size(); i2++) {
            try {
                AttributeModel attributeModel = this.listAttributes_Assgnmt.get(i2);
                if (attributeModel.getIsMandatory() == 1 && (TextUtils.isEmpty(attributeModel.getAttributeValue().trim()) || (attributeModel.getAttributeValue() != null && attributeModel.getAttributeValue().equalsIgnoreCase("null")))) {
                    PLog.e("SAattributesActivity", "mandatory value empty " + attributeModel.getAttributeValue() + "  --  " + attributeModel.getAttributeId());
                    for (int i3 = 0; i3 < this.listAttributes_Assgnmt.size(); i3++) {
                        if (this.listAttributes_Assgnmt.get(i3).getControlType().equalsIgnoreCase("Multiselect Dropdown")) {
                            showErrorAlertDialog("Something went wrong please perform activity again.");
                            PLog.e("SAattributesActivity_FBF", "mandatory value empty dropdown " + attributeModel.getAttributeValue() + "  --  " + attributeModel.getAttributeId());
                            return;
                        }
                    }
                    if (attributeModel.getControlType().equalsIgnoreCase("Dropdown")) {
                        AttributesActivity_FBF.setFieldDataEmpty(i2, true);
                        showAlert("Please reselect " + attributeModel.getAttributeName() + " again");
                        PLog.e("SAattributesActivity_FBF", "mandatory value empty dropdown " + attributeModel.getAttributeValue() + "  --  " + attributeModel.getAttributeId());
                        return;
                    }
                    AttributesActivity_FBF.setFieldDataEmpty(i2, false);
                    showAlert("Please enter  " + attributeModel.getAttributeName());
                    PLog.e("SAattributesActivity_FBF", "mandatory value empty entry field " + attributeModel.getAttributeValue() + "  --  " + attributeModel.getAttributeId());
                    return;
                }
            } catch (Exception unused) {
                showErrorAlertDialog("Something went wrong please perform activity again.");
                return;
            }
        }
        if (this.listAttributes_Assgnmt.size() != 0) {
            GetDataFromDB.getInstance().executeRawQueryInDB(Queries.getInstance().deleteFarmerDetailsActivityFBF(this.farmerID, this.activityId, this.transId));
        }
        try {
            InsertDataIntoDB.insertFarmerActivityDetailsUpdateFBF(this.listAttributes_Assgnmt, this.farmerID, this.activityId, 0, 1, 0, this.segmentId, this.transId, 1, 0, null, 0);
        } catch (Exception e5) {
            PLog.e(TAG, e5);
        }
        if (this.getDataFromDB.getIFContains(Queries.getInstance().updateDraftForAssignmentvisitFBF(this.transId)) != 0) {
            InsertDataIntoDB.UpdateFBFAssignmentVisistDetails(0, this.farmerID, this.etDiscription.getText().toString(), this.tvLatitude.getText().toString(), this.tvLongitude.getText().toString(), 0, this.transId, "false", this.locationProvider, this.GPSTimeStamp);
        } else {
            InsertDataIntoDB.insertFBFAssignmentVisistDetails(0, this.farmerID, this.etDiscription.getText().toString(), this.tvLatitude.getText().toString(), this.tvLongitude.getText().toString(), 0, this.transId, "false", this.locationProvider, this.GPSTimeStamp);
        }
        InsertDataIntoDB.insertResolutionDataIntoDb("", "", "", "", "", "", this.transId, 0, 0, 1);
        try {
            GetDataFromDB.getInstance().updateChildTransactionDetails(Queries.getInstance().getchildDetailsActivityFBF(this.farmerID, this.activityId, 0, this.transId));
        } catch (Exception e6) {
            PLog.e(TAG, e6);
        }
        for (int i4 = 0; i4 < this.images.size(); i4++) {
            InsertDataIntoDB.UpdateImageServerStatus(this.images.get(i4).getImageId());
        }
        String obj2 = this.territoryDetailsText.getTag(R.string.ENTRYID_SET) != null ? this.territoryDetailsText.getTag(R.string.ENTRYID_SET).toString() : "0";
        if ((!this.selCustomerId.equalsIgnoreCase("") && this.selSegmentID != 0) || !obj2.equals("0")) {
            try {
                InsertDataIntoDB.UpdateFBFAssignmentActivitiesCustomerDetails(this.selCustomerId, this.selSegmentID, 0, this.transId, obj2);
            } catch (Exception e7) {
                PLog.e(TAG, e7);
            }
        }
        if (UtilDeclarations.isOnline(this.context) && !UtilDeclarations.isServiceRunning(getApplicationContext(), SyncDataService.class)) {
            Toast.makeText(getBaseContext(), "Service initiated", 0);
            new SendDataServiceUtil(this).startService();
        }
        Intent intent = new Intent(this, (Class<?>) MainHomePageActivity.class);
        intent.addFlags(268468224);
        startActivity(intent);
        finish();
        return;
        PLog.e(this.tag, e);
    }

    private void saveTableAttributeData() {
        List<Fragment> list = this.fragmentsList;
        if (list == null || list.size() <= 0 || this.fragmentsList.size() <= 0) {
            return;
        }
        AttributesTableFarmatFragment attributesTableFarmatFragment = (AttributesTableFarmatFragment) this.fragmentsList.get(0);
        if (attributesTableFarmatFragment.isDataValid()) {
            attributesTableFarmatFragment.testMethod(0);
        } else {
            this.tabHost.setCurrentTab(0);
        }
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
            if (attributeModel.getIsMandatory() == 1) {
                this.mEntryArr_Assgnmt.get(i).getText().toString().equalsIgnoreCase("");
            }
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
        builder.setMessage(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_addCustomerGoBackDialog())).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_cancelDialogButtonText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.SAAttributeActivity_FBF.14
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        });
        builder.setNegativeButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.SAAttributeActivity_FBF.15
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
                SAAttributeActivity_FBF.this.finish();
            }
        });
        AlertDialog show = builder.show();
        if (UtilDeclarations.isTablet(this)) {
            UtilDeclarations.makeTabletDialogTextlarge(show);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        String[] stringArray;
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
        if (i == 2) {
            if (i2 == 0 || intent == null || intent.getStringArrayExtra(ConstantDeclarations.getInstance().getKEYSELECTION()) == null || (stringArray = intent.getExtras().getStringArray(ConstantDeclarations.getInstance().getKEYSELECTION())) == null) {
                return;
            }
            try {
                new ArrayList();
                String str = stringArray[0];
                List<String> list = this.getDataFromDB.getList(this.queries.getListOfAttributes(str));
                if (list == null || list.size() <= 0) {
                    return;
                }
                Iterator<String> it = list.iterator();
                while (it.hasNext()) {
                    try {
                        InsertDataIntoDB.insertFarmerAttributeDetails(Integer.parseInt(this.farmerID), str, it.next());
                    } catch (Exception e) {
                        PLog.e(this.tag, e);
                    }
                }
                return;
            } catch (Exception e2) {
                PLog.e(this.tag, e2);
                return;
            }
        }
        if (i == 3) {
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
                return;
            } catch (Exception e3) {
                PLog.e("MBAACTIVITY", e3);
                return;
            }
        }
        if (i != 202) {
            return;
        }
        if (intent != null) {
            this.imagePath = intent.getStringExtra("ImagePath");
            this.imageId = intent.getLongExtra("imageId", 0L);
        }
        ImageDetails imageDetail = GetDataFromDB.getInstance().getImageDetail(Queries.getInstance().getImageDetailQueryBYImageId(String.valueOf(this.imageId)));
        if (imageDetail != null) {
            Bitmap createVideoThumbnail = ThumbnailUtils.createVideoThumbnail(imageDetail.getPicturePath(), 1);
            this.mVideoBitmap = createVideoThumbnail;
            this.video_thumbnail1.setImageBitmap(createVideoThumbnail);
            this.video_thumbnail1.setVisibility(0);
            return;
        }
        String str2 = this.imagePath;
        if (str2 != null) {
            Bitmap createVideoThumbnail2 = ThumbnailUtils.createVideoThumbnail(str2, 1);
            this.mVideoBitmap = createVideoThumbnail2;
            this.video_thumbnail1.setImageBitmap(createVideoThumbnail2);
            this.video_thumbnail1.setVisibility(0);
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

    private void showAlertCancel(String str, final int i) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.context);
        builder.setMessage(str).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.SAAttributeActivity_FBF.17
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                dialogInterface.dismiss();
                int i3 = i;
                if (i3 == 0) {
                    SAAttributeActivity_FBF.this.finish();
                } else {
                    if (i3 != 1) {
                        return;
                    }
                    SAAttributeActivity_FBF.this.saveDataIntoDataBase(1);
                }
            }
        }).setNegativeButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_cancelDialogButtonText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.SAAttributeActivity_FBF.16
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
            }
        });
        AlertDialog show = builder.show();
        if (UtilDeclarations.isTablet(this)) {
            UtilDeclarations.makeTabletDialogTextlarge(show);
        }
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
            return true;
        }
    }

    private boolean isValidData(boolean z) {
        if (this.mEntryArr_Assgnmt == null || this.listAttributes_Assgnmt == null) {
            this.tabHost.setCurrentTab(2);
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
                    if (attributeModel.getControlType().equals("TextBoxND")) {
                        try {
                            Float.parseFloat(this.mEntryArr_Assgnmt.get(i).getText().toString());
                        } catch (Exception unused) {
                            z2 = false;
                        }
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
                    if (attributeModel.getControlType().equals("TextBoxND")) {
                        try {
                            Float.parseFloat(this.mEntryArr_Assgnmt.get(i).getText().toString());
                        } catch (Exception unused2) {
                            z2 = false;
                        }
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
                ((ValidatorInterface) AttributesActivity_FBF.ctx).onValidate(true);
            } catch (Exception e2) {
                PLog.e(TAG, e2);
            }
            Toast.makeText(getApplicationContext(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_validationToast()), 0).show();
            this.tabHost.setCurrentTab(2);
        }
        GetDataFromDB.getInstance();
        if (GetDataFromDB.getLatLondMandatory(Queries.getInstance().getIsFBFLatLongMandatory(this.activityId)) != 1 || (this.tvLatitude.getText().toString().trim().length() > 0 && this.tvLongitude.getText().toString().trim().length() > 0)) {
            return z2;
        }
        this.tvLatitude.setError(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_locationIsMandateError()));
        this.tvLongitude.setError(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_locationIsMandateError()));
        this.scrollView.post(new Runnable() { // from class: com.conceptglobal.pmc.fo.SAAttributeActivity_FBF.18
            @Override // java.lang.Runnable
            public void run() {
                SAAttributeActivity_FBF.this.scrollView.scrollTo(0, SAAttributeActivity_FBF.this.tvLatitude.getBottom());
            }
        });
        return false;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
    }

    @Override // com.conceptglobal.pmc.interfaces.OnCompleteListener
    public void onComplete(String str, Exception exc) {
        if (str.equalsIgnoreCase("1")) {
            this.tabHost.setCurrentTab(2);
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

    private void showDiscardAlert() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.context);
        builder.setMessage(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_discardSelfAssignConfirmDialog()));
        builder.setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.SAAttributeActivity_FBF.23
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                SAAttributeActivity_FBF.this.showRemarkSelectionAlert();
            }
        });
        builder.setNegativeButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_cancelDialogButtonText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.SAAttributeActivity_FBF.24
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
        builder.setTitle(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_remarksForNotDoneSelfAssign()));
        builder.setSingleChoiceItems(this.remarkNames, -1, new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.SAAttributeActivity_FBF.25
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                SAAttributeActivity_FBF.this.d_remarks.dismiss();
                try {
                    SAAttributeActivity_FBF.this.prepareAttributeData();
                    if (SAAttributeActivity_FBF.this.listAttributes_Assgnmt.size() != 0) {
                        GetDataFromDB.getInstance().executeRawQueryInDB(Queries.getInstance().deleteFarmerDetailsActivitySelfAssign(SAAttributeActivity_FBF.this.farmerID, SAAttributeActivity_FBF.this.activityId, SAAttributeActivity_FBF.this.transId));
                    }
                    new Thread(new Runnable() { // from class: com.conceptglobal.pmc.fo.SAAttributeActivity_FBF.25.1
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                InsertDataIntoDB.insertFarmerActivityDetailsUpdate(SAAttributeActivity_FBF.this.listAttributes_Assgnmt, SAAttributeActivity_FBF.this.farmerID, SAAttributeActivity_FBF.this.activityId, 0, 1, 0, SAAttributeActivity_FBF.this.segmentId, SAAttributeActivity_FBF.this.transId, 1, 0, null, 0);
                            } catch (Exception e) {
                                PLog.e(SAAttributeActivity_FBF.TAG, e);
                            }
                        }
                    }).start();
                    GetDataFromDB.getInstance().executeRawQueryInDB(Queries.getInstance().updateNotDoneForSelfActivities(SAAttributeActivity_FBF.this.activityId, SAAttributeActivity_FBF.this.farmerID, SAAttributeActivity_FBF.this.transId, SAAttributeActivity_FBF.this.remarkNames[i2]));
                    if (SAAttributeActivity_FBF.this.getDataFromDB.getIFContains(Queries.getInstance().updateDraftForAssignmentvisit(SAAttributeActivity_FBF.this.transId)) != 0) {
                        InsertDataIntoDB.UpdateAssignmentVisistDetails(0, SAAttributeActivity_FBF.this.farmerID, SAAttributeActivity_FBF.this.etDiscription.getText().toString(), SAAttributeActivity_FBF.this.tvLatitude.getText().toString(), SAAttributeActivity_FBF.this.tvLongitude.getText().toString(), 0, SAAttributeActivity_FBF.this.transId, "false", SAAttributeActivity_FBF.this.locationProvider, SAAttributeActivity_FBF.this.GPSTimeStamp, "", "");
                    } else {
                        InsertDataIntoDB.insertAssignmentVisistDetails(0, SAAttributeActivity_FBF.this.farmerID, SAAttributeActivity_FBF.this.etDiscription.getText().toString(), SAAttributeActivity_FBF.this.tvLatitude.getText().toString(), SAAttributeActivity_FBF.this.tvLongitude.getText().toString(), 0, SAAttributeActivity_FBF.this.transId, "false", SAAttributeActivity_FBF.this.locationProvider, SAAttributeActivity_FBF.this.GPSTimeStamp, "", "");
                    }
                    for (int i3 = 0; i3 < SAAttributeActivity_FBF.this.images.size(); i3++) {
                        InsertDataIntoDB.UpdateImageServerStatus(((ImageDetails) SAAttributeActivity_FBF.this.images.get(i3)).getImageId());
                    }
                    SAAttributeActivity_FBF.this.setResult(-1, new Intent());
                    try {
                        ((OnCompleteListener) SAAttributeActivity_FBF.this.getParent()).onComplete("1", null);
                    } catch (Exception e) {
                        e.printStackTrace();
                        PLog.e(SAAttributeActivity_FBF.TAG, e);
                    }
                } catch (Exception e2) {
                    PLog.e("FarmerFormActivity", e2);
                }
                SAAttributeActivity_FBF.this.finish();
            }
        });
        AlertDialog create = builder.create();
        this.d_remarks = create;
        create.show();
        this.d_remarks.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.conceptglobal.pmc.fo.SAAttributeActivity_FBF.26
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                SAAttributeActivity_FBF.this.d_remarks.dismiss();
            }
        });
    }

    @Override // com.conceptglobal.pmc.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        setAdapter();
        setVideoThumbnail();
    }

    @Override // com.conceptglobal.pmc.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        LocalBroadcastManager.getInstance(this).unregisterReceiver(this.message);
        LocalBroadcastManager.getInstance(this).unregisterReceiver(this.videoComressReceiver);
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
            if (this.getDataFromDB.getLookupValue(Queries.getInstance().getFBFImageIsMandatory(this.activityId)) != 1 || this.images.size() != 0) {
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
            if (this.getDataFromDB.getLookupValue(Queries.getInstance().getFBFVideoIsMandatory(this.activityId)) != 1 || this.videos.size() != 0) {
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
        Intent intent = new Intent(this, (Class<?>) VideoCapureActivityCopy2.class);
        intent.putExtra("activityId", this.activityId);
        intent.putExtra("assignmentId", 0);
        try {
            intent.putExtra("setReferenceType", GetDataFromDB.getInstance().getLookupValue(Queries.getInstance().getItemValue("FeedBack")));
        } catch (Exception e) {
            e.printStackTrace();
            PLog.e(TAG, e);
        }
        intent.putExtra("setReferenceID", String.valueOf(this.transId));
        intent.putExtra("attributeId", 0);
        intent.putExtra("farmerId", this.farmerID);
        intent.putExtra("imageId", j);
        intent.putExtra("FromFeedBack", true);
        startActivity(intent);
    }

    private void fetchLocation() {
        if (!this.mLocationUtils.checkPermissions(this)) {
            this.mLocationUtils.requestPermissions(this);
            return;
        }
        try {
            new FetchLocation(this, true, new OnLocationFoundListener() { // from class: com.conceptglobal.pmc.fo.SAAttributeActivity_FBF.27
                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onTimerTimeOut() {
                }

                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onLocationFound(LocationInfo locationInfo) {
                    SAAttributeActivity_FBF.this.tvLatitude.setText(locationInfo.getLatitude() + "");
                    SAAttributeActivity_FBF.this.tvLongitude.setText(locationInfo.getLongitude() + "");
                }

                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onLocationFound(Location location) {
                    SAAttributeActivity_FBF.this.GPSTimeStamp = UtilDeclarations.getLongToDate(location.getTime());
                }
            }, TAG);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void showErrorAlertDialog(String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setMessage(Html.fromHtml("<font color='#ff0000'>" + str + "</font>")).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.SAAttributeActivity_FBF.28
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
                SAAttributeActivity_FBF.this.finish();
            }
        });
        AlertDialog show = builder.show();
        if (UtilDeclarations.isTablet(this)) {
            UtilDeclarations.makeTabletDialogTextlarge(show);
        }
    }

    private void showAlert(String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setMessage(str).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.SAAttributeActivity_FBF.29
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

    private void setBottomViewPadding(TabHost tabHost) {
        ViewCompat.setOnApplyWindowInsetsListener(findViewById(R.id.tabhost), new OnApplyWindowInsetsListener() { // from class: com.conceptglobal.pmc.fo.SAAttributeActivity_FBF$$ExternalSyntheticLambda0
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                return SAAttributeActivity_FBF.lambda$setBottomViewPadding$0(view, windowInsetsCompat);
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

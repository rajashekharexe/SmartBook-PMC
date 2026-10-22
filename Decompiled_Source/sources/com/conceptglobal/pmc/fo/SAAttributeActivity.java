package com.conceptglobal.pmc.fo;

import android.app.AlertDialog;
import android.app.DatePickerDialog;
import android.app.Dialog;
import android.app.LocalActivityManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
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
import com.conceptglobal.pmc.BaseActivity;
import com.conceptglobal.pmc.MainHomePageActivity;
import com.conceptglobal.pmc.adapter.ActivityDisplayAdapter;
import com.conceptglobal.pmc.adapter.CropDisplayAdapter;
import com.conceptglobal.pmc.adapter.GridImageAdapter;
import com.conceptglobal.pmc.adapter.GridVideoAdapter;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.common.ListPopupOne;
import com.conceptglobal.pmc.common.NeoCampaignConstants;
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
import com.conceptglobal.pmc.model.AudianceFarmer;
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
import com.evernote.android.job.JobStorage;
import de.keyboardsurfer.android.widget.crouton.Crouton;
import de.keyboardsurfer.android.widget.crouton.Style;
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
import org.apache.commons.io.IOUtils;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class SAAttributeActivity extends BaseActivity implements View.OnClickListener, OnCompleteListener, AttributeEventListener, CompressListener {
    private static final int DATEDIALOGID = 0;
    private static final int DATEDIALOGID_YEARLESS = 1;
    private static final int GETCUSTOMER = 3;
    private static final int GETNEWACTIVITY = 2;
    private static final int GETRETAILERLIST = 1;
    private static final int INITIALCROPID = -1;
    private static final String SA_TAG = "SelfAssignment";
    private static final String TAG = "SAAttributeActivity";
    public static String campaignID = "";
    public static boolean isRestoredActivity = false;
    private static int updateCount = 1;
    private int activityId;
    private String activityName;
    private ActivityDisplayAdapter adapterActivities;
    private CropDisplayAdapter adapterCrops;
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
    private Context context;
    private TextView custDetailsText;
    protected Dialog d_remarks;
    StringBuilder dynamicColumnnames;
    private EditText etDiscription;
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
    private ArrayList<String> imglstConfigId;
    private Intent intentGetData;
    private boolean isDisplayOthers;
    private boolean isDraftSave;
    private boolean isImageDeleted;
    private int isSelfAssign;
    private List<LastVisitModel> lastVisitData;
    private LinkedHashMap<String, List<LastVisitModel>> lastVisitModelHash;
    private List<ActivityModel> listActivities;
    private List<AttributeModel> listAttributes_Assgnmt;
    private List<FarmerCropMapping> listFarmerCrops;
    private LinearLayout llLastvisitBody;
    private LinearLayout llactAddress;
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
    private TimeDetails timeDetails;
    private long transId;
    TextView tvAlert;
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
    private String tag = "MBAActivity";
    private int dateDialogID = 0;
    private String farmerID = "";
    private ArrayList<Integer> textChangeListenerIds = new ArrayList<>();
    boolean isDistributerEligibletoUpdate = true;
    private String selCustomerId = "";
    HashMap<String, AttributeModel> campaignFarmersData = new HashMap<>();
    private boolean isTableViewActivity = false;
    private ArrayList<String> sartiMoilesList = new ArrayList<>();
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
    private String campaignStatus = "";
    private String total_CampaignIDs = "";
    private ArrayList<String> campaignIDList = new ArrayList<>();
    View.OnClickListener datesListener = new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.SAAttributeActivity.4
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SAAttributeActivity.this.datePos = view.getId();
            SAAttributeActivity.this.txt = (TextView) view;
            SAAttributeActivity.this.showDialog(0);
        }
    };
    View.OnClickListener datesListenerYearless = new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.SAAttributeActivity.5
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SAAttributeActivity.this.datePos = view.getId();
            SAAttributeActivity.this.showDialog(1);
        }
    };
    View.OnClickListener operationListener = new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.SAAttributeActivity.7
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ListPopupOne listPopupOne = new ListPopupOne(SAAttributeActivity.this, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectOneDropDownTitle()), ((DynamicFields) SAAttributeActivity.this.attributesArry.get(view.getId())).getDbquery(), view, (TextView) SAAttributeActivity.this.mEntryArrIds.get(view.getId()));
            listPopupOne.getWindow().getAttributes().windowAnimations = R.style.PauseDialogAnimation;
            listPopupOne.show();
            listPopupOne.getWindow().setSoftInputMode(3);
        }
    };
    private final TextWatcher tvLatitudeListener = new TextWatcher() { // from class: com.conceptglobal.pmc.fo.SAAttributeActivity.11
        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            if (editable.toString().length() > 0) {
                SAAttributeActivity.this.tvLatitude.setError(null);
                SAAttributeActivity.this.tvLongitude.setError(null);
            }
        }
    };
    private DatePickerDialog.OnDateSetListener mDateSetListener = new DatePickerDialog.OnDateSetListener() { // from class: com.conceptglobal.pmc.fo.SAAttributeActivity.18
        @Override // android.app.DatePickerDialog.OnDateSetListener
        public void onDateSet(DatePicker datePicker, int i, int i2, int i3) {
            SAAttributeActivity.this.mYear = i;
            SAAttributeActivity.this.mMonth = i2;
            SAAttributeActivity.this.mDay = i3;
            try {
                if (new SimpleDateFormat("yyyy-MM-dd").parse(i + "-" + (i2 + 1) + "-" + i3).compareTo(new Date()) < 0) {
                    if (SAAttributeActivity.this.dateDialogID == 0) {
                        if (SAAttributeActivity.this.mMonth + 1 < 10) {
                            int unused = SAAttributeActivity.this.mMonth;
                        } else {
                            int unused2 = SAAttributeActivity.this.mMonth;
                        }
                        if (SAAttributeActivity.this.mDay < 10) {
                            int unused3 = SAAttributeActivity.this.mDay;
                            return;
                        } else {
                            int unused4 = SAAttributeActivity.this.mDay;
                            return;
                        }
                    }
                    return;
                }
                Toast.makeText(SAAttributeActivity.this.getApplicationContext(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectProperDate()), 1).show();
            } catch (Exception e) {
                PLog.e(SAAttributeActivity.TAG, e);
            }
        }
    };
    private DatePickerDialog.OnDateSetListener mDateSetListener_Yearless = new DatePickerDialog.OnDateSetListener() { // from class: com.conceptglobal.pmc.fo.SAAttributeActivity.19
        @Override // android.app.DatePickerDialog.OnDateSetListener
        public void onDateSet(DatePicker datePicker, int i, int i2, int i3) {
            SAAttributeActivity.this.mYear = i;
            SAAttributeActivity.this.mMonth = i2;
            SAAttributeActivity.this.mDay = i3;
            try {
                SAAttributeActivity.this.updateDisplay_yearless();
            } catch (Exception e) {
                PLog.e(SAAttributeActivity.this.tag, e);
            }
        }
    };
    private BroadcastReceiver videoComressReceiver = new BroadcastReceiver() { // from class: com.conceptglobal.pmc.fo.SAAttributeActivity.20
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            SAAttributeActivity.this.setAdapter();
        }
    };
    BroadcastReceiver camaigndata_receiver = new BroadcastReceiver() { // from class: com.conceptglobal.pmc.fo.SAAttributeActivity.21
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            try {
                if (intent.getExtras().containsKey("MobileNumber")) {
                    String string = intent.getExtras().getString("MobileNumber");
                    if (!SAAttributeActivity.this.campaignFarmersData.containsKey(string)) {
                        AttributeModel attributeModel = new AttributeModel();
                        attributeModel.setAttributeId(543);
                        attributeModel.setAttributeValue(string);
                        int size = SAAttributeActivity.this.campaignFarmersData.size() + 1;
                        attributeModel.setSequenceId("880." + size);
                        attributeModel.setChildLevelId("880." + size + ".543");
                        SAAttributeActivity.this.campaignFarmersData.put(string, attributeModel);
                    }
                }
                if (intent.getExtras().containsKey(NeoCampaignConstants.UPDATE_CAMPAIGN_ID)) {
                    SAAttributeActivity.campaignID = intent.getExtras().getString(NeoCampaignConstants.UPDATE_CAMPAIGN_ID);
                    if (!SAAttributeActivity.this.campaignIDList.contains(SAAttributeActivity.campaignID)) {
                        SAAttributeActivity.this.campaignIDList.add(SAAttributeActivity.campaignID);
                    }
                }
                if (intent.getExtras().containsKey(NeoCampaignConstants.CAMPAIGN_COMPLETED)) {
                    if (!SAAttributeActivity.this.campaignIDList.contains(SAAttributeActivity.campaignID)) {
                        SAAttributeActivity.this.campaignIDList.add(SAAttributeActivity.campaignID);
                    }
                    SAAttributeActivity.campaignID = "";
                    SAAttributeActivity.this.campaignStatus = intent.getExtras().getString(NeoCampaignConstants.CAMPAIGN_COMPLETED);
                    LocalBroadcastManager.getInstance(SAAttributeActivity.this.getApplicationContext()).sendBroadcast(new Intent(NeoCampaignConstants.CAMPAIGN_COMPLETED));
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
                                    if ((obj instanceof Boolean) && ((Boolean) obj).booleanValue() && !SAAttributeActivity.this.sartiMoilesList.contains(obj2)) {
                                        SAAttributeActivity.this.sartiMoilesList.add((String) obj2);
                                    }
                                }
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        }
                        if (jSONObject != null && jSONObject.has("mobilenumber")) {
                            Object obj3 = jSONObject.get("mobilenumber");
                            if ((obj3 instanceof String) && !SAAttributeActivity.this.campaignFarmersData.containsKey(obj3)) {
                                AttributeModel attributeModel2 = new AttributeModel();
                                attributeModel2.setAttributeId(543);
                                attributeModel2.setAttributeValue((String) obj3);
                                int size2 = SAAttributeActivity.this.campaignFarmersData.size() + 1;
                                attributeModel2.setSequenceId("880." + size2);
                                attributeModel2.setChildLevelId("880." + size2 + ".543");
                                SAAttributeActivity.this.campaignFarmersData.put((String) obj3, attributeModel2);
                            }
                        }
                    }
                }
                Intent intent2 = new Intent("CAMPAIGNS_FARMERS_LIST");
                intent2.putExtra("Campaigns_Farmers_Count", SAAttributeActivity.this.campaignFarmersData.size());
                intent2.putExtra("Campaigns_SartiFarmers_Count", SAAttributeActivity.this.sartiMoilesList.size());
                LocalBroadcastManager.getInstance(SAAttributeActivity.this.getApplicationContext()).sendBroadcast(intent2);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    };
    private BroadcastReceiver message = new BroadcastReceiver() { // from class: com.conceptglobal.pmc.fo.SAAttributeActivity.22
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String stringExtra = intent.getStringExtra("deletedImage");
            SAAttributeActivity.this.imagelist.remove(stringExtra);
            SAAttributeActivity.this.isImageDeleted = true;
            try {
                File file = new File(stringExtra);
                if (file.exists()) {
                    file.delete();
                }
            } catch (Exception e) {
                e.printStackTrace();
                PLog.e(SAAttributeActivity.TAG, e);
            }
        }
    };
    private BroadcastReceiver datasaveReceiver = new BroadcastReceiver() { // from class: com.conceptglobal.pmc.fo.SAAttributeActivity.27
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            SAAttributeActivity.this.isDisplayOthers = intent.getBooleanExtra("IsDisplayOthersTab", false);
            if (SAAttributeActivity.this.isDisplayOthers) {
                SAAttributeActivity.this.setTab(2);
            } else {
                SAAttributeActivity.this.setTab(1);
            }
        }
    };

    private void setVideoThumbnail() {
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
    }

    /* JADX WARN: Can't wrap try/catch for region: R(18:0|1|(3:3|(1:5)|6)|7|(1:11)|12|(1:16)|17|18|19|(7:24|25|26|27|28|29|30)|35|25|26|27|28|29|30) */
    @Override // com.conceptglobal.pmc.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onCreate(android.os.Bundle r10) {
        /*
            Method dump skipped, instructions count: 351
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.fo.SAAttributeActivity.onCreate(android.os.Bundle):void");
    }

    private void setBottomViewPadding(TabHost tabHost) {
        ViewCompat.setOnApplyWindowInsetsListener(findViewById(R.id.tabhost), new OnApplyWindowInsetsListener() { // from class: com.conceptglobal.pmc.fo.SAAttributeActivity$$ExternalSyntheticLambda0
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                return SAAttributeActivity.lambda$setBottomViewPadding$0(view, windowInsetsCompat);
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
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.fo.SAAttributeActivity.addOperationsDynamicLayout(java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, int, int, int, int, int, android.widget.LinearLayout, int):void");
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
        DatePickerDialog datePickerDialog = new DatePickerDialog(this, this.mDateSetListener_Yearless, this.mYear, this.mMonth, this.mDay) { // from class: com.conceptglobal.pmc.fo.SAAttributeActivity.6
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
        this.context = this;
        this.intentGetData = getIntent();
        this.queries = Queries.getInstance();
        this.getDataFromDB = GetDataFromDB.getInstance();
        TabHost tabHost = (TabHost) findViewById(R.id.tabhost);
        this.tabHost = tabHost;
        this.tvFarmer = (TextView) tabHost.findViewById(R.id.tv_farmer_farmer_other_details);
        this.btnDealer = (Button) this.tabHost.findViewById(R.id.tv_dealer_farmer_other_details);
        this.btnDiscription = (Button) this.tabHost.findViewById(R.id.tv_discription_farmer_other_details);
        this.etDiscription = (EditText) this.tabHost.findViewById(R.id.et_discription_farmer_other_details);
        this.tvIsBayerFarmer = (TextView) this.tabHost.findViewById(R.id.tv_bayerfarmer_other_details);
        this.tvRetailers = (TextView) this.tabHost.findViewById(R.id.tv_retailers_farmer_other_details);
        this.lladdActivities = (LinearLayout) this.tabHost.findViewById(R.id.ll_add_another_activity);
        this.btnSave = (Button) this.tabHost.findViewById(R.id.btn_save_farmer_other_details);
        Button button = (Button) this.tabHost.findViewById(R.id.btn_inactive_farmer_other_details);
        this.btnInactive = button;
        button.setVisibility(8);
        this.btnVisit = (Button) this.tabHost.findViewById(R.id.btn_visit_farmer_other_details);
        this.custDetailsText = (TextView) this.tabHost.findViewById(R.id.txtSelectCustomer);
        this.btnCustomerDetails = (Button) this.tabHost.findViewById(R.id.btnSelectCustomer);
        TextView textView = (TextView) this.tabHost.findViewById(R.id.txtSelectTerritory);
        this.territoryDetailsText = textView;
        textView.setVisibility(0);
        Button button2 = (Button) this.tabHost.findViewById(R.id.btnSelectTerritory);
        this.btnTerritoryDetails = button2;
        button2.setVisibility(0);
        this.gridView = (GridView) this.tabHost.findViewById(R.id.grid_view_farmer);
        this.lvLastVisitData = (ListView) findViewById(R.id.lv_list_alert);
        this.slLastVistdata = (ScrollView) findViewById(R.id.svLastVisitData);
        this.llLastvisitBody = (LinearLayout) findViewById(R.id.llLastvisitBody);
        this.btnDealer.setVisibility(8);
        this.tvRetailers.setVisibility(8);
        this.btnLatLng = (ImageView) this.tabHost.findViewById(R.id.btn_get_latlong_farmer_personal_detailss);
        this.tvLatitude = (TextView) this.tabHost.findViewById(R.id.tv_latitude_personal_detailss);
        this.tvLongitude = (TextView) this.tabHost.findViewById(R.id.tv_longitude_personal_detailss);
        this.tvpictures = (TextView) this.tabHost.findViewById(R.id.pictures);
        this.tvVideos = (TextView) this.tabHost.findViewById(R.id.videos);
        this.tv_address = (TextView) this.tabHost.findViewById(R.id.tv_address);
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.llactAddress);
        this.llactAddress = linearLayout;
        linearLayout.setVisibility(0);
        this.tvLatitude.addTextChangedListener(this.tvLatitudeListener);
        this.mVideoGridView = (GridView) this.tabHost.findViewById(R.id.grid_view_farmer_copy2);
        this.imagelist = new ArrayList<>();
        this.imglstConfigId = new ArrayList<>();
        this.images = new ArrayList();
        this.videos = new ArrayList();
        this.scrollView = (ScrollView) findViewById(R.id.scrollView1);
        this.webView = (WebView) findViewById(R.id.webView);
        this.tvAlert = (TextView) this.tabHost.findViewById(R.id.tv_list_alert);
        Button button3 = (Button) this.tabHost.findViewById(R.id.btnViewHistory);
        this.btnViewHistory = button3;
        button3.setOnClickListener(this);
        this.btnViewHistory.setText("Show History");
        this.fullDetailsBtn = (TextView) this.tabHost.findViewById(R.id.textViewFullDetails);
        this.mAddDynamicLinear = (LinearLayout) findViewById(R.id.operations_dynamic_LL);
        this.dynamicColumnnames = new StringBuilder();
        this.mentryValues = new ArrayList();
        campaignID = "";
    }

    private void settingTabs() {
        LocalActivityManager localActivityManager = new LocalActivityManager(this, false);
        localActivityManager.dispatchCreate(null);
        this.tabHost.setup(localActivityManager);
        int i = this.segmentId;
        if (i != 4 && i != 10 && i != 18) {
            addTab(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_lastVisitTabName()), R.drawable.ic_action_last_vist, getResources().getString(R.string.pmc_tag5));
            addTab(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_customerDetailsTabName()), R.drawable.ic_action_person_wight, getResources().getString(R.string.pmc_tag1));
        }
        addTab(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_activityLastVisitText()), R.drawable.ic_activity_wight, getResources().getString(R.string.pmc_tag3));
        addTab(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_finishTabSelfAssignText()), R.drawable.ic_others_wight, getResources().getString(R.string.pmc_tag4));
    }

    private void addTab(String str, int i, String str2) {
        Intent intent;
        Exception e;
        TabHost.TabSpec newTabSpec = this.tabHost.newTabSpec(str);
        View inflate = LayoutInflater.from(this).inflate(R.layout.tab_indicator, (ViewGroup) this.tabHost.getTabWidget(), false);
        ((TextView) inflate.findViewById(R.id.title_tab_indicator)).setText(str);
        ((ImageView) inflate.findViewById(R.id.icon_tab_indicator)).setImageResource(i);
        newTabSpec.setIndicator(inflate);
        if (str2.equalsIgnoreCase(getResources().getString(R.string.pmc_tag3))) {
            if (this.isMIActivity) {
                Intent intent2 = new Intent(this.context, (Class<?>) MarketAttributesActivity.class);
                intent2.putExtra(ConstantDeclarations.getInstance().getKEYFARMERID(), this.farmerID);
                intent2.putExtra(ConstantDeclarations.getInstance().getKeyIsMba(), 0);
                intent2.putExtra("SEGMENTID", this.segmentId);
                intent2.putExtra("ISSELFASSIGN", 1);
                intent2.putExtra("ACTIVITYNAME", this.activityName);
                intent2.putExtra("TRANSID", this.transId);
                intent2.putExtra(ConstantDeclarations.getInstance().getKEYACTIVITYID(), this.activityId);
                intent2.putExtra(ConstantDeclarations.getInstance().getKEYISPLANNED(), 0);
                intent2.addFlags(131072).addFlags(8192);
                newTabSpec.setContent(intent2);
            } else {
                Intent intent3 = new Intent(this.context, (Class<?>) AttributesActivity.class);
                try {
                } catch (Exception e2) {
                    intent = intent3;
                    e = e2;
                }
                if (this.getDataFromDB.getSingleValue(Queries.getInstance().getActivityDisplayType(this.activityId)).equals("2")) {
                    intent = new Intent(this.context, (Class<?>) AttributesTableViewActivity.class);
                    try {
                        this.isTableViewActivity = true;
                    } catch (Exception e3) {
                        e = e3;
                        e.printStackTrace();
                        intent3 = intent;
                        intent3.putExtra(ConstantDeclarations.getInstance().getKEYFARMERID(), this.farmerID);
                        intent3.putExtra(ConstantDeclarations.getInstance().getKeyIsMba(), 0);
                        intent3.putExtra("SEGMENTID", this.segmentId);
                        intent3.putExtra("ISSELFASSIGN", 1);
                        intent3.putExtra("ACTIVITYNAME", this.activityName);
                        intent3.putExtra("TRANSID", this.transId);
                        intent3.putExtra(ConstantDeclarations.getInstance().getKEYACTIVITYID(), this.activityId);
                        intent3.putExtra(ConstantDeclarations.getInstance().getKEYISPLANNED(), 0);
                        newTabSpec.setContent(intent3);
                        this.tabHost.addTab(newTabSpec);
                    }
                    intent3 = intent;
                }
                intent3.putExtra(ConstantDeclarations.getInstance().getKEYFARMERID(), this.farmerID);
                intent3.putExtra(ConstantDeclarations.getInstance().getKeyIsMba(), 0);
                intent3.putExtra("SEGMENTID", this.segmentId);
                intent3.putExtra("ISSELFASSIGN", 1);
                intent3.putExtra("ACTIVITYNAME", this.activityName);
                intent3.putExtra("TRANSID", this.transId);
                intent3.putExtra(ConstantDeclarations.getInstance().getKEYACTIVITYID(), this.activityId);
                intent3.putExtra(ConstantDeclarations.getInstance().getKEYISPLANNED(), 0);
                newTabSpec.setContent(intent3);
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

    private void getData(Bundle bundle) {
        String str;
        this.farmerID = this.intentGetData.getStringExtra(ConstantDeclarations.getInstance().getKEYFARMERID());
        this.intentGetData.getIntExtra(ConstantDeclarations.getInstance().getKEYVILLAGEID(), 0);
        this.isSelfAssign = this.intentGetData.getIntExtra("ISSELFASSIGN", 0);
        this.activityId = this.intentGetData.getIntExtra("ACTIVITYID", 0);
        this.segmentId = this.intentGetData.getIntExtra("SEGMENTID", 0);
        this.activityName = this.intentGetData.getStringExtra("ACTIVITYNAME");
        this.transId = this.intentGetData.getLongExtra("TRANSID", 0L);
        if (ConstantsPMC.getInstance().getIsTrainingORLive() != 2) {
            CustomActionBar.initActionBar(this, this.getDataFromDB.getSegmentName(this.segmentId) + " Details(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
        } else {
            CustomActionBar.initActionBar(this, this.getDataFromDB.getSegmentName(this.segmentId) + " Details(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
        }
        if (this.getDataFromDB.getSegmentType(this.segmentId) == 2) {
            this.btnCustomerDetails.setVisibility(0);
            this.custDetailsText.setVisibility(0);
        } else {
            this.btnCustomerDetails.setVisibility(8);
            this.custDetailsText.setVisibility(8);
        }
        this.visitDetails = this.getDataFromDB.getAssignmentVisitDetail(Queries.getInstance().getAssignmentVisitDetailSelfAssign(this.transId));
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
        try {
            try {
                str = GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getCampaignID(this.transId));
            } catch (Exception e2) {
                e2.printStackTrace();
                str = null;
            }
            if (!TextUtils.isEmpty(str)) {
                ArrayList<String> arrayList = new ArrayList<>(Arrays.asList(str.split(",")));
                this.campaignIDList = arrayList;
                if (arrayList.size() > 0) {
                    ArrayList<String> arrayList2 = this.campaignIDList;
                    campaignID = arrayList2.get(arrayList2.size() - 1);
                }
            }
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        if (bundle != null) {
            try {
                if (bundle.getStringArrayList("edit_text_id_values_2") != null) {
                    isRestoredActivity = true;
                    PLog.e(TAG, "isRestoredActivity");
                }
            } catch (Exception unused) {
            }
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
        this.btnVisit.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_visitCompleteButtonText()));
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
        Calendar calendar = Calendar.getInstance();
        this.mYear = calendar.get(1);
        this.mMonth = calendar.get(2);
        this.mDay = calendar.get(5);
        List<LastVisitModel> list = this.lastVisitData;
        if (list != null && list.size() > 0) {
            this.tabHost.findViewById(R.id.ll_list_alert).setVisibility(8);
            addLastVisitAcitivityAttributes(this.lastVisitData);
        } else {
            this.tvAlert.setText("Please click on “Show History” to view last activity details in Online mode.");
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

    private void setListeners() {
        this.btnSave.setOnClickListener(this);
        this.btnInactive.setOnClickListener(this);
        this.btnVisit.setOnClickListener(this);
        this.tvRetailers.setOnClickListener(this);
        this.btnLatLng.setOnClickListener(this);
        this.fullDetailsBtn.setOnClickListener(this);
        this.custDetailsText.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.SAAttributeActivity.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Intent intent = new Intent(SAAttributeActivity.this.getBaseContext(), (Class<?>) SelfAssignActivity.class);
                intent.putExtra("isFromAssignment", 1);
                intent.putExtra("ACTIVITYID", SAAttributeActivity.this.activityId);
                SAAttributeActivity.this.startActivityForResult(intent, 3);
            }
        });
        this.territoryDetailsText.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.SAAttributeActivity.9
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ListPopupOne listPopupOne = new ListPopupOne(SAAttributeActivity.this, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectText()) + " Territory", " SELECT territoryId,territoryName FROM TerritoryMaster where isActive ='True' or isActive=1 ", view, SAAttributeActivity.this.territoryDetailsText);
                listPopupOne.getWindow().getAttributes().windowAnimations = R.style.PauseDialogAnimation;
                listPopupOne.show();
                listPopupOne.getWindow().setSoftInputMode(3);
            }
        });
        this.tabHost.setOnTabChangedListener(new TabHost.OnTabChangeListener() { // from class: com.conceptglobal.pmc.fo.SAAttributeActivity.10
            @Override // android.widget.TabHost.OnTabChangeListener
            public void onTabChanged(String str) {
                String str2;
                if (!SAAttributeActivity.this.isDisplayOthers || SAAttributeActivity.this.tabHost.getCurrentTab() != 2) {
                    if (SAAttributeActivity.this.segmentId == 4 || SAAttributeActivity.this.segmentId == 10 || SAAttributeActivity.this.segmentId == 18) {
                        if (SAAttributeActivity.this.tabHost.getCurrentTab() == 1) {
                            if (SAAttributeActivity.this.isMIActivity) {
                                MarketAttributesActivity.methodToGetData(SAAttributeActivity.this.context);
                            } else {
                                AttributesActivity.methodToGetData(SAAttributeActivity.this.context);
                            }
                        }
                    } else if (SAAttributeActivity.this.tabHost.getCurrentTab() == 3) {
                        if (SAAttributeActivity.this.isMIActivity) {
                            MarketAttributesActivity.methodToGetData(SAAttributeActivity.this.context);
                        } else {
                            try {
                                str2 = SAAttributeActivity.this.getDataFromDB.getSingleValue(Queries.getInstance().getActivityDisplayType(SAAttributeActivity.this.activityId));
                            } catch (Exception e) {
                                e.printStackTrace();
                                str2 = "";
                            }
                            if (str2 == null || !str2.equals("2")) {
                                AttributesActivity.methodToGetData(SAAttributeActivity.this.context);
                            } else {
                                AttributesTableViewActivity.methodToGetData(SAAttributeActivity.this.context);
                            }
                        }
                    }
                    if (SAAttributeActivity.this.segmentId == 4 || SAAttributeActivity.this.segmentId == 10 || SAAttributeActivity.this.segmentId == 18) {
                        if (SAAttributeActivity.this.tabHost.getCurrentTab() == 1) {
                            SAAttributeActivity.this.miDraft.setVisible(true);
                            return;
                        } else {
                            SAAttributeActivity.this.miDraft.setVisible(false);
                            return;
                        }
                    }
                    if (SAAttributeActivity.this.tabHost.getCurrentTab() == 3) {
                        SAAttributeActivity.this.miDraft.setVisible(true);
                        return;
                    } else {
                        SAAttributeActivity.this.miDraft.setVisible(false);
                        return;
                    }
                }
                SAAttributeActivity.this.setTab(2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void captureImage(long j) {
        PLog.location("Navigation", "Image Capture Click", SA_TAG, UtilDeclarations.getDateTime());
        Intent intent = new Intent(this.context, (Class<?>) PictureReporting.class);
        intent.putExtra("activityId", this.activityId);
        intent.putExtra("assignmentId", 0);
        try {
            intent.putExtra("setReferenceType", GetDataFromDB.getInstance().getLookupValue(Queries.getInstance().getItemValue(SA_TAG)));
        } catch (Exception e) {
            e.printStackTrace();
            PLog.e(TAG, e);
        }
        intent.putExtra("setReferenceID", String.valueOf(this.transId));
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
                pictureReportingData.setImageId(System.currentTimeMillis());
                j = GetDataFromDB.getInstance().getLookupValue(Queries.getInstance().getItemValue(SA_TAG));
            } catch (Exception e) {
                e.printStackTrace();
                PLog.e(TAG, e);
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
            } catch (Exception e2) {
                e2.printStackTrace();
                PLog.e(TAG, e2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAdapter() {
        List<ImageDetails> imageDetailsList = this.getDataFromDB.getImageDetailsList(Queries.getInstance().getImageDetailsQry_Assignment(String.valueOf(this.transId)));
        this.images = imageDetailsList;
        if (imageDetailsList != null && imageDetailsList.size() > 0) {
            this.imageAdapter = new GridImageAdapter(this, this.images, this.imagelist);
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
        int i;
        UtilDeclarations.hideInputKeyboard(this.context);
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
                boolean z = false;
                for (int i2 = 0; i2 < this.mEntryArr_Assgnmt.size(); i2++) {
                    AttributeModel attributeModel = this.listAttributes_Assgnmt.get(i2);
                    try {
                        i = GetDataFromDB.getInstance().getIntValue(Queries.getInstance().getItemValue("EXPREQORNOT"));
                    } catch (Exception e) {
                        e.printStackTrace();
                        i = 0;
                    }
                    if (attributeModel.getAttributeId() == i && this.mEntryArr_Assgnmt.get(i2).getText().toString().equalsIgnoreCase("No")) {
                        z = true;
                    }
                }
                if (z) {
                    showAlertExp(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_expnorelated_dilog()));
                    break;
                } else if (isValidData(true) && saveTableAttributeData(1) && checkCustomerDetails() && checkTerritorydetails() && checkImagesMandatory() && checkVideoMandatory() && checkAllMandatoryImages()) {
                    showAlertCancel(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_confirmVisitCompleteDialogText()), 1);
                    break;
                }
                break;
            case R.id.textViewFullDetails /* 2131297349 */:
                int i3 = this.segmentId;
                if (i3 == 1) {
                    try {
                        String singleValue = GetDataFromDB.getInstance().getSingleValue("select Sanitized from FarmerMaster where RespondentNo= '" + this.farmerID + "'");
                        if (singleValue != null && !singleValue.equals("1")) {
                            Toast.makeText(this, "The Farmer Is Unsanitized, You Can't Edit. ", 1).show();
                            break;
                        }
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                    Intent intent = new Intent(this, (Class<?>) AddFarmer.class);
                    intent.putExtra("SegmentId", this.segmentId);
                    intent.putExtra("farmerId", this.farmerID);
                    intent.putExtra("fromTransaction", 1);
                    intent.putExtra("farmerType", ConstantsPMC.TYPE_FARMER);
                    startActivity(intent);
                    break;
                } else if (i3 == 8) {
                    Intent intent2 = new Intent(this, (Class<?>) AddFarmer.class);
                    intent2.putExtra("SegmentId", this.segmentId);
                    intent2.putExtra("farmerId", this.farmerID);
                    intent2.putExtra("fromTransaction", 1);
                    intent2.putExtra("farmerType", "Planter");
                    startActivity(intent2);
                    break;
                } else if (i3 == 2) {
                    Intent intent3 = new Intent(this, (Class<?>) AddRetailer.class);
                    intent3.putExtra("SegmentId", this.segmentId);
                    intent3.putExtra("farmerId", this.farmerID);
                    intent3.putExtra("fromTransaction", 1);
                    intent3.putExtra("farmerType", ConstantsPMC.TYPE_Retailer);
                    startActivity(intent3);
                    break;
                } else if (i3 == 3) {
                    if (!this.isDistributerEligibletoUpdate) {
                        showAccessDeniedDialog();
                        break;
                    } else {
                        Intent intent4 = new Intent(this, (Class<?>) AddRetailer.class);
                        intent4.putExtra("SegmentId", this.segmentId);
                        intent4.putExtra("farmerId", this.farmerID);
                        intent4.putExtra("fromTransaction", 1);
                        intent4.putExtra("farmerType", ConstantsPMC.TYPE_Distributor);
                        startActivity(intent4);
                        break;
                    }
                }
                break;
            case R.id.tv_retailers_farmer_other_details /* 2131297653 */:
                startActivityForResult(new Intent(this.context, (Class<?>) RetailersDisplayActivity.class).addFlags(131072), 1);
                break;
        }
    }

    private void showNoInternetDialog(String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setMessage(str).setCancelable(false).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.SAAttributeActivity.12
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
            if (!AttributesActivity.isCapaignCompleatedForDraftActivity && (campaignID.length() > 0 || (this.campaignFarmersData.size() > 0 && !this.campaignStatus.equalsIgnoreCase("Completed")))) {
                showAlert("Farmer Attendance Campaign is in progress. First complete the campaign before save this activity in draft.");
                return;
            }
            prepareAttributeData();
            saveTableAttributeData(2);
            this.isDraftSave = true;
            if (this.isTableViewActivity) {
                this.timeDetails = AttributesTableViewActivity.methodToGetTimeerData(this.context, false);
            } else {
                this.timeDetails = AttributesActivity.methodToGetTimeerData(this.context, false);
            }
            try {
                try {
                    if (this.listAttributes_Assgnmt.size() != 0) {
                        GetDataFromDB.getInstance().executeRawQueryInDB(Queries.getInstance().deleteFarmerDetailsActivitySelfAssign(this.farmerID, this.activityId, this.transId));
                    }
                    InsertDataIntoDB.insertFarmerActivityDetailsUpdate(this.listAttributes_Assgnmt, this.farmerID, this.activityId, 0, 0, 0, this.segmentId, this.transId, 0, 0, null, 0);
                } catch (Exception e2) {
                    PLog.e("FarmerFormActivity", e2);
                }
            } catch (Exception e3) {
                PLog.e("FarmerFormActivity", e3);
            }
            String obj = this.territoryDetailsText.getTag(R.string.ENTRYID_SET) != null ? this.territoryDetailsText.getTag(R.string.ENTRYID_SET).toString() : "0";
            if ((!this.selCustomerId.equalsIgnoreCase("") && this.selSegmentID != 0) || !obj.equals("0")) {
                try {
                    InsertDataIntoDB.UpdateAssignmentActivitiesCustomerDetails(this.selCustomerId, this.selSegmentID, 0, this.transId, obj);
                } catch (Exception e4) {
                    PLog.e(TAG, e4);
                }
            }
            for (int i3 = 0; i3 < this.images.size(); i3++) {
                InsertDataIntoDB.UpdateImageServerStatusVisitDone(this.images.get(i3).getImageId());
            }
            for (i2 = 0; i2 < this.videos.size(); i2++) {
                InsertDataIntoDB.UpdateVideoServerStatus(this.videos.get(i2).getImageId());
            }
            try {
                if (this.campaignIDList.size() > 0) {
                    this.total_CampaignIDs = FarmerFormActivity$$ExternalSyntheticBackport0.m(",", this.campaignIDList);
                }
            } catch (Exception e5) {
                e5.printStackTrace();
            }
            GetDataFromDB.getInstance().executeRawQueryInDB(Queries.getInstance().updateDraftForSelfActivities(this.activityId, this.farmerID, this.transId, 2));
            if (this.getDataFromDB.getIFContains(Queries.getInstance().updateDraftForAssignmentvisit(this.transId)) != 0) {
                InsertDataIntoDB.UpdateAssignmentVisistDetails(0, this.farmerID, this.etDiscription.getText().toString(), this.tvLatitude.getText().toString(), this.tvLongitude.getText().toString(), 0, this.transId, "0", this.locationProvider, this.GPSTimeStamp, this.timeDetails.getMobileStartTime(), this.timeDetails.getMobileEndTime(), this.timeDetails.getGPSStartTime(), this.timeDetails.getGPSEndTime(), this.total_CampaignIDs, this.tv_address.getText().toString());
            } else {
                InsertDataIntoDB.insertAssignmentVisistDetails(0, this.farmerID, this.etDiscription.getText().toString(), this.tvLatitude.getText().toString(), this.tvLongitude.getText().toString(), 0, this.transId, "0", this.locationProvider, this.GPSTimeStamp, this.total_CampaignIDs, this.tv_address.getText().toString());
            }
            try {
                String updateLastVisitedDate = Queries.getInstance().getUpdateLastVisitedDate(this.segmentId, this.farmerID, UtilDeclarations.getDateTime());
                if (!TextUtils.isEmpty(updateLastVisitedDate)) {
                    GetDataFromDB.getInstance().executeRawQueryInDB(updateLastVisitedDate);
                }
            } catch (Exception unused) {
            }
            finish();
            return;
        }
        try {
            int intValue = GetDataFromDB.getInstance().getIntValue(Queries.getInstance().getIsCampaignRequired());
            if (GetDataFromDB.getInstance().getIntValue(Queries.getInstance().getCampaignConfiguration(this.activityId)) == 1 && intValue == 1 && this.campaignFarmersData.size() == 0 && !AttributesActivity.isCapaignCompleatedForDraftActivity) {
                showAlert("Farmer Attendance Campaign is mandatory to complete the activity.");
                return;
            }
        } catch (Exception e6) {
            e6.printStackTrace();
        }
        if ((campaignID.length() > 0 || (this.campaignFarmersData.size() > 0 && !this.campaignStatus.equalsIgnoreCase("Completed"))) && !AttributesActivity.isCapaignCompleatedForDraftActivity) {
            showAlert("Farmer Attendance Campaign is in progress. First complete the campaign before finishing this activity.");
            return;
        }
        prepareAttributeData();
        if (this.isTableViewActivity) {
            this.timeDetails = AttributesTableViewActivity.methodToGetTimeerData(this.context, false);
        } else {
            this.timeDetails = AttributesActivity.methodToGetTimeerData(this.context, false);
        }
        try {
            if (!this.isTableViewActivity) {
                for (int i4 = 0; i4 < this.listAttributes_Assgnmt.size(); i4++) {
                    AttributeModel attributeModel = this.listAttributes_Assgnmt.get(i4);
                    if (attributeModel.getIsMandatory() == 1 && !AttributesActivity.visibiltyGoneIds.contains(Integer.valueOf(attributeModel.getAttributeId())) && TextUtils.isEmpty(attributeModel.getAttributeValue().trim())) {
                        PLog.e("SAattributesActivity", "mandatory value empty " + attributeModel.getAttributeValue() + "  --  " + attributeModel.getAttributeId());
                        StringBuilder sb = new StringBuilder();
                        sb.append("mandatory value empty ");
                        sb.append(this.transId);
                        sb.append("");
                        PLog.e("SAattributesActivity", sb.toString());
                        try {
                            PLog.e("SAattributesActivity", "mandatory value empty " + this.mEntryArr.get(i4).getText().toString());
                            PLog.e("SAattributesActivity", "mandatory value empty " + this.mEntryArrIds.get(i4).getText().toString());
                        } catch (Exception unused2) {
                        }
                        for (int i5 = 0; i5 < this.listAttributes_Assgnmt.size(); i5++) {
                            if (this.listAttributes_Assgnmt.get(i5).getControlType().equalsIgnoreCase("Multiselect Dropdown")) {
                                showErrorAlertDialog("Something went wrong please perform activity again.");
                                PLog.e("SAattributesActivity", "mandatory value empty dropdown " + attributeModel.getAttributeValue() + "  --  " + attributeModel.getAttributeId());
                                return;
                            }
                        }
                        if (attributeModel.getControlType().equalsIgnoreCase("Dropdown")) {
                            AttributesActivity.setFieldDataEmpty(i4, true);
                            showAlert("Please reselect " + attributeModel.getAttributeName() + " again");
                            PLog.e("SAattributesActivity", "mandatory value empty dropdown " + attributeModel.getAttributeValue() + "  --  " + attributeModel.getAttributeId());
                            return;
                        }
                        AttributesActivity.setFieldDataEmpty(i4, false);
                        showAlert("Please enter  " + attributeModel.getAttributeName());
                        PLog.e("SAattributesActivity", "mandatory value empty entry field " + attributeModel.getAttributeValue() + "  --  " + attributeModel.getAttributeId());
                        return;
                    }
                }
            }
            try {
                if (this.campaignIDList.size() > 0) {
                    this.total_CampaignIDs = FarmerFormActivity$$ExternalSyntheticBackport0.m(",", this.campaignIDList);
                }
            } catch (Exception e7) {
                e7.printStackTrace();
            }
            if (this.listAttributes_Assgnmt.size() != 0) {
                GetDataFromDB.getInstance().executeRawQueryInDB(Queries.getInstance().deleteFarmerDetailsActivitySelfAssign(this.farmerID, this.activityId, this.transId));
            }
            try {
                InsertDataIntoDB.insertFarmerActivityDetailsUpdate(this.listAttributes_Assgnmt, this.farmerID, this.activityId, 0, 1, 0, this.segmentId, this.transId, 1, 0, null, 0);
                if (this.campaignFarmersData.size() > 0) {
                    InsertDataIntoDB.insertFarmerActivityDetailsWithSequenceId(new ArrayList(this.campaignFarmersData.values()), this.farmerID, this.activityId, 0, 1, 0, 1, this.segmentId, this.transId, 0);
                }
            } catch (Exception e8) {
                PLog.e(TAG, e8);
            }
            if (this.getDataFromDB.getIFContains(Queries.getInstance().updateDraftForAssignmentvisit(this.transId)) != 0) {
                InsertDataIntoDB.UpdateAssignmentVisistDetails(0, this.farmerID, this.etDiscription.getText().toString(), this.tvLatitude.getText().toString(), this.tvLongitude.getText().toString(), 0, this.transId, "false", this.locationProvider, this.GPSTimeStamp, this.timeDetails.getMobileStartTime(), this.timeDetails.getMobileEndTime(), this.timeDetails.getGPSStartTime(), this.timeDetails.getGPSEndTime(), this.total_CampaignIDs, this.tv_address.getText().toString());
            } else {
                InsertDataIntoDB.insertAssignmentVisistDetails(0, this.farmerID, this.etDiscription.getText().toString(), this.tvLatitude.getText().toString(), this.tvLongitude.getText().toString(), 0, this.transId, "false", this.locationProvider, this.GPSTimeStamp, this.timeDetails.getMobileStartTime(), this.timeDetails.getMobileEndTime(), this.timeDetails.getGPSStartTime(), this.timeDetails.getGPSEndTime(), this.total_CampaignIDs, this.tv_address.getText().toString());
            }
            try {
                GetDataFromDB.getInstance().updateChildTransactionDetails(Queries.getInstance().getchildDetailsActivity(this.farmerID, this.activityId, 0, this.transId));
            } catch (Exception e9) {
                PLog.e(TAG, e9);
            }
            for (int i6 = 0; i6 < this.images.size(); i6++) {
                InsertDataIntoDB.UpdateImageServerStatus(this.images.get(i6).getImageId());
            }
            for (int i7 = 0; i7 < this.videos.size(); i7++) {
                InsertDataIntoDB.UpdateImageServerStatus(this.videos.get(i7).getImageId());
            }
            String obj2 = this.territoryDetailsText.getTag(R.string.ENTRYID_SET) != null ? this.territoryDetailsText.getTag(R.string.ENTRYID_SET).toString() : "0";
            if ((!this.selCustomerId.equalsIgnoreCase("") && this.selSegmentID != 0) || !obj2.equals("0")) {
                try {
                    InsertDataIntoDB.UpdateAssignmentActivitiesCustomerDetails(this.selCustomerId, this.selSegmentID, 0, this.transId, obj2);
                } catch (Exception e10) {
                    PLog.e(TAG, e10);
                }
            }
            if (UtilDeclarations.isOnline(this.context) && !UtilDeclarations.isServiceRunning(getApplicationContext(), SyncDataService.class)) {
                Toast.makeText(getBaseContext(), "Service initiated", 0);
                new SendDataServiceUtil(this).startService();
            }
            try {
                InsertDataIntoDB.insertLog4Trace("ActivityTimeDetails", "", "", "", "SA End --" + UtilDeclarations.getDateTime(), false);
            } catch (Exception unused3) {
            }
            try {
                String updateLastVisitedDate2 = Queries.getInstance().getUpdateLastVisitedDate(this.segmentId, this.farmerID, UtilDeclarations.getDateTime());
                if (!TextUtils.isEmpty(updateLastVisitedDate2)) {
                    GetDataFromDB.getInstance().executeRawQueryInDB(updateLastVisitedDate2);
                }
            } catch (Exception unused4) {
            }
            Intent intent = new Intent(this, (Class<?>) MainHomePageActivity.class);
            intent.addFlags(268468224);
            startActivity(intent);
            finish();
            return;
        } catch (Exception e11) {
            showErrorAlertDialog("Something went wrong please perform activity again.");
            PLog.e("SAattributesActivity", e11);
            return;
        }
        PLog.e(this.tag, e);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean saveTableAttributeData(int i) {
        List<Fragment> list = this.fragmentsList;
        if (list == null || list.size() <= 0 || !this.isTableViewActivity) {
            return true;
        }
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
            if (attributeModel2.getIsMandatory() == 1) {
                this.mEntryArr_Assgnmt.get(i2).getText().toString().equalsIgnoreCase("");
            }
            if (!attributeModel2.getControlType().equalsIgnoreCase("Dropdown")) {
                if (attributeModel2.getControlType().equalsIgnoreCase("Multiselect Dropdown")) {
                    attributeModel2.setAttributeValue(this.mEntryArrIds_Assgnmt.get(i2).getText().toString());
                    String[] split = this.mEntryArrIds_Assgnmt.get(i2).getText().toString().split(",");
                    if (split != null && split.length > 0) {
                        arrayList.add(Integer.valueOf(attributeModel2.getAttributeId()));
                        for (String str : split) {
                            AttributeModel attributeModel3 = new AttributeModel(attributeModel2);
                            attributeModel3.setAttributeId(attributeModel2.getAttributeId());
                            attributeModel3.setAttributeValue(str);
                            this.listAttributes_Assgnmt.add(attributeModel3);
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
        builder.setMessage(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_addCustomerGoBackDialog())).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_cancelDialogButtonText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.SAAttributeActivity.13
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        });
        builder.setNegativeButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.SAAttributeActivity.14
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
                SAAttributeActivity.this.finish();
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
        if (i != 3) {
            if (i == 101) {
                PLog.location("Navigation", "Image Capture End", SA_TAG, UtilDeclarations.getDateTime());
                if (intent != null) {
                    this.imagePath = intent.getStringExtra("ImagePath");
                    return;
                }
                return;
            }
            if (i == 202 && intent != null) {
                this.imagePath = intent.getStringExtra("ImagePath");
                this.imageId = intent.getLongExtra("imageId", 0L);
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
        } catch (Exception e3) {
            PLog.e("MBAACTIVITY", e3);
        }
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

    /* JADX INFO: Access modifiers changed from: private */
    public void showAlertCancel(String str, final int i) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.context);
        builder.setMessage(str).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.SAAttributeActivity.16
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                dialogInterface.dismiss();
                int i3 = i;
                if (i3 == 0) {
                    SAAttributeActivity.this.finish();
                } else {
                    if (i3 != 1) {
                        return;
                    }
                    SAAttributeActivity.this.saveDataIntoDataBase(1);
                }
            }
        }).setNegativeButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_cancelDialogButtonText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.SAAttributeActivity.15
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
            }
        });
        AlertDialog show = builder.show();
        if (UtilDeclarations.isTablet(this)) {
            UtilDeclarations.makeTabletDialogTextlarge(show);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean checkCustomerDetails() {
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

    private boolean isExpensesNo(boolean z) {
        for (int i = 0; i < this.mEntryArr_Assgnmt.size(); i++) {
            if (this.listAttributes_Assgnmt.get(i).getAttributeId() == 885) {
                String obj = this.mEntryArr_Assgnmt.get(i).getText().toString();
                if (!TextUtils.isEmpty(obj) && !TextUtils.isEmpty(obj) && obj.equalsIgnoreCase("No")) {
                    z = showAlertExp("You are selected expenses required No", new BooleanWrapper(false));
                }
            } else {
                z = true;
            }
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isValidData(boolean z) {
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
            try {
            } catch (Exception e) {
                PLog.e(TAG, e);
            }
            if (attributeModel.getIsMandatory() == i) {
                if (!AttributesActivity.visibiltyGoneIds.contains(Integer.valueOf(attributeModel.getAttributeId()))) {
                    if (this.mEntryArr_Assgnmt.get(i2).getText().toString().trim().length() != 0 && ((!attributeModel.getControlType().equalsIgnoreCase("Dropdown") && !attributeModel.getControlType().equalsIgnoreCase("Multiselect Dropdown")) || this.mEntryArrIds_Assgnmt.get(i2).getText().toString().trim().length() != 0)) {
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
        if (GetDataFromDB.getLatLondMandatory(Queries.getInstance().getIsLatLongMandatory(this.activityId)) == 1 && (this.tvLatitude.getText().toString().trim().length() <= 0 || this.tvLongitude.getText().toString().trim().length() <= 0)) {
            this.tvLatitude.setError(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_locationIsMandateError()));
            this.tvLongitude.setError(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_locationIsMandateError()));
            this.scrollView.post(new Runnable() { // from class: com.conceptglobal.pmc.fo.SAAttributeActivity.17
                @Override // java.lang.Runnable
                public void run() {
                    SAAttributeActivity.this.scrollView.scrollTo(0, SAAttributeActivity.this.tvLatitude.getBottom());
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
        builder.setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.SAAttributeActivity.23
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                SAAttributeActivity.this.showRemarkSelectionAlert();
            }
        });
        builder.setNegativeButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_cancelDialogButtonText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.SAAttributeActivity.24
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
        builder.setSingleChoiceItems(this.remarkNames, -1, new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.SAAttributeActivity.25
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                SAAttributeActivity.this.d_remarks.dismiss();
                try {
                    SAAttributeActivity.this.prepareAttributeData();
                    if (SAAttributeActivity.this.listAttributes_Assgnmt.size() != 0) {
                        GetDataFromDB.getInstance().executeRawQueryInDB(Queries.getInstance().deleteFarmerDetailsActivitySelfAssign(SAAttributeActivity.this.farmerID, SAAttributeActivity.this.activityId, SAAttributeActivity.this.transId));
                    }
                    new Thread(new Runnable() { // from class: com.conceptglobal.pmc.fo.SAAttributeActivity.25.1
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                InsertDataIntoDB.insertFarmerActivityDetailsUpdate(SAAttributeActivity.this.listAttributes_Assgnmt, SAAttributeActivity.this.farmerID, SAAttributeActivity.this.activityId, 0, 1, 0, SAAttributeActivity.this.segmentId, SAAttributeActivity.this.transId, 1, 0, null, 0);
                            } catch (Exception e) {
                                PLog.e(SAAttributeActivity.TAG, e);
                            }
                        }
                    }).start();
                    GetDataFromDB.getInstance().executeRawQueryInDB(Queries.getInstance().updateNotDoneForSelfActivities(SAAttributeActivity.this.activityId, SAAttributeActivity.this.farmerID, SAAttributeActivity.this.transId, SAAttributeActivity.this.remarkNames[i2]));
                    try {
                        if (SAAttributeActivity.this.campaignIDList.size() > 0) {
                            SAAttributeActivity sAAttributeActivity = SAAttributeActivity.this;
                            sAAttributeActivity.total_CampaignIDs = FarmerFormActivity$$ExternalSyntheticBackport0.m(",", sAAttributeActivity.campaignIDList);
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    if (SAAttributeActivity.this.getDataFromDB.getIFContains(Queries.getInstance().updateDraftForAssignmentvisit(SAAttributeActivity.this.transId)) != 0) {
                        InsertDataIntoDB.UpdateAssignmentVisistDetails(0, SAAttributeActivity.this.farmerID, SAAttributeActivity.this.etDiscription.getText().toString(), SAAttributeActivity.this.tvLatitude.getText().toString(), SAAttributeActivity.this.tvLongitude.getText().toString(), 0, SAAttributeActivity.this.transId, "false", SAAttributeActivity.this.locationProvider, SAAttributeActivity.this.GPSTimeStamp, SAAttributeActivity.this.timeDetails.getMobileStartTime(), SAAttributeActivity.this.timeDetails.getMobileEndTime(), SAAttributeActivity.this.timeDetails.getGPSStartTime(), SAAttributeActivity.this.timeDetails.getGPSEndTime(), SAAttributeActivity.this.total_CampaignIDs, "");
                    } else {
                        InsertDataIntoDB.insertAssignmentVisistDetails(0, SAAttributeActivity.this.farmerID, SAAttributeActivity.this.etDiscription.getText().toString(), SAAttributeActivity.this.tvLatitude.getText().toString(), SAAttributeActivity.this.tvLongitude.getText().toString(), 0, SAAttributeActivity.this.transId, "false", SAAttributeActivity.this.locationProvider, SAAttributeActivity.this.GPSTimeStamp, SAAttributeActivity.this.timeDetails.getMobileStartTime(), SAAttributeActivity.this.timeDetails.getMobileEndTime(), SAAttributeActivity.this.timeDetails.getGPSStartTime(), SAAttributeActivity.this.timeDetails.getGPSEndTime(), SAAttributeActivity.this.total_CampaignIDs, SAAttributeActivity.this.tv_address.getText().toString());
                    }
                    for (int i3 = 0; i3 < SAAttributeActivity.this.images.size(); i3++) {
                        InsertDataIntoDB.UpdateImageServerStatus(((ImageDetails) SAAttributeActivity.this.images.get(i3)).getImageId());
                    }
                    try {
                        String updateLastVisitedDate = Queries.getInstance().getUpdateLastVisitedDate(SAAttributeActivity.this.segmentId, SAAttributeActivity.this.farmerID, UtilDeclarations.getDateTime());
                        if (!TextUtils.isEmpty(updateLastVisitedDate)) {
                            GetDataFromDB.getInstance().executeRawQueryInDB(updateLastVisitedDate);
                        }
                    } catch (Exception unused) {
                    }
                    SAAttributeActivity.this.setResult(-1, new Intent());
                    try {
                        ((OnCompleteListener) SAAttributeActivity.this.getParent()).onComplete("1", null);
                    } catch (Exception e2) {
                        e2.printStackTrace();
                        PLog.e(SAAttributeActivity.TAG, e2);
                    }
                } catch (Exception e3) {
                    PLog.e("FarmerFormActivity", e3);
                }
                SAAttributeActivity.this.finish();
            }
        });
        AlertDialog create = builder.create();
        this.d_remarks = create;
        create.show();
        this.d_remarks.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.conceptglobal.pmc.fo.SAAttributeActivity.26
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                SAAttributeActivity.this.d_remarks.dismiss();
            }
        });
    }

    @Override // com.conceptglobal.pmc.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        PLog.location("Navigation", "onResume", SA_TAG, UtilDeclarations.getDateTime());
        AttributesActivity_Expenses.gettingBackImagesList(this.context);
        setAdapter();
        setVideoThumbnail();
    }

    @Override // com.conceptglobal.pmc.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        LocalBroadcastManager.getInstance(this).unregisterReceiver(this.message);
        LocalBroadcastManager.getInstance(this).unregisterReceiver(this.videoComressReceiver);
        PLog.location("Navigation", "onDestroy", SA_TAG, UtilDeclarations.getDateTime());
        LocalBroadcastManager.getInstance(this).unregisterReceiver(this.datasaveReceiver);
        LocalBroadcastManager.getInstance(this).unregisterReceiver(this.camaigndata_receiver);
        if (!this.isDraftSave && !TextUtils.isEmpty(campaignID) && !this.campaignStatus.equalsIgnoreCase("Completed")) {
            Intent intent = new Intent("CLOSE_ACTIVITY");
            intent.putExtra(NeoCampaignConstants.CAMPAIGN_ID, campaignID);
            LocalBroadcastManager.getInstance(getApplicationContext()).sendBroadcast(intent);
        }
        try {
            new JSONObject().put(NeoCampaignConstants.CAMPAIGN_ID, campaignID);
        } catch (Exception unused) {
        }
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean checkTerritorydetails() {
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

    /* JADX INFO: Access modifiers changed from: private */
    public boolean checkImagesMandatory() {
        try {
            if (this.getDataFromDB.getLookupValue(Queries.getInstance().getImageIsMandatory(this.activityId)) != 1 || this.images.size() != 0) {
                return true;
            }
            Toast.makeText(getApplicationContext(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_plsSelectImageToast()), 0).show();
            return false;
        } catch (Exception e) {
            PLog.e(TAG, e.getMessage());
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean checkVideoMandatory() {
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
    public boolean checkAllMandatoryImages() {
        try {
            this.imglstConfigId = GetDataFromDB.getInstance().getImagesPathDetail(Queries.getInstance().getAllImagesMandatory(this.activityId));
            for (int i = 0; i < this.imglstConfigId.size(); i++) {
                String singleValue = GetDataFromDB.getInstance().getSingleValue(Queries.getInstance().getItemId(this.imglstConfigId.get(i)));
                if (singleValue != null && !singleValue.isEmpty() && GetDataFromDB.getInstance().getIntValue(Queries.getInstance().getImagesAvailableOrNot(singleValue, this.transId)) == 0) {
                    Toast.makeText(this.context, "Please take photo " + GetDataFromDB.getInstance().getSingleValue(Queries.getInstance().getItemKey(this.imglstConfigId.get(i))), 0).show();
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
    public void captureVideo(long j) {
        Intent intent = new Intent(this, (Class<?>) VideoCapureActivityCopy2.class);
        intent.putExtra("activityId", this.activityId);
        intent.putExtra("assignmentId", 0);
        try {
            intent.putExtra("setReferenceType", GetDataFromDB.getInstance().getLookupValue(Queries.getInstance().getItemValue(SA_TAG)));
        } catch (Exception e) {
            e.printStackTrace();
            PLog.e(TAG, e);
        }
        intent.putExtra("setReferenceID", String.valueOf(this.transId));
        intent.putExtra("attributeId", 0);
        intent.putExtra("farmerId", this.farmerID);
        intent.putExtra("imageId", j);
        startActivityForResult(intent, 202);
    }

    private void fetchLocation() {
        if (!this.mLocationUtils.checkPermissions(this)) {
            this.mLocationUtils.requestPermissions(this);
            return;
        }
        try {
            new FetchLocation(this, true, new OnLocationFoundListener() { // from class: com.conceptglobal.pmc.fo.SAAttributeActivity.28
                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onTimerTimeOut() {
                }

                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onLocationFound(LocationInfo locationInfo) {
                    SAAttributeActivity.this.tvLatitude.setText(locationInfo.getLatitude() + "");
                    SAAttributeActivity.this.tvLongitude.setText(locationInfo.getLongitude() + "");
                }

                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onLocationFound(Location location) {
                    SAAttributeActivity.this.GPSTimeStamp = UtilDeclarations.getLongToDate(location.getTime());
                    SAAttributeActivity sAAttributeActivity = SAAttributeActivity.this;
                    sAAttributeActivity.bindAddress(location, sAAttributeActivity.tv_address);
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

    private void showAlert(String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setMessage(str).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.SAAttributeActivity.29
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

    private void showAlertExp(String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setMessage(str).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.SAAttributeActivity.30
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
                if (SAAttributeActivity.this.isValidData(true) && SAAttributeActivity.this.saveTableAttributeData(1) && SAAttributeActivity.this.checkCustomerDetails() && SAAttributeActivity.this.checkTerritorydetails() && SAAttributeActivity.this.checkImagesMandatory() && SAAttributeActivity.this.checkVideoMandatory() && SAAttributeActivity.this.checkAllMandatoryImages()) {
                    SAAttributeActivity.this.showAlertCancel(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_confirmVisitCompleteDialogText()), 1);
                }
            }
        });
        AlertDialog show = builder.show();
        if (UtilDeclarations.isTablet(this)) {
            UtilDeclarations.makeTabletDialogTextlarge(show);
        }
    }

    class BooleanWrapper {
        boolean value;

        BooleanWrapper(boolean z) {
            this.value = z;
        }
    }

    private boolean showAlertExp(String str, final BooleanWrapper booleanWrapper) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setMessage(str).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.SAAttributeActivity.31
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
                booleanWrapper.value = true;
            }
        });
        AlertDialog show = builder.show();
        if (UtilDeclarations.isTablet(this)) {
            UtilDeclarations.makeTabletDialogTextlarge(show);
        }
        return booleanWrapper.value;
    }

    private void showErrorAlertDialog(String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setMessage(Html.fromHtml("<font color='#ff0000'>" + str + "</font>")).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.SAAttributeActivity.32
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
                SAAttributeActivity.this.finish();
            }
        });
        AlertDialog show = builder.show();
        if (UtilDeclarations.isTablet(this)) {
            UtilDeclarations.makeTabletDialogTextlarge(show);
        }
    }

    private void validateDistributerUpdateStatus() {
        try {
            String singleValue = GetDataFromDB.getInstance().getSingleValue(Queries.getInstance().getItemValuewithActiveCondition("DistributerNonUpdateRoleIDs"));
            String singleValue2 = GetDataFromDB.getInstance().getSingleValue(Queries.getInstance().getRoleIdFromuserRoleMapping());
            if (singleValue == null || singleValue.length() <= 0) {
                return;
            }
            for (String str : singleValue.split(",")) {
                if (str.equals(singleValue2)) {
                    this.isDistributerEligibletoUpdate = false;
                    return;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void showAccessDeniedDialog() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.context);
        builder.setMessage(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_accessDeniedDialog())).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.SAAttributeActivity.33
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        });
        AlertDialog show = builder.show();
        if (UtilDeclarations.isTablet(this.context)) {
            UtilDeclarations.makeTabletDialogTextlarge(show);
        }
    }

    private void startFlutterActivity() {
        if (!TextUtils.isEmpty(campaignID)) {
            sendCampaignDetails();
        } else {
            sendInitialData();
        }
    }

    private void sendCampaignDetails() {
        JSONObject prepareCampaignDetails = prepareCampaignDetails();
        try {
            prepareCampaignDetails.put(NeoCampaignConstants.CAMPAIGN_ID, campaignID);
            prepareCampaignDetails.put(NeoCampaignConstants.USER_NAME, "kaveriTM2");
            prepareCampaignDetails.put(NeoCampaignConstants.PASSWORD, "Pass@12345");
        } catch (Exception unused) {
        }
    }

    public void sendInitialData() {
        JSONObject prepareCampaignDetails = prepareCampaignDetails();
        try {
            prepareCampaignDetails.put(NeoCampaignConstants.ROOT_URL, "");
            prepareCampaignDetails.put(NeoCampaignConstants.BASE_URL, "");
            prepareCampaignDetails.put(NeoCampaignConstants.ROOT_URL_WITH_PORT, "");
            prepareCampaignDetails.put(NeoCampaignConstants.ACCESS_TOKEN, "");
            prepareCampaignDetails.put(NeoCampaignConstants.USER_NAME, "kaveriTM2");
            prepareCampaignDetails.put(NeoCampaignConstants.PASSWORD, "Pass@12345");
            prepareCampaignDetails.put(NeoCampaignConstants.CLIENT_ID, "");
            prepareCampaignDetails.put(NeoCampaignConstants.CLIENT_SECRET, "");
            prepareCampaignDetails.put(NeoCampaignConstants.NEOINT_IDENTITY_SERVICE, "");
        } catch (Exception unused) {
        }
    }

    private JSONObject prepareCampaignDetails() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("CampignActivityId", this.transId);
            jSONObject.put("CampignSource", "PMC");
            jSONObject.put(JobStorage.COLUMN_ID, "");
            jSONObject.put("CampaignTitle", this.activityName);
            jSONObject.put("CampaignDescription", this.activityName);
            jSONObject.put("CampaignStatus", "");
            jSONObject.put("CampaignProfileImage", "");
            jSONObject.put("CampignLatLong", "");
            jSONObject.put("CampignLocation", "Hyd");
            jSONObject.put("CampignSubLocation", "");
            jSONObject.put("CampignSubLocationLatLong", "");
            jSONObject.put("CampaignStartDate", "");
            jSONObject.put("CampaignEndDate", "");
            jSONObject.put("VMNType", "Call");
            jSONObject.put("CampaignScheduleDate", "");
            jSONObject.put("CampaignScheduleTime", "");
            jSONObject.put("CampaignProductProfile", new JSONObject());
            JSONArray jSONArray = new JSONArray();
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("NeoIntId", "2343679239492055534");
            jSONObject2.put("Crop Name", "Paddy");
            jSONObject2.put("Crop Code", "1");
            jSONObject2.put("CropId", "14544556");
            jSONArray.put(jSONObject2);
            jSONObject.put("CampaignCrops", jSONArray);
            jSONObject.put("HasApprovals", false);
            jSONObject.put("Moments", new JSONArray());
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("Zone", "");
            jSONObject3.put("Region", "");
            jSONObject3.put("Territory", "");
            jSONObject.put("ESADetails", jSONObject3);
            jSONObject.put("LotteryFlag", false);
            jSONObject.put("DiscountFlag", false);
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    private void addAudianceFarmerDetails(List<AttributeModel> list, String str, int i) {
        String str2;
        String str3;
        Iterator it;
        SAAttributeActivity sAAttributeActivity = this;
        int i2 = i;
        String str4 = "1";
        String str5 = "false";
        try {
            HashMap hashMap = new HashMap();
            for (int i3 = 0; i3 < list.size(); i3++) {
                AttributeModel attributeModel = list.get(i3);
                if (hashMap.containsKey(attributeModel.getChildLevelId())) {
                    ((ArrayList) hashMap.get(attributeModel.getChildLevelId())).add(attributeModel);
                } else {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(attributeModel);
                    hashMap.put(attributeModel.getChildLevelId(), arrayList);
                }
            }
            Iterator it2 = hashMap.entrySet().iterator();
            while (it2.hasNext()) {
                ArrayList arrayList2 = (ArrayList) ((Map.Entry) it2.next()).getValue();
                ArrayList arrayList3 = new ArrayList();
                ArrayList arrayList4 = new ArrayList();
                ArrayList arrayList5 = new ArrayList();
                ArrayList arrayList6 = new ArrayList();
                FarmerMaster farmerMaster = new FarmerMaster();
                farmerMaster.setisNew("true");
                farmerMaster.setServerupdatedstatus(str5);
                farmerMaster.setPdaid(sAAttributeActivity.getDataFromDB.getSingleValue(Queries.getInstance().geetingPdaid()));
                StringBuilder sb = new StringBuilder();
                sb.append(farmerMaster.getPdaid());
                ArrayList arrayList7 = arrayList2;
                sb.append(Calendar.getInstance().getTimeInMillis());
                farmerMaster.setRespondentNo(sb.toString());
                farmerMaster.setStatus(0);
                farmerMaster.setTypeofFarmer(str4);
                farmerMaster.setFarmerTypeId(str4);
                farmerMaster.setIsActive("True");
                farmerMaster.setAudiencefarmer(1);
                farmerMaster.setServerupdatedstatus(str5);
                farmerMaster.setColumn5(GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getActivityShortCode(i2)) + UtilDeclarations.getDateAudianceFarmer());
                FarmerCropMapping farmerCropMapping = new FarmerCropMapping();
                farmerCropMapping.setRespondentNo(farmerMaster.getRespondentNo());
                int i4 = 0;
                while (true) {
                    if (i4 < arrayList7.size()) {
                        ArrayList arrayList8 = arrayList7;
                        AttributeModel attributeModel2 = (AttributeModel) arrayList8.get(i4);
                        GetDataFromDB getDataFromDB = sAAttributeActivity.getDataFromDB;
                        str2 = str4;
                        Queries queries = Queries.getInstance();
                        str3 = str5;
                        StringBuilder sb2 = new StringBuilder();
                        it = it2;
                        sb2.append(attributeModel2.getAttributeId());
                        sb2.append("");
                        AudianceFarmer listAudianceData = sAAttributeActivity.getDataFromDB.getListAudianceData(Queries.getInstance().gettingAudianceFramerObject(getDataFromDB.getSingleValue(queries.getAudianceFarmerMappingID(sb2.toString(), i2 + ""))));
                        if (listAudianceData != null && listAudianceData.getTableName() != null && listAudianceData.getTableName().equals("FarmerMaster")) {
                            arrayList3.add(listAudianceData.getDbColumnName());
                            arrayList4.add(attributeModel2.getAttributeValue());
                            if (listAudianceData.getDbColumnName().equals("Mobile")) {
                                String encryptRemovenewLine = Encryption.encryptRemovenewLine(attributeModel2.getAttributeValue());
                                boolean isMobileNumExists = sAAttributeActivity.getDataFromDB.isMobileNumExists("SELECT Mobile FROM FarmerMaster where  Mobile = '" + encryptRemovenewLine + "'");
                                boolean isMobileNumExists2 = sAAttributeActivity.getDataFromDB.isMobileNumExists("SELECT Mobile FROM PMCTerritoryFarmerMaster where  Mobile ='" + encryptRemovenewLine + "'");
                                if (isMobileNumExists) {
                                    break;
                                } else if (isMobileNumExists2) {
                                    break;
                                }
                            }
                        }
                        if (listAudianceData != null && listAudianceData.getTableName() != null && listAudianceData.getTableName().equals("FarmerCropDetails")) {
                            arrayList5.add(listAudianceData.getDbColumnName());
                            arrayList6.add(attributeModel2.getAttributeValue());
                        }
                        i4++;
                        sAAttributeActivity = this;
                        it2 = it;
                        i2 = i;
                        arrayList7 = arrayList8;
                        str4 = str2;
                        str5 = str3;
                    } else {
                        str2 = str4;
                        str3 = str5;
                        it = it2;
                        if (arrayList3.size() > 0) {
                            InsertDataIntoDB.insertAudianceFarmerDetails(farmerMaster, arrayList3, arrayList4);
                        }
                        if (arrayList5.size() > 0) {
                            InsertDataIntoDB.insertAudianceFarmerCropDetails(farmerCropMapping, arrayList5, arrayList6);
                        }
                    }
                }
                sAAttributeActivity = this;
                it2 = it;
                i2 = i;
                str4 = str2;
                str5 = str3;
            }
        } catch (Exception e) {
            e.printStackTrace();
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
}

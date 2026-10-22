package com.conceptglobal.pmc.fo;

import android.app.AlertDialog;
import android.app.DatePickerDialog;
import android.app.Dialog;
import android.app.TimePickerDialog;
import android.content.ClipData;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.BitmapFactory;
import android.location.Location;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.Editable;
import android.text.InputFilter;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.TimePicker;
import android.widget.Toast;
import androidx.core.content.FileProvider;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.conceptglobal.imaterialdesign.widget.FloatingActionButton;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.common.Items;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.fragments.AttributesDynamicTableFarmatFragment;
import com.conceptglobal.pmc.interfaces.AttributeEventListener;
import com.conceptglobal.pmc.interfaces.CropChanger;
import com.conceptglobal.pmc.interfaces.OnCompleteListener;
import com.conceptglobal.pmc.interfaces.OnLocationFoundListener;
import com.conceptglobal.pmc.interfaces.ValidatorInterface;
import com.conceptglobal.pmc.locationprovider.FetchLocation;
import com.conceptglobal.pmc.model.AssignmentActivityDetailsModel;
import com.conceptglobal.pmc.model.AttributeModel;
import com.conceptglobal.pmc.model.BrandsModel;
import com.conceptglobal.pmc.model.ImageDetails;
import com.conceptglobal.pmc.model.LocationInfo;
import com.conceptglobal.pmc.model.TimeDetails;
import com.conceptglobal.pmc.utils.CompressHelper;
import com.conceptglobal.pmc.utils.CompressListener;
import com.conceptglobal.pmc.utils.ConstantDeclarations;
import com.conceptglobal.pmc.utils.ImageCompressionAsyncTask;
import com.conceptglobal.pmc.utils.LabelUtils;
import com.conceptglobal.pmc.utils.LocationService;
import com.conceptglobal.pmc.utils.LocationUtils;
import com.conceptglobal.pmc.utils.PLog;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import com.conceptglobal.pmcdeepakfertilizers.R;
import java.io.File;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public class AttributesDynmicTableViewActivity extends FragmentActivity implements View.OnClickListener, CropChanger, ValidatorInterface {
    private static final int DATEDIALOGID = 0;
    private static final int GET_CAM_IMG_FIRST = 101;
    private static final int ISDONE = 1;
    private static final int LABLE_CROP = 100;
    private static final int LABLE_PEST = 101;
    private static final String TAG = "AttributesActivity";
    private static final int TIMEDIALOGID = 1;
    private static Button btnStartStop;
    public static Context ctx;
    private static List<Fragment> fragmentList;
    private static List<AttributeModel> listAttributes;
    private static List<EditText> mEntryArr;
    private static List<EditText> mEntryArrIds;
    static String startTimeGPS;
    static String starttimeMobile;
    static long starttimeMobileMillis;
    static String stopTimeGPS;
    static String stopTimeMobile;
    public static ArrayList<Integer> visibiltyGoneIds = new ArrayList<>();
    private List<AttributeModel> AlertlistAttributes;
    private int activityAssignmentId;
    private int activityId;
    private String activityName;
    private AssignmentActivityDetailsModel assignmentDetails;
    private int assignmentID;
    private List<String> brands;
    private TextView btnClose;
    private TextView btnDiscard;
    private TextView btnDone;
    private TextView btnnotDone;
    private Context context;
    private CropChanger cropChageListener;
    private String cropId;
    protected Dialog d_remarks;
    private int demoActivity;
    AlertDialog dialog;
    private String dos;
    private FloatingActionButton fabADD;
    private FloatingActionButton fabADD2;
    private String farmerId;
    private GetDataFromDB getDataFromDB;
    private String image1Path;
    private ImageDetails imageDetails;
    private File imageFile;
    private ImageView imageView;
    private int isDisplayCount;
    private boolean isLoadingDone;
    private int isPlanned;
    private int isSelfassign;
    private int ismba;
    private ImageView ivInfo;
    private Button locationBtn;
    private LocationInfo locationInfo;
    private LinearLayout locationLayout;
    private LocationService locationService;
    private View locationView;
    private LinearLayout mAddDynamicLinear;
    private int mDay;
    private EditText mEntryEdt;
    private List<ImageView> mImageviews;
    private LocationUtils mLocationUtils;
    private int mMonth;
    private int mYear;
    private List<TextView> mattributesnamesArr;
    private EditText noofvillagesEdt;
    private AttributeModel objAttribute;
    private Queries queries;
    private String[] remarkNames;
    private String[] remarkids;
    private RelativeLayout rlTimerView;
    private ArrayList<Integer> ruleAttributeIds;
    private int segmentId;
    private TextView textActivityName;
    Timer timer;
    private long transId;
    private TextView tvStartTime;
    private TextView tvTimer;
    private String updateDOS;
    private int layoutId = 0;
    private List<AttributeModel> childValuelistAttributes = new ArrayList();
    private ArrayList<String> cropAndPestIDs = new ArrayList<>();
    private int mForOperations = -1;
    private int mForDates = -1;
    private int mForTime = -1;
    private int datePos = 0;
    private int timePos = 0;
    private String mFiledStr = "";
    private int locationFlag = 0;
    private Map<Integer, EditText> mapEntryEdit = new HashMap();
    private Map<Integer, Integer> mapEntryEditIds = new HashMap();
    private EditText mDatetext = null;
    private EditText mTimeText = null;
    private int countVillage = 0;
    public List<BrandsModel> brandsList = null;
    private String textChanged = "";
    String fetchLocationCall = "";
    View.OnClickListener operationListener = new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.AttributesDynmicTableViewActivity.8
        /* JADX WARN: Removed duplicated region for block: B:31:0x0172 A[Catch: Exception -> 0x0432, TryCatch #0 {Exception -> 0x0432, blocks: (B:6:0x0031, B:8:0x0037, B:10:0x003d, B:12:0x0043, B:13:0x0406, B:15:0x041c, B:20:0x0048, B:23:0x0053, B:25:0x0083, B:27:0x00ab, B:28:0x0105, B:29:0x016c, B:31:0x0172, B:33:0x01a2, B:35:0x01ca, B:36:0x0224, B:37:0x028b, B:39:0x0291, B:41:0x02c1, B:43:0x02e9, B:44:0x0343, B:45:0x03ac, B:47:0x03b2, B:49:0x03b8, B:51:0x03be, B:52:0x03c2, B:55:0x03cd, B:56:0x03dc, B:58:0x03e2, B:59:0x03f1, B:61:0x03f7), top: B:5:0x0031 }] */
        /* JADX WARN: Removed duplicated region for block: B:39:0x0291 A[Catch: Exception -> 0x0432, TryCatch #0 {Exception -> 0x0432, blocks: (B:6:0x0031, B:8:0x0037, B:10:0x003d, B:12:0x0043, B:13:0x0406, B:15:0x041c, B:20:0x0048, B:23:0x0053, B:25:0x0083, B:27:0x00ab, B:28:0x0105, B:29:0x016c, B:31:0x0172, B:33:0x01a2, B:35:0x01ca, B:36:0x0224, B:37:0x028b, B:39:0x0291, B:41:0x02c1, B:43:0x02e9, B:44:0x0343, B:45:0x03ac, B:47:0x03b2, B:49:0x03b8, B:51:0x03be, B:52:0x03c2, B:55:0x03cd, B:56:0x03dc, B:58:0x03e2, B:59:0x03f1, B:61:0x03f7), top: B:5:0x0031 }] */
        /* JADX WARN: Removed duplicated region for block: B:47:0x03b2 A[Catch: Exception -> 0x0432, TryCatch #0 {Exception -> 0x0432, blocks: (B:6:0x0031, B:8:0x0037, B:10:0x003d, B:12:0x0043, B:13:0x0406, B:15:0x041c, B:20:0x0048, B:23:0x0053, B:25:0x0083, B:27:0x00ab, B:28:0x0105, B:29:0x016c, B:31:0x0172, B:33:0x01a2, B:35:0x01ca, B:36:0x0224, B:37:0x028b, B:39:0x0291, B:41:0x02c1, B:43:0x02e9, B:44:0x0343, B:45:0x03ac, B:47:0x03b2, B:49:0x03b8, B:51:0x03be, B:52:0x03c2, B:55:0x03cd, B:56:0x03dc, B:58:0x03e2, B:59:0x03f1, B:61:0x03f7), top: B:5:0x0031 }] */
        /* JADX WARN: Removed duplicated region for block: B:55:0x03cd A[Catch: Exception -> 0x0432, TRY_ENTER, TryCatch #0 {Exception -> 0x0432, blocks: (B:6:0x0031, B:8:0x0037, B:10:0x003d, B:12:0x0043, B:13:0x0406, B:15:0x041c, B:20:0x0048, B:23:0x0053, B:25:0x0083, B:27:0x00ab, B:28:0x0105, B:29:0x016c, B:31:0x0172, B:33:0x01a2, B:35:0x01ca, B:36:0x0224, B:37:0x028b, B:39:0x0291, B:41:0x02c1, B:43:0x02e9, B:44:0x0343, B:45:0x03ac, B:47:0x03b2, B:49:0x03b8, B:51:0x03be, B:52:0x03c2, B:55:0x03cd, B:56:0x03dc, B:58:0x03e2, B:59:0x03f1, B:61:0x03f7), top: B:5:0x0031 }] */
        /* JADX WARN: Removed duplicated region for block: B:58:0x03e2 A[Catch: Exception -> 0x0432, TryCatch #0 {Exception -> 0x0432, blocks: (B:6:0x0031, B:8:0x0037, B:10:0x003d, B:12:0x0043, B:13:0x0406, B:15:0x041c, B:20:0x0048, B:23:0x0053, B:25:0x0083, B:27:0x00ab, B:28:0x0105, B:29:0x016c, B:31:0x0172, B:33:0x01a2, B:35:0x01ca, B:36:0x0224, B:37:0x028b, B:39:0x0291, B:41:0x02c1, B:43:0x02e9, B:44:0x0343, B:45:0x03ac, B:47:0x03b2, B:49:0x03b8, B:51:0x03be, B:52:0x03c2, B:55:0x03cd, B:56:0x03dc, B:58:0x03e2, B:59:0x03f1, B:61:0x03f7), top: B:5:0x0031 }] */
        /* JADX WARN: Removed duplicated region for block: B:61:0x03f7 A[Catch: Exception -> 0x0432, TryCatch #0 {Exception -> 0x0432, blocks: (B:6:0x0031, B:8:0x0037, B:10:0x003d, B:12:0x0043, B:13:0x0406, B:15:0x041c, B:20:0x0048, B:23:0x0053, B:25:0x0083, B:27:0x00ab, B:28:0x0105, B:29:0x016c, B:31:0x0172, B:33:0x01a2, B:35:0x01ca, B:36:0x0224, B:37:0x028b, B:39:0x0291, B:41:0x02c1, B:43:0x02e9, B:44:0x0343, B:45:0x03ac, B:47:0x03b2, B:49:0x03b8, B:51:0x03be, B:52:0x03c2, B:55:0x03cd, B:56:0x03dc, B:58:0x03e2, B:59:0x03f1, B:61:0x03f7), top: B:5:0x0031 }] */
        @Override // android.view.View.OnClickListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onClick(android.view.View r19) {
            /*
                Method dump skipped, instructions count: 1284
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.fo.AttributesDynmicTableViewActivity.AnonymousClass8.onClick(android.view.View):void");
        }
    };
    View.OnClickListener operationListenerMultiSelect = new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.AttributesDynmicTableViewActivity.9
        /* JADX WARN: Removed duplicated region for block: B:35:0x0179 A[Catch: Exception -> 0x047e, TryCatch #0 {Exception -> 0x047e, blocks: (B:6:0x002e, B:8:0x003e, B:10:0x0044, B:12:0x004a, B:13:0x040d, B:24:0x004f, B:27:0x005a, B:29:0x008a, B:31:0x00b2, B:32:0x010c, B:33:0x0173, B:35:0x0179, B:37:0x01a9, B:39:0x01d1, B:40:0x022b, B:41:0x0292, B:43:0x0298, B:45:0x02c8, B:47:0x02f0, B:48:0x034a, B:49:0x03b3, B:51:0x03b9, B:53:0x03bf, B:55:0x03c5, B:56:0x03c9, B:59:0x03d4, B:60:0x03e3, B:62:0x03e9, B:63:0x03f8, B:65:0x03fe), top: B:5:0x002e }] */
        /* JADX WARN: Removed duplicated region for block: B:43:0x0298 A[Catch: Exception -> 0x047e, TryCatch #0 {Exception -> 0x047e, blocks: (B:6:0x002e, B:8:0x003e, B:10:0x0044, B:12:0x004a, B:13:0x040d, B:24:0x004f, B:27:0x005a, B:29:0x008a, B:31:0x00b2, B:32:0x010c, B:33:0x0173, B:35:0x0179, B:37:0x01a9, B:39:0x01d1, B:40:0x022b, B:41:0x0292, B:43:0x0298, B:45:0x02c8, B:47:0x02f0, B:48:0x034a, B:49:0x03b3, B:51:0x03b9, B:53:0x03bf, B:55:0x03c5, B:56:0x03c9, B:59:0x03d4, B:60:0x03e3, B:62:0x03e9, B:63:0x03f8, B:65:0x03fe), top: B:5:0x002e }] */
        /* JADX WARN: Removed duplicated region for block: B:51:0x03b9 A[Catch: Exception -> 0x047e, TryCatch #0 {Exception -> 0x047e, blocks: (B:6:0x002e, B:8:0x003e, B:10:0x0044, B:12:0x004a, B:13:0x040d, B:24:0x004f, B:27:0x005a, B:29:0x008a, B:31:0x00b2, B:32:0x010c, B:33:0x0173, B:35:0x0179, B:37:0x01a9, B:39:0x01d1, B:40:0x022b, B:41:0x0292, B:43:0x0298, B:45:0x02c8, B:47:0x02f0, B:48:0x034a, B:49:0x03b3, B:51:0x03b9, B:53:0x03bf, B:55:0x03c5, B:56:0x03c9, B:59:0x03d4, B:60:0x03e3, B:62:0x03e9, B:63:0x03f8, B:65:0x03fe), top: B:5:0x002e }] */
        /* JADX WARN: Removed duplicated region for block: B:59:0x03d4 A[Catch: Exception -> 0x047e, TRY_ENTER, TryCatch #0 {Exception -> 0x047e, blocks: (B:6:0x002e, B:8:0x003e, B:10:0x0044, B:12:0x004a, B:13:0x040d, B:24:0x004f, B:27:0x005a, B:29:0x008a, B:31:0x00b2, B:32:0x010c, B:33:0x0173, B:35:0x0179, B:37:0x01a9, B:39:0x01d1, B:40:0x022b, B:41:0x0292, B:43:0x0298, B:45:0x02c8, B:47:0x02f0, B:48:0x034a, B:49:0x03b3, B:51:0x03b9, B:53:0x03bf, B:55:0x03c5, B:56:0x03c9, B:59:0x03d4, B:60:0x03e3, B:62:0x03e9, B:63:0x03f8, B:65:0x03fe), top: B:5:0x002e }] */
        /* JADX WARN: Removed duplicated region for block: B:62:0x03e9 A[Catch: Exception -> 0x047e, TryCatch #0 {Exception -> 0x047e, blocks: (B:6:0x002e, B:8:0x003e, B:10:0x0044, B:12:0x004a, B:13:0x040d, B:24:0x004f, B:27:0x005a, B:29:0x008a, B:31:0x00b2, B:32:0x010c, B:33:0x0173, B:35:0x0179, B:37:0x01a9, B:39:0x01d1, B:40:0x022b, B:41:0x0292, B:43:0x0298, B:45:0x02c8, B:47:0x02f0, B:48:0x034a, B:49:0x03b3, B:51:0x03b9, B:53:0x03bf, B:55:0x03c5, B:56:0x03c9, B:59:0x03d4, B:60:0x03e3, B:62:0x03e9, B:63:0x03f8, B:65:0x03fe), top: B:5:0x002e }] */
        /* JADX WARN: Removed duplicated region for block: B:65:0x03fe A[Catch: Exception -> 0x047e, TryCatch #0 {Exception -> 0x047e, blocks: (B:6:0x002e, B:8:0x003e, B:10:0x0044, B:12:0x004a, B:13:0x040d, B:24:0x004f, B:27:0x005a, B:29:0x008a, B:31:0x00b2, B:32:0x010c, B:33:0x0173, B:35:0x0179, B:37:0x01a9, B:39:0x01d1, B:40:0x022b, B:41:0x0292, B:43:0x0298, B:45:0x02c8, B:47:0x02f0, B:48:0x034a, B:49:0x03b3, B:51:0x03b9, B:53:0x03bf, B:55:0x03c5, B:56:0x03c9, B:59:0x03d4, B:60:0x03e3, B:62:0x03e9, B:63:0x03f8, B:65:0x03fe), top: B:5:0x002e }] */
        @Override // android.view.View.OnClickListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onClick(android.view.View r19) {
            /*
                Method dump skipped, instructions count: 1354
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.fo.AttributesDynmicTableViewActivity.AnonymousClass9.onClick(android.view.View):void");
        }
    };
    View.OnClickListener datesListener = new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.AttributesDynmicTableViewActivity.10
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AttributesDynmicTableViewActivity.this.datePos = view.getId();
            AttributesDynmicTableViewActivity.this.showDialog(0);
        }
    };
    View.OnClickListener timesListener = new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.AttributesDynmicTableViewActivity.11
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AttributesDynmicTableViewActivity.this.timePos = view.getId();
            AttributesDynmicTableViewActivity.this.showDialog(1);
        }
    };
    private DatePickerDialog.OnDateSetListener mDateSetListener = new DatePickerDialog.OnDateSetListener() { // from class: com.conceptglobal.pmc.fo.AttributesDynmicTableViewActivity.13
        @Override // android.app.DatePickerDialog.OnDateSetListener
        public void onDateSet(DatePicker datePicker, int i, int i2, int i3) {
            AttributesDynmicTableViewActivity.this.mYear = i;
            AttributesDynmicTableViewActivity.this.mMonth = i2;
            AttributesDynmicTableViewActivity.this.mDay = i3;
            try {
                if (new SimpleDateFormat("yyyy-MM-dd").parse(i + "-" + (i2 + 1) + "-" + i3).compareTo(new Date()) < 30) {
                    AttributesDynmicTableViewActivity.this.updateDisplay();
                } else {
                    Toast.makeText(AttributesDynmicTableViewActivity.this.getApplicationContext(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectProperDate()), 1).show();
                }
            } catch (Exception e) {
                PLog.e(AttributesDynmicTableViewActivity.TAG, e);
            }
        }
    };
    private TimePickerDialog.OnTimeSetListener mTimeSetListener = new TimePickerDialog.OnTimeSetListener() { // from class: com.conceptglobal.pmc.fo.AttributesDynmicTableViewActivity.14
        @Override // android.app.TimePickerDialog.OnTimeSetListener
        public void onTimeSet(TimePicker timePicker, int i, int i2) {
            String str;
            if (i <= 11) {
                str = "AM";
            } else {
                str = "PM";
            }
            if (i > 12) {
                i -= 12;
            }
            String str2 = "" + i2;
            if (i2 < 10) {
                str2 = "0" + str2;
            }
            ((TextView) AttributesDynmicTableViewActivity.mEntryArr.get(AttributesDynmicTableViewActivity.this.timePos)).setText(i + " : " + str2 + " : " + str);
        }
    };
    CompressListener listener = new CompressListener() { // from class: com.conceptglobal.pmc.fo.AttributesDynmicTableViewActivity.15
        @Override // com.conceptglobal.pmc.utils.CompressListener
        public void onComprssCompleteListener(String str) {
            UtilDeclarations.loadDiskThumbnail(AttributesDynmicTableViewActivity.this.context, AttributesDynmicTableViewActivity.this.imageView, new File(str));
        }
    };

    private void setListeners() {
    }

    static /* synthetic */ int access$1410(AttributesDynmicTableViewActivity attributesDynmicTableViewActivity) {
        int i = attributesDynmicTableViewActivity.mForOperations;
        attributesDynmicTableViewActivity.mForOperations = i - 1;
        return i;
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(R.layout.attribute_dynamic_info_layout);
        this.context = this;
        clearStaticvalues();
        this.mLocationUtils = new LocationUtils();
        ConstantsPMC.getInstance().getLanguageConfigurations(this.context);
        init();
        setListeners();
        getData();
        setData();
    }

    private void clearStaticvalues() {
        starttimeMobile = "";
        starttimeMobileMillis = 0L;
        stopTimeMobile = "";
        startTimeGPS = "";
        stopTimeGPS = "";
    }

    private void init() {
        this.cropChageListener = this;
        ctx = this;
        this.mAddDynamicLinear = (LinearLayout) findViewById(R.id.ll_infalter);
        this.textActivityName = (TextView) findViewById(R.id.activityNameText);
        this.fabADD = (FloatingActionButton) findViewById(R.id.BtnAdd_noofvillages);
        this.ivInfo = (ImageView) findViewById(R.id.iv_info);
        this.tvTimer = (TextView) findViewById(R.id.tvDisplayTimer);
        Button button = (Button) findViewById(R.id.btnStartStop);
        btnStartStop = button;
        button.setOnClickListener(this);
        this.rlTimerView = (RelativeLayout) findViewById(R.id.rl_timer);
        this.fabADD.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.AttributesDynmicTableViewActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (AttributesDynmicTableViewActivity.fragmentList == null || AttributesDynmicTableViewActivity.fragmentList.size() <= 0) {
                    return;
                }
                for (int i = 0; i < AttributesDynmicTableViewActivity.fragmentList.size(); i++) {
                    ((AttributesDynamicTableFarmatFragment) AttributesDynmicTableViewActivity.fragmentList.get(i)).AddOperaion();
                }
            }
        });
        this.ivInfo.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.AttributesDynmicTableViewActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ((AttributesDynamicTableFarmatFragment) AttributesDynmicTableViewActivity.fragmentList.get(0)).showSuggesions();
            }
        });
        this.updateDOS = null;
        this.queries = Queries.getInstance();
        this.getDataFromDB = GetDataFromDB.getInstance();
        if (Items.selectedItemIds != null) {
            Items.selectedItemIds.clear();
            Items.selectedItems.clear();
        }
        fragmentList = new ArrayList();
    }

    private void getData() {
        try {
            Intent intent = getIntent();
            this.assignmentDetails = (AssignmentActivityDetailsModel) getIntent().getExtras().getParcelable("MODELCLASS");
            this.ismba = intent.getIntExtra(ConstantDeclarations.getInstance().getKeyIsMba(), 0);
            this.farmerId = intent.getStringExtra(ConstantDeclarations.getInstance().getKEYFARMERID());
            this.isSelfassign = intent.getIntExtra("ISSELFASSIGN", 0);
            this.segmentId = intent.getIntExtra("SEGMENTID", 0);
            this.activityId = intent.getIntExtra(ConstantDeclarations.getInstance().getKEYACTIVITYID(), 0);
            this.isPlanned = intent.getIntExtra(ConstantDeclarations.getInstance().getKEYISPLANNED(), 0);
            this.activityName = intent.getStringExtra("ACTIVITYNAME");
            this.activityAssignmentId = intent.getIntExtra("ActivityAssignmentId", 0);
            this.transId = intent.getLongExtra("TRANSID", 0L);
            this.assignmentID = intent.getIntExtra("AssignmentId", 0);
            if (this.activityId != 1476) {
                this.fabADD.setVisibility(8);
            }
            String singleValue = this.getDataFromDB.getSingleValue(Queries.getInstance().getPairID(this.activityAssignmentId + "", this.activityId + ""));
            if (singleValue == null || singleValue.length() <= 0) {
                return;
            }
            this.countVillage = Integer.parseInt(singleValue.split("\\.")[1]);
        } catch (Exception e) {
            PLog.e(TAG, e);
        }
    }

    private void setData() {
        this.mattributesnamesArr = new ArrayList();
        mEntryArr = new ArrayList();
        mEntryArrIds = new ArrayList();
        this.mImageviews = new ArrayList();
        this.textActivityName.setText("" + this.activityName);
        loadAttributes(this.activityId);
        this.isLoadingDone = true;
        Calendar calendar = Calendar.getInstance();
        this.mDay = calendar.get(5);
        this.mMonth = calendar.get(2);
        this.mYear = calendar.get(1);
    }

    private void loadAttributes(int i) {
        try {
            List<AttributeModel> pMCActivityAttributes = GetDataFromDB.getInstance().getPMCActivityAttributes(Queries.getInstance().getPMCActivityAttributeQueryUpdated(this.farmerId, this.activityId, this.activityAssignmentId, this.transId));
            listAttributes = pMCActivityAttributes;
            if (pMCActivityAttributes.size() <= 0) {
                Toast.makeText(getApplicationContext(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_noAttribsAvailToastSA()), 0).show();
                return;
            }
            for (int i2 = 0; i2 < listAttributes.size(); i2++) {
                AttributeModel attributeModel = listAttributes.get(i2);
                this.objAttribute = attributeModel;
                addOperationsDynamicLayout(attributeModel.getAttributeName(), this.objAttribute.getControlType(), this.objAttribute.getAttributeId(), this.objAttribute.getAttributeValue(), this.objAttribute, this.mAddDynamicLinear, false);
            }
        } catch (Exception e) {
            PLog.e(TAG, e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0d5f  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x0ced  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0ca8  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0d46  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0e20  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0ec2  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0fa3  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x10aa  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x10c2  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x10d6  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0fba  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0f9c  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0e27  */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v10 */
    /* JADX WARN: Type inference failed for: r14v11 */
    /* JADX WARN: Type inference failed for: r14v12 */
    /* JADX WARN: Type inference failed for: r14v13 */
    /* JADX WARN: Type inference failed for: r14v14 */
    /* JADX WARN: Type inference failed for: r14v15 */
    /* JADX WARN: Type inference failed for: r14v16 */
    /* JADX WARN: Type inference failed for: r14v51 */
    /* JADX WARN: Type inference failed for: r51v0, types: [android.widget.LinearLayout] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void addOperationsDynamicLayout(java.lang.String r46, java.lang.String r47, int r48, java.lang.String r49, com.conceptglobal.pmc.model.AttributeModel r50, android.widget.LinearLayout r51, boolean r52) {
        /*
            Method dump skipped, instructions count: 4614
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.fo.AttributesDynmicTableViewActivity.addOperationsDynamicLayout(java.lang.String, java.lang.String, int, java.lang.String, com.conceptglobal.pmc.model.AttributeModel, android.widget.LinearLayout, boolean):void");
    }

    private String getDynamictableQry(int i, int i2) {
        try {
            String singleValue = this.getDataFromDB.getSingleValue(Queries.getInstance().getqueryForMIDropdown(i, i2));
            return (singleValue == null || singleValue.length() <= 0) ? singleValue : singleValue.replaceFirst("@", this.cropAndPestIDs.get(0)).replaceFirst("@", this.cropAndPestIDs.get(1));
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    @Override // android.app.Activity
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return motionEvent.getAction() == 0 && UtilDeclarations.isOutOfBounds(motionEvent, this);
    }

    @Override // com.conceptglobal.pmc.interfaces.ValidatorInterface
    public void onValidate(boolean z) {
        for (int i = 0; i < mEntryArr.size(); i++) {
            AttributeModel attributeModel = listAttributes.get(i);
            try {
                boolean z2 = true;
                if (attributeModel.getIsMandatory() == 1) {
                    if (mEntryArr.get(i).getText().toString().trim().length() == 0) {
                        mEntryArr.get(i).setError(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_enterTheToast()) + " " + attributeModel.getAttributeName());
                    } else {
                        if (attributeModel.getMinLength() != 0 && mEntryArr.get(i).getText().toString().trim().length() < attributeModel.getMinLength()) {
                            mEntryArr.get(i).setError(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_minimumLengthFor()) + " " + attributeModel.getAttributeName() + " - " + attributeModel.getMinLength());
                            z2 = false;
                        }
                        if ((attributeModel.getControlType().equalsIgnoreCase("TextBoxN") || attributeModel.getControlType().equalsIgnoreCase("TextBoxND")) && attributeModel.getMinValue() != 0) {
                            if (Integer.parseInt(mEntryArr.get(i).getText().toString().trim().length() > 0 ? mEntryArr.get(i).getText().toString() : "0") < attributeModel.getMinValue()) {
                                mEntryArr.get(i).setError(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_minimumValueFor()) + " " + attributeModel.getAttributeName() + " - " + attributeModel.getMinValue());
                                z2 = false;
                            }
                        }
                        if (z2) {
                            mEntryArr.get(i).setError(null);
                        }
                    }
                } else if (mEntryArr.get(i).getText().toString().trim().length() != 0) {
                    if (attributeModel.getMinLength() != 0 && mEntryArr.get(i).getText().toString().length() < attributeModel.getMinLength()) {
                        mEntryArr.get(i).setError(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_minimumLengthFor()) + " " + attributeModel.getAttributeName() + " - " + attributeModel.getMinLength());
                        z2 = false;
                    }
                    if ((attributeModel.getControlType().equalsIgnoreCase("TextBoxN") || attributeModel.getControlType().equalsIgnoreCase("TextBoxND")) && attributeModel.getMinValue() != 0) {
                        if (Integer.parseInt(mEntryArr.get(i).getText().toString().trim().length() > 0 ? mEntryArr.get(i).getText().toString() : "0") < attributeModel.getMinValue()) {
                            mEntryArr.get(i).setError(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_minimumValueFor()) + " " + attributeModel.getAttributeName() + " - " + attributeModel.getMinValue());
                            z2 = false;
                        }
                    }
                    if (z2) {
                        mEntryArr.get(i).setError(null);
                    }
                }
            } catch (Exception e) {
                PLog.e("AttributesActivity-Validation", e);
            }
        }
    }

    private class CustomTextWatcher implements TextWatcher {
        private String beforetext;
        private EditText editText;
        private long maxvalue;
        private long minValue;
        private AttributeModel obj;

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        private CustomTextWatcher(EditText editText, long j, long j2, AttributeModel attributeModel) {
            this.editText = editText;
            this.maxvalue = j2;
            this.minValue = j;
            this.obj = attributeModel;
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            this.beforetext = charSequence.toString();
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            this.editText.setError(null);
            try {
                if (editable.toString().length() > 0 && TextUtils.isEmpty(AttributesDynmicTableViewActivity.starttimeMobile) && AttributesDynmicTableViewActivity.this.isLoadingDone) {
                    AttributesDynmicTableViewActivity.this.showAlertDialog(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_StartTimerText()));
                    this.editText.setText("");
                    return;
                }
            } catch (Exception unused) {
            }
            if (this.obj.getControlType().equalsIgnoreCase("Dropdown")) {
                if (this.obj.getIsKeyAttribute() == 1) {
                    this.obj.setAttributeValue(editable.toString());
                    if (!this.obj.getAttributeValue().equalsIgnoreCase("0") && !this.obj.getAttributeValue().equalsIgnoreCase("")) {
                        if (AttributesDynmicTableViewActivity.this.getDataFromDB.getKeyAttributeId(AttributesDynmicTableViewActivity.this.activityId, AttributesDynmicTableViewActivity.this.getDataFromDB.getDropdownDisplayField(this.obj), this.obj.getAttributeId()) != 0) {
                            try {
                                ArrayList arrayList = new ArrayList();
                                List<AttributeModel> pMCActivityAttributes = GetDataFromDB.getInstance().getPMCActivityAttributes(Queries.getInstance().getPMCActivityKeyAttributes(AttributesDynmicTableViewActivity.this.activityId, AttributesDynmicTableViewActivity.this.getDataFromDB.getDropdownDisplayField(this.obj), this.obj.getAttributeId()));
                                List<AttributeModel> pMCActivityAttributes2 = GetDataFromDB.getInstance().getPMCActivityAttributes(Queries.getInstance().getPMCActivityKeyAttributes_All(AttributesDynmicTableViewActivity.this.activityId, AttributesDynmicTableViewActivity.this.getDataFromDB.getDropdownDisplayField(this.obj), this.obj.getAttributeId()));
                                Iterator it = AttributesDynmicTableViewActivity.listAttributes.iterator();
                                while (it.hasNext()) {
                                    AttributeModel performFiltering = AttributesDynmicTableViewActivity.this.performFiltering(pMCActivityAttributes2, "", (AttributeModel) it.next());
                                    if (performFiltering != null) {
                                        arrayList.add(performFiltering);
                                    }
                                }
                                if (arrayList.size() > 0) {
                                    Iterator it2 = arrayList.iterator();
                                    while (it2.hasNext()) {
                                        int findModelPosition = AttributesDynmicTableViewActivity.this.findModelPosition(AttributesDynmicTableViewActivity.listAttributes, (AttributeModel) it2.next());
                                        AttributesDynmicTableViewActivity.listAttributes.remove(findModelPosition);
                                        AttributesDynmicTableViewActivity.this.mAddDynamicLinear.removeViewAt(findModelPosition);
                                        AttributesDynmicTableViewActivity.access$1410(AttributesDynmicTableViewActivity.this);
                                        AttributesDynmicTableViewActivity.this.mattributesnamesArr.remove(findModelPosition);
                                        AttributesDynmicTableViewActivity.mEntryArrIds.remove(findModelPosition);
                                        AttributesDynmicTableViewActivity.mEntryArr.remove(findModelPosition);
                                    }
                                }
                                for (AttributeModel attributeModel : pMCActivityAttributes) {
                                    AttributesDynmicTableViewActivity.listAttributes.add(attributeModel);
                                    AttributesDynmicTableViewActivity.this.addOperationsDynamicLayout(attributeModel.getAttributeName(), attributeModel.getControlType(), attributeModel.getAttributeId(), attributeModel.getAttributeValue(), attributeModel, AttributesDynmicTableViewActivity.this.mAddDynamicLinear, false);
                                }
                            } catch (Exception e) {
                                PLog.e(AttributesDynmicTableViewActivity.TAG, e);
                            }
                        } else {
                            try {
                                ArrayList arrayList2 = new ArrayList();
                                List<AttributeModel> pMCActivityAttributes3 = GetDataFromDB.getInstance().getPMCActivityAttributes(Queries.getInstance().getPMCActivityAttributeQueryUpdated(AttributesDynmicTableViewActivity.this.farmerId, AttributesDynmicTableViewActivity.this.activityId, AttributesDynmicTableViewActivity.this.activityAssignmentId, AttributesDynmicTableViewActivity.this.transId));
                                Iterator it3 = AttributesDynmicTableViewActivity.listAttributes.iterator();
                                while (it3.hasNext()) {
                                    AttributeModel performFiltering2 = AttributesDynmicTableViewActivity.this.performFiltering(pMCActivityAttributes3, "", (AttributeModel) it3.next());
                                    if (performFiltering2 != null) {
                                        arrayList2.add(performFiltering2);
                                    }
                                }
                                if (arrayList2.size() > 0) {
                                    Iterator it4 = arrayList2.iterator();
                                    while (it4.hasNext()) {
                                        int findModelPosition2 = AttributesDynmicTableViewActivity.this.findModelPosition(AttributesDynmicTableViewActivity.listAttributes, (AttributeModel) it4.next());
                                        AttributesDynmicTableViewActivity.listAttributes.remove(findModelPosition2);
                                        AttributesDynmicTableViewActivity.this.mAddDynamicLinear.removeViewAt(findModelPosition2);
                                        AttributesDynmicTableViewActivity.access$1410(AttributesDynmicTableViewActivity.this);
                                        AttributesDynmicTableViewActivity.this.mattributesnamesArr.remove(findModelPosition2);
                                        AttributesDynmicTableViewActivity.mEntryArrIds.remove(findModelPosition2);
                                        AttributesDynmicTableViewActivity.mEntryArr.remove(findModelPosition2);
                                    }
                                }
                            } catch (Exception e2) {
                                PLog.e(AttributesDynmicTableViewActivity.TAG, e2);
                            }
                        }
                    }
                }
                List<Integer> filterAttributesByFilterAttribute = AttributesDynmicTableViewActivity.this.filterAttributesByFilterAttribute(this.obj.getAttributeId());
                if (filterAttributesByFilterAttribute.size() > 0) {
                    for (Integer num : filterAttributesByFilterAttribute) {
                        ((EditText) AttributesDynmicTableViewActivity.mEntryArr.get(((Integer) AttributesDynmicTableViewActivity.this.mapEntryEditIds.get(num)).intValue())).setText("");
                        ((EditText) AttributesDynmicTableViewActivity.mEntryArrIds.get(((Integer) AttributesDynmicTableViewActivity.this.mapEntryEditIds.get(num)).intValue())).setText("");
                    }
                    return;
                }
                return;
            }
            if (this.obj.getControlType().equalsIgnoreCase("Multiselect Dropdown")) {
                List<Integer> filterAttributesByFilterAttribute2 = AttributesDynmicTableViewActivity.this.filterAttributesByFilterAttribute(this.obj.getAttributeId());
                if (filterAttributesByFilterAttribute2.size() > 0) {
                    for (Integer num2 : filterAttributesByFilterAttribute2) {
                        ((EditText) AttributesDynmicTableViewActivity.mEntryArr.get(((Integer) AttributesDynmicTableViewActivity.this.mapEntryEditIds.get(num2)).intValue())).setText("");
                        ((EditText) AttributesDynmicTableViewActivity.mEntryArrIds.get(((Integer) AttributesDynmicTableViewActivity.this.mapEntryEditIds.get(num2)).intValue())).setText("");
                    }
                    return;
                }
                return;
            }
            if (this.obj.getControlType().equalsIgnoreCase("TextBoxN") || this.obj.getControlType().equalsIgnoreCase("TextBoxND")) {
                if (editable.toString().equalsIgnoreCase("") || editable.toString().equalsIgnoreCase(".") || Float.parseFloat(editable.toString()) <= this.maxvalue) {
                    return;
                }
                this.editText.setText(this.beforetext);
                return;
            }
            if (this.obj.getControlType().equalsIgnoreCase("TextBox")) {
                return;
            }
            this.obj.getControlType().equalsIgnoreCase("TextArea");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int findModelPosition(List<AttributeModel> list, AttributeModel attributeModel) {
        for (int i = 0; i < list.size(); i++) {
            if (list.get(i).getAttributeId() == attributeModel.getAttributeId()) {
                return i;
            }
        }
        return 0;
    }

    private void showAddVillageDetailsDialog(EditText editText, String str) {
        Intent intent = new Intent(this.context, (Class<?>) ChildAttributeActivity.class);
        intent.putExtra(ConstantDeclarations.getInstance().getKEYFARMERID(), this.farmerId);
        intent.putExtra(ConstantDeclarations.getInstance().getKeyIsMba(), this.ismba);
        intent.putExtra("SEGMENTID", this.segmentId);
        intent.putExtra("ISSELFASSIGN", this.isSelfassign);
        intent.putExtra("ParentAttributeId", Integer.parseInt(str));
        intent.putExtra("AssignmentId", this.assignmentID);
        intent.putExtra("ActivityAssignmentId", this.activityAssignmentId);
        intent.putExtra("TRANSID", this.transId);
        try {
            intent.putExtra("Count", Integer.parseInt(editText.getText().toString()));
        } catch (Exception unused) {
            intent.putExtra("Count", editText.getText().toString());
        }
        intent.putExtra(ConstantDeclarations.getInstance().getKEYACTIVITYID(), this.activityId);
        intent.putExtra(ConstantDeclarations.getInstance().getKEYISPLANNED(), this.isPlanned);
        startActivityForResult(intent.addFlags(131072).addFlags(67108864), 3);
    }

    public static List<AttributeModel> cloneList(List<AttributeModel> list) {
        ArrayList arrayList = new ArrayList(list.size());
        Iterator<AttributeModel> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new AttributeModel(it.next()));
        }
        return arrayList;
    }

    private void addDynamicLayoutVillageDetails(int i, int i2, LinearLayout linearLayout) {
        String str;
        AttributeModel attributeModel = new AttributeModel();
        try {
            List<AttributeModel> pMCActivityAttributes = GetDataFromDB.getInstance().getPMCActivityAttributes(Queries.getInstance().getSelectedAttributeQueryUpdate(this.farmerId, this.activityId, i2));
            this.AlertlistAttributes = pMCActivityAttributes;
            if (pMCActivityAttributes.size() <= 0) {
                Toast.makeText(getApplicationContext(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_noAttribsAvailToastSA()), 0).show();
                return;
            }
        } catch (Exception e) {
            e.printStackTrace();
            PLog.e(TAG, e);
        }
        String str2 = "";
        int i3 = 0;
        while (i3 < i) {
            LinearLayout linearLayout2 = new LinearLayout(this.context);
            linearLayout2.setOrientation(1);
            linearLayout2.setGravity(16);
            linearLayout2.setBackgroundColor(getResources().getColor(R.color.background_color));
            linearLayout2.setBackgroundDrawable(getResources().getDrawable(R.drawable.card_layout_back));
            linearLayout2.setPadding(0, 0, 0, 10);
            linearLayout2.setId(this.layoutId);
            TextView textView = new TextView(this.context);
            textView.setTextColor(-12303292);
            StringBuilder sb = new StringBuilder("Set ");
            int i4 = i3 + 1;
            sb.append(i4);
            textView.setText(sb.toString());
            linearLayout2.addView(textView);
            int i5 = 0;
            while (i5 < this.AlertlistAttributes.size()) {
                this.objAttribute = this.AlertlistAttributes.get(i5);
                if (this.childValuelistAttributes.size() <= 0) {
                    str = str2;
                } else if (attributeModel.getAttributeValue() == null || attributeModel.getAttributeValue().equalsIgnoreCase("")) {
                    str = "";
                } else {
                    str = attributeModel.getAttributeValue();
                }
                addOperationsDynamicLayout(this.objAttribute.getAttributeName(), this.objAttribute.getControlType(), this.objAttribute.getAttributeId(), str, this.objAttribute, linearLayout2, true);
                i5++;
                str2 = str;
            }
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
            layoutParams.bottomMargin = 10;
            linearLayout.addView(linearLayout2, layoutParams);
            i3 = i4;
        }
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

    class NumericDigitsInputFilter implements InputFilter {
        Pattern mPattern;

        public NumericDigitsInputFilter(int i) {
            if (i > 0) {
                StringBuilder sb = new StringBuilder("[0-9]{0,");
                sb.append(i - 1);
                sb.append("}");
                this.mPattern = Pattern.compile(sb.toString());
                return;
            }
            this.mPattern = Pattern.compile("[0-9]{0,9}");
        }

        @Override // android.text.InputFilter
        public CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
            if (this.mPattern.matcher(spanned).matches()) {
                return null;
            }
            return "";
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() != R.id.btnStartStop) {
            return;
        }
        try {
            if (btnStartStop.getText().toString().equalsIgnoreCase("Stop")) {
                this.timer.cancel();
                this.timer.purge();
                btnStartStop.setText("Start");
                btnStartStop.setBackgroundColor(getResources().getColor(R.color.colorPrimary));
                stopTimeMobile = UtilDeclarations.getDateTime();
                this.fetchLocationCall = "Stop";
                fetchLocation();
                return;
            }
            if (!UtilDeclarations.isTimeAutomatic(getApplicationContext())) {
                showTimeSettingsAlertDialog("Please select datetime of type auto from settings, to start timer");
                return;
            }
            Timer timer = new Timer();
            this.timer = timer;
            timer.schedule(new MyTimerTask(), 0L, 500L);
            btnStartStop.setText("Stop");
            btnStartStop.setBackgroundColor(getResources().getColor(R.color.Segment8));
            starttimeMobile = UtilDeclarations.getDateTime();
            starttimeMobileMillis = System.currentTimeMillis();
            stopTimeGPS = "";
            stopTimeMobile = "";
            this.fetchLocationCall = "Start";
            fetchLocation();
            int i = this.activityId;
            if (i == 38 || i == 41 || i == 46 || i == 63) {
                bindDemoValues();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void showTimeSettingsAlertDialog(String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.context);
        builder.setMessage(str).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.AttributesDynmicTableViewActivity.7
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                AttributesDynmicTableViewActivity.this.startActivity(new Intent("android.settings.DATE_SETTINGS"));
                dialogInterface.dismiss();
            }
        });
        AlertDialog show = builder.show();
        if (UtilDeclarations.isTablet(this)) {
            UtilDeclarations.makeTabletDialogTextlarge(show);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<Integer> filterAttributesByFilterAttribute(int i) {
        ArrayList arrayList = new ArrayList();
        try {
            for (AttributeModel attributeModel : listAttributes) {
                if (attributeModel.getFilterAttribute1() == i || attributeModel.getFilterAttribute2() == i || attributeModel.getFilterAttribute3() == i) {
                    arrayList.add(Integer.valueOf(attributeModel.getAttributeId()));
                }
            }
        } catch (Exception e) {
            PLog.e(TAG, e, 0);
        }
        return arrayList;
    }

    private void setEditableFalse(EditText editText) {
        editText.setFocusable(false);
        editText.setClickable(false);
        editText.setEnabled(false);
        editText.setBackgroundDrawable(getResources().getDrawable(R.drawable.edt_disable));
    }

    private void checkImagesInDBandDelete() {
        Iterator it = new ArrayList().iterator();
        while (it.hasNext()) {
            try {
                GetDataFromDB.getInstance().executeRawQueryInDB(Queries.getInstance().getDeleteImageActDetails(((ImageDetails) it.next()).getImageId()));
            } catch (Exception e) {
                PLog.e(TAG, e);
            }
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        for (ImageView imageView : this.mImageviews) {
            if (this.imageDetails != null) {
                File file = new File(this.imageDetails.getPicturePath());
                if (file.exists()) {
                    imageView.setImageBitmap(BitmapFactory.decodeFile(file.getAbsolutePath()));
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x012e A[Catch: Exception -> 0x0383, TryCatch #0 {Exception -> 0x0383, blocks: (B:3:0x000b, B:5:0x0011, B:7:0x0017, B:9:0x001d, B:13:0x0022, B:16:0x002f, B:18:0x0059, B:20:0x007b, B:21:0x00cd, B:22:0x0128, B:24:0x012e, B:26:0x0158, B:28:0x017a, B:29:0x01cc, B:30:0x0227, B:32:0x022d, B:34:0x0257, B:36:0x0279, B:37:0x02cb, B:38:0x0328, B:40:0x032e, B:42:0x0334, B:44:0x033a, B:45:0x033e, B:48:0x0349, B:49:0x0358, B:51:0x035e, B:52:0x036d, B:54:0x0373), top: B:2:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x022d A[Catch: Exception -> 0x0383, TryCatch #0 {Exception -> 0x0383, blocks: (B:3:0x000b, B:5:0x0011, B:7:0x0017, B:9:0x001d, B:13:0x0022, B:16:0x002f, B:18:0x0059, B:20:0x007b, B:21:0x00cd, B:22:0x0128, B:24:0x012e, B:26:0x0158, B:28:0x017a, B:29:0x01cc, B:30:0x0227, B:32:0x022d, B:34:0x0257, B:36:0x0279, B:37:0x02cb, B:38:0x0328, B:40:0x032e, B:42:0x0334, B:44:0x033a, B:45:0x033e, B:48:0x0349, B:49:0x0358, B:51:0x035e, B:52:0x036d, B:54:0x0373), top: B:2:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x032e A[Catch: Exception -> 0x0383, TryCatch #0 {Exception -> 0x0383, blocks: (B:3:0x000b, B:5:0x0011, B:7:0x0017, B:9:0x001d, B:13:0x0022, B:16:0x002f, B:18:0x0059, B:20:0x007b, B:21:0x00cd, B:22:0x0128, B:24:0x012e, B:26:0x0158, B:28:0x017a, B:29:0x01cc, B:30:0x0227, B:32:0x022d, B:34:0x0257, B:36:0x0279, B:37:0x02cb, B:38:0x0328, B:40:0x032e, B:42:0x0334, B:44:0x033a, B:45:0x033e, B:48:0x0349, B:49:0x0358, B:51:0x035e, B:52:0x036d, B:54:0x0373), top: B:2:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0349 A[Catch: Exception -> 0x0383, TRY_ENTER, TryCatch #0 {Exception -> 0x0383, blocks: (B:3:0x000b, B:5:0x0011, B:7:0x0017, B:9:0x001d, B:13:0x0022, B:16:0x002f, B:18:0x0059, B:20:0x007b, B:21:0x00cd, B:22:0x0128, B:24:0x012e, B:26:0x0158, B:28:0x017a, B:29:0x01cc, B:30:0x0227, B:32:0x022d, B:34:0x0257, B:36:0x0279, B:37:0x02cb, B:38:0x0328, B:40:0x032e, B:42:0x0334, B:44:0x033a, B:45:0x033e, B:48:0x0349, B:49:0x0358, B:51:0x035e, B:52:0x036d, B:54:0x0373), top: B:2:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x035e A[Catch: Exception -> 0x0383, TryCatch #0 {Exception -> 0x0383, blocks: (B:3:0x000b, B:5:0x0011, B:7:0x0017, B:9:0x001d, B:13:0x0022, B:16:0x002f, B:18:0x0059, B:20:0x007b, B:21:0x00cd, B:22:0x0128, B:24:0x012e, B:26:0x0158, B:28:0x017a, B:29:0x01cc, B:30:0x0227, B:32:0x022d, B:34:0x0257, B:36:0x0279, B:37:0x02cb, B:38:0x0328, B:40:0x032e, B:42:0x0334, B:44:0x033a, B:45:0x033e, B:48:0x0349, B:49:0x0358, B:51:0x035e, B:52:0x036d, B:54:0x0373), top: B:2:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0373 A[Catch: Exception -> 0x0383, TRY_LEAVE, TryCatch #0 {Exception -> 0x0383, blocks: (B:3:0x000b, B:5:0x0011, B:7:0x0017, B:9:0x001d, B:13:0x0022, B:16:0x002f, B:18:0x0059, B:20:0x007b, B:21:0x00cd, B:22:0x0128, B:24:0x012e, B:26:0x0158, B:28:0x017a, B:29:0x01cc, B:30:0x0227, B:32:0x022d, B:34:0x0257, B:36:0x0279, B:37:0x02cb, B:38:0x0328, B:40:0x032e, B:42:0x0334, B:44:0x033a, B:45:0x033e, B:48:0x0349, B:49:0x0358, B:51:0x035e, B:52:0x036d, B:54:0x0373), top: B:2:0x000b }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String getCascadingQuery(com.conceptglobal.pmc.model.AttributeModel r18, int r19) {
        /*
            Method dump skipped, instructions count: 988
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.fo.AttributesDynmicTableViewActivity.getCascadingQuery(com.conceptglobal.pmc.model.AttributeModel, int):java.lang.String");
    }

    private void doDiscardOperation() {
        try {
            GetDataFromDB.getInstance().executeRawQueryInDB(Queries.getInstance().updateDiscardForActivities(this.activityId, this.farmerId, this.activityAssignmentId));
            try {
                ((OnCompleteListener) getParent()).onComplete("2", null);
            } catch (Exception e) {
                PLog.e(TAG, e);
                e.printStackTrace();
            }
        } catch (Exception e2) {
            PLog.e(TAG, e2);
        }
        if (Items.selectedItemIds != null) {
            Items.selectedItemIds.clear();
            Items.selectedItems.clear();
        }
        Items.areItemsExist = false;
        List<BrandsModel> list = this.brandsList;
        if (list != null) {
            list.clear();
        }
        this.btnnotDone.setEnabled(true);
    }

    private void captureImage(int i, String str) {
        File file = new File(new CompressHelper().getCompressLoaction(this) + File.separator + "PMC" + str + i + ".JPEG");
        this.imageFile = file;
        if (i == 101) {
            this.image1Path = file.getAbsolutePath();
        }
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

    /* JADX INFO: Access modifiers changed from: private */
    public void showAlertDialog(String str) {
        AlertDialog alertDialog = this.dialog;
        if (alertDialog == null || !alertDialog.isShowing()) {
            AlertDialog.Builder builder = new AlertDialog.Builder(this.context);
            builder.setMessage(str).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.AttributesDynmicTableViewActivity.12
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    dialogInterface.dismiss();
                }
            });
            this.dialog = builder.show();
            if (UtilDeclarations.isTablet(this)) {
                UtilDeclarations.makeTabletDialogTextlarge(this.dialog);
            }
        }
    }

    @Override // android.app.Activity
    protected Dialog onCreateDialog(int i) {
        if (i != 0) {
            if (i != 1) {
                return null;
            }
            Calendar calendar = Calendar.getInstance();
            return new TimePickerDialog(this, this.mTimeSetListener, calendar.get(11) + 1, calendar.get(12), false);
        }
        DatePickerDialog datePickerDialog = new DatePickerDialog(this, this.mDateSetListener, this.mYear, this.mMonth, this.mDay);
        try {
            Date date = new Date();
            EditText editText = mEntryArr.get(this.datePos);
            if (editText != null && editText.getTag(R.string.MIN_DAYS) != null && !editText.getTag(R.string.MIN_DAYS).toString().isEmpty()) {
                Calendar calendar2 = Calendar.getInstance();
                calendar2.setTime(date);
                calendar2.add(5, (-Integer.parseInt(editText.getTag(R.string.MIN_DAYS).toString())) + 1);
                datePickerDialog.getDatePicker().setMinDate(calendar2.getTime().getTime());
            }
            if (editText != null && editText.getTag(R.string.MAX_DAYS) != null && !editText.getTag(R.string.MAX_DAYS).toString().isEmpty()) {
                Calendar calendar3 = Calendar.getInstance();
                calendar3.setTime(date);
                calendar3.add(5, Integer.parseInt(editText.getTag(R.string.MAX_DAYS).toString()) + 1);
                datePickerDialog.getDatePicker().setMaxDate(calendar3.getTime().getTime());
            }
        } catch (Exception unused) {
        }
        return datePickerDialog;
    }

    private void setDate(int i) {
        EditText editText = mEntryArr.get(i);
        try {
            new SimpleDateFormat("dd-MM-yyyy").parse(this.mFiledStr);
        } catch (ParseException e) {
            PLog.e(TAG, e);
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
            PLog.e(TAG, e);
        }
        setDate(this.datePos);
    }

    @Override // com.conceptglobal.pmc.interfaces.CropChanger
    public void onCropchangeListener(int i) {
        EditText editText;
        if (i != 0) {
            try {
                String stringValue = GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getDOSQuery(this.farmerId, Integer.toString(i)));
                this.dos = stringValue;
                if (stringValue == null || stringValue.trim().length() <= 0 || (editText = this.mDatetext) == null) {
                    return;
                }
                editText.setText(this.dos);
            } catch (Exception e) {
                PLog.e(TAG, e);
            }
        }
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i != 4 && i != 3) {
            return true;
        }
        if (Items.selectedItemIds != null) {
            Items.selectedItemIds.clear();
            Items.selectedItems.clear();
        }
        Items.areItemsExist = false;
        return true;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i != 1) {
            if (i2 != 0 && i2 == -1 && i == 101) {
                new ImageCompressionAsyncTask(this.context, this.listener).execute(this.imageFile.getAbsolutePath());
                return;
            }
            return;
        }
        if (i2 == -1) {
            findCurrentLocation();
        } else {
            if (i2 != 0) {
                return;
            }
            this.mLocationUtils.showDialog(this, LocationUtils.GPS_NOT_TURNED_ON);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void findCurrentLocation() {
        if (!this.mLocationUtils.checkPermissions(this)) {
            this.mLocationUtils.requestPermissions(this);
            return;
        }
        try {
            new FetchLocation(this, true, new OnLocationFoundListener() { // from class: com.conceptglobal.pmc.fo.AttributesDynmicTableViewActivity.16
                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onLocationFound(Location location) {
                }

                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onTimerTimeOut() {
                }

                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onLocationFound(LocationInfo locationInfo) {
                    AttributesDynmicTableViewActivity.this.onLocFound(locationInfo);
                }
            }, TAG);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
    }

    public void onLocFound(LocationInfo locationInfo) {
        if (this.locationView.getTag().equals("Latitude") || this.locationView.getTag().equals("Longitude")) {
            ViewGroup viewGroup = (ViewGroup) this.locationView.getParent().getParent();
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                View childAt = viewGroup.getChildAt(i);
                if (childAt instanceof LinearLayout) {
                    LinearLayout linearLayout = (LinearLayout) childAt;
                    int i2 = 0;
                    while (true) {
                        if (i2 < linearLayout.getChildCount()) {
                            View childAt2 = linearLayout.getChildAt(i2);
                            if (childAt2 instanceof EditText) {
                                EditText editText = (EditText) childAt2;
                                if (editText.getTag().equals("Latitude")) {
                                    editText.setText("" + locationInfo.getLatitude());
                                } else if (editText.getTag().equals("Longitude")) {
                                    editText.setText(" " + locationInfo.getLongitude());
                                }
                            } else {
                                i2++;
                            }
                        }
                    }
                }
            }
        }
        this.locationView = null;
    }

    protected AttributeModel performFiltering(List<AttributeModel> list, String str, AttributeModel attributeModel) {
        ArrayList arrayList = new ArrayList();
        new ArrayList();
        synchronized (this) {
            arrayList.addAll(list);
        }
        Iterator it = arrayList.iterator();
        boolean z = false;
        while (it.hasNext()) {
            if (((AttributeModel) it.next()).getAttributeId() == attributeModel.getAttributeId()) {
                z = true;
            }
        }
        if (z) {
            return null;
        }
        return attributeModel;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void methodToGetData(Context context) {
        AttributeEventListener attributeEventListener = (AttributeEventListener) context;
        attributeEventListener.GetData(listAttributes, mEntryArr, mEntryArrIds);
        attributeEventListener.getFragmentsList(fragmentList);
    }

    public static TimeDetails methodToGetTimeerData(Context context, boolean z) {
        if (TextUtils.isEmpty(stopTimeMobile) || z) {
            btnStartStop.performClick();
        }
        TimeDetails timeDetails = new TimeDetails();
        timeDetails.setMobileStartTime(starttimeMobile);
        timeDetails.setMobileEndTime(stopTimeMobile);
        timeDetails.setGPSStartTime(startTimeGPS);
        timeDetails.setGPSEndTime(stopTimeGPS);
        return timeDetails;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity, androidx.core.app.ActivityCompat.OnRequestPermissionsResultCallback
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        Log.i(TAG, "onRequestPermissionResult");
        if (i == 34) {
            if (iArr.length <= 0) {
                Log.i(TAG, "User interaction was cancelled.");
            } else if (iArr[0] == 0) {
                findCurrentLocation();
            } else {
                this.mLocationUtils.showDialog(this, LocationUtils.PERMISSION_DENIED);
            }
        }
    }

    class MyTimerTask extends TimerTask {
        MyTimerTask() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            AttributesDynmicTableViewActivity.this.runOnUiThread(new Runnable() { // from class: com.conceptglobal.pmc.fo.AttributesDynmicTableViewActivity.MyTimerTask.1
                @Override // java.lang.Runnable
                public void run() {
                    if (AttributesDynmicTableViewActivity.starttimeMobileMillis > 0) {
                        int currentTimeMillis = (int) ((System.currentTimeMillis() - AttributesDynmicTableViewActivity.starttimeMobileMillis) / 1000);
                        int i = currentTimeMillis / 60;
                        AttributesDynmicTableViewActivity.this.tvTimer.setText(String.format("%02d:%02d:%02d", Integer.valueOf(i / 60), Integer.valueOf(i), Integer.valueOf(currentTimeMillis % 60)));
                    }
                }
            });
        }
    }

    private void fetchLocation() {
        if (!this.mLocationUtils.checkPermissions(this)) {
            this.mLocationUtils.requestPermissions(this);
            return;
        }
        try {
            new FetchLocation(this, true, new OnLocationFoundListener() { // from class: com.conceptglobal.pmc.fo.AttributesDynmicTableViewActivity.17
                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onLocationFound(LocationInfo locationInfo) {
                }

                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onTimerTimeOut() {
                }

                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onLocationFound(Location location) {
                    if (AttributesDynmicTableViewActivity.this.fetchLocationCall.equalsIgnoreCase("Stop")) {
                        AttributesDynmicTableViewActivity.stopTimeGPS = UtilDeclarations.getLongToDate(location.getTime());
                    } else {
                        AttributesDynmicTableViewActivity.startTimeGPS = UtilDeclarations.getLongToDate(location.getTime());
                    }
                }
            }, TAG);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void bindDemoValues() {
        try {
            GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getItemValue("DemoAttributeCostFilterValue"));
            String obj = this.activityId == 38 ? mEntryArrIds.get(this.mapEntryEditIds.get(844).intValue()).getText().toString() : "";
            if (this.activityId == 41) {
                obj = mEntryArrIds.get(this.mapEntryEditIds.get(865).intValue()).getText().toString();
            }
            if (this.activityId == 46) {
                obj = mEntryArrIds.get(this.mapEntryEditIds.get(869).intValue()).getText().toString();
            }
            if (this.activityId == 63) {
                obj = mEntryArrIds.get(this.mapEntryEditIds.get(886).intValue()).getText().toString();
            }
            int intValue = GetDataFromDB.getInstance().getIntValue(Queries.getInstance().getDemoActivityExpenseAmountQry(obj));
            String stringValue = GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getDemoActivityBrandQry(obj));
            String stringValue2 = GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getDemoActivityBrandIdQry(obj));
            String stringValue3 = GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getDemoActivityProtocolPlotSizeQry(obj));
            String stringValue4 = GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getDemoActivityDosageQry(obj));
            try {
                this.mapEntryEdit.get(861).setText(intValue + "");
            } catch (Exception unused) {
            }
            try {
                String stringValue5 = GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getItemValue("DemoProductAttributeIDS"));
                if (!TextUtils.isEmpty(stringValue5)) {
                    String[] split = stringValue5.split(",");
                    for (int i = 0; i < split.length; i++) {
                        if (this.mapEntryEdit.containsKey(Integer.valueOf(Integer.parseInt(split[i])))) {
                            this.mapEntryEdit.get(Integer.valueOf(Integer.parseInt(split[i]))).setText(stringValue + "");
                            mEntryArrIds.get(this.mapEntryEditIds.get(Integer.valueOf(Integer.parseInt(split[i]))).intValue()).setText(stringValue2 + "");
                        }
                    }
                }
            } catch (Exception unused2) {
            }
            try {
                this.mapEntryEdit.get(879).setText(stringValue3 + "");
            } catch (Exception unused3) {
            }
            this.mapEntryEdit.get(853).setText(stringValue4 + "");
        } catch (Exception unused4) {
        }
    }

    private void bindFarmerExpenditure() {
        try {
            int intValue = GetDataFromDB.getInstance().getIntValue(Queries.getInstance().getFarmerDemoAmountQry(this.farmerId));
            this.mapEntryEdit.get(854).setText(intValue + "");
        } catch (Exception unused) {
        }
    }
}

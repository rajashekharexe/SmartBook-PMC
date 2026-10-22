package com.conceptglobal.pmc.fo;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.DatePickerDialog;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.app.TimePickerDialog;
import android.content.ActivityNotFoundException;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.BitmapFactory;
import android.location.Location;
import android.os.AsyncTask;
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
import android.webkit.JavascriptInterface;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.AutoCompleteTextView;
import android.widget.Button;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RatingBar;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.TimePicker;
import android.widget.Toast;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.common.Items;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.interfaces.AttributeEventListener;
import com.conceptglobal.pmc.interfaces.CropChanger;
import com.conceptglobal.pmc.interfaces.OnCompleteListener;
import com.conceptglobal.pmc.interfaces.OnLocationFoundListener;
import com.conceptglobal.pmc.interfaces.ValidatorInterface;
import com.conceptglobal.pmc.locationprovider.FetchLocation;
import com.conceptglobal.pmc.model.AssignmentActivityDetailsModel;
import com.conceptglobal.pmc.model.AttributeModel;
import com.conceptglobal.pmc.model.BrandsModel;
import com.conceptglobal.pmc.model.DashboardListModel;
import com.conceptglobal.pmc.model.FarmerMaster;
import com.conceptglobal.pmc.model.ImageDetails;
import com.conceptglobal.pmc.model.LocationInfo;
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
import java.util.Locale;
import java.util.Map;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public class AttributesActivity_Expenses extends Activity implements View.OnClickListener, CropChanger, ValidatorInterface {
    private static final int DATEDIALOGID = 0;
    private static final int GET_CAM_IMG_FIRST = 101;
    private static final int ISDONE = 1;
    public static final int REQUEST_GET_FARMERS = 1001;
    private static final String TAG = "AttributesActivity";
    private static final int TIMEDIALOGID = 1;
    private static int activityId;
    public static Context ctx;
    private static List<AttributeModel> listAttributes;
    private static List<EditText> mEntryArr;
    private static List<EditText> mEntryArrIds;
    public static HashMap<Integer, TextView> textMAp = new HashMap<>();
    static long transId;
    private static WebView webView;
    private List<AttributeModel> AlertlistAttributes;
    private int activityAssignmentId;
    private String activityName;
    private AssignmentActivityDetailsModel assignmentDetails;
    private int assignmentID;
    private ScrollView atrrributesView;
    private List<String> brands;
    private Button btn;
    private TextView btnClose;
    private TextView btnDiscard;
    private TextView btnDone;
    private TextView btnnotDone;
    private Context context;
    private CropChanger cropChageListener;
    private String cropId;
    protected Dialog d_remarks;
    private int demoActivity;
    private String dos;
    private String farmerId;
    private GetDataFromDB getDataFromDB;
    private String image1Path;
    private ImageDetails imageDetails;
    private File imageFile;
    private ImageView imageView;
    private ImageView imgLastVistDetails;
    private int isPlanned;
    private int isSelfassign;
    private int ismba;
    private EditText lastSelectedView;
    private AttributeModel lastSelectedattributeModel;
    private String lastSelectedid;
    private Button locationBtn;
    private LocationInfo locationInfo;
    private LinearLayout locationLayout;
    private LocationService locationService;
    private View locationView;
    private LinearLayout mAddDynamicLinear;
    private AutoCompleteTextView mAutoCompleteTextView;
    private AutoCompleteTextView mAutoCompleteTextViewN;
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
    private RatingBar ratingBar;
    private String[] remarkNames;
    private String[] remarkids;
    private RelativeLayout rl_timer;
    private ArrayList<Integer> ruleAttributeIds;
    private int segmentId;
    private EditText speachText;
    private TextView textActivityName;
    private TextView tvLastVisitDetails;
    private String updateDOS;
    WebAppInterface webAppInterface;
    private int layoutId = 0;
    private final int REQ_CODE_SPEECH_INPUT = 100;
    private List<AttributeModel> childValuelistAttributes = new ArrayList();
    private int mForOperations = -1;
    private int mForDates = -1;
    private int mForTime = -1;
    private int mRating = -1;
    private int datePos = 0;
    private int timePos = 0;
    private long defaultMinDate = -1;
    private long defaultMaxDate = -1;
    private String mFiledStr = "";
    private int locationFlag = 0;
    private Map<Integer, EditText> mapEntryEdit = new HashMap();
    private Map<Integer, Integer> mapEntryEditIds = new HashMap();
    private EditText mDatetext = null;
    private EditText mTimeText = null;
    private int countVillage = 0;
    public List<BrandsModel> brandsList = null;
    private String textChanged = "";
    private ArrayList<FarmerMaster> farmersList = new ArrayList<>();
    private ArrayList<String> namesList = new ArrayList<>();
    private ArrayList<String> farmersMobileList = new ArrayList<>();
    private ArrayList<String> farmersNameList = new ArrayList<>();
    View.OnClickListener operationListener = new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.AttributesActivity_Expenses.14
        /* JADX WARN: Removed duplicated region for block: B:102:0x0844 A[Catch: Exception -> 0x0a7e, TRY_ENTER, TryCatch #0 {Exception -> 0x0a7e, blocks: (B:6:0x0031, B:9:0x003e, B:11:0x0048, B:14:0x0050, B:16:0x0080, B:18:0x00a8, B:21:0x0151, B:22:0x0180, B:24:0x0186, B:26:0x01b6, B:28:0x01de, B:30:0x0287, B:31:0x02b6, B:33:0x02bc, B:35:0x02ec, B:37:0x0314, B:39:0x03bd, B:40:0x03ec, B:45:0x04a7, B:47:0x04ad, B:49:0x04b3, B:51:0x04b9, B:52:0x087d, B:54:0x0893, B:55:0x08a8, B:57:0x08c6, B:60:0x08de, B:61:0x08f9, B:63:0x090d, B:65:0x09c6, B:67:0x04be, B:70:0x04c8, B:72:0x04f8, B:74:0x0520, B:75:0x057a, B:76:0x05e1, B:78:0x05e7, B:80:0x0617, B:82:0x0640, B:83:0x069a, B:84:0x0701, B:86:0x0707, B:88:0x0737, B:90:0x0760, B:91:0x07ba, B:92:0x0823, B:94:0x0829, B:96:0x082f, B:98:0x0835, B:99:0x0839, B:102:0x0844, B:103:0x0853, B:105:0x0859, B:106:0x0868, B:108:0x086e), top: B:5:0x0031 }] */
        /* JADX WARN: Removed duplicated region for block: B:105:0x0859 A[Catch: Exception -> 0x0a7e, TryCatch #0 {Exception -> 0x0a7e, blocks: (B:6:0x0031, B:9:0x003e, B:11:0x0048, B:14:0x0050, B:16:0x0080, B:18:0x00a8, B:21:0x0151, B:22:0x0180, B:24:0x0186, B:26:0x01b6, B:28:0x01de, B:30:0x0287, B:31:0x02b6, B:33:0x02bc, B:35:0x02ec, B:37:0x0314, B:39:0x03bd, B:40:0x03ec, B:45:0x04a7, B:47:0x04ad, B:49:0x04b3, B:51:0x04b9, B:52:0x087d, B:54:0x0893, B:55:0x08a8, B:57:0x08c6, B:60:0x08de, B:61:0x08f9, B:63:0x090d, B:65:0x09c6, B:67:0x04be, B:70:0x04c8, B:72:0x04f8, B:74:0x0520, B:75:0x057a, B:76:0x05e1, B:78:0x05e7, B:80:0x0617, B:82:0x0640, B:83:0x069a, B:84:0x0701, B:86:0x0707, B:88:0x0737, B:90:0x0760, B:91:0x07ba, B:92:0x0823, B:94:0x0829, B:96:0x082f, B:98:0x0835, B:99:0x0839, B:102:0x0844, B:103:0x0853, B:105:0x0859, B:106:0x0868, B:108:0x086e), top: B:5:0x0031 }] */
        /* JADX WARN: Removed duplicated region for block: B:108:0x086e A[Catch: Exception -> 0x0a7e, TryCatch #0 {Exception -> 0x0a7e, blocks: (B:6:0x0031, B:9:0x003e, B:11:0x0048, B:14:0x0050, B:16:0x0080, B:18:0x00a8, B:21:0x0151, B:22:0x0180, B:24:0x0186, B:26:0x01b6, B:28:0x01de, B:30:0x0287, B:31:0x02b6, B:33:0x02bc, B:35:0x02ec, B:37:0x0314, B:39:0x03bd, B:40:0x03ec, B:45:0x04a7, B:47:0x04ad, B:49:0x04b3, B:51:0x04b9, B:52:0x087d, B:54:0x0893, B:55:0x08a8, B:57:0x08c6, B:60:0x08de, B:61:0x08f9, B:63:0x090d, B:65:0x09c6, B:67:0x04be, B:70:0x04c8, B:72:0x04f8, B:74:0x0520, B:75:0x057a, B:76:0x05e1, B:78:0x05e7, B:80:0x0617, B:82:0x0640, B:83:0x069a, B:84:0x0701, B:86:0x0707, B:88:0x0737, B:90:0x0760, B:91:0x07ba, B:92:0x0823, B:94:0x0829, B:96:0x082f, B:98:0x0835, B:99:0x0839, B:102:0x0844, B:103:0x0853, B:105:0x0859, B:106:0x0868, B:108:0x086e), top: B:5:0x0031 }] */
        /* JADX WARN: Removed duplicated region for block: B:24:0x0186 A[Catch: Exception -> 0x0a7e, TryCatch #0 {Exception -> 0x0a7e, blocks: (B:6:0x0031, B:9:0x003e, B:11:0x0048, B:14:0x0050, B:16:0x0080, B:18:0x00a8, B:21:0x0151, B:22:0x0180, B:24:0x0186, B:26:0x01b6, B:28:0x01de, B:30:0x0287, B:31:0x02b6, B:33:0x02bc, B:35:0x02ec, B:37:0x0314, B:39:0x03bd, B:40:0x03ec, B:45:0x04a7, B:47:0x04ad, B:49:0x04b3, B:51:0x04b9, B:52:0x087d, B:54:0x0893, B:55:0x08a8, B:57:0x08c6, B:60:0x08de, B:61:0x08f9, B:63:0x090d, B:65:0x09c6, B:67:0x04be, B:70:0x04c8, B:72:0x04f8, B:74:0x0520, B:75:0x057a, B:76:0x05e1, B:78:0x05e7, B:80:0x0617, B:82:0x0640, B:83:0x069a, B:84:0x0701, B:86:0x0707, B:88:0x0737, B:90:0x0760, B:91:0x07ba, B:92:0x0823, B:94:0x0829, B:96:0x082f, B:98:0x0835, B:99:0x0839, B:102:0x0844, B:103:0x0853, B:105:0x0859, B:106:0x0868, B:108:0x086e), top: B:5:0x0031 }] */
        /* JADX WARN: Removed duplicated region for block: B:33:0x02bc A[Catch: Exception -> 0x0a7e, TryCatch #0 {Exception -> 0x0a7e, blocks: (B:6:0x0031, B:9:0x003e, B:11:0x0048, B:14:0x0050, B:16:0x0080, B:18:0x00a8, B:21:0x0151, B:22:0x0180, B:24:0x0186, B:26:0x01b6, B:28:0x01de, B:30:0x0287, B:31:0x02b6, B:33:0x02bc, B:35:0x02ec, B:37:0x0314, B:39:0x03bd, B:40:0x03ec, B:45:0x04a7, B:47:0x04ad, B:49:0x04b3, B:51:0x04b9, B:52:0x087d, B:54:0x0893, B:55:0x08a8, B:57:0x08c6, B:60:0x08de, B:61:0x08f9, B:63:0x090d, B:65:0x09c6, B:67:0x04be, B:70:0x04c8, B:72:0x04f8, B:74:0x0520, B:75:0x057a, B:76:0x05e1, B:78:0x05e7, B:80:0x0617, B:82:0x0640, B:83:0x069a, B:84:0x0701, B:86:0x0707, B:88:0x0737, B:90:0x0760, B:91:0x07ba, B:92:0x0823, B:94:0x0829, B:96:0x082f, B:98:0x0835, B:99:0x0839, B:102:0x0844, B:103:0x0853, B:105:0x0859, B:106:0x0868, B:108:0x086e), top: B:5:0x0031 }] */
        /* JADX WARN: Removed duplicated region for block: B:78:0x05e7 A[Catch: Exception -> 0x0a7e, TryCatch #0 {Exception -> 0x0a7e, blocks: (B:6:0x0031, B:9:0x003e, B:11:0x0048, B:14:0x0050, B:16:0x0080, B:18:0x00a8, B:21:0x0151, B:22:0x0180, B:24:0x0186, B:26:0x01b6, B:28:0x01de, B:30:0x0287, B:31:0x02b6, B:33:0x02bc, B:35:0x02ec, B:37:0x0314, B:39:0x03bd, B:40:0x03ec, B:45:0x04a7, B:47:0x04ad, B:49:0x04b3, B:51:0x04b9, B:52:0x087d, B:54:0x0893, B:55:0x08a8, B:57:0x08c6, B:60:0x08de, B:61:0x08f9, B:63:0x090d, B:65:0x09c6, B:67:0x04be, B:70:0x04c8, B:72:0x04f8, B:74:0x0520, B:75:0x057a, B:76:0x05e1, B:78:0x05e7, B:80:0x0617, B:82:0x0640, B:83:0x069a, B:84:0x0701, B:86:0x0707, B:88:0x0737, B:90:0x0760, B:91:0x07ba, B:92:0x0823, B:94:0x0829, B:96:0x082f, B:98:0x0835, B:99:0x0839, B:102:0x0844, B:103:0x0853, B:105:0x0859, B:106:0x0868, B:108:0x086e), top: B:5:0x0031 }] */
        /* JADX WARN: Removed duplicated region for block: B:86:0x0707 A[Catch: Exception -> 0x0a7e, TryCatch #0 {Exception -> 0x0a7e, blocks: (B:6:0x0031, B:9:0x003e, B:11:0x0048, B:14:0x0050, B:16:0x0080, B:18:0x00a8, B:21:0x0151, B:22:0x0180, B:24:0x0186, B:26:0x01b6, B:28:0x01de, B:30:0x0287, B:31:0x02b6, B:33:0x02bc, B:35:0x02ec, B:37:0x0314, B:39:0x03bd, B:40:0x03ec, B:45:0x04a7, B:47:0x04ad, B:49:0x04b3, B:51:0x04b9, B:52:0x087d, B:54:0x0893, B:55:0x08a8, B:57:0x08c6, B:60:0x08de, B:61:0x08f9, B:63:0x090d, B:65:0x09c6, B:67:0x04be, B:70:0x04c8, B:72:0x04f8, B:74:0x0520, B:75:0x057a, B:76:0x05e1, B:78:0x05e7, B:80:0x0617, B:82:0x0640, B:83:0x069a, B:84:0x0701, B:86:0x0707, B:88:0x0737, B:90:0x0760, B:91:0x07ba, B:92:0x0823, B:94:0x0829, B:96:0x082f, B:98:0x0835, B:99:0x0839, B:102:0x0844, B:103:0x0853, B:105:0x0859, B:106:0x0868, B:108:0x086e), top: B:5:0x0031 }] */
        /* JADX WARN: Removed duplicated region for block: B:94:0x0829 A[Catch: Exception -> 0x0a7e, TryCatch #0 {Exception -> 0x0a7e, blocks: (B:6:0x0031, B:9:0x003e, B:11:0x0048, B:14:0x0050, B:16:0x0080, B:18:0x00a8, B:21:0x0151, B:22:0x0180, B:24:0x0186, B:26:0x01b6, B:28:0x01de, B:30:0x0287, B:31:0x02b6, B:33:0x02bc, B:35:0x02ec, B:37:0x0314, B:39:0x03bd, B:40:0x03ec, B:45:0x04a7, B:47:0x04ad, B:49:0x04b3, B:51:0x04b9, B:52:0x087d, B:54:0x0893, B:55:0x08a8, B:57:0x08c6, B:60:0x08de, B:61:0x08f9, B:63:0x090d, B:65:0x09c6, B:67:0x04be, B:70:0x04c8, B:72:0x04f8, B:74:0x0520, B:75:0x057a, B:76:0x05e1, B:78:0x05e7, B:80:0x0617, B:82:0x0640, B:83:0x069a, B:84:0x0701, B:86:0x0707, B:88:0x0737, B:90:0x0760, B:91:0x07ba, B:92:0x0823, B:94:0x0829, B:96:0x082f, B:98:0x0835, B:99:0x0839, B:102:0x0844, B:103:0x0853, B:105:0x0859, B:106:0x0868, B:108:0x086e), top: B:5:0x0031 }] */
        @Override // android.view.View.OnClickListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onClick(android.view.View r30) {
            /*
                Method dump skipped, instructions count: 2698
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.fo.AttributesActivity_Expenses.AnonymousClass14.onClick(android.view.View):void");
        }
    };
    View.OnClickListener operationListenerMultiSelect = new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.AttributesActivity_Expenses.15
        /* JADX WARN: Removed duplicated region for block: B:101:0x08c8 A[Catch: Exception -> 0x0a3d, TryCatch #0 {Exception -> 0x0a3d, blocks: (B:6:0x0038, B:9:0x0044, B:11:0x004e, B:14:0x0056, B:16:0x0086, B:18:0x00ae, B:21:0x0157, B:22:0x0183, B:24:0x0189, B:26:0x01b9, B:28:0x01e1, B:30:0x028a, B:31:0x02b9, B:33:0x02bf, B:35:0x02ef, B:37:0x0317, B:39:0x03c0, B:40:0x03ef, B:42:0x03ff, B:45:0x0417, B:46:0x042c, B:48:0x049a, B:51:0x04a6, B:53:0x0528, B:58:0x0548, B:60:0x054e, B:62:0x0554, B:64:0x055a, B:65:0x091c, B:67:0x0990, B:70:0x099c, B:72:0x0a1e, B:74:0x055f, B:77:0x0569, B:79:0x0599, B:81:0x05c1, B:82:0x061b, B:83:0x0682, B:85:0x0688, B:87:0x06b8, B:89:0x06e0, B:90:0x073a, B:91:0x07a1, B:93:0x07a7, B:95:0x07d7, B:97:0x07ff, B:98:0x0859, B:99:0x08c2, B:101:0x08c8, B:103:0x08ce, B:105:0x08d4, B:106:0x08d8, B:109:0x08e3, B:110:0x08f2, B:112:0x08f8, B:113:0x0907, B:115:0x090d), top: B:5:0x0038 }] */
        /* JADX WARN: Removed duplicated region for block: B:109:0x08e3 A[Catch: Exception -> 0x0a3d, TRY_ENTER, TryCatch #0 {Exception -> 0x0a3d, blocks: (B:6:0x0038, B:9:0x0044, B:11:0x004e, B:14:0x0056, B:16:0x0086, B:18:0x00ae, B:21:0x0157, B:22:0x0183, B:24:0x0189, B:26:0x01b9, B:28:0x01e1, B:30:0x028a, B:31:0x02b9, B:33:0x02bf, B:35:0x02ef, B:37:0x0317, B:39:0x03c0, B:40:0x03ef, B:42:0x03ff, B:45:0x0417, B:46:0x042c, B:48:0x049a, B:51:0x04a6, B:53:0x0528, B:58:0x0548, B:60:0x054e, B:62:0x0554, B:64:0x055a, B:65:0x091c, B:67:0x0990, B:70:0x099c, B:72:0x0a1e, B:74:0x055f, B:77:0x0569, B:79:0x0599, B:81:0x05c1, B:82:0x061b, B:83:0x0682, B:85:0x0688, B:87:0x06b8, B:89:0x06e0, B:90:0x073a, B:91:0x07a1, B:93:0x07a7, B:95:0x07d7, B:97:0x07ff, B:98:0x0859, B:99:0x08c2, B:101:0x08c8, B:103:0x08ce, B:105:0x08d4, B:106:0x08d8, B:109:0x08e3, B:110:0x08f2, B:112:0x08f8, B:113:0x0907, B:115:0x090d), top: B:5:0x0038 }] */
        /* JADX WARN: Removed duplicated region for block: B:112:0x08f8 A[Catch: Exception -> 0x0a3d, TryCatch #0 {Exception -> 0x0a3d, blocks: (B:6:0x0038, B:9:0x0044, B:11:0x004e, B:14:0x0056, B:16:0x0086, B:18:0x00ae, B:21:0x0157, B:22:0x0183, B:24:0x0189, B:26:0x01b9, B:28:0x01e1, B:30:0x028a, B:31:0x02b9, B:33:0x02bf, B:35:0x02ef, B:37:0x0317, B:39:0x03c0, B:40:0x03ef, B:42:0x03ff, B:45:0x0417, B:46:0x042c, B:48:0x049a, B:51:0x04a6, B:53:0x0528, B:58:0x0548, B:60:0x054e, B:62:0x0554, B:64:0x055a, B:65:0x091c, B:67:0x0990, B:70:0x099c, B:72:0x0a1e, B:74:0x055f, B:77:0x0569, B:79:0x0599, B:81:0x05c1, B:82:0x061b, B:83:0x0682, B:85:0x0688, B:87:0x06b8, B:89:0x06e0, B:90:0x073a, B:91:0x07a1, B:93:0x07a7, B:95:0x07d7, B:97:0x07ff, B:98:0x0859, B:99:0x08c2, B:101:0x08c8, B:103:0x08ce, B:105:0x08d4, B:106:0x08d8, B:109:0x08e3, B:110:0x08f2, B:112:0x08f8, B:113:0x0907, B:115:0x090d), top: B:5:0x0038 }] */
        /* JADX WARN: Removed duplicated region for block: B:115:0x090d A[Catch: Exception -> 0x0a3d, TryCatch #0 {Exception -> 0x0a3d, blocks: (B:6:0x0038, B:9:0x0044, B:11:0x004e, B:14:0x0056, B:16:0x0086, B:18:0x00ae, B:21:0x0157, B:22:0x0183, B:24:0x0189, B:26:0x01b9, B:28:0x01e1, B:30:0x028a, B:31:0x02b9, B:33:0x02bf, B:35:0x02ef, B:37:0x0317, B:39:0x03c0, B:40:0x03ef, B:42:0x03ff, B:45:0x0417, B:46:0x042c, B:48:0x049a, B:51:0x04a6, B:53:0x0528, B:58:0x0548, B:60:0x054e, B:62:0x0554, B:64:0x055a, B:65:0x091c, B:67:0x0990, B:70:0x099c, B:72:0x0a1e, B:74:0x055f, B:77:0x0569, B:79:0x0599, B:81:0x05c1, B:82:0x061b, B:83:0x0682, B:85:0x0688, B:87:0x06b8, B:89:0x06e0, B:90:0x073a, B:91:0x07a1, B:93:0x07a7, B:95:0x07d7, B:97:0x07ff, B:98:0x0859, B:99:0x08c2, B:101:0x08c8, B:103:0x08ce, B:105:0x08d4, B:106:0x08d8, B:109:0x08e3, B:110:0x08f2, B:112:0x08f8, B:113:0x0907, B:115:0x090d), top: B:5:0x0038 }] */
        /* JADX WARN: Removed duplicated region for block: B:24:0x0189 A[Catch: Exception -> 0x0a3d, TryCatch #0 {Exception -> 0x0a3d, blocks: (B:6:0x0038, B:9:0x0044, B:11:0x004e, B:14:0x0056, B:16:0x0086, B:18:0x00ae, B:21:0x0157, B:22:0x0183, B:24:0x0189, B:26:0x01b9, B:28:0x01e1, B:30:0x028a, B:31:0x02b9, B:33:0x02bf, B:35:0x02ef, B:37:0x0317, B:39:0x03c0, B:40:0x03ef, B:42:0x03ff, B:45:0x0417, B:46:0x042c, B:48:0x049a, B:51:0x04a6, B:53:0x0528, B:58:0x0548, B:60:0x054e, B:62:0x0554, B:64:0x055a, B:65:0x091c, B:67:0x0990, B:70:0x099c, B:72:0x0a1e, B:74:0x055f, B:77:0x0569, B:79:0x0599, B:81:0x05c1, B:82:0x061b, B:83:0x0682, B:85:0x0688, B:87:0x06b8, B:89:0x06e0, B:90:0x073a, B:91:0x07a1, B:93:0x07a7, B:95:0x07d7, B:97:0x07ff, B:98:0x0859, B:99:0x08c2, B:101:0x08c8, B:103:0x08ce, B:105:0x08d4, B:106:0x08d8, B:109:0x08e3, B:110:0x08f2, B:112:0x08f8, B:113:0x0907, B:115:0x090d), top: B:5:0x0038 }] */
        /* JADX WARN: Removed duplicated region for block: B:33:0x02bf A[Catch: Exception -> 0x0a3d, TryCatch #0 {Exception -> 0x0a3d, blocks: (B:6:0x0038, B:9:0x0044, B:11:0x004e, B:14:0x0056, B:16:0x0086, B:18:0x00ae, B:21:0x0157, B:22:0x0183, B:24:0x0189, B:26:0x01b9, B:28:0x01e1, B:30:0x028a, B:31:0x02b9, B:33:0x02bf, B:35:0x02ef, B:37:0x0317, B:39:0x03c0, B:40:0x03ef, B:42:0x03ff, B:45:0x0417, B:46:0x042c, B:48:0x049a, B:51:0x04a6, B:53:0x0528, B:58:0x0548, B:60:0x054e, B:62:0x0554, B:64:0x055a, B:65:0x091c, B:67:0x0990, B:70:0x099c, B:72:0x0a1e, B:74:0x055f, B:77:0x0569, B:79:0x0599, B:81:0x05c1, B:82:0x061b, B:83:0x0682, B:85:0x0688, B:87:0x06b8, B:89:0x06e0, B:90:0x073a, B:91:0x07a1, B:93:0x07a7, B:95:0x07d7, B:97:0x07ff, B:98:0x0859, B:99:0x08c2, B:101:0x08c8, B:103:0x08ce, B:105:0x08d4, B:106:0x08d8, B:109:0x08e3, B:110:0x08f2, B:112:0x08f8, B:113:0x0907, B:115:0x090d), top: B:5:0x0038 }] */
        /* JADX WARN: Removed duplicated region for block: B:42:0x03ff A[Catch: Exception -> 0x0a3d, TryCatch #0 {Exception -> 0x0a3d, blocks: (B:6:0x0038, B:9:0x0044, B:11:0x004e, B:14:0x0056, B:16:0x0086, B:18:0x00ae, B:21:0x0157, B:22:0x0183, B:24:0x0189, B:26:0x01b9, B:28:0x01e1, B:30:0x028a, B:31:0x02b9, B:33:0x02bf, B:35:0x02ef, B:37:0x0317, B:39:0x03c0, B:40:0x03ef, B:42:0x03ff, B:45:0x0417, B:46:0x042c, B:48:0x049a, B:51:0x04a6, B:53:0x0528, B:58:0x0548, B:60:0x054e, B:62:0x0554, B:64:0x055a, B:65:0x091c, B:67:0x0990, B:70:0x099c, B:72:0x0a1e, B:74:0x055f, B:77:0x0569, B:79:0x0599, B:81:0x05c1, B:82:0x061b, B:83:0x0682, B:85:0x0688, B:87:0x06b8, B:89:0x06e0, B:90:0x073a, B:91:0x07a1, B:93:0x07a7, B:95:0x07d7, B:97:0x07ff, B:98:0x0859, B:99:0x08c2, B:101:0x08c8, B:103:0x08ce, B:105:0x08d4, B:106:0x08d8, B:109:0x08e3, B:110:0x08f2, B:112:0x08f8, B:113:0x0907, B:115:0x090d), top: B:5:0x0038 }] */
        /* JADX WARN: Removed duplicated region for block: B:48:0x049a A[Catch: Exception -> 0x0a3d, TryCatch #0 {Exception -> 0x0a3d, blocks: (B:6:0x0038, B:9:0x0044, B:11:0x004e, B:14:0x0056, B:16:0x0086, B:18:0x00ae, B:21:0x0157, B:22:0x0183, B:24:0x0189, B:26:0x01b9, B:28:0x01e1, B:30:0x028a, B:31:0x02b9, B:33:0x02bf, B:35:0x02ef, B:37:0x0317, B:39:0x03c0, B:40:0x03ef, B:42:0x03ff, B:45:0x0417, B:46:0x042c, B:48:0x049a, B:51:0x04a6, B:53:0x0528, B:58:0x0548, B:60:0x054e, B:62:0x0554, B:64:0x055a, B:65:0x091c, B:67:0x0990, B:70:0x099c, B:72:0x0a1e, B:74:0x055f, B:77:0x0569, B:79:0x0599, B:81:0x05c1, B:82:0x061b, B:83:0x0682, B:85:0x0688, B:87:0x06b8, B:89:0x06e0, B:90:0x073a, B:91:0x07a1, B:93:0x07a7, B:95:0x07d7, B:97:0x07ff, B:98:0x0859, B:99:0x08c2, B:101:0x08c8, B:103:0x08ce, B:105:0x08d4, B:106:0x08d8, B:109:0x08e3, B:110:0x08f2, B:112:0x08f8, B:113:0x0907, B:115:0x090d), top: B:5:0x0038 }] */
        /* JADX WARN: Removed duplicated region for block: B:85:0x0688 A[Catch: Exception -> 0x0a3d, TryCatch #0 {Exception -> 0x0a3d, blocks: (B:6:0x0038, B:9:0x0044, B:11:0x004e, B:14:0x0056, B:16:0x0086, B:18:0x00ae, B:21:0x0157, B:22:0x0183, B:24:0x0189, B:26:0x01b9, B:28:0x01e1, B:30:0x028a, B:31:0x02b9, B:33:0x02bf, B:35:0x02ef, B:37:0x0317, B:39:0x03c0, B:40:0x03ef, B:42:0x03ff, B:45:0x0417, B:46:0x042c, B:48:0x049a, B:51:0x04a6, B:53:0x0528, B:58:0x0548, B:60:0x054e, B:62:0x0554, B:64:0x055a, B:65:0x091c, B:67:0x0990, B:70:0x099c, B:72:0x0a1e, B:74:0x055f, B:77:0x0569, B:79:0x0599, B:81:0x05c1, B:82:0x061b, B:83:0x0682, B:85:0x0688, B:87:0x06b8, B:89:0x06e0, B:90:0x073a, B:91:0x07a1, B:93:0x07a7, B:95:0x07d7, B:97:0x07ff, B:98:0x0859, B:99:0x08c2, B:101:0x08c8, B:103:0x08ce, B:105:0x08d4, B:106:0x08d8, B:109:0x08e3, B:110:0x08f2, B:112:0x08f8, B:113:0x0907, B:115:0x090d), top: B:5:0x0038 }] */
        /* JADX WARN: Removed duplicated region for block: B:93:0x07a7 A[Catch: Exception -> 0x0a3d, TryCatch #0 {Exception -> 0x0a3d, blocks: (B:6:0x0038, B:9:0x0044, B:11:0x004e, B:14:0x0056, B:16:0x0086, B:18:0x00ae, B:21:0x0157, B:22:0x0183, B:24:0x0189, B:26:0x01b9, B:28:0x01e1, B:30:0x028a, B:31:0x02b9, B:33:0x02bf, B:35:0x02ef, B:37:0x0317, B:39:0x03c0, B:40:0x03ef, B:42:0x03ff, B:45:0x0417, B:46:0x042c, B:48:0x049a, B:51:0x04a6, B:53:0x0528, B:58:0x0548, B:60:0x054e, B:62:0x0554, B:64:0x055a, B:65:0x091c, B:67:0x0990, B:70:0x099c, B:72:0x0a1e, B:74:0x055f, B:77:0x0569, B:79:0x0599, B:81:0x05c1, B:82:0x061b, B:83:0x0682, B:85:0x0688, B:87:0x06b8, B:89:0x06e0, B:90:0x073a, B:91:0x07a1, B:93:0x07a7, B:95:0x07d7, B:97:0x07ff, B:98:0x0859, B:99:0x08c2, B:101:0x08c8, B:103:0x08ce, B:105:0x08d4, B:106:0x08d8, B:109:0x08e3, B:110:0x08f2, B:112:0x08f8, B:113:0x0907, B:115:0x090d), top: B:5:0x0038 }] */
        @Override // android.view.View.OnClickListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onClick(android.view.View r33) {
            /*
                Method dump skipped, instructions count: 2635
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.fo.AttributesActivity_Expenses.AnonymousClass15.onClick(android.view.View):void");
        }
    };
    View.OnClickListener datesListener = new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.AttributesActivity_Expenses.16
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AttributesActivity_Expenses.this.datePos = view.getId();
            AttributesActivity_Expenses.this.showDialog(0);
        }
    };
    View.OnClickListener timesListener = new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.AttributesActivity_Expenses.17
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AttributesActivity_Expenses.this.timePos = view.getId();
            AttributesActivity_Expenses.this.showDialog(1);
        }
    };
    private DatePickerDialog.OnDateSetListener mDateSetListener = new DatePickerDialog.OnDateSetListener() { // from class: com.conceptglobal.pmc.fo.AttributesActivity_Expenses.19
        @Override // android.app.DatePickerDialog.OnDateSetListener
        public void onDateSet(DatePicker datePicker, int i, int i2, int i3) {
            AttributesActivity_Expenses.this.mYear = i;
            AttributesActivity_Expenses.this.mMonth = i2;
            AttributesActivity_Expenses.this.mDay = i3;
            try {
                if (new SimpleDateFormat("yyyy-MM-dd").parse(i + "-" + (i2 + 1) + "-" + i3).compareTo(new Date()) < 30) {
                    AttributesActivity_Expenses.this.updateDisplay();
                } else {
                    Toast.makeText(AttributesActivity_Expenses.this.getApplicationContext(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectProperDate()), 1).show();
                }
            } catch (Exception e) {
                PLog.e(AttributesActivity_Expenses.TAG, e);
            }
        }
    };
    private TimePickerDialog.OnTimeSetListener mTimeSetListener = new TimePickerDialog.OnTimeSetListener() { // from class: com.conceptglobal.pmc.fo.AttributesActivity_Expenses.20
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
            ((TextView) AttributesActivity_Expenses.mEntryArr.get(AttributesActivity_Expenses.this.timePos)).setText(i + " : " + str2 + " : " + str);
        }
    };
    CompressListener listener = new CompressListener() { // from class: com.conceptglobal.pmc.fo.AttributesActivity_Expenses.21
        @Override // com.conceptglobal.pmc.utils.CompressListener
        public void onComprssCompleteListener(String str) {
            UtilDeclarations.loadDiskThumbnail(AttributesActivity_Expenses.this.context, AttributesActivity_Expenses.this.imageView, new File(str));
        }
    };
    BroadcastReceiver mReceiver = new BroadcastReceiver() { // from class: com.conceptglobal.pmc.fo.AttributesActivity_Expenses.24
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (AttributesActivity_Expenses.this.lastSelectedattributeModel != null) {
                AttributesActivity_Expenses attributesActivity_Expenses = AttributesActivity_Expenses.this;
                attributesActivity_Expenses.showAddVillageDetailsDialog(attributesActivity_Expenses.lastSelectedView, AttributesActivity_Expenses.this.lastSelectedid, AttributesActivity_Expenses.this.lastSelectedattributeModel.getDisplayType(), AttributesActivity_Expenses.this.lastSelectedattributeModel, (HashMap) intent.getExtras().get("FarmersList"));
            }
        }
    };

    private void setListeners() {
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
    }

    static /* synthetic */ int access$2410(AttributesActivity_Expenses attributesActivity_Expenses) {
        int i = attributesActivity_Expenses.mForOperations;
        attributesActivity_Expenses.mForOperations = i - 1;
        return i;
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(R.layout.todo_attribute_info_layout);
        this.context = this;
        this.mLocationUtils = new LocationUtils();
        ConstantsPMC.getInstance().getLanguageConfigurations(this.context);
        init();
        setListeners();
        getData();
        setData();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("FARMERS_Result");
        LocalBroadcastManager.getInstance(this).registerReceiver(this.mReceiver, intentFilter);
        initWebViews();
    }

    private void initWebViews() {
        if (activityId == 1555) {
            this.atrrributesView.setVisibility(8);
            webView.setVisibility(0);
            loadData();
        } else {
            this.atrrributesView.setVisibility(0);
            webView.setVisibility(8);
        }
    }

    private void init() {
        this.cropChageListener = this;
        ctx = this;
        this.mAddDynamicLinear = (LinearLayout) findViewById(R.id.ll_infalter);
        RelativeLayout relativeLayout = (RelativeLayout) findViewById(R.id.rl_timer);
        this.rl_timer = relativeLayout;
        relativeLayout.setVisibility(8);
        this.textActivityName = (TextView) findViewById(R.id.activityNameText);
        this.atrrributesView = (ScrollView) findViewById(R.id.ield_inspections_opr_scroll);
        webView = (WebView) findViewById(R.id.webView);
        this.updateDOS = null;
        this.queries = Queries.getInstance();
        this.getDataFromDB = GetDataFromDB.getInstance();
        if (Items.selectedItemIds != null) {
            Items.selectedItemIds.clear();
            Items.selectedItems.clear();
        }
    }

    private void getData() {
        try {
            Intent intent = getIntent();
            this.assignmentDetails = (AssignmentActivityDetailsModel) getIntent().getExtras().getParcelable("MODELCLASS");
            this.ismba = intent.getIntExtra(ConstantDeclarations.getInstance().getKeyIsMba(), 0);
            this.farmerId = intent.getStringExtra(ConstantDeclarations.getInstance().getKEYFARMERID());
            this.isSelfassign = intent.getIntExtra("ISSELFASSIGN", 0);
            this.segmentId = intent.getIntExtra("SEGMENTID", 0);
            activityId = intent.getIntExtra(ConstantDeclarations.getInstance().getKEYACTIVITYID(), 0);
            this.isPlanned = intent.getIntExtra(ConstantDeclarations.getInstance().getKEYISPLANNED(), 0);
            this.activityName = intent.getStringExtra("ACTIVITYNAME");
            this.activityAssignmentId = intent.getIntExtra("ActivityAssignmentId", 0);
            transId = intent.getLongExtra("TRANSID", 0L);
            this.assignmentID = intent.getIntExtra("AssignmentId", 0);
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
        loadAttributes(activityId);
        Calendar calendar = Calendar.getInstance();
        this.mDay = calendar.get(5);
        this.mMonth = calendar.get(2);
        this.mYear = calendar.get(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadAttributes(int i) {
        try {
            this.ruleAttributeIds = GetDataFromDB.getInstance().getRuleAttributeIds(Queries.getInstance().getRuleDetails(i));
            List<AttributeModel> pMCActivityAttributes = GetDataFromDB.getInstance().getPMCActivityAttributes(Queries.getInstance().getPMCExpenseActivityAttributeQueryUpdated(this.farmerId, activityId, this.activityAssignmentId, transId));
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

    /* JADX WARN: Can't wrap try/catch for region: R(45:0|1|(1:3)|4|(5:6|(4:250|251|(1:261)(2:255|(1:257)(1:260))|258)(2:8|(1:249)(1:12))|13|(2:243|(1:248)(1:247))(1:17)|18)(2:264|(7:266|(4:268|269|270|(2:274|(3:277|278|275)))|282|283|284|(2:286|(7:288|(5:308|309|310|311|312)(1:290)|291|(4:294|(4:296|(1:298)|299|300)(1:302)|301|292)|303|304|(1:306)(1:307)))|320)(42:325|(12:327|328|329|(1:335)|336|(2:356|(1:361)(1:360))(1:340)|341|(1:347)|348|(1:350)|351|(1:353))(2:364|(2:366|(1:371)(1:370))(41:372|(4:374|(2:376|(3:378|(1:384)(1:382)|383))(1:386)|385|383)(3:387|(10:389|390|391|392|(1:394)(1:411)|395|(1:397)|398|(1:410)(2:402|(1:409)(1:406))|407)(3:415|(3:417|(1:429)(2:421|(1:428)(1:425))|426)(2:430|(3:432|(1:443)(2:436|(1:442)(1:440))|441)(4:444|(3:446|(1:450)|451)(2:454|(3:456|(1:467)(2:460|(1:466)(1:464))|465)(2:468|(11:470|(1:505)|474|(1:480)|481|(1:483)(2:502|(1:504))|484|(1:501)(1:488)|489|(1:500)(2:493|(1:499)(1:497))|498)(4:506|(2:508|(1:519)(2:512|(1:518)(1:516)))(2:520|(2:522|(2:532|(1:539)(1:538))(2:526|(1:531)(1:530)))(2:540|(41:542|(2:544|(1:546)(1:547))|548|20|(1:22)(1:242)|23|(1:25)(2:195|(1:197)(36:198|(1:200)(2:202|(1:204)(35:205|(1:207)(2:209|(1:211)(2:212|(1:214)(2:215|(1:217)(2:218|(33:220|28|29|30|(1:32)(2:153|(1:155)(2:156|(1:158)(2:159|(1:161)(2:162|(1:164)(2:165|(1:167)(2:168|(1:170)(2:171|(1:173)(2:174|(1:176)(2:177|(1:179)(2:180|(1:182)(2:183|(1:185)(2:186|(1:188)(2:189|(1:191)(2:192|(1:194)))))))))))))))|33|(1:41)|42|(3:44|(1:46)(1:151)|47)(1:152)|48|49|50|51|52|53|54|55|(1:57)(1:142)|58|59|60|61|62|63|64|65|(1:67)(2:116|(1:118)(3:119|(3:125|126|(1:130))|134))|68|(1:70)|71|(1:73)(2:77|(1:79)(2:80|(1:82)(2:83|(1:85)(2:86|(1:88)(2:89|(1:91)(2:92|(1:94)(2:95|(1:97)(2:98|(1:100)(2:101|(1:103)(2:104|(1:106)(2:107|(1:109)(2:110|(1:112)(2:113|(1:115))))))))))))))|74|75)(34:221|(1:223)(2:225|(1:227)(3:228|(1:230)(2:232|(1:234)(33:235|(1:237)(2:239|(1:241))|238|30|(0)(0)|33|(4:35|37|39|41)|42|(0)(0)|48|49|50|51|52|53|54|55|(0)(0)|58|59|60|61|62|63|64|65|(0)(0)|68|(0)|71|(0)(0)|74|75))|231))|224|29|30|(0)(0)|33|(0)|42|(0)(0)|48|49|50|51|52|53|54|55|(0)(0)|58|59|60|61|62|63|64|65|(0)(0)|68|(0)|71|(0)(0)|74|75)))))|208|28|29|30|(0)(0)|33|(0)|42|(0)(0)|48|49|50|51|52|53|54|55|(0)(0)|58|59|60|61|62|63|64|65|(0)(0)|68|(0)|71|(0)(0)|74|75))|201|27|28|29|30|(0)(0)|33|(0)|42|(0)(0)|48|49|50|51|52|53|54|55|(0)(0)|58|59|60|61|62|63|64|65|(0)(0)|68|(0)|71|(0)(0)|74|75))|26|27|28|29|30|(0)(0)|33|(0)|42|(0)(0)|48|49|50|51|52|53|54|55|(0)(0)|58|59|60|61|62|63|64|65|(0)(0)|68|(0)|71|(0)(0)|74|75)(2:549|(3:551|(2:553|(1:555))|556))))|517|453)))|452|453))|427)|408)|355|20|(0)(0)|23|(0)(0)|26|27|28|29|30|(0)(0)|33|(0)|42|(0)(0)|48|49|50|51|52|53|54|55|(0)(0)|58|59|60|61|62|63|64|65|(0)(0)|68|(0)|71|(0)(0)|74|75))|354|355|20|(0)(0)|23|(0)(0)|26|27|28|29|30|(0)(0)|33|(0)|42|(0)(0)|48|49|50|51|52|53|54|55|(0)(0)|58|59|60|61|62|63|64|65|(0)(0)|68|(0)|71|(0)(0)|74|75))|19|20|(0)(0)|23|(0)(0)|26|27|28|29|30|(0)(0)|33|(0)|42|(0)(0)|48|49|50|51|52|53|54|55|(0)(0)|58|59|60|61|62|63|64|65|(0)(0)|68|(0)|71|(0)(0)|74|75|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x12c0, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x12d9, code lost:
    
        r0.printStackTrace();
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x12c2, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x12c3, code lost:
    
        r17 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x12c6, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x12cb, code lost:
    
        r17 = r5;
        r24 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x12c8, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x12c9, code lost:
    
        r21 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x12d0, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x12d1, code lost:
    
        r21 = r1;
        r17 = r5;
        r24 = r7;
        r20 = r14;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:116:0x12f8  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x1215 A[Catch: Exception -> 0x12c6, TryCatch #11 {Exception -> 0x12c6, blocks: (B:55:0x1205, B:57:0x120f, B:58:0x1219, B:142:0x1215), top: B:54:0x1205 }] */
    /* JADX WARN: Removed duplicated region for block: B:152:0x11dc  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x10a7  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x0f9a  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0ed8  */
    /* JADX WARN: Removed duplicated region for block: B:242:0x0f1d  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0f7d  */
    /* JADX WARN: Removed duplicated region for block: B:294:0x0358 A[Catch: Exception -> 0x03ee, TryCatch #2 {Exception -> 0x03ee, blocks: (B:291:0x0344, B:292:0x0350, B:294:0x0358, B:296:0x0366, B:298:0x038a, B:299:0x0394, B:301:0x03b4, B:304:0x03b7, B:306:0x03bd, B:307:0x03c4, B:315:0x033c, B:320:0x03d8), top: B:284:0x02fe }] */
    /* JADX WARN: Removed duplicated region for block: B:306:0x03bd A[Catch: Exception -> 0x03ee, TryCatch #2 {Exception -> 0x03ee, blocks: (B:291:0x0344, B:292:0x0350, B:294:0x0358, B:296:0x0366, B:298:0x038a, B:299:0x0394, B:301:0x03b4, B:304:0x03b7, B:306:0x03bd, B:307:0x03c4, B:315:0x033c, B:320:0x03d8), top: B:284:0x02fe }] */
    /* JADX WARN: Removed duplicated region for block: B:307:0x03c4 A[Catch: Exception -> 0x03ee, TryCatch #2 {Exception -> 0x03ee, blocks: (B:291:0x0344, B:292:0x0350, B:294:0x0358, B:296:0x0366, B:298:0x038a, B:299:0x0394, B:301:0x03b4, B:304:0x03b7, B:306:0x03bd, B:307:0x03c4, B:315:0x033c, B:320:0x03d8), top: B:284:0x02fe }] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x10a0  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x1161  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x1191  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x120f A[Catch: Exception -> 0x12c6, TryCatch #11 {Exception -> 0x12c6, blocks: (B:55:0x1205, B:57:0x120f, B:58:0x1219, B:142:0x1215), top: B:54:0x1205 }] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x12e1  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x1401  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x141b  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x142f  */
    /* JADX WARN: Type inference failed for: r0v390, types: [android.widget.LinearLayout] */
    /* JADX WARN: Type inference failed for: r0v453, types: [android.widget.LinearLayout] */
    /* JADX WARN: Type inference failed for: r0v454, types: [android.view.View, android.widget.RelativeLayout] */
    /* JADX WARN: Type inference failed for: r15v15 */
    /* JADX WARN: Type inference failed for: r15v19, types: [android.view.View, android.widget.LinearLayout] */
    /* JADX WARN: Type inference failed for: r15v26 */
    /* JADX WARN: Type inference failed for: r63v0, types: [android.widget.LinearLayout] */
    /* JADX WARN: Type inference failed for: r8v16 */
    /* JADX WARN: Type inference failed for: r8v18, types: [android.view.View, android.widget.EditText, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v26 */
    /* JADX WARN: Type inference failed for: r8v4 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void addOperationsDynamicLayout(java.lang.String r58, java.lang.String r59, int r60, java.lang.String r61, final com.conceptglobal.pmc.model.AttributeModel r62, android.widget.LinearLayout r63, boolean r64) {
        /*
            Method dump skipped, instructions count: 5555
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.fo.AttributesActivity_Expenses.addOperationsDynamicLayout(java.lang.String, java.lang.String, int, java.lang.String, com.conceptglobal.pmc.model.AttributeModel, android.widget.LinearLayout, boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAutoCompleteAdapter(ArrayList<String> arrayList, final EditText editText, int i) {
        this.mAutoCompleteTextView.setAdapter(new ArrayAdapter(this, R.layout.layout_dropdown, arrayList));
        UtilDeclarations.dismissProgressDialog();
        this.mAutoCompleteTextView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.conceptglobal.pmc.fo.AttributesActivity_Expenses.11
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j) {
                String[] split = adapterView.getItemAtPosition(i2).toString().split("-");
                AttributesActivity_Expenses.this.mAutoCompleteTextView.setText(split[0].trim());
                AttributesActivity_Expenses.this.mAutoCompleteTextView.setSelection(AttributesActivity_Expenses.this.mAutoCompleteTextView.getText().length());
                editText.setText(split[1].trim());
            }
        });
        this.mAutoCompleteTextViewN.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.conceptglobal.pmc.fo.AttributesActivity_Expenses.12
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j) {
                String[] split = adapterView.getItemAtPosition(i2).toString().split("-");
                AttributesActivity_Expenses.this.mAutoCompleteTextViewN.setText(split[0].trim());
                AttributesActivity_Expenses.this.mAutoCompleteTextViewN.setSelection(AttributesActivity_Expenses.this.mAutoCompleteTextViewN.getText().length());
                editText.setText(split[1].trim());
            }
        });
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
                        if (attributeModel.getControlType().equals("TextBoxND")) {
                            try {
                                Float.parseFloat(mEntryArr.get(i).getText().toString());
                            } catch (Exception unused) {
                            }
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
                    if (attributeModel.getControlType().equals("TextBoxND")) {
                        try {
                            Float.parseFloat(mEntryArr.get(i).getText().toString());
                        } catch (Exception unused2) {
                        }
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
        int cumulativeTotal;
        private EditText editText;
        private long maxvalue;
        private long minValue;
        private AttributeModel obj;

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        private CustomTextWatcher(EditText editText, long j, long j2, AttributeModel attributeModel) {
            this.cumulativeTotal = 0;
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
            int i;
            int intValue;
            EditText editText;
            this.editText.setError(null);
            if (this.obj.getControlType().equalsIgnoreCase("Dropdown")) {
                if (this.obj.getIsKeyAttribute() == 1) {
                    this.obj.setAttributeValue(editable.toString());
                    if (!this.obj.getAttributeValue().equalsIgnoreCase("0") && !this.obj.getAttributeValue().equalsIgnoreCase("")) {
                        if (AttributesActivity_Expenses.this.getDataFromDB.getKeyAttributeId(AttributesActivity_Expenses.activityId, AttributesActivity_Expenses.this.getDataFromDB.getDropdownDisplayField(this.obj), this.obj.getAttributeId()) != 0) {
                            try {
                                ArrayList arrayList = new ArrayList();
                                List<AttributeModel> pMCActivityAttributes = GetDataFromDB.getInstance().getPMCActivityAttributes(Queries.getInstance().getPMCActivityKeyAttributes(AttributesActivity_Expenses.activityId, AttributesActivity_Expenses.this.getDataFromDB.getDropdownDisplayField(this.obj), this.obj.getAttributeId()));
                                List<AttributeModel> pMCActivityAttributes2 = GetDataFromDB.getInstance().getPMCActivityAttributes(Queries.getInstance().getPMCActivityKeyAttributes_All(AttributesActivity_Expenses.activityId, AttributesActivity_Expenses.this.getDataFromDB.getDropdownDisplayField(this.obj), this.obj.getAttributeId()));
                                Iterator it = AttributesActivity_Expenses.listAttributes.iterator();
                                while (it.hasNext()) {
                                    AttributeModel performFiltering = AttributesActivity_Expenses.this.performFiltering(pMCActivityAttributes2, "", (AttributeModel) it.next());
                                    if (performFiltering != null) {
                                        arrayList.add(performFiltering);
                                    }
                                }
                                if (arrayList.size() > 0) {
                                    Iterator it2 = arrayList.iterator();
                                    while (it2.hasNext()) {
                                        int findModelPosition = AttributesActivity_Expenses.this.findModelPosition(AttributesActivity_Expenses.listAttributes, (AttributeModel) it2.next());
                                        AttributesActivity_Expenses.listAttributes.remove(findModelPosition);
                                        AttributesActivity_Expenses.this.mAddDynamicLinear.removeViewAt(findModelPosition);
                                        AttributesActivity_Expenses.access$2410(AttributesActivity_Expenses.this);
                                        AttributesActivity_Expenses.this.mattributesnamesArr.remove(findModelPosition);
                                        AttributesActivity_Expenses.mEntryArrIds.remove(findModelPosition);
                                        AttributesActivity_Expenses.mEntryArr.remove(findModelPosition);
                                    }
                                }
                                for (AttributeModel attributeModel : pMCActivityAttributes) {
                                    AttributesActivity_Expenses.listAttributes.add(attributeModel);
                                    AttributesActivity_Expenses.this.addOperationsDynamicLayout(attributeModel.getAttributeName(), attributeModel.getControlType(), attributeModel.getAttributeId(), attributeModel.getAttributeValue(), attributeModel, AttributesActivity_Expenses.this.mAddDynamicLinear, false);
                                }
                            } catch (Exception e) {
                                PLog.e(AttributesActivity_Expenses.TAG, e);
                            }
                        } else {
                            try {
                                ArrayList arrayList2 = new ArrayList();
                                List<AttributeModel> pMCActivityAttributes3 = GetDataFromDB.getInstance().getPMCActivityAttributes(Queries.getInstance().getPMCActivityAttributeQueryUpdated(AttributesActivity_Expenses.this.farmerId, AttributesActivity_Expenses.activityId, AttributesActivity_Expenses.this.activityAssignmentId, AttributesActivity_Expenses.transId));
                                Iterator it3 = AttributesActivity_Expenses.listAttributes.iterator();
                                while (it3.hasNext()) {
                                    AttributeModel performFiltering2 = AttributesActivity_Expenses.this.performFiltering(pMCActivityAttributes3, "", (AttributeModel) it3.next());
                                    if (performFiltering2 != null) {
                                        arrayList2.add(performFiltering2);
                                    }
                                }
                                if (arrayList2.size() > 0) {
                                    Iterator it4 = arrayList2.iterator();
                                    while (it4.hasNext()) {
                                        int findModelPosition2 = AttributesActivity_Expenses.this.findModelPosition(AttributesActivity_Expenses.listAttributes, (AttributeModel) it4.next());
                                        AttributesActivity_Expenses.listAttributes.remove(findModelPosition2);
                                        AttributesActivity_Expenses.this.mAddDynamicLinear.removeViewAt(findModelPosition2);
                                        AttributesActivity_Expenses.access$2410(AttributesActivity_Expenses.this);
                                        AttributesActivity_Expenses.this.mattributesnamesArr.remove(findModelPosition2);
                                        AttributesActivity_Expenses.mEntryArrIds.remove(findModelPosition2);
                                        AttributesActivity_Expenses.mEntryArr.remove(findModelPosition2);
                                    }
                                }
                            } catch (Exception e2) {
                                PLog.e(AttributesActivity_Expenses.TAG, e2);
                            }
                        }
                    }
                }
                List<Integer> filterAttributesByFilterAttribute = AttributesActivity_Expenses.this.filterAttributesByFilterAttribute(this.obj.getAttributeId());
                if (filterAttributesByFilterAttribute.size() > 0) {
                    for (Integer num : filterAttributesByFilterAttribute) {
                        ((EditText) AttributesActivity_Expenses.mEntryArr.get(((Integer) AttributesActivity_Expenses.this.mapEntryEditIds.get(num)).intValue())).setText("");
                        ((EditText) AttributesActivity_Expenses.mEntryArrIds.get(((Integer) AttributesActivity_Expenses.this.mapEntryEditIds.get(num)).intValue())).setText("");
                    }
                }
                if (AttributesActivity_Expenses.this.ruleAttributeIds == null || AttributesActivity_Expenses.this.ruleAttributeIds.size() <= 0) {
                    return;
                }
                try {
                    String stringValue = AttributesActivity_Expenses.this.getDataFromDB.getStringValue(Queries.getInstance().getVisibilityType(AttributesActivity_Expenses.activityId, AttributesActivity_Expenses.this.objAttribute.getAttributeId()));
                    if (stringValue == null || !stringValue.equalsIgnoreCase("Visibility")) {
                        return;
                    }
                    AttributesActivity_Expenses.this.mAddDynamicLinear.getChildAt(AttributesActivity_Expenses.this.findModelPosition(AttributesActivity_Expenses.listAttributes, AttributesActivity_Expenses.this.objAttribute)).setVisibility(8);
                    return;
                } catch (Exception e3) {
                    e3.printStackTrace();
                    return;
                }
            }
            if (this.obj.getControlType().equalsIgnoreCase("Multiselect Dropdown")) {
                List<Integer> filterAttributesByFilterAttribute2 = AttributesActivity_Expenses.this.filterAttributesByFilterAttribute(this.obj.getAttributeId());
                if (filterAttributesByFilterAttribute2.size() > 0) {
                    for (Integer num2 : filterAttributesByFilterAttribute2) {
                        ((EditText) AttributesActivity_Expenses.mEntryArr.get(((Integer) AttributesActivity_Expenses.this.mapEntryEditIds.get(num2)).intValue())).setText("");
                        ((EditText) AttributesActivity_Expenses.mEntryArrIds.get(((Integer) AttributesActivity_Expenses.this.mapEntryEditIds.get(num2)).intValue())).setText("");
                    }
                    return;
                }
                return;
            }
            if (this.obj.getControlType().equalsIgnoreCase("TextBoxN") || this.obj.getControlType().equalsIgnoreCase("TextBoxND")) {
                if (editable.toString().equalsIgnoreCase("") || editable.toString().equalsIgnoreCase(".")) {
                    return;
                }
                try {
                    i = GetDataFromDB.getInstance().getIntValue(Queries.getInstance().getItemValue("EXPTOTALSUM"));
                } catch (Exception e4) {
                    e4.printStackTrace();
                    i = 0;
                }
                int i2 = 0;
                for (int i3 = 0; i3 < AttributesActivity_Expenses.listAttributes.size(); i3++) {
                    AttributeModel attributeModel2 = (AttributeModel) AttributesActivity_Expenses.listAttributes.get(i3);
                    String obj = ((EditText) AttributesActivity_Expenses.mEntryArr.get(((Integer) AttributesActivity_Expenses.this.mapEntryEditIds.get(Integer.valueOf(attributeModel2.getAttributeId()))).intValue())).getText().toString();
                    Log.e("Total", obj);
                    try {
                        if (attributeModel2.getAttributeId() != i && !TextUtils.isEmpty(obj)) {
                            i2 += Integer.parseInt(obj);
                        }
                    } catch (NumberFormatException unused) {
                        Log.e("Error", "Invalid number format: " + obj);
                    }
                }
                Log.e("Sum", "Total sum: " + i2);
                Integer num3 = (Integer) AttributesActivity_Expenses.this.mapEntryEditIds.get(Integer.valueOf(i));
                if (num3 != null && (intValue = num3.intValue()) >= 0 && intValue < AttributesActivity_Expenses.mEntryArr.size() && (editText = (EditText) AttributesActivity_Expenses.mEntryArr.get(intValue)) != null) {
                    editText.setText(String.valueOf(i2));
                }
                if (Float.parseFloat(editable.toString()) > this.maxvalue) {
                    this.editText.setText(this.beforetext);
                    return;
                }
                return;
            }
            if (!this.obj.getControlType().equalsIgnoreCase("TextBox") || editable.toString().length() <= 0) {
                return;
            }
            String trim = this.obj.getValidationExpression().trim();
            if (TextUtils.isEmpty(trim) || Pattern.compile(trim).matcher(editable.toString().trim()).matches()) {
                return;
            }
            this.editText.setText(this.beforetext);
            EditText editText2 = this.editText;
            editText2.setSelection(editText2.getText().length());
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

    /* JADX INFO: Access modifiers changed from: private */
    public void getFarmersList(EditText editText, String str, String str2, AttributeModel attributeModel) {
        Intent intent = new Intent(this.context, (Class<?>) AudianceFarmerSelectionList.class);
        intent.putExtra(ConstantDeclarations.getInstance().getKEYFARMERID(), this.farmerId);
        intent.putExtra(ConstantDeclarations.getInstance().getKeyIsMba(), this.ismba);
        intent.putExtra("SEGMENTID", this.segmentId);
        intent.putExtra("ISSELFASSIGN", this.isSelfassign);
        intent.putExtra("ParentAttributeId", Integer.parseInt(str));
        intent.putExtra("AssignmentId", this.assignmentID);
        intent.putExtra("ActivityAssignmentId", this.activityAssignmentId);
        intent.putExtra("TRANSID", transId);
        intent.putExtra("DISPLAYTYPE", str2);
        intent.putExtra("FromSelfAssignment", true);
        intent.putExtra("farmerType", ConstantsPMC.TYPE_FARMER);
        intent.putExtra("SourceQry", attributeModel.getSourceQuery());
        if (getIntent().hasExtra("ActivityShortCode")) {
            intent.putExtra("ActivityShortCode", getIntent().getExtras().getString("ActivityShortCode"));
        }
        try {
            intent.putExtra("Count", Integer.parseInt(editText.getText().toString()));
        } catch (Exception unused) {
            intent.putExtra("Count", editText.getText().toString());
        }
        intent.putExtra(ConstantDeclarations.getInstance().getKEYACTIVITYID(), activityId);
        intent.putExtra(ConstantDeclarations.getInstance().getKEYISPLANNED(), this.isPlanned);
        startActivityForResult(intent, 1001);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showAddVillageDetailsDialog(EditText editText, String str, String str2, AttributeModel attributeModel, HashMap<String, DashboardListModel> hashMap) {
        Intent intent = new Intent(this.context, (Class<?>) AudianceChildAttributeActivity.class);
        intent.putExtra(ConstantDeclarations.getInstance().getKEYFARMERID(), this.farmerId);
        intent.putExtra(ConstantDeclarations.getInstance().getKeyIsMba(), this.ismba);
        intent.putExtra("SEGMENTID", this.segmentId);
        intent.putExtra("ISSELFASSIGN", this.isSelfassign);
        intent.putExtra("ParentAttributeId", Integer.parseInt(str));
        intent.putExtra("AssignmentId", this.assignmentID);
        intent.putExtra("ActivityAssignmentId", this.activityAssignmentId);
        intent.putExtra("TRANSID", transId);
        intent.putExtra("DISPLAYTYPE", str2);
        intent.putExtra("FarmersData", hashMap);
        intent.putExtra("FromSelfAssignment", true);
        intent.putExtra("farmerType", ConstantsPMC.TYPE_FARMER);
        if (getIntent().hasExtra("ActivityShortCode")) {
            intent.putExtra("ActivityShortCode", getIntent().getExtras().getString("ActivityShortCode"));
        }
        try {
            intent.putExtra("Count", Integer.parseInt(editText.getText().toString()));
        } catch (Exception unused) {
            intent.putExtra("Count", editText.getText().toString());
        }
        intent.putExtra(ConstantDeclarations.getInstance().getKEYACTIVITYID(), activityId);
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
            List<AttributeModel> pMCActivityAttributes = GetDataFromDB.getInstance().getPMCActivityAttributes(Queries.getInstance().getSelectedAttributeQueryUpdate(this.farmerId, activityId, i2));
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

    private void showNoInternetDialog(String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setMessage(str).setCancelable(false).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.AttributesActivity_Expenses.13
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

    private void doDiscardOperation() {
        try {
            GetDataFromDB.getInstance().executeRawQueryInDB(Queries.getInstance().updateDiscardForActivities(activityId, this.farmerId, this.activityAssignmentId));
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

    /* JADX INFO: Access modifiers changed from: private */
    public void captureImage(int i, String str) {
        new CompressHelper().getCompressLoaction(this);
        ConstantsPMC.getInstance().setPictureReportingContext(this);
        PLog.location("Navigation", "Image Capture Click", "Expenses", UtilDeclarations.getDateTime());
        Intent intent = new Intent(this.context, (Class<?>) PictureReporting_Expenses.class);
        intent.putExtra("activityId", activityId);
        intent.putExtra("assignmentId", this.activityAssignmentId);
        intent.putExtra("AttributeID", i);
        intent.putExtra("AttributeName", str);
        try {
            intent.putExtra("setReferenceType", GetDataFromDB.getInstance().getLookupValue(Queries.getInstance().getItemValueForImage("Expenses")));
        } catch (Exception e) {
            PLog.e(TAG, e);
            e.printStackTrace();
        }
        intent.putExtra("setReferenceID", String.valueOf(transId));
        intent.putExtra("attributeId", 0);
        intent.putExtra("farmerId", this.farmerId);
        intent.putExtra("imageId", 0);
        intent.putExtra("IdTransid", transId);
        startActivity(intent);
    }

    private void showAlertDialog(String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.context);
        builder.setMessage(str).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.AttributesActivity_Expenses.18
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
    protected void onPrepareDialog(int i, Dialog dialog) {
        if (i != 0) {
            return;
        }
        DatePickerDialog datePickerDialog = (DatePickerDialog) dialog;
        try {
            Date date = new Date();
            EditText editText = mEntryArr.get(this.datePos);
            if (editText != null && editText.getTag(R.string.MIN_DAYS) != null && !editText.getTag(R.string.MIN_DAYS).toString().isEmpty() && !editText.getTag(R.string.MIN_DAYS).equals(-1)) {
                Calendar calendar = Calendar.getInstance();
                calendar.setTime(date);
                calendar.add(5, (-Integer.parseInt(editText.getTag(R.string.MIN_DAYS).toString())) + 1);
                datePickerDialog.getDatePicker().setMinDate(calendar.getTime().getTime());
            } else {
                datePickerDialog.getDatePicker().setMinDate(this.defaultMinDate);
            }
            if (editText != null && editText.getTag(R.string.MAX_DAYS) != null && !editText.getTag(R.string.MAX_DAYS).toString().isEmpty() && !editText.getTag(R.string.MAX_DAYS).equals(-1)) {
                Calendar calendar2 = Calendar.getInstance();
                calendar2.setTime(date);
                calendar2.add(5, Integer.parseInt(editText.getTag(R.string.MAX_DAYS).toString()) + 1);
                datePickerDialog.getDatePicker().setMaxDate(calendar2.getTime().getTime());
                return;
            }
            datePickerDialog.getDatePicker().setMaxDate(this.defaultMaxDate);
        } catch (Exception unused) {
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
            this.defaultMinDate = datePickerDialog.getDatePicker().getMinDate();
            this.defaultMaxDate = datePickerDialog.getDatePicker().getMaxDate();
            Date date = new Date();
            EditText editText = mEntryArr.get(this.datePos);
            if (editText != null && editText.getTag(R.string.MIN_DAYS) != null && !editText.getTag(R.string.MIN_DAYS).toString().isEmpty() && !editText.getTag(R.string.MIN_DAYS).equals(-1)) {
                Calendar calendar2 = Calendar.getInstance();
                calendar2.setTime(date);
                calendar2.add(5, (-Integer.parseInt(editText.getTag(R.string.MIN_DAYS).toString())) + 1);
                datePickerDialog.getDatePicker().setMinDate(calendar2.getTime().getTime());
            }
            if (editText != null && editText.getTag(R.string.MAX_DAYS) != null && !editText.getTag(R.string.MAX_DAYS).toString().isEmpty() && !editText.getTag(R.string.MAX_DAYS).equals(-1)) {
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

    @Override // android.app.Activity
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

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        AttributeModel attributeModel;
        super.onActivityResult(i, i2, intent);
        if (i == 1) {
            if (i2 == -1) {
                findCurrentLocation();
                return;
            } else {
                if (i2 != 0) {
                    return;
                }
                this.mLocationUtils.showDialog(this, LocationUtils.GPS_NOT_TURNED_ON);
                return;
            }
        }
        if (i == 1001) {
            if (i2 == -1 && (attributeModel = this.lastSelectedattributeModel) != null) {
                showAddVillageDetailsDialog(this.lastSelectedView, this.lastSelectedid, attributeModel.getDisplayType(), this.lastSelectedattributeModel, (HashMap) intent.getExtras().get("FarmersList"));
                return;
            }
            return;
        }
        if (i2 == 0 || i2 != -1) {
            return;
        }
        if (i != 100) {
            if (i != 101) {
                return;
            }
            new ImageCompressionAsyncTask(this.context, this.listener).execute(this.imageFile.getAbsolutePath());
        } else {
            if (i2 != -1 || intent == null) {
                return;
            }
            ArrayList<String> stringArrayListExtra = intent.getStringArrayListExtra("android.speech.extra.RESULTS");
            EditText editText = this.speachText;
            if (editText != null) {
                editText.setText(stringArrayListExtra.get(0));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void findCurrentLocation() {
        if (!this.mLocationUtils.checkPermissions(this)) {
            this.mLocationUtils.requestPermissions(this);
            return;
        }
        try {
            new FetchLocation(this, true, new OnLocationFoundListener() { // from class: com.conceptglobal.pmc.fo.AttributesActivity_Expenses.22
                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onLocationFound(Location location) {
                }

                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onTimerTimeOut() {
                }

                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onLocationFound(LocationInfo locationInfo) {
                    AttributesActivity_Expenses.this.onLocFound(locationInfo);
                }
            }, TAG);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // android.app.Activity
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
        if (activityId == 1555) {
            webView.evaluateJavascript("checkValidation();", null);
        }
        ((AttributeEventListener) context).GetData(listAttributes, mEntryArr, mEntryArrIds);
    }

    private class loadDataTask extends AsyncTask<Void, Void, Void> {
        private loadDataTask() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Void doInBackground(Void... voidArr) {
            AttributesActivity_Expenses.this.loadAttributes(0);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void promptSpeechInput() {
        Intent intent = new Intent("android.speech.action.RECOGNIZE_SPEECH");
        intent.putExtra("android.speech.extra.LANGUAGE_MODEL", "free_form");
        intent.putExtra("android.speech.extra.LANGUAGE", Locale.getDefault());
        intent.putExtra("android.speech.extra.PROMPT", getString(R.string.speech_prompt));
        try {
            startActivityForResult(intent, 100);
        } catch (ActivityNotFoundException unused) {
            Toast.makeText(getApplicationContext(), getString(R.string.speech_not_supported), 0).show();
        }
    }

    private void setOnTouchListener(final EditText editText) {
        editText.setOnTouchListener(new View.OnTouchListener() { // from class: com.conceptglobal.pmc.fo.AttributesActivity_Expenses.23
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                AttributesActivity_Expenses.this.speachText = editText;
                if (motionEvent.getAction() != 1 || motionEvent.getRawX() < editText.getRight() - editText.getCompoundDrawables()[2].getBounds().width()) {
                    return false;
                }
                AttributesActivity_Expenses.this.promptSpeechInput();
                return true;
            }
        });
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        LocalBroadcastManager.getInstance(this).unregisterReceiver(this.mReceiver);
    }

    public static void setFieldDataEmpty(int i, boolean z) {
        try {
            mEntryArr.get(i).setText("");
            if (z) {
                mEntryArrIds.get(i).setText("m");
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadData() {
        if (UtilDeclarations.isOnline(this)) {
            webView.setWebChromeClient(new WebChromeClient() { // from class: com.conceptglobal.pmc.fo.AttributesActivity_Expenses.25
                private ProgressDialog mProgress;

                @Override // android.webkit.WebChromeClient
                public void onProgressChanged(WebView webView2, int i) {
                    if (this.mProgress == null) {
                        this.mProgress = new ProgressDialog(AttributesActivity_Expenses.this);
                        if (!AttributesActivity_Expenses.this.isFinishing()) {
                            this.mProgress.show();
                        }
                    }
                    this.mProgress.setMessage("Loading ");
                    if (i == 100) {
                        ProgressDialog progressDialog = this.mProgress;
                        if (progressDialog != null && progressDialog.isShowing() && !AttributesActivity_Expenses.this.isFinishing()) {
                            this.mProgress.dismiss();
                        }
                        this.mProgress = null;
                    }
                }
            });
            webView.setWebViewClient(new WebViewClient() { // from class: com.conceptglobal.pmc.fo.AttributesActivity_Expenses.26
                private int running = 0;

                @Override // android.webkit.WebViewClient
                public void onReceivedError(WebView webView2, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
                    AttributesActivity_Expenses.this.sendWebPageLoadStatus(true);
                    super.onReceivedError(webView2, webResourceRequest, webResourceError);
                }
            });
            webView.getSettings().setJavaScriptEnabled(true);
            WebAppInterface webAppInterface = new WebAppInterface(getApplicationContext());
            this.webAppInterface = webAppInterface;
            webView.addJavascriptInterface(webAppInterface, "Android");
            int i = activityId;
            if (i == 1386) {
                webView.loadUrl(ConstantsPMC.getInstance().getWebViewUrlDistributorVisit() + this.farmerId + "?pdaid=" + ConstantsPMC.getInstance().getDeviceID() + "&transId=" + transId);
                return;
            }
            if (i == 1383) {
                webView.loadUrl(ConstantsPMC.getInstance().getWebViewUrlRetailerVisit() + this.farmerId + "?pdaid=" + ConstantsPMC.getInstance().getDeviceID() + "&transId=" + transId);
                return;
            }
            if (i == 1555) {
                webView.loadUrl(ConstantsPMC.getInstance().getWebViewUrlPOG() + this.farmerId + "?pdaid=" + ConstantsPMC.getInstance().getDeviceID() + "&transId=" + transId);
                return;
            }
            return;
        }
        webView.setVisibility(8);
        try {
            webView.stopLoading();
        } catch (Exception unused) {
        }
        if (webView.canGoBack()) {
            webView.goBack();
        }
        webView.loadUrl("about:blank");
        AlertDialog create = new AlertDialog.Builder(this).create();
        create.setTitle("Error");
        create.setCanceledOnTouchOutside(false);
        create.setMessage("You are not connected to internet! \nClick on OK, to continue and complete the visit.");
        create.setButton(-2, "Retry", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.AttributesActivity_Expenses.27
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                AttributesActivity_Expenses.this.loadData();
                dialogInterface.dismiss();
            }
        });
        create.setButton(-1, "Ok", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.AttributesActivity_Expenses.28
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                AttributesActivity_Expenses.this.sendWebPageLoadStatus(true);
                dialogInterface.dismiss();
            }
        });
        create.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendWebPageLoadStatus(boolean z) {
        Intent intent = new Intent("DataSaved");
        intent.putExtra("IsDisplayOthersTab", z);
        LocalBroadcastManager.getInstance(this.context).sendBroadcast(intent);
    }

    public class WebAppInterface {
        Context mContext;

        @JavascriptInterface
        public void dataSaved(boolean z) {
        }

        public WebAppInterface(Context context) {
            this.mContext = context;
        }

        @JavascriptInterface
        public void saverequired(boolean z) {
            if (z) {
                AttributesActivity_Expenses.this.sendWebPageLoadStatus(false);
                AlertDialog create = new AlertDialog.Builder(AttributesActivity_Expenses.this).create();
                create.setCanceledOnTouchOutside(false);
                create.setMessage("Data has not be saved.\nClick Preview&Save button to save the data.");
                create.setButton(-1, "Ok", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.AttributesActivity_Expenses.WebAppInterface.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        dialogInterface.dismiss();
                    }
                });
                create.show();
            }
        }

        @JavascriptInterface
        public void saverequiredfordistributor(boolean z) {
            if (z) {
                AttributesActivity_Expenses.this.sendWebPageLoadStatus(false);
                AlertDialog create = new AlertDialog.Builder(AttributesActivity_Expenses.this).create();
                create.setCanceledOnTouchOutside(false);
                create.setMessage("Month plan has not be saved.");
                create.setButton(-1, "Ok", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.AttributesActivity_Expenses.WebAppInterface.2
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        dialogInterface.dismiss();
                    }
                });
                create.show();
            }
        }

        @JavascriptInterface
        public void moveToVistCompleatepage(boolean z) {
            AttributesActivity_Expenses.this.sendWebPageLoadStatus(true);
        }
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        gettingBackImagesList(this.context);
        for (ImageView imageView : this.mImageviews) {
            if (this.imageDetails != null) {
                File file = new File(this.imageDetails.getPicturePath());
                if (file.exists()) {
                    imageView.setImageBitmap(BitmapFactory.decodeFile(file.getAbsolutePath()));
                }
            }
        }
    }

    public static void gettingBackImagesList(Context context) {
        if (listAttributes != null) {
            for (int i = 0; i < listAttributes.size(); i++) {
                try {
                    int intValue = GetDataFromDB.getInstance().getIntValue(Queries.getInstance().getImagesList(listAttributes.get(i).getAttributeId(), transId));
                    if (intValue > 0) {
                        TextView textView = textMAp.get(Integer.valueOf(listAttributes.get(i).getAttributeId()));
                        textView.setVisibility(0);
                        textView.setText(intValue + "");
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    public static boolean gettingImageCountMessage(Context context) {
        if (listAttributes == null) {
            return true;
        }
        for (int i = 0; i < listAttributes.size(); i++) {
            try {
                if (listAttributes.get(i).getAttributeId() != 720 && !TextUtils.isEmpty(mEntryArr.get(i).getText()) && Integer.parseInt(mEntryArr.get(i).getText().toString()) > 0 && GetDataFromDB.getInstance().getIntValue(Queries.getInstance().getImagesList(listAttributes.get(i).getAttributeId(), transId)) == 0) {
                    Toast.makeText(context, "Please Take photo " + listAttributes.get(i).getAttributeName(), 0).show();
                    return false;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return true;
    }
}

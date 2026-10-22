package com.conceptglobal.pmc.fo;

import android.app.AlertDialog;
import android.app.DatePickerDialog;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.app.TimePickerDialog;
import android.content.ActivityNotFoundException;
import android.content.BroadcastReceiver;
import android.content.ClipData;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.BitmapFactory;
import android.location.Location;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.text.Editable;
import android.text.Html;
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
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.content.FileProvider;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.conceptglobal.imaterialdesign.widget.FloatingActionButton;
import com.conceptglobal.pmc.asynctask.WebService;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.common.Items;
import com.conceptglobal.pmc.common.NeoCampaignConstants;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.fragments.WebViewFragment;
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
import com.conceptglobal.pmc.model.TimeDetails;
import com.conceptglobal.pmc.utils.CompressHelper;
import com.conceptglobal.pmc.utils.CompressListener;
import com.conceptglobal.pmc.utils.ConstantDeclarations;
import com.conceptglobal.pmc.utils.Encryption;
import com.conceptglobal.pmc.utils.ImageCompressionAsyncTask;
import com.conceptglobal.pmc.utils.InstanceConfig;
import com.conceptglobal.pmc.utils.LabelUtils;
import com.conceptglobal.pmc.utils.LocationService;
import com.conceptglobal.pmc.utils.LocationUtils;
import com.conceptglobal.pmc.utils.PLog;
import com.conceptglobal.pmc.utils.SharedPrefManager;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import com.conceptglobal.pmcdeepakfertilizers.R;
import com.evernote.android.job.JobStorage;
import java.io.File;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
import java.util.regex.Pattern;
import okhttp3.FormBody;
import org.apache.http.HttpHeaders;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class AttributesActivity extends AppCompatActivity implements View.OnClickListener, CropChanger, ValidatorInterface {
    private static final int DATEDIALOGID = 0;
    private static final int GET_CAM_IMG_FIRST = 101;
    private static final int ISDONE = 1;
    public static final int REQUEST_GET_FARMERS = 1001;
    private static final String TAG = "AttributesActivity";
    private static final int TIMEDIALOGID = 1;
    private static int activityId;
    private static Button btnStartStop;
    public static Context ctx;
    public static boolean isCapaignCompleatedForDraftActivity;
    private static List<AttributeModel> listAttributes;
    private static List<EditText> mEntryArr;
    private static List<EditText> mEntryArrIds;
    static String startTimeGPS;
    static String starttimeMobile;
    static long starttimeMobileMillis;
    static String stopTimeGPS;
    static String stopTimeMobile;
    public static ArrayList<Integer> visibiltyGoneIds = new ArrayList<>();
    private static WebView webView;
    private List<AttributeModel> AlertlistAttributes;
    private int activityAssignmentId;
    private String activityName;
    private AssignmentActivityDetailsModel assignmentDetails;
    private int assignmentID;
    private ScrollView atrrributesView;
    private List<String> brands;
    private TextView btnClose;
    private TextView btnDiscard;
    private TextView btnDone;
    private TextView btnnotDone;
    private Context context;
    private int cropAttributeID;
    private CropChanger cropChageListener;
    private String cropId;
    protected Dialog d_remarks;
    private int demoActivity;
    AlertDialog dialog;
    private String dos;
    FloatingActionButton fab3;
    private String farmerId;
    private String from;
    private GetDataFromDB getDataFromDB;
    private String image1Path;
    private ImageDetails imageDetails;
    private File imageFile;
    private ImageView imageView;
    private ImageView imgLastVistDetails;
    private boolean isActivityContainsCapaign;
    private int isDisplayCount;
    private boolean isLoadingDone;
    private int isPlanned;
    private boolean isRewardsMappedToGeography;
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
    private int productAttributeID;
    private Queries queries;
    private RatingBar ratingBar;
    private String[] remarkNames;
    private String[] remarkids;
    private int retailerAttributeID;
    private RelativeLayout rlTimerView;
    private ArrayList<Integer> ruleAttributeIds;
    private int segmentId;
    private EditText speachText;
    private TextView textActivityName;
    Timer timer;
    private long transId;
    private TextView tvLastVisitDetails;
    private TextView tvStartTime;
    private TextView tvTimer;
    private String updateDOS;
    WebAppInterface webAppInterface;
    public WebViewFragment webViewFragment;
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
    private int campaignsFarmersCount = 0;
    private int campaignsSarthiFarmersCount = 0;
    String fetchLocationCall = "";
    View.OnClickListener operationListener = new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.AttributesActivity.15
        /* JADX WARN: Removed duplicated region for block: B:100:0x0853 A[Catch: Exception -> 0x0aa8, TryCatch #0 {Exception -> 0x0aa8, blocks: (B:13:0x0057, B:16:0x0064, B:18:0x006e, B:21:0x0076, B:23:0x00a6, B:25:0x00ce, B:27:0x0177, B:28:0x01a6, B:30:0x01ac, B:32:0x01dc, B:34:0x0204, B:36:0x02ad, B:37:0x02dc, B:39:0x02e2, B:41:0x0312, B:43:0x033a, B:45:0x03e3, B:46:0x0412, B:51:0x04d1, B:53:0x04d7, B:55:0x04dd, B:57:0x04e3, B:58:0x08a7, B:60:0x08bd, B:61:0x08d2, B:63:0x08f0, B:66:0x0908, B:67:0x0923, B:69:0x0937, B:71:0x09f0, B:73:0x04e8, B:76:0x04f2, B:78:0x0522, B:80:0x054a, B:81:0x05a4, B:82:0x060b, B:84:0x0611, B:86:0x0641, B:88:0x066a, B:89:0x06c4, B:90:0x072b, B:92:0x0731, B:94:0x0761, B:96:0x078a, B:97:0x07e4, B:98:0x084d, B:100:0x0853, B:102:0x0859, B:104:0x085f, B:105:0x0863, B:108:0x086e, B:109:0x087d, B:111:0x0883, B:112:0x0892, B:114:0x0898), top: B:12:0x0057 }] */
        /* JADX WARN: Removed duplicated region for block: B:108:0x086e A[Catch: Exception -> 0x0aa8, TRY_ENTER, TryCatch #0 {Exception -> 0x0aa8, blocks: (B:13:0x0057, B:16:0x0064, B:18:0x006e, B:21:0x0076, B:23:0x00a6, B:25:0x00ce, B:27:0x0177, B:28:0x01a6, B:30:0x01ac, B:32:0x01dc, B:34:0x0204, B:36:0x02ad, B:37:0x02dc, B:39:0x02e2, B:41:0x0312, B:43:0x033a, B:45:0x03e3, B:46:0x0412, B:51:0x04d1, B:53:0x04d7, B:55:0x04dd, B:57:0x04e3, B:58:0x08a7, B:60:0x08bd, B:61:0x08d2, B:63:0x08f0, B:66:0x0908, B:67:0x0923, B:69:0x0937, B:71:0x09f0, B:73:0x04e8, B:76:0x04f2, B:78:0x0522, B:80:0x054a, B:81:0x05a4, B:82:0x060b, B:84:0x0611, B:86:0x0641, B:88:0x066a, B:89:0x06c4, B:90:0x072b, B:92:0x0731, B:94:0x0761, B:96:0x078a, B:97:0x07e4, B:98:0x084d, B:100:0x0853, B:102:0x0859, B:104:0x085f, B:105:0x0863, B:108:0x086e, B:109:0x087d, B:111:0x0883, B:112:0x0892, B:114:0x0898), top: B:12:0x0057 }] */
        /* JADX WARN: Removed duplicated region for block: B:111:0x0883 A[Catch: Exception -> 0x0aa8, TryCatch #0 {Exception -> 0x0aa8, blocks: (B:13:0x0057, B:16:0x0064, B:18:0x006e, B:21:0x0076, B:23:0x00a6, B:25:0x00ce, B:27:0x0177, B:28:0x01a6, B:30:0x01ac, B:32:0x01dc, B:34:0x0204, B:36:0x02ad, B:37:0x02dc, B:39:0x02e2, B:41:0x0312, B:43:0x033a, B:45:0x03e3, B:46:0x0412, B:51:0x04d1, B:53:0x04d7, B:55:0x04dd, B:57:0x04e3, B:58:0x08a7, B:60:0x08bd, B:61:0x08d2, B:63:0x08f0, B:66:0x0908, B:67:0x0923, B:69:0x0937, B:71:0x09f0, B:73:0x04e8, B:76:0x04f2, B:78:0x0522, B:80:0x054a, B:81:0x05a4, B:82:0x060b, B:84:0x0611, B:86:0x0641, B:88:0x066a, B:89:0x06c4, B:90:0x072b, B:92:0x0731, B:94:0x0761, B:96:0x078a, B:97:0x07e4, B:98:0x084d, B:100:0x0853, B:102:0x0859, B:104:0x085f, B:105:0x0863, B:108:0x086e, B:109:0x087d, B:111:0x0883, B:112:0x0892, B:114:0x0898), top: B:12:0x0057 }] */
        /* JADX WARN: Removed duplicated region for block: B:114:0x0898 A[Catch: Exception -> 0x0aa8, TryCatch #0 {Exception -> 0x0aa8, blocks: (B:13:0x0057, B:16:0x0064, B:18:0x006e, B:21:0x0076, B:23:0x00a6, B:25:0x00ce, B:27:0x0177, B:28:0x01a6, B:30:0x01ac, B:32:0x01dc, B:34:0x0204, B:36:0x02ad, B:37:0x02dc, B:39:0x02e2, B:41:0x0312, B:43:0x033a, B:45:0x03e3, B:46:0x0412, B:51:0x04d1, B:53:0x04d7, B:55:0x04dd, B:57:0x04e3, B:58:0x08a7, B:60:0x08bd, B:61:0x08d2, B:63:0x08f0, B:66:0x0908, B:67:0x0923, B:69:0x0937, B:71:0x09f0, B:73:0x04e8, B:76:0x04f2, B:78:0x0522, B:80:0x054a, B:81:0x05a4, B:82:0x060b, B:84:0x0611, B:86:0x0641, B:88:0x066a, B:89:0x06c4, B:90:0x072b, B:92:0x0731, B:94:0x0761, B:96:0x078a, B:97:0x07e4, B:98:0x084d, B:100:0x0853, B:102:0x0859, B:104:0x085f, B:105:0x0863, B:108:0x086e, B:109:0x087d, B:111:0x0883, B:112:0x0892, B:114:0x0898), top: B:12:0x0057 }] */
        /* JADX WARN: Removed duplicated region for block: B:30:0x01ac A[Catch: Exception -> 0x0aa8, TryCatch #0 {Exception -> 0x0aa8, blocks: (B:13:0x0057, B:16:0x0064, B:18:0x006e, B:21:0x0076, B:23:0x00a6, B:25:0x00ce, B:27:0x0177, B:28:0x01a6, B:30:0x01ac, B:32:0x01dc, B:34:0x0204, B:36:0x02ad, B:37:0x02dc, B:39:0x02e2, B:41:0x0312, B:43:0x033a, B:45:0x03e3, B:46:0x0412, B:51:0x04d1, B:53:0x04d7, B:55:0x04dd, B:57:0x04e3, B:58:0x08a7, B:60:0x08bd, B:61:0x08d2, B:63:0x08f0, B:66:0x0908, B:67:0x0923, B:69:0x0937, B:71:0x09f0, B:73:0x04e8, B:76:0x04f2, B:78:0x0522, B:80:0x054a, B:81:0x05a4, B:82:0x060b, B:84:0x0611, B:86:0x0641, B:88:0x066a, B:89:0x06c4, B:90:0x072b, B:92:0x0731, B:94:0x0761, B:96:0x078a, B:97:0x07e4, B:98:0x084d, B:100:0x0853, B:102:0x0859, B:104:0x085f, B:105:0x0863, B:108:0x086e, B:109:0x087d, B:111:0x0883, B:112:0x0892, B:114:0x0898), top: B:12:0x0057 }] */
        /* JADX WARN: Removed duplicated region for block: B:39:0x02e2 A[Catch: Exception -> 0x0aa8, TryCatch #0 {Exception -> 0x0aa8, blocks: (B:13:0x0057, B:16:0x0064, B:18:0x006e, B:21:0x0076, B:23:0x00a6, B:25:0x00ce, B:27:0x0177, B:28:0x01a6, B:30:0x01ac, B:32:0x01dc, B:34:0x0204, B:36:0x02ad, B:37:0x02dc, B:39:0x02e2, B:41:0x0312, B:43:0x033a, B:45:0x03e3, B:46:0x0412, B:51:0x04d1, B:53:0x04d7, B:55:0x04dd, B:57:0x04e3, B:58:0x08a7, B:60:0x08bd, B:61:0x08d2, B:63:0x08f0, B:66:0x0908, B:67:0x0923, B:69:0x0937, B:71:0x09f0, B:73:0x04e8, B:76:0x04f2, B:78:0x0522, B:80:0x054a, B:81:0x05a4, B:82:0x060b, B:84:0x0611, B:86:0x0641, B:88:0x066a, B:89:0x06c4, B:90:0x072b, B:92:0x0731, B:94:0x0761, B:96:0x078a, B:97:0x07e4, B:98:0x084d, B:100:0x0853, B:102:0x0859, B:104:0x085f, B:105:0x0863, B:108:0x086e, B:109:0x087d, B:111:0x0883, B:112:0x0892, B:114:0x0898), top: B:12:0x0057 }] */
        /* JADX WARN: Removed duplicated region for block: B:84:0x0611 A[Catch: Exception -> 0x0aa8, TryCatch #0 {Exception -> 0x0aa8, blocks: (B:13:0x0057, B:16:0x0064, B:18:0x006e, B:21:0x0076, B:23:0x00a6, B:25:0x00ce, B:27:0x0177, B:28:0x01a6, B:30:0x01ac, B:32:0x01dc, B:34:0x0204, B:36:0x02ad, B:37:0x02dc, B:39:0x02e2, B:41:0x0312, B:43:0x033a, B:45:0x03e3, B:46:0x0412, B:51:0x04d1, B:53:0x04d7, B:55:0x04dd, B:57:0x04e3, B:58:0x08a7, B:60:0x08bd, B:61:0x08d2, B:63:0x08f0, B:66:0x0908, B:67:0x0923, B:69:0x0937, B:71:0x09f0, B:73:0x04e8, B:76:0x04f2, B:78:0x0522, B:80:0x054a, B:81:0x05a4, B:82:0x060b, B:84:0x0611, B:86:0x0641, B:88:0x066a, B:89:0x06c4, B:90:0x072b, B:92:0x0731, B:94:0x0761, B:96:0x078a, B:97:0x07e4, B:98:0x084d, B:100:0x0853, B:102:0x0859, B:104:0x085f, B:105:0x0863, B:108:0x086e, B:109:0x087d, B:111:0x0883, B:112:0x0892, B:114:0x0898), top: B:12:0x0057 }] */
        /* JADX WARN: Removed duplicated region for block: B:92:0x0731 A[Catch: Exception -> 0x0aa8, TryCatch #0 {Exception -> 0x0aa8, blocks: (B:13:0x0057, B:16:0x0064, B:18:0x006e, B:21:0x0076, B:23:0x00a6, B:25:0x00ce, B:27:0x0177, B:28:0x01a6, B:30:0x01ac, B:32:0x01dc, B:34:0x0204, B:36:0x02ad, B:37:0x02dc, B:39:0x02e2, B:41:0x0312, B:43:0x033a, B:45:0x03e3, B:46:0x0412, B:51:0x04d1, B:53:0x04d7, B:55:0x04dd, B:57:0x04e3, B:58:0x08a7, B:60:0x08bd, B:61:0x08d2, B:63:0x08f0, B:66:0x0908, B:67:0x0923, B:69:0x0937, B:71:0x09f0, B:73:0x04e8, B:76:0x04f2, B:78:0x0522, B:80:0x054a, B:81:0x05a4, B:82:0x060b, B:84:0x0611, B:86:0x0641, B:88:0x066a, B:89:0x06c4, B:90:0x072b, B:92:0x0731, B:94:0x0761, B:96:0x078a, B:97:0x07e4, B:98:0x084d, B:100:0x0853, B:102:0x0859, B:104:0x085f, B:105:0x0863, B:108:0x086e, B:109:0x087d, B:111:0x0883, B:112:0x0892, B:114:0x0898), top: B:12:0x0057 }] */
        @Override // android.view.View.OnClickListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onClick(android.view.View r30) {
            /*
                Method dump skipped, instructions count: 2740
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.fo.AttributesActivity.AnonymousClass15.onClick(android.view.View):void");
        }
    };
    View.OnClickListener operationListenerMultiSelect = new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.AttributesActivity.16
        /* JADX WARN: Removed duplicated region for block: B:107:0x0901 A[Catch: Exception -> 0x0a86, TryCatch #0 {Exception -> 0x0a86, blocks: (B:13:0x005e, B:16:0x006a, B:18:0x0074, B:21:0x007c, B:23:0x00ac, B:25:0x00d4, B:27:0x017d, B:28:0x01a9, B:30:0x01af, B:32:0x01df, B:34:0x0207, B:36:0x02b0, B:37:0x02df, B:39:0x02e5, B:41:0x0315, B:43:0x033d, B:45:0x03e6, B:46:0x0415, B:48:0x0425, B:51:0x043d, B:52:0x0452, B:54:0x04c4, B:57:0x04d0, B:59:0x0561, B:64:0x0581, B:66:0x0587, B:68:0x058d, B:70:0x0593, B:71:0x0955, B:73:0x09c9, B:76:0x09d5, B:78:0x0a67, B:80:0x0598, B:83:0x05a2, B:85:0x05d2, B:87:0x05fa, B:88:0x0654, B:89:0x06bb, B:91:0x06c1, B:93:0x06f1, B:95:0x0719, B:96:0x0773, B:97:0x07da, B:99:0x07e0, B:101:0x0810, B:103:0x0838, B:104:0x0892, B:105:0x08fb, B:107:0x0901, B:109:0x0907, B:111:0x090d, B:112:0x0911, B:115:0x091c, B:116:0x092b, B:118:0x0931, B:119:0x0940, B:121:0x0946), top: B:12:0x005e }] */
        /* JADX WARN: Removed duplicated region for block: B:115:0x091c A[Catch: Exception -> 0x0a86, TRY_ENTER, TryCatch #0 {Exception -> 0x0a86, blocks: (B:13:0x005e, B:16:0x006a, B:18:0x0074, B:21:0x007c, B:23:0x00ac, B:25:0x00d4, B:27:0x017d, B:28:0x01a9, B:30:0x01af, B:32:0x01df, B:34:0x0207, B:36:0x02b0, B:37:0x02df, B:39:0x02e5, B:41:0x0315, B:43:0x033d, B:45:0x03e6, B:46:0x0415, B:48:0x0425, B:51:0x043d, B:52:0x0452, B:54:0x04c4, B:57:0x04d0, B:59:0x0561, B:64:0x0581, B:66:0x0587, B:68:0x058d, B:70:0x0593, B:71:0x0955, B:73:0x09c9, B:76:0x09d5, B:78:0x0a67, B:80:0x0598, B:83:0x05a2, B:85:0x05d2, B:87:0x05fa, B:88:0x0654, B:89:0x06bb, B:91:0x06c1, B:93:0x06f1, B:95:0x0719, B:96:0x0773, B:97:0x07da, B:99:0x07e0, B:101:0x0810, B:103:0x0838, B:104:0x0892, B:105:0x08fb, B:107:0x0901, B:109:0x0907, B:111:0x090d, B:112:0x0911, B:115:0x091c, B:116:0x092b, B:118:0x0931, B:119:0x0940, B:121:0x0946), top: B:12:0x005e }] */
        /* JADX WARN: Removed duplicated region for block: B:118:0x0931 A[Catch: Exception -> 0x0a86, TryCatch #0 {Exception -> 0x0a86, blocks: (B:13:0x005e, B:16:0x006a, B:18:0x0074, B:21:0x007c, B:23:0x00ac, B:25:0x00d4, B:27:0x017d, B:28:0x01a9, B:30:0x01af, B:32:0x01df, B:34:0x0207, B:36:0x02b0, B:37:0x02df, B:39:0x02e5, B:41:0x0315, B:43:0x033d, B:45:0x03e6, B:46:0x0415, B:48:0x0425, B:51:0x043d, B:52:0x0452, B:54:0x04c4, B:57:0x04d0, B:59:0x0561, B:64:0x0581, B:66:0x0587, B:68:0x058d, B:70:0x0593, B:71:0x0955, B:73:0x09c9, B:76:0x09d5, B:78:0x0a67, B:80:0x0598, B:83:0x05a2, B:85:0x05d2, B:87:0x05fa, B:88:0x0654, B:89:0x06bb, B:91:0x06c1, B:93:0x06f1, B:95:0x0719, B:96:0x0773, B:97:0x07da, B:99:0x07e0, B:101:0x0810, B:103:0x0838, B:104:0x0892, B:105:0x08fb, B:107:0x0901, B:109:0x0907, B:111:0x090d, B:112:0x0911, B:115:0x091c, B:116:0x092b, B:118:0x0931, B:119:0x0940, B:121:0x0946), top: B:12:0x005e }] */
        /* JADX WARN: Removed duplicated region for block: B:121:0x0946 A[Catch: Exception -> 0x0a86, TryCatch #0 {Exception -> 0x0a86, blocks: (B:13:0x005e, B:16:0x006a, B:18:0x0074, B:21:0x007c, B:23:0x00ac, B:25:0x00d4, B:27:0x017d, B:28:0x01a9, B:30:0x01af, B:32:0x01df, B:34:0x0207, B:36:0x02b0, B:37:0x02df, B:39:0x02e5, B:41:0x0315, B:43:0x033d, B:45:0x03e6, B:46:0x0415, B:48:0x0425, B:51:0x043d, B:52:0x0452, B:54:0x04c4, B:57:0x04d0, B:59:0x0561, B:64:0x0581, B:66:0x0587, B:68:0x058d, B:70:0x0593, B:71:0x0955, B:73:0x09c9, B:76:0x09d5, B:78:0x0a67, B:80:0x0598, B:83:0x05a2, B:85:0x05d2, B:87:0x05fa, B:88:0x0654, B:89:0x06bb, B:91:0x06c1, B:93:0x06f1, B:95:0x0719, B:96:0x0773, B:97:0x07da, B:99:0x07e0, B:101:0x0810, B:103:0x0838, B:104:0x0892, B:105:0x08fb, B:107:0x0901, B:109:0x0907, B:111:0x090d, B:112:0x0911, B:115:0x091c, B:116:0x092b, B:118:0x0931, B:119:0x0940, B:121:0x0946), top: B:12:0x005e }] */
        /* JADX WARN: Removed duplicated region for block: B:30:0x01af A[Catch: Exception -> 0x0a86, TryCatch #0 {Exception -> 0x0a86, blocks: (B:13:0x005e, B:16:0x006a, B:18:0x0074, B:21:0x007c, B:23:0x00ac, B:25:0x00d4, B:27:0x017d, B:28:0x01a9, B:30:0x01af, B:32:0x01df, B:34:0x0207, B:36:0x02b0, B:37:0x02df, B:39:0x02e5, B:41:0x0315, B:43:0x033d, B:45:0x03e6, B:46:0x0415, B:48:0x0425, B:51:0x043d, B:52:0x0452, B:54:0x04c4, B:57:0x04d0, B:59:0x0561, B:64:0x0581, B:66:0x0587, B:68:0x058d, B:70:0x0593, B:71:0x0955, B:73:0x09c9, B:76:0x09d5, B:78:0x0a67, B:80:0x0598, B:83:0x05a2, B:85:0x05d2, B:87:0x05fa, B:88:0x0654, B:89:0x06bb, B:91:0x06c1, B:93:0x06f1, B:95:0x0719, B:96:0x0773, B:97:0x07da, B:99:0x07e0, B:101:0x0810, B:103:0x0838, B:104:0x0892, B:105:0x08fb, B:107:0x0901, B:109:0x0907, B:111:0x090d, B:112:0x0911, B:115:0x091c, B:116:0x092b, B:118:0x0931, B:119:0x0940, B:121:0x0946), top: B:12:0x005e }] */
        /* JADX WARN: Removed duplicated region for block: B:39:0x02e5 A[Catch: Exception -> 0x0a86, TryCatch #0 {Exception -> 0x0a86, blocks: (B:13:0x005e, B:16:0x006a, B:18:0x0074, B:21:0x007c, B:23:0x00ac, B:25:0x00d4, B:27:0x017d, B:28:0x01a9, B:30:0x01af, B:32:0x01df, B:34:0x0207, B:36:0x02b0, B:37:0x02df, B:39:0x02e5, B:41:0x0315, B:43:0x033d, B:45:0x03e6, B:46:0x0415, B:48:0x0425, B:51:0x043d, B:52:0x0452, B:54:0x04c4, B:57:0x04d0, B:59:0x0561, B:64:0x0581, B:66:0x0587, B:68:0x058d, B:70:0x0593, B:71:0x0955, B:73:0x09c9, B:76:0x09d5, B:78:0x0a67, B:80:0x0598, B:83:0x05a2, B:85:0x05d2, B:87:0x05fa, B:88:0x0654, B:89:0x06bb, B:91:0x06c1, B:93:0x06f1, B:95:0x0719, B:96:0x0773, B:97:0x07da, B:99:0x07e0, B:101:0x0810, B:103:0x0838, B:104:0x0892, B:105:0x08fb, B:107:0x0901, B:109:0x0907, B:111:0x090d, B:112:0x0911, B:115:0x091c, B:116:0x092b, B:118:0x0931, B:119:0x0940, B:121:0x0946), top: B:12:0x005e }] */
        /* JADX WARN: Removed duplicated region for block: B:48:0x0425 A[Catch: Exception -> 0x0a86, TryCatch #0 {Exception -> 0x0a86, blocks: (B:13:0x005e, B:16:0x006a, B:18:0x0074, B:21:0x007c, B:23:0x00ac, B:25:0x00d4, B:27:0x017d, B:28:0x01a9, B:30:0x01af, B:32:0x01df, B:34:0x0207, B:36:0x02b0, B:37:0x02df, B:39:0x02e5, B:41:0x0315, B:43:0x033d, B:45:0x03e6, B:46:0x0415, B:48:0x0425, B:51:0x043d, B:52:0x0452, B:54:0x04c4, B:57:0x04d0, B:59:0x0561, B:64:0x0581, B:66:0x0587, B:68:0x058d, B:70:0x0593, B:71:0x0955, B:73:0x09c9, B:76:0x09d5, B:78:0x0a67, B:80:0x0598, B:83:0x05a2, B:85:0x05d2, B:87:0x05fa, B:88:0x0654, B:89:0x06bb, B:91:0x06c1, B:93:0x06f1, B:95:0x0719, B:96:0x0773, B:97:0x07da, B:99:0x07e0, B:101:0x0810, B:103:0x0838, B:104:0x0892, B:105:0x08fb, B:107:0x0901, B:109:0x0907, B:111:0x090d, B:112:0x0911, B:115:0x091c, B:116:0x092b, B:118:0x0931, B:119:0x0940, B:121:0x0946), top: B:12:0x005e }] */
        /* JADX WARN: Removed duplicated region for block: B:54:0x04c4 A[Catch: Exception -> 0x0a86, TryCatch #0 {Exception -> 0x0a86, blocks: (B:13:0x005e, B:16:0x006a, B:18:0x0074, B:21:0x007c, B:23:0x00ac, B:25:0x00d4, B:27:0x017d, B:28:0x01a9, B:30:0x01af, B:32:0x01df, B:34:0x0207, B:36:0x02b0, B:37:0x02df, B:39:0x02e5, B:41:0x0315, B:43:0x033d, B:45:0x03e6, B:46:0x0415, B:48:0x0425, B:51:0x043d, B:52:0x0452, B:54:0x04c4, B:57:0x04d0, B:59:0x0561, B:64:0x0581, B:66:0x0587, B:68:0x058d, B:70:0x0593, B:71:0x0955, B:73:0x09c9, B:76:0x09d5, B:78:0x0a67, B:80:0x0598, B:83:0x05a2, B:85:0x05d2, B:87:0x05fa, B:88:0x0654, B:89:0x06bb, B:91:0x06c1, B:93:0x06f1, B:95:0x0719, B:96:0x0773, B:97:0x07da, B:99:0x07e0, B:101:0x0810, B:103:0x0838, B:104:0x0892, B:105:0x08fb, B:107:0x0901, B:109:0x0907, B:111:0x090d, B:112:0x0911, B:115:0x091c, B:116:0x092b, B:118:0x0931, B:119:0x0940, B:121:0x0946), top: B:12:0x005e }] */
        /* JADX WARN: Removed duplicated region for block: B:91:0x06c1 A[Catch: Exception -> 0x0a86, TryCatch #0 {Exception -> 0x0a86, blocks: (B:13:0x005e, B:16:0x006a, B:18:0x0074, B:21:0x007c, B:23:0x00ac, B:25:0x00d4, B:27:0x017d, B:28:0x01a9, B:30:0x01af, B:32:0x01df, B:34:0x0207, B:36:0x02b0, B:37:0x02df, B:39:0x02e5, B:41:0x0315, B:43:0x033d, B:45:0x03e6, B:46:0x0415, B:48:0x0425, B:51:0x043d, B:52:0x0452, B:54:0x04c4, B:57:0x04d0, B:59:0x0561, B:64:0x0581, B:66:0x0587, B:68:0x058d, B:70:0x0593, B:71:0x0955, B:73:0x09c9, B:76:0x09d5, B:78:0x0a67, B:80:0x0598, B:83:0x05a2, B:85:0x05d2, B:87:0x05fa, B:88:0x0654, B:89:0x06bb, B:91:0x06c1, B:93:0x06f1, B:95:0x0719, B:96:0x0773, B:97:0x07da, B:99:0x07e0, B:101:0x0810, B:103:0x0838, B:104:0x0892, B:105:0x08fb, B:107:0x0901, B:109:0x0907, B:111:0x090d, B:112:0x0911, B:115:0x091c, B:116:0x092b, B:118:0x0931, B:119:0x0940, B:121:0x0946), top: B:12:0x005e }] */
        /* JADX WARN: Removed duplicated region for block: B:99:0x07e0 A[Catch: Exception -> 0x0a86, TryCatch #0 {Exception -> 0x0a86, blocks: (B:13:0x005e, B:16:0x006a, B:18:0x0074, B:21:0x007c, B:23:0x00ac, B:25:0x00d4, B:27:0x017d, B:28:0x01a9, B:30:0x01af, B:32:0x01df, B:34:0x0207, B:36:0x02b0, B:37:0x02df, B:39:0x02e5, B:41:0x0315, B:43:0x033d, B:45:0x03e6, B:46:0x0415, B:48:0x0425, B:51:0x043d, B:52:0x0452, B:54:0x04c4, B:57:0x04d0, B:59:0x0561, B:64:0x0581, B:66:0x0587, B:68:0x058d, B:70:0x0593, B:71:0x0955, B:73:0x09c9, B:76:0x09d5, B:78:0x0a67, B:80:0x0598, B:83:0x05a2, B:85:0x05d2, B:87:0x05fa, B:88:0x0654, B:89:0x06bb, B:91:0x06c1, B:93:0x06f1, B:95:0x0719, B:96:0x0773, B:97:0x07da, B:99:0x07e0, B:101:0x0810, B:103:0x0838, B:104:0x0892, B:105:0x08fb, B:107:0x0901, B:109:0x0907, B:111:0x090d, B:112:0x0911, B:115:0x091c, B:116:0x092b, B:118:0x0931, B:119:0x0940, B:121:0x0946), top: B:12:0x005e }] */
        @Override // android.view.View.OnClickListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onClick(android.view.View r33) {
            /*
                Method dump skipped, instructions count: 2708
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.fo.AttributesActivity.AnonymousClass16.onClick(android.view.View):void");
        }
    };
    View.OnClickListener datesListener = new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.AttributesActivity.17
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AttributesActivity.this.datePos = view.getId();
            AttributesActivity.this.showDialog(0);
        }
    };
    View.OnClickListener timesListener = new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.AttributesActivity.18
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AttributesActivity.this.timePos = view.getId();
            AttributesActivity.this.showDialog(1);
        }
    };
    private DatePickerDialog.OnDateSetListener mDateSetListener = new DatePickerDialog.OnDateSetListener() { // from class: com.conceptglobal.pmc.fo.AttributesActivity.25
        @Override // android.app.DatePickerDialog.OnDateSetListener
        public void onDateSet(DatePicker datePicker, int i, int i2, int i3) {
            AttributesActivity.this.mYear = i;
            AttributesActivity.this.mMonth = i2;
            AttributesActivity.this.mDay = i3;
            try {
                if (new SimpleDateFormat("yyyy-MM-dd").parse(i + "-" + (i2 + 1) + "-" + i3).compareTo(new Date()) < 30) {
                    AttributesActivity.this.updateDisplay();
                } else {
                    Toast.makeText(AttributesActivity.this.getApplicationContext(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectProperDate()), 1).show();
                }
            } catch (Exception e) {
                PLog.e(AttributesActivity.TAG, e);
            }
        }
    };
    private TimePickerDialog.OnTimeSetListener mTimeSetListener = new TimePickerDialog.OnTimeSetListener() { // from class: com.conceptglobal.pmc.fo.AttributesActivity.26
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
            ((TextView) AttributesActivity.mEntryArr.get(AttributesActivity.this.timePos)).setText(i + " : " + str2 + " : " + str);
        }
    };
    CompressListener listener = new CompressListener() { // from class: com.conceptglobal.pmc.fo.AttributesActivity.27
        @Override // com.conceptglobal.pmc.utils.CompressListener
        public void onComprssCompleteListener(String str) {
            UtilDeclarations.loadDiskThumbnail(AttributesActivity.this.context, AttributesActivity.this.imageView, new File(str));
        }
    };
    BroadcastReceiver mReceiver = new BroadcastReceiver() { // from class: com.conceptglobal.pmc.fo.AttributesActivity.30
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (AttributesActivity.this.lastSelectedattributeModel != null) {
                AttributesActivity attributesActivity = AttributesActivity.this;
                attributesActivity.showAddVillageDetailsDialog(attributesActivity.lastSelectedView, AttributesActivity.this.lastSelectedid, AttributesActivity.this.lastSelectedattributeModel.getDisplayType(), AttributesActivity.this.lastSelectedattributeModel, (HashMap) intent.getExtras().get("FarmersList"));
            }
        }
    };
    BroadcastReceiver mReceiver_QUANTITY = new BroadcastReceiver() { // from class: com.conceptglobal.pmc.fo.AttributesActivity.31
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            AttributesActivity.this.onResume();
        }
    };
    BroadcastReceiver campaignCompleateReceiver = new BroadcastReceiver() { // from class: com.conceptglobal.pmc.fo.AttributesActivity.32
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            AttributesActivity.this.fab3.setVisibility(8);
        }
    };
    BroadcastReceiver campaignsReceiver = new BroadcastReceiver() { // from class: com.conceptglobal.pmc.fo.AttributesActivity.33
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent.hasExtra("Campaigns_Farmers_Count")) {
                AttributesActivity.this.campaignsFarmersCount = intent.getExtras().getInt("Campaigns_Farmers_Count", 0);
                if (intent.hasExtra("Campaigns_SartiFarmers_Count")) {
                    AttributesActivity.this.campaignsSarthiFarmersCount = intent.getExtras().getInt("Campaigns_SartiFarmers_Count", 0);
                }
                Log.i("updateCount", "" + AttributesActivity.this.campaignsFarmersCount);
                AttributesActivity.this.updateFarmerCountField();
            }
        }
    };
    BroadcastReceiver farmerSelectedReceiver = new BroadcastReceiver() { // from class: com.conceptglobal.pmc.fo.AttributesActivity.34
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent.hasExtra("FarmerId")) {
                AttributesActivity.this.farmerId = intent.getExtras().getString("FarmerId", "");
                AttributesActivity.this.bindFarmerExpenditure();
            }
        }
    };

    private void setListeners() {
    }

    static /* synthetic */ int access$3510(AttributesActivity attributesActivity) {
        int i = attributesActivity.mForOperations;
        attributesActivity.mForOperations = i - 1;
        return i;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(R.layout.todo_attribute_info_layout);
        this.context = this;
        isCapaignCompleatedForDraftActivity = false;
        clearStaticvalues();
        this.mLocationUtils = new LocationUtils();
        ConstantsPMC.getInstance().getLanguageConfigurations(this.context);
        init();
        setListeners();
        getData();
        setData();
        setAttributeIdsFromconfiguration();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("FARMERS_Result");
        IntentFilter intentFilter2 = new IntentFilter();
        intentFilter2.addAction("QUANTITY_REMAINS");
        LocalBroadcastManager.getInstance(this).registerReceiver(this.mReceiver, intentFilter);
        IntentFilter intentFilter3 = new IntentFilter();
        intentFilter3.addAction("CAMPAIGNS_FARMERS_LIST");
        LocalBroadcastManager.getInstance(this).registerReceiver(this.campaignsReceiver, intentFilter3);
        LocalBroadcastManager.getInstance(this).registerReceiver(this.mReceiver_QUANTITY, intentFilter2);
        LocalBroadcastManager.getInstance(this).registerReceiver(this.farmerSelectedReceiver, new IntentFilter("FARMER_SELECTED"));
        IntentFilter intentFilter4 = new IntentFilter();
        intentFilter4.addAction(NeoCampaignConstants.CAMPAIGN_COMPLETED);
        LocalBroadcastManager.getInstance(this).registerReceiver(this.campaignCompleateReceiver, intentFilter4);
        initWebViews();
        new getNeointTokenTask().execute(new Void[0]);
    }

    private void setAttributeIdsFromconfiguration() {
        try {
            List asList = Arrays.asList(GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getItemValue("CampaignCropId")).split(","));
            List asList2 = Arrays.asList(GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getItemValue("CampaignBrandId")).split(","));
            List asList3 = Arrays.asList(GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getItemValue("CampaignRetailerId")).split(","));
            for (int i = 0; i < listAttributes.size(); i++) {
                AttributeModel attributeModel = listAttributes.get(i);
                if (asList.contains(attributeModel.getAttributeId() + "")) {
                    this.cropAttributeID = attributeModel.getAttributeId();
                }
                if (asList2.contains(attributeModel.getAttributeId() + "")) {
                    this.productAttributeID = attributeModel.getAttributeId();
                }
                if (asList3.contains(attributeModel.getAttributeId() + "")) {
                    this.retailerAttributeID = attributeModel.getAttributeId();
                }
            }
        } catch (Exception unused) {
        }
    }

    private void clearStaticvalues() {
        starttimeMobile = "";
        starttimeMobileMillis = 0L;
        stopTimeMobile = "";
        startTimeGPS = "";
        stopTimeGPS = "";
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
        this.textActivityName = (TextView) findViewById(R.id.activityNameText);
        this.atrrributesView = (ScrollView) findViewById(R.id.ield_inspections_opr_scroll);
        this.tvTimer = (TextView) findViewById(R.id.tvDisplayTimer);
        Button button = (Button) findViewById(R.id.btnStartStop);
        btnStartStop = button;
        button.setOnClickListener(this);
        this.rlTimerView = (RelativeLayout) findViewById(R.id.rl_timer);
        webView = (WebView) findViewById(R.id.webView);
        this.updateDOS = null;
        this.queries = Queries.getInstance();
        this.getDataFromDB = GetDataFromDB.getInstance();
        if (Items.selectedItemIds != null) {
            Items.selectedItemIds.clear();
            Items.selectedItems.clear();
        }
        this.timer = new Timer();
        FloatingActionButton floatingActionButton = (FloatingActionButton) findViewById(R.id.fab3);
        this.fab3 = floatingActionButton;
        floatingActionButton.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.AttributesActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                StringBuilder sb;
                StringBuilder sb2;
                if (!TextUtils.isEmpty(AttributesActivity.starttimeMobile) || !AttributesActivity.this.isLoadingDone) {
                    if (!AttributesActivity.this.mapEntryEdit.containsKey(Integer.valueOf(AttributesActivity.this.cropAttributeID)) || AttributesActivity.this.mapEntryEdit.get(Integer.valueOf(AttributesActivity.this.cropAttributeID)) == null || !((EditText) AttributesActivity.this.mapEntryEdit.get(Integer.valueOf(AttributesActivity.this.cropAttributeID))).getText().toString().isEmpty()) {
                        if (AttributesActivity.this.mapEntryEdit.containsKey(Integer.valueOf(AttributesActivity.this.productAttributeID)) && AttributesActivity.this.mapEntryEdit.get(Integer.valueOf(AttributesActivity.this.productAttributeID)) != null && ((EditText) AttributesActivity.this.mapEntryEdit.get(Integer.valueOf(AttributesActivity.this.productAttributeID))).getText().toString().isEmpty()) {
                            Toast.makeText(AttributesActivity.this.context, "Please select " + ((AttributeModel) AttributesActivity.listAttributes.get(((Integer) AttributesActivity.this.mapEntryEditIds.get(Integer.valueOf(AttributesActivity.this.productAttributeID))).intValue())).getAttributeName(), 0).show();
                            return;
                        }
                        if (SAAttributeActivity.campaignID.isEmpty() && FarmerFormActivity.campaignID.isEmpty()) {
                            if (AttributesActivity.this.isRewardsMappedToGeography) {
                                AttributesActivity.this.showRewardsConformationAlertDialog(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_rewardsConformationText()));
                                return;
                            }
                            AttributesActivity.this.LaunchCapaignPage(false);
                            if (AttributesActivity.this.transId + 0 > 0) {
                                sb2 = new StringBuilder();
                                sb2.append(AttributesActivity.this.transId);
                            } else {
                                sb2 = new StringBuilder();
                                sb2.append(AttributesActivity.this.activityAssignmentId);
                            }
                            sb2.append("");
                            SharedPrefManager.setBoolean(AttributesActivity.this, false, sb2.toString());
                            return;
                        }
                        if (AttributesActivity.this.transId + 0 > 0) {
                            sb = new StringBuilder();
                            sb.append(AttributesActivity.this.transId);
                        } else {
                            sb = new StringBuilder();
                            sb.append(AttributesActivity.this.activityAssignmentId);
                        }
                        sb.append("");
                        String sb3 = sb.toString();
                        AttributesActivity attributesActivity = AttributesActivity.this;
                        attributesActivity.LaunchCapaignPage(SharedPrefManager.getBoolean(attributesActivity, sb3));
                        return;
                    }
                    Toast.makeText(AttributesActivity.this.context, "Please select " + ((AttributeModel) AttributesActivity.listAttributes.get(((Integer) AttributesActivity.this.mapEntryEditIds.get(Integer.valueOf(AttributesActivity.this.cropAttributeID))).intValue())).getAttributeName(), 0).show();
                    return;
                }
                AttributesActivity.this.showAlertDialog("Before start Farmer Attendance Campaign, Please click on 'START' button");
            }
        });
        if (SAAttributeActivity.isRestoredActivity) {
            btnStartStop.setText("");
            btnStartStop.performClick();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void LaunchCapaignPage(boolean z) {
        if (UtilDeclarations.isOnline(this.context)) {
            Intent intent = new Intent(this, (Class<?>) NeoCampaignWebView.class);
            if (this.transId > 0) {
                intent.putExtra("campaignID", SAAttributeActivity.campaignID);
            } else {
                intent.putExtra("campaignID", FarmerFormActivity.campaignID);
            }
            intent.putExtra("IsAppover", false);
            intent.putExtra(NeoCampaignConstants.IS_LOTTERYE_NABLED, z);
            String str = "";
            if (this.transId > 0) {
                intent.putExtra("transId", this.transId + "");
            } else if (this.activityAssignmentId > 0) {
                intent.putExtra("transId", this.activityAssignmentId + "");
            } else {
                int intExtra = getIntent().getIntExtra("ActivityAssignmentId", 0);
                this.activityAssignmentId = intExtra;
                if (intExtra > 0) {
                    intent.putExtra("transId", this.activityAssignmentId + "");
                } else if (FarmerFormActivity.currentActivityAssignmentId > 0) {
                    intent.putExtra("transId", FarmerFormActivity.currentActivityAssignmentId + "");
                } else {
                    showErrorAlertDialog("Something went wrong please perform activity again.");
                    return;
                }
            }
            intent.putExtra("activityName", this.activityName);
            try {
                if (this.mapEntryEdit.containsKey(Integer.valueOf(this.cropAttributeID)) && this.mapEntryEdit.get(Integer.valueOf(this.cropAttributeID)) != null) {
                    intent.putExtra("Crop", this.mapEntryEdit.get(Integer.valueOf(this.cropAttributeID)).getText().toString());
                }
                if (this.mapEntryEdit.containsKey(Integer.valueOf(this.cropAttributeID)) && this.mapEntryEdit.get(Integer.valueOf(this.cropAttributeID)) != null) {
                    intent.putExtra("Product", this.mapEntryEdit.get(Integer.valueOf(this.productAttributeID)).getText().toString());
                }
                if (this.mapEntryEdit.containsKey(Integer.valueOf(this.retailerAttributeID)) && this.mapEntryEdit.get(Integer.valueOf(this.retailerAttributeID)) != null) {
                    intent.putExtra("RetailerName", this.mapEntryEdit.get(Integer.valueOf(this.retailerAttributeID)).getTag(R.string.ENTRYNAME_SET) != null ? this.mapEntryEdit.get(Integer.valueOf(this.retailerAttributeID)).getTag(R.string.ENTRYNAME_SET).toString() : "");
                    intent.putExtra("RetailerContactID", this.mapEntryEdit.get(Integer.valueOf(this.retailerAttributeID)).getTag(R.string.ENTRYID_SET) != null ? this.mapEntryEdit.get(Integer.valueOf(this.retailerAttributeID)).getTag(R.string.ENTRYID_SET).toString() : "");
                }
            } catch (Exception unused) {
            }
            try {
                int i = this.segmentId;
                if (i == 1) {
                    str = GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getVillageName("FarmerMaster", "VillageName || '-' || MandalName as VillageName", "RespondentNo", this.farmerId));
                } else if (i == 2 || i == 3) {
                    str = GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getVillageName("DealerMaster", "VillageName || '-' || MandalName as VillageName", "ContactId", this.farmerId));
                }
                if (this.segmentId == 4) {
                    str = GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getVillageNameFromVillageMaster(this.farmerId));
                }
                intent.putExtra("Location", str);
            } catch (Exception unused2) {
            }
            startActivity(intent);
            return;
        }
        showAlert(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_pleaseCheckDataError()));
    }

    private void showAlert(String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setMessage(str).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.AttributesActivity.2
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

    private JSONObject prepareCampaignDetails(String str, String str2, String str3) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(NeoCampaignConstants.PARENT_APP, "PMC");
            jSONObject.put("CampignActivityId", this.transId);
            jSONObject.put("CampaignSource", "PMC");
            jSONObject.put(JobStorage.COLUMN_ID, "");
            jSONObject.put("CampaignTitle", this.activityName);
            jSONObject.put("CampaignDescription", "");
            jSONObject.put("CampaignStatus", "");
            jSONObject.put("CampaignProfileImage", "");
            jSONObject.put("CampignLatLong", "");
            jSONObject.put("CampignLocation", str);
            jSONObject.put("CampignSubLocation", "");
            jSONObject.put("CampignSubLocationLatLong", "");
            jSONObject.put("CampaignStartDate", "");
            jSONObject.put("CampaignEndDate", "");
            jSONObject.put("VMNType", "Call");
            jSONObject.put("CampaignScheduleDate", "");
            jSONObject.put("CampaignScheduleTime", "");
            JSONArray jSONArray = new JSONArray();
            for (String str4 : str3.split(",")) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("NeoIntId", "");
                jSONObject2.put("displayName", str4);
                jSONObject2.put("Product Name", str4);
                jSONArray.put(jSONObject2);
            }
            jSONObject.put("CampaignProductProfile", jSONArray);
            JSONArray jSONArray2 = new JSONArray();
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("NeoIntId", "");
            jSONObject3.put("Crop Name", str2);
            jSONObject3.put("Crop Code", "");
            jSONObject3.put("CropId", "");
            jSONArray2.put(jSONObject3);
            jSONObject.put("CampaignCrops", jSONArray2);
            jSONObject.put("HasApprovals", "No");
            jSONObject.put("Moments", new JSONArray());
            JSONObject jSONObject4 = new JSONObject();
            jSONObject4.put("Zone", "");
            jSONObject4.put("Region", "");
            jSONObject4.put("Territory", "");
            jSONObject.put("ESADetails", jSONObject4);
            jSONObject.put("LotteryFlag", false);
            jSONObject.put("DiscountFlag", false);
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    private void getData() {
        String stringValue;
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
            this.transId = intent.getLongExtra("TRANSID", 0L);
            this.assignmentID = intent.getIntExtra("AssignmentId", 0);
            if (intent.hasExtra(HttpHeaders.FROM)) {
                this.from = intent.getStringExtra(HttpHeaders.FROM);
            }
            try {
                int intValue = GetDataFromDB.getInstance().getIntValue(Queries.getInstance().getIsCampaignRequired());
                if (GetDataFromDB.getInstance().getIntValue(Queries.getInstance().getCampaignConfiguration(activityId)) == 1 && intValue == 1) {
                    this.fab3.setVisibility(0);
                    this.isActivityContainsCapaign = true;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            try {
                if (this.transId > 0) {
                    stringValue = GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getCampaignID(this.transId));
                } else {
                    stringValue = GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getCampaignIDToDo(this.activityAssignmentId));
                }
                if (TextUtils.isEmpty(stringValue)) {
                    return;
                }
                this.fab3.setVisibility(8);
                isCapaignCompleatedForDraftActivity = true;
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        } catch (Exception e3) {
            PLog.e(TAG, e3);
        }
    }

    private void setData() {
        this.mattributesnamesArr = new ArrayList();
        mEntryArr = new ArrayList();
        mEntryArrIds = new ArrayList();
        this.mImageviews = new ArrayList();
        this.textActivityName.setText("" + this.activityName);
        loadAttributes(activityId);
        this.isLoadingDone = true;
        Calendar calendar = Calendar.getInstance();
        this.mDay = calendar.get(5);
        this.mMonth = calendar.get(2);
        this.mYear = calendar.get(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadAttributes(int i) {
        try {
            this.ruleAttributeIds = GetDataFromDB.getInstance().getRuleAttributeIds(Queries.getInstance().getRuleDetails(i));
            List<AttributeModel> pMCActivityAttributes = GetDataFromDB.getInstance().getPMCActivityAttributes(Queries.getInstance().getPMCActivityAttributeQueryUpdated(this.farmerId, activityId, this.activityAssignmentId, this.transId));
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

    /* JADX WARN: Can't wrap try/catch for region: R(45:0|1|(1:3)|4|(5:6|(4:284|285|(1:295)(2:289|(1:291)(1:294))|292)(2:8|(1:283)(1:12))|13|(2:277|(1:282)(1:281))(3:17|(1:19)|20)|21)(2:298|(8:300|(4:302|303|304|(9:308|309|310|311|(3:314|315|312)|316|317|(1:350)(7:321|(2:345|346)|323|(4:326|(4:328|(1:330)|331|332)(1:334)|333|324)|335|336|(3:338|(1:340)(1:343)|341)(1:344))|342))|359|316|317|(1:319)|350|342)(6:360|(13:362|363|364|(1:370)|371|(2:394|(1:399)(1:398))(1:375)|376|(1:382)|383|(1:385)|386|(1:388)|389)(2:402|(3:404|(1:410)(1:408)|409)(5:411|(4:413|(2:415|(3:417|(1:423)(1:421)|422))(1:425)|424|422)(3:426|(3:428|(1:440)(2:432|(1:439)(1:436))|437)(2:441|(3:443|(1:454)(2:447|(1:453)(1:451))|452)(2:455|(3:457|(1:468)(2:461|(1:467)(1:465))|466)(6:469|(3:471|(1:475)|476)(2:479|(3:481|(1:492)(2:485|(1:491)(1:489))|490)(2:493|(14:495|(1:530)|499|(1:505)|506|(1:508)(2:527|(1:529))|509|(1:526)(1:513)|514|(1:525)(2:518|(1:524)(1:522))|523|478|392|393)(4:531|(2:533|(1:544)(2:537|(1:543)(1:541)))(2:545|(2:547|(2:557|(1:564)(1:563))(2:551|(1:556)(1:555)))(2:565|(3:567|(2:569|(1:571)(1:572))|573)(2:574|(4:576|(2:578|(1:580))|581|393))))|542|393)))|477|478|392|393)))|438)|391|392|393))|390|391|392|393))|22|(1:24)|25|(1:276)(1:29)|30|(1:32)(2:230|(1:232)(35:233|(1:235)(2:237|(1:239)(34:240|(1:242)(2:244|(1:246)(2:247|(1:249)(2:250|(1:252)(2:253|(28:255|36|37|38|(1:40)(2:188|(1:190)(2:191|(1:193)(2:194|(1:196)(2:197|(1:199)(2:200|(1:202)(2:203|(1:205)(2:206|(1:208)(2:209|(1:211)(2:212|(1:214)(2:215|(1:217)(2:218|(1:220)(2:221|(1:223)(2:224|(1:226)(2:227|(1:229)))))))))))))))|41|42|(1:48)|49|(3:181|182|(1:184))|53|(1:57)|58|(6:156|157|158|159|160|(1:174)(16:166|167|168|169|62|(1:155)(3:66|(1:68)(1:154)|69)|70|(1:72)(1:(1:137)(3:138|(3:144|145|(1:149))|153))|73|(1:75)|76|(1:78)(2:97|(1:99)(2:100|(1:102)(2:103|(1:105)(2:106|(1:108)(2:109|(1:111)(2:112|(1:114)(2:115|(1:117)(2:118|(1:120)(2:121|(1:123)(2:124|(1:126)(2:127|(1:129)(2:130|(1:132)(2:133|(1:135))))))))))))))|79|(3:85|86|(1:90))|94|95))(1:60)|61|62|(1:64)|155|70|(0)(0)|73|(0)|76|(0)(0)|79|(5:81|83|85|86|(2:88|90))|94|95)(31:256|(1:258)(2:259|(1:261)(31:262|(1:264)(2:266|(1:268)(31:269|(1:271)(2:273|(1:275))|272|38|(0)(0)|41|42|(3:44|46|48)|49|(1:51)|181|182|(0)|53|(2:55|57)|58|(0)(0)|61|62|(0)|155|70|(0)(0)|73|(0)|76|(0)(0)|79|(0)|94|95))|265|38|(0)(0)|41|42|(0)|49|(0)|181|182|(0)|53|(0)|58|(0)(0)|61|62|(0)|155|70|(0)(0)|73|(0)|76|(0)(0)|79|(0)|94|95))|37|38|(0)(0)|41|42|(0)|49|(0)|181|182|(0)|53|(0)|58|(0)(0)|61|62|(0)|155|70|(0)(0)|73|(0)|76|(0)(0)|79|(0)|94|95)))))|243|35|36|37|38|(0)(0)|41|42|(0)|49|(0)|181|182|(0)|53|(0)|58|(0)(0)|61|62|(0)|155|70|(0)(0)|73|(0)|76|(0)(0)|79|(0)|94|95))|236|34|35|36|37|38|(0)(0)|41|42|(0)|49|(0)|181|182|(0)|53|(0)|58|(0)(0)|61|62|(0)|155|70|(0)(0)|73|(0)|76|(0)(0)|79|(0)|94|95))|33|34|35|36|37|38|(0)(0)|41|42|(0)|49|(0)|181|182|(0)|53|(0)|58|(0)(0)|61|62|(0)|155|70|(0)(0)|73|(0)|76|(0)(0)|79|(0)|94|95|(1:(0))) */
    /* JADX WARN: Can't wrap try/catch for region: R(8:300|(4:302|303|304|(9:308|309|310|311|(3:314|315|312)|316|317|(1:350)(7:321|(2:345|346)|323|(4:326|(4:328|(1:330)|331|332)(1:334)|333|324)|335|336|(3:338|(1:340)(1:343)|341)(1:344))|342))|359|316|317|(1:319)|350|342) */
    /* JADX WARN: Code restructure failed: missing block: B:186:0x12f3, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:187:0x12f4, code lost:
    
        r0.printStackTrace();
     */
    /* JADX WARN: Code restructure failed: missing block: B:351:0x04cc, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:352:0x04cd, code lost:
    
        com.conceptglobal.pmc.utils.PLog.e(com.conceptglobal.pmc.fo.AttributesActivity.TAG, r0);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:136:0x13fa  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x131e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:184:0x12e8 A[Catch: Exception -> 0x12f3, TRY_LEAVE, TryCatch #10 {Exception -> 0x12f3, blocks: (B:182:0x12e4, B:184:0x12e8), top: B:181:0x12e4 }] */
    /* JADX WARN: Removed duplicated region for block: B:188:0x120a  */
    /* JADX WARN: Removed duplicated region for block: B:230:0x10fb  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x1026  */
    /* JADX WARN: Removed duplicated region for block: B:319:0x03b1 A[Catch: Exception -> 0x04cc, TRY_LEAVE, TryCatch #3 {Exception -> 0x04cc, blocks: (B:317:0x03ab, B:319:0x03b1, B:323:0x03fe, B:324:0x040a, B:326:0x0412, B:328:0x0420, B:330:0x0444, B:331:0x044e, B:333:0x046e, B:336:0x0471, B:338:0x0477, B:340:0x047c, B:341:0x04a0, B:343:0x049d, B:344:0x04a4, B:349:0x03f9, B:350:0x04b8, B:346:0x03c3), top: B:316:0x03ab, inners: #6 }] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x10de  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x1200  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x12c5  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x12e0  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x12ff  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x1378  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x138e  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x13e6  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x14fe  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x1518  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x16aa  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x152c  */
    /* JADX WARN: Type inference failed for: r0v412, types: [android.widget.LinearLayout] */
    /* JADX WARN: Type inference failed for: r0v483, types: [android.widget.LinearLayout] */
    /* JADX WARN: Type inference failed for: r13v14 */
    /* JADX WARN: Type inference failed for: r13v18, types: [android.view.View, android.widget.EditText, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r13v20 */
    /* JADX WARN: Type inference failed for: r13v21 */
    /* JADX WARN: Type inference failed for: r13v8 */
    /* JADX WARN: Type inference failed for: r14v10 */
    /* JADX WARN: Type inference failed for: r14v11 */
    /* JADX WARN: Type inference failed for: r14v17, types: [android.view.View, android.widget.LinearLayout] */
    /* JADX WARN: Type inference failed for: r14v33 */
    /* JADX WARN: Type inference failed for: r69v0, types: [android.widget.LinearLayout] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void addOperationsDynamicLayout(java.lang.String r64, java.lang.String r65, int r66, java.lang.String r67, final com.conceptglobal.pmc.model.AttributeModel r68, android.widget.LinearLayout r69, boolean r70) {
        /*
            Method dump skipped, instructions count: 5863
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.fo.AttributesActivity.addOperationsDynamicLayout(java.lang.String, java.lang.String, int, java.lang.String, com.conceptglobal.pmc.model.AttributeModel, android.widget.LinearLayout, boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAutoCompleteAdapter(ArrayList<String> arrayList, final EditText editText, int i) {
        this.mAutoCompleteTextView.setAdapter(new ArrayAdapter(this, R.layout.layout_dropdown, arrayList));
        UtilDeclarations.dismissProgressDialog();
        this.mAutoCompleteTextView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.conceptglobal.pmc.fo.AttributesActivity.12
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j) {
                String[] split = adapterView.getItemAtPosition(i2).toString().split("-");
                AttributesActivity.this.mAutoCompleteTextView.setText(split[0].trim());
                AttributesActivity.this.mAutoCompleteTextView.setSelection(AttributesActivity.this.mAutoCompleteTextView.getText().length());
                editText.setText(split[1].trim());
            }
        });
        this.mAutoCompleteTextViewN.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.conceptglobal.pmc.fo.AttributesActivity.13
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j) {
                String[] split = adapterView.getItemAtPosition(i2).toString().split("-");
                AttributesActivity.this.mAutoCompleteTextViewN.setText(split[0].trim());
                AttributesActivity.this.mAutoCompleteTextViewN.setSelection(AttributesActivity.this.mAutoCompleteTextViewN.getText().length());
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
                    if (!visibiltyGoneIds.contains(Integer.valueOf(attributeModel.getAttributeId()))) {
                        if (mEntryArr.get(i).getText().toString().trim().length() == 0) {
                            mEntryArr.get(i).setError(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_enterTheToast()) + " " + attributeModel.getAttributeName());
                        } else if ((attributeModel.getControlType().equalsIgnoreCase("Dropdown") || attributeModel.getControlType().equalsIgnoreCase("Multiselect Dropdown")) && mEntryArrIds.get(i).getText().toString().trim().length() == 0) {
                            try {
                                mEntryArr.get(i).setError("Please reselect " + attributeModel.getAttributeName());
                            } catch (Exception unused) {
                            }
                        } else {
                            if (attributeModel.getMinLength() != 0 && mEntryArr.get(i).getText().toString().trim().length() < attributeModel.getMinLength()) {
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
                    }
                } else if (mEntryArr.get(i).getText().toString().trim().length() != 0) {
                    if (attributeModel.getMinLength() != 0 && mEntryArr.get(i).getText().toString().length() < attributeModel.getMinLength()) {
                        mEntryArr.get(i).setError(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_minimumLengthFor()) + " " + attributeModel.getAttributeName() + " - " + attributeModel.getMinLength());
                        z2 = false;
                    }
                    if (attributeModel.getControlType().equals("TextBoxND")) {
                        try {
                            Float.parseFloat(mEntryArr.get(i).getText().toString());
                        } catch (Exception unused3) {
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
            String stringValue;
            boolean z;
            this.editText.setError(null);
            try {
                if (editable.toString().length() > 0 && TextUtils.isEmpty(AttributesActivity.starttimeMobile) && AttributesActivity.this.isLoadingDone) {
                    AttributesActivity.this.showAlertDialog(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_StartTimerText()));
                    this.editText.setText("");
                    return;
                }
            } catch (Exception unused) {
            }
            if (this.obj.getControlType().equalsIgnoreCase("Dropdown")) {
                int i = 0;
                try {
                    String stringValue2 = GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getItemValue("DemoAttributeCostFilterValue"));
                    if (stringValue2 != null && stringValue2.length() > 0) {
                        for (String str : stringValue2.split(",")) {
                            if (str.equals(this.obj.getAttributeId() + "")) {
                                z = true;
                                break;
                            }
                        }
                    }
                    z = false;
                    if (editable.toString().length() > 0 && z) {
                        String obj = ((EditText) AttributesActivity.mEntryArrIds.get(((Integer) AttributesActivity.this.mapEntryEditIds.get(Integer.valueOf(this.obj.getAttributeId()))).intValue())).getText().toString();
                        int intValue = GetDataFromDB.getInstance().getIntValue(Queries.getInstance().getDemoActivityExpenseAmountQry(obj));
                        String stringValue3 = GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getDemoActivityBrandQry(obj));
                        String stringValue4 = GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getDemoActivityBrandIdQry(obj));
                        String stringValue5 = GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getDemoActivityProtocolPlotSizeQry(obj));
                        String stringValue6 = GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getDemoActivityDosageQry(obj));
                        try {
                            ((EditText) AttributesActivity.this.mapEntryEdit.get(861)).setText(intValue + "");
                        } catch (Exception unused2) {
                        }
                        try {
                            String stringValue7 = GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getItemValue("DemoProductAttributeIDS"));
                            if (!TextUtils.isEmpty(stringValue7)) {
                                String[] split = stringValue7.split(",");
                                for (int i2 = 0; i2 < split.length; i2++) {
                                    if (AttributesActivity.this.mapEntryEdit.containsKey(Integer.valueOf(Integer.parseInt(split[i2])))) {
                                        ((EditText) AttributesActivity.this.mapEntryEdit.get(Integer.valueOf(Integer.parseInt(split[i2])))).setText(stringValue3 + "");
                                        ((EditText) AttributesActivity.mEntryArrIds.get(((Integer) AttributesActivity.this.mapEntryEditIds.get(Integer.valueOf(Integer.parseInt(split[i2])))).intValue())).setText(stringValue4 + "");
                                    }
                                }
                            }
                        } catch (Exception unused3) {
                        }
                        try {
                            ((EditText) AttributesActivity.this.mapEntryEdit.get(879)).setText(stringValue5 + "");
                        } catch (Exception unused4) {
                        }
                        try {
                            ((EditText) AttributesActivity.this.mapEntryEdit.get(853)).setText(stringValue6 + "");
                        } catch (Exception unused5) {
                        }
                        if (intValue + GetDataFromDB.getInstance().getIntValue(Queries.getInstance().getFarmerDemoAmountQry(AttributesActivity.this.farmerId)) > GetDataFromDB.getInstance().getIntValue(Queries.getInstance().getItemValue("DemoThresholdAmount"))) {
                            AttributesActivity.this.showAlertDialog(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_democostexceeds()));
                            this.editText.setText("");
                            ((EditText) AttributesActivity.mEntryArrIds.get(((Integer) AttributesActivity.this.mapEntryEditIds.get(Integer.valueOf(this.obj.getAttributeId()))).intValue())).setText("");
                            return;
                        }
                    }
                } catch (Exception unused6) {
                }
                if (this.obj.getIsKeyAttribute() == 1) {
                    this.obj.setAttributeValue(editable.toString());
                    if (!this.obj.getAttributeValue().equalsIgnoreCase("0") && !this.obj.getAttributeValue().equalsIgnoreCase("")) {
                        if (AttributesActivity.this.getDataFromDB.getKeyAttributeId(AttributesActivity.activityId, AttributesActivity.this.getDataFromDB.getDropdownDisplayField(this.obj), this.obj.getAttributeId()) != 0) {
                            try {
                                ArrayList arrayList = new ArrayList();
                                List<AttributeModel> pMCActivityAttributes = GetDataFromDB.getInstance().getPMCActivityAttributes(Queries.getInstance().getPMCActivityKeyAttributes(AttributesActivity.activityId, AttributesActivity.this.getDataFromDB.getDropdownDisplayField(this.obj), this.obj.getAttributeId()));
                                List<AttributeModel> pMCActivityAttributes2 = GetDataFromDB.getInstance().getPMCActivityAttributes(Queries.getInstance().getPMCActivityKeyAttributes_All(AttributesActivity.activityId, AttributesActivity.this.getDataFromDB.getDropdownDisplayField(this.obj), this.obj.getAttributeId()));
                                Iterator it = AttributesActivity.listAttributes.iterator();
                                while (it.hasNext()) {
                                    AttributeModel performFiltering = AttributesActivity.this.performFiltering(pMCActivityAttributes2, "", (AttributeModel) it.next());
                                    if (performFiltering != null) {
                                        arrayList.add(performFiltering);
                                    }
                                }
                                if (arrayList.size() > 0) {
                                    Iterator it2 = arrayList.iterator();
                                    while (it2.hasNext()) {
                                        int findModelPosition = AttributesActivity.this.findModelPosition(AttributesActivity.listAttributes, (AttributeModel) it2.next());
                                        AttributesActivity.listAttributes.remove(findModelPosition);
                                        AttributesActivity.this.mAddDynamicLinear.removeViewAt(findModelPosition);
                                        AttributesActivity.access$3510(AttributesActivity.this);
                                        AttributesActivity.this.mattributesnamesArr.remove(findModelPosition);
                                        AttributesActivity.mEntryArrIds.remove(findModelPosition);
                                        AttributesActivity.mEntryArr.remove(findModelPosition);
                                    }
                                }
                                for (AttributeModel attributeModel : pMCActivityAttributes) {
                                    AttributesActivity.listAttributes.add(attributeModel);
                                    AttributesActivity.this.addOperationsDynamicLayout(attributeModel.getAttributeName(), attributeModel.getControlType(), attributeModel.getAttributeId(), attributeModel.getAttributeValue(), attributeModel, AttributesActivity.this.mAddDynamicLinear, false);
                                }
                            } catch (Exception e) {
                                PLog.e(AttributesActivity.TAG, e);
                            }
                        } else {
                            try {
                                ArrayList arrayList2 = new ArrayList();
                                List<AttributeModel> pMCActivityAttributes3 = GetDataFromDB.getInstance().getPMCActivityAttributes(Queries.getInstance().getPMCActivityAttributeQueryUpdated(AttributesActivity.this.farmerId, AttributesActivity.activityId, AttributesActivity.this.activityAssignmentId, AttributesActivity.this.transId));
                                Iterator it3 = AttributesActivity.listAttributes.iterator();
                                while (it3.hasNext()) {
                                    AttributeModel performFiltering2 = AttributesActivity.this.performFiltering(pMCActivityAttributes3, "", (AttributeModel) it3.next());
                                    if (performFiltering2 != null) {
                                        arrayList2.add(performFiltering2);
                                    }
                                }
                                if (arrayList2.size() > 0) {
                                    Iterator it4 = arrayList2.iterator();
                                    while (it4.hasNext()) {
                                        int findModelPosition2 = AttributesActivity.this.findModelPosition(AttributesActivity.listAttributes, (AttributeModel) it4.next());
                                        AttributesActivity.listAttributes.remove(findModelPosition2);
                                        AttributesActivity.this.mAddDynamicLinear.removeViewAt(findModelPosition2);
                                        AttributesActivity.access$3510(AttributesActivity.this);
                                        AttributesActivity.this.mattributesnamesArr.remove(findModelPosition2);
                                        AttributesActivity.mEntryArrIds.remove(findModelPosition2);
                                        AttributesActivity.mEntryArr.remove(findModelPosition2);
                                    }
                                }
                            } catch (Exception e2) {
                                PLog.e(AttributesActivity.TAG, e2);
                            }
                        }
                    }
                }
                List<Integer> filterAttributesByFilterAttribute = AttributesActivity.this.filterAttributesByFilterAttribute(this.obj.getAttributeId());
                try {
                    if (filterAttributesByFilterAttribute.size() > 0) {
                        for (Integer num : filterAttributesByFilterAttribute) {
                            ((EditText) AttributesActivity.mEntryArr.get(((Integer) AttributesActivity.this.mapEntryEditIds.get(num)).intValue())).setText("");
                            ((EditText) AttributesActivity.mEntryArrIds.get(((Integer) AttributesActivity.this.mapEntryEditIds.get(num)).intValue())).setText("");
                        }
                    }
                } catch (Exception e3) {
                    e3.printStackTrace();
                }
                if (AttributesActivity.this.ruleAttributeIds != null && AttributesActivity.this.ruleAttributeIds.size() > 0) {
                    try {
                        int intValue2 = AttributesActivity.this.getDataFromDB.getIntValue(Queries.getInstance().getParentAttributeId(AttributesActivity.activityId, this.obj.getAttributeId()));
                        if (intValue2 > 0 && intValue2 == this.obj.getAttributeId()) {
                            int i3 = 0;
                            while (i3 < AttributesActivity.this.ruleAttributeIds.size()) {
                                if (AttributesActivity.this.getDataFromDB.getIntValue(Queries.getInstance().getParentAttributeIdDraft(AttributesActivity.activityId, ((Integer) AttributesActivity.this.ruleAttributeIds.get(i3)).intValue())) == intValue2) {
                                    int intValue3 = AttributesActivity.this.getDataFromDB.getIntValue(Queries.getInstance().getRuleParentAttrValueId(AttributesActivity.activityId, this.obj.getAttributeId(), ((Integer) AttributesActivity.this.ruleAttributeIds.get(i3)).intValue()));
                                    if (this.obj.getAttributeSource() != null && this.obj.getAttributeSource().contains("ConfigurablelookupMaster")) {
                                        stringValue = GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getItemKeyByConfigId(intValue3));
                                    } else {
                                        stringValue = GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getCompanyNameQuery(intValue3 + ""));
                                    }
                                    int i4 = 73;
                                    if (TextUtils.isEmpty(stringValue) || !stringValue.equalsIgnoreCase(this.editText.getText().toString())) {
                                        Integer num2 = (Integer) AttributesActivity.this.ruleAttributeIds.get(i3);
                                        int intValue4 = num2.intValue();
                                        int childCount = AttributesActivity.this.mAddDynamicLinear.getChildCount();
                                        for (int i5 = 0; i5 < childCount; i5++) {
                                            View childAt = AttributesActivity.this.mAddDynamicLinear.getChildAt(i5);
                                            if (((LinearLayout) childAt).getChildAt(1) != null && ((LinearLayout) childAt).getChildAt(1).getTag(R.string.VISIBILITY_ID) != null && ((Integer) ((LinearLayout) childAt).getChildAt(1).getTag(R.string.VISIBILITY_ID)).intValue() == intValue4) {
                                                AttributesActivity.this.mAddDynamicLinear.getChildAt(i5).setVisibility(8);
                                                if (!AttributesActivity.visibiltyGoneIds.contains(num2)) {
                                                    AttributesActivity.visibiltyGoneIds.add(num2);
                                                }
                                                if (ConstantsPMC.getInstance().getIsTrainingORLive() == 2) {
                                                    if (AttributesActivity.activityId == 73 && intValue4 == 965) {
                                                        for (int i6 = 0; i6 < childCount; i6++) {
                                                            if (((Integer) ((LinearLayout) AttributesActivity.this.mAddDynamicLinear.getChildAt(i6)).getChildAt(1).getTag(R.string.VISIBILITY_ID)).intValue() == 958) {
                                                                AttributesActivity.this.mAddDynamicLinear.getChildAt(i6).setVisibility(0);
                                                                AttributesActivity.visibiltyGoneIds.remove(958);
                                                            }
                                                        }
                                                    }
                                                } else if (AttributesActivity.activityId == 80 && intValue4 == 962) {
                                                    for (int i7 = 0; i7 < childCount; i7++) {
                                                        if (((Integer) ((LinearLayout) AttributesActivity.this.mAddDynamicLinear.getChildAt(i7)).getChildAt(1).getTag(R.string.VISIBILITY_ID)).intValue() == 963) {
                                                            AttributesActivity.this.mAddDynamicLinear.getChildAt(i7).setVisibility(0);
                                                            AttributesActivity.visibiltyGoneIds.remove(963);
                                                        }
                                                    }
                                                }
                                                try {
                                                    ((EditText) AttributesActivity.mEntryArrIds.get(((Integer) AttributesActivity.this.mapEntryEditIds.get(num2)).intValue())).setText("");
                                                } catch (Exception unused7) {
                                                }
                                                try {
                                                    LinearLayout linearLayout = (LinearLayout) AttributesActivity.this.mAddDynamicLinear.getChildAt(i5);
                                                    if (linearLayout.getChildAt(1) != null && (linearLayout.getChildAt(1) instanceof EditText)) {
                                                        ((EditText) linearLayout.getChildAt(1)).setText("");
                                                    }
                                                } catch (Exception unused8) {
                                                }
                                            }
                                        }
                                    } else {
                                        String stringValue8 = AttributesActivity.this.getDataFromDB.getStringValue(Queries.getInstance().getOperationType(AttributesActivity.activityId, this.obj.getAttributeId(), intValue3));
                                        Integer num3 = (Integer) AttributesActivity.this.ruleAttributeIds.get(i3);
                                        int intValue5 = num3.intValue();
                                        if (stringValue8 != null && stringValue8.equalsIgnoreCase("Visibility")) {
                                            int childCount2 = AttributesActivity.this.mAddDynamicLinear.getChildCount();
                                            int i8 = 0;
                                            while (i8 < childCount2) {
                                                View childAt2 = AttributesActivity.this.mAddDynamicLinear.getChildAt(i8);
                                                if (((LinearLayout) childAt2).getChildAt(1) != null && ((LinearLayout) childAt2).getChildAt(1).getTag(R.string.VISIBILITY_ID) != null && ((Integer) ((LinearLayout) childAt2).getChildAt(1).getTag(R.string.VISIBILITY_ID)).intValue() == intValue5) {
                                                    AttributesActivity.this.mAddDynamicLinear.getChildAt(i8).setVisibility(i);
                                                    if (AttributesActivity.visibiltyGoneIds.contains(num3)) {
                                                        AttributesActivity.visibiltyGoneIds.remove(num3);
                                                    }
                                                    if (ConstantsPMC.getInstance().getIsTrainingORLive() == 2) {
                                                        if (AttributesActivity.activityId == i4 && intValue5 == 965) {
                                                            for (int i9 = 0; i9 < childCount2; i9++) {
                                                                if (((Integer) ((LinearLayout) AttributesActivity.this.mAddDynamicLinear.getChildAt(i9)).getChildAt(1).getTag(R.string.VISIBILITY_ID)).intValue() == 958) {
                                                                    AttributesActivity.this.mAddDynamicLinear.getChildAt(i9).setVisibility(8);
                                                                    AttributesActivity.visibiltyGoneIds.add(958);
                                                                }
                                                            }
                                                        }
                                                    } else if (AttributesActivity.activityId == 80 && intValue5 == 962) {
                                                        for (int i10 = 0; i10 < childCount2; i10++) {
                                                            if (((Integer) ((LinearLayout) AttributesActivity.this.mAddDynamicLinear.getChildAt(i10)).getChildAt(1).getTag(R.string.VISIBILITY_ID)).intValue() == 963) {
                                                                AttributesActivity.this.mAddDynamicLinear.getChildAt(i10).setVisibility(8);
                                                                AttributesActivity.visibiltyGoneIds.add(963);
                                                            }
                                                        }
                                                    }
                                                }
                                                i8++;
                                                i = 0;
                                                i4 = 73;
                                            }
                                        }
                                    }
                                }
                                i3++;
                                i = 0;
                            }
                        }
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                }
            } else if (this.obj.getControlType().equalsIgnoreCase("Multiselect Dropdown")) {
                List<Integer> filterAttributesByFilterAttribute2 = AttributesActivity.this.filterAttributesByFilterAttribute(this.obj.getAttributeId());
                if (filterAttributesByFilterAttribute2.size() > 0) {
                    for (Integer num4 : filterAttributesByFilterAttribute2) {
                        ((EditText) AttributesActivity.mEntryArr.get(((Integer) AttributesActivity.this.mapEntryEditIds.get(num4)).intValue())).setText("");
                        ((EditText) AttributesActivity.mEntryArrIds.get(((Integer) AttributesActivity.this.mapEntryEditIds.get(num4)).intValue())).setText("");
                    }
                }
            } else if (this.obj.getControlType().equalsIgnoreCase("TextBoxN") || this.obj.getControlType().equalsIgnoreCase("TextBoxND")) {
                if (!editable.toString().equalsIgnoreCase("") && !editable.toString().equalsIgnoreCase(".") && Float.parseFloat(editable.toString()) > this.maxvalue) {
                    this.editText.setText(this.beforetext);
                }
            } else if (this.obj.getControlType().equalsIgnoreCase("TextBox") && editable.toString().length() > 0) {
                String trim = this.obj.getValidationExpression().trim();
                if (!TextUtils.isEmpty(trim) && !Pattern.compile(trim).matcher(editable.toString().trim()).matches()) {
                    this.editText.setText(this.beforetext);
                    EditText editText = this.editText;
                    editText.setSelection(editText.getText().length());
                }
            }
            if (this.obj.getAttributeId() == 774) {
                try {
                    if (editable.toString().length() > 0) {
                        if (Integer.parseInt(editable.toString()) + GetDataFromDB.getInstance().getIntValue(Queries.getInstance().getFarmerDemoAmountQry(AttributesActivity.this.farmerId)) > GetDataFromDB.getInstance().getIntValue(Queries.getInstance().getItemValue("DemoThresholdAmount"))) {
                            AttributesActivity.this.showAlertDialog(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_democostexceeds()));
                            this.editText.setText("");
                        }
                    }
                } catch (Exception e5) {
                    e5.printStackTrace();
                }
            }
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
        intent.putExtra("TRANSID", this.transId);
        intent.putExtra("DISPLAYTYPE", str2);
        intent.putExtra("FromSelfAssignment", true);
        intent.putExtra("farmerType", ConstantsPMC.TYPE_FARMER);
        intent.putExtra("SourceQry", attributeModel.getSourceQuery());
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
        intent.putExtra("TRANSID", this.transId);
        intent.putExtra("DISPLAYTYPE", str2);
        intent.putExtra("FarmersData", hashMap);
        intent.putExtra("FromSelfAssignment", true);
        intent.putExtra("farmerType", ConstantsPMC.TYPE_FARMER);
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
                fetchLocation(false);
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
            fetchLocation(true);
            int i = activityId;
            if (i == 38 || i == 41 || i == 46 || i == 63) {
                bindDemoValues();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void showNoInternetDialog(String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setMessage(str).setCancelable(false).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.AttributesActivity.14
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

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        for (ImageView imageView : this.mImageviews) {
            if (this.imageDetails != null) {
                File file = new File(this.imageDetails.getPicturePath());
                if (file.exists()) {
                    imageView.setImageBitmap(BitmapFactory.decodeFile(file.getAbsolutePath()));
                }
            }
        }
        try {
            if (activityId == 7) {
                String stringValue = GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getFarmerDetailsChildActivity(this.farmerId, activityId, this.activityAssignmentId, 797, 871));
                if (!TextUtils.isEmpty(stringValue)) {
                    this.mapEntryEdit.get(800).setText((Integer.parseInt(this.mapEntryEdit.get(797).getText().toString()) - Integer.parseInt(stringValue)) + "");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        try {
            if (activityId == 29) {
                String stringValue2 = GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getFarmerDetailsChildActivity(this.farmerId, activityId, this.activityAssignmentId, 826, 824));
                if (!TextUtils.isEmpty(stringValue2)) {
                    this.mapEntryEdit.get(826).setText(stringValue2);
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        int i = activityId;
        if (i == 38 || i == 41 || i == 46 || i == 63) {
            bindFarmerExpenditure();
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
            builder.setMessage(str).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.AttributesActivity.19
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

    private void showTimeSettingsAlertDialog(String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.context);
        builder.setMessage(str).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.AttributesActivity.20
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                AttributesActivity.this.startActivity(new Intent("android.settings.DATE_SETTINGS"));
                dialogInterface.dismiss();
            }
        });
        AlertDialog show = builder.show();
        if (UtilDeclarations.isTablet(this)) {
            UtilDeclarations.makeTabletDialogTextlarge(show);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showRewardsConformationAlertDialog(String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.context);
        builder.setMessage(str).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_yesText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.AttributesActivity.22
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                StringBuilder sb;
                AttributesActivity.this.LaunchCapaignPage(true);
                if (AttributesActivity.this.transId + 0 > 0) {
                    sb = new StringBuilder();
                    sb.append(AttributesActivity.this.transId);
                } else {
                    sb = new StringBuilder();
                    sb.append(AttributesActivity.this.activityAssignmentId);
                }
                sb.append("");
                SharedPrefManager.setBoolean(AttributesActivity.this, true, sb.toString());
                dialogInterface.dismiss();
            }
        }).setNegativeButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_noText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.AttributesActivity.21
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                StringBuilder sb;
                AttributesActivity.this.LaunchCapaignPage(false);
                if (AttributesActivity.this.transId + 0 > 0) {
                    sb = new StringBuilder();
                    sb.append(AttributesActivity.this.transId);
                } else {
                    sb = new StringBuilder();
                    sb.append(AttributesActivity.this.activityAssignmentId);
                }
                sb.append("");
                SharedPrefManager.setBoolean(AttributesActivity.this, false, sb.toString());
                dialogInterface.dismiss();
            }
        });
        AlertDialog show = builder.show();
        if (UtilDeclarations.isTablet(this)) {
            UtilDeclarations.makeTabletDialogTextlarge(show);
        }
    }

    private void showRewardsApprovalAlertDialog(String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.context);
        builder.setMessage(str).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.AttributesActivity.24
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                AttributesActivity.this.LaunchCapaignPage(true);
                dialogInterface.dismiss();
            }
        }).setNegativeButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_cancelDialogButtonText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.AttributesActivity.23
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
                calendar2.add(5, Integer.parseInt(editText.getTag(R.string.MAX_DAYS).toString()) - 1);
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
                calendar3.add(5, Integer.parseInt(editText.getTag(R.string.MAX_DAYS).toString()) - 1);
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

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
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

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
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
            new FetchLocation(this, true, new OnLocationFoundListener() { // from class: com.conceptglobal.pmc.fo.AttributesActivity.28
                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onTimerTimeOut() {
                }

                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onLocationFound(LocationInfo locationInfo) {
                    AttributesActivity.this.onLocFound(locationInfo);
                }

                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onLocationFound(Location location) {
                    if (AttributesActivity.this.fetchLocationCall.equalsIgnoreCase("Stop")) {
                        AttributesActivity.stopTimeGPS = UtilDeclarations.getLongToDate(location.getTime());
                    } else {
                        AttributesActivity.startTimeGPS = UtilDeclarations.getLongToDate(location.getTime());
                    }
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
        if (activityId == 1555) {
            webView.evaluateJavascript("checkValidation();", null);
        }
        ((AttributeEventListener) context).GetData(listAttributes, mEntryArr, mEntryArrIds);
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

    private class loadDataTask extends AsyncTask<Void, Void, Void> {
        private loadDataTask() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Void doInBackground(Void... voidArr) {
            AttributesActivity.this.loadAttributes(0);
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
        editText.setOnTouchListener(new View.OnTouchListener() { // from class: com.conceptglobal.pmc.fo.AttributesActivity.29
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                AttributesActivity.this.speachText = editText;
                if (motionEvent.getAction() != 1 || motionEvent.getRawX() < editText.getRight() - editText.getCompoundDrawables()[2].getBounds().width()) {
                    return false;
                }
                AttributesActivity.this.promptSpeechInput();
                return true;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateFarmerCountField() {
        EditText editText;
        EditText editText2;
        if (this.mapEntryEdit.containsKey(880) && this.mapEntryEdit.get(880) != null && (editText2 = this.mapEntryEdit.get(880)) != null) {
            editText2.setText(this.campaignsFarmersCount + "");
        }
        if (!this.mapEntryEdit.containsKey(654) || this.mapEntryEdit.get(654) == null || (editText = this.mapEntryEdit.get(654)) == null) {
            return;
        }
        editText.setText(this.campaignsSarthiFarmersCount + "");
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        LocalBroadcastManager.getInstance(this).unregisterReceiver(this.mReceiver);
        LocalBroadcastManager.getInstance(this).unregisterReceiver(this.mReceiver_QUANTITY);
        LocalBroadcastManager.getInstance(this).unregisterReceiver(this.campaignsReceiver);
        LocalBroadcastManager.getInstance(this).unregisterReceiver(this.campaignCompleateReceiver);
        LocalBroadcastManager.getInstance(this).unregisterReceiver(this.farmerSelectedReceiver);
    }

    public static void setFieldDataEmpty(int i, boolean z) {
        try {
            mEntryArr.get(i).setText("");
            if (z) {
                mEntryArrIds.get(i).setText("");
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadData() {
        if (UtilDeclarations.isOnline(this)) {
            webView.setWebChromeClient(new WebChromeClient() { // from class: com.conceptglobal.pmc.fo.AttributesActivity.35
                private ProgressDialog mProgress;

                @Override // android.webkit.WebChromeClient
                public void onProgressChanged(WebView webView2, int i) {
                    if (this.mProgress == null) {
                        this.mProgress = new ProgressDialog(AttributesActivity.this);
                        if (!AttributesActivity.this.isFinishing()) {
                            this.mProgress.show();
                        }
                    }
                    this.mProgress.setMessage("Loading ");
                    if (i == 100) {
                        ProgressDialog progressDialog = this.mProgress;
                        if (progressDialog != null && progressDialog.isShowing() && !AttributesActivity.this.isFinishing()) {
                            this.mProgress.dismiss();
                        }
                        this.mProgress = null;
                    }
                }
            });
            webView.setWebViewClient(new WebViewClient() { // from class: com.conceptglobal.pmc.fo.AttributesActivity.36
                private int running = 0;

                @Override // android.webkit.WebViewClient
                public void onReceivedError(WebView webView2, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
                    AttributesActivity.this.sendWebPageLoadStatus(true);
                    super.onReceivedError(webView2, webResourceRequest, webResourceError);
                }
            });
            webView.getSettings().setJavaScriptEnabled(true);
            WebAppInterface webAppInterface = new WebAppInterface(getApplicationContext());
            this.webAppInterface = webAppInterface;
            webView.addJavascriptInterface(webAppInterface, "Android");
            int i = activityId;
            if (i == 1386) {
                webView.loadUrl(ConstantsPMC.getInstance().getWebViewUrlDistributorVisit() + this.farmerId + "?pdaid=" + ConstantsPMC.getInstance().getDeviceID() + "&transId=" + this.transId);
                return;
            }
            if (i == 1383) {
                webView.loadUrl(ConstantsPMC.getInstance().getWebViewUrlRetailerVisit() + this.farmerId + "?pdaid=" + ConstantsPMC.getInstance().getDeviceID() + "&transId=" + this.transId);
                return;
            }
            if (i == 1555) {
                webView.loadUrl(ConstantsPMC.getInstance().getWebViewUrlPOG() + this.farmerId + "?pdaid=" + ConstantsPMC.getInstance().getDeviceID() + "&transId=" + this.transId);
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
        create.setButton(-2, "Retry", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.AttributesActivity.37
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                AttributesActivity.this.loadData();
                dialogInterface.dismiss();
            }
        });
        create.setButton(-1, "Ok", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.AttributesActivity.38
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                AttributesActivity.this.sendWebPageLoadStatus(true);
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
                AttributesActivity.this.sendWebPageLoadStatus(false);
                AlertDialog create = new AlertDialog.Builder(AttributesActivity.this).create();
                create.setCanceledOnTouchOutside(false);
                create.setMessage("Data has not be saved.\nClick Preview&Save button to save the data.");
                create.setButton(-1, "Ok", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.AttributesActivity.WebAppInterface.1
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
                AttributesActivity.this.sendWebPageLoadStatus(false);
                AlertDialog create = new AlertDialog.Builder(AttributesActivity.this).create();
                create.setCanceledOnTouchOutside(false);
                create.setMessage("Month plan has not be saved.");
                create.setButton(-1, "Ok", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.AttributesActivity.WebAppInterface.2
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
            AttributesActivity.this.sendWebPageLoadStatus(true);
        }
    }

    class MyTimerTask extends TimerTask {
        MyTimerTask() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            AttributesActivity.this.runOnUiThread(new Runnable() { // from class: com.conceptglobal.pmc.fo.AttributesActivity.MyTimerTask.1
                @Override // java.lang.Runnable
                public void run() {
                    if (AttributesActivity.starttimeMobileMillis > 0) {
                        int currentTimeMillis = (int) ((System.currentTimeMillis() - AttributesActivity.starttimeMobileMillis) / 1000);
                        int i = currentTimeMillis / 60;
                        AttributesActivity.this.tvTimer.setText(String.format("%02d:%02d:%02d", Integer.valueOf(i / 60), Integer.valueOf(i), Integer.valueOf(currentTimeMillis % 60)));
                    }
                }
            });
        }
    }

    private void fetchLocation(boolean z) {
        if (!this.mLocationUtils.checkPermissions(this)) {
            this.mLocationUtils.requestPermissions(this);
            return;
        }
        try {
            new FetchLocation(this, z, new OnLocationFoundListener() { // from class: com.conceptglobal.pmc.fo.AttributesActivity.39
                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onLocationFound(LocationInfo locationInfo) {
                }

                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onTimerTimeOut() {
                }

                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onLocationFound(Location location) {
                    if (AttributesActivity.this.fetchLocationCall.equalsIgnoreCase("Stop")) {
                        AttributesActivity.stopTimeGPS = UtilDeclarations.getLongToDate(location.getTime());
                    } else {
                        AttributesActivity.startTimeGPS = UtilDeclarations.getLongToDate(location.getTime());
                    }
                }
            }, TAG);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void makeParentChildVisibility(AttributeModel attributeModel) {
        String stringValue;
        ArrayList<Integer> arrayList = this.ruleAttributeIds;
        if (arrayList == null || arrayList.size() <= 0) {
            return;
        }
        try {
            int intValue = this.getDataFromDB.getIntValue(Queries.getInstance().getParentAttributeIdDraft(activityId, attributeModel.getAttributeId()));
            if (intValue <= 0 || this.getDataFromDB.getIntValue(Queries.getInstance().getRuleParentAttrValueId(activityId, intValue)) != Integer.parseInt(mEntryArrIds.get(this.mapEntryEditIds.get(Integer.valueOf(intValue)).intValue()).getText().toString()) || (stringValue = this.getDataFromDB.getStringValue(Queries.getInstance().getOperationType(activityId, intValue, Integer.parseInt(mEntryArrIds.get(this.mapEntryEditIds.get(Integer.valueOf(intValue)).intValue()).getText().toString())))) == null || !stringValue.equalsIgnoreCase("Visibility")) {
                return;
            }
            int childCount = this.mAddDynamicLinear.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = this.mAddDynamicLinear.getChildAt(i);
                if (((LinearLayout) childAt).getChildAt(1) != null && ((LinearLayout) childAt).getChildAt(1).getTag().equals(Integer.valueOf(attributeModel.getAttributeId()))) {
                    this.mAddDynamicLinear.getChildAt(i).setVisibility(0);
                    if (visibiltyGoneIds.contains(Integer.valueOf(attributeModel.getAttributeId()))) {
                        visibiltyGoneIds.remove(Integer.valueOf(attributeModel.getAttributeId()));
                    }
                    if (ConstantsPMC.getInstance().getIsTrainingORLive() == 2) {
                        if (activityId == 73 && attributeModel.getAttributeId() == 965) {
                            for (int i2 = 0; i2 < childCount; i2++) {
                                if (((Integer) ((LinearLayout) this.mAddDynamicLinear.getChildAt(i2)).getChildAt(1).getTag(R.string.VISIBILITY_ID)).intValue() == 958) {
                                    this.mAddDynamicLinear.getChildAt(i2).setVisibility(8);
                                    visibiltyGoneIds.add(958);
                                }
                            }
                        }
                    } else if (activityId == 80 && attributeModel.getAttributeId() == 962) {
                        for (int i3 = 0; i3 < childCount; i3++) {
                            if (((Integer) ((LinearLayout) this.mAddDynamicLinear.getChildAt(i3)).getChildAt(1).getTag(R.string.VISIBILITY_ID)).intValue() == 963) {
                                this.mAddDynamicLinear.getChildAt(i3).setVisibility(8);
                                visibiltyGoneIds.add(963);
                            }
                        }
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private class getNeointTokenTask extends AsyncTask<Void, String, String> {
        private getNeointTokenTask() {
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            super.onPreExecute();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public String doInBackground(Void... voidArr) {
            AttributesActivity.this.getNeointToken();
            return "";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(String str) {
            super.onPostExecute((getNeointTokenTask) str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getNeointToken() {
        InstanceConfig instanceConfig;
        JSONArray jSONArray;
        try {
            if (ConstantsPMC.getInstance().getIsTrainingORLive() != 2) {
                instanceConfig = InstanceConfig.getInstance(InstanceConfig.Instance.PMCDUAT);
            } else {
                instanceConfig = InstanceConfig.getInstance(InstanceConfig.Instance.pmcdlive);
            }
            String sendNeointRequest = WebService.getInstance().sendNeointRequest(new FormBody.Builder().add("username", GetDataFromDB.getInstance().getSingleValue(Queries.getInstance().getEmployeeID())).add(NeoCampaignConstants.PASSWORD, Encryption.decrypt(GetDataFromDB.getInstance().getSingleValue(Queries.getInstance().getPasswordQuery()))).add("grant_type", NeoCampaignConstants.PASSWORD).add("client_id", instanceConfig.clientId).add("client_secret", instanceConfig.clientSecret).add("scope", "Neoint roles address hubs print transaction offline_access profile openid").build(), instanceConfig.baseUrl + instanceConfig.neointIdentityService + "/identity/connect/token");
            if (TextUtils.isEmpty(sendNeointRequest)) {
                return;
            }
            String sendNeointGetRequest = WebService.getInstance().sendNeointGetRequest(new JSONObject(sendNeointRequest).optString("access_token"), instanceConfig.root + "api/fetchRewardsWithTokenZrt");
            Log.d("response 2", sendNeointGetRequest);
            JSONObject optJSONObject = new JSONObject(sendNeointGetRequest).optJSONObject("responseData");
            if (optJSONObject != null) {
                optJSONObject.optInt("TotalRecords");
                jSONArray = optJSONObject.optJSONArray("RewardDetails");
            } else {
                jSONArray = null;
            }
            if (jSONArray == null || jSONArray.length() <= 0) {
                return;
            }
            this.isRewardsMappedToGeography = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void showErrorAlertDialog(String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setMessage(Html.fromHtml("<font color='#ff0000'>" + str + "</font>")).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.AttributesActivity.40
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
                AttributesActivity.this.finish();
            }
        });
        builder.show();
    }

    private void bindDemoValues() {
        try {
            GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getItemValue("DemoAttributeCostFilterValue"));
            String obj = activityId == 38 ? mEntryArrIds.get(this.mapEntryEditIds.get(844).intValue()).getText().toString() : "";
            if (activityId == 41) {
                obj = mEntryArrIds.get(this.mapEntryEditIds.get(865).intValue()).getText().toString();
            }
            if (activityId == 46) {
                obj = mEntryArrIds.get(this.mapEntryEditIds.get(869).intValue()).getText().toString();
            }
            if (activityId == 63) {
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

    /* JADX INFO: Access modifiers changed from: private */
    public void bindFarmerExpenditure() {
        try {
            int intValue = GetDataFromDB.getInstance().getIntValue(Queries.getInstance().getFarmerDemoAmountQry(this.farmerId));
            this.mapEntryEdit.get(854).setText(intValue + "");
        } catch (Exception unused) {
        }
    }
}

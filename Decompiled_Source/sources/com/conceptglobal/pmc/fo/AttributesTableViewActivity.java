package com.conceptglobal.pmc.fo;

import android.app.AlertDialog;
import android.app.DatePickerDialog;
import android.app.Dialog;
import android.app.TimePickerDialog;
import android.content.BroadcastReceiver;
import android.content.ClipData;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
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
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.AutoCompleteTextView;
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
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.common.Items;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.fragments.AttributesTableFarmatFragment;
import com.conceptglobal.pmc.interfaces.AttributeEventListener;
import com.conceptglobal.pmc.interfaces.CropChanger;
import com.conceptglobal.pmc.interfaces.GetTableDataInterface;
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
public class AttributesTableViewActivity extends FragmentActivity implements View.OnClickListener, CropChanger, ValidatorInterface, GetTableDataInterface {
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
    public static String startTimeGPS;
    public static String starttimeMobile;
    public static long starttimeMobileMillis;
    public static String stopTimeGPS;
    public static String stopTimeMobile;
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
    private String[] remarkNames;
    private String[] remarkids;
    private RelativeLayout rlTimerView;
    private ArrayList<Integer> ruleAttributeIds;
    private int segmentId;
    private EditText speachText;
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
    private ArrayList<String> namesList = new ArrayList<>();
    String fetchLocationCall = "";
    BroadcastReceiver farmerSelectedReceiver = new BroadcastReceiver() { // from class: com.conceptglobal.pmc.fo.AttributesTableViewActivity.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent.hasExtra("FarmerId")) {
                AttributesTableViewActivity.this.farmerId = intent.getExtras().getString("FarmerId", "");
                AttributesTableViewActivity.this.bindFarmerExpenditure();
            }
        }
    };
    View.OnClickListener operationListener = new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.AttributesTableViewActivity.12
        /* JADX WARN: Removed duplicated region for block: B:102:0x084a A[Catch: Exception -> 0x0a88, TRY_ENTER, TryCatch #0 {Exception -> 0x0a88, blocks: (B:6:0x0031, B:9:0x003e, B:11:0x0048, B:14:0x0050, B:16:0x0080, B:18:0x00a8, B:21:0x0151, B:22:0x0180, B:24:0x0186, B:26:0x01b6, B:28:0x01de, B:30:0x0287, B:31:0x02b6, B:33:0x02bc, B:35:0x02ec, B:37:0x0314, B:39:0x03bd, B:40:0x03ec, B:45:0x04ad, B:47:0x04b3, B:49:0x04b9, B:51:0x04bf, B:52:0x0883, B:54:0x0899, B:55:0x08ae, B:57:0x08cc, B:60:0x08e4, B:61:0x08ff, B:63:0x0913, B:65:0x09ce, B:67:0x04c4, B:70:0x04ce, B:72:0x04fe, B:74:0x0526, B:75:0x0580, B:76:0x05e7, B:78:0x05ed, B:80:0x061d, B:82:0x0646, B:83:0x06a0, B:84:0x0707, B:86:0x070d, B:88:0x073d, B:90:0x0766, B:91:0x07c0, B:92:0x0829, B:94:0x082f, B:96:0x0835, B:98:0x083b, B:99:0x083f, B:102:0x084a, B:103:0x0859, B:105:0x085f, B:106:0x086e, B:108:0x0874), top: B:5:0x0031 }] */
        /* JADX WARN: Removed duplicated region for block: B:105:0x085f A[Catch: Exception -> 0x0a88, TryCatch #0 {Exception -> 0x0a88, blocks: (B:6:0x0031, B:9:0x003e, B:11:0x0048, B:14:0x0050, B:16:0x0080, B:18:0x00a8, B:21:0x0151, B:22:0x0180, B:24:0x0186, B:26:0x01b6, B:28:0x01de, B:30:0x0287, B:31:0x02b6, B:33:0x02bc, B:35:0x02ec, B:37:0x0314, B:39:0x03bd, B:40:0x03ec, B:45:0x04ad, B:47:0x04b3, B:49:0x04b9, B:51:0x04bf, B:52:0x0883, B:54:0x0899, B:55:0x08ae, B:57:0x08cc, B:60:0x08e4, B:61:0x08ff, B:63:0x0913, B:65:0x09ce, B:67:0x04c4, B:70:0x04ce, B:72:0x04fe, B:74:0x0526, B:75:0x0580, B:76:0x05e7, B:78:0x05ed, B:80:0x061d, B:82:0x0646, B:83:0x06a0, B:84:0x0707, B:86:0x070d, B:88:0x073d, B:90:0x0766, B:91:0x07c0, B:92:0x0829, B:94:0x082f, B:96:0x0835, B:98:0x083b, B:99:0x083f, B:102:0x084a, B:103:0x0859, B:105:0x085f, B:106:0x086e, B:108:0x0874), top: B:5:0x0031 }] */
        /* JADX WARN: Removed duplicated region for block: B:108:0x0874 A[Catch: Exception -> 0x0a88, TryCatch #0 {Exception -> 0x0a88, blocks: (B:6:0x0031, B:9:0x003e, B:11:0x0048, B:14:0x0050, B:16:0x0080, B:18:0x00a8, B:21:0x0151, B:22:0x0180, B:24:0x0186, B:26:0x01b6, B:28:0x01de, B:30:0x0287, B:31:0x02b6, B:33:0x02bc, B:35:0x02ec, B:37:0x0314, B:39:0x03bd, B:40:0x03ec, B:45:0x04ad, B:47:0x04b3, B:49:0x04b9, B:51:0x04bf, B:52:0x0883, B:54:0x0899, B:55:0x08ae, B:57:0x08cc, B:60:0x08e4, B:61:0x08ff, B:63:0x0913, B:65:0x09ce, B:67:0x04c4, B:70:0x04ce, B:72:0x04fe, B:74:0x0526, B:75:0x0580, B:76:0x05e7, B:78:0x05ed, B:80:0x061d, B:82:0x0646, B:83:0x06a0, B:84:0x0707, B:86:0x070d, B:88:0x073d, B:90:0x0766, B:91:0x07c0, B:92:0x0829, B:94:0x082f, B:96:0x0835, B:98:0x083b, B:99:0x083f, B:102:0x084a, B:103:0x0859, B:105:0x085f, B:106:0x086e, B:108:0x0874), top: B:5:0x0031 }] */
        /* JADX WARN: Removed duplicated region for block: B:24:0x0186 A[Catch: Exception -> 0x0a88, TryCatch #0 {Exception -> 0x0a88, blocks: (B:6:0x0031, B:9:0x003e, B:11:0x0048, B:14:0x0050, B:16:0x0080, B:18:0x00a8, B:21:0x0151, B:22:0x0180, B:24:0x0186, B:26:0x01b6, B:28:0x01de, B:30:0x0287, B:31:0x02b6, B:33:0x02bc, B:35:0x02ec, B:37:0x0314, B:39:0x03bd, B:40:0x03ec, B:45:0x04ad, B:47:0x04b3, B:49:0x04b9, B:51:0x04bf, B:52:0x0883, B:54:0x0899, B:55:0x08ae, B:57:0x08cc, B:60:0x08e4, B:61:0x08ff, B:63:0x0913, B:65:0x09ce, B:67:0x04c4, B:70:0x04ce, B:72:0x04fe, B:74:0x0526, B:75:0x0580, B:76:0x05e7, B:78:0x05ed, B:80:0x061d, B:82:0x0646, B:83:0x06a0, B:84:0x0707, B:86:0x070d, B:88:0x073d, B:90:0x0766, B:91:0x07c0, B:92:0x0829, B:94:0x082f, B:96:0x0835, B:98:0x083b, B:99:0x083f, B:102:0x084a, B:103:0x0859, B:105:0x085f, B:106:0x086e, B:108:0x0874), top: B:5:0x0031 }] */
        /* JADX WARN: Removed duplicated region for block: B:33:0x02bc A[Catch: Exception -> 0x0a88, TryCatch #0 {Exception -> 0x0a88, blocks: (B:6:0x0031, B:9:0x003e, B:11:0x0048, B:14:0x0050, B:16:0x0080, B:18:0x00a8, B:21:0x0151, B:22:0x0180, B:24:0x0186, B:26:0x01b6, B:28:0x01de, B:30:0x0287, B:31:0x02b6, B:33:0x02bc, B:35:0x02ec, B:37:0x0314, B:39:0x03bd, B:40:0x03ec, B:45:0x04ad, B:47:0x04b3, B:49:0x04b9, B:51:0x04bf, B:52:0x0883, B:54:0x0899, B:55:0x08ae, B:57:0x08cc, B:60:0x08e4, B:61:0x08ff, B:63:0x0913, B:65:0x09ce, B:67:0x04c4, B:70:0x04ce, B:72:0x04fe, B:74:0x0526, B:75:0x0580, B:76:0x05e7, B:78:0x05ed, B:80:0x061d, B:82:0x0646, B:83:0x06a0, B:84:0x0707, B:86:0x070d, B:88:0x073d, B:90:0x0766, B:91:0x07c0, B:92:0x0829, B:94:0x082f, B:96:0x0835, B:98:0x083b, B:99:0x083f, B:102:0x084a, B:103:0x0859, B:105:0x085f, B:106:0x086e, B:108:0x0874), top: B:5:0x0031 }] */
        /* JADX WARN: Removed duplicated region for block: B:78:0x05ed A[Catch: Exception -> 0x0a88, TryCatch #0 {Exception -> 0x0a88, blocks: (B:6:0x0031, B:9:0x003e, B:11:0x0048, B:14:0x0050, B:16:0x0080, B:18:0x00a8, B:21:0x0151, B:22:0x0180, B:24:0x0186, B:26:0x01b6, B:28:0x01de, B:30:0x0287, B:31:0x02b6, B:33:0x02bc, B:35:0x02ec, B:37:0x0314, B:39:0x03bd, B:40:0x03ec, B:45:0x04ad, B:47:0x04b3, B:49:0x04b9, B:51:0x04bf, B:52:0x0883, B:54:0x0899, B:55:0x08ae, B:57:0x08cc, B:60:0x08e4, B:61:0x08ff, B:63:0x0913, B:65:0x09ce, B:67:0x04c4, B:70:0x04ce, B:72:0x04fe, B:74:0x0526, B:75:0x0580, B:76:0x05e7, B:78:0x05ed, B:80:0x061d, B:82:0x0646, B:83:0x06a0, B:84:0x0707, B:86:0x070d, B:88:0x073d, B:90:0x0766, B:91:0x07c0, B:92:0x0829, B:94:0x082f, B:96:0x0835, B:98:0x083b, B:99:0x083f, B:102:0x084a, B:103:0x0859, B:105:0x085f, B:106:0x086e, B:108:0x0874), top: B:5:0x0031 }] */
        /* JADX WARN: Removed duplicated region for block: B:86:0x070d A[Catch: Exception -> 0x0a88, TryCatch #0 {Exception -> 0x0a88, blocks: (B:6:0x0031, B:9:0x003e, B:11:0x0048, B:14:0x0050, B:16:0x0080, B:18:0x00a8, B:21:0x0151, B:22:0x0180, B:24:0x0186, B:26:0x01b6, B:28:0x01de, B:30:0x0287, B:31:0x02b6, B:33:0x02bc, B:35:0x02ec, B:37:0x0314, B:39:0x03bd, B:40:0x03ec, B:45:0x04ad, B:47:0x04b3, B:49:0x04b9, B:51:0x04bf, B:52:0x0883, B:54:0x0899, B:55:0x08ae, B:57:0x08cc, B:60:0x08e4, B:61:0x08ff, B:63:0x0913, B:65:0x09ce, B:67:0x04c4, B:70:0x04ce, B:72:0x04fe, B:74:0x0526, B:75:0x0580, B:76:0x05e7, B:78:0x05ed, B:80:0x061d, B:82:0x0646, B:83:0x06a0, B:84:0x0707, B:86:0x070d, B:88:0x073d, B:90:0x0766, B:91:0x07c0, B:92:0x0829, B:94:0x082f, B:96:0x0835, B:98:0x083b, B:99:0x083f, B:102:0x084a, B:103:0x0859, B:105:0x085f, B:106:0x086e, B:108:0x0874), top: B:5:0x0031 }] */
        /* JADX WARN: Removed duplicated region for block: B:94:0x082f A[Catch: Exception -> 0x0a88, TryCatch #0 {Exception -> 0x0a88, blocks: (B:6:0x0031, B:9:0x003e, B:11:0x0048, B:14:0x0050, B:16:0x0080, B:18:0x00a8, B:21:0x0151, B:22:0x0180, B:24:0x0186, B:26:0x01b6, B:28:0x01de, B:30:0x0287, B:31:0x02b6, B:33:0x02bc, B:35:0x02ec, B:37:0x0314, B:39:0x03bd, B:40:0x03ec, B:45:0x04ad, B:47:0x04b3, B:49:0x04b9, B:51:0x04bf, B:52:0x0883, B:54:0x0899, B:55:0x08ae, B:57:0x08cc, B:60:0x08e4, B:61:0x08ff, B:63:0x0913, B:65:0x09ce, B:67:0x04c4, B:70:0x04ce, B:72:0x04fe, B:74:0x0526, B:75:0x0580, B:76:0x05e7, B:78:0x05ed, B:80:0x061d, B:82:0x0646, B:83:0x06a0, B:84:0x0707, B:86:0x070d, B:88:0x073d, B:90:0x0766, B:91:0x07c0, B:92:0x0829, B:94:0x082f, B:96:0x0835, B:98:0x083b, B:99:0x083f, B:102:0x084a, B:103:0x0859, B:105:0x085f, B:106:0x086e, B:108:0x0874), top: B:5:0x0031 }] */
        @Override // android.view.View.OnClickListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onClick(android.view.View r30) {
            /*
                Method dump skipped, instructions count: 2708
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.fo.AttributesTableViewActivity.AnonymousClass12.onClick(android.view.View):void");
        }
    };
    View.OnClickListener operationListenerMultiSelect = new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.AttributesTableViewActivity.13
        /* JADX WARN: Removed duplicated region for block: B:103:0x08b3 A[Catch: Exception -> 0x0a18, TRY_ENTER, TryCatch #0 {Exception -> 0x0a18, blocks: (B:6:0x0036, B:9:0x0044, B:11:0x004e, B:14:0x0056, B:16:0x0086, B:18:0x00ae, B:21:0x0157, B:22:0x0186, B:24:0x018c, B:26:0x01bc, B:28:0x01e4, B:30:0x028d, B:31:0x02bc, B:33:0x02c2, B:35:0x02f2, B:37:0x031a, B:39:0x03c3, B:40:0x03f2, B:42:0x0464, B:45:0x0470, B:47:0x04f9, B:52:0x0518, B:54:0x051e, B:56:0x0524, B:58:0x052a, B:59:0x08ec, B:61:0x0962, B:64:0x096e, B:66:0x09f9, B:68:0x052f, B:71:0x0539, B:73:0x0569, B:75:0x0591, B:76:0x05eb, B:77:0x0652, B:79:0x0658, B:81:0x0688, B:83:0x06b0, B:84:0x070a, B:85:0x0771, B:87:0x0777, B:89:0x07a7, B:91:0x07cf, B:92:0x0829, B:93:0x0892, B:95:0x0898, B:97:0x089e, B:99:0x08a4, B:100:0x08a8, B:103:0x08b3, B:104:0x08c2, B:106:0x08c8, B:107:0x08d7, B:109:0x08dd), top: B:5:0x0036 }] */
        /* JADX WARN: Removed duplicated region for block: B:106:0x08c8 A[Catch: Exception -> 0x0a18, TryCatch #0 {Exception -> 0x0a18, blocks: (B:6:0x0036, B:9:0x0044, B:11:0x004e, B:14:0x0056, B:16:0x0086, B:18:0x00ae, B:21:0x0157, B:22:0x0186, B:24:0x018c, B:26:0x01bc, B:28:0x01e4, B:30:0x028d, B:31:0x02bc, B:33:0x02c2, B:35:0x02f2, B:37:0x031a, B:39:0x03c3, B:40:0x03f2, B:42:0x0464, B:45:0x0470, B:47:0x04f9, B:52:0x0518, B:54:0x051e, B:56:0x0524, B:58:0x052a, B:59:0x08ec, B:61:0x0962, B:64:0x096e, B:66:0x09f9, B:68:0x052f, B:71:0x0539, B:73:0x0569, B:75:0x0591, B:76:0x05eb, B:77:0x0652, B:79:0x0658, B:81:0x0688, B:83:0x06b0, B:84:0x070a, B:85:0x0771, B:87:0x0777, B:89:0x07a7, B:91:0x07cf, B:92:0x0829, B:93:0x0892, B:95:0x0898, B:97:0x089e, B:99:0x08a4, B:100:0x08a8, B:103:0x08b3, B:104:0x08c2, B:106:0x08c8, B:107:0x08d7, B:109:0x08dd), top: B:5:0x0036 }] */
        /* JADX WARN: Removed duplicated region for block: B:109:0x08dd A[Catch: Exception -> 0x0a18, TryCatch #0 {Exception -> 0x0a18, blocks: (B:6:0x0036, B:9:0x0044, B:11:0x004e, B:14:0x0056, B:16:0x0086, B:18:0x00ae, B:21:0x0157, B:22:0x0186, B:24:0x018c, B:26:0x01bc, B:28:0x01e4, B:30:0x028d, B:31:0x02bc, B:33:0x02c2, B:35:0x02f2, B:37:0x031a, B:39:0x03c3, B:40:0x03f2, B:42:0x0464, B:45:0x0470, B:47:0x04f9, B:52:0x0518, B:54:0x051e, B:56:0x0524, B:58:0x052a, B:59:0x08ec, B:61:0x0962, B:64:0x096e, B:66:0x09f9, B:68:0x052f, B:71:0x0539, B:73:0x0569, B:75:0x0591, B:76:0x05eb, B:77:0x0652, B:79:0x0658, B:81:0x0688, B:83:0x06b0, B:84:0x070a, B:85:0x0771, B:87:0x0777, B:89:0x07a7, B:91:0x07cf, B:92:0x0829, B:93:0x0892, B:95:0x0898, B:97:0x089e, B:99:0x08a4, B:100:0x08a8, B:103:0x08b3, B:104:0x08c2, B:106:0x08c8, B:107:0x08d7, B:109:0x08dd), top: B:5:0x0036 }] */
        /* JADX WARN: Removed duplicated region for block: B:24:0x018c A[Catch: Exception -> 0x0a18, TryCatch #0 {Exception -> 0x0a18, blocks: (B:6:0x0036, B:9:0x0044, B:11:0x004e, B:14:0x0056, B:16:0x0086, B:18:0x00ae, B:21:0x0157, B:22:0x0186, B:24:0x018c, B:26:0x01bc, B:28:0x01e4, B:30:0x028d, B:31:0x02bc, B:33:0x02c2, B:35:0x02f2, B:37:0x031a, B:39:0x03c3, B:40:0x03f2, B:42:0x0464, B:45:0x0470, B:47:0x04f9, B:52:0x0518, B:54:0x051e, B:56:0x0524, B:58:0x052a, B:59:0x08ec, B:61:0x0962, B:64:0x096e, B:66:0x09f9, B:68:0x052f, B:71:0x0539, B:73:0x0569, B:75:0x0591, B:76:0x05eb, B:77:0x0652, B:79:0x0658, B:81:0x0688, B:83:0x06b0, B:84:0x070a, B:85:0x0771, B:87:0x0777, B:89:0x07a7, B:91:0x07cf, B:92:0x0829, B:93:0x0892, B:95:0x0898, B:97:0x089e, B:99:0x08a4, B:100:0x08a8, B:103:0x08b3, B:104:0x08c2, B:106:0x08c8, B:107:0x08d7, B:109:0x08dd), top: B:5:0x0036 }] */
        /* JADX WARN: Removed duplicated region for block: B:33:0x02c2 A[Catch: Exception -> 0x0a18, TryCatch #0 {Exception -> 0x0a18, blocks: (B:6:0x0036, B:9:0x0044, B:11:0x004e, B:14:0x0056, B:16:0x0086, B:18:0x00ae, B:21:0x0157, B:22:0x0186, B:24:0x018c, B:26:0x01bc, B:28:0x01e4, B:30:0x028d, B:31:0x02bc, B:33:0x02c2, B:35:0x02f2, B:37:0x031a, B:39:0x03c3, B:40:0x03f2, B:42:0x0464, B:45:0x0470, B:47:0x04f9, B:52:0x0518, B:54:0x051e, B:56:0x0524, B:58:0x052a, B:59:0x08ec, B:61:0x0962, B:64:0x096e, B:66:0x09f9, B:68:0x052f, B:71:0x0539, B:73:0x0569, B:75:0x0591, B:76:0x05eb, B:77:0x0652, B:79:0x0658, B:81:0x0688, B:83:0x06b0, B:84:0x070a, B:85:0x0771, B:87:0x0777, B:89:0x07a7, B:91:0x07cf, B:92:0x0829, B:93:0x0892, B:95:0x0898, B:97:0x089e, B:99:0x08a4, B:100:0x08a8, B:103:0x08b3, B:104:0x08c2, B:106:0x08c8, B:107:0x08d7, B:109:0x08dd), top: B:5:0x0036 }] */
        /* JADX WARN: Removed duplicated region for block: B:42:0x0464 A[Catch: Exception -> 0x0a18, TryCatch #0 {Exception -> 0x0a18, blocks: (B:6:0x0036, B:9:0x0044, B:11:0x004e, B:14:0x0056, B:16:0x0086, B:18:0x00ae, B:21:0x0157, B:22:0x0186, B:24:0x018c, B:26:0x01bc, B:28:0x01e4, B:30:0x028d, B:31:0x02bc, B:33:0x02c2, B:35:0x02f2, B:37:0x031a, B:39:0x03c3, B:40:0x03f2, B:42:0x0464, B:45:0x0470, B:47:0x04f9, B:52:0x0518, B:54:0x051e, B:56:0x0524, B:58:0x052a, B:59:0x08ec, B:61:0x0962, B:64:0x096e, B:66:0x09f9, B:68:0x052f, B:71:0x0539, B:73:0x0569, B:75:0x0591, B:76:0x05eb, B:77:0x0652, B:79:0x0658, B:81:0x0688, B:83:0x06b0, B:84:0x070a, B:85:0x0771, B:87:0x0777, B:89:0x07a7, B:91:0x07cf, B:92:0x0829, B:93:0x0892, B:95:0x0898, B:97:0x089e, B:99:0x08a4, B:100:0x08a8, B:103:0x08b3, B:104:0x08c2, B:106:0x08c8, B:107:0x08d7, B:109:0x08dd), top: B:5:0x0036 }] */
        /* JADX WARN: Removed duplicated region for block: B:79:0x0658 A[Catch: Exception -> 0x0a18, TryCatch #0 {Exception -> 0x0a18, blocks: (B:6:0x0036, B:9:0x0044, B:11:0x004e, B:14:0x0056, B:16:0x0086, B:18:0x00ae, B:21:0x0157, B:22:0x0186, B:24:0x018c, B:26:0x01bc, B:28:0x01e4, B:30:0x028d, B:31:0x02bc, B:33:0x02c2, B:35:0x02f2, B:37:0x031a, B:39:0x03c3, B:40:0x03f2, B:42:0x0464, B:45:0x0470, B:47:0x04f9, B:52:0x0518, B:54:0x051e, B:56:0x0524, B:58:0x052a, B:59:0x08ec, B:61:0x0962, B:64:0x096e, B:66:0x09f9, B:68:0x052f, B:71:0x0539, B:73:0x0569, B:75:0x0591, B:76:0x05eb, B:77:0x0652, B:79:0x0658, B:81:0x0688, B:83:0x06b0, B:84:0x070a, B:85:0x0771, B:87:0x0777, B:89:0x07a7, B:91:0x07cf, B:92:0x0829, B:93:0x0892, B:95:0x0898, B:97:0x089e, B:99:0x08a4, B:100:0x08a8, B:103:0x08b3, B:104:0x08c2, B:106:0x08c8, B:107:0x08d7, B:109:0x08dd), top: B:5:0x0036 }] */
        /* JADX WARN: Removed duplicated region for block: B:87:0x0777 A[Catch: Exception -> 0x0a18, TryCatch #0 {Exception -> 0x0a18, blocks: (B:6:0x0036, B:9:0x0044, B:11:0x004e, B:14:0x0056, B:16:0x0086, B:18:0x00ae, B:21:0x0157, B:22:0x0186, B:24:0x018c, B:26:0x01bc, B:28:0x01e4, B:30:0x028d, B:31:0x02bc, B:33:0x02c2, B:35:0x02f2, B:37:0x031a, B:39:0x03c3, B:40:0x03f2, B:42:0x0464, B:45:0x0470, B:47:0x04f9, B:52:0x0518, B:54:0x051e, B:56:0x0524, B:58:0x052a, B:59:0x08ec, B:61:0x0962, B:64:0x096e, B:66:0x09f9, B:68:0x052f, B:71:0x0539, B:73:0x0569, B:75:0x0591, B:76:0x05eb, B:77:0x0652, B:79:0x0658, B:81:0x0688, B:83:0x06b0, B:84:0x070a, B:85:0x0771, B:87:0x0777, B:89:0x07a7, B:91:0x07cf, B:92:0x0829, B:93:0x0892, B:95:0x0898, B:97:0x089e, B:99:0x08a4, B:100:0x08a8, B:103:0x08b3, B:104:0x08c2, B:106:0x08c8, B:107:0x08d7, B:109:0x08dd), top: B:5:0x0036 }] */
        /* JADX WARN: Removed duplicated region for block: B:95:0x0898 A[Catch: Exception -> 0x0a18, TryCatch #0 {Exception -> 0x0a18, blocks: (B:6:0x0036, B:9:0x0044, B:11:0x004e, B:14:0x0056, B:16:0x0086, B:18:0x00ae, B:21:0x0157, B:22:0x0186, B:24:0x018c, B:26:0x01bc, B:28:0x01e4, B:30:0x028d, B:31:0x02bc, B:33:0x02c2, B:35:0x02f2, B:37:0x031a, B:39:0x03c3, B:40:0x03f2, B:42:0x0464, B:45:0x0470, B:47:0x04f9, B:52:0x0518, B:54:0x051e, B:56:0x0524, B:58:0x052a, B:59:0x08ec, B:61:0x0962, B:64:0x096e, B:66:0x09f9, B:68:0x052f, B:71:0x0539, B:73:0x0569, B:75:0x0591, B:76:0x05eb, B:77:0x0652, B:79:0x0658, B:81:0x0688, B:83:0x06b0, B:84:0x070a, B:85:0x0771, B:87:0x0777, B:89:0x07a7, B:91:0x07cf, B:92:0x0829, B:93:0x0892, B:95:0x0898, B:97:0x089e, B:99:0x08a4, B:100:0x08a8, B:103:0x08b3, B:104:0x08c2, B:106:0x08c8, B:107:0x08d7, B:109:0x08dd), top: B:5:0x0036 }] */
        @Override // android.view.View.OnClickListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onClick(android.view.View r32) {
            /*
                Method dump skipped, instructions count: 2598
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.fo.AttributesTableViewActivity.AnonymousClass13.onClick(android.view.View):void");
        }
    };
    View.OnClickListener datesListener = new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.AttributesTableViewActivity.14
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AttributesTableViewActivity.this.datePos = view.getId();
            AttributesTableViewActivity.this.showDialog(0);
        }
    };
    View.OnClickListener timesListener = new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.AttributesTableViewActivity.15
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AttributesTableViewActivity.this.timePos = view.getId();
            AttributesTableViewActivity.this.showDialog(1);
        }
    };
    private DatePickerDialog.OnDateSetListener mDateSetListener = new DatePickerDialog.OnDateSetListener() { // from class: com.conceptglobal.pmc.fo.AttributesTableViewActivity.17
        @Override // android.app.DatePickerDialog.OnDateSetListener
        public void onDateSet(DatePicker datePicker, int i, int i2, int i3) {
            AttributesTableViewActivity.this.mYear = i;
            AttributesTableViewActivity.this.mMonth = i2;
            AttributesTableViewActivity.this.mDay = i3;
            try {
                if (new SimpleDateFormat("yyyy-MM-dd").parse(i + "-" + (i2 + 1) + "-" + i3).compareTo(new Date()) < 30) {
                    AttributesTableViewActivity.this.updateDisplay();
                } else {
                    Toast.makeText(AttributesTableViewActivity.this.getApplicationContext(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectProperDate()), 1).show();
                }
            } catch (Exception e) {
                PLog.e(AttributesTableViewActivity.TAG, e);
            }
        }
    };
    private TimePickerDialog.OnTimeSetListener mTimeSetListener = new TimePickerDialog.OnTimeSetListener() { // from class: com.conceptglobal.pmc.fo.AttributesTableViewActivity.18
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
            ((TextView) AttributesTableViewActivity.mEntryArr.get(AttributesTableViewActivity.this.timePos)).setText(i + " : " + str2 + " : " + str);
        }
    };
    CompressListener listener = new CompressListener() { // from class: com.conceptglobal.pmc.fo.AttributesTableViewActivity.19
        @Override // com.conceptglobal.pmc.utils.CompressListener
        public void onComprssCompleteListener(String str) {
            UtilDeclarations.loadDiskThumbnail(AttributesTableViewActivity.this.context, AttributesTableViewActivity.this.imageView, new File(str));
        }
    };

    private void setListeners() {
    }

    static /* synthetic */ int access$3110(AttributesTableViewActivity attributesTableViewActivity) {
        int i = attributesTableViewActivity.mForOperations;
        attributesTableViewActivity.mForOperations = i - 1;
        return i;
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(R.layout.attribute_info_layout);
        this.context = this;
        clearStaticvalues();
        this.mLocationUtils = new LocationUtils();
        ConstantsPMC.getInstance().getLanguageConfigurations(this.context);
        init();
        setListeners();
        getData();
        setData();
        LocalBroadcastManager.getInstance(this).registerReceiver(this.farmerSelectedReceiver, new IntentFilter("FARMER_SELECTED"));
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
        this.updateDOS = null;
        this.queries = Queries.getInstance();
        this.getDataFromDB = GetDataFromDB.getInstance();
        this.tvTimer = (TextView) findViewById(R.id.tvDisplayTimer);
        Button button = (Button) findViewById(R.id.btnStartStop);
        btnStartStop = button;
        button.setOnClickListener(this);
        this.rlTimerView = (RelativeLayout) findViewById(R.id.rl_timer);
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
            this.ruleAttributeIds = GetDataFromDB.getInstance().getRuleAttributeIds(Queries.getInstance().getRuleDetails(i));
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
    /* JADX WARN: Removed duplicated region for block: B:123:0x12cb  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x12ab  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x10f7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:181:0x104e  */
    /* JADX WARN: Removed duplicated region for block: B:220:0x0f5e  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0e96  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0f43  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x1047  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x1157  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x116f  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x12b8  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x13f1  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x140b  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x15a8  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x141f  */
    /* JADX WARN: Type inference failed for: r14v14, types: [android.text.TextWatcher] */
    /* JADX WARN: Type inference failed for: r14v15 */
    /* JADX WARN: Type inference failed for: r14v16 */
    /* JADX WARN: Type inference failed for: r14v17 */
    /* JADX WARN: Type inference failed for: r14v18 */
    /* JADX WARN: Type inference failed for: r14v19 */
    /* JADX WARN: Type inference failed for: r14v20 */
    /* JADX WARN: Type inference failed for: r14v21 */
    /* JADX WARN: Type inference failed for: r14v47 */
    /* JADX WARN: Type inference failed for: r15v8, types: [android.widget.EditText] */
    /* JADX WARN: Type inference failed for: r51v0, types: [android.widget.LinearLayout] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void addOperationsDynamicLayout(java.lang.String r46, java.lang.String r47, final int r48, java.lang.String r49, final com.conceptglobal.pmc.model.AttributeModel r50, android.widget.LinearLayout r51, boolean r52) {
        /*
            Method dump skipped, instructions count: 5605
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.fo.AttributesTableViewActivity.addOperationsDynamicLayout(java.lang.String, java.lang.String, int, java.lang.String, com.conceptglobal.pmc.model.AttributeModel, android.widget.LinearLayout, boolean):void");
    }

    private void setTextChangeListener(final EditText editText) {
        editText.addTextChangedListener(new TextWatcher() { // from class: com.conceptglobal.pmc.fo.AttributesTableViewActivity.9
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (editable.toString().length() > 0) {
                    for (int i = 0; i < AttributesTableViewActivity.listAttributes.size(); i++) {
                        AttributeModel attributeModel = (AttributeModel) AttributesTableViewActivity.listAttributes.get(i);
                        if (attributeModel.getFilterAttribute1() > 0 && editText.getTag() != null && ((Integer) editText.getTag()).intValue() == attributeModel.getFilterAttribute1() && AttributesTableViewActivity.this.getDataFromDB.getChildAttributeCountValue(AttributesTableViewActivity.this.queries.getChildAttributeCount(attributeModel.getAttributeId(), AttributesTableViewActivity.this.activityId)) > 0) {
                            String replaceFirst = attributeModel.getSourceQuery().replaceFirst("@", ((EditText) AttributesTableViewActivity.mEntryArrIds.get(((Integer) AttributesTableViewActivity.this.mapEntryEditIds.get(Integer.valueOf(attributeModel.getFilterAttribute1()))).intValue())).getText().toString());
                            if (AttributesTableViewActivity.this.objAttribute.getAttributeId() == 696) {
                                replaceFirst = replaceFirst.replace("@", AttributesTableViewActivity.this.activityId + "");
                            }
                            Bundle bundle = new Bundle();
                            bundle.putInt("ISSELFASSIGN", AttributesTableViewActivity.this.isSelfassign);
                            bundle.putInt("ParentAttributeId", attributeModel.getAttributeId());
                            bundle.putLong("TRANSID", AttributesTableViewActivity.this.transId);
                            bundle.putInt("ActivityAssignmentId", AttributesTableViewActivity.this.activityAssignmentId);
                            bundle.putInt("SEGMENTID", AttributesTableViewActivity.this.segmentId);
                            bundle.putInt("Count", AttributesTableViewActivity.this.countVillage);
                            bundle.putString("pairId", String.valueOf(attributeModel.getAttributeId()));
                            bundle.putInt("AssignmentId", AttributesTableViewActivity.this.assignmentID);
                            bundle.putString("FirstDropDownDataQry", replaceFirst);
                            bundle.putInt(ConstantDeclarations.getInstance().getKEYACTIVITYID(), AttributesTableViewActivity.this.activityId);
                            bundle.putInt(ConstantDeclarations.getInstance().getKEYISPLANNED(), AttributesTableViewActivity.this.isPlanned);
                            bundle.putString(ConstantDeclarations.getInstance().getKEYFARMERID(), AttributesTableViewActivity.this.farmerId);
                            bundle.putInt(ConstantDeclarations.getInstance().getKeyIsMba(), AttributesTableViewActivity.this.ismba);
                            bundle.putString("CropId", editable.toString());
                            bundle.putInt("DisplayRows", AttributesTableViewActivity.this.objAttribute.getDisplayRows());
                            try {
                                GetDataFromDB.getInstance().executeRawQueryInDB(Queries.getInstance().deleteFarmerDetailsChildActivityFromTable(AttributesTableViewActivity.this.farmerId, AttributesTableViewActivity.this.activityId, AttributesTableViewActivity.this.activityAssignmentId, attributeModel.getAttributeId()));
                                GetDataFromDB.getInstance().executeRawQueryInDB(Queries.getInstance().deleteFarmerDetailsChildActivityFromTableSA(AttributesTableViewActivity.this.farmerId, AttributesTableViewActivity.this.activityId, AttributesTableViewActivity.this.transId, attributeModel.getAttributeId()));
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                            Fragment findFragmentByTag = AttributesTableViewActivity.this.getSupportFragmentManager().findFragmentByTag(attributeModel.getAttributeId() + "fragment");
                            if (findFragmentByTag != null) {
                                if (AttributesTableViewActivity.fragmentList.contains(findFragmentByTag)) {
                                    AttributesTableViewActivity.fragmentList.remove(findFragmentByTag);
                                }
                                AttributesTableViewActivity.this.getSupportFragmentManager().beginTransaction().remove(findFragmentByTag).commitAllowingStateLoss();
                            }
                            AttributesTableFarmatFragment attributesTableFarmatFragment = new AttributesTableFarmatFragment();
                            attributesTableFarmatFragment.setArguments(bundle);
                            AttributesTableViewActivity.this.getSupportFragmentManager().beginTransaction().add(attributeModel.getAttributeId(), attributesTableFarmatFragment, attributeModel.getAttributeId() + "fragment").commitAllowingStateLoss();
                            AttributesTableViewActivity.fragmentList.add(attributesTableFarmatFragment);
                        }
                    }
                }
            }
        });
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

    /* JADX INFO: Access modifiers changed from: private */
    public void setAutoCompleteAdapter(ArrayList<String> arrayList, final EditText editText, int i) {
        this.mAutoCompleteTextView.setAdapter(new ArrayAdapter(this, R.layout.layout_dropdown, arrayList));
        UtilDeclarations.dismissProgressDialog();
        this.mAutoCompleteTextView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.conceptglobal.pmc.fo.AttributesTableViewActivity.10
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j) {
                editText.setText(adapterView.getItemAtPosition(i2).toString());
            }
        });
        this.mAutoCompleteTextViewN.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.conceptglobal.pmc.fo.AttributesTableViewActivity.11
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j) {
                editText.setText(adapterView.getItemAtPosition(i2).toString());
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

    @Override // com.conceptglobal.pmc.interfaces.GetTableDataInterface
    public ArrayList<Integer> getValidationData() {
        return visibiltyGoneIds;
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
                if (editable.toString().length() > 0 && TextUtils.isEmpty(AttributesTableViewActivity.starttimeMobile) && AttributesTableViewActivity.this.isLoadingDone) {
                    AttributesTableViewActivity.this.showAlertDialog(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_StartTimerText()));
                    this.editText.setText("");
                    return;
                }
            } catch (Exception unused) {
            }
            if (this.obj.getControlType().equalsIgnoreCase("Dropdown")) {
                try {
                    if (editable.toString().length() > 0 && (this.obj.getAttributeId() == 869 || this.obj.getAttributeId() == 886)) {
                        String obj = ((EditText) AttributesTableViewActivity.mEntryArrIds.get(((Integer) AttributesTableViewActivity.this.mapEntryEditIds.get(Integer.valueOf(this.obj.getAttributeId()))).intValue())).getText().toString();
                        int intValue = GetDataFromDB.getInstance().getIntValue(Queries.getInstance().getDemoActivityExpenseAmountQry(obj));
                        String stringValue = GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getDemoActivityProtocolPlotSizeQry(obj));
                        try {
                            ((EditText) AttributesTableViewActivity.this.mapEntryEdit.get(861)).setText(intValue + "");
                        } catch (Exception unused2) {
                        }
                        try {
                            ((EditText) AttributesTableViewActivity.this.mapEntryEdit.get(879)).setText(stringValue + "");
                        } catch (Exception unused3) {
                        }
                        int intValue2 = GetDataFromDB.getInstance().getIntValue(Queries.getInstance().getFarmerDemoAmountQry(AttributesTableViewActivity.this.farmerId));
                        int intValue3 = GetDataFromDB.getInstance().getIntValue(Queries.getInstance().getItemValue("DemoThresholdAmount"));
                        try {
                            String stringValue2 = GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getItemValue("SkipDemoIdForThresholdCalculation"));
                            if (stringValue2 != null && stringValue2.length() > 0) {
                                for (String str : stringValue2.split(",")) {
                                    if (str.equals(obj)) {
                                        break;
                                    }
                                }
                            }
                        } catch (Exception unused4) {
                        }
                        if (intValue + intValue2 > intValue3) {
                            AttributesTableViewActivity.this.showAlertDialog(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_democostexceeds()));
                            this.editText.setText("");
                            ((EditText) AttributesTableViewActivity.mEntryArrIds.get(((Integer) AttributesTableViewActivity.this.mapEntryEditIds.get(Integer.valueOf(this.obj.getAttributeId()))).intValue())).setText("");
                            return;
                        }
                    }
                } catch (Exception unused5) {
                }
                if (this.obj.getIsKeyAttribute() == 1) {
                    this.obj.setAttributeValue(editable.toString());
                    if (!this.obj.getAttributeValue().equalsIgnoreCase("0") && !this.obj.getAttributeValue().equalsIgnoreCase("")) {
                        if (AttributesTableViewActivity.this.getDataFromDB.getKeyAttributeId(AttributesTableViewActivity.this.activityId, AttributesTableViewActivity.this.getDataFromDB.getDropdownDisplayField(this.obj), this.obj.getAttributeId()) != 0) {
                            try {
                                ArrayList arrayList = new ArrayList();
                                List<AttributeModel> pMCActivityAttributes = GetDataFromDB.getInstance().getPMCActivityAttributes(Queries.getInstance().getPMCActivityKeyAttributes(AttributesTableViewActivity.this.activityId, AttributesTableViewActivity.this.getDataFromDB.getDropdownDisplayField(this.obj), this.obj.getAttributeId()));
                                List<AttributeModel> pMCActivityAttributes2 = GetDataFromDB.getInstance().getPMCActivityAttributes(Queries.getInstance().getPMCActivityKeyAttributes_All(AttributesTableViewActivity.this.activityId, AttributesTableViewActivity.this.getDataFromDB.getDropdownDisplayField(this.obj), this.obj.getAttributeId()));
                                Iterator it = AttributesTableViewActivity.listAttributes.iterator();
                                while (it.hasNext()) {
                                    AttributeModel performFiltering = AttributesTableViewActivity.this.performFiltering(pMCActivityAttributes2, "", (AttributeModel) it.next());
                                    if (performFiltering != null) {
                                        arrayList.add(performFiltering);
                                    }
                                }
                                if (arrayList.size() > 0) {
                                    Iterator it2 = arrayList.iterator();
                                    while (it2.hasNext()) {
                                        int findModelPosition = AttributesTableViewActivity.this.findModelPosition((List<AttributeModel>) AttributesTableViewActivity.listAttributes, (AttributeModel) it2.next());
                                        AttributesTableViewActivity.listAttributes.remove(findModelPosition);
                                        AttributesTableViewActivity.this.mAddDynamicLinear.removeViewAt(findModelPosition);
                                        AttributesTableViewActivity.access$3110(AttributesTableViewActivity.this);
                                        AttributesTableViewActivity.this.mattributesnamesArr.remove(findModelPosition);
                                        AttributesTableViewActivity.mEntryArrIds.remove(findModelPosition);
                                        AttributesTableViewActivity.mEntryArr.remove(findModelPosition);
                                    }
                                }
                                for (AttributeModel attributeModel : pMCActivityAttributes) {
                                    AttributesTableViewActivity.listAttributes.add(attributeModel);
                                    AttributesTableViewActivity.this.addOperationsDynamicLayout(attributeModel.getAttributeName(), attributeModel.getControlType(), attributeModel.getAttributeId(), attributeModel.getAttributeValue(), attributeModel, AttributesTableViewActivity.this.mAddDynamicLinear, false);
                                }
                            } catch (Exception e) {
                                PLog.e(AttributesTableViewActivity.TAG, e);
                            }
                        } else {
                            try {
                                ArrayList arrayList2 = new ArrayList();
                                List<AttributeModel> pMCActivityAttributes3 = GetDataFromDB.getInstance().getPMCActivityAttributes(Queries.getInstance().getPMCActivityAttributeQueryUpdated(AttributesTableViewActivity.this.farmerId, AttributesTableViewActivity.this.activityId, AttributesTableViewActivity.this.activityAssignmentId, AttributesTableViewActivity.this.transId));
                                Iterator it3 = AttributesTableViewActivity.listAttributes.iterator();
                                while (it3.hasNext()) {
                                    AttributeModel performFiltering2 = AttributesTableViewActivity.this.performFiltering(pMCActivityAttributes3, "", (AttributeModel) it3.next());
                                    if (performFiltering2 != null) {
                                        arrayList2.add(performFiltering2);
                                    }
                                }
                                if (arrayList2.size() > 0) {
                                    Iterator it4 = arrayList2.iterator();
                                    while (it4.hasNext()) {
                                        int findModelPosition2 = AttributesTableViewActivity.this.findModelPosition((List<AttributeModel>) AttributesTableViewActivity.listAttributes, (AttributeModel) it4.next());
                                        AttributesTableViewActivity.listAttributes.remove(findModelPosition2);
                                        AttributesTableViewActivity.this.mAddDynamicLinear.removeViewAt(findModelPosition2);
                                        AttributesTableViewActivity.access$3110(AttributesTableViewActivity.this);
                                        AttributesTableViewActivity.this.mattributesnamesArr.remove(findModelPosition2);
                                        AttributesTableViewActivity.mEntryArrIds.remove(findModelPosition2);
                                        AttributesTableViewActivity.mEntryArr.remove(findModelPosition2);
                                    }
                                }
                            } catch (Exception e2) {
                                PLog.e(AttributesTableViewActivity.TAG, e2);
                            }
                        }
                    }
                }
                List<Integer> filterAttributesByFilterAttribute = AttributesTableViewActivity.this.filterAttributesByFilterAttribute(this.obj.getAttributeId());
                if (filterAttributesByFilterAttribute.size() > 0) {
                    for (Integer num : filterAttributesByFilterAttribute) {
                        ((EditText) AttributesTableViewActivity.mEntryArr.get(((Integer) AttributesTableViewActivity.this.mapEntryEditIds.get(num)).intValue())).setText("");
                        ((EditText) AttributesTableViewActivity.mEntryArrIds.get(((Integer) AttributesTableViewActivity.this.mapEntryEditIds.get(num)).intValue())).setText("");
                    }
                }
                if (AttributesTableViewActivity.this.ruleAttributeIds == null || AttributesTableViewActivity.this.ruleAttributeIds.size() <= 0) {
                    return;
                }
                try {
                    int intValue4 = AttributesTableViewActivity.this.getDataFromDB.getIntValue(Queries.getInstance().getParentAttributeId(AttributesTableViewActivity.this.activityId, this.obj.getAttributeId()));
                    if (intValue4 <= 0 || intValue4 != this.obj.getAttributeId()) {
                        return;
                    }
                    if (AttributesTableViewActivity.this.getDataFromDB.getIntValue(Queries.getInstance().getRuleParentAttrValueId(AttributesTableViewActivity.this.activityId, this.obj.getAttributeId())) == Integer.parseInt(((EditText) AttributesTableViewActivity.mEntryArrIds.get(((Integer) AttributesTableViewActivity.this.mapEntryEditIds.get(Integer.valueOf(this.obj.getAttributeId()))).intValue())).getText().toString())) {
                        String stringValue3 = AttributesTableViewActivity.this.getDataFromDB.getStringValue(Queries.getInstance().getOperationType(AttributesTableViewActivity.this.activityId, this.obj.getAttributeId(), Integer.parseInt(((EditText) AttributesTableViewActivity.mEntryArrIds.get(((Integer) AttributesTableViewActivity.this.mapEntryEditIds.get(Integer.valueOf(this.obj.getAttributeId()))).intValue())).getText().toString())));
                        int intValue5 = AttributesTableViewActivity.this.getDataFromDB.getIntValue(Queries.getInstance().getRuleAttrValue(AttributesTableViewActivity.this.activityId, this.obj.getAttributeId(), Integer.parseInt(((EditText) AttributesTableViewActivity.mEntryArrIds.get(((Integer) AttributesTableViewActivity.this.mapEntryEditIds.get(Integer.valueOf(this.obj.getAttributeId()))).intValue())).getText().toString())));
                        if (stringValue3 == null || !stringValue3.equalsIgnoreCase("Visibility")) {
                            return;
                        }
                        int childCount = AttributesTableViewActivity.this.mAddDynamicLinear.getChildCount();
                        for (int i = 0; i < childCount; i++) {
                            View childAt = AttributesTableViewActivity.this.mAddDynamicLinear.getChildAt(i);
                            if (((LinearLayout) childAt).getChildAt(1) != null && ((LinearLayout) childAt).getChildAt(1).getTag().equals(Integer.valueOf(intValue5))) {
                                AttributesTableViewActivity.this.mAddDynamicLinear.getChildAt(i).setVisibility(0);
                                if (AttributesTableViewActivity.visibiltyGoneIds.contains(Integer.valueOf(intValue5))) {
                                    AttributesTableViewActivity.visibiltyGoneIds.remove(Integer.valueOf(intValue5));
                                }
                            }
                        }
                        return;
                    }
                    int intValue6 = AttributesTableViewActivity.this.getDataFromDB.getIntValue(Queries.getInstance().getRuleAttributeId(AttributesTableViewActivity.this.activityId, this.obj.getAttributeId()));
                    int childCount2 = AttributesTableViewActivity.this.mAddDynamicLinear.getChildCount();
                    for (int i2 = 0; i2 < childCount2; i2++) {
                        View childAt2 = AttributesTableViewActivity.this.mAddDynamicLinear.getChildAt(i2);
                        if (((LinearLayout) childAt2).getChildAt(1) != null && ((LinearLayout) childAt2).getChildAt(1).getTag().equals(Integer.valueOf(intValue6))) {
                            AttributesTableViewActivity.this.mAddDynamicLinear.getChildAt(i2).setVisibility(8);
                            if (!AttributesTableViewActivity.visibiltyGoneIds.contains(Integer.valueOf(intValue6))) {
                                AttributesTableViewActivity.visibiltyGoneIds.add(Integer.valueOf(intValue6));
                            }
                            try {
                                LinearLayout linearLayout = (LinearLayout) AttributesTableViewActivity.this.mAddDynamicLinear.getChildAt(i2);
                                if (linearLayout.getChildAt(1) != null && (linearLayout.getChildAt(1) instanceof EditText)) {
                                    ((EditText) linearLayout.getChildAt(1)).setText("");
                                }
                            } catch (Exception unused6) {
                            }
                        }
                    }
                    return;
                } catch (Exception e3) {
                    e3.printStackTrace();
                    return;
                }
            }
            if (this.obj.getControlType().equalsIgnoreCase("Multiselect Dropdown")) {
                List<Integer> filterAttributesByFilterAttribute2 = AttributesTableViewActivity.this.filterAttributesByFilterAttribute(this.obj.getAttributeId());
                if (filterAttributesByFilterAttribute2.size() > 0) {
                    for (Integer num2 : filterAttributesByFilterAttribute2) {
                        ((EditText) AttributesTableViewActivity.mEntryArr.get(((Integer) AttributesTableViewActivity.this.mapEntryEditIds.get(num2)).intValue())).setText("");
                        ((EditText) AttributesTableViewActivity.mEntryArrIds.get(((Integer) AttributesTableViewActivity.this.mapEntryEditIds.get(num2)).intValue())).setText("");
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

    private int findModelPosition(List<AttributeModel> list, int i) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            if (list.get(i2).getAttributeId() == i) {
                return i2;
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
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.fo.AttributesTableViewActivity.getCascadingQuery(com.conceptglobal.pmc.model.AttributeModel, int):java.lang.String");
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
            builder.setMessage(str).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.AttributesTableViewActivity.16
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
            new FetchLocation(this, true, new OnLocationFoundListener() { // from class: com.conceptglobal.pmc.fo.AttributesTableViewActivity.20
                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onLocationFound(Location location) {
                }

                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onTimerTimeOut() {
                }

                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onLocationFound(LocationInfo locationInfo) {
                    AttributesTableViewActivity.this.onLocFound(locationInfo);
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

    private void showTimeSettingsAlertDialog(String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.context);
        builder.setMessage(str).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.AttributesTableViewActivity.21
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                AttributesTableViewActivity.this.startActivity(new Intent("android.settings.DATE_SETTINGS"));
                dialogInterface.dismiss();
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
                findCurrentLocation();
            } else {
                this.mLocationUtils.showDialog(this, LocationUtils.PERMISSION_DENIED);
            }
        }
    }

    private void makeParentChildVisibility(AttributeModel attributeModel) {
        String stringValue;
        ArrayList<Integer> arrayList = this.ruleAttributeIds;
        if (arrayList == null || arrayList.size() <= 0) {
            return;
        }
        try {
            int intValue = this.getDataFromDB.getIntValue(Queries.getInstance().getParentAttributeIdDraft(this.activityId, attributeModel.getAttributeId()));
            if (intValue <= 0 || this.getDataFromDB.getIntValue(Queries.getInstance().getRuleParentAttrValueId(this.activityId, intValue)) != Integer.parseInt(mEntryArrIds.get(this.mapEntryEditIds.get(Integer.valueOf(intValue)).intValue()).getText().toString()) || (stringValue = this.getDataFromDB.getStringValue(Queries.getInstance().getOperationType(this.activityId, intValue, Integer.parseInt(mEntryArrIds.get(this.mapEntryEditIds.get(Integer.valueOf(intValue)).intValue()).getText().toString())))) == null || !stringValue.equalsIgnoreCase("Visibility")) {
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
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    class MyTimerTask extends TimerTask {
        MyTimerTask() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            AttributesTableViewActivity.this.runOnUiThread(new Runnable() { // from class: com.conceptglobal.pmc.fo.AttributesTableViewActivity.MyTimerTask.1
                @Override // java.lang.Runnable
                public void run() {
                    if (AttributesTableViewActivity.starttimeMobileMillis > 0) {
                        int currentTimeMillis = (int) ((System.currentTimeMillis() - AttributesTableViewActivity.starttimeMobileMillis) / 1000);
                        int i = currentTimeMillis / 60;
                        AttributesTableViewActivity.this.tvTimer.setText(String.format("%02d:%02d:%02d", Integer.valueOf(i / 60), Integer.valueOf(i), Integer.valueOf(currentTimeMillis % 60)));
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
            new FetchLocation(this, true, new OnLocationFoundListener() { // from class: com.conceptglobal.pmc.fo.AttributesTableViewActivity.22
                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onLocationFound(LocationInfo locationInfo) {
                }

                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onTimerTimeOut() {
                }

                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onLocationFound(Location location) {
                    if (AttributesTableViewActivity.this.fetchLocationCall.equalsIgnoreCase("Stop")) {
                        AttributesTableViewActivity.stopTimeGPS = UtilDeclarations.getLongToDate(location.getTime());
                    } else {
                        AttributesTableViewActivity.startTimeGPS = UtilDeclarations.getLongToDate(location.getTime());
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

    /* JADX INFO: Access modifiers changed from: private */
    public void bindFarmerExpenditure() {
        try {
            int intValue = GetDataFromDB.getInstance().getIntValue(Queries.getInstance().getFarmerDemoAmountQry(this.farmerId));
            this.mapEntryEdit.get(854).setText(intValue + "");
        } catch (Exception unused) {
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        LocalBroadcastManager.getInstance(this).unregisterReceiver(this.farmerSelectedReceiver);
    }
}

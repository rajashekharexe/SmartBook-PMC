package com.conceptglobal.pmc.fo;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.DatePickerDialog;
import android.app.Dialog;
import android.app.TimePickerDialog;
import android.content.ActivityNotFoundException;
import android.content.ClipData;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.BitmapFactory;
import android.location.Location;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.text.Editable;
import android.text.InputFilter;
import android.text.Spanned;
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
import android.widget.RatingBar;
import android.widget.TextView;
import android.widget.TimePicker;
import android.widget.Toast;
import androidx.core.content.FileProvider;
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
public class AttributesActivity_FBF extends Activity implements View.OnClickListener, CropChanger, ValidatorInterface {
    private static final int DATEDIALOGID = 0;
    private static final int GET_CAM_IMG_FIRST = 101;
    private static final int ISDONE = 1;
    private static final String TAG = "AttributesActivity_FBF";
    private static final int TIMEDIALOGID = 1;
    public static Context ctx;
    private static List<AttributeModel> listAttributes;
    private static List<EditText> mEntryArr;
    private static List<EditText> mEntryArrIds;
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
    private String dos;
    private String farmerId;
    private GetDataFromDB getDataFromDB;
    private String image1Path;
    private ImageDetails imageDetails;
    private File imageFile;
    private ImageView imageView;
    private ImageView imgLastVistDetails;
    private String isCOmpleted;
    private int isPlanned;
    private int isSelfassign;
    private int ismba;
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
    private RatingBar ratingBar;
    private String[] remarkNames;
    private String[] remarkids;
    private int segmentId;
    private EditText speachText;
    private TextView textActivityName;
    private long transId;
    private TextView tvLastVisitDetails;
    private String updateDOS;
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
    View.OnClickListener operationListener = new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.AttributesActivity_FBF.8
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
            throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.fo.AttributesActivity_FBF.AnonymousClass8.onClick(android.view.View):void");
        }
    };
    View.OnClickListener operationListenerMultiSelect = new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.AttributesActivity_FBF.9
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
            throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.fo.AttributesActivity_FBF.AnonymousClass9.onClick(android.view.View):void");
        }
    };
    View.OnClickListener datesListener = new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.AttributesActivity_FBF.10
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AttributesActivity_FBF.this.datePos = view.getId();
            AttributesActivity_FBF.this.showDialog(0);
        }
    };
    View.OnClickListener timesListener = new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.AttributesActivity_FBF.11
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AttributesActivity_FBF.this.timePos = view.getId();
            AttributesActivity_FBF.this.showDialog(1);
        }
    };
    private DatePickerDialog.OnDateSetListener mDateSetListener = new DatePickerDialog.OnDateSetListener() { // from class: com.conceptglobal.pmc.fo.AttributesActivity_FBF.13
        @Override // android.app.DatePickerDialog.OnDateSetListener
        public void onDateSet(DatePicker datePicker, int i, int i2, int i3) {
            AttributesActivity_FBF.this.mYear = i;
            AttributesActivity_FBF.this.mMonth = i2;
            AttributesActivity_FBF.this.mDay = i3;
            try {
                if (new SimpleDateFormat("yyyy-MM-dd").parse(i + "-" + (i2 + 1) + "-" + i3).compareTo(new Date()) < 30) {
                    AttributesActivity_FBF.this.updateDisplay();
                } else {
                    Toast.makeText(AttributesActivity_FBF.this.getApplicationContext(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectProperDate()), 1).show();
                }
            } catch (Exception e) {
                PLog.e(AttributesActivity_FBF.TAG, e);
            }
        }
    };
    private TimePickerDialog.OnTimeSetListener mTimeSetListener = new TimePickerDialog.OnTimeSetListener() { // from class: com.conceptglobal.pmc.fo.AttributesActivity_FBF.14
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
            ((TextView) AttributesActivity_FBF.mEntryArr.get(AttributesActivity_FBF.this.timePos)).setText(i + " : " + str2 + " : " + str);
        }
    };
    CompressListener listener = new CompressListener() { // from class: com.conceptglobal.pmc.fo.AttributesActivity_FBF.15
        @Override // com.conceptglobal.pmc.utils.CompressListener
        public void onComprssCompleteListener(String str) {
            UtilDeclarations.loadDiskThumbnail(AttributesActivity_FBF.this.context, AttributesActivity_FBF.this.imageView, new File(str));
        }
    };

    private void setListeners() {
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
    }

    static /* synthetic */ int access$1310(AttributesActivity_FBF attributesActivity_FBF) {
        int i = attributesActivity_FBF.mForOperations;
        attributesActivity_FBF.mForOperations = i - 1;
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
    }

    private void init() {
        this.cropChageListener = this;
        ctx = this;
        this.mAddDynamicLinear = (LinearLayout) findViewById(R.id.ll_infalter);
        this.textActivityName = (TextView) findViewById(R.id.activityNameText);
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
            this.activityId = intent.getIntExtra(ConstantDeclarations.getInstance().getKEYACTIVITYID(), 0);
            this.isPlanned = intent.getIntExtra(ConstantDeclarations.getInstance().getKEYISPLANNED(), 0);
            this.activityName = intent.getStringExtra("ACTIVITYNAME");
            this.activityAssignmentId = intent.getIntExtra("ActivityAssignmentId", 0);
            this.transId = intent.getLongExtra("TRANSID", 0L);
            this.assignmentID = intent.getIntExtra("AssignmentId", 0);
            this.isCOmpleted = intent.getStringExtra("isCompleted");
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
        this.textActivityName.setVisibility(0);
        loadAttributes(this.activityId);
        Calendar calendar = Calendar.getInstance();
        this.mDay = calendar.get(5);
        this.mMonth = calendar.get(2);
        this.mYear = calendar.get(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadAttributes(int i) {
        try {
            String str = this.isCOmpleted;
            if (str != null && !str.equalsIgnoreCase("null")) {
                if (this.isCOmpleted.equalsIgnoreCase("1")) {
                    listAttributes = GetDataFromDB.getInstance().getPMCFBFActivityAttributes(Queries.getInstance().getPMCActivityAttributeFBF_CompletedQueryUpdated(this.farmerId, this.activityId, this.activityAssignmentId, this.segmentId, this.transId));
                }
            } else {
                listAttributes = GetDataFromDB.getInstance().getPMCFBFActivityAttributes(Queries.getInstance().getPMCActivityAttributeFBFQueryUpdated(this.farmerId, this.activityId, this.activityAssignmentId, this.segmentId, this.transId));
            }
            if (listAttributes.size() <= 0) {
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
    /* JADX WARN: Removed duplicated region for block: B:103:0x0fab  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0f8e  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0e4b  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x0d4e  */
    /* JADX WARN: Removed duplicated region for block: B:187:0x0ce5  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0ca6  */
    /* JADX WARN: Removed duplicated region for block: B:230:0x02dd A[Catch: Exception -> 0x0361, TryCatch #5 {Exception -> 0x0361, blocks: (B:227:0x02c9, B:228:0x02d5, B:230:0x02dd, B:232:0x02eb, B:234:0x030f, B:235:0x0319, B:237:0x0339, B:240:0x033c, B:255:0x02c4), top: B:254:0x02c4 }] */
    /* JADX WARN: Removed duplicated region for block: B:242:0x0342  */
    /* JADX WARN: Removed duplicated region for block: B:247:0x034b A[Catch: Exception -> 0x037a, TryCatch #4 {Exception -> 0x037a, blocks: (B:243:0x0344, B:247:0x034b, B:260:0x0365), top: B:218:0x028a }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0d31  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0e44  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0ee5  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0f0c  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0f48  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0f94  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x107b  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x1093  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x10a7  */
    /* JADX WARN: Type inference failed for: r0v20 */
    /* JADX WARN: Type inference failed for: r0v240, types: [android.view.View, com.conceptglobal.imaterialdesign.widget.CheckBox] */
    /* JADX WARN: Type inference failed for: r0v271 */
    /* JADX WARN: Type inference failed for: r0v317 */
    /* JADX WARN: Type inference failed for: r2v134 */
    /* JADX WARN: Type inference failed for: r2v135 */
    /* JADX WARN: Type inference failed for: r2v136 */
    /* JADX WARN: Type inference failed for: r2v68, types: [float] */
    /* JADX WARN: Type inference failed for: r2v69 */
    /* JADX WARN: Type inference failed for: r2v70 */
    /* JADX WARN: Type inference failed for: r2v71 */
    /* JADX WARN: Type inference failed for: r2v72 */
    /* JADX WARN: Type inference failed for: r2v74 */
    /* JADX WARN: Type inference failed for: r2v75 */
    /* JADX WARN: Type inference failed for: r4v15 */
    /* JADX WARN: Type inference failed for: r4v19 */
    /* JADX WARN: Type inference failed for: r4v29, types: [android.view.View, android.widget.EditText, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v30 */
    /* JADX WARN: Type inference failed for: r4v33 */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r9v22 */
    /* JADX WARN: Type inference failed for: r9v23 */
    /* JADX WARN: Type inference failed for: r9v24 */
    /* JADX WARN: Type inference failed for: r9v31, types: [android.widget.LinearLayout] */
    /* JADX WARN: Type inference failed for: r9v61 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void addOperationsDynamicLayout(java.lang.String r39, java.lang.String r40, int r41, java.lang.String r42, final com.conceptglobal.pmc.model.AttributeModel r43, android.widget.LinearLayout r44, boolean r45) {
        /*
            Method dump skipped, instructions count: 4593
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.fo.AttributesActivity_FBF.addOperationsDynamicLayout(java.lang.String, java.lang.String, int, java.lang.String, com.conceptglobal.pmc.model.AttributeModel, android.widget.LinearLayout, boolean):void");
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
            if (this.obj.getControlType().equalsIgnoreCase("Dropdown")) {
                if (this.obj.getIsKeyAttribute() == 1) {
                    this.obj.setAttributeValue(editable.toString());
                    if (!this.obj.getAttributeValue().equalsIgnoreCase("0") && !this.obj.getAttributeValue().equalsIgnoreCase("")) {
                        if (AttributesActivity_FBF.this.getDataFromDB.getKeyAttributeId(AttributesActivity_FBF.this.activityId, AttributesActivity_FBF.this.getDataFromDB.getDropdownDisplayField(this.obj), this.obj.getAttributeId()) != 0) {
                            try {
                                ArrayList arrayList = new ArrayList();
                                List<AttributeModel> pMCFBFActivityAttributes = GetDataFromDB.getInstance().getPMCFBFActivityAttributes(Queries.getInstance().getPMCFBFActivityKeyAttributes(AttributesActivity_FBF.this.activityId, AttributesActivity_FBF.this.getDataFromDB.getDropdownDisplayField(this.obj), this.obj.getAttributeId()));
                                List<AttributeModel> pMCFBFActivityAttributes2 = GetDataFromDB.getInstance().getPMCFBFActivityAttributes(Queries.getInstance().getPMCFBFActivityKeyAttributes(AttributesActivity_FBF.this.activityId, AttributesActivity_FBF.this.getDataFromDB.getDropdownDisplayField(this.obj), this.obj.getAttributeId()));
                                Iterator it = AttributesActivity_FBF.listAttributes.iterator();
                                while (it.hasNext()) {
                                    AttributeModel performFiltering = AttributesActivity_FBF.this.performFiltering(pMCFBFActivityAttributes2, "", (AttributeModel) it.next());
                                    if (performFiltering != null) {
                                        arrayList.add(performFiltering);
                                    }
                                }
                                if (arrayList.size() > 0) {
                                    Iterator it2 = arrayList.iterator();
                                    while (it2.hasNext()) {
                                        int findModelPosition = AttributesActivity_FBF.this.findModelPosition(AttributesActivity_FBF.listAttributes, (AttributeModel) it2.next());
                                        AttributesActivity_FBF.listAttributes.remove(findModelPosition);
                                        AttributesActivity_FBF.this.mAddDynamicLinear.removeViewAt(findModelPosition);
                                        AttributesActivity_FBF.access$1310(AttributesActivity_FBF.this);
                                        AttributesActivity_FBF.this.mattributesnamesArr.remove(findModelPosition);
                                        AttributesActivity_FBF.mEntryArrIds.remove(findModelPosition);
                                        AttributesActivity_FBF.mEntryArr.remove(findModelPosition);
                                    }
                                }
                                for (AttributeModel attributeModel : pMCFBFActivityAttributes) {
                                    AttributesActivity_FBF.listAttributes.add(attributeModel);
                                    AttributesActivity_FBF.this.addOperationsDynamicLayout(attributeModel.getAttributeName(), attributeModel.getControlType(), attributeModel.getAttributeId(), attributeModel.getAttributeValue(), attributeModel, AttributesActivity_FBF.this.mAddDynamicLinear, false);
                                }
                            } catch (Exception e) {
                                PLog.e(AttributesActivity_FBF.TAG, e);
                            }
                        } else {
                            try {
                                ArrayList arrayList2 = new ArrayList();
                                List<AttributeModel> pMCActivityAttributes = GetDataFromDB.getInstance().getPMCActivityAttributes(Queries.getInstance().getPMCActivityAttributeQueryUpdatedFBF(AttributesActivity_FBF.this.farmerId, AttributesActivity_FBF.this.activityId, AttributesActivity_FBF.this.activityAssignmentId, AttributesActivity_FBF.this.transId));
                                Iterator it3 = AttributesActivity_FBF.listAttributes.iterator();
                                while (it3.hasNext()) {
                                    AttributeModel performFiltering2 = AttributesActivity_FBF.this.performFiltering(pMCActivityAttributes, "", (AttributeModel) it3.next());
                                    if (performFiltering2 != null) {
                                        arrayList2.add(performFiltering2);
                                    }
                                }
                                if (arrayList2.size() > 0) {
                                    Iterator it4 = arrayList2.iterator();
                                    while (it4.hasNext()) {
                                        int findModelPosition2 = AttributesActivity_FBF.this.findModelPosition(AttributesActivity_FBF.listAttributes, (AttributeModel) it4.next());
                                        AttributesActivity_FBF.listAttributes.remove(findModelPosition2);
                                        AttributesActivity_FBF.this.mAddDynamicLinear.removeViewAt(findModelPosition2);
                                        AttributesActivity_FBF.access$1310(AttributesActivity_FBF.this);
                                        AttributesActivity_FBF.this.mattributesnamesArr.remove(findModelPosition2);
                                        AttributesActivity_FBF.mEntryArrIds.remove(findModelPosition2);
                                        AttributesActivity_FBF.mEntryArr.remove(findModelPosition2);
                                    }
                                }
                            } catch (Exception e2) {
                                PLog.e(AttributesActivity_FBF.TAG, e2);
                            }
                        }
                    }
                }
                List<Integer> filterAttributesByFilterAttribute = AttributesActivity_FBF.this.filterAttributesByFilterAttribute(this.obj.getAttributeId());
                if (filterAttributesByFilterAttribute.size() > 0) {
                    for (Integer num : filterAttributesByFilterAttribute) {
                        ((EditText) AttributesActivity_FBF.mEntryArr.get(((Integer) AttributesActivity_FBF.this.mapEntryEditIds.get(num)).intValue())).setText("");
                        ((EditText) AttributesActivity_FBF.mEntryArrIds.get(((Integer) AttributesActivity_FBF.this.mapEntryEditIds.get(num)).intValue())).setText("");
                    }
                    return;
                }
                return;
            }
            if (this.obj.getControlType().equalsIgnoreCase("Multiselect Dropdown")) {
                List<Integer> filterAttributesByFilterAttribute2 = AttributesActivity_FBF.this.filterAttributesByFilterAttribute(this.obj.getAttributeId());
                if (filterAttributesByFilterAttribute2.size() > 0) {
                    for (Integer num2 : filterAttributesByFilterAttribute2) {
                        ((EditText) AttributesActivity_FBF.mEntryArr.get(((Integer) AttributesActivity_FBF.this.mapEntryEditIds.get(num2)).intValue())).setText("");
                        ((EditText) AttributesActivity_FBF.mEntryArrIds.get(((Integer) AttributesActivity_FBF.this.mapEntryEditIds.get(num2)).intValue())).setText("");
                    }
                    return;
                }
                return;
            }
            if (this.obj.getControlType().equalsIgnoreCase("TextBoxN") || this.obj.getControlType().equalsIgnoreCase("TextBoxND")) {
                if (editable.toString().equalsIgnoreCase("") || editable.toString().equalsIgnoreCase(".")) {
                    return;
                }
                if (this.obj.getControlType().equalsIgnoreCase("TextBoxN")) {
                    if (editable.length() == this.maxvalue) {
                        this.editText.setText(editable);
                        return;
                    }
                    return;
                } else {
                    if (Float.parseFloat(editable.toString()) > this.maxvalue) {
                        this.editText.setText(this.beforetext);
                        return;
                    }
                    return;
                }
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

    /* JADX INFO: Access modifiers changed from: private */
    public void showAddVillageDetailsDialog(EditText editText, String str, String str2, AttributeModel attributeModel) {
        Intent intent = new Intent(this.context, (Class<?>) ChildAttributeActivity.class);
        intent.putExtra(ConstantDeclarations.getInstance().getKEYFARMERID(), this.farmerId);
        intent.putExtra(ConstantDeclarations.getInstance().getKeyIsMba(), this.ismba);
        intent.putExtra("SEGMENTID", this.segmentId);
        intent.putExtra("ISSELFASSIGN", this.isSelfassign);
        intent.putExtra("ParentAttributeId", Integer.parseInt(str));
        intent.putExtra("AssignmentId", this.assignmentID);
        intent.putExtra("ActivityAssignmentId", this.activityAssignmentId);
        intent.putExtra("TRANSID", this.transId);
        intent.putExtra("DISPLAYTYPE", str2);
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

    private void showNoInternetDialog(String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setMessage(str).setCancelable(false).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.AttributesActivity_FBF.7
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

    @Override // android.app.Activity
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

    public static void setFieldDataEmpty(int i, boolean z) {
        try {
            mEntryArr.get(i).setText("");
            if (z) {
                mEntryArrIds.get(i).setText("");
            }
        } catch (Exception unused) {
        }
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

    private void showAlertDialog(String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.context);
        builder.setMessage(str).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.AttributesActivity_FBF.12
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
    protected Dialog onCreateDialog(int i) {
        if (i != 0) {
            return null;
        }
        DatePickerDialog datePickerDialog = new DatePickerDialog(this, this.mDateSetListener, this.mYear, this.mMonth, this.mDay);
        datePickerDialog.getDatePicker().getMaxDate();
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
            new FetchLocation(this, true, new OnLocationFoundListener() { // from class: com.conceptglobal.pmc.fo.AttributesActivity_FBF.16
                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onLocationFound(Location location) {
                }

                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onTimerTimeOut() {
                }

                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onLocationFound(LocationInfo locationInfo) {
                    AttributesActivity_FBF.this.onLocFound(locationInfo);
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
        ((AttributeEventListener) context).GetData(listAttributes, mEntryArr, mEntryArrIds);
    }

    private class loadDataTask extends AsyncTask<Void, Void, Void> {
        private loadDataTask() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Void doInBackground(Void... voidArr) {
            AttributesActivity_FBF.this.loadAttributes(0);
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
        editText.setOnTouchListener(new View.OnTouchListener() { // from class: com.conceptglobal.pmc.fo.AttributesActivity_FBF.17
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                AttributesActivity_FBF.this.speachText = editText;
                if (motionEvent.getAction() != 1 || motionEvent.getRawX() < editText.getRight() - editText.getCompoundDrawables()[2].getBounds().width()) {
                    return false;
                }
                AttributesActivity_FBF.this.promptSpeechInput();
                return true;
            }
        });
    }
}

package com.conceptglobal.pmc.fo;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.DatePickerDialog;
import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.ClipData;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.location.Location;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.Editable;
import android.text.InputFilter;
import android.text.Spanned;
import android.text.TextWatcher;
import android.util.DisplayMetrics;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.content.FileProvider;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.conceptglobal.imaterialdesign.widget.FloatingActionButton;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.database.InsertDataIntoDB;
import com.conceptglobal.pmc.interfaces.ChildAttributeLevelListener;
import com.conceptglobal.pmc.interfaces.CropChanger;
import com.conceptglobal.pmc.interfaces.OnLocationFoundListener;
import com.conceptglobal.pmc.locationprovider.FetchLocation;
import com.conceptglobal.pmc.model.AttributeModel;
import com.conceptglobal.pmc.model.AudianceFarmer;
import com.conceptglobal.pmc.model.BrandsModel;
import com.conceptglobal.pmc.model.DashboardListModel;
import com.conceptglobal.pmc.model.DealerMaster;
import com.conceptglobal.pmc.model.FarmerCropMapping;
import com.conceptglobal.pmc.model.FarmerMaster;
import com.conceptglobal.pmc.model.ImageDetails;
import com.conceptglobal.pmc.model.LocationInfo;
import com.conceptglobal.pmc.model.LocationInfoModel;
import com.conceptglobal.pmc.utils.CompressHelper;
import com.conceptglobal.pmc.utils.CompressListener;
import com.conceptglobal.pmc.utils.ConstantDeclarations;
import com.conceptglobal.pmc.utils.Encryption;
import com.conceptglobal.pmc.utils.LabelUtils;
import com.conceptglobal.pmc.utils.LocationService;
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
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public class AudianceChildAttributesFragment extends Fragment implements View.OnClickListener, CropChanger {
    private static final int DATEDIALOGID = 1;
    private static final int GET_CAM_IMG_FIRST = 101;
    private static final int ISDONE = 0;
    private static final int ISNOTDONE = 0;
    private List<AttributeModel> AlertlistAttributes;
    private int activityAssignmentId;
    private int activityId;
    private LinearLayout addvillageLayout;
    private int assignmentID;
    private HashMap<Integer, AttributeModel> attributeHashmap;
    private FloatingActionButton btnAdd;
    private Button btnfinish;
    private ChildAttributeLevelListener childAttributeLevelListener;
    private Context context;
    private CropChanger cropChageListener;
    private String cropId;
    private EditText dateSelectedEdit;
    private int demoActivity;
    private String dos;
    private GestureDetector gestureDetector;
    private GetDataFromDB getDataFromDB;
    private ImageView globalView;
    private String image1Path;
    private ImageDetails imageDetails;
    private File imageFile;
    private ImageView imageView;
    private boolean inDragMode;
    private int initViewX;
    private int initViewY;
    private int initX;
    private int initY;
    private List<AttributeModel> insertListAttributes;
    private int isPlanned;
    private int isSelfassign;
    private int ismba;
    private List<AttributeModel> listAttributes;
    private Button locationBtn;
    private LocationInfoModel locationInfo;
    private LinearLayout locationLayout;
    private LocationService locationService;
    private View locationView;
    private Activity mActivity;
    private int mDay;
    private List<EditText> mEntryArr;
    private List<EditText> mEntryArrIds;
    private EditText mEntryEdt;
    private List<ImageView> mImageviews;
    private LocalBroadcastReceiver mLocalBroadcastReceiver;
    private int mMonth;
    private int mYear;
    private List<TextView> mattributesnamesArr;
    private int newX;
    private int newY;
    private AttributeModel objAttribute;
    private String pairID;
    private int parentAttributeId;
    private Queries queries;
    private View rootView;
    private int screenHight;
    private int screenWidth;
    private int segmentId;
    private HashMap<String, DashboardListModel> selectedFarmers;
    private long transId;
    private String updateDOS;
    private WindowManager windowManager;
    private final String TAG = "ChildAttributeFragment";
    private int setCount = 0;
    private String farmerId = "0";
    private int locationFlag = 0;
    private int datePos = 0;
    private String mFiledStr = "";
    private int mForOperations = -1;
    private int mForDates = -1;
    private int layoutId = 0;
    private EditText mDatetext = null;
    private List<AttributeModel> childValuelistAttributes = new ArrayList();
    public List<BrandsModel> brandsList = null;
    private int countVillage = 0;
    private Map<Integer, List<String>> villageDetails = new HashMap();
    private Map<Integer, EditText> attributeMap = new HashMap();
    private Map<Integer, Map<Integer, EditText>> setsData = new LinkedHashMap();
    private int ATTRIBUTEID_TAG = 1;
    private int SETID_TAG = 2;
    private int ENTRYID_TAG = 3;
    View.OnClickListener operationListener = new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.AudianceChildAttributesFragment.8
        /* JADX WARN: Removed duplicated region for block: B:34:0x014c A[Catch: Exception -> 0x0375, TryCatch #0 {Exception -> 0x0375, blocks: (B:6:0x003f, B:8:0x0045, B:10:0x004b, B:12:0x0051, B:23:0x0056, B:26:0x0062, B:28:0x008a, B:30:0x00a4, B:31:0x00fc, B:32:0x0146, B:34:0x014c, B:36:0x0174, B:38:0x018e, B:39:0x01e6, B:40:0x0230, B:42:0x0236, B:44:0x025e, B:46:0x0278, B:47:0x02d0, B:48:0x031a, B:50:0x0320, B:52:0x0326, B:54:0x032c, B:55:0x0330, B:58:0x033b, B:59:0x034a, B:61:0x0350, B:62:0x035f, B:64:0x0365), top: B:5:0x003f }] */
        /* JADX WARN: Removed duplicated region for block: B:42:0x0236 A[Catch: Exception -> 0x0375, TryCatch #0 {Exception -> 0x0375, blocks: (B:6:0x003f, B:8:0x0045, B:10:0x004b, B:12:0x0051, B:23:0x0056, B:26:0x0062, B:28:0x008a, B:30:0x00a4, B:31:0x00fc, B:32:0x0146, B:34:0x014c, B:36:0x0174, B:38:0x018e, B:39:0x01e6, B:40:0x0230, B:42:0x0236, B:44:0x025e, B:46:0x0278, B:47:0x02d0, B:48:0x031a, B:50:0x0320, B:52:0x0326, B:54:0x032c, B:55:0x0330, B:58:0x033b, B:59:0x034a, B:61:0x0350, B:62:0x035f, B:64:0x0365), top: B:5:0x003f }] */
        /* JADX WARN: Removed duplicated region for block: B:50:0x0320 A[Catch: Exception -> 0x0375, TryCatch #0 {Exception -> 0x0375, blocks: (B:6:0x003f, B:8:0x0045, B:10:0x004b, B:12:0x0051, B:23:0x0056, B:26:0x0062, B:28:0x008a, B:30:0x00a4, B:31:0x00fc, B:32:0x0146, B:34:0x014c, B:36:0x0174, B:38:0x018e, B:39:0x01e6, B:40:0x0230, B:42:0x0236, B:44:0x025e, B:46:0x0278, B:47:0x02d0, B:48:0x031a, B:50:0x0320, B:52:0x0326, B:54:0x032c, B:55:0x0330, B:58:0x033b, B:59:0x034a, B:61:0x0350, B:62:0x035f, B:64:0x0365), top: B:5:0x003f }] */
        /* JADX WARN: Removed duplicated region for block: B:58:0x033b A[Catch: Exception -> 0x0375, TRY_ENTER, TryCatch #0 {Exception -> 0x0375, blocks: (B:6:0x003f, B:8:0x0045, B:10:0x004b, B:12:0x0051, B:23:0x0056, B:26:0x0062, B:28:0x008a, B:30:0x00a4, B:31:0x00fc, B:32:0x0146, B:34:0x014c, B:36:0x0174, B:38:0x018e, B:39:0x01e6, B:40:0x0230, B:42:0x0236, B:44:0x025e, B:46:0x0278, B:47:0x02d0, B:48:0x031a, B:50:0x0320, B:52:0x0326, B:54:0x032c, B:55:0x0330, B:58:0x033b, B:59:0x034a, B:61:0x0350, B:62:0x035f, B:64:0x0365), top: B:5:0x003f }] */
        /* JADX WARN: Removed duplicated region for block: B:61:0x0350 A[Catch: Exception -> 0x0375, TryCatch #0 {Exception -> 0x0375, blocks: (B:6:0x003f, B:8:0x0045, B:10:0x004b, B:12:0x0051, B:23:0x0056, B:26:0x0062, B:28:0x008a, B:30:0x00a4, B:31:0x00fc, B:32:0x0146, B:34:0x014c, B:36:0x0174, B:38:0x018e, B:39:0x01e6, B:40:0x0230, B:42:0x0236, B:44:0x025e, B:46:0x0278, B:47:0x02d0, B:48:0x031a, B:50:0x0320, B:52:0x0326, B:54:0x032c, B:55:0x0330, B:58:0x033b, B:59:0x034a, B:61:0x0350, B:62:0x035f, B:64:0x0365), top: B:5:0x003f }] */
        /* JADX WARN: Removed duplicated region for block: B:64:0x0365 A[Catch: Exception -> 0x0375, TRY_LEAVE, TryCatch #0 {Exception -> 0x0375, blocks: (B:6:0x003f, B:8:0x0045, B:10:0x004b, B:12:0x0051, B:23:0x0056, B:26:0x0062, B:28:0x008a, B:30:0x00a4, B:31:0x00fc, B:32:0x0146, B:34:0x014c, B:36:0x0174, B:38:0x018e, B:39:0x01e6, B:40:0x0230, B:42:0x0236, B:44:0x025e, B:46:0x0278, B:47:0x02d0, B:48:0x031a, B:50:0x0320, B:52:0x0326, B:54:0x032c, B:55:0x0330, B:58:0x033b, B:59:0x034a, B:61:0x0350, B:62:0x035f, B:64:0x0365), top: B:5:0x003f }] */
        @Override // android.view.View.OnClickListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onClick(android.view.View r21) {
            /*
                Method dump skipped, instructions count: 1204
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.fo.AudianceChildAttributesFragment.AnonymousClass8.onClick(android.view.View):void");
        }
    };
    View.OnClickListener operationListenerMultiSelect = new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.AudianceChildAttributesFragment.9
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:17:0x042b  */
        /* JADX WARN: Removed duplicated region for block: B:36:0x0170 A[Catch: Exception -> 0x03af, TryCatch #0 {Exception -> 0x03af, blocks: (B:82:0x00e0, B:33:0x016a, B:36:0x0170, B:38:0x0198, B:40:0x01b3, B:84:0x0111), top: B:29:0x0072 }] */
        /* JADX WARN: Removed duplicated region for block: B:46:0x0267 A[Catch: Exception -> 0x03ad, TryCatch #2 {Exception -> 0x03ad, blocks: (B:42:0x01dc, B:44:0x0261, B:46:0x0267, B:48:0x028f, B:50:0x02aa, B:51:0x0302, B:52:0x0352, B:54:0x0358, B:56:0x035e, B:58:0x0364, B:59:0x0368, B:62:0x0373, B:63:0x0382, B:65:0x0388, B:66:0x0397, B:68:0x039d, B:71:0x020d), top: B:34:0x016e }] */
        /* JADX WARN: Removed duplicated region for block: B:54:0x0358 A[Catch: Exception -> 0x03ad, TryCatch #2 {Exception -> 0x03ad, blocks: (B:42:0x01dc, B:44:0x0261, B:46:0x0267, B:48:0x028f, B:50:0x02aa, B:51:0x0302, B:52:0x0352, B:54:0x0358, B:56:0x035e, B:58:0x0364, B:59:0x0368, B:62:0x0373, B:63:0x0382, B:65:0x0388, B:66:0x0397, B:68:0x039d, B:71:0x020d), top: B:34:0x016e }] */
        /* JADX WARN: Removed duplicated region for block: B:62:0x0373 A[Catch: Exception -> 0x03ad, TRY_ENTER, TryCatch #2 {Exception -> 0x03ad, blocks: (B:42:0x01dc, B:44:0x0261, B:46:0x0267, B:48:0x028f, B:50:0x02aa, B:51:0x0302, B:52:0x0352, B:54:0x0358, B:56:0x035e, B:58:0x0364, B:59:0x0368, B:62:0x0373, B:63:0x0382, B:65:0x0388, B:66:0x0397, B:68:0x039d, B:71:0x020d), top: B:34:0x016e }] */
        /* JADX WARN: Removed duplicated region for block: B:65:0x0388 A[Catch: Exception -> 0x03ad, TryCatch #2 {Exception -> 0x03ad, blocks: (B:42:0x01dc, B:44:0x0261, B:46:0x0267, B:48:0x028f, B:50:0x02aa, B:51:0x0302, B:52:0x0352, B:54:0x0358, B:56:0x035e, B:58:0x0364, B:59:0x0368, B:62:0x0373, B:63:0x0382, B:65:0x0388, B:66:0x0397, B:68:0x039d, B:71:0x020d), top: B:34:0x016e }] */
        /* JADX WARN: Removed duplicated region for block: B:68:0x039d A[Catch: Exception -> 0x03ad, TRY_LEAVE, TryCatch #2 {Exception -> 0x03ad, blocks: (B:42:0x01dc, B:44:0x0261, B:46:0x0267, B:48:0x028f, B:50:0x02aa, B:51:0x0302, B:52:0x0352, B:54:0x0358, B:56:0x035e, B:58:0x0364, B:59:0x0368, B:62:0x0373, B:63:0x0382, B:65:0x0388, B:66:0x0397, B:68:0x039d, B:71:0x020d), top: B:34:0x016e }] */
        /* JADX WARN: Type inference failed for: r10v0, types: [int] */
        /* JADX WARN: Type inference failed for: r10v1 */
        /* JADX WARN: Type inference failed for: r10v11 */
        /* JADX WARN: Type inference failed for: r10v15 */
        /* JADX WARN: Type inference failed for: r10v16 */
        /* JADX WARN: Type inference failed for: r10v18 */
        /* JADX WARN: Type inference failed for: r10v2 */
        /* JADX WARN: Type inference failed for: r10v3 */
        /* JADX WARN: Type inference failed for: r10v35 */
        /* JADX WARN: Type inference failed for: r10v5 */
        /* JADX WARN: Type inference failed for: r10v53 */
        /* JADX WARN: Type inference failed for: r10v56, types: [java.lang.StringBuilder] */
        /* JADX WARN: Type inference failed for: r10v58 */
        /* JADX WARN: Type inference failed for: r10v59 */
        /* JADX WARN: Type inference failed for: r10v6 */
        /* JADX WARN: Type inference failed for: r10v60 */
        /* JADX WARN: Type inference failed for: r10v61 */
        /* JADX WARN: Type inference failed for: r10v62 */
        /* JADX WARN: Type inference failed for: r10v65 */
        /* JADX WARN: Type inference failed for: r10v70 */
        /* JADX WARN: Type inference failed for: r10v71 */
        /* JADX WARN: Type inference failed for: r12v1, types: [java.lang.StringBuilder] */
        /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.String] */
        /* JADX WARN: Type inference failed for: r2v1 */
        /* JADX WARN: Type inference failed for: r2v2 */
        /* JADX WARN: Type inference failed for: r2v23, types: [java.util.List, java.util.List<com.conceptglobal.pmc.model.BrandsModel>] */
        /* JADX WARN: Type inference failed for: r5v0, types: [java.lang.String] */
        /* JADX WARN: Type inference failed for: r5v1 */
        /* JADX WARN: Type inference failed for: r5v2, types: [java.lang.String] */
        /* JADX WARN: Type inference failed for: r5v5, types: [com.conceptglobal.pmc.database.GetDataFromDB] */
        /* JADX WARN: Type inference failed for: r6v0, types: [int] */
        /* JADX WARN: Type inference failed for: r6v1 */
        /* JADX WARN: Type inference failed for: r6v8, types: [java.lang.StringBuilder] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:73:0x03b8 -> B:13:0x03bf). Please report as a decompilation issue!!! */
        @Override // android.view.View.OnClickListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onClick(android.view.View r31) {
            /*
                Method dump skipped, instructions count: 1239
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.fo.AudianceChildAttributesFragment.AnonymousClass9.onClick(android.view.View):void");
        }
    };
    CompressListener listener = new CompressListener() { // from class: com.conceptglobal.pmc.fo.AudianceChildAttributesFragment.10
        @Override // com.conceptglobal.pmc.utils.CompressListener
        public void onComprssCompleteListener(String str) {
            UtilDeclarations.loadDiskThumbnail(AudianceChildAttributesFragment.this.context, AudianceChildAttributesFragment.this.imageView, new File(str));
        }
    };
    View.OnClickListener datesListener = new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.AudianceChildAttributesFragment.12
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AudianceChildAttributesFragment.this.dateSelectedEdit = (EditText) view;
            AudianceChildAttributesFragment.this.getActivity().showDialog(1);
            new DatePickerDialog(AudianceChildAttributesFragment.this.context, AudianceChildAttributesFragment.this.mDateSetListener, AudianceChildAttributesFragment.this.mYear, AudianceChildAttributesFragment.this.mMonth, AudianceChildAttributesFragment.this.mDay).show();
        }
    };
    private DatePickerDialog.OnDateSetListener mDateSetListener = new DatePickerDialog.OnDateSetListener() { // from class: com.conceptglobal.pmc.fo.AudianceChildAttributesFragment.14
        @Override // android.app.DatePickerDialog.OnDateSetListener
        public void onDateSet(DatePicker datePicker, int i, int i2, int i3) {
            AudianceChildAttributesFragment.this.mYear = i;
            AudianceChildAttributesFragment.this.mMonth = i2;
            AudianceChildAttributesFragment.this.mDay = i3;
            try {
                if (new SimpleDateFormat("yyyy-MM-dd").parse(i + "-" + (i2 + 1) + "-" + i3).compareTo(new Date()) < 0) {
                    AudianceChildAttributesFragment.this.updateDisplay();
                } else {
                    Toast.makeText(AudianceChildAttributesFragment.this.context, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectProperDate()), 1).show();
                }
            } catch (Exception e) {
                PLog.e("ChildAttributeFragment", e);
                e.printStackTrace();
            }
        }
    };

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        FragmentActivity activity = getActivity();
        this.mActivity = activity;
        try {
            this.childAttributeLevelListener = (ChildAttributeLevelListener) activity;
        } catch (Exception e) {
            PLog.e("ChildAttributeFragment", e);
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.GPSTurnedOnResult");
        this.mLocalBroadcastReceiver = new LocalBroadcastReceiver();
        LocalBroadcastManager.getInstance(getActivity()).registerReceiver(this.mLocalBroadcastReceiver, intentFilter);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (this.rootView == null) {
            this.setCount = 0;
            this.rootView = layoutInflater.inflate(R.layout.child_attribute_layout, viewGroup, false);
            init();
            getData(getArguments());
            setListeners();
        }
        return this.rootView;
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.setsData.clear();
        LocalBroadcastManager.getInstance(getActivity()).unregisterReceiver(this.mLocalBroadcastReceiver);
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
    }

    private void init() {
        this.addvillageLayout = (LinearLayout) this.rootView.findViewById(R.id.villageviewLayout);
        this.btnAdd = (FloatingActionButton) this.rootView.findViewById(R.id.BtnAdd_noofvillages);
        this.btnfinish = (Button) this.rootView.findViewById(R.id.BtnFinish_noofvillages);
        this.mEntryArr = new ArrayList();
        this.context = getActivity();
        this.getDataFromDB = GetDataFromDB.getInstance();
        this.queries = Queries.getInstance();
        this.mEntryArrIds = new ArrayList();
        this.insertListAttributes = new ArrayList();
        this.attributeHashmap = new HashMap<>();
        this.gestureDetector = new GestureDetector(this.context, new SingleTapConfirm());
    }

    @Override // androidx.fragment.app.Fragment
    public void onOptionsMenuClosed(Menu menu) {
        super.onOptionsMenuClosed(menu);
    }

    private void getData(Bundle bundle) {
        try {
            this.ismba = bundle.getInt(ConstantDeclarations.getInstance().getKeyIsMba(), 0);
            this.farmerId = bundle.getString(ConstantDeclarations.getInstance().getKEYFARMERID());
            this.isSelfassign = bundle.getInt("ISSELFASSIGN", 0);
            this.segmentId = bundle.getInt("SEGMENTID", 0);
            this.activityId = bundle.getInt(ConstantDeclarations.getInstance().getKEYACTIVITYID(), 0);
            this.isPlanned = bundle.getInt(ConstantDeclarations.getInstance().getKEYISPLANNED(), 0);
            this.parentAttributeId = bundle.getInt("ParentAttributeId", 0);
            this.activityAssignmentId = bundle.getInt("ActivityAssignmentId", 0);
            this.transId = bundle.getLong("TRANSID", 0L);
            this.countVillage = bundle.getInt("Count", 0);
            this.pairID = bundle.getString("pairId");
            this.assignmentID = bundle.getInt("AssignmentId", 0);
            this.childValuelistAttributes = GetDataFromDB.getInstance().getPMCActivityAttributes(Queries.getInstance().getChildValuesAttributeQueryUpdate(this.farmerId, this.activityId, this.parentAttributeId, this.activityAssignmentId, this.transId));
            this.AlertlistAttributes = GetDataFromDB.getInstance().getPMCActivityAttributes(Queries.getInstance().getSelectedAttributeQueryUpdate(this.farmerId, this.activityId, this.parentAttributeId));
            this.listAttributes = this.childValuelistAttributes;
            Calendar calendar = Calendar.getInstance();
            this.mDay = calendar.get(5);
            this.mMonth = calendar.get(2);
            this.mYear = calendar.get(1);
            this.selectedFarmers = ((AudianceChildAttributeActivity) getActivity()).selectedFarmers;
        } catch (Exception e) {
            PLog.e("ChildAttributeFragment", e);
        }
    }

    private void setListeners() {
        HashMap<String, DashboardListModel> hashMap = this.selectedFarmers;
        int i = 0;
        if (hashMap != null && hashMap.size() > 0) {
            while (i < this.selectedFarmers.size()) {
                addDynamicLayoutVillageDetails(this.parentAttributeId, this.addvillageLayout, null, true, this.selectedFarmers);
                i++;
            }
        } else {
            while (i < this.countVillage) {
                addDynamicLayoutVillageDetails(this.parentAttributeId, this.addvillageLayout, null, true, null);
                i++;
            }
        }
        this.btnAdd.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.AudianceChildAttributesFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AudianceChildAttributesFragment audianceChildAttributesFragment = AudianceChildAttributesFragment.this;
                audianceChildAttributesFragment.addDynamicLayoutVillageDetails(audianceChildAttributesFragment.parentAttributeId, AudianceChildAttributesFragment.this.addvillageLayout, null, false, AudianceChildAttributesFragment.this.selectedFarmers);
            }
        });
        this.btnfinish.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.AudianceChildAttributesFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AudianceChildAttributesFragment.this.testMethod();
            }
        });
    }

    public void testMethod() {
        if (isDataValid()) {
            try {
                GetDataFromDB.getInstance().executeRawQueryInDB(Queries.getInstance().deleteFarmerDetailsChildActivity(this.farmerId, this.activityId, this.activityAssignmentId, this.parentAttributeId));
                InsertDataIntoDB.insertFarmerActivityDetailsWithSequenceId(this.insertListAttributes, this.farmerId, this.activityId, this.isPlanned, 0, this.assignmentID, 1, this.segmentId, this.transId, this.activityAssignmentId);
                addAudianceFarmerDetails(this.insertListAttributes, this.farmerId, this.activityId);
                addAudianceRetailerDetails(this.insertListAttributes, this.farmerId, this.activityId);
            } catch (Exception e) {
                PLog.e("ChildAttributeFragment", e);
                e.printStackTrace();
            }
            onDestroy();
            this.childAttributeLevelListener.addOrDeleteTab(0, 0, 0, "");
        }
    }

    private void addAudianceFarmerDetails(List<AttributeModel> list, String str, int i) {
        String str2;
        String str3;
        Iterator it;
        AudianceChildAttributesFragment audianceChildAttributesFragment = this;
        int i2 = i;
        String str4 = "1";
        String str5 = "false";
        try {
            String str6 = GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getActivityShortCode(i2)) + UtilDeclarations.getDateAudianceFarmer() + audianceChildAttributesFragment.getDataFromDB.getSingleValue(Queries.getInstance().geetingPdaid());
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
                farmerMaster.setPdaid(audianceChildAttributesFragment.getDataFromDB.getSingleValue(Queries.getInstance().geetingPdaid()));
                farmerMaster.setStatus(1);
                farmerMaster.setTypeofFarmer(str4);
                farmerMaster.setFarmerTypeId(str4);
                farmerMaster.setIsActive("True");
                farmerMaster.setAudiencefarmer(1);
                farmerMaster.setServerupdatedstatus(str5);
                farmerMaster.setColumn5(str6);
                FarmerCropMapping farmerCropMapping = new FarmerCropMapping();
                String str7 = str4;
                int i4 = 0;
                while (true) {
                    if (i4 < arrayList2.size()) {
                        AttributeModel attributeModel2 = (AttributeModel) arrayList2.get(i4);
                        str2 = str5;
                        str3 = str6;
                        if (attributeModel2.getAttributeId() == 667) {
                            farmerMaster.setRespondentNo(attributeModel2.getAttributeValue());
                            farmerCropMapping.setRespondentNo(farmerMaster.getRespondentNo());
                        }
                        GetDataFromDB getDataFromDB = audianceChildAttributesFragment.getDataFromDB;
                        Queries queries = Queries.getInstance();
                        it = it2;
                        StringBuilder sb = new StringBuilder();
                        ArrayList arrayList7 = arrayList2;
                        sb.append(attributeModel2.getAttributeId());
                        sb.append("");
                        AudianceFarmer listAudianceData = audianceChildAttributesFragment.getDataFromDB.getListAudianceData(Queries.getInstance().gettingAudianceFramerObject(getDataFromDB.getSingleValue(queries.getAudianceFarmerMappingID(sb.toString(), i2 + ""))));
                        if (listAudianceData != null && listAudianceData.getTableName() != null && listAudianceData.getTableName().equals("FarmerMaster")) {
                            arrayList3.add(listAudianceData.getDbColumnName());
                            arrayList4.add(attributeModel2.getAttributeValue());
                            if (listAudianceData.getDbColumnName().equals("Mobile")) {
                                String encryptRemovenewLine = Encryption.encryptRemovenewLine(attributeModel2.getAttributeValue());
                                boolean isMobileNumExists = audianceChildAttributesFragment.getDataFromDB.isMobileNumExists("SELECT Mobile FROM FarmerMaster where  Mobile = '" + encryptRemovenewLine + "'");
                                boolean isMobileNumExists2 = audianceChildAttributesFragment.getDataFromDB.isMobileNumExists("SELECT Mobile FROM PMCTerritoryFarmerMaster where  Mobile ='" + encryptRemovenewLine + "'");
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
                            try {
                                if (listAudianceData.getDbColumnName().equals("Acreages")) {
                                    arrayList5.add("AcreageValue");
                                    arrayList6.add(attributeModel2.getAttributeValue());
                                }
                            } catch (Exception unused) {
                            }
                        }
                        i4++;
                        audianceChildAttributesFragment = this;
                        it2 = it;
                        i2 = i;
                        str5 = str2;
                        str6 = str3;
                        arrayList2 = arrayList7;
                    } else {
                        str2 = str5;
                        str3 = str6;
                        it = it2;
                        if (arrayList3.size() > 0) {
                            InsertDataIntoDB.insertAudianceFarmerDetails(farmerMaster, arrayList3, arrayList4);
                        }
                        if (arrayList5.size() > 0) {
                            String[][] strArr = GetDataFromDB.getInstance().getlotdata(Queries.getInstance().getAcresDertails());
                            if (strArr != null && strArr.length > 0) {
                                arrayList5.add("AcreageType");
                                arrayList6.add(strArr[0][0]);
                            }
                            InsertDataIntoDB.insertAudianceFarmerCropDetails(farmerCropMapping, arrayList5, arrayList6);
                        }
                    }
                }
                audianceChildAttributesFragment = this;
                it2 = it;
                i2 = i;
                str4 = str7;
                str5 = str2;
                str6 = str3;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void addAudianceRetailerDetails(List<AttributeModel> list, String str, int i) {
        try {
            HashMap hashMap = new HashMap();
            for (int i2 = 0; i2 < list.size(); i2++) {
                AttributeModel attributeModel = list.get(i2);
                if (hashMap.containsKey(attributeModel.getChildLevelId())) {
                    ((ArrayList) hashMap.get(attributeModel.getChildLevelId())).add(attributeModel);
                } else {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(attributeModel);
                    hashMap.put(attributeModel.getChildLevelId(), arrayList);
                }
            }
            Iterator it = hashMap.entrySet().iterator();
            while (it.hasNext()) {
                ArrayList arrayList2 = (ArrayList) ((Map.Entry) it.next()).getValue();
                ArrayList arrayList3 = new ArrayList();
                ArrayList arrayList4 = new ArrayList();
                DealerMaster dealerMaster = new DealerMaster();
                dealerMaster.setPDAId(Integer.parseInt(this.getDataFromDB.getSingleValue(Queries.getInstance().geetingPdaid())));
                dealerMaster.setContactId((dealerMaster.getPDAId() + Calendar.getInstance().getTimeInMillis()) + "");
                dealerMaster.setCustomerTypeID(2);
                dealerMaster.setServerUpdatedStatus(false);
                dealerMaster.setIsNew(true);
                dealerMaster.setStatusReason("0");
                dealerMaster.setIsActive("True");
                int i3 = 0;
                while (true) {
                    if (i3 < arrayList2.size()) {
                        AttributeModel attributeModel2 = (AttributeModel) arrayList2.get(i3);
                        AudianceFarmer listAudianceData = this.getDataFromDB.getListAudianceData(Queries.getInstance().gettingAudianceFramerObject(this.getDataFromDB.getSingleValue(Queries.getInstance().getAudianceFarmerMappingID(attributeModel2.getAttributeId() + "", i + ""))));
                        if (listAudianceData != null && listAudianceData.getTableName() != null && listAudianceData.getTableName().equalsIgnoreCase("DealerMaster")) {
                            arrayList3.add(listAudianceData.getDbColumnName());
                            arrayList4.add(attributeModel2.getAttributeValue());
                            if (listAudianceData.getDbColumnName().equals("MobileNumber")) {
                                String encryptRemovenewLine = Encryption.encryptRemovenewLine(attributeModel2.getAttributeValue());
                                boolean isMobileNumExists = this.getDataFromDB.isMobileNumExists("SELECT MobileNumber FROM DealerMaster where  MobileNumber = '" + encryptRemovenewLine + "'");
                                boolean isMobileNumExists2 = this.getDataFromDB.isMobileNumExists("SELECT MobileNumber FROM PMCTerritoryDealerMaster where  MobileNumber = '" + encryptRemovenewLine + "'");
                                if (!isMobileNumExists && !isMobileNumExists2) {
                                }
                            } else {
                                continue;
                            }
                        }
                        i3++;
                    } else if (arrayList3.size() > 0) {
                        InsertDataIntoDB.insertAudianceRetailerDetails(dealerMaster, arrayList3, arrayList4);
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x0339 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean isDataValid() {
        /*
            Method dump skipped, instructions count: 1360
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.fo.AudianceChildAttributesFragment.isDataValid():boolean");
    }

    public boolean onValidate(List<AttributeModel> list) {
        boolean z;
        boolean z2;
        boolean z3 = true;
        for (int i = 0; i < this.mEntryArr.size(); i++) {
            AttributeModel attributeModel = list.get(i);
            try {
            } catch (Exception e) {
                e = e;
            }
            if (attributeModel.getIsMandatory() == 1) {
                if (this.mEntryArr.get(i).getText().toString().trim().length() == 0) {
                    try {
                        this.mEntryArr.get(i).setError(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_enterTheToast()) + " " + attributeModel.getAttributeName());
                    } catch (Exception e2) {
                        e = e2;
                        z3 = false;
                        PLog.e("ChildAttributeFragment", e);
                    }
                } else {
                    if (attributeModel.getMinLength() == 0 || this.mEntryArr.get(i).getText().toString().trim().length() >= attributeModel.getMinLength()) {
                        z2 = true;
                    } else {
                        this.mEntryArr.get(i).setError(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_minimumLengthFor()) + " " + attributeModel.getAttributeName() + " - " + attributeModel.getMinLength());
                        z3 = false;
                        z2 = false;
                    }
                    if (attributeModel.getMinValue() != 0) {
                        if (Integer.parseInt(this.mEntryArr.get(i).getText().toString().trim().length() > 0 ? this.mEntryArr.get(i).getText().toString() : "0") < attributeModel.getMinValue()) {
                            this.mEntryArr.get(i).setError(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_minimumValueFor()) + " " + attributeModel.getAttributeName() + " - " + attributeModel.getMinValue());
                        }
                    }
                    if (z2) {
                        this.mEntryArr.get(i).setError(null);
                    }
                }
                z3 = false;
            } else {
                if (this.mEntryArr.get(i).getText().toString().trim().length() != 0) {
                    if (attributeModel.getMinLength() == 0 || this.mEntryArr.get(i).getText().toString().length() >= attributeModel.getMinLength()) {
                        z = true;
                    } else {
                        this.mEntryArr.get(i).setError(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_minimumLengthFor()) + " " + attributeModel.getAttributeName() + " - " + attributeModel.getMinLength());
                        z3 = false;
                        z = false;
                    }
                    if (attributeModel.getMinValue() != 0) {
                        if (Integer.parseInt(this.mEntryArr.get(i).getText().toString().trim().length() > 0 ? this.mEntryArr.get(i).getText().toString() : "0") < attributeModel.getMinValue()) {
                            this.mEntryArr.get(i).setError(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_minimumValueFor()) + " " + attributeModel.getAttributeName() + " - " + attributeModel.getMinValue());
                            z3 = false;
                        }
                    }
                    if (z) {
                        this.mEntryArr.get(i).setError(null);
                    }
                }
            }
        }
        return z3;
    }

    public static List<AttributeModel> cloneList(List<AttributeModel> list) {
        ArrayList arrayList = new ArrayList(list.size());
        Iterator<AttributeModel> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new AttributeModel(it.next()));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:42:0x01fe  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0231  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void addDynamicLayoutVillageDetails(int r22, android.widget.LinearLayout r23, java.util.Map<java.lang.Integer, java.lang.String> r24, boolean r25, java.util.HashMap<java.lang.String, com.conceptglobal.pmc.model.DashboardListModel> r26) {
        /*
            Method dump skipped, instructions count: 740
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.fo.AudianceChildAttributesFragment.addDynamicLayoutVillageDetails(int, android.widget.LinearLayout, java.util.Map, boolean, java.util.HashMap):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshSetViews(int i) {
        this.setsData.remove(Integer.valueOf(i));
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.putAll(this.setsData);
        this.mForOperations = -1;
        this.mForDates = -1;
        int i2 = 0;
        this.setCount = 0;
        this.addvillageLayout.removeAllViews();
        this.mEntryArr.clear();
        this.mEntryArrIds.clear();
        this.setsData.clear();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        Iterator it = linkedHashMap.entrySet().iterator();
        while (it.hasNext()) {
            Map map = (Map) ((Map.Entry) it.next()).getValue();
            HashMap hashMap = new HashMap();
            for (Map.Entry entry : map.entrySet()) {
                if (this.attributeHashmap.get(entry.getKey()).getControlType().equalsIgnoreCase("Dropdown")) {
                    if (((EditText) entry.getValue()).getTag(R.string.ENTRYID_SET) != null) {
                        hashMap.put((Integer) entry.getKey(), ((EditText) entry.getValue()).getTag(R.string.ENTRYID_SET).toString());
                    } else {
                        hashMap.put((Integer) entry.getKey(), "");
                    }
                } else if (this.attributeHashmap.get(entry.getKey()).getControlType().equalsIgnoreCase("Multiselect Dropdown")) {
                    if (((EditText) entry.getValue()).getTag(R.string.ENTRYID_SET) != null) {
                        hashMap.put((Integer) entry.getKey(), ((EditText) entry.getValue()).getTag(R.string.ENTRYID_SET).toString());
                    } else {
                        hashMap.put((Integer) entry.getKey(), "");
                    }
                } else {
                    hashMap.put((Integer) entry.getKey(), ((EditText) entry.getValue()).getText().toString());
                }
            }
            addDynamicLayoutVillageDetails(this.parentAttributeId, this.addvillageLayout, hashMap, false, this.selectedFarmers);
            i2++;
            linkedHashMap2.put(Integer.valueOf(i2), hashMap);
            hashMap.clear();
        }
        linkedHashMap2.clear();
    }

    protected AttributeModel performFiltering(List<AttributeModel> list, String str, int i) {
        ArrayList<AttributeModel> arrayList = new ArrayList();
        new ArrayList();
        synchronized (this) {
            arrayList.addAll(list);
        }
        AttributeModel attributeModel = new AttributeModel();
        if (str != null && !str.equalsIgnoreCase("")) {
            for (AttributeModel attributeModel2 : arrayList) {
                if (attributeModel2.getSequenceId().equalsIgnoreCase(str) && attributeModel2.getAttributeId() == i) {
                    attributeModel = new AttributeModel(attributeModel2);
                }
            }
            return attributeModel;
        }
        return new AttributeModel();
    }

    /* JADX WARN: Removed duplicated region for block: B:115:0x0b79  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x0add  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x0a7a  */
    /* JADX WARN: Removed duplicated region for block: B:217:0x034d A[Catch: Exception -> 0x03e9, TryCatch #7 {Exception -> 0x03e9, blocks: (B:214:0x0339, B:215:0x0345, B:217:0x034d, B:219:0x035b, B:221:0x037f, B:222:0x0389, B:224:0x03a9, B:227:0x03ac, B:229:0x03b2, B:231:0x03c0, B:234:0x0336, B:251:0x03d4), top: B:203:0x02a5 }] */
    /* JADX WARN: Removed duplicated region for block: B:229:0x03b2 A[Catch: Exception -> 0x03e9, TryCatch #7 {Exception -> 0x03e9, blocks: (B:214:0x0339, B:215:0x0345, B:217:0x034d, B:219:0x035b, B:221:0x037f, B:222:0x0389, B:224:0x03a9, B:227:0x03ac, B:229:0x03b2, B:231:0x03c0, B:234:0x0336, B:251:0x03d4), top: B:203:0x02a5 }] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0a3d  */
    /* JADX WARN: Removed duplicated region for block: B:231:0x03c0 A[Catch: Exception -> 0x03e9, TryCatch #7 {Exception -> 0x03e9, blocks: (B:214:0x0339, B:215:0x0345, B:217:0x034d, B:219:0x035b, B:221:0x037f, B:222:0x0389, B:224:0x03a9, B:227:0x03ac, B:229:0x03b2, B:231:0x03c0, B:234:0x0336, B:251:0x03d4), top: B:203:0x02a5 }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0ac8  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0b71  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0bed  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0c0c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0c6b  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0c9a  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0d69  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0d7d  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0cad  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void addOperationsDynamicLayout(java.lang.String r42, java.lang.String r43, final int r44, java.lang.String r45, com.conceptglobal.pmc.model.AttributeModel r46, android.widget.LinearLayout r47, boolean r48, java.util.Map<java.lang.Integer, android.widget.EditText> r49, int r50, int r51) {
        /*
            Method dump skipped, instructions count: 3682
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.fo.AudianceChildAttributesFragment.addOperationsDynamicLayout(java.lang.String, java.lang.String, int, java.lang.String, com.conceptglobal.pmc.model.AttributeModel, android.widget.LinearLayout, boolean, java.util.Map, int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showAddVillageDetailsDialog(EditText editText, String str, String str2) {
        try {
            ChildAttributeLevelListener childAttributeLevelListener = this.childAttributeLevelListener;
            if (childAttributeLevelListener != null) {
                childAttributeLevelListener.addOrDeleteTab(1, Integer.parseInt(str), Integer.parseInt(editText.getText().toString()), this.pairID + "." + str2 + "." + str);
            }
        } catch (Exception e) {
            e.printStackTrace();
            PLog.e("ChildAttributeFragment", e);
        }
    }

    private void setEditableFalse(EditText editText) {
        editText.setFocusable(false);
        editText.setClickable(false);
        editText.setEnabled(false);
        editText.setBackgroundDrawable(getResources().getDrawable(R.drawable.edit_bg_disable_custom));
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
                PLog.e("ChildAttributeFragment", e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void findCurrentLocation() {
        if (!((ChildAttributeActivity) getActivity()).mLocationUtils.checkPermissions(getActivity())) {
            ((ChildAttributeActivity) getActivity()).mLocationUtils.requestPermissions(getActivity());
            return;
        }
        try {
            new FetchLocation(this.mActivity, true, new OnLocationFoundListener() { // from class: com.conceptglobal.pmc.fo.AudianceChildAttributesFragment.11
                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onLocationFound(Location location) {
                }

                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onTimerTimeOut() {
                }

                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onLocationFound(LocationInfo locationInfo) {
                    AudianceChildAttributesFragment.this.onLocFound(locationInfo);
                }
            }, "ChildAttributeFragment");
        } catch (Exception e) {
            e.printStackTrace();
        }
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

    private void captureImage(int i, String str) {
        File file = new File(new CompressHelper().getCompressLoaction(this.context) + File.separator + "PMC" + str + i + ".JPEG");
        this.imageFile = file;
        if (i == 101) {
            this.image1Path = file.getAbsolutePath();
        }
        Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
        Uri uriForFile = FileProvider.getUriForFile(this.context, "com.conceptglobal.pmcdeepakfertilizers.provider", this.imageFile);
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
        builder.setMessage(str).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.AudianceChildAttributesFragment.13
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        });
        builder.show();
    }

    public Dialog onCreateDialog(int i) {
        if (i != 1) {
            return null;
        }
        return new DatePickerDialog(this.context, this.mDateSetListener, this.mYear, this.mMonth, this.mDay);
    }

    private void setDate(int i) {
        EditText editText = this.dateSelectedEdit;
        try {
            new SimpleDateFormat("dd-MM-yyyy").parse(this.mFiledStr);
        } catch (ParseException e) {
            PLog.e("ChildAttributeFragment", e);
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
            PLog.e("ChildAttributeFragment", e);
        }
        setDate(this.datePos);
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
                Integer num = (Integer) this.editText.getTag(R.string.SETID_SET);
                num.intValue();
                if (this.obj.getControlType().equalsIgnoreCase("Dropdown")) {
                    List<Integer> filterAttributesByFilterAttribute = AudianceChildAttributesFragment.this.filterAttributesByFilterAttribute(this.obj.getAttributeId());
                    if (filterAttributesByFilterAttribute.size() > 0) {
                        for (Integer num2 : filterAttributesByFilterAttribute) {
                            ((EditText) ((Map) AudianceChildAttributesFragment.this.setsData.get(num)).get(num2)).setText("");
                            ((EditText) ((Map) AudianceChildAttributesFragment.this.setsData.get(num)).get(num2)).setTag(R.string.ENTRYID_SET, "");
                        }
                        return;
                    }
                    return;
                }
                if (this.obj.getControlType().equalsIgnoreCase("Multiselect Dropdown")) {
                    List<Integer> filterAttributesByFilterAttribute2 = AudianceChildAttributesFragment.this.filterAttributesByFilterAttribute(this.obj.getAttributeId());
                    if (filterAttributesByFilterAttribute2.size() > 0) {
                        for (Integer num3 : filterAttributesByFilterAttribute2) {
                            ((EditText) ((Map) AudianceChildAttributesFragment.this.setsData.get(num)).get(num3)).setText("");
                            ((EditText) ((Map) AudianceChildAttributesFragment.this.setsData.get(num)).get(num3)).setTag(R.string.ENTRYID_SET, "");
                        }
                        return;
                    }
                    return;
                }
                if ((this.obj.getControlType().equalsIgnoreCase("TextBoxN") || this.obj.getControlType().equalsIgnoreCase("TextBoxND")) && !editable.toString().equalsIgnoreCase("") && !editable.toString().equalsIgnoreCase(".") && Float.parseFloat(editable.toString()) > this.maxvalue) {
                    this.editText.setText(this.beforetext);
                }
            } catch (Exception e) {
                PLog.e("ChildAttributeFragment", e, 0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<Integer> filterAttributesByFilterAttribute(int i) {
        ArrayList arrayList = new ArrayList();
        try {
            Iterator<Map.Entry<Integer, AttributeModel>> it = this.attributeHashmap.entrySet().iterator();
            while (it.hasNext()) {
                AttributeModel value = it.next().getValue();
                if (value.getFilterAttribute1() == i || value.getFilterAttribute2() == i || value.getFilterAttribute3() == i) {
                    arrayList.add(Integer.valueOf(value.getAttributeId()));
                }
            }
        } catch (Exception e) {
            PLog.e("ChildAttributeFragment", e, 0);
        }
        return arrayList;
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
            StringBuilder sb = new StringBuilder("[0-9]{0,");
            sb.append(i - 1);
            sb.append("}");
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

    private void addFView() {
        this.windowManager = (WindowManager) this.context.getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        this.windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        this.screenWidth = displayMetrics.widthPixels;
        this.screenHight = displayMetrics.heightPixels;
        this.inDragMode = false;
        ImageView imageView = new ImageView(this.context);
        this.globalView = imageView;
        imageView.setImageResource(R.drawable.add_img);
        final WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(UtilDeclarations.convertDiptoPix(50, this.context), UtilDeclarations.convertDiptoPix(50, this.context), 2002, 8, -3);
        layoutParams.gravity = 85;
        layoutParams.x = UtilDeclarations.convertDiptoPix(15, this.context);
        layoutParams.y = UtilDeclarations.convertDiptoPix(120, this.context);
        this.globalView.setOnTouchListener(new View.OnTouchListener() { // from class: com.conceptglobal.pmc.fo.AudianceChildAttributesFragment.15
            /* JADX WARN: Code restructure failed: missing block: B:10:0x002f, code lost:
            
                if (r0 != 2) goto L27;
             */
            @Override // android.view.View.OnTouchListener
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public boolean onTouch(android.view.View r9, android.view.MotionEvent r10) {
                /*
                    Method dump skipped, instructions count: 254
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.fo.AudianceChildAttributesFragment.AnonymousClass15.onTouch(android.view.View, android.view.MotionEvent):boolean");
            }
        });
        this.windowManager.addView(this.globalView, layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateViews(ImageView imageView, WindowManager.LayoutParams layoutParams) {
        this.windowManager.updateViewLayout(imageView, layoutParams);
    }

    private class SingleTapConfirm extends GestureDetector.SimpleOnGestureListener {
        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onSingleTapUp(MotionEvent motionEvent) {
            return true;
        }

        private SingleTapConfirm() {
        }
    }

    private class LocalBroadcastReceiver extends BroadcastReceiver {
        private LocalBroadcastReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent.getAction().equalsIgnoreCase("android.intent.action.GPSTurnedOnResult")) {
                AudianceChildAttributesFragment.this.findCurrentLocation();
            }
        }
    }
}

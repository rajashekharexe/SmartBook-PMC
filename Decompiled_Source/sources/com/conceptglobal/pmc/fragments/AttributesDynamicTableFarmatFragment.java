package com.conceptglobal.pmc.fragments;

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
import android.graphics.drawable.ColorDrawable;
import android.location.Location;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.Editable;
import android.text.InputFilter;
import android.text.Spanned;
import android.text.TextWatcher;
import android.util.Log;
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
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.conceptglobal.pmc.adapter.DosageSuggesionsListAdapter;
import com.conceptglobal.pmc.adapter.SuggesionsListAdapter;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.database.InsertDataIntoDB;
import com.conceptglobal.pmc.fo.ChildAttributeActivity;
import com.conceptglobal.pmc.interfaces.ChildAttributeLevelListener;
import com.conceptglobal.pmc.interfaces.CropChanger;
import com.conceptglobal.pmc.interfaces.OnLocationFoundListener;
import com.conceptglobal.pmc.locationprovider.FetchLocation;
import com.conceptglobal.pmc.model.AttributeModel;
import com.conceptglobal.pmc.model.BrandSuggesionsModel;
import com.conceptglobal.pmc.model.BrandsModel;
import com.conceptglobal.pmc.model.ImageDetails;
import com.conceptglobal.pmc.model.LocationInfo;
import com.conceptglobal.pmc.model.SuggesionsModel;
import com.conceptglobal.pmc.utils.CompressHelper;
import com.conceptglobal.pmc.utils.CompressListener;
import com.conceptglobal.pmc.utils.ConstantDeclarations;
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
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public class AttributesDynamicTableFarmatFragment extends Fragment implements View.OnClickListener, CropChanger {
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
    private Button btnAdd;
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
    private LocationInfo locationInfo;
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
    private LocationUtils mLocationUtils;
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
    private String Demo = "Demo";
    private String ControlPlot = "Control Plot";
    View.OnClickListener operationListener = new View.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.AttributesDynamicTableFarmatFragment.6
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
            throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.fragments.AttributesDynamicTableFarmatFragment.AnonymousClass6.onClick(android.view.View):void");
        }
    };
    View.OnClickListener operationListenerMultiSelect = new View.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.AttributesDynamicTableFarmatFragment.7
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
            throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.fragments.AttributesDynamicTableFarmatFragment.AnonymousClass7.onClick(android.view.View):void");
        }
    };
    CompressListener listener = new CompressListener() { // from class: com.conceptglobal.pmc.fragments.AttributesDynamicTableFarmatFragment.8
        @Override // com.conceptglobal.pmc.utils.CompressListener
        public void onComprssCompleteListener(String str) {
            UtilDeclarations.loadDiskThumbnail(AttributesDynamicTableFarmatFragment.this.context, AttributesDynamicTableFarmatFragment.this.imageView, new File(str));
        }
    };
    View.OnClickListener datesListener = new View.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.AttributesDynamicTableFarmatFragment.10
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AttributesDynamicTableFarmatFragment.this.dateSelectedEdit = (EditText) view;
            new DatePickerDialog(AttributesDynamicTableFarmatFragment.this.context, AttributesDynamicTableFarmatFragment.this.mDateSetListener, AttributesDynamicTableFarmatFragment.this.mYear, AttributesDynamicTableFarmatFragment.this.mMonth, AttributesDynamicTableFarmatFragment.this.mDay).show();
        }
    };
    private DatePickerDialog.OnDateSetListener mDateSetListener = new DatePickerDialog.OnDateSetListener() { // from class: com.conceptglobal.pmc.fragments.AttributesDynamicTableFarmatFragment.12
        @Override // android.app.DatePickerDialog.OnDateSetListener
        public void onDateSet(DatePicker datePicker, int i, int i2, int i3) {
            AttributesDynamicTableFarmatFragment.this.mYear = i;
            AttributesDynamicTableFarmatFragment.this.mMonth = i2;
            AttributesDynamicTableFarmatFragment.this.mDay = i3;
            try {
                if (new SimpleDateFormat("yyyy-MM-dd").parse(i + "-" + (i2 + 1) + "-" + i3).compareTo(new Date()) < 0) {
                    AttributesDynamicTableFarmatFragment.this.updateDisplay();
                } else {
                    Toast.makeText(AttributesDynamicTableFarmatFragment.this.context, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectProperDate()), 1).show();
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
            this.rootView = layoutInflater.inflate(R.layout.child_attribute_dynamic_table_layout, viewGroup, false);
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
        this.btnAdd = (Button) this.rootView.findViewById(R.id.BtnAdd_noofvillages);
        this.mEntryArr = new ArrayList();
        this.context = getActivity();
        this.getDataFromDB = GetDataFromDB.getInstance();
        this.queries = Queries.getInstance();
        this.mEntryArrIds = new ArrayList();
        this.insertListAttributes = new ArrayList();
        this.attributeHashmap = new HashMap<>();
        this.gestureDetector = new GestureDetector(this.context, new SingleTapConfirm());
        this.mLocationUtils = new LocationUtils();
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
        } catch (Exception e) {
            PLog.e("ChildAttributeFragment", e);
        }
    }

    public void AddOperaion() {
        addDynamicLayoutVillageDetails(this.parentAttributeId, this.addvillageLayout, null, true);
    }

    public void showSuggesions() {
        showSuggesionsDialog();
    }

    private void setListeners() {
        int i = this.countVillage;
        if (i <= 2) {
            i = 2;
        }
        for (int i2 = 0; i2 < i; i2++) {
            addDynamicLayoutVillageDetails(this.parentAttributeId, this.addvillageLayout, null, true);
        }
    }

    public void testMethod(int i) {
        if (i == 0) {
            try {
                GetDataFromDB.getInstance().executeRawQueryInDB(Queries.getInstance().deleteFarmerDetailsChildActivityFromTable(this.farmerId, this.activityId, this.activityAssignmentId, this.parentAttributeId));
            } catch (Exception e) {
                PLog.e("ChildAttributeFragment", e);
                e.printStackTrace();
                return;
            }
        }
        GetDataFromDB.getInstance().executeRawQueryInDB(Queries.getInstance().deleteFarmerDetailsChildActivityFromTableSA(this.farmerId, this.activityId, this.transId, this.parentAttributeId));
        InsertDataIntoDB.insertFarmerActivityDetailsWithSequenceId(this.insertListAttributes, this.farmerId, this.activityId, this.isPlanned, 0, this.assignmentID, 1, this.segmentId, this.transId, this.activityAssignmentId);
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x02de A[Catch: Exception -> 0x048c, TRY_LEAVE, TryCatch #1 {Exception -> 0x048c, blocks: (B:9:0x0059, B:12:0x006d, B:30:0x02de, B:33:0x02ef, B:35:0x02f5, B:36:0x0304, B:39:0x0301, B:40:0x0343, B:42:0x034f, B:44:0x0355, B:46:0x036a, B:48:0x036e, B:50:0x03c0, B:52:0x0402, B:54:0x0443, B:14:0x00b0, B:16:0x00b6, B:20:0x0103, B:22:0x013d, B:24:0x0147, B:28:0x01ba, B:57:0x0151, B:59:0x015b, B:61:0x016d, B:62:0x0175, B:81:0x01bf, B:83:0x01d1, B:85:0x01d7, B:89:0x0220, B:91:0x025a, B:93:0x0264, B:97:0x02d7, B:98:0x026e, B:100:0x0278, B:102:0x028a, B:103:0x0292), top: B:8:0x0059 }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0492 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean isDataValid() {
        /*
            Method dump skipped, instructions count: 1177
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.fragments.AttributesDynamicTableFarmatFragment.isDataValid():boolean");
    }

    public void prepareDataDraft() {
        this.insertListAttributes.clear();
        for (Map.Entry<Integer, Map<Integer, EditText>> entry : this.setsData.entrySet()) {
            Integer key = entry.getKey();
            for (Map.Entry<Integer, EditText> entry2 : entry.getValue().entrySet()) {
                Integer key2 = entry2.getKey();
                EditText value = entry2.getValue();
                AttributeModel attributeModel = new AttributeModel(this.attributeHashmap.get(key2));
                try {
                    if (attributeModel.getControlType().equalsIgnoreCase("DropDown")) {
                        if (value.getTag(R.string.ENTRYID_SET) != null) {
                            attributeModel.setAttributeValue(value.getTag(R.string.ENTRYID_SET).toString());
                        } else {
                            attributeModel.setAttributeValue("");
                        }
                        attributeModel.setSequenceId(this.pairID + "." + key + "." + attributeModel.getAttributeId());
                        StringBuilder sb = new StringBuilder();
                        sb.append(this.pairID);
                        sb.append(".");
                        sb.append(key);
                        attributeModel.setChildLevelId(sb.toString());
                        this.insertListAttributes.add(attributeModel);
                    } else if (attributeModel.getControlType().equalsIgnoreCase("Multiselect Dropdown")) {
                        if (value.getTag(R.string.ENTRYID_SET) != null) {
                            String[] split = value.getTag(R.string.ENTRYID_SET).toString().toString().split(",");
                            if (split.length > 0) {
                                for (String str : split) {
                                    AttributeModel attributeModel2 = new AttributeModel(this.attributeHashmap.get(key2));
                                    attributeModel2.setAttributeValue(str);
                                    attributeModel2.setSequenceId(this.pairID + "." + key + "." + attributeModel.getAttributeId());
                                    StringBuilder sb2 = new StringBuilder();
                                    sb2.append(this.pairID);
                                    sb2.append(".");
                                    sb2.append(key);
                                    attributeModel2.setChildLevelId(sb2.toString());
                                    this.insertListAttributes.add(attributeModel2);
                                }
                            } else {
                                attributeModel.setAttributeValue("");
                                attributeModel.setSequenceId(this.pairID + "." + key + "." + attributeModel.getAttributeId());
                                StringBuilder sb3 = new StringBuilder();
                                sb3.append(this.pairID);
                                sb3.append(".");
                                sb3.append(key);
                                attributeModel.setChildLevelId(sb3.toString());
                                this.insertListAttributes.add(attributeModel);
                            }
                        } else {
                            attributeModel.setAttributeValue("");
                            attributeModel.setSequenceId(this.pairID + "." + key + "." + attributeModel.getAttributeId());
                            StringBuilder sb4 = new StringBuilder();
                            sb4.append(this.pairID);
                            sb4.append(".");
                            sb4.append(key);
                            attributeModel.setChildLevelId(sb4.toString());
                            this.insertListAttributes.add(attributeModel);
                        }
                    } else {
                        attributeModel.setAttributeValue(value.getText().toString());
                        attributeModel.setSequenceId(this.pairID + "." + key + "." + attributeModel.getAttributeId());
                        StringBuilder sb5 = new StringBuilder();
                        sb5.append(this.pairID);
                        sb5.append(".");
                        sb5.append(key);
                        attributeModel.setChildLevelId(sb5.toString());
                        this.insertListAttributes.add(attributeModel);
                    }
                } catch (Exception e) {
                    PLog.e("ChildAttributeFragment", e);
                }
            }
        }
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

    /* JADX WARN: Removed duplicated region for block: B:31:0x0236  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x025e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void addDynamicLayoutVillageDetails(int r18, android.widget.LinearLayout r19, java.util.Map<java.lang.Integer, java.lang.String> r20, boolean r21) {
        /*
            Method dump skipped, instructions count: 673
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.fragments.AttributesDynamicTableFarmatFragment.addDynamicLayoutVillageDetails(int, android.widget.LinearLayout, java.util.Map, boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshSetViews(int i) {
        this.setsData.remove(Integer.valueOf(i));
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.putAll(this.setsData);
        this.mForOperations = 0;
        this.mForDates = 0;
        this.setCount = 0;
        this.addvillageLayout.removeAllViews();
        this.mEntryArr.clear();
        this.mEntryArrIds.clear();
        this.setsData.clear();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        Iterator it = linkedHashMap.entrySet().iterator();
        int i2 = 0;
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
            addDynamicLayoutVillageDetails(this.parentAttributeId, this.addvillageLayout, hashMap, false);
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
                if (attributeModel2.getSequenceId().equalsIgnoreCase(str)) {
                    if (attributeModel2.getAttributeId() == i) {
                        attributeModel = new AttributeModel(attributeModel2);
                    }
                    Log.d("test", attributeModel.getAttributeValue() + "-----sequence" + str);
                }
            }
            return attributeModel;
        }
        return new AttributeModel();
    }

    /* JADX WARN: Removed duplicated region for block: B:113:0x0b9a  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0b09  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x0a82  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x0385 A[Catch: Exception -> 0x0426, TryCatch #7 {Exception -> 0x0426, blocks: (B:188:0x0371, B:189:0x037d, B:191:0x0385, B:193:0x0393, B:195:0x03b7, B:196:0x03c1, B:198:0x03e1, B:201:0x03e4, B:203:0x03ea, B:205:0x03f8, B:208:0x036e, B:230:0x040c), top: B:177:0x02ce }] */
    /* JADX WARN: Removed duplicated region for block: B:203:0x03ea A[Catch: Exception -> 0x0426, TryCatch #7 {Exception -> 0x0426, blocks: (B:188:0x0371, B:189:0x037d, B:191:0x0385, B:193:0x0393, B:195:0x03b7, B:196:0x03c1, B:198:0x03e1, B:201:0x03e4, B:203:0x03ea, B:205:0x03f8, B:208:0x036e, B:230:0x040c), top: B:177:0x02ce }] */
    /* JADX WARN: Removed duplicated region for block: B:205:0x03f8 A[Catch: Exception -> 0x0426, TryCatch #7 {Exception -> 0x0426, blocks: (B:188:0x0371, B:189:0x037d, B:191:0x0385, B:193:0x0393, B:195:0x03b7, B:196:0x03c1, B:198:0x03e1, B:201:0x03e4, B:203:0x03ea, B:205:0x03f8, B:208:0x036e, B:230:0x040c), top: B:177:0x02ce }] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0a11  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0afb  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0b94  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0ba4  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0c22  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0c4b  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0c7c  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0d49  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0d5d  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0c90  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0bac  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void addOperationsDynamicLayout(java.lang.String r34, java.lang.String r35, int r36, java.lang.String r37, com.conceptglobal.pmc.model.AttributeModel r38, android.widget.LinearLayout r39, boolean r40, java.util.Map<java.lang.Integer, android.widget.EditText> r41, int r42, int r43, int r44) {
        /*
            Method dump skipped, instructions count: 3648
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.fragments.AttributesDynamicTableFarmatFragment.addOperationsDynamicLayout(java.lang.String, java.lang.String, int, java.lang.String, com.conceptglobal.pmc.model.AttributeModel, android.widget.LinearLayout, boolean, java.util.Map, int, int, int):void");
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
            new FetchLocation(this.mActivity, true, new OnLocationFoundListener() { // from class: com.conceptglobal.pmc.fragments.AttributesDynamicTableFarmatFragment.9
                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onLocationFound(Location location) {
                }

                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onTimerTimeOut() {
                }

                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onLocationFound(LocationInfo locationInfo) {
                    AttributesDynamicTableFarmatFragment.this.onLocFound(locationInfo);
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
        Uri uriForFile = FileProvider.getUriForFile(null, "com.conceptglobal.pmcdeepakfertilizers.provider", this.imageFile);
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
        builder.setMessage(str).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.AttributesDynamicTableFarmatFragment.11
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
                    List<Integer> filterAttributesByFilterAttribute = AttributesDynamicTableFarmatFragment.this.filterAttributesByFilterAttribute(this.obj.getAttributeId());
                    if (filterAttributesByFilterAttribute.size() > 0) {
                        for (Integer num2 : filterAttributesByFilterAttribute) {
                            ((EditText) ((Map) AttributesDynamicTableFarmatFragment.this.setsData.get(num)).get(num2)).setText("");
                            ((EditText) ((Map) AttributesDynamicTableFarmatFragment.this.setsData.get(num)).get(num2)).setTag(R.string.ENTRYID_SET, "");
                        }
                        return;
                    }
                    return;
                }
                if (this.obj.getControlType().equalsIgnoreCase("Multiselect Dropdown")) {
                    List<Integer> filterAttributesByFilterAttribute2 = AttributesDynamicTableFarmatFragment.this.filterAttributesByFilterAttribute(this.obj.getAttributeId());
                    if (filterAttributesByFilterAttribute2.size() > 0) {
                        for (Integer num3 : filterAttributesByFilterAttribute2) {
                            ((EditText) ((Map) AttributesDynamicTableFarmatFragment.this.setsData.get(num)).get(num3)).setText("");
                            ((EditText) ((Map) AttributesDynamicTableFarmatFragment.this.setsData.get(num)).get(num3)).setTag(R.string.ENTRYID_SET, "");
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

    private void updateViews(ImageView imageView, WindowManager.LayoutParams layoutParams) {
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
                AttributesDynamicTableFarmatFragment.this.findCurrentLocation();
            }
        }
    }

    private void showSuggesionsDialog() {
        final Dialog dialog = new Dialog(this.context);
        dialog.requestWindowFeature(1);
        dialog.setContentView(R.layout.suggesions);
        RecyclerView recyclerView = (RecyclerView) dialog.findViewById(R.id.rv_list_of_suggesions);
        recyclerView.setHasFixedSize(true);
        recyclerView.setLayoutManager(new LinearLayoutManager(this.mActivity));
        RecyclerView recyclerView2 = (RecyclerView) dialog.findViewById(R.id.rv_list_of_suggesions_dosage);
        recyclerView2.setHasFixedSize(true);
        recyclerView2.setLayoutManager(new LinearLayoutManager(this.mActivity));
        GetDataFromDB getDataFromDB = GetDataFromDB.getInstance();
        Queries queries = Queries.getInstance();
        StringBuilder sb = new StringBuilder();
        sb.append(this.activityId);
        String str = "";
        sb.append("");
        List<SuggesionsModel> suggesionsList = getDataFromDB.getSuggesionsList(queries.getSuggesionsQry(sb.toString()));
        String str2 = "";
        for (int i = 0; i < suggesionsList.size(); i++) {
            SuggesionsModel suggesionsModel = suggesionsList.get(i);
            if (suggesionsModel.getAttributeId().equals("1")) {
                str = suggesionsModel.getSuggestedValueIds();
            }
            if (suggesionsModel.getAttributeId().equals("2")) {
                str2 = suggesionsModel.getSuggestedValueIds();
            }
        }
        recyclerView.setAdapter(new SuggesionsListAdapter(this.context, suggesionsList));
        recyclerView.setNestedScrollingEnabled(false);
        if (str.length() > 0 && str2.length() > 0) {
            List<BrandSuggesionsModel> dossagesList = GetDataFromDB.getInstance().getDossagesList(Queries.getInstance().getDosagesQry(str, str2));
            if (dossagesList.size() > 0) {
                BrandSuggesionsModel brandSuggesionsModel = new BrandSuggesionsModel();
                brandSuggesionsModel.setAttributeName("CROP");
                brandSuggesionsModel.setAttributeName2("BRAND");
                brandSuggesionsModel.setAttributeValue("DOSAGE Per Acre");
                brandSuggesionsModel.setAttributeValue2("DOSAGE Per Ltr");
                dossagesList.add(0, brandSuggesionsModel);
                recyclerView2.setAdapter(new DosageSuggesionsListAdapter(this.context, dossagesList));
                recyclerView2.setNestedScrollingEnabled(false);
            }
        }
        ((ImageView) dialog.findViewById(R.id.btnClose)).setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.AttributesDynamicTableFarmatFragment.13
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                dialog.dismiss();
            }
        });
        dialog.getWindow().setBackgroundDrawable(new ColorDrawable(0));
        dialog.setCancelable(true);
        dialog.setCanceledOnTouchOutside(false);
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        layoutParams.copyFrom(dialog.getWindow().getAttributes());
        layoutParams.width = -1;
        layoutParams.height = -2;
        dialog.getWindow().setAttributes(layoutParams);
        dialog.show();
    }
}

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
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.content.FileProvider;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.database.InsertDataIntoDB;
import com.conceptglobal.pmc.fo.AttributesTableViewActivity;
import com.conceptglobal.pmc.fo.ChildAttributeActivity;
import com.conceptglobal.pmc.interfaces.ChildAttributeLevelListener;
import com.conceptglobal.pmc.interfaces.CropChanger;
import com.conceptglobal.pmc.interfaces.OnLocationFoundListener;
import com.conceptglobal.pmc.locationprovider.FetchLocation;
import com.conceptglobal.pmc.model.AttributeModel;
import com.conceptglobal.pmc.model.BrandsModel;
import com.conceptglobal.pmc.model.ImageDetails;
import com.conceptglobal.pmc.model.LocationInfo;
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
public class AttributesTableFarmatFragment extends Fragment implements View.OnClickListener, CropChanger {
    private static final int DATEDIALOGID = 1;
    private static final int GET_CAM_IMG_FIRST = 101;
    private static final int ISDONE = 0;
    private static final int ISNOTDONE = 0;
    private List<AttributeModel> AlertlistAttributes;
    private int DisplayRows;
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
    private HorizontalScrollView horizontalScrollView;
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
    private boolean isLoadingDone;
    private int isPlanned;
    private int isSelfassign;
    private int ismba;
    private List<AttributeModel> listAttributes;
    private Button locationBtn;
    private LocationInfo locationInfo;
    private LinearLayout locationLayout;
    private LocationService locationService;
    private View locationView;
    private String[][] lookupdata;
    private String[][] lookupdata_lineIds;
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
    private List<String> pestCotrolList;
    private Queries queries;
    private View rootView;
    private int screenHight;
    private int screenWidth;
    private int segmentId;
    private String selectedCropID;
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
    private Map<Integer, EditText> attributeMap = new LinkedHashMap();
    private Map<Integer, Map<Integer, EditText>> setsData = new LinkedHashMap();
    private int ATTRIBUTEID_TAG = 1;
    private int SETID_TAG = 2;
    private int ENTRYID_TAG = 3;
    View.OnClickListener operationListener = new View.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.AttributesTableFarmatFragment.6
        /* JADX WARN: Removed duplicated region for block: B:41:0x0161 A[Catch: Exception -> 0x038a, TryCatch #0 {Exception -> 0x038a, blocks: (B:9:0x0055, B:11:0x005b, B:13:0x0061, B:15:0x0067, B:30:0x006c, B:33:0x0077, B:35:0x009f, B:37:0x00b9, B:38:0x0111, B:39:0x015b, B:41:0x0161, B:43:0x0189, B:45:0x01a3, B:46:0x01fb, B:47:0x0245, B:49:0x024b, B:51:0x0273, B:53:0x028d, B:54:0x02e5, B:55:0x032f, B:57:0x0335, B:59:0x033b, B:61:0x0341, B:62:0x0345, B:65:0x0350, B:66:0x035f, B:68:0x0365, B:69:0x0374, B:71:0x037a), top: B:8:0x0055 }] */
        /* JADX WARN: Removed duplicated region for block: B:49:0x024b A[Catch: Exception -> 0x038a, TryCatch #0 {Exception -> 0x038a, blocks: (B:9:0x0055, B:11:0x005b, B:13:0x0061, B:15:0x0067, B:30:0x006c, B:33:0x0077, B:35:0x009f, B:37:0x00b9, B:38:0x0111, B:39:0x015b, B:41:0x0161, B:43:0x0189, B:45:0x01a3, B:46:0x01fb, B:47:0x0245, B:49:0x024b, B:51:0x0273, B:53:0x028d, B:54:0x02e5, B:55:0x032f, B:57:0x0335, B:59:0x033b, B:61:0x0341, B:62:0x0345, B:65:0x0350, B:66:0x035f, B:68:0x0365, B:69:0x0374, B:71:0x037a), top: B:8:0x0055 }] */
        /* JADX WARN: Removed duplicated region for block: B:57:0x0335 A[Catch: Exception -> 0x038a, TryCatch #0 {Exception -> 0x038a, blocks: (B:9:0x0055, B:11:0x005b, B:13:0x0061, B:15:0x0067, B:30:0x006c, B:33:0x0077, B:35:0x009f, B:37:0x00b9, B:38:0x0111, B:39:0x015b, B:41:0x0161, B:43:0x0189, B:45:0x01a3, B:46:0x01fb, B:47:0x0245, B:49:0x024b, B:51:0x0273, B:53:0x028d, B:54:0x02e5, B:55:0x032f, B:57:0x0335, B:59:0x033b, B:61:0x0341, B:62:0x0345, B:65:0x0350, B:66:0x035f, B:68:0x0365, B:69:0x0374, B:71:0x037a), top: B:8:0x0055 }] */
        /* JADX WARN: Removed duplicated region for block: B:65:0x0350 A[Catch: Exception -> 0x038a, TRY_ENTER, TryCatch #0 {Exception -> 0x038a, blocks: (B:9:0x0055, B:11:0x005b, B:13:0x0061, B:15:0x0067, B:30:0x006c, B:33:0x0077, B:35:0x009f, B:37:0x00b9, B:38:0x0111, B:39:0x015b, B:41:0x0161, B:43:0x0189, B:45:0x01a3, B:46:0x01fb, B:47:0x0245, B:49:0x024b, B:51:0x0273, B:53:0x028d, B:54:0x02e5, B:55:0x032f, B:57:0x0335, B:59:0x033b, B:61:0x0341, B:62:0x0345, B:65:0x0350, B:66:0x035f, B:68:0x0365, B:69:0x0374, B:71:0x037a), top: B:8:0x0055 }] */
        /* JADX WARN: Removed duplicated region for block: B:68:0x0365 A[Catch: Exception -> 0x038a, TryCatch #0 {Exception -> 0x038a, blocks: (B:9:0x0055, B:11:0x005b, B:13:0x0061, B:15:0x0067, B:30:0x006c, B:33:0x0077, B:35:0x009f, B:37:0x00b9, B:38:0x0111, B:39:0x015b, B:41:0x0161, B:43:0x0189, B:45:0x01a3, B:46:0x01fb, B:47:0x0245, B:49:0x024b, B:51:0x0273, B:53:0x028d, B:54:0x02e5, B:55:0x032f, B:57:0x0335, B:59:0x033b, B:61:0x0341, B:62:0x0345, B:65:0x0350, B:66:0x035f, B:68:0x0365, B:69:0x0374, B:71:0x037a), top: B:8:0x0055 }] */
        /* JADX WARN: Removed duplicated region for block: B:71:0x037a A[Catch: Exception -> 0x038a, TRY_LEAVE, TryCatch #0 {Exception -> 0x038a, blocks: (B:9:0x0055, B:11:0x005b, B:13:0x0061, B:15:0x0067, B:30:0x006c, B:33:0x0077, B:35:0x009f, B:37:0x00b9, B:38:0x0111, B:39:0x015b, B:41:0x0161, B:43:0x0189, B:45:0x01a3, B:46:0x01fb, B:47:0x0245, B:49:0x024b, B:51:0x0273, B:53:0x028d, B:54:0x02e5, B:55:0x032f, B:57:0x0335, B:59:0x033b, B:61:0x0341, B:62:0x0345, B:65:0x0350, B:66:0x035f, B:68:0x0365, B:69:0x0374, B:71:0x037a), top: B:8:0x0055 }] */
        @Override // android.view.View.OnClickListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onClick(android.view.View r22) {
            /*
                Method dump skipped, instructions count: 1329
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.fragments.AttributesTableFarmatFragment.AnonymousClass6.onClick(android.view.View):void");
        }
    };
    View.OnClickListener operationListenerMultiSelect = new View.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.AttributesTableFarmatFragment.7
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
            throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.fragments.AttributesTableFarmatFragment.AnonymousClass7.onClick(android.view.View):void");
        }
    };
    CompressListener listener = new CompressListener() { // from class: com.conceptglobal.pmc.fragments.AttributesTableFarmatFragment.8
        @Override // com.conceptglobal.pmc.utils.CompressListener
        public void onComprssCompleteListener(String str) {
            UtilDeclarations.loadDiskThumbnail(AttributesTableFarmatFragment.this.context, AttributesTableFarmatFragment.this.imageView, new File(str));
        }
    };
    View.OnClickListener datesListener = new View.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.AttributesTableFarmatFragment.10
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AttributesTableFarmatFragment.this.dateSelectedEdit = (EditText) view;
            AttributesTableFarmatFragment.this.getActivity().showDialog(1);
            new DatePickerDialog(AttributesTableFarmatFragment.this.context, AttributesTableFarmatFragment.this.mDateSetListener, AttributesTableFarmatFragment.this.mYear, AttributesTableFarmatFragment.this.mMonth, AttributesTableFarmatFragment.this.mDay).show();
        }
    };
    private DatePickerDialog.OnDateSetListener mDateSetListener = new DatePickerDialog.OnDateSetListener() { // from class: com.conceptglobal.pmc.fragments.AttributesTableFarmatFragment.12
        @Override // android.app.DatePickerDialog.OnDateSetListener
        public void onDateSet(DatePicker datePicker, int i, int i2, int i3) {
            AttributesTableFarmatFragment.this.mYear = i;
            AttributesTableFarmatFragment.this.mMonth = i2;
            AttributesTableFarmatFragment.this.mDay = i3;
            try {
                if (new SimpleDateFormat("yyyy-MM-dd").parse(i + "-" + (i2 + 1) + "-" + i3).compareTo(new Date()) < 0) {
                    AttributesTableFarmatFragment.this.updateDisplay();
                } else {
                    Toast.makeText(AttributesTableFarmatFragment.this.context, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectProperDate()), 1).show();
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
            this.rootView = layoutInflater.inflate(R.layout.child_attribute_table_layout, viewGroup, false);
            getDataAndUpdateUi();
        }
        return this.rootView;
    }

    public void getDataAndUpdateUi() {
        init();
        getData(getArguments());
        setListeners();
        this.isLoadingDone = true;
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
        this.horizontalScrollView = (HorizontalScrollView) this.rootView.findViewById(R.id.scrollLayout);
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
        this.pestCotrolList = new ArrayList();
    }

    @Override // androidx.fragment.app.Fragment
    public void onOptionsMenuClosed(Menu menu) {
        super.onOptionsMenuClosed(menu);
    }

    private void getData(Bundle bundle) {
        try {
            this.ismba = bundle.getInt(ConstantDeclarations.getInstance().getKeyIsMba(), 0);
            this.farmerId = bundle.getString(ConstantDeclarations.getInstance().getKEYFARMERID());
            this.selectedCropID = bundle.getString("CropId");
            this.DisplayRows = bundle.getInt("DisplayRows", 0);
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
            this.lookupdata = GetDataFromDB.getInstance().getlotdata(bundle.getString("FirstDropDownDataQry"));
            this.lookupdata_lineIds = GetDataFromDB.getInstance().getlotdata(bundle.getString("FirstDropDownDataQry").replaceFirst("BM.Brandid", "LineId"));
            this.listAttributes = this.childValuelistAttributes;
            Calendar calendar = Calendar.getInstance();
            this.mDay = calendar.get(5);
            this.mMonth = calendar.get(2);
            this.mYear = calendar.get(1);
        } catch (Exception e) {
            PLog.e("ChildAttributeFragment", e);
        }
    }

    private void setListeners() {
        if (this.lookupdata != null) {
            int i = 0;
            if (this.DisplayRows > 0) {
                while (i < this.DisplayRows) {
                    addDynamicLayoutVillageDetails(this.parentAttributeId, this.addvillageLayout, null, true);
                    i++;
                }
            } else {
                while (i < this.lookupdata.length) {
                    addDynamicLayoutVillageDetails(this.parentAttributeId, this.addvillageLayout, null, true);
                    i++;
                }
            }
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

    /* JADX WARN: Removed duplicated region for block: B:30:0x02e4 A[Catch: Exception -> 0x0492, TRY_LEAVE, TryCatch #4 {Exception -> 0x0492, blocks: (B:9:0x005f, B:12:0x0073, B:30:0x02e4, B:33:0x02f5, B:35:0x02fb, B:36:0x030a, B:37:0x0307, B:38:0x0349, B:40:0x0355, B:42:0x035b, B:44:0x0370, B:46:0x0374, B:47:0x03c6, B:48:0x0408, B:49:0x0449, B:14:0x00b6, B:16:0x00bc, B:20:0x0109, B:22:0x0143, B:24:0x014d, B:28:0x01c0, B:60:0x0157, B:62:0x0161, B:64:0x0173, B:65:0x017b, B:83:0x01c5, B:85:0x01d7, B:87:0x01dd, B:91:0x0226, B:93:0x0260, B:95:0x026a, B:99:0x02dd, B:100:0x0274, B:102:0x027e, B:104:0x0290, B:105:0x0298), top: B:8:0x005f }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x049e A[Catch: Exception -> 0x04ac, TRY_LEAVE, TryCatch #2 {Exception -> 0x04ac, blocks: (B:51:0x0498, B:53:0x049e), top: B:50:0x0498 }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x04ad A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean isDataValid() {
        /*
            Method dump skipped, instructions count: 1204
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.fragments.AttributesTableFarmatFragment.isDataValid():boolean");
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

    /* JADX WARN: Removed duplicated region for block: B:25:0x0181  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x01a9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void addDynamicLayoutVillageDetails(int r18, android.widget.LinearLayout r19, java.util.Map<java.lang.Integer, java.lang.String> r20, boolean r21) {
        /*
            Method dump skipped, instructions count: 492
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.fragments.AttributesTableFarmatFragment.addDynamicLayoutVillageDetails(int, android.widget.LinearLayout, java.util.Map, boolean):void");
    }

    private void refreshSetViews(int i) {
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

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0c52  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0db9  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0d23  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0d13  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x0cae  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0db3  */
    /* JADX WARN: Removed duplicated region for block: B:209:0x044e A[Catch: Exception -> 0x04e9, TryCatch #5 {Exception -> 0x04e9, blocks: (B:199:0x03b5, B:201:0x03bb, B:206:0x043a, B:207:0x0446, B:209:0x044e, B:211:0x045c, B:213:0x0480, B:214:0x048a, B:216:0x04aa, B:219:0x04ad, B:221:0x04b3, B:223:0x04c1, B:226:0x03eb, B:231:0x0435, B:232:0x04d5, B:205:0x03cb, B:228:0x03f1), top: B:198:0x03b5, inners: #3, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0dc3  */
    /* JADX WARN: Removed duplicated region for block: B:221:0x04b3 A[Catch: Exception -> 0x04e9, TryCatch #5 {Exception -> 0x04e9, blocks: (B:199:0x03b5, B:201:0x03bb, B:206:0x043a, B:207:0x0446, B:209:0x044e, B:211:0x045c, B:213:0x0480, B:214:0x048a, B:216:0x04aa, B:219:0x04ad, B:221:0x04b3, B:223:0x04c1, B:226:0x03eb, B:231:0x0435, B:232:0x04d5, B:205:0x03cb, B:228:0x03f1), top: B:198:0x03b5, inners: #3, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:223:0x04c1 A[Catch: Exception -> 0x04e9, TryCatch #5 {Exception -> 0x04e9, blocks: (B:199:0x03b5, B:201:0x03bb, B:206:0x043a, B:207:0x0446, B:209:0x044e, B:211:0x045c, B:213:0x0480, B:214:0x048a, B:216:0x04aa, B:219:0x04ad, B:221:0x04b3, B:223:0x04c1, B:226:0x03eb, B:231:0x0435, B:232:0x04d5, B:205:0x03cb, B:228:0x03f1), top: B:198:0x03b5, inners: #3, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0e3f  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0e90  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0ebf  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0f8a  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0f9e  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0ed3  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0e5f  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0dcb  */
    /* JADX WARN: Type inference failed for: r38v0, types: [com.conceptglobal.pmc.fragments.AttributesTableFarmatFragment] */
    /* JADX WARN: Type inference failed for: r44v0, types: [android.widget.LinearLayout] */
    /* JADX WARN: Type inference failed for: r46v0, types: [java.util.Map, java.util.Map<java.lang.Integer, android.widget.EditText>] */
    /* JADX WARN: Type inference failed for: r6v13, types: [long] */
    /* JADX WARN: Type inference failed for: r6v14 */
    /* JADX WARN: Type inference failed for: r6v15 */
    /* JADX WARN: Type inference failed for: r6v16 */
    /* JADX WARN: Type inference failed for: r6v17 */
    /* JADX WARN: Type inference failed for: r6v18 */
    /* JADX WARN: Type inference failed for: r6v19 */
    /* JADX WARN: Type inference failed for: r6v21, types: [android.widget.EditText] */
    /* JADX WARN: Type inference failed for: r6v23 */
    /* JADX WARN: Type inference failed for: r6v51 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void addOperationsDynamicLayout(java.lang.String r39, java.lang.String r40, int r41, java.lang.String r42, com.conceptglobal.pmc.model.AttributeModel r43, android.widget.LinearLayout r44, boolean r45, java.util.Map<java.lang.Integer, android.widget.EditText> r46, int r47, int r48, int r49) {
        /*
            Method dump skipped, instructions count: 4227
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.fragments.AttributesTableFarmatFragment.addOperationsDynamicLayout(java.lang.String, java.lang.String, int, java.lang.String, com.conceptglobal.pmc.model.AttributeModel, android.widget.LinearLayout, boolean, java.util.Map, int, int, int):void");
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
            new FetchLocation(this.mActivity, true, new OnLocationFoundListener() { // from class: com.conceptglobal.pmc.fragments.AttributesTableFarmatFragment.9
                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onLocationFound(Location location) {
                }

                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onTimerTimeOut() {
                }

                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onLocationFound(LocationInfo locationInfo) {
                    AttributesTableFarmatFragment.this.onLocFound(locationInfo);
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

    /* JADX INFO: Access modifiers changed from: private */
    public void showAlertDialog(String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.context);
        builder.setMessage(str).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.AttributesTableFarmatFragment.11
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
                if (editable.toString().length() > 0 && TextUtils.isEmpty(AttributesTableViewActivity.starttimeMobile) && AttributesTableFarmatFragment.this.isLoadingDone) {
                    AttributesTableFarmatFragment.this.showAlertDialog(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_StartTimerText()));
                    this.editText.setText("");
                    return;
                }
            } catch (Exception unused) {
            }
            try {
                Integer num = (Integer) this.editText.getTag(R.string.SETID_SET);
                num.intValue();
                if (this.obj.getControlType().equalsIgnoreCase("Dropdown")) {
                    List<Integer> filterAttributesByFilterAttribute = AttributesTableFarmatFragment.this.filterAttributesByFilterAttribute(this.obj.getAttributeId());
                    if (filterAttributesByFilterAttribute.size() > 0) {
                        for (Integer num2 : filterAttributesByFilterAttribute) {
                            ((EditText) ((Map) AttributesTableFarmatFragment.this.setsData.get(num)).get(num2)).setText("");
                            ((EditText) ((Map) AttributesTableFarmatFragment.this.setsData.get(num)).get(num2)).setTag(R.string.ENTRYID_SET, "");
                        }
                        return;
                    }
                    return;
                }
                if (this.obj.getControlType().equalsIgnoreCase("Multiselect Dropdown")) {
                    List<Integer> filterAttributesByFilterAttribute2 = AttributesTableFarmatFragment.this.filterAttributesByFilterAttribute(this.obj.getAttributeId());
                    if (filterAttributesByFilterAttribute2.size() > 0) {
                        for (Integer num3 : filterAttributesByFilterAttribute2) {
                            ((EditText) ((Map) AttributesTableFarmatFragment.this.setsData.get(num)).get(num3)).setText("");
                            ((EditText) ((Map) AttributesTableFarmatFragment.this.setsData.get(num)).get(num3)).setTag(R.string.ENTRYID_SET, "");
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
                AttributesTableFarmatFragment.this.findCurrentLocation();
            }
        }
    }
}

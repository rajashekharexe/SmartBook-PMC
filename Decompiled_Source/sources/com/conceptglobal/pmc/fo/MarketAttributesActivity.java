package com.conceptglobal.pmc.fo;

import android.app.AlertDialog;
import android.app.DatePickerDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.BitmapFactory;
import android.location.Location;
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
import android.widget.TextView;
import android.widget.Toast;
import androidx.fragment.app.Fragment;
import com.conceptglobal.pmc.BaseActivity;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.common.CustomCheckBoxDialog;
import com.conceptglobal.pmc.common.Items;
import com.conceptglobal.pmc.common.ListPopupOne;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.database.InsertDataIntoDB;
import com.conceptglobal.pmc.interfaces.AttributeEventListener;
import com.conceptglobal.pmc.interfaces.CropChanger;
import com.conceptglobal.pmc.interfaces.OnCompleteListener;
import com.conceptglobal.pmc.interfaces.OnLocationFoundListener;
import com.conceptglobal.pmc.interfaces.ValidatorInterface;
import com.conceptglobal.pmc.locationprovider.FetchLocation;
import com.conceptglobal.pmc.model.AssignmentActivityDetailsModel;
import com.conceptglobal.pmc.model.AttributeModel;
import com.conceptglobal.pmc.model.BrandsModel;
import com.conceptglobal.pmc.model.FieldData;
import com.conceptglobal.pmc.model.ImageDetails;
import com.conceptglobal.pmc.model.LocationInfo;
import com.conceptglobal.pmc.model.LocationInfoModel;
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
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public class MarketAttributesActivity extends BaseActivity implements View.OnClickListener, CropChanger, ValidatorInterface, AttributeEventListener {
    private static final int DATEDIALOGID = 0;
    private static final int GET_CAM_IMG_FIRST = 101;
    private static final int ISDONE = 1;
    private static final String TAG = "MarketAttributes";
    public static Context ctxt;
    private static List<AttributeModel> listAttributes;
    private static List<AttributeModel> listAttributes_child;
    private static List<EditText> mEntryArr;
    private static List<EditText> mEntryArrIds;
    private List<AttributeModel> AlertlistAttributes;
    private int activityAssignmentId;
    private int activityId;
    private String activityName;
    private LinearLayout addvillageLayout;
    private AssignmentActivityDetailsModel assignmentDetails;
    private int assignmentID;
    private HashMap<Integer, AttributeModel> attributeHashmap;
    private List<String> brands;
    private TextView btnClose;
    private TextView btnDiscard;
    private TextView btnDone;
    private Button btnfinish;
    private TextView btnnotDone;
    private Context context;
    private CropChanger cropChageListener;
    private String cropId;
    protected Dialog d_remarks;
    private int demoActivity;
    private String dos;
    private int firstChild;
    private GetDataFromDB getDataFromDB;
    private ImageDetails imageDetails;
    private File imageFile;
    private ImageView imageView;
    private int isPlanned;
    private int isSelfassign;
    private int ismba;
    private Button locationBtn;
    private LocationInfoModel locationInfo;
    private LinearLayout locationLayout;
    private LocationService locationService;
    private View locationView;
    private LinearLayout mAddDynamicLinear;
    private int mDay;
    private EditText mEntryEdt;
    private List<ImageView> mImageviews;
    LocationUtils mLocationUtils;
    private int mMonth;
    private int mYear;
    private List<TextView> mattributesnamesArr;
    private EditText noofvillagesEdt;
    private AttributeModel objAttribute;
    private String pairID;
    private int parentAttributeId;
    private Queries queries;
    private String[] remarkNames;
    private String[] remarkids;
    private int segmentId;
    private TextView textActivityName;
    private long transId;
    private int layoutId = 0;
    private List<AttributeModel> childValuelistAttributes = new ArrayList();
    private int mForOperations = -1;
    private int mForDates = -1;
    private int datePos = 0;
    private String mFiledStr = "";
    private String farmerId = "0";
    private int locationFlag = 0;
    private Map<Integer, List<String>> villageDetails = new HashMap();
    private EditText mDatetext = null;
    private int countVillage = 0;
    public List<BrandsModel> brandsList = null;
    public List<FieldData> dataList = null;
    private int setCount = 0;
    View.OnClickListener operationListener = new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.MarketAttributesActivity.8
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (view instanceof EditText) {
                ((EditText) view).setError(null);
            }
            ((Integer) view.getTag()).intValue();
            int id = view.getId();
            ListPopupOne listPopupOne = new ListPopupOne(MarketAttributesActivity.this, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectText()) + " " + ((AttributeModel) MarketAttributesActivity.listAttributes.get(id)).getAttributeName(), Queries.getInstance().gettingYesorNoDropdownValuesDynamic(((AttributeModel) MarketAttributesActivity.listAttributes.get(id)).getAttributeValueField(), ((AttributeModel) MarketAttributesActivity.listAttributes.get(id)).getAttributeDisplayField(), ((AttributeModel) MarketAttributesActivity.listAttributes.get(id)).getAttributeLookupKey(), ((AttributeModel) MarketAttributesActivity.listAttributes.get(id)).getAttributeSource(), MarketAttributesActivity.this.farmerId, MarketAttributesActivity.this.activityId, MarketAttributesActivity.this.activityAssignmentId, ((AttributeModel) MarketAttributesActivity.listAttributes.get(id)).getAttributeId(), ""), view, (TextView) MarketAttributesActivity.mEntryArrIds.get(view.getId()));
            listPopupOne.getWindow().getAttributes().windowAnimations = R.style.PauseDialogAnimation;
            listPopupOne.show();
            listPopupOne.getWindow().setSoftInputMode(3);
        }
    };
    View.OnClickListener operationListenerMultiSelect = new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.MarketAttributesActivity.9
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (view instanceof EditText) {
                ((EditText) view).setError(null);
            }
            int intValue = ((Integer) view.getTag()).intValue();
            int id = view.getId();
            MarketAttributesActivity.this.brandsList = new ArrayList();
            if (intValue == 1) {
                ListPopupOne listPopupOne = new ListPopupOne(MarketAttributesActivity.this, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectOneDropDownTitle()), Queries.getInstance().gettingDropdownValues(((AttributeModel) MarketAttributesActivity.listAttributes.get(id)).getAttributeId()), view, (TextView) MarketAttributesActivity.mEntryArrIds.get(view.getId()), MarketAttributesActivity.this.cropChageListener);
                listPopupOne.getWindow().getAttributes().windowAnimations = R.style.PauseDialogAnimation;
                listPopupOne.show();
                listPopupOne.getWindow().setSoftInputMode(3);
                try {
                    MarketAttributesActivity.this.brandsList = GetDataFromDB.getInstance().getFarmerAssociatedBrands(Queries.getInstance().gettingDropdownValues(((AttributeModel) MarketAttributesActivity.listAttributes.get(id)).getAttributeId()));
                } catch (Exception e) {
                    PLog.e(MarketAttributesActivity.TAG, e);
                    e.printStackTrace();
                }
                if (MarketAttributesActivity.this.brandsList == null || MarketAttributesActivity.this.brandsList.size() == 0) {
                    Toast.makeText(MarketAttributesActivity.this.context, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_noBrandsAvailableToast()), 0).show();
                    return;
                }
                MarketAttributesActivity marketAttributesActivity = MarketAttributesActivity.this;
                CustomCheckBoxDialog customCheckBoxDialog = new CustomCheckBoxDialog(marketAttributesActivity, marketAttributesActivity.brandsList, MarketAttributesActivity.this.ismba, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectText()) + " " + ((AttributeModel) MarketAttributesActivity.listAttributes.get(id)).getAttributeName(), view, (TextView) MarketAttributesActivity.mEntryArrIds.get(view.getId()), ((AttributeModel) MarketAttributesActivity.listAttributes.get(id)).getMaxLength(), MarketAttributesActivity.this.activityId, ((AttributeModel) MarketAttributesActivity.listAttributes.get(id)).getAttributeId());
                customCheckBoxDialog.getWindow().getAttributes().windowAnimations = R.style.PauseDialogAnimation;
                customCheckBoxDialog.show();
                customCheckBoxDialog.getWindow().setSoftInputMode(3);
                return;
            }
            if (intValue == 2) {
                try {
                    MarketAttributesActivity.this.brandsList = GetDataFromDB.getInstance().getFarmerAssociatedBrands(Queries.getInstance().getBrandsQry(MarketAttributesActivity.this.farmerId, String.valueOf(MarketAttributesActivity.this.activityId)));
                } catch (Exception e2) {
                    PLog.e(MarketAttributesActivity.TAG, e2);
                    e2.printStackTrace();
                }
                if (MarketAttributesActivity.this.brandsList == null || MarketAttributesActivity.this.brandsList.size() == 0) {
                    Toast.makeText(MarketAttributesActivity.this.context, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_noBrandsAvailableToast()), 0).show();
                    return;
                }
                MarketAttributesActivity marketAttributesActivity2 = MarketAttributesActivity.this;
                CustomCheckBoxDialog customCheckBoxDialog2 = new CustomCheckBoxDialog(marketAttributesActivity2, marketAttributesActivity2.brandsList, MarketAttributesActivity.this.ismba, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectText()) + " " + ((AttributeModel) MarketAttributesActivity.listAttributes.get(id)).getAttributeName(), view, (TextView) MarketAttributesActivity.mEntryArrIds.get(view.getId()), ((AttributeModel) MarketAttributesActivity.listAttributes.get(id)).getMaxLength(), MarketAttributesActivity.this.activityId, ((AttributeModel) MarketAttributesActivity.listAttributes.get(id)).getAttributeId());
                customCheckBoxDialog2.getWindow().getAttributes().windowAnimations = R.style.PauseDialogAnimation;
                customCheckBoxDialog2.show();
                customCheckBoxDialog2.getWindow().setSoftInputMode(3);
                return;
            }
            try {
                MarketAttributesActivity.this.brandsList = GetDataFromDB.getInstance().getFarmerAssociatedBrands(Queries.getInstance().gettingYesorNoDropdownValuesDynamic(((AttributeModel) MarketAttributesActivity.listAttributes.get(id)).getAttributeValueField(), ((AttributeModel) MarketAttributesActivity.listAttributes.get(id)).getAttributeDisplayField(), ((AttributeModel) MarketAttributesActivity.listAttributes.get(id)).getAttributeLookupKey(), ((AttributeModel) MarketAttributesActivity.listAttributes.get(id)).getAttributeSource(), MarketAttributesActivity.this.farmerId, MarketAttributesActivity.this.activityId, MarketAttributesActivity.this.activityAssignmentId, ((AttributeModel) MarketAttributesActivity.listAttributes.get(id)).getAttributeId(), ""));
            } catch (Exception e3) {
                PLog.e(MarketAttributesActivity.TAG, e3);
                e3.printStackTrace();
            }
            if (MarketAttributesActivity.this.brandsList == null || MarketAttributesActivity.this.brandsList.size() == 0) {
                Toast.makeText(MarketAttributesActivity.this.context, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_noDataFound()), 0).show();
                return;
            }
            MarketAttributesActivity marketAttributesActivity3 = MarketAttributesActivity.this;
            CustomCheckBoxDialog customCheckBoxDialog3 = new CustomCheckBoxDialog(marketAttributesActivity3, marketAttributesActivity3.brandsList, MarketAttributesActivity.this.ismba, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectText()) + " " + ((AttributeModel) MarketAttributesActivity.listAttributes.get(id)).getAttributeName(), view, (TextView) MarketAttributesActivity.mEntryArrIds.get(view.getId()), ((AttributeModel) MarketAttributesActivity.listAttributes.get(id)).getMaxLength(), MarketAttributesActivity.this.activityId, ((AttributeModel) MarketAttributesActivity.listAttributes.get(id)).getAttributeId());
            customCheckBoxDialog3.getWindow().getAttributes().windowAnimations = R.style.PauseDialogAnimation;
            customCheckBoxDialog3.show();
            customCheckBoxDialog3.getWindow().setSoftInputMode(3);
        }
    };
    View.OnClickListener datesListener = new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.MarketAttributesActivity.10
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MarketAttributesActivity.this.datePos = view.getId();
            MarketAttributesActivity.this.showDialog(0);
        }
    };
    private DatePickerDialog.OnDateSetListener mDateSetListener = new DatePickerDialog.OnDateSetListener() { // from class: com.conceptglobal.pmc.fo.MarketAttributesActivity.12
        @Override // android.app.DatePickerDialog.OnDateSetListener
        public void onDateSet(DatePicker datePicker, int i, int i2, int i3) {
            MarketAttributesActivity.this.mYear = i;
            MarketAttributesActivity.this.mMonth = i2;
            MarketAttributesActivity.this.mDay = i3;
            try {
                if (new SimpleDateFormat("yyyy-MM-dd").parse(i + "-" + (i2 + 1) + "-" + i3).compareTo(new Date()) < 0) {
                    MarketAttributesActivity.this.updateDisplay();
                } else {
                    Toast.makeText(MarketAttributesActivity.this.getApplicationContext(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectProperDate()), 1).show();
                }
            } catch (Exception e) {
                PLog.e(MarketAttributesActivity.TAG, e);
            }
        }
    };
    CompressListener listener = new CompressListener() { // from class: com.conceptglobal.pmc.fo.MarketAttributesActivity.13
        @Override // com.conceptglobal.pmc.utils.CompressListener
        public void onComprssCompleteListener(String str) {
            UtilDeclarations.loadDiskThumbnail(MarketAttributesActivity.this.context, MarketAttributesActivity.this.imageView, new File(str));
        }
    };

    private void showAddVillageDetailsDialog(EditText editText, String str) {
    }

    @Override // com.conceptglobal.pmc.BaseActivity
    protected void displayNotification(String str, String str2) {
    }

    @Override // com.conceptglobal.pmc.interfaces.AttributeEventListener
    public void getFragmentsList(List<Fragment> list) {
    }

    static /* synthetic */ int access$810(MarketAttributesActivity marketAttributesActivity) {
        int i = marketAttributesActivity.mForOperations;
        marketAttributesActivity.mForOperations = i - 1;
        return i;
    }

    @Override // com.conceptglobal.pmc.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        requestWindowFeature(1);
        super.onCreate(bundle);
        this.context = this;
        ConstantsPMC.getInstance().getLanguageConfigurations(this.context);
        setContentView(R.layout.attribute_info_layout);
        this.mLocationUtils = new LocationUtils();
        init();
        getData();
        setData();
    }

    private void init() {
        this.cropChageListener = this;
        ctxt = this;
        this.mAddDynamicLinear = (LinearLayout) findViewById(R.id.ll_infalter);
        this.textActivityName = (TextView) findViewById(R.id.activityNameText);
        this.queries = Queries.getInstance();
        this.getDataFromDB = GetDataFromDB.getInstance();
        this.attributeHashmap = new HashMap<>();
        LinearLayout linearLayout = new LinearLayout(this);
        this.addvillageLayout = linearLayout;
        linearLayout.setOrientation(1);
        this.btnfinish = (Button) findViewById(R.id.BtnSave);
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
    /* JADX WARN: Removed duplicated region for block: B:119:0x0c35  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x0bcc  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0b96  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0c1c  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0ced  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0d75  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0d90  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0e67  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0e74  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0e7d  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0da8  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0cf7  */
    /* JADX WARN: Type inference failed for: r0v280, types: [android.widget.LinearLayout] */
    /* JADX WARN: Type inference failed for: r0v314, types: [android.widget.LinearLayout] */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v17 */
    /* JADX WARN: Type inference failed for: r11v18 */
    /* JADX WARN: Type inference failed for: r11v21 */
    /* JADX WARN: Type inference failed for: r11v22 */
    /* JADX WARN: Type inference failed for: r11v23 */
    /* JADX WARN: Type inference failed for: r11v24 */
    /* JADX WARN: Type inference failed for: r11v38 */
    /* JADX WARN: Type inference failed for: r13v18 */
    /* JADX WARN: Type inference failed for: r13v19 */
    /* JADX WARN: Type inference failed for: r13v20 */
    /* JADX WARN: Type inference failed for: r13v25, types: [android.view.View, android.widget.LinearLayout] */
    /* JADX WARN: Type inference failed for: r13v39 */
    /* JADX WARN: Type inference failed for: r46v0, types: [android.widget.LinearLayout] */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v15 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v8, types: [android.view.View, android.widget.EditText, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v10 */
    /* JADX WARN: Type inference failed for: r9v13 */
    /* JADX WARN: Type inference failed for: r9v23 */
    /* JADX WARN: Type inference failed for: r9v24, types: [android.view.View, com.conceptglobal.imaterialdesign.widget.CheckBox] */
    /* JADX WARN: Type inference failed for: r9v26 */
    /* JADX WARN: Type inference failed for: r9v28 */
    /* JADX WARN: Type inference failed for: r9v29 */
    /* JADX WARN: Type inference failed for: r9v30 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void addOperationsDynamicLayout(java.lang.String r41, java.lang.String r42, int r43, java.lang.String r44, com.conceptglobal.pmc.model.AttributeModel r45, android.widget.LinearLayout r46, boolean r47) {
        /*
            Method dump skipped, instructions count: 3885
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.fo.MarketAttributesActivity.addOperationsDynamicLayout(java.lang.String, java.lang.String, int, java.lang.String, com.conceptglobal.pmc.model.AttributeModel, android.widget.LinearLayout, boolean):void");
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
                        if (attributeModel.getMinValue() != 0) {
                            if (Integer.parseInt(mEntryArr.get(i).getText().toString().trim().length() > 0 ? mEntryArr.get(i).getText().toString() : "0") < attributeModel.getMinValue()) {
                                mEntryArr.get(i).setError(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_minimumValueFor()) + " " + attributeModel.getAttributeName() + " - " + attributeModel.getMinValue());
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
                    if (attributeModel.getMinValue() != 0) {
                        if (Integer.parseInt(mEntryArr.get(i).getText().toString().trim().length() > 0 ? mEntryArr.get(i).getText().toString() : "0") < attributeModel.getMinValue()) {
                            mEntryArr.get(i).setError(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_minimumValueFor()) + " " + attributeModel.getAttributeName() + " - " + attributeModel.getMinValue());
                        }
                    }
                    if (z2) {
                        mEntryArr.get(i).setError(null);
                    }
                }
            } catch (Exception e) {
                PLog.e(TAG, e);
            }
        }
    }

    @Override // com.conceptglobal.pmc.interfaces.AttributeEventListener
    public void GetData(List<AttributeModel> list, List<EditText> list2, List<EditText> list3) {
        resetListdata();
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
                if (this.obj.getIsKeyAttribute() != 1) {
                    if (MarketAttributesActivity.this.getDataFromDB.getChildAttributeCountValue(MarketAttributesActivity.this.queries.getChildAttributeCount(this.obj.getAttributeId(), MarketAttributesActivity.this.activityId)) != 0) {
                        MarketAttributesActivity.this.resetListdata();
                        this.obj.setAttributeValue(editable.toString());
                        MarketAttributesActivity.this.mAddDynamicLinear.addView(MarketAttributesActivity.this.addvillageLayout);
                        MarketAttributesActivity.this.parentAttributeId = this.obj.getAttributeId();
                        MarketAttributesActivity marketAttributesActivity = MarketAttributesActivity.this;
                        marketAttributesActivity.pairID = String.valueOf(marketAttributesActivity.getDataFromDB.getDropdownDisplayField(this.obj));
                        MarketAttributesActivity.this.setListeners();
                        return;
                    }
                    return;
                }
                this.obj.setAttributeValue(editable.toString());
                if (this.obj.getAttributeValue().equalsIgnoreCase("0") || this.obj.getAttributeValue().equalsIgnoreCase("")) {
                    return;
                }
                if (MarketAttributesActivity.this.getDataFromDB.getKeyAttributeId(MarketAttributesActivity.this.activityId, MarketAttributesActivity.this.getDataFromDB.getDropdownDisplayField(this.obj), this.obj.getAttributeId()) != 0) {
                    try {
                        ArrayList arrayList = new ArrayList();
                        List<AttributeModel> pMCActivityAttributes = GetDataFromDB.getInstance().getPMCActivityAttributes(Queries.getInstance().getPMCActivityKeyAttributes(MarketAttributesActivity.this.activityId, MarketAttributesActivity.this.getDataFromDB.getDropdownDisplayField(this.obj), this.obj.getAttributeId()));
                        List<AttributeModel> pMCActivityAttributes2 = GetDataFromDB.getInstance().getPMCActivityAttributes(Queries.getInstance().getPMCActivityKeyAttributes_All(MarketAttributesActivity.this.activityId, MarketAttributesActivity.this.getDataFromDB.getDropdownDisplayField(this.obj), this.obj.getAttributeId()));
                        Iterator it = MarketAttributesActivity.listAttributes.iterator();
                        while (it.hasNext()) {
                            AttributeModel performFiltering = MarketAttributesActivity.this.performFiltering(pMCActivityAttributes2, "", (AttributeModel) it.next());
                            if (performFiltering != null) {
                                arrayList.add(performFiltering);
                            }
                        }
                        if (arrayList.size() > 0) {
                            Iterator it2 = arrayList.iterator();
                            while (it2.hasNext()) {
                                int findModelPosition = MarketAttributesActivity.this.findModelPosition(MarketAttributesActivity.listAttributes, (AttributeModel) it2.next());
                                MarketAttributesActivity.listAttributes.remove(findModelPosition);
                                MarketAttributesActivity.this.mAddDynamicLinear.removeViewAt(findModelPosition);
                                MarketAttributesActivity.access$810(MarketAttributesActivity.this);
                                MarketAttributesActivity.this.mattributesnamesArr.remove(findModelPosition);
                                MarketAttributesActivity.mEntryArrIds.remove(findModelPosition);
                                MarketAttributesActivity.mEntryArr.remove(findModelPosition);
                            }
                        }
                        for (AttributeModel attributeModel : pMCActivityAttributes) {
                            MarketAttributesActivity.listAttributes.add(attributeModel);
                            MarketAttributesActivity.this.addOperationsDynamicLayout(attributeModel.getAttributeName(), attributeModel.getControlType(), attributeModel.getAttributeId(), attributeModel.getAttributeValue(), attributeModel, MarketAttributesActivity.this.mAddDynamicLinear, false);
                        }
                        return;
                    } catch (Exception e) {
                        PLog.e(MarketAttributesActivity.TAG, e);
                        return;
                    }
                }
                try {
                    ArrayList arrayList2 = new ArrayList();
                    List<AttributeModel> pMCActivityAttributes3 = GetDataFromDB.getInstance().getPMCActivityAttributes(Queries.getInstance().getPMCActivityAttributeQueryUpdated(MarketAttributesActivity.this.farmerId, MarketAttributesActivity.this.activityId, MarketAttributesActivity.this.activityAssignmentId, MarketAttributesActivity.this.transId));
                    Iterator it3 = MarketAttributesActivity.listAttributes.iterator();
                    while (it3.hasNext()) {
                        AttributeModel performFiltering2 = MarketAttributesActivity.this.performFiltering(pMCActivityAttributes3, "", (AttributeModel) it3.next());
                        if (performFiltering2 != null) {
                            arrayList2.add(performFiltering2);
                        }
                    }
                    if (arrayList2.size() > 0) {
                        Iterator it4 = arrayList2.iterator();
                        while (it4.hasNext()) {
                            int findModelPosition2 = MarketAttributesActivity.this.findModelPosition(MarketAttributesActivity.listAttributes, (AttributeModel) it4.next());
                            MarketAttributesActivity.listAttributes.remove(findModelPosition2);
                            MarketAttributesActivity.this.mAddDynamicLinear.removeViewAt(findModelPosition2);
                            MarketAttributesActivity.access$810(MarketAttributesActivity.this);
                            MarketAttributesActivity.this.mattributesnamesArr.remove(findModelPosition2);
                            MarketAttributesActivity.mEntryArrIds.remove(findModelPosition2);
                            MarketAttributesActivity.mEntryArr.remove(findModelPosition2);
                        }
                        return;
                    }
                    return;
                } catch (Exception e2) {
                    PLog.e(MarketAttributesActivity.TAG, e2);
                    return;
                }
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

    public static List<AttributeModel> cloneList(List<AttributeModel> list) {
        ArrayList arrayList = new ArrayList(list.size());
        Iterator<AttributeModel> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new AttributeModel(it.next()));
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
        view.getId();
    }

    private void showDiscardAlert() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.context);
        builder.setMessage(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_discardSelfAssignConfirmDialog()));
        builder.setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.MarketAttributesActivity.4
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                MarketAttributesActivity.this.showRemarkSelectionAlert();
            }
        });
        builder.setNegativeButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_cancelDiscardButton()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.MarketAttributesActivity.5
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.cancel();
                MarketAttributesActivity.this.btnnotDone.setEnabled(true);
            }
        });
        builder.show();
    }

    private void setEditableFalse(EditText editText) {
        editText.setFocusable(false);
        editText.setClickable(false);
        editText.setEnabled(false);
        editText.setBackgroundDrawable(getResources().getDrawable(R.drawable.edt_disable));
    }

    @Override // com.conceptglobal.pmc.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
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
        resetListdata();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showRemarkSelectionAlert() {
        String[][] strArr;
        if (this.ismba == 0) {
            strArr = this.getDataFromDB.getlotdata("SELECT itemType,itemValue FROM ConfigurableLookup where itemKey='FBARemarks'");
        } else {
            strArr = this.getDataFromDB.getlotdata("SELECT itemType,itemValue FROM ConfigurableLookup where itemKey='VBARemarks'");
        }
        this.remarkNames = new String[strArr.length];
        this.remarkids = new String[strArr.length];
        for (int i = 0; i < strArr.length; i++) {
            this.remarkids[i] = strArr[i][0];
            this.remarkNames[i] = strArr[i][1];
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setTitle(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_remarksForNotDoneSelfAssign()));
        builder.setSingleChoiceItems(this.remarkNames, -1, new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.MarketAttributesActivity.6
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                MarketAttributesActivity.this.d_remarks.dismiss();
                try {
                    MarketAttributesActivity.this.demoActivity = GetDataFromDB.getInstance().getcount(Queries.getInstance().getActivityidInLookup(MarketAttributesActivity.this.activityId));
                    if (MarketAttributesActivity.this.demoActivity > 0) {
                        GetDataFromDB.getInstance().executeRawQueryInDB(Queries.getInstance().updateNotSelectedForActivities(MarketAttributesActivity.this.activityId, MarketAttributesActivity.this.farmerId, MarketAttributesActivity.this.assignmentID, MarketAttributesActivity.this.remarkNames[i2]));
                    } else {
                        GetDataFromDB.getInstance().executeRawQueryInDB(Queries.getInstance().updateNotDoneForActivities(MarketAttributesActivity.this.activityId, MarketAttributesActivity.this.farmerId, MarketAttributesActivity.this.assignmentID, MarketAttributesActivity.this.remarkNames[i2]));
                    }
                    MarketAttributesActivity.this.setResult(-1, new Intent());
                    try {
                        ((OnCompleteListener) MarketAttributesActivity.this.getParent()).onComplete("1", null);
                    } catch (Exception e) {
                        PLog.e(MarketAttributesActivity.TAG, e);
                        e.printStackTrace();
                    }
                } catch (Exception e2) {
                    PLog.e(MarketAttributesActivity.TAG, e2);
                }
                if (Items.selectedItemIds != null) {
                    Items.selectedItemIds.clear();
                    Items.selectedItems.clear();
                }
                Items.areItemsExist = false;
                if (MarketAttributesActivity.this.brandsList != null) {
                    MarketAttributesActivity.this.brandsList.clear();
                }
                MarketAttributesActivity.this.btnnotDone.setEnabled(true);
            }
        });
        AlertDialog create = builder.create();
        this.d_remarks = create;
        create.show();
        this.d_remarks.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.conceptglobal.pmc.fo.MarketAttributesActivity.7
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                MarketAttributesActivity.this.d_remarks.dismiss();
                MarketAttributesActivity.this.btnnotDone.setEnabled(true);
            }
        });
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

    private void showAlertDialog(String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.context);
        builder.setMessage(str).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.MarketAttributesActivity.11
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        });
        builder.show();
    }

    @Override // android.app.Activity
    protected Dialog onCreateDialog(int i) {
        if (i != 0) {
            return null;
        }
        return new DatePickerDialog(this, this.mDateSetListener, this.mYear, this.mMonth, this.mDay);
    }

    private void setDate(int i) {
        EditText editText = mEntryArr.get(i);
        try {
            new SimpleDateFormat("dd-MM-yyyy").parse(this.mFiledStr);
        } catch (ParseException e) {
            PLog.e(TAG, e);
        }
        editText.setText(this.mFiledStr);
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
            new FetchLocation(this, true, new OnLocationFoundListener() { // from class: com.conceptglobal.pmc.fo.MarketAttributesActivity.14
                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onLocationFound(Location location) {
                }

                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onTimerTimeOut() {
                }

                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onLocationFound(LocationInfo locationInfo) {
                    MarketAttributesActivity.this.onLocFound(locationInfo);
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
        AttributeModel attributeModel = listAttributes.get(0);
        listAttributes.clear();
        listAttributes.add(attributeModel);
        EditText editText = mEntryArrIds.get(0);
        mEntryArrIds.clear();
        mEntryArrIds.add(editText);
        EditText editText2 = mEntryArr.get(0);
        mEntryArr.clear();
        mEntryArr.add(editText2);
        ((AttributeEventListener) context).GetData(listAttributes, mEntryArr, mEntryArrIds);
        ((AttributeEventListener) ctxt).GetData(listAttributes, mEntryArr, mEntryArrIds);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setListeners() {
        try {
            this.firstChild = this.getDataFromDB.getMIIsFirstChild(Queries.getInstance().getqueryForMIFirstchild(this.parentAttributeId, this.activityId));
            this.dataList = this.getDataFromDB.getMIListdetails(this.getDataFromDB.getStringValue(Queries.getInstance().getqueryForMIDropdown(this.firstChild, this.activityId)) + " " + this.pairID + " and (sequenceId is not null and sequenceId != '')  order by sequenceId ASC");
            this.childValuelistAttributes = GetDataFromDB.getInstance().getPMCActivityAttributes(Queries.getInstance().getChildValuesAttributeQueryUpdate(this.farmerId, this.activityId, this.parentAttributeId, this.activityAssignmentId, this.transId));
            this.AlertlistAttributes = GetDataFromDB.getInstance().getPMCActivityAttributes(Queries.getInstance().getSelectedAttributeQueryUpdate(this.farmerId, this.activityId, this.parentAttributeId));
            listAttributes_child = this.childValuelistAttributes;
        } catch (Exception e) {
            PLog.e(TAG, e);
            e.printStackTrace();
        }
        Calendar calendar = Calendar.getInstance();
        this.mDay = calendar.get(5);
        this.mMonth = calendar.get(2);
        this.mYear = calendar.get(1);
        List<FieldData> list = this.dataList;
        if (list != null && list.size() > 0) {
            for (int i = 0; i < this.dataList.size(); i++) {
                addDynamicLayoutVillageDetails(this.parentAttributeId, this.addvillageLayout, this.dataList.get(i));
                this.btnfinish.setVisibility(0);
            }
        }
        this.mAddDynamicLinear.requestLayout();
        this.mAddDynamicLinear.invalidate();
        this.btnfinish.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.MarketAttributesActivity.15
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                LinearLayout linearLayout = MarketAttributesActivity.this.addvillageLayout;
                for (int i2 = 0; i2 < linearLayout.getChildCount(); i2++) {
                    View childAt = linearLayout.getChildAt(i2);
                    if (childAt instanceof LinearLayout) {
                        LinearLayout linearLayout2 = (LinearLayout) childAt;
                        for (int i3 = 0; i3 < linearLayout2.getChildCount(); i3++) {
                            View childAt2 = linearLayout2.getChildAt(i3);
                            if (childAt2 instanceof LinearLayout) {
                                LinearLayout linearLayout3 = (LinearLayout) childAt2;
                                int i4 = 0;
                                while (true) {
                                    if (i4 < linearLayout3.getChildCount()) {
                                        View childAt3 = linearLayout3.getChildAt(i4);
                                        if (childAt3 instanceof EditText) {
                                            EditText editText = (EditText) childAt3;
                                            if (MarketAttributesActivity.this.villageDetails.get(Integer.valueOf(Integer.parseInt(editText.getTag().toString()))) == null) {
                                                MarketAttributesActivity.this.villageDetails.put(Integer.valueOf(Integer.parseInt(editText.getTag().toString())), new ArrayList());
                                                ((List) MarketAttributesActivity.this.villageDetails.get(Integer.valueOf(Integer.parseInt(editText.getTag().toString())))).add(editText.getText().toString());
                                            } else {
                                                ((List) MarketAttributesActivity.this.villageDetails.get(Integer.valueOf(Integer.parseInt(editText.getTag().toString())))).add(editText.getText().toString());
                                            }
                                        } else {
                                            i4++;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                if (MarketAttributesActivity.this.villageDetails.size() > 0) {
                    for (int i5 = 0; i5 < MarketAttributesActivity.this.setCount; i5++) {
                        new ArrayList(MarketAttributesActivity.this.AlertlistAttributes.size());
                        List<AttributeModel> cloneList = MarketAttributesActivity.cloneList(MarketAttributesActivity.this.AlertlistAttributes);
                        for (int i6 = 0; i6 < cloneList.size(); i6++) {
                            if (MarketAttributesActivity.this.villageDetails.get(Integer.valueOf(cloneList.get(i6).getAttributeId())) != null) {
                                if (MarketAttributesActivity.this.childValuelistAttributes.size() > 0 && i5 < MarketAttributesActivity.this.childValuelistAttributes.size()) {
                                    MarketAttributesActivity marketAttributesActivity = MarketAttributesActivity.this;
                                    AttributeModel performFiltering = marketAttributesActivity.performFiltering(marketAttributesActivity.childValuelistAttributes, MarketAttributesActivity.this.pairID + "." + (i5 + 1) + "." + cloneList.get(i6).getAttributeId(), cloneList.get(i6).getAttributeId());
                                    if (performFiltering.getDetailsId() != 0) {
                                        cloneList.get(i6).setDetailsId(performFiltering.getDetailsId());
                                    }
                                }
                                if (cloneList.get(i6).getControlType().equalsIgnoreCase("DropDown")) {
                                    cloneList.get(i6).setAttributeValue(((EditText) MarketAttributesActivity.mEntryArrIds.get((cloneList.size() * i5) + i6 + 1)).getText().toString());
                                } else {
                                    cloneList.get(i6).setAttributeValue((String) ((List) MarketAttributesActivity.this.villageDetails.get(Integer.valueOf(cloneList.get(i6).getAttributeId()))).get(i5));
                                }
                                AttributeModel attributeModel = cloneList.get(i6);
                                StringBuilder sb = new StringBuilder();
                                sb.append(MarketAttributesActivity.this.pairID);
                                sb.append(".");
                                int i7 = i5 + 1;
                                sb.append(i7);
                                sb.append(".");
                                sb.append(cloneList.get(i6).getAttributeId());
                                attributeModel.setSequenceId(sb.toString());
                                cloneList.get(i6).setChildLevelId(MarketAttributesActivity.this.pairID + "." + i7);
                            }
                        }
                        Log.e("dddd", cloneList.toString());
                        Log.e("fmndsbfsdbf", MarketAttributesActivity.this.AlertlistAttributes.toString());
                        try {
                            InsertDataIntoDB.insertFarmerActivityDetailsWithSequenceId(cloneList, MarketAttributesActivity.this.farmerId, MarketAttributesActivity.this.activityId, MarketAttributesActivity.this.isPlanned, 1, MarketAttributesActivity.this.assignmentID, i5 + 1, MarketAttributesActivity.this.segmentId, MarketAttributesActivity.this.transId, MarketAttributesActivity.this.activityAssignmentId);
                        } catch (Exception e2) {
                            PLog.e(MarketAttributesActivity.TAG, e2);
                            e2.printStackTrace();
                        }
                    }
                }
                Log.i(MarketAttributesActivity.TAG, MarketAttributesActivity.this.villageDetails.toString() + "");
                MarketAttributesActivity.this.resetListdata();
                MarketAttributesActivity.this.villageDetails = new HashMap();
            }
        });
    }

    private void addDynamicLayoutVillageDetails(int i, LinearLayout linearLayout, FieldData fieldData) {
        new AttributeModel();
        if (this.AlertlistAttributes.size() <= 0) {
            Toast.makeText(this.context.getApplicationContext(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_noAttribsAvailToastSA()), 0).show();
            return;
        }
        LinearLayout linearLayout2 = new LinearLayout(this.context);
        linearLayout2.setOrientation(1);
        linearLayout2.setGravity(16);
        linearLayout2.setBackgroundDrawable(getResources().getDrawable(R.drawable.card_layout_back));
        linearLayout2.setId(this.layoutId);
        TextView textView = new TextView(this.context);
        textView.setTextColor(-12303292);
        StringBuilder sb = new StringBuilder("Set ");
        int i2 = this.setCount + 1;
        this.setCount = i2;
        sb.append(i2);
        textView.setText(sb.toString());
        linearLayout2.setTag(Integer.valueOf(this.setCount));
        String str = "";
        int i3 = 0;
        while (i3 < this.AlertlistAttributes.size()) {
            this.objAttribute = this.AlertlistAttributes.get(i3);
            if (this.childValuelistAttributes.size() > 0) {
                AttributeModel performFiltering = performFiltering(this.childValuelistAttributes, this.pairID + "." + this.setCount + "." + this.objAttribute.getAttributeId(), this.objAttribute.getAttributeId());
                if (performFiltering.getAttributeValue() != null && !performFiltering.getAttributeValue().equalsIgnoreCase("")) {
                    str = performFiltering.getAttributeValue();
                } else if (this.objAttribute.getAttributeId() != this.firstChild) {
                    str = "";
                } else {
                    str = fieldData.getId();
                }
                this.objAttribute.setAttributeValue(str);
            } else if (this.objAttribute.getAttributeId() == this.firstChild) {
                this.objAttribute.setAttributeValue(fieldData.getId());
            }
            String str2 = str;
            if (this.attributeHashmap.get(Integer.valueOf(this.objAttribute.getAttributeId())) == null) {
                this.attributeHashmap.put(Integer.valueOf(this.objAttribute.getAttributeId()), this.objAttribute);
            }
            listAttributes.add(this.objAttribute);
            addOperationsDynamicLayout(this.objAttribute.getAttributeName(), this.objAttribute.getControlType(), this.objAttribute.getAttributeId(), str2, this.objAttribute, linearLayout2, true);
            i3++;
            str = str2;
        }
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.bottomMargin = 10;
        linearLayout.addView(linearLayout2, layoutParams);
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

    /* JADX INFO: Access modifiers changed from: private */
    public void resetListdata() {
        this.mForOperations = 0;
        this.mForDates = 0;
        AttributeModel attributeModel = listAttributes.get(0);
        listAttributes.clear();
        listAttributes.add(attributeModel);
        this.addvillageLayout.removeAllViews();
        this.mAddDynamicLinear.removeView(this.addvillageLayout);
        listAttributes_child = new ArrayList();
        this.AlertlistAttributes = new ArrayList();
        this.childValuelistAttributes = new ArrayList();
        this.btnfinish.setVisibility(8);
        EditText editText = mEntryArrIds.get(0);
        mEntryArrIds.clear();
        mEntryArrIds.add(editText);
        EditText editText2 = mEntryArr.get(0);
        mEntryArr.clear();
        mEntryArr.add(editText2);
        this.setCount = 0;
    }
}

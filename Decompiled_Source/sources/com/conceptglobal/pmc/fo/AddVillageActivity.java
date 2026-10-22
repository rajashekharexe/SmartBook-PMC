package com.conceptglobal.pmc.fo;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TabHost;
import android.widget.TextView;
import com.conceptglobal.pmc.BaseActivity;
import com.conceptglobal.pmc.adapter.CropDisplayAdapter;
import com.conceptglobal.pmc.adapter.GridImageAdapter;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.model.DynamicFields;
import com.conceptglobal.pmc.model.FarmerCropMapping;
import com.conceptglobal.pmc.utils.CustomActionBar;
import com.conceptglobal.pmc.utils.LabelUtils;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import com.conceptglobal.pmcdeepakfertilizers.R;
import de.keyboardsurfer.android.widget.crouton.Crouton;
import de.keyboardsurfer.android.widget.crouton.Style;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.apache.commons.io.IOUtils;

/* loaded from: classes.dex */
public class AddVillageActivity extends BaseActivity implements View.OnClickListener, View.OnTouchListener {
    private static final int DATEDIALOGID = 0;
    private static final int DATEDIALOGID_YEARLESS = 1;
    private static final int INITIALCROPID = -1;
    private static int SELECTED_ID = 0;
    private static final String TAG = "Add Village Activity";
    public static List<Integer> deletedCropsIds;
    private static String farmerType;
    private CropDisplayAdapter adapterCrops;
    private Button btnDraft;
    private ImageView btnLatLng;
    private Button btnRemarks;
    private Button btnSave;
    private Context context;
    private EditText edtDistrict;
    private EditText edtMandal;
    private EditText edtState;
    private EditText edtVillage;
    private EditText etCompanyName;
    private EditText etCompanySales;
    private EditText etCropDos;
    private EditText etCropName;
    private EditText etCropSales;
    private EditText etRemarks;
    private EditText ethybrid;
    private String farmerID;
    private int farmercount;
    private GetDataFromDB getDataFromDB;
    private GridView gridView;
    private GridImageAdapter imageAdapter;
    private ArrayList<String> imagelist;
    private Intent intentGetData;
    private List<FarmerCropMapping> listFarmerCrops;
    private LinearLayout mAddDynamicLinear;
    private LinearLayout mAddDynamicLinearOthers;
    private LinearLayout mAddGeoDetailsInOthers;
    private LinearLayout mAddGeoDetailsInPersonal;
    private int mDay;
    private ArrayList<EditText> mEntryArr;
    private ArrayList<EditText> mEntryArrIds;
    private int mMonth;
    private ArrayList<TextView> mOprDatesArr;
    private int mYear;
    private ArrayList<TextView> mattributesnamesArr;
    private List<Integer> modifiedListOfFarmerCrops;
    private Queries queries;
    private int status;
    private LinearLayout tab1;
    private RelativeLayout tab2;
    private LinearLayout tab3;
    private TabHost tabHost;
    private TextView tvAddCompany;
    private TextView tvAllSalesvalues;
    private TextView tvCompanyid;
    private TextView tvCropId;
    private TextView tvLatitude;
    private TextView tvLongitude;
    private TextView tvdistrictid;
    private TextView tvmandalid;
    private TextView tvstateid;
    private TextView tvvillageid;
    private TextView txt;
    private String updateDOS;
    private String mFiledStr = "";
    private int datePos = 0;
    private HashMap<String, String> hAttributes = null;
    private ArrayList<DynamicFields> attributesArry = null;
    private ArrayList<DynamicFields> attributesOthersArry = null;
    private int mForOperations = -1;
    private int mForDates = -1;
    private int layoutId = 0;
    int _clickId = 0;
    private int enableCropHybrids = 0;

    private void getData() {
    }

    private void setFilters() {
    }

    private void setLayoutData() {
    }

    private void setListeners() {
    }

    private void settingData() {
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        return false;
    }

    @Override // com.conceptglobal.pmc.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        CustomActionBar.initActionBar(this, getResources().getString(R.string.pmc_add_village_details));
        setContentView(R.layout.add_village_tab_activity);
        if (ConstantsPMC.getInstance().getIsTrainingORLive() != 2) {
            if (GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_addFarmerDetailsText()) == null) {
                CustomActionBar.initActionBar(this, "Add Village(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
            } else {
                CustomActionBar.initActionBar(this, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_addVillageDetailsText()) + "(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
            }
        } else if (GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_addFarmerDetailsText()) == null) {
            CustomActionBar.initActionBar(this, "Add Village(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
        } else {
            CustomActionBar.initActionBar(this, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_addVillageDetailsText()) + "(" + UtilDeclarations.getApplicationVersion(this.context) + ")");
        }
        initialization();
        settingTabs();
        setFilters();
        getData();
        setLayoutData();
        settingData();
        setListeners();
    }

    @Override // com.conceptglobal.pmc.BaseActivity
    protected void displayNotification(String str, String str2) {
        Crouton.showText(this, "" + str2 + IOUtils.LINE_SEPARATOR_UNIX + str, Style.ALERT);
    }

    private void initialization() {
        this.context = this;
        this.intentGetData = getIntent();
        this.queries = Queries.getInstance();
        this.getDataFromDB = GetDataFromDB.getInstance();
        TabHost tabHost = (TabHost) findViewById(R.id.add_village_tabhost);
        this.tabHost = tabHost;
        Button button = (Button) tabHost.findViewById(R.id.btn_draft);
        this.btnDraft = button;
        button.setText(this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_draftTabText()));
        Button button2 = (Button) this.tabHost.findViewById(R.id.btn_save);
        this.btnSave = button2;
        button2.setText(this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_saveText()));
    }

    private void settingTabs() {
        this.tabHost.setup();
        addTab(getResources().getString(R.string.pmc_reg_farmer_geography_tab), R.drawable.ic_action_last_vist, getResources().getString(R.string.pmc_tag1));
        addTab(getResources().getString(R.string.pmc_add_village_acreages_detail_tab), R.drawable.ic_acerage_wight, getResources().getString(R.string.pmc_tag2));
        addTab(getResources().getString(R.string.pmc_add_village_totalhybrid_sales), R.drawable.ic_activity_wight, getResources().getString(R.string.pmc_tag3));
        addTab(getResources().getString(R.string.pmc_reg_farmer_others_tab), R.drawable.ic_others_wight, getResources().getString(R.string.pmc_tag4));
    }

    private void addTab(String str, int i, String str2) {
        TabHost.TabSpec newTabSpec = this.tabHost.newTabSpec(str);
        View inflate = LayoutInflater.from(this).inflate(R.layout.tab_indicator, (ViewGroup) this.tabHost.getTabWidget(), false);
        ((TextView) inflate.findViewById(R.id.title_tab_indicator)).setText(str);
        ((ImageView) inflate.findViewById(R.id.icon_tab_indicator)).setImageResource(i);
        newTabSpec.setIndicator(inflate);
        if (str2.equalsIgnoreCase(getResources().getString(R.string.pmc_tag1))) {
            newTabSpec.setContent(R.id.new_village_tab1);
        } else if (str2.equalsIgnoreCase(getResources().getString(R.string.pmc_tag2))) {
            newTabSpec.setContent(R.id.new_village_tab2);
        } else if (str2.equalsIgnoreCase(getResources().getString(R.string.pmc_tag3))) {
            newTabSpec.setContent(R.id.new_village_tab3);
        } else if (str2.equalsIgnoreCase(getResources().getString(R.string.pmc_tag4))) {
            newTabSpec.setContent(R.id.new_village_tab4);
        } else {
            newTabSpec.setContent(R.id.new_village_tab1);
        }
        this.tabHost.addTab(newTabSpec);
    }
}

package com.conceptglobal.pmc.fo;

import android.app.Activity;
import android.app.ProgressDialog;
import android.app.SearchManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.database.sqlite.SQLiteDatabase;
import android.location.Location;
import android.location.LocationListener;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.widget.SearchView;
import androidx.cardview.widget.CardView;
import androidx.core.view.MenuItemCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.conceptglobal.ifastscroll.FastScroller;
import com.conceptglobal.pmc.BaseActivity;
import com.conceptglobal.pmc.adapter.CustomerListAdapter;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.common.EndlessRecyclerViewScrollListener;
import com.conceptglobal.pmc.common.ListPopupOne;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.DataBaseHandler;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.database.InsertDataIntoDB;
import com.conceptglobal.pmc.interfaces.OnLocationFoundListener;
import com.conceptglobal.pmc.locationprovider.FetchLocation;
import com.conceptglobal.pmc.model.CustomListDisplayModel;
import com.conceptglobal.pmc.model.DynamicFields;
import com.conceptglobal.pmc.model.LocationInfo;
import com.conceptglobal.pmc.textdrawable.ColorGenerator;
import com.conceptglobal.pmc.textdrawable.TextDrawable;
import com.conceptglobal.pmc.utils.ConstantDeclarations;
import com.conceptglobal.pmc.utils.LabelUtils;
import com.conceptglobal.pmc.utils.LocationUtils;
import com.conceptglobal.pmc.utils.PLog;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import com.conceptglobal.pmc.views.RippleView;
import com.conceptglobal.pmcdeepakfertilizers.R;
import com.google.firebase.analytics.FirebaseAnalytics;
import de.keyboardsurfer.android.widget.crouton.Crouton;
import de.keyboardsurfer.android.widget.crouton.Style;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.io.IOUtils;

/* loaded from: classes.dex */
public class SelfAssignDetailsActivity extends BaseActivity implements View.OnClickListener {
    private static final int GETNEWACTIVITY = 2;
    private static final String TAG = "SelfAssignDetailsActivity";
    private static final String Tag = "SelfAssignDetailsActivity";
    public static DecimalFormat twoDForm = new DecimalFormat("#.##");
    private CustomerListAdapter adapter;
    private List<CustomListDisplayModel> adapterList;
    private TextView btnClear;
    private TextView btnGo;
    protected CardView cardview;
    private ImageView clearbtn;
    private Context context;
    private EditText custTypeSearch;
    private RecyclerView customerList;
    private Double dbllatitude;
    private Double dbllongitude;
    private EditText districtSearch;
    private FastScroller fastScroller;
    private LinearLayout filtersLL;
    private GetDataFromDB getdataDb;
    private RelativeLayout loaderrl;
    private TextView loadertxt;
    private LocationControl locationControlTask;
    private EditText locationSearch;
    private Activity mActivity;
    private TextDrawable.IBuilder mDrawableBuilder;
    private LocationUtils mLocationUtils;
    private EditText mandalSearch;
    private LinearLayout noDataLL;
    protected ImageView phonedail;
    protected TextView profTextView;
    protected ImageView profile_image;
    LinearLayout progressll;
    private EditText radiusSearch;
    private RippleView rippleView;
    EndlessRecyclerViewScrollListener scrollListener;
    private Button searchbtn;
    private EditText searchkeyword;
    private RelativeLayout searchrl;
    private int segmentId;
    private String segmentName;
    LinearLayout selectlayout;
    private TextView selecttitle;
    private EditText stateSearch;
    private List<CustomListDisplayModel> tempAdapterList;
    private TextView tvCustTypeId;
    private TextView tvDistrictId;
    private TextView tvLocationId;
    private TextView tvMandalId;
    private TextView tvStateId;
    private TextView tv_noData;
    private String farmerId = "0";
    private boolean hasLocation = false;
    private String tag = "SelfAssignDetailsActivity";
    private ColorGenerator mColorGenerator = ColorGenerator.MATERIAL;
    private int isFromassignment = 0;
    private int isFromComplaint = 0;
    private int isFromOrders = 0;
    private int isFromTestimonial = 0;
    private String addCustTypeQuery = "";
    private String addStateQuery = "";
    private String addDistrictQuery = "";
    private String addTalukaQuery = "";
    private String addLocationQuery = "";
    int farmersThreshold = 0;
    int farmersCount = 0;
    private final TextWatcher stateChanged = new TextWatcher() { // from class: com.conceptglobal.pmc.fo.SelfAssignDetailsActivity.2
        private String beforeState;

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            this.beforeState = charSequence.toString();
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            if (this.beforeState.equalsIgnoreCase(editable.toString())) {
                return;
            }
            SelfAssignDetailsActivity.this.tvDistrictId.setText("");
            SelfAssignDetailsActivity.this.districtSearch.setText("");
            SelfAssignDetailsActivity.this.tvMandalId.setText("");
            SelfAssignDetailsActivity.this.mandalSearch.setText("");
            SelfAssignDetailsActivity.this.tvLocationId.setText("");
            SelfAssignDetailsActivity.this.locationSearch.setText("");
        }
    };
    private final TextWatcher districtChanged = new TextWatcher() { // from class: com.conceptglobal.pmc.fo.SelfAssignDetailsActivity.3
        String beforeDistrict;

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            this.beforeDistrict = charSequence.toString();
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            if (this.beforeDistrict.equalsIgnoreCase(editable.toString())) {
                return;
            }
            SelfAssignDetailsActivity.this.tvMandalId.setText("");
            SelfAssignDetailsActivity.this.mandalSearch.setText("");
            SelfAssignDetailsActivity.this.tvLocationId.setText("");
            SelfAssignDetailsActivity.this.locationSearch.setText("");
        }
    };
    private final TextWatcher mandalChanged = new TextWatcher() { // from class: com.conceptglobal.pmc.fo.SelfAssignDetailsActivity.4
        private String beforeMandal;

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            this.beforeMandal = charSequence.toString();
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            if (this.beforeMandal.equalsIgnoreCase(editable.toString())) {
                return;
            }
            SelfAssignDetailsActivity.this.tvLocationId.setText("");
            SelfAssignDetailsActivity.this.locationSearch.setText("");
        }
    };

    private double deg2rad(double d) {
        return (d * 3.141592653589793d) / 180.0d;
    }

    private double rad2deg(double d) {
        return (d * 180.0d) / 3.141592653589793d;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:34:0x0139
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1179)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.collectHandlerRegions(ExcHandlersRegionMaker.java:53)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.process(ExcHandlersRegionMaker.java:38)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:27)
        */
    @Override // com.conceptglobal.pmc.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(android.os.Bundle r6) {
        /*
            Method dump skipped, instructions count: 339
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.fo.SelfAssignDetailsActivity.onCreate(android.os.Bundle):void");
    }

    @Override // com.conceptglobal.pmc.BaseActivity
    protected void displayNotification(String str, String str2) {
        Crouton.showText(this, "" + str2 + IOUtils.LINE_SEPARATOR_UNIX + str, Style.ALERT);
    }

    private void init() {
        this.noDataLL = (LinearLayout) findViewById(R.id.no_data_found_ll);
        TextView textView = (TextView) findViewById(R.id.tv_no_data_found);
        this.tv_noData = textView;
        textView.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_noDataFound()));
        ((LinearLayout) findViewById(R.id.content)).setBackgroundResource(0);
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.listViewcustomerType);
        this.customerList = recyclerView;
        recyclerView.setHasFixedSize(true);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this, 1, false);
        this.customerList.setLayoutManager(linearLayoutManager);
        this.selecttitle = (TextView) findViewById(R.id.selecttitle);
        this.filtersLL = (LinearLayout) findViewById(R.id.filterInSA);
        this.loadertxt = (TextView) findViewById(R.id.loadertxt);
        EditText editText = (EditText) findViewById(R.id.ed_CustType);
        this.custTypeSearch = editText;
        editText.setId(this.segmentId);
        this.custTypeSearch.setHint("" + this.segmentId);
        EditText editText2 = (EditText) findViewById(R.id.ed_stateSearch);
        this.stateSearch = editText2;
        editText2.setHint(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_stateFilterText()));
        EditText editText3 = (EditText) findViewById(R.id.ed_mandalSearch);
        this.mandalSearch = editText3;
        editText3.setHint(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_talukaFilterText()));
        EditText editText4 = (EditText) findViewById(R.id.ed_districtSearch);
        this.districtSearch = editText4;
        editText4.setHint(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_districtFilterText()));
        EditText editText5 = (EditText) findViewById(R.id.ed_LocationSearch);
        this.locationSearch = editText5;
        editText5.setHint(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_villageFilterText()));
        EditText editText6 = (EditText) findViewById(R.id.ed_RadiusSearch);
        this.radiusSearch = editText6;
        editText6.setHint(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_radiusFilterText()));
        this.tvCustTypeId = (TextView) findViewById(R.id.tvCustId);
        this.tvStateId = (TextView) findViewById(R.id.tvStateId);
        this.tvMandalId = (TextView) findViewById(R.id.tvMandalId);
        this.tvDistrictId = (TextView) findViewById(R.id.tvDistrictId);
        this.tvLocationId = (TextView) findViewById(R.id.tvLocationId);
        this.searchkeyword = (EditText) findViewById(R.id.searchkeyword);
        this.searchbtn = (Button) findViewById(R.id.searchbtn);
        this.loaderrl = (RelativeLayout) findViewById(R.id.loaderrl);
        this.clearbtn = (ImageView) findViewById(R.id.clearbtn);
        this.progressll = (LinearLayout) findViewById(R.id.progressll);
        this.selectlayout = (LinearLayout) findViewById(R.id.selectlayout);
        RelativeLayout relativeLayout = (RelativeLayout) findViewById(R.id.searchrl);
        this.searchrl = relativeLayout;
        relativeLayout.setVisibility(8);
        TextView textView2 = (TextView) findViewById(R.id.sa_list_goBtn);
        this.btnGo = textView2;
        textView2.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_goFilterText()));
        TextView textView3 = (TextView) findViewById(R.id.sa_list_ClearBtn);
        this.btnClear = textView3;
        textView3.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_clearFilterText()));
        this.scrollListener = new EndlessRecyclerViewScrollListener(linearLayoutManager) { // from class: com.conceptglobal.pmc.fo.SelfAssignDetailsActivity.1
            @Override // com.conceptglobal.pmc.common.EndlessRecyclerViewScrollListener
            public void onLoadMore(int i, int i2, RecyclerView recyclerView2) {
                SelfAssignDetailsActivity.this.loadMore("" + i2, "50");
            }
        };
        this.stateSearch.setOnClickListener(this);
        this.mandalSearch.setOnClickListener(this);
        this.districtSearch.setOnClickListener(this);
        this.searchbtn.setOnClickListener(this);
        this.clearbtn.setOnClickListener(this);
        this.stateSearch.addTextChangedListener(this.stateChanged);
        this.districtSearch.addTextChangedListener(this.districtChanged);
        this.mandalSearch.addTextChangedListener(this.mandalChanged);
        this.locationSearch.setOnClickListener(this);
        this.radiusSearch.setOnClickListener(this);
        this.btnGo.setOnClickListener(this);
        this.btnClear.setOnClickListener(this);
        this.fastScroller = (FastScroller) findViewById(R.id.fastscroll);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadMore(String str, String str2) {
        String str3;
        this.adapter.showLoading(true);
        this.adapter.notifyDataSetChanged();
        this.noDataLL.setVisibility(8);
        this.loaderrl.setVisibility(0);
        if (this.farmersCount > this.farmersThreshold) {
            if (this.segmentId != 4) {
                str3 = "Farmers";
            } else {
                str3 = "Villages";
            }
            this.loadertxt.setText(str3 + " count is more than " + this.farmersThreshold + ", please wait while loading data...");
        }
        new LoadDataTask().execute(str, str2);
    }

    private void setData() {
        DataBaseHandler dataBaseHandler = DataBaseHandler.getInstance();
        SQLiteDatabase openDatabase = dataBaseHandler.openDatabase();
        try {
            this.farmersThreshold = GetDataFromDB.getInstance().getTotalFarmersCount(openDatabase, Queries.getInstance().getFarmersThreshold());
            this.farmersCount = GetDataFromDB.getInstance().getTotalFarmersCount(openDatabase, Queries.getInstance().getTotalFarmersCount("1"));
        } catch (Exception unused) {
        } catch (Throwable th) {
            dataBaseHandler.closeDatabase();
            throw th;
        }
        dataBaseHandler.closeDatabase();
        this.adapterList = new ArrayList();
        try {
            int i = this.segmentId;
            if (i == 1) {
                this.adapter = new CustomerListAdapter(this.mActivity, this.adapterList, 1, this.segmentId, this.isFromassignment, this.isFromOrders, this.isFromComplaint, this.isFromTestimonial);
                this.selecttitle.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectFarmerText()));
                this.custTypeSearch.setHint(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_farmerText()));
                loadMore("-1", "50");
            } else if (i == 2) {
                this.adapter = new CustomerListAdapter(this.mActivity, this.adapterList, 2, this.segmentId, this.isFromassignment, this.isFromOrders, this.isFromComplaint, this.isFromTestimonial);
                this.selecttitle.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectRetailerText()));
                this.custTypeSearch.setHint(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_retailerText()));
                loadMore("-1", "50");
            } else if (i == 3) {
                this.adapter = new CustomerListAdapter(this.mActivity, this.adapterList, 3, this.segmentId, this.isFromassignment, this.isFromOrders, this.isFromComplaint, this.isFromTestimonial);
                this.selecttitle.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectMarketText()));
                this.custTypeSearch.setHint(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_marketText()));
                loadMore("-1", "50");
            } else if (i == 4) {
                this.adapter = new CustomerListAdapter(this.mActivity, this.adapterList, 4, this.segmentId, this.isFromassignment, this.isFromOrders, this.isFromComplaint, this.isFromTestimonial);
                this.selecttitle.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectVillageText()));
                this.custTypeSearch.setHint(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_villageText()));
                loadMore("-1", "50");
            } else if (i == 5) {
                this.adapter = new CustomerListAdapter(this.mActivity, this.adapterList, 5, this.segmentId, this.isFromassignment, this.isFromOrders, this.isFromComplaint, this.isFromTestimonial);
                this.selecttitle.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectTerritoryText()));
                this.custTypeSearch.setHint(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_territoryText()));
                loadMore("-1", "50");
            } else if (i == 8) {
                this.adapter = new CustomerListAdapter(this.mActivity, this.adapterList, 8, this.segmentId, this.isFromassignment, this.isFromOrders, this.isFromComplaint, this.isFromTestimonial);
                this.selecttitle.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectPlanterText()));
                this.custTypeSearch.setHint(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_planterText()));
                loadMore("-1", "50");
            } else if (i == 10) {
                this.farmerId = ConstantsPMC.getInstance().getUserId();
                Intent intent = new Intent();
                intent.putExtra("FarmerId", this.farmerId);
                intent.putExtra(ConstantDeclarations.getInstance().getKEYSELECTIONQUERY(), Queries.getInstance().getActivtiesListBySegment(this.segmentId));
                startActivityForResult(intent, 2);
            } else if (i == 18) {
                this.adapter = new CustomerListAdapter(this.mActivity, this.adapterList, 2, this.segmentId, this.isFromassignment, this.isFromOrders, this.isFromComplaint, this.isFromTestimonial);
                this.selecttitle.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectVCPText()));
                this.custTypeSearch.setHint(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_vcpText()));
                loadMore("-1", "50");
            }
            this.customerList.setAdapter(this.adapter);
            this.fastScroller.setRecyclerView(this.customerList);
            this.fastScroller.setVisibility(0);
        } catch (Exception e) {
            PLog.e("SelfAssignDetailsActivity", e);
            this.noDataLL.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<CustomListDisplayModel> getListForCustomers(String str, String str2, int i, int i2) {
        StringBuilder sb = new StringBuilder();
        try {
            new ArrayList();
            ArrayList<DynamicFields> dynanicFieldsFirDraft = GetDataFromDB.getInstance().getDynanicFieldsFirDraft(Queries.getInstance().gettingDraftColunNames(str.equals(ConstantsPMC.TYPE_Retailer) ? "Dealer" : str));
            for (int i3 = 0; i3 < dynanicFieldsFirDraft.size(); i3++) {
                sb.append(dynanicFieldsFirDraft.get(i3).getDbColumnName() + ",");
            }
            sb.deleteCharAt(sb.length() - 1);
            String sb2 = sb.toString();
            if (TextUtils.isEmpty(str2)) {
                if (str.equals(ConstantsPMC.TYPE_FARMER)) {
                    return GetDataFromDB.getInstance().getFarmerBindData(Queries.getInstance().getDashboardDataSA(sb2, "1", i, i2), false);
                }
                if (str.equals(ConstantsPMC.TYPE_Retailer)) {
                    return GetDataFromDB.getInstance().getRetailerBindData(Queries.getInstance().getAllRetailersDashboardData(sb2, "2", i, i2));
                }
                if (str.equals("VCP")) {
                    return GetDataFromDB.getInstance().getRetailerBindData(Queries.getInstance().getAllRetailersDashboardData(sb2, "18", i, i2));
                }
                if (!str.equalsIgnoreCase(ConstantsPMC.TYPE_Distributor) && !str.equalsIgnoreCase("Dealer")) {
                    if (str.equals("Planter")) {
                        return GetDataFromDB.getInstance().getFarmerBindData(Queries.getInstance().getDashboardData(sb2, "8", i, i2), false);
                    }
                }
                return GetDataFromDB.getInstance().getRetailerBindData(Queries.getInstance().getAllRetailersDashboardData(sb2, "3", i, i2));
            }
            if (str.equals(ConstantsPMC.TYPE_FARMER)) {
                return GetDataFromDB.getInstance().getSelfAssignFarmersByKeyword(Queries.getInstance().getDashboardDataSA(sb2, "1", i, i2), str2);
            }
            if (str.equals(ConstantsPMC.TYPE_Retailer)) {
                return GetDataFromDB.getInstance().selfAssignGetRetailersByKeyword(Queries.getInstance().getAllRetailersDashboardData(sb2, "2", i, i2), str2);
            }
            if (!str.equalsIgnoreCase(ConstantsPMC.TYPE_Distributor) && !str.equalsIgnoreCase("Dealer")) {
                if (str.equals("Planter")) {
                    return GetDataFromDB.getInstance().getSelfAssignFarmersByKeyword(Queries.getInstance().getDashboardData(sb2, "8", i, i2), str2);
                }
            }
            return GetDataFromDB.getInstance().selfAssignGetRetailersByKeyword(Queries.getInstance().getAllRetailersDashboardData(sb2, "3", i, i2), str2);
            return null;
        } catch (Exception e) {
            PLog.e("SelfAssignDetailsActivity", e);
            List<CustomListDisplayModel> list = this.adapterList;
            if (list != null) {
                list.clear();
            }
            return new ArrayList();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 1) {
            if (i2 == -1) {
                fetchLocation();
                return;
            } else {
                if (i2 != 0) {
                    return;
                }
                this.mLocationUtils.showDialog(this, LocationUtils.GPS_NOT_TURNED_ON);
                return;
            }
        }
        if (i != 2 || i2 == 0 || intent == null || intent.getStringArrayExtra(ConstantDeclarations.getInstance().getKEYSELECTION()) == null) {
            return;
        }
        String[] stringArray = intent.getExtras().getStringArray(ConstantDeclarations.getInstance().getKEYSELECTION());
        this.farmerId = intent.getStringExtra("FarmerId");
        long timeInMillis = Calendar.getInstance().getTimeInMillis();
        if (stringArray != null) {
            try {
                new ArrayList();
                String str = stringArray[0];
                List<String> list = this.getdataDb.getList(Queries.getInstance().getListOfAttributesUpdate(str));
                if (list != null && list.size() > 0) {
                    Iterator<String> it = list.iterator();
                    while (it.hasNext()) {
                        try {
                            InsertDataIntoDB.insertCustomerAttributeDetails(this.farmerId, str, it.next(), this.segmentId, 0, timeInMillis, 1);
                        } catch (Exception e) {
                            PLog.e(this.tag, e);
                        }
                    }
                }
            } catch (Exception e2) {
                PLog.e(this.tag, e2);
            }
        }
        Intent intent2 = new Intent(getBaseContext(), (Class<?>) SAAttributeActivity.class);
        intent2.putExtra(ConstantDeclarations.getInstance().getKEYFARMERID(), this.farmerId);
        intent2.putExtra("ACTIVITYID", Integer.parseInt(stringArray[0]));
        intent2.putExtra("ACTIVITYNAME", stringArray[1]);
        intent2.putExtra("SEGMENTID", this.segmentId);
        intent2.putExtra("ISSELFASSIGN", 1);
        intent2.putExtra("TRANSID", timeInMillis);
        intent2.putExtra("ASSIGNMENTID", 0);
        intent2.addFlags(67108864);
        startActivity(intent2.addFlags(131072).addFlags(67108864));
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity, androidx.core.app.ActivityCompat.OnRequestPermissionsResultCallback
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        if (i != 34 || iArr.length <= 0) {
            return;
        }
        if (iArr[0] == 0) {
            fetchLocation();
        } else {
            this.mLocationUtils.showDialog(this, LocationUtils.PERMISSION_DENIED);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.clearbtn /* 2131296505 */:
                this.searchkeyword.setText((CharSequence) null);
                this.clearbtn.setVisibility(8);
                if (this.farmersCount > this.farmersThreshold) {
                    loadMore("1", "50");
                    break;
                } else {
                    loadMore("1", "" + this.farmersThreshold);
                    break;
                }
            case R.id.ed_LocationSearch /* 2131296579 */:
                if (this.tvMandalId.getText().toString().length() != 0 && this.tvDistrictId.getText().toString().length() != 0 && this.tvStateId.getText().toString().length() != 0) {
                    try {
                        ListPopupOne listPopupOne = new ListPopupOne(this.context, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectOneDropDownTitle()), Queries.getInstance().gettinVillages(this.tvMandalId.getText().toString()), view, this.tvLocationId);
                        listPopupOne.getWindow().getAttributes().windowAnimations = R.style.PauseDialogAnimation;
                        listPopupOne.show();
                        listPopupOne.getWindow().setSoftInputMode(3);
                        break;
                    } catch (Exception e) {
                        PLog.e("SelfAssignDetailsActivity", e);
                        return;
                    }
                } else {
                    Toast.makeText(this.context.getApplicationContext(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_plsSelMandalFilter()), 1).show();
                    break;
                }
                break;
            case R.id.ed_districtSearch /* 2131296585 */:
                if (this.tvStateId.getText().toString().length() != 0) {
                    try {
                        ListPopupOne listPopupOne2 = new ListPopupOne(this.context, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectOneDropDownTitle()), Queries.getInstance().gettingDistricts(this.tvStateId.getText().toString()), view, this.tvDistrictId);
                        listPopupOne2.getWindow().getAttributes().windowAnimations = R.style.PauseDialogAnimation;
                        listPopupOne2.show();
                        listPopupOne2.getWindow().setSoftInputMode(3);
                        break;
                    } catch (Exception e2) {
                        PLog.e("SelfAssignDetailsActivity", e2);
                        return;
                    }
                } else {
                    Toast.makeText(this.context.getApplicationContext(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_plsSelStateFilter()), 1).show();
                    break;
                }
            case R.id.ed_mandalSearch /* 2131296586 */:
                if (this.tvDistrictId.getText().toString().length() != 0 && this.tvStateId.getText().toString().length() != 0) {
                    try {
                        ListPopupOne listPopupOne3 = new ListPopupOne(this.context, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectOneDropDownTitle()), Queries.getInstance().gettingMandals(this.tvDistrictId.getText().toString()), view, this.tvMandalId);
                        listPopupOne3.getWindow().getAttributes().windowAnimations = R.style.PauseDialogAnimation;
                        listPopupOne3.show();
                        listPopupOne3.getWindow().setSoftInputMode(3);
                        break;
                    } catch (Exception e3) {
                        PLog.e("SelfAssignDetailsActivity", e3);
                        return;
                    }
                } else {
                    Toast.makeText(this.context.getApplicationContext(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_plsSelDistrictFilter()), 1).show();
                    break;
                }
                break;
            case R.id.ed_stateSearch /* 2131296587 */:
                try {
                    ListPopupOne listPopupOne4 = new ListPopupOne(this.context, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectOneDropDownTitle()), Queries.getInstance().gettingStates(), view, this.tvStateId);
                    listPopupOne4.getWindow().getAttributes().windowAnimations = R.style.PauseDialogAnimation;
                    listPopupOne4.show();
                    listPopupOne4.getWindow().setSoftInputMode(3);
                    break;
                } catch (Exception e4) {
                    PLog.e("SelfAssignDetailsActivity", e4);
                    return;
                }
            case R.id.sa_list_ClearBtn /* 2131297196 */:
                this.stateSearch.setText("");
                this.districtSearch.setText("");
                this.mandalSearch.setText("");
                this.locationSearch.setText("");
                this.radiusSearch.setText("");
                this.tvStateId.setText("");
                this.tvDistrictId.setText("");
                this.tvMandalId.setText("");
                this.tvLocationId.setText("");
                setData();
                break;
            case R.id.sa_list_goBtn /* 2131297197 */:
                UtilDeclarations.hideInputKeyboard(this.context);
                if (this.tvStateId.getText().toString().length() != 0) {
                    this.addStateQuery = " and StateID=" + this.tvStateId.getText().toString();
                }
                if (this.tvDistrictId.getText().toString().length() != 0) {
                    this.addDistrictQuery = " and DistrictID=" + this.tvDistrictId.getText().toString();
                }
                if (this.tvMandalId.getText().toString().length() != 0) {
                    this.addTalukaQuery = " and MandalID=" + this.tvMandalId.getText().toString();
                }
                if (this.tvLocationId.getText().toString().length() != 0 && this.locationSearch.getText().toString().length() != 0) {
                    this.addLocationQuery = " and VillageId=" + this.tvLocationId.getText().toString();
                }
                this.radiusSearch.getText().toString().trim().length();
                this.searchrl.setVisibility(8);
                this.loaderrl.setVisibility(0);
                this.adapterList.clear();
                this.adapter.notifyDataSetChanged();
                this.selectlayout.setVisibility(8);
                this.customerList.setVisibility(8);
                this.fastScroller.setVisibility(8);
                new SearchDataTask().execute(this.addStateQuery + this.addDistrictQuery + this.addTalukaQuery + this.addLocationQuery);
                break;
            case R.id.searchbtn /* 2131297228 */:
                String str = "" + ((Object) this.searchkeyword.getText());
                if (TextUtils.isEmpty(str)) {
                    Toast.makeText(getApplicationContext(), "Please enter your search keyword and click on button", 0).show();
                    break;
                } else if (this.farmersCount > this.farmersThreshold) {
                    ((InputMethodManager) getSystemService("input_method")).hideSoftInputFromWindow(this.searchbtn.getWindowToken(), 0);
                    this.loaderrl.setVisibility(0);
                    this.customerList.setVisibility(8);
                    this.fastScroller.setVisibility(8);
                    this.clearbtn.setVisibility(8);
                    this.searchbtn.setEnabled(false);
                    new LoadDataTask().execute("-1", "0", str);
                    break;
                } else {
                    this.adapter.getFilter().filter(str);
                    break;
                }
        }
    }

    private StringBuilder getDynamicColumns(String str) {
        StringBuilder sb = new StringBuilder();
        try {
            ArrayList<DynamicFields> dynanicFieldsFirDraft = GetDataFromDB.getInstance().getDynanicFieldsFirDraft(Queries.getInstance().gettingDraftColunNames(str));
            for (int i = 0; i < dynanicFieldsFirDraft.size(); i++) {
                sb.append(dynanicFieldsFirDraft.get(i).getDbColumnName() + ",");
            }
            sb.deleteCharAt(sb.length() - 1);
        } catch (Exception e) {
            PLog.e("SelfAssignDetailsActivity", e);
        }
        return sb;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getCustTypeQuery() {
        int i = this.segmentId;
        if (i == 1) {
            return Queries.getInstance().getfarmersInSAFilter(getDynamicColumns(ConstantsPMC.TYPE_FARMER).toString(), this.segmentId);
        }
        if (i == 2) {
            return Queries.getInstance().getRetailersInSAFilter(getDynamicColumns("Dealer").toString(), this.segmentId);
        }
        if (i == 3) {
            return Queries.getInstance().getRetailersInSAFilter(getDynamicColumns(ConstantsPMC.TYPE_Distributor).toString(), this.segmentId);
        }
        if (i != 8) {
            return null;
        }
        return Queries.getInstance().getfarmersInSAFilter(getDynamicColumns("Planter").toString(), this.segmentId);
    }

    private class LocationControl extends AsyncTask<Context, Void, Void> {
        private final ProgressDialog dialog;

        private LocationControl() {
            this.dialog = new ProgressDialog(SelfAssignDetailsActivity.this.context);
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            this.dialog.setMessage(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_gettLocationPWDialog()));
            this.dialog.setButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_gpsCancelButton()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.SelfAssignDetailsActivity.LocationControl.1
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    dialogInterface.dismiss();
                    SelfAssignDetailsActivity.this.hasLocation = true;
                }
            });
            this.dialog.show();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Void doInBackground(Context... contextArr) {
            while (!SelfAssignDetailsActivity.this.hasLocation) {
                try {
                    Thread.sleep(1000L);
                } catch (InterruptedException e) {
                    PLog.e("SelfAssignDetailsActivity", e);
                }
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Void r11) {
            if (SelfAssignDetailsActivity.this.dbllatitude != null && SelfAssignDetailsActivity.this.dbllongitude != null) {
                if (this.dialog.isShowing()) {
                    this.dialog.dismiss();
                }
                SelfAssignDetailsActivity.this.tempAdapterList = new ArrayList();
                Double.valueOf(0.0d);
                Double valueOf = Double.valueOf(0.0d);
                if (SelfAssignDetailsActivity.this.radiusSearch != null && SelfAssignDetailsActivity.this.radiusSearch.getText().toString().length() > 0) {
                    valueOf = Double.valueOf(Double.parseDouble(SelfAssignDetailsActivity.this.radiusSearch.getText().toString()));
                }
                SelfAssignDetailsActivity.this.tempAdapterList.clear();
                for (int i = 0; i < SelfAssignDetailsActivity.this.adapterList.size(); i++) {
                    CustomListDisplayModel customListDisplayModel = (CustomListDisplayModel) SelfAssignDetailsActivity.this.adapterList.get(i);
                    if (customListDisplayModel.getLatitude() != null && !customListDisplayModel.getLongitude().equalsIgnoreCase("NULL") && customListDisplayModel.getLatitude().length() > 0) {
                        SelfAssignDetailsActivity selfAssignDetailsActivity = SelfAssignDetailsActivity.this;
                        double distance = selfAssignDetailsActivity.distance(selfAssignDetailsActivity.dbllatitude, SelfAssignDetailsActivity.this.dbllongitude, Double.valueOf(Double.parseDouble(customListDisplayModel.getLatitude())), Double.valueOf(Double.parseDouble(customListDisplayModel.getLongitude())), 'K');
                        Double.valueOf(distance).getClass();
                        if (distance <= valueOf.doubleValue()) {
                            SelfAssignDetailsActivity.this.tempAdapterList.add(customListDisplayModel);
                        }
                    }
                }
                if (SelfAssignDetailsActivity.this.tempAdapterList.size() > 0) {
                    SelfAssignDetailsActivity.this.noDataLL.setVisibility(8);
                    SelfAssignDetailsActivity.this.adapter = new CustomerListAdapter(SelfAssignDetailsActivity.this.mActivity, SelfAssignDetailsActivity.this.tempAdapterList, 1, SelfAssignDetailsActivity.this.segmentId, SelfAssignDetailsActivity.this.isFromassignment, SelfAssignDetailsActivity.this.isFromOrders, SelfAssignDetailsActivity.this.isFromComplaint, SelfAssignDetailsActivity.this.isFromTestimonial);
                    SelfAssignDetailsActivity.this.customerList.setAdapter(SelfAssignDetailsActivity.this.adapter);
                    SelfAssignDetailsActivity.this.fastScroller.setRecyclerView(SelfAssignDetailsActivity.this.customerList);
                    return;
                }
                SelfAssignDetailsActivity.this.noDataLL.setVisibility(0);
                return;
            }
            if (this.dialog.isShowing()) {
                this.dialog.dismiss();
            }
            SelfAssignDetailsActivity.this.locationNotFound();
        }
    }

    public class MyLocationListener implements LocationListener {
        @Override // android.location.LocationListener
        public void onProviderDisabled(String str) {
        }

        @Override // android.location.LocationListener
        public void onStatusChanged(String str, int i, Bundle bundle) {
        }

        public MyLocationListener() {
        }

        @Override // android.location.LocationListener
        public void onLocationChanged(Location location) {
            if (location != null) {
                SelfAssignDetailsActivity.this.dbllatitude = Double.valueOf(location.getLatitude());
                SelfAssignDetailsActivity.this.dbllongitude = Double.valueOf(location.getLongitude());
                SelfAssignDetailsActivity.this.hasLocation = true;
            }
        }

        @Override // android.location.LocationListener
        public void onProviderEnabled(String str) {
            Toast.makeText(SelfAssignDetailsActivity.this.context, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_gpsEnabledAlert()), 0).show();
        }
    }

    private void enableGPS() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.context);
        builder.setMessage(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_notAbleCaptureGPSAlert())).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.SelfAssignDetailsActivity.5
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                SelfAssignDetailsActivity.this.startActivity(new Intent("android.settings.SECURITY_SETTINGS"));
                ((Activity) SelfAssignDetailsActivity.this.context).finish();
            }
        });
        builder.show();
    }

    public void locationNotFound() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.context);
        builder.setMessage(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_notAbleCaptureGPSAlert())).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_gpsOKButton()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.SelfAssignDetailsActivity.6
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                SelfAssignDetailsActivity.this.hasLocation = false;
                SelfAssignDetailsActivity.this.locationControlTask = new LocationControl();
                SelfAssignDetailsActivity.this.locationControlTask.execute(new Context[0]);
            }
        });
        builder.setNegativeButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_gpsCancelButton()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.SelfAssignDetailsActivity.7
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
            }
        });
        builder.show();
    }

    public void disPlayRadiusData() {
        if (this.dbllatitude != null && this.dbllongitude != null) {
            this.tempAdapterList = new ArrayList();
            Double.valueOf(0.0d);
            Double valueOf = Double.valueOf(0.0d);
            EditText editText = this.radiusSearch;
            if (editText != null && editText.getText().toString().length() > 0) {
                valueOf = Double.valueOf(Double.parseDouble(this.radiusSearch.getText().toString()));
            }
            this.tempAdapterList.clear();
            for (int i = 0; i < this.adapterList.size(); i++) {
                CustomListDisplayModel customListDisplayModel = this.adapterList.get(i);
                if (customListDisplayModel.getLatitude() != null && !customListDisplayModel.getLongitude().equalsIgnoreCase("NULL") && customListDisplayModel.getLatitude().length() > 0) {
                    double distance = distance(this.dbllatitude, this.dbllongitude, Double.valueOf(Double.parseDouble(customListDisplayModel.getLatitude())), Double.valueOf(Double.parseDouble(customListDisplayModel.getLongitude())), 'K');
                    Double.valueOf(distance).getClass();
                    if (distance <= valueOf.doubleValue()) {
                        this.tempAdapterList.add(customListDisplayModel);
                    }
                }
            }
            if (this.tempAdapterList.size() > 0) {
                this.noDataLL.setVisibility(8);
                CustomerListAdapter customerListAdapter = new CustomerListAdapter(this.mActivity, this.tempAdapterList, 1, this.segmentId, this.isFromassignment, this.isFromOrders, this.isFromComplaint, this.isFromTestimonial);
                this.adapter = customerListAdapter;
                this.customerList.setAdapter(customerListAdapter);
                this.fastScroller.setRecyclerView(this.customerList);
                return;
            }
            this.noDataLL.setVisibility(0);
            return;
        }
        locationNotFound();
    }

    public double distance(Double d, Double d2, Double d3, Double d4, char c) {
        double d5;
        double rad2deg = rad2deg(Math.acos((Math.sin(deg2rad(d.doubleValue())) * Math.sin(deg2rad(d3.doubleValue()))) + (Math.cos(deg2rad(d.doubleValue())) * Math.cos(deg2rad(d3.doubleValue())) * Math.cos(deg2rad(d2.doubleValue() - d4.doubleValue()))))) * 60.0d * 1.1515d;
        if (c == 'K' || c == 'k') {
            d5 = 1.609344d;
        } else {
            if (c != 'N' && c != 'n') {
                if (c == 'M' || c == 'm') {
                    d5 = 1609.344d;
                }
                return Double.parseDouble(twoDForm.format(rad2deg));
            }
            d5 = 0.8684d;
        }
        rad2deg *= d5;
        return Double.parseDouble(twoDForm.format(rad2deg));
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.sa_menu_filter, menu);
        MenuItem findItem = menu.findItem(R.id.filter_sa);
        int i = this.segmentId;
        if (i != 1 && i != 2 && i != 3 && i != 8) {
            findItem.setVisible(false);
        } else {
            findItem.setVisible(true);
        }
        if (this.filtersLL.getVisibility() == 0) {
            findItem.setIcon(R.drawable.ic_filter_release_24);
        }
        MenuItem findItem2 = menu.findItem(R.id.search_only);
        SearchManager searchManager = (SearchManager) getSystemService(FirebaseAnalytics.Event.SEARCH);
        final SearchView searchView = (SearchView) MenuItemCompat.getActionView(findItem2);
        if (searchView != null) {
            searchView.setSearchableInfo(searchManager.getSearchableInfo(getComponentName()));
            searchView.setIconifiedByDefault(false);
        }
        MenuItemCompat.setOnActionExpandListener(findItem2, new MenuItemCompat.OnActionExpandListener() { // from class: com.conceptglobal.pmc.fo.SelfAssignDetailsActivity.8
            @Override // androidx.core.view.MenuItemCompat.OnActionExpandListener
            public boolean onMenuItemActionCollapse(MenuItem menuItem) {
                if (SelfAssignDetailsActivity.this.adapter == null) {
                    return true;
                }
                SelfAssignDetailsActivity.this.adapter.getFilter().filter("");
                searchView.setQuery(ConstantDeclarations.getInstance().getEMPTY(), false);
                return true;
            }

            @Override // androidx.core.view.MenuItemCompat.OnActionExpandListener
            public boolean onMenuItemActionExpand(MenuItem menuItem) {
                if (SelfAssignDetailsActivity.this.adapter == null) {
                    return true;
                }
                SelfAssignDetailsActivity.this.adapter.getFilter().filter("");
                searchView.setQuery(ConstantDeclarations.getInstance().getEMPTY(), false);
                return true;
            }
        });
        searchView.setOnQueryTextListener(new SearchView.OnQueryTextListener() { // from class: com.conceptglobal.pmc.fo.SelfAssignDetailsActivity.9
            @Override // androidx.appcompat.widget.SearchView.OnQueryTextListener
            public boolean onQueryTextChange(String str) {
                if (SelfAssignDetailsActivity.this.adapter == null) {
                    return true;
                }
                SelfAssignDetailsActivity.this.adapter.getFilter().filter(str);
                return true;
            }

            @Override // androidx.appcompat.widget.SearchView.OnQueryTextListener
            public boolean onQueryTextSubmit(String str) {
                if (SelfAssignDetailsActivity.this.adapter == null) {
                    return true;
                }
                SelfAssignDetailsActivity.this.adapter.getFilter().filter(str);
                return true;
            }
        });
        return super.onCreateOptionsMenu(menu);
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == 16908332) {
            finish();
            return true;
        }
        if (itemId == R.id.filter_sa) {
            if (this.filtersLL.getVisibility() == 8) {
                this.filtersLL.setVisibility(0);
                menuItem.setIcon(R.drawable.ic_filter_release_24);
            } else if (this.filtersLL.getVisibility() == 0) {
                this.filtersLL.setVisibility(8);
                menuItem.setIcon(R.drawable.ic_filter_24);
            }
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fetchLocation() {
        if (!this.mLocationUtils.checkPermissions(this)) {
            this.mLocationUtils.requestPermissions(this);
            return;
        }
        try {
            new FetchLocation(this, false, new OnLocationFoundListener() { // from class: com.conceptglobal.pmc.fo.SelfAssignDetailsActivity.10
                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onLocationFound(Location location) {
                }

                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onTimerTimeOut() {
                }

                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onLocationFound(LocationInfo locationInfo) {
                    SelfAssignDetailsActivity.this.dbllatitude = Double.valueOf(locationInfo.getLatitude());
                    SelfAssignDetailsActivity.this.dbllongitude = Double.valueOf(locationInfo.getLongitude());
                    SelfAssignDetailsActivity.this.disPlayRadiusData();
                }
            }, "SelfAssignDetailsActivity");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private class LoadDataTask extends AsyncTask<String, Void, Void> {
        List<CustomListDisplayModel> data;
        String keyword;

        private LoadDataTask() {
            this.data = new ArrayList();
            this.keyword = null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Void doInBackground(String... strArr) {
            int parseInt = Integer.parseInt(strArr[0]);
            int parseInt2 = Integer.parseInt(strArr[1]);
            try {
                this.keyword = strArr[2];
            } catch (IndexOutOfBoundsException unused) {
            }
            int i = SelfAssignDetailsActivity.this.segmentId;
            if (i == 1) {
                this.data = SelfAssignDetailsActivity.this.getListForCustomers(ConstantsPMC.TYPE_FARMER, this.keyword, parseInt, parseInt2);
                return null;
            }
            if (i == 2) {
                this.data = SelfAssignDetailsActivity.this.getListForCustomers(ConstantsPMC.TYPE_Retailer, this.keyword, parseInt, parseInt2);
                return null;
            }
            if (i == 3) {
                this.data = SelfAssignDetailsActivity.this.getListForCustomers(ConstantsPMC.TYPE_Distributor, this.keyword, parseInt, parseInt2);
                return null;
            }
            if (i == 4) {
                this.data = SelfAssignDetailsActivity.this.getdataDb.getCustomTypeList(Queries.getInstance().getVillageNamesListQuery(0));
                return null;
            }
            if (i == 5) {
                this.data = SelfAssignDetailsActivity.this.getdataDb.getCustomTypeList(Queries.getInstance().getTerritoryNamesListQuery(0));
                return null;
            }
            if (i == 8) {
                this.data = SelfAssignDetailsActivity.this.getListForCustomers("Planter", this.keyword, parseInt, parseInt2);
                return null;
            }
            if (i != 18) {
                return null;
            }
            this.data = SelfAssignDetailsActivity.this.getListForCustomers("VCP", this.keyword, parseInt, parseInt2);
            return null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Void r2) {
            super.onPostExecute((LoadDataTask) r2);
            if (TextUtils.isEmpty(this.keyword)) {
                SelfAssignDetailsActivity.this.refreshAdapter(this.data);
            } else {
                SelfAssignDetailsActivity.this.resetDataAndNofityAdapter(this.data);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshAdapter(List<CustomListDisplayModel> list) {
        this.progressll.setVisibility(8);
        this.adapter.showLoading(false);
        this.loaderrl.setVisibility(8);
        this.adapterList.addAll(list);
        if (this.adapterList.size() > 0) {
            this.noDataLL.setVisibility(8);
        } else {
            this.noDataLL.setVisibility(0);
        }
        this.adapter.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetDataAndNofityAdapter(List<CustomListDisplayModel> list) {
        if (list != null && list.size() > 0) {
            this.noDataLL.setVisibility(8);
            this.adapterList.clear();
            this.loaderrl.setVisibility(8);
            this.customerList.setVisibility(0);
            this.fastScroller.setVisibility(0);
            this.clearbtn.setVisibility(0);
            this.searchbtn.setEnabled(true);
            this.adapterList.addAll(list);
            this.adapter.notifyDataSetChanged();
            this.customerList.removeOnScrollListener(this.scrollListener);
            return;
        }
        this.noDataLL.setVisibility(0);
    }

    private class SearchDataTask extends AsyncTask<String, Void, Void> {
        List<CustomListDisplayModel> data;

        private SearchDataTask() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Void doInBackground(String... strArr) {
            String str = SelfAssignDetailsActivity.this.getCustTypeQuery() + " " + strArr[0];
            try {
                if (SelfAssignDetailsActivity.this.segmentId != 1 && SelfAssignDetailsActivity.this.segmentId != 8) {
                    if (SelfAssignDetailsActivity.this.segmentId == 2 || SelfAssignDetailsActivity.this.segmentId == 3) {
                        this.data = GetDataFromDB.getInstance().getRetailerBindDataSAFilter(str, true);
                    }
                    return null;
                }
                this.data = GetDataFromDB.getInstance().getFarmerBindData(str, true);
                return null;
            } catch (Exception unused) {
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Void r13) {
            super.onPostExecute((SearchDataTask) r13);
            SelfAssignDetailsActivity.this.adapterList.clear();
            SelfAssignDetailsActivity.this.adapterList.addAll(this.data);
            SelfAssignDetailsActivity.this.loaderrl.setVisibility(8);
            SelfAssignDetailsActivity.this.selectlayout.setVisibility(0);
            SelfAssignDetailsActivity.this.customerList.setVisibility(0);
            SelfAssignDetailsActivity.this.fastScroller.setVisibility(0);
            try {
                if (SelfAssignDetailsActivity.this.radiusSearch.getText().toString() == null || SelfAssignDetailsActivity.this.radiusSearch.getText().toString().length() <= 0) {
                    if (SelfAssignDetailsActivity.this.adapterList.size() > 0) {
                        SelfAssignDetailsActivity.this.noDataLL.setVisibility(8);
                        SelfAssignDetailsActivity.this.adapter = new CustomerListAdapter(SelfAssignDetailsActivity.this.mActivity, SelfAssignDetailsActivity.this.adapterList, 1, SelfAssignDetailsActivity.this.segmentId, SelfAssignDetailsActivity.this.isFromassignment, SelfAssignDetailsActivity.this.isFromOrders, SelfAssignDetailsActivity.this.isFromComplaint, SelfAssignDetailsActivity.this.isFromTestimonial);
                        SelfAssignDetailsActivity.this.customerList.setAdapter(SelfAssignDetailsActivity.this.adapter);
                        SelfAssignDetailsActivity.this.fastScroller.setRecyclerView(SelfAssignDetailsActivity.this.customerList);
                        SelfAssignDetailsActivity.this.customerList.removeOnScrollListener(SelfAssignDetailsActivity.this.scrollListener);
                    } else {
                        SelfAssignDetailsActivity.this.noDataLL.setVisibility(0);
                    }
                } else {
                    try {
                        SelfAssignDetailsActivity.this.hasLocation = false;
                        if (SelfAssignDetailsActivity.this.adapterList == null || SelfAssignDetailsActivity.this.adapterList.size() <= 0) {
                            SelfAssignDetailsActivity.this.noDataLL.setVisibility(0);
                        } else {
                            SelfAssignDetailsActivity.this.fetchLocation();
                        }
                    } catch (Exception e) {
                        PLog.e("SelfAssignDetailsActivity", e);
                    }
                }
                SelfAssignDetailsActivity.this.addStateQuery = "";
                SelfAssignDetailsActivity.this.addDistrictQuery = "";
                SelfAssignDetailsActivity.this.addTalukaQuery = "";
                SelfAssignDetailsActivity.this.addLocationQuery = "";
            } catch (Exception e2) {
                PLog.e("SelfAssignDetailsActivity", e2);
            }
        }
    }
}

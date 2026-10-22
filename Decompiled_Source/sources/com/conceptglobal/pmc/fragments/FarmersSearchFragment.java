package com.conceptglobal.pmc.fragments;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.app.SearchManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Point;
import android.graphics.drawable.ColorDrawable;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.Editable;
import android.text.InputFilter;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.SearchView;
import androidx.core.view.MenuItemCompat;
import androidx.fragment.app.Fragment;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.conceptglobal.ifastscroll.FastScroller;
import com.conceptglobal.pmc.adapter.AddFarmerDraftListAdapter;
import com.conceptglobal.pmc.asynctask.SendRequestToServerAsync;
import com.conceptglobal.pmc.common.Astat;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.common.EndlessRecyclerViewScrollListener;
import com.conceptglobal.pmc.common.ListPopupOne;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.DataBaseHandler;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.database.InsertDataIntoDB;
import com.conceptglobal.pmc.fo.SAAttributeActivity;
import com.conceptglobal.pmc.fo.SAAttributeActivity_FBF;
import com.conceptglobal.pmc.fo.SurveyActivity;
import com.conceptglobal.pmc.interfaces.IFragmentToActivity;
import com.conceptglobal.pmc.interfaces.OnCompleteListener;
import com.conceptglobal.pmc.interfaces.OnLocationFoundListener;
import com.conceptglobal.pmc.locationprovider.FetchLocation;
import com.conceptglobal.pmc.model.DashboardListModel;
import com.conceptglobal.pmc.model.DynamicFields;
import com.conceptglobal.pmc.model.FarmerMobileDetails;
import com.conceptglobal.pmc.model.LocationInfo;
import com.conceptglobal.pmc.registration.DraftList;
import com.conceptglobal.pmc.utils.ConstantDeclarations;
import com.conceptglobal.pmc.utils.LabelUtils;
import com.conceptglobal.pmc.utils.LocationUtils;
import com.conceptglobal.pmc.utils.PLog;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import com.conceptglobal.pmcdeepakfertilizers.R;
import com.github.amlcurran.showcaseview.ShowcaseView;
import com.github.amlcurran.showcaseview.targets.Target;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.gson.Gson;
import com.squareup.picasso.Picasso;
import java.io.Reader;
import java.io.StringReader;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class FarmersSearchFragment extends Fragment implements View.OnClickListener {
    private static final int GETNEWACTIVITY = 2;
    private static final String TAG = "FarmersSearchFragment";
    private static FarmersSearchFragment mFragment;
    private static Menu optionsMenu;
    public static DecimalFormat twoDForm = new DecimalFormat("#.##");
    private EditText acreagesGreaterthanSearch;
    private EditText acreagessLeethanSearch;
    private TextView btnClear;
    private TextView btnGo;
    private ImageView clearbtn;
    private EditText cropSearch;
    private Double dbllatitude;
    private Double dbllongitude;
    private Dialog dialog;
    private TextView dialogMsgTxtview;
    private EditText districtSearch;
    private List<DashboardListModel> draftList;
    StringBuilder dynamicColumnnames;
    private String farmerType;
    private FastScroller fastScroller;
    MenuItem filterItem;
    private LinearLayout filtersLL;
    private EditText irrigationTypeSearch;
    private String isFrom;
    private boolean isFromSelfAssignment;
    private boolean isGoBtnClicked;
    private RecyclerView list;
    private RelativeLayout loaderrl;
    private TextView loadertxt;
    private LocationControl locationControlTask;
    private LocationManager locationMgr;
    private EditText locationSearch;
    private Activity mActivity;
    private AddFarmerDraftListAdapter mAdapter;
    private IFragmentToActivity mCallback;
    private Context mContext;
    private LocalBroadcastReceiver mLocalBroadcastReceiver;
    private EditText mandalSearch;
    private LocationListener myLocationListener;
    LinearLayout no_data_found_ll;
    LinearLayout progressll;
    String query;
    private EditText radiusSearch;
    private RadioGroup rbDisplayType;
    RadioButton rbRROKAM;
    private RadioButton rb_All;
    private RadioButton rb_Favourite;
    private RadioButton rb_tg;
    EndlessRecyclerViewScrollListener scrollListener;
    MenuItem searchMenuItem;
    private Button searchbtn;
    private EditText searchkeyword;
    private RelativeLayout searchrl;
    private int segmentId;
    private EditText segmentSearch;
    private ShowcaseView showcaseView;
    private EditText stateSearch;
    private List<DashboardListModel> tempGrowersList;
    private TextView tvCropId;
    private TextView tvDistrictId;
    private TextView tvIrrigationTypeId;
    private TextView tvLocationId;
    private TextView tvMandalId;
    TextView tvRadiusDetails;
    private TextView tvSegmentId;
    private TextView tvStateId;
    MenuItem weatherItem;
    private String addCropQuery = "";
    private String addStateQuery = "";
    private String addDistrictQuery = "";
    private String addTalukaQuery = "";
    private String addLocationQuery = "";
    private String addRadiusQuery = "";
    private String addSegmentQuery = "";
    private String addIrrigationQuery = "";
    private String addAcersGreaterthanQuery = "";
    private String addAcersLessthanQuery = "";
    private boolean hasLocation = false;
    private String module = null;
    private ArrayList<DynamicFields> attributesArry = null;
    private int counter = 0;
    private LocationUtils mLocationUtils = new LocationUtils();
    int farmersThreshold = 0;
    int farmersCount = 0;
    private String tag = TAG;
    public String fromFavourites = "";
    public String parentSaarthieFarmerID = "";
    private int distanceInKiloMeters = 1;
    private final TextWatcher stateChanged = new TextWatcher() { // from class: com.conceptglobal.pmc.fragments.FarmersSearchFragment.1
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
            FarmersSearchFragment.this.tvDistrictId.setText("");
            FarmersSearchFragment.this.districtSearch.setText("");
            FarmersSearchFragment.this.tvMandalId.setText("");
            FarmersSearchFragment.this.mandalSearch.setText("");
            FarmersSearchFragment.this.tvLocationId.setText("");
            FarmersSearchFragment.this.locationSearch.setText("");
        }
    };
    private final TextWatcher districtChanged = new TextWatcher() { // from class: com.conceptglobal.pmc.fragments.FarmersSearchFragment.2
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
            FarmersSearchFragment.this.tvMandalId.setText("");
            FarmersSearchFragment.this.mandalSearch.setText("");
            FarmersSearchFragment.this.tvLocationId.setText("");
            FarmersSearchFragment.this.locationSearch.setText("");
        }
    };
    private final TextWatcher mandalChanged = new TextWatcher() { // from class: com.conceptglobal.pmc.fragments.FarmersSearchFragment.3
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
            FarmersSearchFragment.this.tvLocationId.setText("");
            FarmersSearchFragment.this.locationSearch.setText("");
        }
    };
    private OnCompleteListener getFarmerDetails = new OnCompleteListener() { // from class: com.conceptglobal.pmc.fragments.FarmersSearchFragment.15
        @Override // com.conceptglobal.pmc.interfaces.OnCompleteListener
        public void onComplete(String str, Exception exc) {
            if (exc != null || str == null || str.length() <= 5) {
                return;
            }
            try {
                JSONObject jSONObject = new JSONObject(str);
                if (jSONObject.getInt("DataCount") == 0) {
                    FarmersSearchFragment.this.showNoDataAvailableDialog("No Farmer data found.");
                } else {
                    JSONArray jSONArray = jSONObject.getJSONArray("Data");
                    if (jSONArray != null && jSONArray.length() > 0) {
                        FarmersSearchFragment.this.showDetailsDialog((FarmerMobileDetails) new Gson().fromJson((Reader) new StringReader(jSONObject.getJSONArray("Data").getString(0)), FarmerMobileDetails.class));
                    }
                }
            } catch (Exception e) {
                PLog.e(" Get User details", e, 0);
            }
        }
    };
    private BroadcastReceiver mobileSearchReceiver = new BroadcastReceiver() { // from class: com.conceptglobal.pmc.fragments.FarmersSearchFragment.17
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals(ConstantsPMC.MOBILE_SEARCH)) {
                FarmersSearchFragment.this.showMibileSearchDialog(intent.getStringExtra("MobileNumber"));
            }
        }
    };

    private double deg2rad(double d) {
        return (d * 3.141592653589793d) / 180.0d;
    }

    private double rad2deg(double d) {
        return (d * 180.0d) / 3.141592653589793d;
    }

    static /* synthetic */ int access$2308(FarmersSearchFragment farmersSearchFragment) {
        int i = farmersSearchFragment.counter;
        farmersSearchFragment.counter = i + 1;
        return i;
    }

    public static FarmersSearchFragment newInstance(String str) {
        mFragment = new FarmersSearchFragment();
        Bundle bundle = new Bundle();
        bundle.putString("farmerType", str);
        mFragment.setArguments(bundle);
        return mFragment;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.farmers_list, viewGroup, false);
        initialization(inflate);
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mActivity = getActivity();
        this.mContext = getActivity();
        this.farmerType = getArguments().getString("farmerType");
        setHasOptionsMenu(true);
        this.isFrom = "ALL";
        Bundle extras = getActivity().getIntent().getExtras();
        if (extras != null) {
            this.module = extras.getString("module");
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.FarmerSearchLocationPermissionGranted");
        intentFilter.addAction("android.intent.action.FarmerSearchLocationPermissionDenied");
        intentFilter.addAction("android.intent.action.FarmerSearchGPSTurnedOnResult");
        intentFilter.addAction("android.intent.action.FarmerSearchGPSNotTurnedOnResult");
        this.mLocalBroadcastReceiver = new LocalBroadcastReceiver();
        LocalBroadcastManager.getInstance(getActivity()).registerReceiver(this.mLocalBroadcastReceiver, intentFilter);
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
    }

    private void initialization(View view) {
        this.filtersLL = (LinearLayout) view.findViewById(R.id.filters);
        this.progressll = (LinearLayout) view.findViewById(R.id.progressll);
        this.no_data_found_ll = (LinearLayout) view.findViewById(R.id.no_data_found_ll);
        EditText editText = (EditText) view.findViewById(R.id.ed_CropSearch);
        this.cropSearch = editText;
        editText.setHint(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_cropFilterText()));
        EditText editText2 = (EditText) view.findViewById(R.id.ed_stateSearch);
        this.stateSearch = editText2;
        editText2.setHint(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_stateFilterText()));
        EditText editText3 = (EditText) view.findViewById(R.id.ed_mandalSearch);
        this.mandalSearch = editText3;
        editText3.setHint(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_talukaFilterText()));
        EditText editText4 = (EditText) view.findViewById(R.id.ed_districtSearch);
        this.districtSearch = editText4;
        editText4.setHint(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_districtFilterText()));
        EditText editText5 = (EditText) view.findViewById(R.id.ed_LocationSearch);
        this.locationSearch = editText5;
        editText5.setHint(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_villageFilterText()));
        EditText editText6 = (EditText) view.findViewById(R.id.ed_RadiusSearch);
        this.radiusSearch = editText6;
        editText6.setVisibility(8);
        this.searchkeyword = (EditText) view.findViewById(R.id.searchkeyword);
        this.radiusSearch.setHint(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_radiusFilterText()));
        this.tvRadiusDetails = (TextView) view.findViewById(R.id.tvRadiusDetails);
        EditText editText7 = (EditText) view.findViewById(R.id.ed_SegmentSearch);
        this.segmentSearch = editText7;
        editText7.setHint(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_SegmentFilterText()));
        EditText editText8 = (EditText) view.findViewById(R.id.ed_AcersLessthanSearch);
        this.acreagessLeethanSearch = editText8;
        editText8.setHint(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_AcersLeethanFilterText()));
        EditText editText9 = (EditText) view.findViewById(R.id.ed_AcersGreaterthanSearch);
        this.acreagesGreaterthanSearch = editText9;
        editText9.setHint(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_AcesrGreaterthanFilterText()));
        EditText editText10 = (EditText) view.findViewById(R.id.ed_IrrigationSearch);
        this.irrigationTypeSearch = editText10;
        editText10.setHint(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_IrrigationFilterText()));
        this.loadertxt = (TextView) view.findViewById(R.id.loadertxt);
        this.tvCropId = (TextView) view.findViewById(R.id.tvCropId);
        this.tvStateId = (TextView) view.findViewById(R.id.tvStateId);
        this.tvMandalId = (TextView) view.findViewById(R.id.tvMandalId);
        this.tvDistrictId = (TextView) view.findViewById(R.id.tvDistrictId);
        this.tvLocationId = (TextView) view.findViewById(R.id.tvLocationId);
        this.tvSegmentId = (TextView) view.findViewById(R.id.tvSegmentId);
        this.tvIrrigationTypeId = (TextView) view.findViewById(R.id.tvIrrigationId);
        this.searchbtn = (Button) view.findViewById(R.id.searchbtn);
        this.loaderrl = (RelativeLayout) view.findViewById(R.id.loaderrl);
        this.searchrl = (RelativeLayout) view.findViewById(R.id.searchrl);
        this.clearbtn = (ImageView) view.findViewById(R.id.clearbtn);
        this.rb_All = (RadioButton) view.findViewById(R.id.rbAll);
        this.rb_Favourite = (RadioButton) view.findViewById(R.id.rbFavourite);
        this.rb_tg = (RadioButton) view.findViewById(R.id.rbTG);
        TextView textView = (TextView) view.findViewById(R.id.farmer_lsit_goBtn);
        this.btnGo = textView;
        textView.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_goFilterText()));
        TextView textView2 = (TextView) view.findViewById(R.id.farmer_lsit_ClearBtn);
        this.btnClear = textView2;
        textView2.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_clearFilterText()));
        this.searchrl.setVisibility(8);
        this.rbDisplayType = (RadioGroup) view.findViewById(R.id.rgFavourites);
        if (this.farmerType.equalsIgnoreCase(ConstantsPMC.TYPE_FARMER) || this.farmerType.equalsIgnoreCase("Village")) {
            this.rbDisplayType.setVisibility(0);
        } else {
            this.rbDisplayType.setVisibility(8);
        }
        OnDisplayTypeSelectCheckedChangeListener(this.rbDisplayType);
        this.rbRROKAM = (RadioButton) view.findViewById(R.id.rbROPKAM);
        ((RadioButton) view.findViewById(R.id.rbFavourite)).setText(ConstantsPMC.FELLOW_FARMER);
        this.rbRROKAM.setText(getResources().getString(R.string.sarath_farmer));
        if (this.farmerType.equalsIgnoreCase("Village")) {
            this.rbRROKAM.setText("Focussed");
            this.rb_Favourite.setVisibility(8);
            this.rb_tg.setVisibility(8);
        }
        this.cropSearch.setOnClickListener(this);
        this.stateSearch.setOnClickListener(this);
        this.mandalSearch.setOnClickListener(this);
        this.districtSearch.setOnClickListener(this);
        this.segmentSearch.setOnClickListener(this);
        this.irrigationTypeSearch.setOnClickListener(this);
        this.searchbtn.setOnClickListener(this);
        this.clearbtn.setOnClickListener(this);
        this.stateSearch.addTextChangedListener(this.stateChanged);
        this.districtSearch.addTextChangedListener(this.districtChanged);
        this.mandalSearch.addTextChangedListener(this.mandalChanged);
        this.locationSearch.setOnClickListener(this);
        this.radiusSearch.setOnClickListener(this);
        this.btnGo.setOnClickListener(this);
        this.btnClear.setOnClickListener(this);
        RecyclerView recyclerView = (RecyclerView) view.findViewById(R.id.list);
        this.list = recyclerView;
        recyclerView.setHasFixedSize(true);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getActivity());
        linearLayoutManager.setOrientation(1);
        this.list.setLayoutManager(linearLayoutManager);
        this.fromFavourites = ConstantsPMC.ALL;
        this.fastScroller = (FastScroller) view.findViewById(R.id.fastscroll);
        this.draftList = new ArrayList();
        this.segmentId = ((DraftList) getActivity()).segmentId;
        this.isFromSelfAssignment = ((DraftList) getActivity()).isFromSelfAssignment;
        try {
            this.dynamicColumnnames = new StringBuilder();
            if (this.farmerType.equalsIgnoreCase("UnVerifiedFarmer")) {
                this.attributesArry = GetDataFromDB.getInstance().getDynanicFieldsFirDraft(Queries.getInstance().gettingDraftColunNames(ConstantsPMC.TYPE_FARMER));
            } else {
                this.attributesArry = GetDataFromDB.getInstance().getDynanicFieldsFirDraft(Queries.getInstance().gettingDraftColunNames(this.farmerType.equals(ConstantsPMC.TYPE_Retailer) ? "Dealer" : this.farmerType));
            }
            for (int i = 0; i < this.attributesArry.size(); i++) {
                this.dynamicColumnnames.append(this.attributesArry.get(i).getDbColumnName() + ",");
            }
            this.dynamicColumnnames.append("Latitude,");
            this.dynamicColumnnames.append("Longitude");
            this.query = this.dynamicColumnnames.toString();
            if (this.farmerType.equalsIgnoreCase("Village")) {
                this.acreagessLeethanSearch.setVisibility(8);
                this.acreagesGreaterthanSearch.setVisibility(8);
                this.segmentSearch.setVisibility(8);
                this.irrigationTypeSearch.setVisibility(8);
            }
            AddFarmerDraftListAdapter addFarmerDraftListAdapter = new AddFarmerDraftListAdapter(this.mContext, this.draftList, this.farmerType, "0", this.isFrom, ((DraftList) getActivity()).segmentId, ((DraftList) getActivity()).isFromSelfAssignment, ((DraftList) getActivity()).isFromTestmonial, ((DraftList) getActivity()).isFromFeedBack, ((DraftList) getActivity()).isFromSurvey, ((DraftList) getActivity()).isFromTodo, this);
            this.mAdapter = addFarmerDraftListAdapter;
            this.list.setAdapter(addFarmerDraftListAdapter);
            this.fastScroller.setRecyclerView(this.list);
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
            if (this.farmersCount > this.farmersThreshold && !this.isFromSelfAssignment) {
                this.loadertxt.setText("Farmers count is more than " + this.farmersThreshold + ", please wait while loading data...");
            }
            loadMore("-1", "50");
        } catch (Exception e) {
            PLog.e(TAG, e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadMore(String str, String str2) {
        if (this.isGoBtnClicked) {
            this.isGoBtnClicked = false;
            return;
        }
        this.mAdapter.showLoading(true);
        this.mAdapter.notifyDataSetChanged();
        if (this.isFromSelfAssignment) {
            try {
                this.distanceInKiloMeters = GetDataFromDB.getInstance().getIntValue(Queries.getInstance().getItemValue("SAFarmerRadius"));
                this.tvRadiusDetails.setVisibility(0);
                this.tvRadiusDetails.setText(this.farmerType + "'s within " + this.distanceInKiloMeters + " KM’s only visible here");
                fetchLocationFilterCustomers();
                return;
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }
        new LoadDataTask().execute(str, str2);
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == 16908332) {
            this.mActivity.finish();
            return true;
        }
        if (itemId == R.id.filter_cis) {
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

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        menuInflater.inflate(R.menu.farmer_retailer_search, menu);
        optionsMenu = menu;
        if (this.filtersLL.getVisibility() == 0) {
            MenuItem findItem = menu.findItem(R.id.filter_cis);
            this.filterItem = findItem;
            findItem.setIcon(R.drawable.ic_filter_release_24);
        }
        if (this.farmerType.equalsIgnoreCase("UnVerifiedFarmer")) {
            MenuItem findItem2 = menu.findItem(R.id.filter_cis);
            this.filterItem = findItem2;
            findItem2.setIcon(R.drawable.ic_filter_release_24);
            this.filterItem.setVisible(false);
        }
        this.searchMenuItem = menu.findItem(R.id.search_cis);
        SearchManager searchManager = (SearchManager) this.mActivity.getSystemService(FirebaseAnalytics.Event.SEARCH);
        final SearchView searchView = (SearchView) MenuItemCompat.getActionView(this.searchMenuItem);
        if (searchView != null) {
            searchView.setSearchableInfo(searchManager.getSearchableInfo(this.mActivity.getComponentName()));
            searchView.setIconifiedByDefault(false);
        }
        MenuItemCompat.setOnActionExpandListener(this.searchMenuItem, new MenuItemCompat.OnActionExpandListener() { // from class: com.conceptglobal.pmc.fragments.FarmersSearchFragment.4
            @Override // androidx.core.view.MenuItemCompat.OnActionExpandListener
            public boolean onMenuItemActionCollapse(MenuItem menuItem) {
                if (FarmersSearchFragment.this.mAdapter == null) {
                    return true;
                }
                FarmersSearchFragment.this.mAdapter.getFilter().filter("");
                searchView.setQuery(Astat.KEY_EMPTY, false);
                return true;
            }

            @Override // androidx.core.view.MenuItemCompat.OnActionExpandListener
            public boolean onMenuItemActionExpand(MenuItem menuItem) {
                if (FarmersSearchFragment.this.mAdapter == null) {
                    return true;
                }
                FarmersSearchFragment.this.mAdapter.getFilter().filter("");
                searchView.setQuery(Astat.KEY_EMPTY, false);
                return true;
            }
        });
        searchView.setOnQueryTextListener(new SearchView.OnQueryTextListener() { // from class: com.conceptglobal.pmc.fragments.FarmersSearchFragment.5
            @Override // androidx.appcompat.widget.SearchView.OnQueryTextListener
            public boolean onQueryTextChange(String str) {
                if (FarmersSearchFragment.this.mAdapter == null) {
                    return true;
                }
                FarmersSearchFragment.this.mAdapter.getFilter().filter(str);
                return true;
            }

            @Override // androidx.appcompat.widget.SearchView.OnQueryTextListener
            public boolean onQueryTextSubmit(String str) {
                if (FarmersSearchFragment.this.mAdapter == null) {
                    return true;
                }
                FarmersSearchFragment.this.mAdapter.getFilter().filter(str);
                return true;
            }
        });
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.clearbtn /* 2131296505 */:
                this.searchkeyword.setText((CharSequence) null);
                this.clearbtn.setVisibility(8);
                if (this.farmersCount > this.farmersThreshold) {
                    loadMore("-1", "50");
                    break;
                } else {
                    loadMore("-1", "" + this.farmersThreshold);
                    break;
                }
            case R.id.ed_CropSearch /* 2131296575 */:
                try {
                    ListPopupOne listPopupOne = new ListPopupOne(getActivity(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectText()) + " " + GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_cropFilterText()), Queries.getInstance().getCropNames(), view, this.tvCropId);
                    listPopupOne.getWindow().getAttributes().windowAnimations = R.style.PauseDialogAnimation;
                    listPopupOne.show();
                    listPopupOne.getWindow().setSoftInputMode(3);
                    break;
                } catch (Exception e) {
                    PLog.e(TAG, e);
                    return;
                }
            case R.id.ed_IrrigationSearch /* 2131296578 */:
                try {
                    ListPopupOne listPopupOne2 = new ListPopupOne(getActivity(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectText()) + " " + GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_IrrigationFilterText()), Queries.getInstance().getIrrigationTypes(), view, this.tvIrrigationTypeId);
                    listPopupOne2.getWindow().getAttributes().windowAnimations = R.style.PauseDialogAnimation;
                    listPopupOne2.show();
                    listPopupOne2.getWindow().setSoftInputMode(3);
                    break;
                } catch (Exception e2) {
                    PLog.e(TAG, e2);
                    return;
                }
            case R.id.ed_LocationSearch /* 2131296579 */:
                if (this.tvMandalId.getText().toString().length() != 0 && this.tvDistrictId.getText().toString().length() != 0 && this.tvStateId.getText().toString().length() != 0) {
                    try {
                        ListPopupOne listPopupOne3 = new ListPopupOne(getActivity(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectText()) + " " + GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_villageText()), Queries.getInstance().gettinVillages(this.tvMandalId.getText().toString()), view, this.tvLocationId);
                        listPopupOne3.getWindow().getAttributes().windowAnimations = R.style.PauseDialogAnimation;
                        listPopupOne3.show();
                        listPopupOne3.getWindow().setSoftInputMode(3);
                        break;
                    } catch (Exception e3) {
                        PLog.e(TAG, e3);
                        return;
                    }
                } else {
                    Toast.makeText(getActivity().getApplicationContext(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_plsSelMandalFilter()), 1).show();
                    break;
                }
                break;
            case R.id.ed_SegmentSearch /* 2131296581 */:
                try {
                    ListPopupOne listPopupOne4 = new ListPopupOne(getActivity(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectText()) + " " + GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_SegmentFilterText()), Queries.getInstance().getSegmentTypes(), view, this.tvSegmentId);
                    listPopupOne4.getWindow().getAttributes().windowAnimations = R.style.PauseDialogAnimation;
                    listPopupOne4.show();
                    listPopupOne4.getWindow().setSoftInputMode(3);
                    break;
                } catch (Exception e4) {
                    PLog.e(TAG, e4);
                    return;
                }
            case R.id.ed_districtSearch /* 2131296585 */:
                if (this.tvStateId.getText().toString().length() != 0) {
                    try {
                        ListPopupOne listPopupOne5 = new ListPopupOne(getActivity(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectText()) + " " + GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_districtText()), Queries.getInstance().gettingDistricts(this.tvStateId.getText().toString()), view, this.tvDistrictId);
                        listPopupOne5.getWindow().getAttributes().windowAnimations = R.style.PauseDialogAnimation;
                        listPopupOne5.show();
                        listPopupOne5.getWindow().setSoftInputMode(3);
                        break;
                    } catch (Exception e5) {
                        PLog.e(TAG, e5);
                        return;
                    }
                } else {
                    Toast.makeText(getActivity().getApplicationContext(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_plsSelStateFilter()), 1).show();
                    break;
                }
            case R.id.ed_mandalSearch /* 2131296586 */:
                if (this.tvDistrictId.getText().toString().length() != 0 && this.tvStateId.getText().toString().length() != 0) {
                    try {
                        ListPopupOne listPopupOne6 = new ListPopupOne(getActivity(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectText()) + " " + GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_talukaFilterText()), Queries.getInstance().gettingMandals(this.tvDistrictId.getText().toString()), view, this.tvMandalId);
                        listPopupOne6.getWindow().getAttributes().windowAnimations = R.style.PauseDialogAnimation;
                        listPopupOne6.show();
                        listPopupOne6.getWindow().setSoftInputMode(3);
                        break;
                    } catch (Exception e6) {
                        PLog.e(TAG, e6);
                        return;
                    }
                } else {
                    Toast.makeText(getActivity().getApplicationContext(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_plsSelDistrictFilter()), 1).show();
                    break;
                }
                break;
            case R.id.ed_stateSearch /* 2131296587 */:
                try {
                    ListPopupOne listPopupOne7 = new ListPopupOne(getActivity(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectText()) + " " + GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_stateText()), Queries.getInstance().gettingStates(), view, this.tvStateId);
                    listPopupOne7.getWindow().getAttributes().windowAnimations = R.style.PauseDialogAnimation;
                    listPopupOne7.show();
                    listPopupOne7.getWindow().setSoftInputMode(3);
                    break;
                } catch (Exception e7) {
                    PLog.e(TAG, e7);
                    return;
                }
            case R.id.farmer_lsit_ClearBtn /* 2131296743 */:
                this.cropSearch.setText("");
                this.stateSearch.setText("");
                this.districtSearch.setText("");
                this.mandalSearch.setText("");
                this.locationSearch.setText("");
                this.radiusSearch.setText("");
                this.segmentSearch.setText("");
                this.irrigationTypeSearch.setText("");
                this.acreagesGreaterthanSearch.setText("");
                this.acreagessLeethanSearch.setText("");
                this.cropSearch.setHint(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_cropFilterText()));
                this.stateSearch.setHint(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_stateFilterText()));
                this.districtSearch.setHint(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_districtFilterText()));
                this.mandalSearch.setHint(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_talukaFilterText()));
                this.locationSearch.setHint(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_villageFilterText()));
                this.radiusSearch.setHint(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_radiusFilterText()));
                this.segmentSearch.setHint(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_SegmentFilterText()));
                this.irrigationTypeSearch.setHint(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_IrrigationFilterText()));
                this.acreagesGreaterthanSearch.setHint(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_AcesrGreaterthanFilterText()));
                this.acreagessLeethanSearch.setHint(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_AcersLeethanFilterText()));
                this.tvStateId.setText("");
                this.tvCropId.setText("");
                this.tvDistrictId.setText("");
                this.tvMandalId.setText("");
                this.tvLocationId.setText("");
                this.tvIrrigationTypeId.setText("");
                this.tvSegmentId.setText("");
                try {
                    this.query = this.dynamicColumnnames.toString();
                    this.draftList.clear();
                    new ArrayList();
                    this.fastScroller.setRecyclerView(this.list);
                    loadMore("-1", "50");
                    break;
                } catch (Exception e8) {
                    PLog.e(TAG, e8);
                    return;
                }
            case R.id.farmer_lsit_goBtn /* 2131296744 */:
                this.isGoBtnClicked = true;
                this.rb_All.performClick();
                if (this.tvCropId.getText().toString().length() != 0) {
                    this.addCropQuery = " and fcm.cropId = " + this.tvCropId.getText().toString();
                }
                if (this.tvSegmentId.getText().toString().length() != 0) {
                    this.addSegmentQuery = " and fm.FarmerSegmentation like '%" + this.tvSegmentId.getText().toString() + "'";
                }
                if (this.tvIrrigationTypeId.getText().toString().length() != 0) {
                    this.addIrrigationQuery = " and fm.LandMark = '" + this.tvIrrigationTypeId.getText().toString() + "'";
                }
                if (this.acreagesGreaterthanSearch.getText().toString().length() != 0) {
                    this.addAcersGreaterthanQuery = "  sum(fcm.Acreages) > " + this.acreagesGreaterthanSearch.getText().toString();
                }
                if (this.acreagessLeethanSearch.getText().toString().length() != 0) {
                    this.addAcersLessthanQuery = "  sum(fcm.Acreages) < " + this.acreagessLeethanSearch.getText().toString();
                }
                if (this.tvStateId.getText().toString().length() != 0) {
                    this.addStateQuery = " and fm.StateID = " + this.tvStateId.getText().toString();
                }
                if (this.tvDistrictId.getText().toString().length() != 0) {
                    this.addDistrictQuery = " and fm.DistrictID = " + this.tvDistrictId.getText().toString();
                }
                if (this.tvMandalId.getText().toString().length() != 0) {
                    this.addTalukaQuery = " and fm.MandalID= " + this.tvMandalId.getText().toString();
                }
                if (this.tvLocationId.getText().toString().length() != 0 && this.locationSearch.getText().toString().length() != 0) {
                    this.addLocationQuery = " and (fm.VillageId = '" + this.tvLocationId.getText().toString() + "')";
                }
                this.searchrl.setVisibility(8);
                this.draftList.clear();
                this.mAdapter.notifyDataSetChanged();
                this.list.setVisibility(8);
                this.fastScroller.setVisibility(8);
                new SearchDataTask().execute(this.dynamicColumnnames.toString());
                break;
            case R.id.searchbtn /* 2131297228 */:
                String str = "" + ((Object) this.searchkeyword.getText());
                if (TextUtils.isEmpty(str)) {
                    Toast.makeText(getActivity(), "Please enter your search keyword and click on button", 0).show();
                    break;
                } else if (this.farmersCount > this.farmersThreshold) {
                    ((InputMethodManager) getActivity().getSystemService("input_method")).hideSoftInputFromWindow(this.searchbtn.getWindowToken(), 0);
                    this.list.setVisibility(8);
                    this.fastScroller.setVisibility(8);
                    this.clearbtn.setVisibility(8);
                    this.searchbtn.setEnabled(false);
                    new LoadDataTask().execute("-1", "0", str);
                    break;
                } else {
                    this.mAdapter.getFilter().filter(str);
                    break;
                }
        }
    }

    public void loadFelloFarmerData(String str) {
        this.fromFavourites = ConstantsPMC.FELLOW_FARMER;
        this.parentSaarthieFarmerID = str;
        this.rb_Favourite.performClick();
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
                FarmersSearchFragment.this.dbllatitude = Double.valueOf(location.getLatitude());
                FarmersSearchFragment.this.dbllongitude = Double.valueOf(location.getLongitude());
                FarmersSearchFragment.this.hasLocation = true;
            }
        }

        @Override // android.location.LocationListener
        public void onProviderEnabled(String str) {
            Toast.makeText(FarmersSearchFragment.this.getActivity().getApplicationContext(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_gpsEnabledAlert()), 0).show();
        }
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

    class DecimalDigitsInputFilter implements InputFilter {
        Pattern mPattern;

        public DecimalDigitsInputFilter(int i, int i2) {
            StringBuilder sb = new StringBuilder("[0-9]{0,");
            sb.append(i - 1);
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

    private void enableGPS() {
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        builder.setMessage(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_notAbleCaptureGPSAlert())).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.FarmersSearchFragment.6
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                FarmersSearchFragment.this.startActivity(new Intent("android.settings.SECURITY_SETTINGS"));
                FarmersSearchFragment.this.getActivity().finish();
            }
        });
        builder.show();
    }

    private class LocationControl extends AsyncTask<Context, Void, Void> {
        private final ProgressDialog dialog;

        private LocationControl() {
            this.dialog = new ProgressDialog(FarmersSearchFragment.this.getActivity());
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            this.dialog.setMessage(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_gettLocationPWDialog()));
            this.dialog.setButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_gpsCancelButton()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.FarmersSearchFragment.LocationControl.1
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    dialogInterface.dismiss();
                    FarmersSearchFragment.this.hasLocation = true;
                }
            });
            this.dialog.show();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Void doInBackground(Context... contextArr) {
            while (!FarmersSearchFragment.this.hasLocation) {
                try {
                    Thread.sleep(1000L);
                } catch (InterruptedException e) {
                    PLog.e(FarmersSearchFragment.TAG, e);
                }
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Void r15) {
            if (FarmersSearchFragment.this.dbllatitude != null && FarmersSearchFragment.this.dbllongitude != null) {
                if (this.dialog.isShowing()) {
                    this.dialog.dismiss();
                }
                FarmersSearchFragment.this.tempGrowersList = new ArrayList();
                Double.valueOf(0.0d);
                Double valueOf = Double.valueOf(0.0d);
                if (FarmersSearchFragment.this.radiusSearch != null && FarmersSearchFragment.this.radiusSearch.getText().toString().length() > 0) {
                    valueOf = Double.valueOf(Double.parseDouble(FarmersSearchFragment.this.radiusSearch.getText().toString()));
                }
                FarmersSearchFragment.this.tempGrowersList.clear();
                for (int i = 0; i < FarmersSearchFragment.this.draftList.size(); i++) {
                    DashboardListModel dashboardListModel = (DashboardListModel) FarmersSearchFragment.this.draftList.get(i);
                    if (dashboardListModel.getLatitude() != null && !dashboardListModel.getLangitude().equalsIgnoreCase("NULL") && dashboardListModel.getLatitude().length() > 0) {
                        FarmersSearchFragment farmersSearchFragment = FarmersSearchFragment.this;
                        double distance = farmersSearchFragment.distance(farmersSearchFragment.dbllatitude, FarmersSearchFragment.this.dbllongitude, Double.valueOf(Double.parseDouble(dashboardListModel.getLatitude())), Double.valueOf(Double.parseDouble(dashboardListModel.getLangitude())), 'K');
                        Double.valueOf(distance).getClass();
                        if (distance <= valueOf.doubleValue()) {
                            FarmersSearchFragment.this.tempGrowersList.add(dashboardListModel);
                        }
                    }
                }
                if (FarmersSearchFragment.this.tempGrowersList.size() > 0) {
                    FarmersSearchFragment.this.mAdapter = new AddFarmerDraftListAdapter(FarmersSearchFragment.this.mContext, FarmersSearchFragment.this.tempGrowersList, FarmersSearchFragment.this.farmerType, "0", FarmersSearchFragment.this.isFrom, ((DraftList) FarmersSearchFragment.this.getActivity()).segmentId, ((DraftList) FarmersSearchFragment.this.getActivity()).isFromSelfAssignment, ((DraftList) FarmersSearchFragment.this.getActivity()).isFromTestmonial, ((DraftList) FarmersSearchFragment.this.getActivity()).isFromFeedBack, ((DraftList) FarmersSearchFragment.this.getActivity()).isFromSurvey, ((DraftList) FarmersSearchFragment.this.getActivity()).isFromTodo, FarmersSearchFragment.this);
                    FarmersSearchFragment.this.list.setAdapter(FarmersSearchFragment.this.mAdapter);
                    return;
                }
                Toast.makeText(FarmersSearchFragment.this.getActivity().getApplicationContext(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_noItemsAvailableAlert()), 0).show();
                return;
            }
            if (this.dialog.isShowing()) {
                this.dialog.dismiss();
            }
            FarmersSearchFragment.this.locationNotFound();
        }
    }

    public void locationNotFound() {
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        builder.setMessage(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_notAbleCaptureGPSAlert())).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_gpsOKButton()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.FarmersSearchFragment.7
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                FarmersSearchFragment.this.hasLocation = false;
                FarmersSearchFragment.this.locationControlTask = new LocationControl();
                FarmersSearchFragment.this.locationControlTask.execute(new Context[0]);
            }
        });
        builder.setNegativeButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_gpsCancelButton()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.FarmersSearchFragment.8
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
            }
        });
        builder.show();
    }

    public void disPlayRadiusData() {
        if (this.dbllatitude != null && this.dbllongitude != null) {
            this.tempGrowersList = new ArrayList();
            Double.valueOf(0.0d);
            Double valueOf = Double.valueOf(0.0d);
            EditText editText = this.radiusSearch;
            if (editText != null && editText.getText().toString().length() > 0) {
                valueOf = Double.valueOf(Double.parseDouble(this.radiusSearch.getText().toString()));
            }
            this.tempGrowersList.clear();
            for (int i = 0; i < this.draftList.size(); i++) {
                DashboardListModel dashboardListModel = this.draftList.get(i);
                if (dashboardListModel.getLatitude() != null && !dashboardListModel.getLangitude().equalsIgnoreCase("NULL") && dashboardListModel.getLatitude().length() > 0) {
                    double distance = distance(this.dbllatitude, this.dbllongitude, Double.valueOf(Double.parseDouble(dashboardListModel.getLatitude())), Double.valueOf(Double.parseDouble(dashboardListModel.getLangitude())), 'K');
                    Double.valueOf(distance).getClass();
                    if (distance <= valueOf.doubleValue()) {
                        this.tempGrowersList.add(dashboardListModel);
                    }
                }
            }
            if (this.tempGrowersList.size() > 0) {
                AddFarmerDraftListAdapter addFarmerDraftListAdapter = new AddFarmerDraftListAdapter(this.mContext, this.tempGrowersList, this.farmerType, "0", this.isFrom, ((DraftList) getActivity()).segmentId, ((DraftList) getActivity()).isFromSelfAssignment, ((DraftList) getActivity()).isFromTestmonial, ((DraftList) getActivity()).isFromFeedBack, ((DraftList) getActivity()).isFromSurvey, ((DraftList) getActivity()).isFromTodo, this);
                this.mAdapter = addFarmerDraftListAdapter;
                this.list.setAdapter(addFarmerDraftListAdapter);
                return;
            } else {
                this.mAdapter = new AddFarmerDraftListAdapter(this.mContext, this.tempGrowersList, this.farmerType, "0", this.isFrom, ((DraftList) getActivity()).segmentId, ((DraftList) getActivity()).isFromSelfAssignment, ((DraftList) getActivity()).isFromTestmonial, ((DraftList) getActivity()).isFromFeedBack, ((DraftList) getActivity()).isFromSurvey, ((DraftList) getActivity()).isFromTodo, this);
                Toast.makeText(getActivity().getApplicationContext(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_noItemsAvailableAlert()), 0).show();
                return;
            }
        }
        locationNotFound();
    }

    public void fragmentCommunication() {
        showOverLayWalkthrough();
    }

    private void showOverLayWalkthrough() {
        Target target = new Target() { // from class: com.conceptglobal.pmc.fragments.FarmersSearchFragment.9
            @Override // com.github.amlcurran.showcaseview.targets.Target
            public Point getPoint() {
                return new Point(UtilDeclarations.getScreenWidth() - FarmersSearchFragment.optionsMenu.findItem(R.id.search_cis).getIcon().getIntrinsicWidth(), ((AppCompatActivity) FarmersSearchFragment.this.getActivity()).getSupportActionBar().getHeight());
            }
        };
        final Target target2 = new Target() { // from class: com.conceptglobal.pmc.fragments.FarmersSearchFragment.10
            @Override // com.github.amlcurran.showcaseview.targets.Target
            public Point getPoint() {
                return new Point(UtilDeclarations.getScreenWidth() - ((FarmersSearchFragment.optionsMenu.findItem(R.id.filter_cis).getIcon().getIntrinsicWidth() * 5) / 2), ((AppCompatActivity) FarmersSearchFragment.this.getActivity()).getSupportActionBar().getHeight());
            }
        };
        ShowcaseView build = new ShowcaseView.Builder((Activity) this.mContext).setTarget(target).setContentTitle("Search").setContentText("Click here to search ").withMaterialShowcase().setStyle(R.style.CustomShowcaseTheme2).setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.FarmersSearchFragment.11
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                int i = FarmersSearchFragment.this.counter;
                if (i == 0) {
                    FarmersSearchFragment.this.showcaseView.setTarget(target2);
                    FarmersSearchFragment.this.showcaseView.setContentTitle("Filter");
                    FarmersSearchFragment.this.showcaseView.setContentText("Click her for filter options");
                    FarmersSearchFragment.this.showcaseView.setButtonText("Close");
                } else if (i == 1) {
                    FarmersSearchFragment.this.showcaseView.hide();
                }
                FarmersSearchFragment.access$2308(FarmersSearchFragment.this);
            }
        }).build();
        this.showcaseView = build;
        build.setButtonText("Next");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showMibileSearchDialog(String str) {
        final Dialog dialog = new Dialog(getActivity());
        dialog.requestWindowFeature(1);
        dialog.setContentView(R.layout.alert_mobile_search);
        final EditText editText = (EditText) dialog.findViewById(R.id.etMobileNumber);
        ((TextView) dialog.findViewById(R.id.tvMobileNumber)).setText(getResources().getString(R.string.mobile_number_not_in_market));
        editText.setText(str);
        Button button = (Button) dialog.findViewById(R.id.btn_cancel_alert);
        Button button2 = (Button) dialog.findViewById(R.id.btn_search_alert);
        dialog.setCanceledOnTouchOutside(false);
        button2.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.FarmersSearchFragment.12
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                UtilDeclarations.hideInputKeyboard(FarmersSearchFragment.this.getActivity());
                if (FarmersSearchFragment.this.isValidMobileNumber(editText.getText().toString())) {
                    FarmersSearchFragment.this.callMobileDetailsApi(editText.getText().toString());
                    dialog.dismiss();
                } else {
                    editText.setError("Please enter 10 digit mobile number");
                }
            }
        });
        button.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.FarmersSearchFragment.13
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                UtilDeclarations.hideInputKeyboard(FarmersSearchFragment.this.getActivity());
                dialog.dismiss();
            }
        });
        dialog.getWindow().setBackgroundDrawable(new ColorDrawable(0));
        dialog.getWindow().setLayout(-1, -2);
        dialog.setCancelable(false);
        dialog.setCanceledOnTouchOutside(false);
        dialog.show();
        dialog.getWindow().setGravity(17);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void callMobileDetailsApi(String str) {
        new SendRequestToServerAsync(getActivity(), this.getFarmerDetails, null, ConstantsPMC.getInstance().getMobileDetailsUrl() + "=" + str, true).execute(new Void[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showDetailsDialog(FarmerMobileDetails farmerMobileDetails) {
        final Dialog dialog = new Dialog(getActivity());
        dialog.requestWindowFeature(1);
        dialog.setContentView(R.layout.alert_farmer_mobile_details);
        TextView textView = (TextView) dialog.findViewById(R.id.tvFarmerName);
        ImageView imageView = (ImageView) dialog.findViewById(R.id.imgFarmerProfile);
        Button button = (Button) dialog.findViewById(R.id.btn_ok_alert);
        textView.setText(getResources().getString(R.string.pmc_reg_farmer_name) + " : " + farmerMobileDetails.getFarmerName() + "\n\n" + getResources().getString(R.string.pmc_reg_mobile_no) + " : " + farmerMobileDetails.getMobile() + "\n\nTerritoyName : " + farmerMobileDetails.getTerritoryName() + "\n\nVillageName : " + farmerMobileDetails.getVillageName());
        Picasso.with(getActivity()).load(farmerMobileDetails.getImagePath()).resize(150, 150).skipMemoryCache().placeholder(getResources().getDrawable(R.drawable.ic_user_pic)).into(imageView);
        button.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.FarmersSearchFragment.14
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                dialog.dismiss();
            }
        });
        dialog.getWindow().setBackgroundDrawable(new ColorDrawable(0));
        dialog.getWindow().setLayout(-1, -2);
        dialog.setCancelable(true);
        dialog.setCanceledOnTouchOutside(true);
        dialog.show();
        dialog.getWindow().setGravity(17);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isValidMobileNumber(String str) {
        return !str.isEmpty() && str.length() == 10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showNoDataAvailableDialog(String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        builder.setMessage(str).setCancelable(false).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.FarmersSearchFragment.16
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        });
        android.app.AlertDialog show = builder.show();
        if (UtilDeclarations.isTablet(getActivity())) {
            UtilDeclarations.makeTabletDialogTextlarge(show);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
    }

    private void showAlertDialog(String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        builder.setMessage(str).setCancelable(false).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.FarmersSearchFragment.18
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        });
        android.app.AlertDialog show = builder.show();
        if (UtilDeclarations.isTablet(getActivity())) {
            UtilDeclarations.makeTabletDialogTextlarge(show);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        LocalBroadcastManager.getInstance(getActivity()).unregisterReceiver(this.mLocalBroadcastReceiver);
    }

    private class LocalBroadcastReceiver extends BroadcastReceiver {
        private LocalBroadcastReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent.getAction().equalsIgnoreCase("android.intent.action.FarmerSearchLocationPermissionGranted")) {
                FarmersSearchFragment.this.fetchLocation();
                return;
            }
            if (intent.getAction().equalsIgnoreCase("android.intent.action.FarmerSearchLocationPermissionDenied")) {
                FarmersSearchFragment.this.mLocationUtils.showDialog(FarmersSearchFragment.this.getActivity(), LocationUtils.PERMISSION_DENIED);
            } else if (intent.getAction().equalsIgnoreCase("android.intent.action.FarmerSearchGPSTurnedOnResult")) {
                FarmersSearchFragment.this.fetchLocation();
            } else if (intent.getAction().equalsIgnoreCase("android.intent.action.FarmerSearchGPSNotTurnedOnResult")) {
                FarmersSearchFragment.this.mLocationUtils.showDialog(FarmersSearchFragment.this.getActivity(), LocationUtils.GPS_NOT_TURNED_ON);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fetchLocation() {
        if (!this.mLocationUtils.checkPermissions(getActivity())) {
            this.mLocationUtils.requestPermissions(getActivity());
            return;
        }
        try {
            new FetchLocation(getActivity(), false, new OnLocationFoundListener() { // from class: com.conceptglobal.pmc.fragments.FarmersSearchFragment.19
                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onLocationFound(Location location) {
                }

                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onTimerTimeOut() {
                }

                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onLocationFound(LocationInfo locationInfo) {
                    FarmersSearchFragment.this.dbllatitude = Double.valueOf(locationInfo.getLatitude());
                    FarmersSearchFragment.this.dbllongitude = Double.valueOf(locationInfo.getLongitude());
                    FarmersSearchFragment.this.disPlayRadiusData();
                }
            }, TAG);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private class LoadDataTask extends AsyncTask<String, Void, Void> {
        List<DashboardListModel> data;
        String keyword;

        private LoadDataTask() {
            this.data = new ArrayList();
            this.keyword = null;
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            super.onPreExecute();
            FarmersSearchFragment.this.createProgressDialog("Please wait");
            if (FarmersSearchFragment.this.dialog == null || FarmersSearchFragment.this.getActivity().isFinishing()) {
                return;
            }
            FarmersSearchFragment.this.dialog.show();
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
            if (TextUtils.isEmpty(this.keyword)) {
                if (!FarmersSearchFragment.this.farmerType.equalsIgnoreCase(ConstantsPMC.TYPE_FARMER)) {
                    if (!FarmersSearchFragment.this.farmerType.equalsIgnoreCase("Planter")) {
                        if (!FarmersSearchFragment.this.farmerType.equalsIgnoreCase("Village")) {
                            if (!FarmersSearchFragment.this.farmerType.equalsIgnoreCase("UnVerifiedFarmer")) {
                                return null;
                            }
                            this.data = GetDataFromDB.getInstance().getFarmerBindDataDynamic1(Queries.getInstance().getDashboardDataForUnverifiedFarmers(FarmersSearchFragment.this.query, "1", parseInt, parseInt2), true);
                            return null;
                        }
                        this.data = GetDataFromDB.getInstance().getFarmerBindDataDynamic1(Queries.getInstance().getDashboardDataVillage(FarmersSearchFragment.this.query, "4", parseInt, parseInt2, FarmersSearchFragment.this.fromFavourites), true);
                        return null;
                    }
                    this.data = GetDataFromDB.getInstance().getFarmerBindDataDynamic1(Queries.getInstance().getDashboardData(FarmersSearchFragment.this.query, "8", parseInt, parseInt2), true);
                    return null;
                }
                if (FarmersSearchFragment.this.fromFavourites.equalsIgnoreCase(ConstantsPMC.FELLOW_FARMER) && !TextUtils.isEmpty(FarmersSearchFragment.this.parentSaarthieFarmerID)) {
                    this.data = GetDataFromDB.getInstance().getFarmerBindDataDynamic1New(Queries.getInstance().getDashboardDataFellowFarmer(FarmersSearchFragment.this.query, "1", parseInt, parseInt2, FarmersSearchFragment.this.fromFavourites, FarmersSearchFragment.this.parentSaarthieFarmerID), true);
                    return null;
                }
                this.data = GetDataFromDB.getInstance().getFarmerBindDataDynamic1New(Queries.getInstance().getDashboardData(FarmersSearchFragment.this.query, "1", parseInt, parseInt2, FarmersSearchFragment.this.fromFavourites), true);
                return null;
            }
            if (!FarmersSearchFragment.this.farmerType.equalsIgnoreCase(ConstantsPMC.TYPE_FARMER)) {
                if (!FarmersSearchFragment.this.farmerType.equalsIgnoreCase("Planter")) {
                    if (!FarmersSearchFragment.this.farmerType.equalsIgnoreCase("Village")) {
                        return null;
                    }
                    this.data = GetDataFromDB.getInstance().getFarmersByKeyword(Queries.getInstance().getDashboardData(FarmersSearchFragment.this.query, "4", parseInt, parseInt2), this.keyword);
                    return null;
                }
                this.data = GetDataFromDB.getInstance().getFarmersByKeyword(Queries.getInstance().getDashboardData(FarmersSearchFragment.this.query, "8", parseInt, parseInt2), this.keyword);
                return null;
            }
            this.data = GetDataFromDB.getInstance().getFarmersByKeyword(Queries.getInstance().getDashboardData(FarmersSearchFragment.this.query, "1", parseInt, parseInt2, FarmersSearchFragment.this.fromFavourites), this.keyword);
            return null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Void r2) {
            super.onPostExecute((LoadDataTask) r2);
            if (FarmersSearchFragment.this.dialog != null && FarmersSearchFragment.this.dialog.isShowing()) {
                FarmersSearchFragment.this.dialog.dismiss();
            }
            if (TextUtils.isEmpty(this.keyword)) {
                FarmersSearchFragment.this.refreshAdapter(this.data);
            } else {
                FarmersSearchFragment.this.resetDataAndNofityAdapter(this.data);
            }
            FarmersSearchFragment.this.parentSaarthieFarmerID = "";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshAdapter(List<DashboardListModel> list) {
        this.draftList.clear();
        this.mAdapter.showLoading(false);
        this.draftList.addAll(list);
        List<DashboardListModel> list2 = this.draftList;
        if (list2 != null && list2.size() > 0) {
            this.fastScroller.setVisibility(0);
            this.mAdapter.notifyDataSetChanged();
            this.no_data_found_ll.setVisibility(8);
            this.list.setVisibility(0);
            return;
        }
        this.no_data_found_ll.setVisibility(0);
        this.list.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetDataAndNofityAdapter(List<DashboardListModel> list) {
        this.draftList.clear();
        this.list.setVisibility(0);
        this.fastScroller.setVisibility(0);
        this.clearbtn.setVisibility(0);
        this.searchbtn.setEnabled(true);
        this.draftList.addAll(list);
        this.mAdapter.notifyDataSetChanged();
    }

    private class SearchDataTask extends AsyncTask<String, Void, Void> {
        List<DashboardListModel> data;

        private SearchDataTask() {
            this.data = new ArrayList();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Void doInBackground(String... strArr) {
            String str = strArr[0];
            if (FarmersSearchFragment.this.farmerType.equalsIgnoreCase(ConstantsPMC.TYPE_FARMER)) {
                if (FarmersSearchFragment.this.radiusSearch.getText().toString() != null && FarmersSearchFragment.this.radiusSearch.getText().toString().length() > 0) {
                    this.data = GetDataFromDB.getInstance().getFarmerBindDataDynamic1New(Queries.getInstance().searchQueryLatLongNotNull(str, FarmersSearchFragment.this.addCropQuery, FarmersSearchFragment.this.addStateQuery, FarmersSearchFragment.this.addDistrictQuery, FarmersSearchFragment.this.addTalukaQuery, FarmersSearchFragment.this.addLocationQuery, FarmersSearchFragment.this.addRadiusQuery, FarmersSearchFragment.this.addSegmentQuery, FarmersSearchFragment.this.addAcersGreaterthanQuery, FarmersSearchFragment.this.addAcersLessthanQuery, FarmersSearchFragment.this.addIrrigationQuery, "1", FarmersSearchFragment.this.fromFavourites), true);
                    return null;
                }
                this.data = GetDataFromDB.getInstance().getFarmerBindDataDynamic1New(Queries.getInstance().searchQuery(str, FarmersSearchFragment.this.addCropQuery, FarmersSearchFragment.this.addStateQuery, FarmersSearchFragment.this.addDistrictQuery, FarmersSearchFragment.this.addTalukaQuery, FarmersSearchFragment.this.addLocationQuery, FarmersSearchFragment.this.addRadiusQuery, FarmersSearchFragment.this.addSegmentQuery, FarmersSearchFragment.this.addAcersGreaterthanQuery, FarmersSearchFragment.this.addAcersLessthanQuery, FarmersSearchFragment.this.addIrrigationQuery, "1", FarmersSearchFragment.this.fromFavourites), true);
                return null;
            }
            if (!FarmersSearchFragment.this.farmerType.equalsIgnoreCase("Planter")) {
                if (!FarmersSearchFragment.this.farmerType.equalsIgnoreCase("Village")) {
                    if (!FarmersSearchFragment.this.farmerType.equalsIgnoreCase("UnVerifiedFarmer")) {
                        return null;
                    }
                    if (FarmersSearchFragment.this.radiusSearch.getText().toString() != null && FarmersSearchFragment.this.radiusSearch.getText().toString().length() > 0) {
                        this.data = GetDataFromDB.getInstance().getFarmerBindDataDynamic1(Queries.getInstance().searchQueryLatLongNotNull(str, FarmersSearchFragment.this.addCropQuery, FarmersSearchFragment.this.addStateQuery, FarmersSearchFragment.this.addDistrictQuery, FarmersSearchFragment.this.addTalukaQuery, FarmersSearchFragment.this.addLocationQuery, FarmersSearchFragment.this.addRadiusQuery, FarmersSearchFragment.this.addSegmentQuery, FarmersSearchFragment.this.addAcersGreaterthanQuery, FarmersSearchFragment.this.addAcersLessthanQuery, FarmersSearchFragment.this.addIrrigationQuery, "1"), true);
                        return null;
                    }
                    this.data = GetDataFromDB.getInstance().getFarmerBindDataDynamic1(Queries.getInstance().searchQuery(str, FarmersSearchFragment.this.addCropQuery, FarmersSearchFragment.this.addStateQuery, FarmersSearchFragment.this.addDistrictQuery, FarmersSearchFragment.this.addTalukaQuery, FarmersSearchFragment.this.addLocationQuery, FarmersSearchFragment.this.addRadiusQuery, FarmersSearchFragment.this.addSegmentQuery, FarmersSearchFragment.this.addAcersGreaterthanQuery, FarmersSearchFragment.this.addAcersLessthanQuery, FarmersSearchFragment.this.addIrrigationQuery, "1"), true);
                    return null;
                }
                this.data = GetDataFromDB.getInstance().getFarmerBindDataDynamic1(Queries.getInstance().searchQuery(str, FarmersSearchFragment.this.addCropQuery, FarmersSearchFragment.this.addStateQuery, FarmersSearchFragment.this.addDistrictQuery, FarmersSearchFragment.this.addTalukaQuery, FarmersSearchFragment.this.addLocationQuery, FarmersSearchFragment.this.addRadiusQuery, FarmersSearchFragment.this.addSegmentQuery, FarmersSearchFragment.this.addAcersGreaterthanQuery, FarmersSearchFragment.this.addAcersLessthanQuery, FarmersSearchFragment.this.addIrrigationQuery, "4"), true);
                return null;
            }
            this.data = GetDataFromDB.getInstance().getFarmerBindDataDynamic1(Queries.getInstance().searchQuery(str, FarmersSearchFragment.this.addCropQuery, FarmersSearchFragment.this.addStateQuery, FarmersSearchFragment.this.addDistrictQuery, FarmersSearchFragment.this.addTalukaQuery, FarmersSearchFragment.this.addLocationQuery, FarmersSearchFragment.this.addRadiusQuery, FarmersSearchFragment.this.addSegmentQuery, FarmersSearchFragment.this.addAcersGreaterthanQuery, FarmersSearchFragment.this.addAcersLessthanQuery, FarmersSearchFragment.this.addIrrigationQuery, "8"), true);
            return null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.os.AsyncTask
        public void onPostExecute(Void r20) {
            String str;
            String str2;
            String str3;
            FarmersSearchFragment farmersSearchFragment;
            Context context;
            List list;
            String str4;
            String str5;
            int i;
            boolean z;
            boolean z2;
            boolean z3;
            boolean z4;
            int i2;
            FarmersSearchFragment farmersSearchFragment2;
            String str6 = FarmersSearchFragment.TAG;
            String str7 = "";
            super.onPostExecute((SearchDataTask) r20);
            FarmersSearchFragment.this.draftList.clear();
            FarmersSearchFragment.this.draftList.addAll(this.data);
            FarmersSearchFragment.this.list.setVisibility(0);
            FarmersSearchFragment.this.fastScroller.setVisibility(0);
            try {
            } catch (Exception e) {
                e = e;
            }
            try {
                if (FarmersSearchFragment.this.radiusSearch.getText().toString() != null) {
                    try {
                        if (FarmersSearchFragment.this.radiusSearch.getText().toString().length() > 0) {
                            try {
                                FarmersSearchFragment.this.hasLocation = false;
                                if (FarmersSearchFragment.this.draftList != null && FarmersSearchFragment.this.draftList.size() > 0) {
                                    FarmersSearchFragment.this.fetchLocation();
                                    str = "";
                                    str7 = str7;
                                } else {
                                    Toast.makeText(FarmersSearchFragment.this.getActivity().getApplicationContext(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_noItemsAvailableAlert()), 1).show();
                                    try {
                                        try {
                                            if (FarmersSearchFragment.this.draftList == null || FarmersSearchFragment.this.draftList.size() <= 0) {
                                                str3 = FarmersSearchFragment.TAG;
                                                str = "";
                                                Context applicationContext = FarmersSearchFragment.this.getActivity().getApplicationContext();
                                                GetDataFromDB getDataFromDB = GetDataFromDB.getInstance();
                                                String pmc_noItemsAvailableAlert = LabelUtils.getInstance().getPmc_noItemsAvailableAlert();
                                                Toast.makeText(applicationContext, getDataFromDB.getValue(pmc_noItemsAvailableAlert), 0).show();
                                                str7 = pmc_noItemsAvailableAlert;
                                            } else {
                                                FarmersSearchFragment farmersSearchFragment3 = FarmersSearchFragment.this;
                                                Context context2 = FarmersSearchFragment.this.mContext;
                                                List list2 = FarmersSearchFragment.this.draftList;
                                                String str8 = FarmersSearchFragment.this.farmerType;
                                                String str9 = FarmersSearchFragment.this.isFrom;
                                                int i3 = ((DraftList) FarmersSearchFragment.this.getActivity()).segmentId;
                                                boolean z5 = ((DraftList) FarmersSearchFragment.this.getActivity()).isFromSelfAssignment;
                                                boolean z6 = ((DraftList) FarmersSearchFragment.this.getActivity()).isFromTestmonial;
                                                boolean z7 = ((DraftList) FarmersSearchFragment.this.getActivity()).isFromFeedBack;
                                                boolean z8 = ((DraftList) FarmersSearchFragment.this.getActivity()).isFromSurvey;
                                                int i4 = ((DraftList) FarmersSearchFragment.this.getActivity()).isFromTodo;
                                                str = "";
                                                try {
                                                    FarmersSearchFragment farmersSearchFragment4 = FarmersSearchFragment.this;
                                                    str3 = FarmersSearchFragment.TAG;
                                                    farmersSearchFragment3.mAdapter = new AddFarmerDraftListAdapter(context2, list2, str8, "0", str9, i3, z5, z6, z7, z8, i4, farmersSearchFragment4);
                                                    FarmersSearchFragment.this.list.setAdapter(FarmersSearchFragment.this.mAdapter);
                                                    str7 = farmersSearchFragment4;
                                                } catch (Exception e2) {
                                                    e = e2;
                                                    str3 = FarmersSearchFragment.TAG;
                                                    try {
                                                        e.printStackTrace();
                                                        str6 = str3;
                                                    } catch (Exception e3) {
                                                        e = e3;
                                                        str6 = str3;
                                                    }
                                                    try {
                                                        PLog.e(str6, e);
                                                        str7 = str7;
                                                    } catch (Exception e4) {
                                                        e = e4;
                                                        PLog.e(str6, e);
                                                        str2 = str6;
                                                        FarmersSearchFragment.this.fastScroller.setRecyclerView(FarmersSearchFragment.this.list);
                                                        String str10 = str;
                                                        FarmersSearchFragment.this.addCropQuery = str10;
                                                        FarmersSearchFragment.this.addStateQuery = str10;
                                                        FarmersSearchFragment.this.addDistrictQuery = str10;
                                                        FarmersSearchFragment.this.addTalukaQuery = str10;
                                                        FarmersSearchFragment.this.addLocationQuery = str10;
                                                        FarmersSearchFragment.this.addRadiusQuery = str10;
                                                        FarmersSearchFragment.this.addSegmentQuery = str10;
                                                        FarmersSearchFragment.this.addIrrigationQuery = str10;
                                                        FarmersSearchFragment.this.addAcersGreaterthanQuery = str10;
                                                        FarmersSearchFragment.this.addAcersLessthanQuery = str10;
                                                        return;
                                                    }
                                                    str2 = str6;
                                                    FarmersSearchFragment.this.fastScroller.setRecyclerView(FarmersSearchFragment.this.list);
                                                    String str102 = str;
                                                    FarmersSearchFragment.this.addCropQuery = str102;
                                                    FarmersSearchFragment.this.addStateQuery = str102;
                                                    FarmersSearchFragment.this.addDistrictQuery = str102;
                                                    FarmersSearchFragment.this.addTalukaQuery = str102;
                                                    FarmersSearchFragment.this.addLocationQuery = str102;
                                                    FarmersSearchFragment.this.addRadiusQuery = str102;
                                                    FarmersSearchFragment.this.addSegmentQuery = str102;
                                                    FarmersSearchFragment.this.addIrrigationQuery = str102;
                                                    FarmersSearchFragment.this.addAcersGreaterthanQuery = str102;
                                                    FarmersSearchFragment.this.addAcersLessthanQuery = str102;
                                                    return;
                                                }
                                            }
                                            str6 = str3;
                                            str7 = str7;
                                        } catch (Exception e5) {
                                            e = e5;
                                        }
                                    } catch (Exception e6) {
                                        e = e6;
                                        str3 = FarmersSearchFragment.TAG;
                                        str = "";
                                    }
                                }
                            } catch (Exception e7) {
                                e = e7;
                                str = str7;
                            }
                            str2 = str6;
                            FarmersSearchFragment.this.fastScroller.setRecyclerView(FarmersSearchFragment.this.list);
                            String str1022 = str;
                            FarmersSearchFragment.this.addCropQuery = str1022;
                            FarmersSearchFragment.this.addStateQuery = str1022;
                            FarmersSearchFragment.this.addDistrictQuery = str1022;
                            FarmersSearchFragment.this.addTalukaQuery = str1022;
                            FarmersSearchFragment.this.addLocationQuery = str1022;
                            FarmersSearchFragment.this.addRadiusQuery = str1022;
                            FarmersSearchFragment.this.addSegmentQuery = str1022;
                            FarmersSearchFragment.this.addIrrigationQuery = str1022;
                            FarmersSearchFragment.this.addAcersGreaterthanQuery = str1022;
                            FarmersSearchFragment.this.addAcersLessthanQuery = str1022;
                            return;
                        }
                    } catch (Exception e8) {
                        e = e8;
                        PLog.e(str6, e);
                        return;
                    }
                }
                farmersSearchFragment.mAdapter = new AddFarmerDraftListAdapter(context, list, str4, "0", str5, i, z, z2, z3, z4, i2, farmersSearchFragment2);
                FarmersSearchFragment.this.list.setAdapter(FarmersSearchFragment.this.mAdapter);
                FarmersSearchFragment.this.fastScroller.setRecyclerView(FarmersSearchFragment.this.list);
                String str10222 = str;
                FarmersSearchFragment.this.addCropQuery = str10222;
                FarmersSearchFragment.this.addStateQuery = str10222;
                FarmersSearchFragment.this.addDistrictQuery = str10222;
                FarmersSearchFragment.this.addTalukaQuery = str10222;
                FarmersSearchFragment.this.addLocationQuery = str10222;
                FarmersSearchFragment.this.addRadiusQuery = str10222;
                FarmersSearchFragment.this.addSegmentQuery = str10222;
                FarmersSearchFragment.this.addIrrigationQuery = str10222;
                FarmersSearchFragment.this.addAcersGreaterthanQuery = str10222;
                FarmersSearchFragment.this.addAcersLessthanQuery = str10222;
                return;
            } catch (Exception e9) {
                e = e9;
                str6 = str2;
                PLog.e(str6, e);
                return;
            }
            str = "";
            farmersSearchFragment = FarmersSearchFragment.this;
            context = FarmersSearchFragment.this.mContext;
            list = FarmersSearchFragment.this.draftList;
            str4 = FarmersSearchFragment.this.farmerType;
            str5 = FarmersSearchFragment.this.isFrom;
            i = ((DraftList) FarmersSearchFragment.this.getActivity()).segmentId;
            z = ((DraftList) FarmersSearchFragment.this.getActivity()).isFromSelfAssignment;
            z2 = ((DraftList) FarmersSearchFragment.this.getActivity()).isFromTestmonial;
            z3 = ((DraftList) FarmersSearchFragment.this.getActivity()).isFromFeedBack;
            z4 = ((DraftList) FarmersSearchFragment.this.getActivity()).isFromSurvey;
            i2 = ((DraftList) FarmersSearchFragment.this.getActivity()).isFromTodo;
            farmersSearchFragment2 = FarmersSearchFragment.this;
            str2 = FarmersSearchFragment.TAG;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        String str;
        super.onActivityResult(i, i2, intent);
        if (i != 2 || i2 == 0 || intent == null || intent.getStringArrayExtra(ConstantDeclarations.getInstance().getKEYSELECTION()) == null) {
            return;
        }
        String[] stringArray = intent.getExtras().getStringArray(ConstantDeclarations.getInstance().getKEYSELECTION());
        String stringExtra = intent.getStringExtra("FarmerId");
        boolean z = intent.getExtras().getBoolean("isfrom");
        long timeInMillis = Calendar.getInstance().getTimeInMillis();
        if (stringArray != null) {
            try {
                new ArrayList();
                String str2 = stringArray[0];
                List<String> list = GetDataFromDB.getInstance().getList(Queries.getInstance().getListOfAttributesUpdate(str2));
                if (list != null && list.size() > 0) {
                    Iterator<String> it = list.iterator();
                    while (it.hasNext()) {
                        try {
                            str = str2;
                            try {
                                InsertDataIntoDB.insertCustomerAttributeDetails(stringExtra, str2, it.next(), ((DraftList) getActivity()).segmentId, 0, timeInMillis, 1);
                            } catch (Exception e) {
                                e = e;
                                PLog.e(this.tag, e);
                                str2 = str;
                            }
                        } catch (Exception e2) {
                            e = e2;
                            str = str2;
                        }
                        str2 = str;
                    }
                }
            } catch (Exception e3) {
                PLog.e(this.tag, e3);
            }
        }
        if (z) {
            Intent intent2 = new Intent(getActivity().getBaseContext(), (Class<?>) SAAttributeActivity_FBF.class);
            intent2.putExtra(ConstantDeclarations.getInstance().getKEYFARMERID(), stringExtra);
            intent2.putExtra("ACTIVITYID", Integer.parseInt(stringArray[0]));
            intent2.putExtra("ACTIVITYNAME", stringArray[1]);
            intent2.putExtra("SEGMENTID", ((DraftList) getActivity()).segmentId);
            intent2.putExtra("TRANSID", timeInMillis);
            intent2.putExtra("ASSIGNMENTID", 0);
            intent2.addFlags(67108864);
            startActivity(intent2.addFlags(131072).addFlags(67108864));
            return;
        }
        if (((DraftList) getActivity()).isFromSurvey) {
            Intent intent3 = new Intent(getActivity().getBaseContext(), (Class<?>) SurveyActivity.class);
            intent3.putExtra(ConstantDeclarations.getInstance().getKEYFARMERID(), stringExtra);
            intent3.putExtra("ACTIVITYID", Integer.parseInt(stringArray[0]));
            intent3.putExtra("ACTIVITYNAME", stringArray[1]);
            intent3.putExtra("SEGMENTID", ((DraftList) getActivity()).segmentId);
            intent3.putExtra("TRANSID", timeInMillis);
            intent3.putExtra("ASSIGNMENTID", 0);
            intent3.addFlags(67108864);
            startActivity(intent3.addFlags(131072).addFlags(67108864));
            return;
        }
        Intent intent4 = new Intent(getActivity().getBaseContext(), (Class<?>) SAAttributeActivity.class);
        intent4.putExtra(ConstantDeclarations.getInstance().getKEYFARMERID(), stringExtra);
        intent4.putExtra("ACTIVITYID", Integer.parseInt(stringArray[0]));
        intent4.putExtra("ACTIVITYNAME", stringArray[1]);
        intent4.putExtra("SEGMENTID", ((DraftList) getActivity()).segmentId);
        intent4.putExtra("ISSELFASSIGN", 1);
        intent4.putExtra("TRANSID", timeInMillis);
        intent4.putExtra("ASSIGNMENTID", 0);
        intent4.addFlags(67108864);
        startActivity(intent4.addFlags(131072).addFlags(67108864));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createProgressDialog(String str) {
        if (this.dialog == null) {
            AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
            View inflate = getLayoutInflater().inflate(R.layout.progress_bar, (ViewGroup) null);
            TextView textView = (TextView) inflate.findViewById(R.id.msg);
            this.dialogMsgTxtview = textView;
            textView.setText(str);
            builder.setView(inflate);
            android.app.AlertDialog create = builder.create();
            this.dialog = create;
            create.setCancelable(false);
        }
    }

    private void OnDisplayTypeSelectCheckedChangeListener(RadioGroup radioGroup) {
        radioGroup.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: com.conceptglobal.pmc.fragments.FarmersSearchFragment.20
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public void onCheckedChanged(RadioGroup radioGroup2, int i) {
                RadioButton radioButton = (RadioButton) radioGroup2.findViewById(i);
                if (i <= -1) {
                    return;
                }
                switch (radioButton.getId()) {
                    case R.id.rbAll /* 2131297131 */:
                        FarmersSearchFragment.this.fromFavourites = ConstantsPMC.ALL;
                        break;
                    case R.id.rbFavourite /* 2131297132 */:
                        FarmersSearchFragment.this.fromFavourites = ConstantsPMC.FELLOW_FARMER;
                        break;
                    case R.id.rbROPKAM /* 2131297133 */:
                        FarmersSearchFragment.this.fromFavourites = ConstantsPMC.SARATH;
                        break;
                    case R.id.rbTG /* 2131297134 */:
                        FarmersSearchFragment.this.fromFavourites = ConstantsPMC.TG;
                        break;
                }
                FarmersSearchFragment.this.loadMore("-1", "50");
            }
        });
    }

    public void slideToBottom(View view) {
        view.setVisibility(8);
    }

    public void slideToTop(View view) {
        view.setVisibility(0);
    }

    private void fetchLocationFilterCustomers() {
        PLog.location(TAG, "location capture started", this.tag, UtilDeclarations.getDateTime());
        if (!this.mLocationUtils.checkPermissions(getActivity())) {
            this.mLocationUtils.requestPermissions(getActivity());
            return;
        }
        try {
            new FetchLocation(getActivity(), true, new OnLocationFoundListener() { // from class: com.conceptglobal.pmc.fragments.FarmersSearchFragment.21
                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onLocationFound(Location location) {
                }

                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onTimerTimeOut() {
                }

                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onLocationFound(LocationInfo locationInfo) {
                    PLog.location(FarmersSearchFragment.TAG, "location found", FarmersSearchFragment.this.tag, UtilDeclarations.getDateTime());
                    FarmersSearchFragment.this.dbllatitude = Double.valueOf(locationInfo.getLatitude());
                    FarmersSearchFragment.this.dbllongitude = Double.valueOf(locationInfo.getLongitude());
                    int i = ((DraftList) FarmersSearchFragment.this.getActivity()).segmentId;
                    if (i == 1 || i == 2 || i == 3 || i == 4) {
                        double d = FarmersSearchFragment.this.distanceInKiloMeters * 0.01d;
                        double doubleValue = FarmersSearchFragment.this.dbllatitude.doubleValue() - d;
                        double doubleValue2 = FarmersSearchFragment.this.dbllatitude.doubleValue() + d;
                        String str = " and latitude between cast( " + doubleValue + " as numeric) and cast(" + doubleValue2 + " as numeric) ";
                        new LocationFilterTask().execute(str + " and longitude between cast( " + (FarmersSearchFragment.this.dbllongitude.doubleValue() - d) + " as numeric) and cast(" + (FarmersSearchFragment.this.dbllongitude.doubleValue() + d) + " as numeric) ");
                    }
                }
            }, TAG);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private class LocationFilterTask extends AsyncTask<String, Void, Void> {
        List<DashboardListModel> data;
        String keyword;

        private LocationFilterTask() {
            this.keyword = null;
            this.data = new ArrayList();
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            super.onPreExecute();
            FarmersSearchFragment.this.createProgressDialog("Please wait");
            if (FarmersSearchFragment.this.dialog == null || FarmersSearchFragment.this.getActivity().isFinishing()) {
                return;
            }
            FarmersSearchFragment.this.dialog.show();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Void doInBackground(String... strArr) {
            try {
                if (!FarmersSearchFragment.this.farmerType.equalsIgnoreCase(ConstantsPMC.TYPE_FARMER)) {
                    if (FarmersSearchFragment.this.farmerType.equalsIgnoreCase("Village")) {
                        this.data = GetDataFromDB.getInstance().getFarmerBindDataDynamic1New(Queries.getInstance().getDashboardDataLocationFilter(FarmersSearchFragment.this.query, "4", -1, 0, FarmersSearchFragment.this.fromFavourites, strArr[0]), true);
                    }
                } else if (FarmersSearchFragment.this.fromFavourites.equalsIgnoreCase(ConstantsPMC.FELLOW_FARMER) && !TextUtils.isEmpty(FarmersSearchFragment.this.parentSaarthieFarmerID)) {
                    this.data = GetDataFromDB.getInstance().getFarmerBindDataDynamic1New(Queries.getInstance().getDashboardDataFellowFarmerFilteredList(FarmersSearchFragment.this.query, "1", -1, 0, FarmersSearchFragment.this.fromFavourites, FarmersSearchFragment.this.parentSaarthieFarmerID, strArr[0]), true);
                } else {
                    this.data = GetDataFromDB.getInstance().getFarmerBindDataDynamic1New(Queries.getInstance().getDashboardDataLocationFilter(FarmersSearchFragment.this.query, "1", -1, 0, FarmersSearchFragment.this.fromFavourites, strArr[0]), true);
                }
                return null;
            } catch (Exception unused) {
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Void r2) {
            super.onPostExecute((LocationFilterTask) r2);
            FarmersSearchFragment.this.loaderrl.setVisibility(8);
            if (FarmersSearchFragment.this.dialog != null && FarmersSearchFragment.this.dialog.isShowing()) {
                FarmersSearchFragment.this.dialog.dismiss();
            }
            if (TextUtils.isEmpty(this.keyword)) {
                FarmersSearchFragment.this.refreshAdapter(this.data);
            } else {
                FarmersSearchFragment.this.resetDataAndNofityAdapter(this.data);
            }
            FarmersSearchFragment.this.parentSaarthieFarmerID = "";
        }
    }
}

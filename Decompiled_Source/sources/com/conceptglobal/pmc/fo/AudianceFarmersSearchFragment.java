package com.conceptglobal.pmc.fo;

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
import com.conceptglobal.pmc.asynctask.SendRequestToServerAsync;
import com.conceptglobal.pmc.common.Astat;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.common.EndlessRecyclerViewScrollListener;
import com.conceptglobal.pmc.common.ListPopupOne;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.DataBaseHandler;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.database.InsertDataIntoDB;
import com.conceptglobal.pmc.interfaces.IFragmentToActivity;
import com.conceptglobal.pmc.interfaces.OnCompleteListener;
import com.conceptglobal.pmc.interfaces.OnLocationFoundListener;
import com.conceptglobal.pmc.locationprovider.FetchLocation;
import com.conceptglobal.pmc.model.DashboardListModel;
import com.conceptglobal.pmc.model.DynamicFields;
import com.conceptglobal.pmc.model.FarmerMobileDetails;
import com.conceptglobal.pmc.model.LocationInfo;
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
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class AudianceFarmersSearchFragment extends Fragment implements View.OnClickListener, IUpdateFarmersCount {
    private static final int GETNEWACTIVITY = 2;
    private static final String TAG = "FarmersSearchFragment";
    private static AudianceFarmersSearchFragment mFragment;
    private static Menu optionsMenu;
    public static DecimalFormat twoDForm = new DecimalFormat("#.##");
    private TextView btnClear;
    private TextView btnGo;
    private Button btnSubmit;
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
    private String isFrom;
    private RecyclerView list;
    private RelativeLayout loaderrl;
    private TextView loadertxt;
    private LocationControl locationControlTask;
    private LocationManager locationMgr;
    private EditText locationSearch;
    private Activity mActivity;
    private AudianceFarmerDraftListAdapter mAdapter;
    private IFragmentToActivity mCallback;
    private Context mContext;
    private LocalBroadcastReceiver mLocalBroadcastReceiver;
    private EditText mandalSearch;
    private LocationListener myLocationListener;
    LinearLayout no_data_found_ll;
    LinearLayout progressll;
    String query;
    private EditText radiusSearch;
    EndlessRecyclerViewScrollListener scrollListener;
    MenuItem searchMenuItem;
    private Button searchbtn;
    private EditText searchkeyword;
    private RelativeLayout searchrl;
    private ShowcaseView showcaseView;
    private EditText stateSearch;
    private List<DashboardListModel> tempGrowersList;
    private TextView tvCropId;
    private TextView tvDistrictId;
    private TextView tvLocationId;
    private TextView tvMandalId;
    private TextView tvSelected;
    private TextView tvStateId;
    MenuItem weatherItem;
    private String addCropQuery = "";
    private String addStateQuery = "";
    private String addDistrictQuery = "";
    private String addTalukaQuery = "";
    private String addLocationQuery = "";
    private String addRadiusQuery = "";
    private boolean hasLocation = false;
    private String module = null;
    private ArrayList<DynamicFields> attributesArry = null;
    private int counter = 0;
    private LocationUtils mLocationUtils = new LocationUtils();
    int farmersThreshold = 0;
    int farmersCount = 0;
    private String tag = TAG;
    private final TextWatcher stateChanged = new TextWatcher() { // from class: com.conceptglobal.pmc.fo.AudianceFarmersSearchFragment.1
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
            AudianceFarmersSearchFragment.this.tvDistrictId.setText("");
            AudianceFarmersSearchFragment.this.districtSearch.setText("");
            AudianceFarmersSearchFragment.this.tvMandalId.setText("");
            AudianceFarmersSearchFragment.this.mandalSearch.setText("");
            AudianceFarmersSearchFragment.this.tvLocationId.setText("");
            AudianceFarmersSearchFragment.this.locationSearch.setText("");
        }
    };
    private final TextWatcher districtChanged = new TextWatcher() { // from class: com.conceptglobal.pmc.fo.AudianceFarmersSearchFragment.2
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
            AudianceFarmersSearchFragment.this.tvMandalId.setText("");
            AudianceFarmersSearchFragment.this.mandalSearch.setText("");
            AudianceFarmersSearchFragment.this.tvLocationId.setText("");
            AudianceFarmersSearchFragment.this.locationSearch.setText("");
        }
    };
    private final TextWatcher mandalChanged = new TextWatcher() { // from class: com.conceptglobal.pmc.fo.AudianceFarmersSearchFragment.3
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
            AudianceFarmersSearchFragment.this.tvLocationId.setText("");
            AudianceFarmersSearchFragment.this.locationSearch.setText("");
        }
    };
    private OnCompleteListener getFarmerDetails = new OnCompleteListener() { // from class: com.conceptglobal.pmc.fo.AudianceFarmersSearchFragment.15
        @Override // com.conceptglobal.pmc.interfaces.OnCompleteListener
        public void onComplete(String str, Exception exc) {
            if (exc != null || str == null || str.length() <= 5) {
                return;
            }
            try {
                JSONObject jSONObject = new JSONObject(str);
                if (jSONObject.getInt("DataCount") == 0) {
                    AudianceFarmersSearchFragment.this.showNoDataAvailableDialog("No Farmer data found.");
                } else {
                    JSONArray jSONArray = jSONObject.getJSONArray("Data");
                    if (jSONArray != null && jSONArray.length() > 0) {
                        AudianceFarmersSearchFragment.this.showDetailsDialog((FarmerMobileDetails) new Gson().fromJson((Reader) new StringReader(jSONObject.getJSONArray("Data").getString(0)), FarmerMobileDetails.class));
                    }
                }
            } catch (Exception e) {
                PLog.e(" Get User details", e, 0);
            }
        }
    };
    private BroadcastReceiver mobileSearchReceiver = new BroadcastReceiver() { // from class: com.conceptglobal.pmc.fo.AudianceFarmersSearchFragment.17
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals(ConstantsPMC.MOBILE_SEARCH)) {
                AudianceFarmersSearchFragment.this.showMibileSearchDialog(intent.getStringExtra("MobileNumber"));
            }
        }
    };

    private double deg2rad(double d) {
        return (d * 3.141592653589793d) / 180.0d;
    }

    private double rad2deg(double d) {
        return (d * 180.0d) / 3.141592653589793d;
    }

    static /* synthetic */ int access$2308(AudianceFarmersSearchFragment audianceFarmersSearchFragment) {
        int i = audianceFarmersSearchFragment.counter;
        audianceFarmersSearchFragment.counter = i + 1;
        return i;
    }

    public static AudianceFarmersSearchFragment newInstance(String str) {
        mFragment = new AudianceFarmersSearchFragment();
        Bundle bundle = new Bundle();
        bundle.putString("farmerType", str);
        mFragment.setArguments(bundle);
        return mFragment;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.farmers_list_audiance, viewGroup, false);
        initialization(inflate);
        return inflate;
    }

    @Override // com.conceptglobal.pmc.fo.IUpdateFarmersCount
    public void setDisplay(int i) {
        this.tvSelected.setText(i + " Selected");
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
        this.radiusSearch = (EditText) view.findViewById(R.id.ed_RadiusSearch);
        this.searchkeyword = (EditText) view.findViewById(R.id.searchkeyword);
        this.radiusSearch.setHint(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_radiusFilterText()));
        this.tvSelected = (TextView) view.findViewById(R.id.tvSelectedFarmerescount);
        Button button = (Button) view.findViewById(R.id.btn_submit);
        this.btnSubmit = button;
        button.setOnClickListener(this);
        this.loadertxt = (TextView) view.findViewById(R.id.loadertxt);
        this.tvCropId = (TextView) view.findViewById(R.id.tvCropId);
        this.tvStateId = (TextView) view.findViewById(R.id.tvStateId);
        this.tvMandalId = (TextView) view.findViewById(R.id.tvMandalId);
        this.tvDistrictId = (TextView) view.findViewById(R.id.tvDistrictId);
        this.tvLocationId = (TextView) view.findViewById(R.id.tvLocationId);
        this.searchbtn = (Button) view.findViewById(R.id.searchbtn);
        this.loaderrl = (RelativeLayout) view.findViewById(R.id.loaderrl);
        this.searchrl = (RelativeLayout) view.findViewById(R.id.searchrl);
        this.clearbtn = (ImageView) view.findViewById(R.id.clearbtn);
        TextView textView = (TextView) view.findViewById(R.id.farmer_lsit_goBtn);
        this.btnGo = textView;
        textView.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_goFilterText()));
        TextView textView2 = (TextView) view.findViewById(R.id.farmer_lsit_ClearBtn);
        this.btnClear = textView2;
        textView2.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_clearFilterText()));
        this.searchrl.setVisibility(8);
        this.cropSearch.setOnClickListener(this);
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
        RecyclerView recyclerView = (RecyclerView) view.findViewById(R.id.list);
        this.list = recyclerView;
        recyclerView.setHasFixedSize(true);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getActivity());
        linearLayoutManager.setOrientation(1);
        this.list.setLayoutManager(linearLayoutManager);
        this.fastScroller = (FastScroller) view.findViewById(R.id.fastscroll);
        this.draftList = new ArrayList();
        try {
            this.dynamicColumnnames = new StringBuilder();
            this.attributesArry = GetDataFromDB.getInstance().getDynanicFieldsFirDraft(Queries.getInstance().gettingDraftColunNames(this.farmerType.equals(ConstantsPMC.TYPE_Retailer) ? "Dealer" : this.farmerType));
            for (int i = 0; i < this.attributesArry.size(); i++) {
                this.dynamicColumnnames.append(this.attributesArry.get(i).getDbColumnName() + ",");
            }
            this.dynamicColumnnames.append("Latitude,");
            this.dynamicColumnnames.append("Longitude");
            this.query = this.dynamicColumnnames.toString();
            AudianceFarmerDraftListAdapter audianceFarmerDraftListAdapter = new AudianceFarmerDraftListAdapter(this.mContext, this.draftList, this.farmerType, "0", this.isFrom, ((AudianceFarmerSelectionList) getActivity()).segmentId, ((AudianceFarmerSelectionList) getActivity()).isFromSelfAssignment, this);
            this.mAdapter = audianceFarmerDraftListAdapter;
            this.list.setAdapter(audianceFarmerDraftListAdapter);
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
            if (this.farmersCount > this.farmersThreshold) {
                this.loadertxt.setText("Farmers count is more than " + this.farmersThreshold + ", please wait while loading data...");
            }
            loadMore("-1", "50");
        } catch (Exception e) {
            PLog.e(TAG, e);
        }
    }

    private void loadMore(String str, String str2) {
        this.mAdapter.showLoading(true);
        this.mAdapter.notifyDataSetChanged();
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
        this.filtersLL.setVisibility(8);
        if (this.filtersLL.getVisibility() == 0) {
            MenuItem findItem = menu.findItem(R.id.filter_cis);
            this.filterItem = findItem;
            findItem.setIcon(R.drawable.ic_filter_release_24);
        }
        this.searchMenuItem = menu.findItem(R.id.search_cis);
        SearchManager searchManager = (SearchManager) this.mActivity.getSystemService(FirebaseAnalytics.Event.SEARCH);
        final SearchView searchView = (SearchView) MenuItemCompat.getActionView(this.searchMenuItem);
        if (searchView != null) {
            searchView.setSearchableInfo(searchManager.getSearchableInfo(this.mActivity.getComponentName()));
            searchView.setIconifiedByDefault(false);
        }
        MenuItemCompat.setOnActionExpandListener(this.searchMenuItem, new MenuItemCompat.OnActionExpandListener() { // from class: com.conceptglobal.pmc.fo.AudianceFarmersSearchFragment.4
            @Override // androidx.core.view.MenuItemCompat.OnActionExpandListener
            public boolean onMenuItemActionCollapse(MenuItem menuItem) {
                if (AudianceFarmersSearchFragment.this.mAdapter == null) {
                    return true;
                }
                AudianceFarmersSearchFragment.this.mAdapter.getFilter().filter("");
                searchView.setQuery(Astat.KEY_EMPTY, false);
                return true;
            }

            @Override // androidx.core.view.MenuItemCompat.OnActionExpandListener
            public boolean onMenuItemActionExpand(MenuItem menuItem) {
                if (AudianceFarmersSearchFragment.this.mAdapter == null) {
                    return true;
                }
                AudianceFarmersSearchFragment.this.mAdapter.getFilter().filter("");
                searchView.setQuery(Astat.KEY_EMPTY, false);
                return true;
            }
        });
        searchView.setOnQueryTextListener(new SearchView.OnQueryTextListener() { // from class: com.conceptglobal.pmc.fo.AudianceFarmersSearchFragment.5
            @Override // androidx.appcompat.widget.SearchView.OnQueryTextListener
            public boolean onQueryTextChange(String str) {
                if (AudianceFarmersSearchFragment.this.mAdapter == null) {
                    return true;
                }
                AudianceFarmersSearchFragment.this.mAdapter.getFilter().filter(str);
                return true;
            }

            @Override // androidx.appcompat.widget.SearchView.OnQueryTextListener
            public boolean onQueryTextSubmit(String str) {
                if (AudianceFarmersSearchFragment.this.mAdapter == null) {
                    return true;
                }
                AudianceFarmersSearchFragment.this.mAdapter.getFilter().filter(str);
                return true;
            }
        });
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.btn_submit /* 2131296442 */:
                Intent intent = new Intent("FARMERS_Result");
                AudianceFarmerDraftListAdapter audianceFarmerDraftListAdapter = this.mAdapter;
                intent.putExtra("FarmersList", audianceFarmerDraftListAdapter != null ? audianceFarmerDraftListAdapter.getSelectedFarmerData() : new HashMap<>());
                LocalBroadcastManager.getInstance(getActivity()).sendBroadcast(intent);
                getActivity().finish();
                break;
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
            case R.id.ed_LocationSearch /* 2131296579 */:
                if (this.tvMandalId.getText().toString().length() != 0 && this.tvDistrictId.getText().toString().length() != 0 && this.tvStateId.getText().toString().length() != 0) {
                    try {
                        ListPopupOne listPopupOne2 = new ListPopupOne(getActivity(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectText()) + " " + GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_villageText()), Queries.getInstance().gettinVillages(this.tvMandalId.getText().toString()), view, this.tvLocationId);
                        listPopupOne2.getWindow().getAttributes().windowAnimations = R.style.PauseDialogAnimation;
                        listPopupOne2.show();
                        listPopupOne2.getWindow().setSoftInputMode(3);
                        break;
                    } catch (Exception e2) {
                        PLog.e(TAG, e2);
                        return;
                    }
                } else {
                    Toast.makeText(getActivity().getApplicationContext(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_plsSelMandalFilter()), 1).show();
                    break;
                }
                break;
            case R.id.ed_districtSearch /* 2131296585 */:
                if (this.tvStateId.getText().toString().length() != 0) {
                    try {
                        ListPopupOne listPopupOne3 = new ListPopupOne(getActivity(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectText()) + " " + GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_districtText()), Queries.getInstance().gettingDistricts(this.tvStateId.getText().toString()), view, this.tvDistrictId);
                        listPopupOne3.getWindow().getAttributes().windowAnimations = R.style.PauseDialogAnimation;
                        listPopupOne3.show();
                        listPopupOne3.getWindow().setSoftInputMode(3);
                        break;
                    } catch (Exception e3) {
                        PLog.e(TAG, e3);
                        return;
                    }
                } else {
                    Toast.makeText(getActivity().getApplicationContext(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_plsSelStateFilter()), 1).show();
                    break;
                }
            case R.id.ed_mandalSearch /* 2131296586 */:
                if (this.tvDistrictId.getText().toString().length() != 0 && this.tvStateId.getText().toString().length() != 0) {
                    try {
                        ListPopupOne listPopupOne4 = new ListPopupOne(getActivity(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectText()) + " " + GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_talukaFilterText()), Queries.getInstance().gettingMandals(this.tvDistrictId.getText().toString()), view, this.tvMandalId);
                        listPopupOne4.getWindow().getAttributes().windowAnimations = R.style.PauseDialogAnimation;
                        listPopupOne4.show();
                        listPopupOne4.getWindow().setSoftInputMode(3);
                        break;
                    } catch (Exception e4) {
                        PLog.e(TAG, e4);
                        return;
                    }
                } else {
                    Toast.makeText(getActivity().getApplicationContext(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_plsSelDistrictFilter()), 1).show();
                    break;
                }
                break;
            case R.id.ed_stateSearch /* 2131296587 */:
                try {
                    ListPopupOne listPopupOne5 = new ListPopupOne(getActivity(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectText()) + " " + GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_stateText()), Queries.getInstance().gettingStates(), view, this.tvStateId);
                    listPopupOne5.getWindow().getAttributes().windowAnimations = R.style.PauseDialogAnimation;
                    listPopupOne5.show();
                    listPopupOne5.getWindow().setSoftInputMode(3);
                    break;
                } catch (Exception e5) {
                    PLog.e(TAG, e5);
                    return;
                }
            case R.id.farmer_lsit_ClearBtn /* 2131296743 */:
                this.cropSearch.setText("");
                this.stateSearch.setText("");
                this.districtSearch.setText("");
                this.mandalSearch.setText("");
                this.locationSearch.setText("");
                this.radiusSearch.setText("");
                this.cropSearch.setHint(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_cropFilterText()));
                this.stateSearch.setHint(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_stateFilterText()));
                this.districtSearch.setHint(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_districtFilterText()));
                this.mandalSearch.setHint(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_talukaFilterText()));
                this.locationSearch.setHint(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_villageFilterText()));
                this.radiusSearch.setHint(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_radiusFilterText()));
                this.tvStateId.setText("");
                this.tvCropId.setText("");
                this.tvDistrictId.setText("");
                this.tvMandalId.setText("");
                this.tvLocationId.setText("");
                try {
                    this.query = this.dynamicColumnnames.toString();
                    this.draftList.clear();
                    new ArrayList();
                    this.fastScroller.setRecyclerView(this.list);
                    loadMore("-1", "50");
                    break;
                } catch (Exception e6) {
                    PLog.e(TAG, e6);
                    return;
                }
            case R.id.farmer_lsit_goBtn /* 2131296744 */:
                if (this.tvCropId.getText().toString().length() != 0) {
                    this.addCropQuery = " and fcm.cropId = " + this.tvCropId.getText().toString();
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
                AudianceFarmersSearchFragment.this.dbllatitude = Double.valueOf(location.getLatitude());
                AudianceFarmersSearchFragment.this.dbllongitude = Double.valueOf(location.getLongitude());
                AudianceFarmersSearchFragment.this.hasLocation = true;
            }
        }

        @Override // android.location.LocationListener
        public void onProviderEnabled(String str) {
            Toast.makeText(AudianceFarmersSearchFragment.this.getActivity().getApplicationContext(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_gpsEnabledAlert()), 0).show();
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
        builder.setMessage(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_notAbleCaptureGPSAlert())).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.AudianceFarmersSearchFragment.6
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                AudianceFarmersSearchFragment.this.startActivity(new Intent("android.settings.SECURITY_SETTINGS"));
                AudianceFarmersSearchFragment.this.getActivity().finish();
            }
        });
        builder.show();
    }

    private class LocationControl extends AsyncTask<Context, Void, Void> {
        private final ProgressDialog dialog;

        private LocationControl() {
            this.dialog = new ProgressDialog(AudianceFarmersSearchFragment.this.getActivity());
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            this.dialog.setMessage(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_gettLocationPWDialog()));
            this.dialog.setButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_gpsCancelButton()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.AudianceFarmersSearchFragment.LocationControl.1
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    dialogInterface.dismiss();
                    AudianceFarmersSearchFragment.this.hasLocation = true;
                }
            });
            this.dialog.show();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Void doInBackground(Context... contextArr) {
            while (!AudianceFarmersSearchFragment.this.hasLocation) {
                try {
                    Thread.sleep(1000L);
                } catch (InterruptedException e) {
                    PLog.e(AudianceFarmersSearchFragment.TAG, e);
                }
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Void r11) {
            if (AudianceFarmersSearchFragment.this.dbllatitude != null && AudianceFarmersSearchFragment.this.dbllongitude != null) {
                if (this.dialog.isShowing()) {
                    this.dialog.dismiss();
                }
                AudianceFarmersSearchFragment.this.tempGrowersList = new ArrayList();
                Double.valueOf(0.0d);
                Double valueOf = Double.valueOf(0.0d);
                if (AudianceFarmersSearchFragment.this.radiusSearch != null && AudianceFarmersSearchFragment.this.radiusSearch.getText().toString().length() > 0) {
                    valueOf = Double.valueOf(Double.parseDouble(AudianceFarmersSearchFragment.this.radiusSearch.getText().toString()));
                }
                AudianceFarmersSearchFragment.this.tempGrowersList.clear();
                for (int i = 0; i < AudianceFarmersSearchFragment.this.draftList.size(); i++) {
                    DashboardListModel dashboardListModel = (DashboardListModel) AudianceFarmersSearchFragment.this.draftList.get(i);
                    if (dashboardListModel.getLatitude() != null && !dashboardListModel.getLangitude().equalsIgnoreCase("NULL") && dashboardListModel.getLatitude().length() > 0) {
                        AudianceFarmersSearchFragment audianceFarmersSearchFragment = AudianceFarmersSearchFragment.this;
                        double distance = audianceFarmersSearchFragment.distance(audianceFarmersSearchFragment.dbllatitude, AudianceFarmersSearchFragment.this.dbllongitude, Double.valueOf(Double.parseDouble(dashboardListModel.getLatitude())), Double.valueOf(Double.parseDouble(dashboardListModel.getLangitude())), 'K');
                        Double.valueOf(distance).getClass();
                        if (distance <= valueOf.doubleValue()) {
                            AudianceFarmersSearchFragment.this.tempGrowersList.add(dashboardListModel);
                        }
                    }
                }
                if (AudianceFarmersSearchFragment.this.tempGrowersList.size() > 0) {
                    AudianceFarmersSearchFragment.this.mAdapter = new AudianceFarmerDraftListAdapter(AudianceFarmersSearchFragment.this.mContext, AudianceFarmersSearchFragment.this.tempGrowersList, AudianceFarmersSearchFragment.this.farmerType, "0", AudianceFarmersSearchFragment.this.isFrom, ((AudianceFarmerSelectionList) AudianceFarmersSearchFragment.this.getActivity()).segmentId, ((AudianceFarmerSelectionList) AudianceFarmersSearchFragment.this.getActivity()).isFromSelfAssignment, AudianceFarmersSearchFragment.this);
                    AudianceFarmersSearchFragment.this.list.setAdapter(AudianceFarmersSearchFragment.this.mAdapter);
                    return;
                }
                Toast.makeText(AudianceFarmersSearchFragment.this.getActivity().getApplicationContext(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_noItemsAvailableAlert()), 0).show();
                return;
            }
            if (this.dialog.isShowing()) {
                this.dialog.dismiss();
            }
            AudianceFarmersSearchFragment.this.locationNotFound();
        }
    }

    public void locationNotFound() {
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        builder.setMessage(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_notAbleCaptureGPSAlert())).setCancelable(false).setPositiveButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_gpsOKButton()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.AudianceFarmersSearchFragment.7
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                AudianceFarmersSearchFragment.this.hasLocation = false;
                AudianceFarmersSearchFragment.this.locationControlTask = new LocationControl();
                AudianceFarmersSearchFragment.this.locationControlTask.execute(new Context[0]);
            }
        });
        builder.setNegativeButton(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_gpsCancelButton()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.AudianceFarmersSearchFragment.8
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
                AudianceFarmerDraftListAdapter audianceFarmerDraftListAdapter = new AudianceFarmerDraftListAdapter(this.mContext, this.tempGrowersList, this.farmerType, "0", this.isFrom, ((AudianceFarmerSelectionList) getActivity()).segmentId, ((AudianceFarmerSelectionList) getActivity()).isFromSelfAssignment, this);
                this.mAdapter = audianceFarmerDraftListAdapter;
                this.list.setAdapter(audianceFarmerDraftListAdapter);
                return;
            } else {
                this.mAdapter = new AudianceFarmerDraftListAdapter(this.mContext, this.tempGrowersList, this.farmerType, "0", this.isFrom, ((AudianceFarmerSelectionList) getActivity()).segmentId, ((AudianceFarmerSelectionList) getActivity()).isFromSelfAssignment, this);
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
        Target target = new Target() { // from class: com.conceptglobal.pmc.fo.AudianceFarmersSearchFragment.9
            @Override // com.github.amlcurran.showcaseview.targets.Target
            public Point getPoint() {
                return new Point(UtilDeclarations.getScreenWidth() - AudianceFarmersSearchFragment.optionsMenu.findItem(R.id.search_cis).getIcon().getIntrinsicWidth(), ((AppCompatActivity) AudianceFarmersSearchFragment.this.getActivity()).getSupportActionBar().getHeight());
            }
        };
        final Target target2 = new Target() { // from class: com.conceptglobal.pmc.fo.AudianceFarmersSearchFragment.10
            @Override // com.github.amlcurran.showcaseview.targets.Target
            public Point getPoint() {
                return new Point(UtilDeclarations.getScreenWidth() - ((AudianceFarmersSearchFragment.optionsMenu.findItem(R.id.filter_cis).getIcon().getIntrinsicWidth() * 5) / 2), ((AppCompatActivity) AudianceFarmersSearchFragment.this.getActivity()).getSupportActionBar().getHeight());
            }
        };
        ShowcaseView build = new ShowcaseView.Builder((Activity) this.mContext).setTarget(target).setContentTitle("Search").setContentText("Click here to search ").withMaterialShowcase().setStyle(R.style.CustomShowcaseTheme2).setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.AudianceFarmersSearchFragment.11
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                int i = AudianceFarmersSearchFragment.this.counter;
                if (i == 0) {
                    AudianceFarmersSearchFragment.this.showcaseView.setTarget(target2);
                    AudianceFarmersSearchFragment.this.showcaseView.setContentTitle("Filter");
                    AudianceFarmersSearchFragment.this.showcaseView.setContentText("Click her for filter options");
                    AudianceFarmersSearchFragment.this.showcaseView.setButtonText("Close");
                } else if (i == 1) {
                    AudianceFarmersSearchFragment.this.showcaseView.hide();
                }
                AudianceFarmersSearchFragment.access$2308(AudianceFarmersSearchFragment.this);
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
        button2.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.AudianceFarmersSearchFragment.12
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                UtilDeclarations.hideInputKeyboard(AudianceFarmersSearchFragment.this.getActivity());
                if (AudianceFarmersSearchFragment.this.isValidMobileNumber(editText.getText().toString())) {
                    AudianceFarmersSearchFragment.this.callMobileDetailsApi(editText.getText().toString());
                    dialog.dismiss();
                } else {
                    editText.setError("Please enter 10 digit mobile number");
                }
            }
        });
        button.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.AudianceFarmersSearchFragment.13
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                UtilDeclarations.hideInputKeyboard(AudianceFarmersSearchFragment.this.getActivity());
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
        button.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fo.AudianceFarmersSearchFragment.14
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
        builder.setMessage(str).setCancelable(false).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.AudianceFarmersSearchFragment.16
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
        builder.setMessage(str).setCancelable(false).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.AudianceFarmersSearchFragment.18
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
                AudianceFarmersSearchFragment.this.fetchLocation();
                return;
            }
            if (intent.getAction().equalsIgnoreCase("android.intent.action.FarmerSearchLocationPermissionDenied")) {
                AudianceFarmersSearchFragment.this.mLocationUtils.showDialog(AudianceFarmersSearchFragment.this.getActivity(), LocationUtils.PERMISSION_DENIED);
            } else if (intent.getAction().equalsIgnoreCase("android.intent.action.FarmerSearchGPSTurnedOnResult")) {
                AudianceFarmersSearchFragment.this.fetchLocation();
            } else if (intent.getAction().equalsIgnoreCase("android.intent.action.FarmerSearchGPSNotTurnedOnResult")) {
                AudianceFarmersSearchFragment.this.mLocationUtils.showDialog(AudianceFarmersSearchFragment.this.getActivity(), LocationUtils.GPS_NOT_TURNED_ON);
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
            new FetchLocation(getActivity(), false, new OnLocationFoundListener() { // from class: com.conceptglobal.pmc.fo.AudianceFarmersSearchFragment.19
                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onLocationFound(Location location) {
                }

                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onTimerTimeOut() {
                }

                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onLocationFound(LocationInfo locationInfo) {
                    AudianceFarmersSearchFragment.this.dbllatitude = Double.valueOf(locationInfo.getLatitude());
                    AudianceFarmersSearchFragment.this.dbllongitude = Double.valueOf(locationInfo.getLongitude());
                    AudianceFarmersSearchFragment.this.disPlayRadiusData();
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
            AudianceFarmersSearchFragment.this.createProgressDialog("Please wait");
            if (AudianceFarmersSearchFragment.this.dialog == null || AudianceFarmersSearchFragment.this.getActivity().isFinishing()) {
                return;
            }
            AudianceFarmersSearchFragment.this.dialog.show();
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
                if (!AudianceFarmersSearchFragment.this.farmerType.equalsIgnoreCase(ConstantsPMC.TYPE_FARMER)) {
                    if (!AudianceFarmersSearchFragment.this.farmerType.equalsIgnoreCase(ConstantsPMC.TYPE_Retailer)) {
                        if (!AudianceFarmersSearchFragment.this.farmerType.equalsIgnoreCase("Planter")) {
                            if (!AudianceFarmersSearchFragment.this.farmerType.equalsIgnoreCase("Village")) {
                                return null;
                            }
                            this.data = GetDataFromDB.getInstance().getFarmerBindDataDynamic1(Queries.getInstance().getDashboardData(AudianceFarmersSearchFragment.this.query, "4", parseInt, parseInt2), true);
                            return null;
                        }
                        this.data = GetDataFromDB.getInstance().getFarmerBindDataDynamic1(Queries.getInstance().getDashboardData(AudianceFarmersSearchFragment.this.query, "8", parseInt, parseInt2), true);
                        return null;
                    }
                    this.data = GetDataFromDB.getInstance().getRetailerBindDataDynamicRadius(((AudianceFarmerSelectionList) AudianceFarmersSearchFragment.this.getActivity()).sourceQry, true);
                    return null;
                }
                this.data = GetDataFromDB.getInstance().getFarmerBindDataDynamic1(((AudianceFarmerSelectionList) AudianceFarmersSearchFragment.this.getActivity()).sourceQry, true);
                return null;
            }
            if (!AudianceFarmersSearchFragment.this.farmerType.equalsIgnoreCase(ConstantsPMC.TYPE_FARMER)) {
                if (!AudianceFarmersSearchFragment.this.farmerType.equalsIgnoreCase("Planter")) {
                    if (!AudianceFarmersSearchFragment.this.farmerType.equalsIgnoreCase("Village")) {
                        return null;
                    }
                    this.data = GetDataFromDB.getInstance().getFarmersByKeyword(Queries.getInstance().getDashboardData(AudianceFarmersSearchFragment.this.query, "4", parseInt, parseInt2), this.keyword);
                    return null;
                }
                this.data = GetDataFromDB.getInstance().getFarmersByKeyword(Queries.getInstance().getDashboardData(AudianceFarmersSearchFragment.this.query, "8", parseInt, parseInt2), this.keyword);
                return null;
            }
            this.data = GetDataFromDB.getInstance().getFarmersByKeyword(Queries.getInstance().getDashboardData(AudianceFarmersSearchFragment.this.query, "1", parseInt, parseInt2), this.keyword);
            return null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Void r2) {
            super.onPostExecute((LoadDataTask) r2);
            if (AudianceFarmersSearchFragment.this.dialog != null && AudianceFarmersSearchFragment.this.dialog.isShowing()) {
                AudianceFarmersSearchFragment.this.dialog.dismiss();
            }
            if (TextUtils.isEmpty(this.keyword)) {
                AudianceFarmersSearchFragment.this.refreshAdapter(this.data);
            } else {
                AudianceFarmersSearchFragment.this.resetDataAndNofityAdapter(this.data);
            }
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
            if (AudianceFarmersSearchFragment.this.farmerType.equalsIgnoreCase(ConstantsPMC.TYPE_FARMER)) {
                if (AudianceFarmersSearchFragment.this.radiusSearch.getText().toString() != null && AudianceFarmersSearchFragment.this.radiusSearch.getText().toString().length() > 0) {
                    this.data = GetDataFromDB.getInstance().getFarmerBindDataDynamic1(Queries.getInstance().searchQueryLatLongNotNull(str, AudianceFarmersSearchFragment.this.addCropQuery, AudianceFarmersSearchFragment.this.addStateQuery, AudianceFarmersSearchFragment.this.addDistrictQuery, AudianceFarmersSearchFragment.this.addTalukaQuery, AudianceFarmersSearchFragment.this.addLocationQuery, AudianceFarmersSearchFragment.this.addRadiusQuery, "", "", "", "", "1"), true);
                    return null;
                }
                this.data = GetDataFromDB.getInstance().getFarmerBindDataDynamic1(Queries.getInstance().searchQuery(str, AudianceFarmersSearchFragment.this.addCropQuery, AudianceFarmersSearchFragment.this.addStateQuery, AudianceFarmersSearchFragment.this.addDistrictQuery, AudianceFarmersSearchFragment.this.addTalukaQuery, AudianceFarmersSearchFragment.this.addLocationQuery, AudianceFarmersSearchFragment.this.addRadiusQuery, "", "", "", "", "1"), true);
                return null;
            }
            if (!AudianceFarmersSearchFragment.this.farmerType.equalsIgnoreCase("Planter")) {
                if (!AudianceFarmersSearchFragment.this.farmerType.equalsIgnoreCase("Village")) {
                    return null;
                }
                this.data = GetDataFromDB.getInstance().getFarmerBindDataDynamic1(Queries.getInstance().searchQuery(str, AudianceFarmersSearchFragment.this.addCropQuery, AudianceFarmersSearchFragment.this.addStateQuery, AudianceFarmersSearchFragment.this.addDistrictQuery, AudianceFarmersSearchFragment.this.addTalukaQuery, AudianceFarmersSearchFragment.this.addLocationQuery, AudianceFarmersSearchFragment.this.addRadiusQuery, "", "", "", "", "4"), true);
                return null;
            }
            this.data = GetDataFromDB.getInstance().getFarmerBindDataDynamic1(Queries.getInstance().searchQuery(str, AudianceFarmersSearchFragment.this.addCropQuery, AudianceFarmersSearchFragment.this.addStateQuery, AudianceFarmersSearchFragment.this.addDistrictQuery, AudianceFarmersSearchFragment.this.addTalukaQuery, AudianceFarmersSearchFragment.this.addLocationQuery, AudianceFarmersSearchFragment.this.addRadiusQuery, "", "", "", "", "8"), true);
            return null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0117 -> B:13:0x016d). Please report as a decompilation issue!!! */
        @Override // android.os.AsyncTask
        public void onPostExecute(Void r13) {
            super.onPostExecute((SearchDataTask) r13);
            AudianceFarmersSearchFragment.this.draftList.clear();
            AudianceFarmersSearchFragment.this.draftList.addAll(this.data);
            AudianceFarmersSearchFragment.this.list.setVisibility(0);
            AudianceFarmersSearchFragment.this.fastScroller.setVisibility(0);
            try {
                if (AudianceFarmersSearchFragment.this.radiusSearch.getText().toString() != null && AudianceFarmersSearchFragment.this.radiusSearch.getText().toString().length() > 0) {
                    try {
                        AudianceFarmersSearchFragment.this.hasLocation = false;
                        if (AudianceFarmersSearchFragment.this.draftList != null && AudianceFarmersSearchFragment.this.draftList.size() > 0) {
                            AudianceFarmersSearchFragment.this.fetchLocation();
                        } else {
                            Toast.makeText(AudianceFarmersSearchFragment.this.getActivity().getApplicationContext(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_noItemsAvailableAlert()), 1).show();
                            try {
                                if (AudianceFarmersSearchFragment.this.draftList != null && AudianceFarmersSearchFragment.this.draftList.size() > 0) {
                                    AudianceFarmersSearchFragment.this.mAdapter = new AudianceFarmerDraftListAdapter(AudianceFarmersSearchFragment.this.mContext, AudianceFarmersSearchFragment.this.draftList, AudianceFarmersSearchFragment.this.farmerType, "0", AudianceFarmersSearchFragment.this.isFrom, ((AudianceFarmerSelectionList) AudianceFarmersSearchFragment.this.getActivity()).segmentId, ((AudianceFarmerSelectionList) AudianceFarmersSearchFragment.this.getActivity()).isFromSelfAssignment, AudianceFarmersSearchFragment.this);
                                    AudianceFarmersSearchFragment.this.list.setAdapter(AudianceFarmersSearchFragment.this.mAdapter);
                                } else {
                                    Toast.makeText(AudianceFarmersSearchFragment.this.getActivity().getApplicationContext(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_noItemsAvailableAlert()), 0).show();
                                }
                            } catch (Exception e) {
                                e.printStackTrace();
                                PLog.e(AudianceFarmersSearchFragment.TAG, e);
                            }
                        }
                    } catch (Exception e2) {
                        PLog.e(AudianceFarmersSearchFragment.TAG, e2);
                    }
                } else {
                    AudianceFarmersSearchFragment.this.mAdapter = new AudianceFarmerDraftListAdapter(AudianceFarmersSearchFragment.this.mContext, AudianceFarmersSearchFragment.this.draftList, AudianceFarmersSearchFragment.this.farmerType, "0", AudianceFarmersSearchFragment.this.isFrom, ((AudianceFarmerSelectionList) AudianceFarmersSearchFragment.this.getActivity()).segmentId, ((AudianceFarmerSelectionList) AudianceFarmersSearchFragment.this.getActivity()).isFromSelfAssignment, AudianceFarmersSearchFragment.this);
                    AudianceFarmersSearchFragment.this.list.setAdapter(AudianceFarmersSearchFragment.this.mAdapter);
                }
                AudianceFarmersSearchFragment.this.fastScroller.setRecyclerView(AudianceFarmersSearchFragment.this.list);
                AudianceFarmersSearchFragment.this.addCropQuery = "";
                AudianceFarmersSearchFragment.this.addStateQuery = "";
                AudianceFarmersSearchFragment.this.addDistrictQuery = "";
                AudianceFarmersSearchFragment.this.addTalukaQuery = "";
                AudianceFarmersSearchFragment.this.addLocationQuery = "";
                AudianceFarmersSearchFragment.this.addRadiusQuery = "";
            } catch (Exception e3) {
                PLog.e(AudianceFarmersSearchFragment.TAG, e3);
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i != 2 || i2 == 0 || intent == null || intent.getStringArrayExtra(ConstantDeclarations.getInstance().getKEYSELECTION()) == null) {
            return;
        }
        String[] stringArray = intent.getExtras().getStringArray(ConstantDeclarations.getInstance().getKEYSELECTION());
        String stringExtra = intent.getStringExtra("FarmerId");
        long timeInMillis = Calendar.getInstance().getTimeInMillis();
        if (stringArray != null) {
            try {
                new ArrayList();
                String str = stringArray[0];
                List<String> list = GetDataFromDB.getInstance().getList(Queries.getInstance().getListOfAttributesUpdate(str));
                if (list != null && list.size() > 0) {
                    Iterator<String> it = list.iterator();
                    while (it.hasNext()) {
                        try {
                            InsertDataIntoDB.insertCustomerAttributeDetails(stringExtra, str, it.next(), ((AudianceFarmerSelectionList) getActivity()).segmentId, 0, timeInMillis, 1);
                        } catch (Exception e) {
                            PLog.e(this.tag, e);
                        }
                    }
                }
            } catch (Exception e2) {
                PLog.e(this.tag, e2);
            }
        }
        Intent intent2 = new Intent(getActivity().getBaseContext(), (Class<?>) SAAttributeActivity.class);
        intent2.putExtra(ConstantDeclarations.getInstance().getKEYFARMERID(), stringExtra);
        intent2.putExtra("ACTIVITYID", Integer.parseInt(stringArray[0]));
        intent2.putExtra("ACTIVITYNAME", stringArray[1]);
        intent2.putExtra("SEGMENTID", ((AudianceFarmerSelectionList) getActivity()).segmentId);
        intent2.putExtra("ISSELFASSIGN", 1);
        intent2.putExtra("TRANSID", timeInMillis);
        intent2.putExtra("ASSIGNMENTID", 0);
        intent2.addFlags(67108864);
        startActivity(intent2.addFlags(131072).addFlags(67108864));
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
}

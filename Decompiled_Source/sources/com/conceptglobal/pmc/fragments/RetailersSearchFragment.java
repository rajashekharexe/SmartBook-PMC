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
import androidx.recyclerview.widget.RecyclerView;
import com.conceptglobal.ifastscroll.FastScroller;
import com.conceptglobal.pmc.adapter.AddFarmerDraftListAdapter;
import com.conceptglobal.pmc.asynctask.SendRequestToServerAsync;
import com.conceptglobal.pmc.common.Astat;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.common.EndlessRecyclerViewScrollListener;
import com.conceptglobal.pmc.common.ListPopupOne;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.database.InsertDataIntoDB;
import com.conceptglobal.pmc.fo.SAAttributeActivity;
import com.conceptglobal.pmc.fo.SAAttributeActivity_FBF;
import com.conceptglobal.pmc.interfaces.IFragmentToActivity;
import com.conceptglobal.pmc.interfaces.OnCompleteListener;
import com.conceptglobal.pmc.interfaces.OnLocationFoundListener;
import com.conceptglobal.pmc.locationprovider.FetchLocation;
import com.conceptglobal.pmc.model.DashboardListModel;
import com.conceptglobal.pmc.model.DynamicFields;
import com.conceptglobal.pmc.model.LocationInfo;
import com.conceptglobal.pmc.model.RetailerMobileDetails;
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
public class RetailersSearchFragment extends Fragment implements View.OnClickListener {
    private static final int GETNEWACTIVITY = 2;
    private static String farmerType;
    private static RetailersSearchFragment mFragment;
    private static Menu optionsMenu;
    public static DecimalFormat twoDForm = new DecimalFormat("#.##");
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
    private FastScroller fastScroller;
    MenuItem filterItem;
    private LinearLayout filtersLL;
    private GetDataFromDB getDataFromDB;
    private Button ibCloseSort;
    private boolean isDisplaySortDialog;
    private String isFrom;
    boolean isFromSelfAssignment;
    private boolean isGoBtnClicked;
    private RecyclerView list;
    private RelativeLayout loaderrl;
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
    private RadioButton radioButton1;
    private RadioButton radioButton2;
    private RadioButton radioButton3;
    private RadioButton radioButton4;
    private RadioButton radioButton5;
    private RadioButton radioButton6;
    private EditText radiusSearch;
    private RadioGroup rbDisplayType;
    private RadioGroup rbSort;
    private RadioButton rb_All;
    private RelativeLayout rvSort;
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
    private TextView tvRadiusDetails;
    private TextView tvStateId;
    MenuItem weatherItem;
    public String fromFavourites = "";
    private String addCropQuery = "";
    private String addStateQuery = "";
    private String addDistrictQuery = "";
    private String addTalukaQuery = "";
    private String addLocationQuery = "";
    private String addRadiusQuery = "";
    private boolean hasLocation = false;
    private String module = null;
    private String TAG = "FarmerSearchActivity";
    private ArrayList<DynamicFields> attributesArry = null;
    ArrayList<DashboardListModel> listOfStrings = new ArrayList<>();
    long isRaiusCheckRequired = 0;
    private int counter = 0;
    private LocationUtils mLocationUtils = new LocationUtils();
    private boolean loadMore = true;
    private String tag = "RetailersSearchFragment";
    private int distanceInKiloMeters = 1;
    private final TextWatcher stateChanged = new TextWatcher() { // from class: com.conceptglobal.pmc.fragments.RetailersSearchFragment.1
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
            RetailersSearchFragment.this.tvDistrictId.setText("");
            RetailersSearchFragment.this.districtSearch.setText("");
            RetailersSearchFragment.this.tvMandalId.setText("");
            RetailersSearchFragment.this.mandalSearch.setText("");
            RetailersSearchFragment.this.tvLocationId.setText("");
            RetailersSearchFragment.this.locationSearch.setText("");
        }
    };
    private final TextWatcher districtChanged = new TextWatcher() { // from class: com.conceptglobal.pmc.fragments.RetailersSearchFragment.2
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
            RetailersSearchFragment.this.tvMandalId.setText("");
            RetailersSearchFragment.this.mandalSearch.setText("");
            RetailersSearchFragment.this.tvLocationId.setText("");
            RetailersSearchFragment.this.locationSearch.setText("");
        }
    };
    private final TextWatcher mandalChanged = new TextWatcher() { // from class: com.conceptglobal.pmc.fragments.RetailersSearchFragment.3
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
            RetailersSearchFragment.this.tvLocationId.setText("");
            RetailersSearchFragment.this.locationSearch.setText("");
        }
    };
    private BroadcastReceiver mobileSearchReceiver = new BroadcastReceiver() { // from class: com.conceptglobal.pmc.fragments.RetailersSearchFragment.12
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals(ConstantsPMC.MOBILE_SEARCH)) {
                RetailersSearchFragment.this.showMibileSearchDialog(intent.getStringExtra("MobileNumber"));
            }
        }
    };
    private OnCompleteListener getFarmerDetails = new OnCompleteListener() { // from class: com.conceptglobal.pmc.fragments.RetailersSearchFragment.16
        @Override // com.conceptglobal.pmc.interfaces.OnCompleteListener
        public void onComplete(String str, Exception exc) {
            if (exc != null || str == null || str.length() <= 5) {
                return;
            }
            try {
                JSONObject jSONObject = new JSONObject(str);
                if (jSONObject.getInt("DataCount") == 0) {
                    RetailersSearchFragment.this.showNoDataAvailableDialog("No Retailer data found.");
                } else {
                    JSONArray jSONArray = jSONObject.getJSONArray("Data");
                    if (jSONArray != null && jSONArray.length() > 0) {
                        RetailersSearchFragment.this.showDetailsDialog((RetailerMobileDetails) new Gson().fromJson((Reader) new StringReader(jSONObject.getJSONArray("Data").getString(0)), RetailerMobileDetails.class));
                    }
                }
            } catch (Exception e) {
                PLog.e(" Get User details", e, 0);
            }
        }
    };

    private double deg2rad(double d) {
        return (d * 3.141592653589793d) / 180.0d;
    }

    private double rad2deg(double d) {
        return (d * 180.0d) / 3.141592653589793d;
    }

    static /* synthetic */ int access$2408(RetailersSearchFragment retailersSearchFragment) {
        int i = retailersSearchFragment.counter;
        retailersSearchFragment.counter = i + 1;
        return i;
    }

    public static RetailersSearchFragment newInstance(String str) {
        mFragment = new RetailersSearchFragment();
        Bundle bundle = new Bundle();
        bundle.putString("farmerType", str);
        mFragment.setArguments(bundle);
        return mFragment;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.retailers_list, viewGroup, false);
        this.getDataFromDB = GetDataFromDB.getInstance();
        initialization(inflate);
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mActivity = getActivity();
        this.mContext = getActivity();
        farmerType = getArguments().getString("farmerType");
        setHasOptionsMenu(true);
        this.isFrom = "ALL";
        Bundle extras = getActivity().getIntent().getExtras();
        if (extras != null) {
            this.module = extras.getString("module");
        }
        if (getActivity() instanceof DraftList) {
            this.isFromSelfAssignment = ((DraftList) getActivity()).isFromSelfAssignment;
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.RetailerSearchLocationPermissionGranted");
        intentFilter.addAction("android.intent.action.RetailerSearchLocationPermissionDenied");
        intentFilter.addAction("android.intent.action.RetailerSearchGPSTurnedOnResult");
        intentFilter.addAction("android.intent.action.RetailerSearchGPSNotTurnedOnResult");
        this.mLocalBroadcastReceiver = new LocalBroadcastReceiver();
        LocalBroadcastManager.getInstance(getActivity()).registerReceiver(this.mLocalBroadcastReceiver, intentFilter);
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(17:2|3|(2:6|4)|7|8|(12:13|(1:15)(1:38)|16|17|18|19|(1:21)(2:31|(1:35))|22|23|(1:25)|26|28)|39|16|17|18|19|(0)(0)|22|23|(0)|26|28) */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0472, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0473, code lost:
    
        r0.printStackTrace();
     */
    /* JADX WARN: Removed duplicated region for block: B:21:0x03eb A[Catch: Exception -> 0x0472, TRY_ENTER, TryCatch #1 {Exception -> 0x0472, blocks: (B:18:0x03df, B:21:0x03eb, B:31:0x0432, B:33:0x043a, B:35:0x0442), top: B:17:0x03df, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x047a A[Catch: Exception -> 0x0484, TryCatch #0 {Exception -> 0x0484, blocks: (B:3:0x02aa, B:4:0x02c4, B:6:0x02cc, B:8:0x02f1, B:10:0x0316, B:13:0x031f, B:15:0x0329, B:16:0x03d1, B:23:0x0476, B:25:0x047a, B:26:0x047c, B:37:0x0473, B:38:0x0346, B:39:0x038c, B:18:0x03df, B:21:0x03eb, B:31:0x0432, B:33:0x043a, B:35:0x0442), top: B:2:0x02aa, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0432 A[Catch: Exception -> 0x0472, TryCatch #1 {Exception -> 0x0472, blocks: (B:18:0x03df, B:21:0x03eb, B:31:0x0432, B:33:0x043a, B:35:0x0442), top: B:17:0x03df, outer: #0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void initialization(android.view.View r32) {
        /*
            Method dump skipped, instructions count: 1163
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.fragments.RetailersSearchFragment.initialization(android.view.View):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadMore(String str, String str2) {
        if (this.isGoBtnClicked) {
            this.isGoBtnClicked = false;
            return;
        }
        this.mAdapter.showLoading(true);
        this.mAdapter.notifyDataSetChanged();
        try {
            this.isRaiusCheckRequired = GetDataFromDB.getInstance().getLookupValue(Queries.getInstance().getItemValue("SARetailerDealerRadiusCheckRequired"));
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (!farmerType.equalsIgnoreCase("UnVerifiedRetailer") && this.isFromSelfAssignment && this.isRaiusCheckRequired == 1) {
            fetchLocation();
        } else {
            new LoadDataTask().execute(str, str2);
        }
        if (this.isFromSelfAssignment && this.isRaiusCheckRequired == 1) {
            this.tvRadiusDetails.setVisibility(0);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == 16908332) {
            this.mActivity.finish();
            return true;
        }
        if (itemId != R.id.filter_cis) {
            if (itemId == R.id.sort) {
                if (this.isDisplaySortDialog) {
                    slideToBottom(this.rvSort);
                } else {
                    slideToTop(this.rvSort);
                }
                return true;
            }
            return super.onOptionsItemSelected(menuItem);
        }
        if (this.filtersLL.getVisibility() == 8) {
            this.filtersLL.setVisibility(0);
            menuItem.setIcon(R.drawable.ic_filter_release_24);
        } else if (this.filtersLL.getVisibility() == 0) {
            this.filtersLL.setVisibility(8);
            menuItem.setIcon(R.drawable.ic_filter_24);
        }
        return true;
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        menuInflater.inflate(R.menu.retailer_search_menu, menu);
        optionsMenu = menu;
        if (this.filtersLL.getVisibility() == 0) {
            MenuItem findItem = menu.findItem(R.id.filter_cis);
            this.filterItem = findItem;
            findItem.setIcon(R.drawable.ic_filter_release_24);
        }
        if (farmerType.equalsIgnoreCase("UnVerifiedRetailer")) {
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
        MenuItemCompat.setOnActionExpandListener(this.searchMenuItem, new MenuItemCompat.OnActionExpandListener() { // from class: com.conceptglobal.pmc.fragments.RetailersSearchFragment.4
            @Override // androidx.core.view.MenuItemCompat.OnActionExpandListener
            public boolean onMenuItemActionCollapse(MenuItem menuItem) {
                if (RetailersSearchFragment.this.mAdapter == null) {
                    return true;
                }
                RetailersSearchFragment.this.mAdapter.getFilter().filter("");
                searchView.setQuery(Astat.KEY_EMPTY, false);
                return true;
            }

            @Override // androidx.core.view.MenuItemCompat.OnActionExpandListener
            public boolean onMenuItemActionExpand(MenuItem menuItem) {
                if (RetailersSearchFragment.this.mAdapter == null) {
                    return true;
                }
                RetailersSearchFragment.this.mAdapter.getFilter().filter("");
                searchView.setQuery(Astat.KEY_EMPTY, false);
                return true;
            }
        });
        searchView.setOnQueryTextListener(new SearchView.OnQueryTextListener() { // from class: com.conceptglobal.pmc.fragments.RetailersSearchFragment.5
            @Override // androidx.appcompat.widget.SearchView.OnQueryTextListener
            public boolean onQueryTextChange(String str) {
                if (RetailersSearchFragment.this.mAdapter == null) {
                    return true;
                }
                RetailersSearchFragment.this.mAdapter.getFilter().filter(str);
                return true;
            }

            @Override // androidx.appcompat.widget.SearchView.OnQueryTextListener
            public boolean onQueryTextSubmit(String str) {
                if (RetailersSearchFragment.this.mAdapter == null) {
                    return true;
                }
                RetailersSearchFragment.this.mAdapter.getFilter().filter(str);
                return true;
            }
        });
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.btn_close_sort /* 2131296409 */:
                slideToBottom(this.rvSort);
                break;
            case R.id.clearbtn /* 2131296505 */:
                this.searchkeyword.setText((CharSequence) null);
                this.clearbtn.setVisibility(8);
                loadMore("-1", "50");
                break;
            case R.id.ed_CropSearch /* 2131296575 */:
                try {
                    ListPopupOne listPopupOne = new ListPopupOne(getActivity(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectText()) + " " + GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_cropFilterText()), Queries.getInstance().getCropNames(), view, this.tvCropId);
                    listPopupOne.getWindow().getAttributes().windowAnimations = R.style.PauseDialogAnimation;
                    listPopupOne.show();
                    listPopupOne.getWindow().setSoftInputMode(3);
                    break;
                } catch (Exception e) {
                    PLog.e(this.TAG, e);
                    return;
                }
            case R.id.ed_LocationSearch /* 2131296579 */:
                this.tvLocationId.setText("");
                this.locationSearch.setText("");
                if (this.tvMandalId.getText().toString().length() != 0 && this.tvDistrictId.getText().toString().length() != 0 && this.tvStateId.getText().toString().length() != 0) {
                    try {
                        ListPopupOne listPopupOne2 = new ListPopupOne(this.mActivity, this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_selectText()) + " " + this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_villageText()), Queries.getInstance().gettinVillages(this.tvMandalId.getText().toString()), view, this.tvLocationId);
                        listPopupOne2.getWindow().getAttributes().windowAnimations = R.style.PauseDialogAnimation;
                        listPopupOne2.show();
                        listPopupOne2.getWindow().setSoftInputMode(3);
                        break;
                    } catch (Exception e2) {
                        PLog.e(this.TAG, e2);
                        return;
                    }
                } else {
                    Toast.makeText(this.mActivity.getApplicationContext(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_plsSelMandalFilter()), 1).show();
                    break;
                }
                break;
            case R.id.ed_districtSearch /* 2131296585 */:
                if (this.tvStateId.getText().toString().length() != 0) {
                    try {
                        ListPopupOne listPopupOne3 = new ListPopupOne(this.mActivity, this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_selectText()) + " " + this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_districtText()), Queries.getInstance().gettingDistricts(this.tvStateId.getText().toString()), view, this.tvDistrictId);
                        listPopupOne3.getWindow().getAttributes().windowAnimations = R.style.PauseDialogAnimation;
                        listPopupOne3.show();
                        listPopupOne3.getWindow().setSoftInputMode(3);
                        break;
                    } catch (Exception e3) {
                        PLog.e(this.TAG, e3);
                        return;
                    }
                } else {
                    Toast.makeText(this.mActivity.getApplicationContext(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_plsSelStateFilter()), 1).show();
                    break;
                }
            case R.id.ed_mandalSearch /* 2131296586 */:
                if (this.tvDistrictId.getText().toString().length() != 0 && this.tvStateId.getText().toString().length() != 0) {
                    try {
                        ListPopupOne listPopupOne4 = new ListPopupOne(this.mActivity, this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_selectText()) + " " + this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_talukaFilterText()), Queries.getInstance().gettingMandals(this.tvDistrictId.getText().toString()), view, this.tvMandalId);
                        listPopupOne4.getWindow().getAttributes().windowAnimations = R.style.PauseDialogAnimation;
                        listPopupOne4.show();
                        listPopupOne4.getWindow().setSoftInputMode(3);
                        break;
                    } catch (Exception e4) {
                        PLog.e(this.TAG, e4);
                        return;
                    }
                } else {
                    Toast.makeText(this.mActivity.getApplicationContext(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_plsSelDistrictFilter()), 1).show();
                    break;
                }
                break;
            case R.id.ed_stateSearch /* 2131296587 */:
                try {
                    ListPopupOne listPopupOne5 = new ListPopupOne(this.mActivity, this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_selectText()) + " " + this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_stateText()), Queries.getInstance().gettingStates(), view, this.tvStateId);
                    listPopupOne5.getWindow().getAttributes().windowAnimations = R.style.PauseDialogAnimation;
                    listPopupOne5.show();
                    listPopupOne5.getWindow().setSoftInputMode(3);
                    break;
                } catch (Exception e5) {
                    PLog.e(this.TAG, e5);
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
                this.stateSearch.setHint(this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_stateFilterText()));
                this.districtSearch.setHint(this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_districtFilterText()));
                this.mandalSearch.setHint(this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_talukaFilterText()));
                this.locationSearch.setHint(this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_villageFilterText()));
                this.radiusSearch.setHint(this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_radiusFilterText()));
                this.tvStateId.setText("");
                this.tvCropId.setText("");
                this.tvDistrictId.setText("");
                this.tvMandalId.setText("");
                this.tvLocationId.setText("");
                try {
                    this.dynamicColumnnames.toString();
                    this.draftList.clear();
                    loadMore("-1", "50");
                    break;
                } catch (Exception e6) {
                    PLog.e(this.TAG, e6);
                    return;
                }
            case R.id.farmer_lsit_goBtn /* 2131296744 */:
                this.isGoBtnClicked = true;
                this.rb_All.performClick();
                if (this.tvCropId.getText().toString().length() != 0) {
                    this.addCropQuery = " and dcm.CropId = " + this.tvCropId.getText().toString();
                }
                if (this.tvStateId.getText().toString().length() != 0) {
                    this.addStateQuery = " and dm.stateId = " + this.tvStateId.getText().toString();
                }
                if (this.tvDistrictId.getText().toString().length() != 0) {
                    this.addDistrictQuery = " and dm.districtId = " + this.tvDistrictId.getText().toString();
                }
                if (this.tvMandalId.getText().toString().length() != 0) {
                    this.addTalukaQuery = " and dm.mandalId= " + this.tvMandalId.getText().toString();
                }
                if (this.tvLocationId.getText().toString().length() != 0 && this.locationSearch.getText().toString().length() != 0) {
                    this.addLocationQuery = " and (dm.VillageId = '" + this.tvLocationId.getText().toString() + "')";
                }
                String str = (farmerType.equalsIgnoreCase(ConstantsPMC.TYPE_Distributor) || farmerType.equalsIgnoreCase("Dealer")) ? "3" : "2";
                this.searchrl.setVisibility(8);
                this.loaderrl.setVisibility(0);
                this.draftList.clear();
                this.mAdapter.notifyDataSetChanged();
                this.list.setVisibility(8);
                this.fastScroller.setVisibility(8);
                new SearchDataTask().execute(this.dynamicColumnnames.toString(), str);
                break;
            case R.id.searchbtn /* 2131297228 */:
                String str2 = "" + ((Object) this.searchkeyword.getText());
                if (TextUtils.isEmpty(str2)) {
                    Toast.makeText(getActivity(), "Please enter your search keyword and click on button", 0).show();
                    break;
                } else {
                    ((InputMethodManager) getActivity().getSystemService("input_method")).hideSoftInputFromWindow(this.searchbtn.getWindowToken(), 0);
                    this.loaderrl.setVisibility(0);
                    this.list.setVisibility(8);
                    this.fastScroller.setVisibility(8);
                    this.clearbtn.setVisibility(8);
                    this.searchbtn.setEnabled(false);
                    new LoadDataTask().execute("-1", "0", str2);
                    break;
                }
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
        builder.setMessage(this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_gpsTurnedOffAlert())).setCancelable(false).setPositiveButton(this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_gpsOKButton()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.RetailersSearchFragment.6
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                RetailersSearchFragment.this.startActivity(new Intent("android.settings.SECURITY_SETTINGS"));
                RetailersSearchFragment.this.getActivity().finish();
            }
        });
        builder.show();
    }

    private class LocationControl extends AsyncTask<Context, Void, Void> {
        private final ProgressDialog dialog;

        private LocationControl() {
            this.dialog = new ProgressDialog(RetailersSearchFragment.this.getActivity());
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            this.dialog.setMessage(RetailersSearchFragment.this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_gettLocationPWDialog()));
            this.dialog.setButton(RetailersSearchFragment.this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_gpsCancelButton()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.RetailersSearchFragment.LocationControl.1
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    dialogInterface.dismiss();
                    RetailersSearchFragment.this.hasLocation = true;
                }
            });
            this.dialog.show();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Void doInBackground(Context... contextArr) {
            while (!RetailersSearchFragment.this.hasLocation) {
                try {
                    Thread.sleep(1000L);
                } catch (InterruptedException e) {
                    PLog.e(RetailersSearchFragment.this.TAG, e);
                }
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Void r13) {
            if (RetailersSearchFragment.this.dbllatitude != null && RetailersSearchFragment.this.dbllongitude != null) {
                if (this.dialog.isShowing()) {
                    this.dialog.dismiss();
                }
                RetailersSearchFragment.this.tempGrowersList = new ArrayList();
                Double.valueOf(0.0d);
                Double valueOf = Double.valueOf(0.0d);
                if (RetailersSearchFragment.this.radiusSearch != null && RetailersSearchFragment.this.radiusSearch.getText().toString().length() > 0) {
                    valueOf = Double.valueOf(Double.parseDouble(RetailersSearchFragment.this.radiusSearch.getText().toString()));
                }
                RetailersSearchFragment.this.tempGrowersList.clear();
                for (int i = 0; i < RetailersSearchFragment.this.draftList.size(); i++) {
                    DashboardListModel dashboardListModel = (DashboardListModel) RetailersSearchFragment.this.draftList.get(i);
                    if (dashboardListModel.getLatitude() != null && !dashboardListModel.getLangitude().equalsIgnoreCase("NULL") && dashboardListModel.getLatitude().length() > 0) {
                        RetailersSearchFragment retailersSearchFragment = RetailersSearchFragment.this;
                        double distance = retailersSearchFragment.distance(retailersSearchFragment.dbllatitude, RetailersSearchFragment.this.dbllongitude, Double.valueOf(Double.parseDouble(dashboardListModel.getLatitude())), Double.valueOf(Double.parseDouble(dashboardListModel.getLangitude())), 'K');
                        Double.valueOf(distance).getClass();
                        if (distance <= valueOf.doubleValue()) {
                            RetailersSearchFragment.this.tempGrowersList.add(dashboardListModel);
                        }
                    }
                }
                if (RetailersSearchFragment.this.tempGrowersList.size() <= 0) {
                    Toast.makeText(RetailersSearchFragment.this.getActivity().getApplicationContext(), RetailersSearchFragment.this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_noItemsAvailableAlert()), 0).show();
                    return;
                }
                RetailersSearchFragment.this.mAdapter = new AddFarmerDraftListAdapter(RetailersSearchFragment.this.mContext, RetailersSearchFragment.this.tempGrowersList, ConstantsPMC.TYPE_Retailer, "0", RetailersSearchFragment.this.isFrom, ((DraftList) RetailersSearchFragment.this.getActivity()).segmentId, RetailersSearchFragment.this.isFromSelfAssignment, ((DraftList) RetailersSearchFragment.this.getActivity()).isFromTestmonial, ((DraftList) RetailersSearchFragment.this.getActivity()).isFromFeedBack, ((DraftList) RetailersSearchFragment.this.getActivity()).isFromSurvey);
                RetailersSearchFragment.this.list.setAdapter(RetailersSearchFragment.this.mAdapter);
                return;
            }
            if (this.dialog.isShowing()) {
                this.dialog.dismiss();
            }
            RetailersSearchFragment.this.locationNotFound();
        }
    }

    public void locationNotFound() {
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        builder.setMessage(this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_notAbleCaptureGPSAlert())).setCancelable(false).setPositiveButton(this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_okText()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.RetailersSearchFragment.7
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                RetailersSearchFragment.this.hasLocation = false;
                RetailersSearchFragment.this.locationControlTask = new LocationControl();
                RetailersSearchFragment.this.locationControlTask.execute(new Context[0]);
            }
        });
        builder.setNegativeButton(this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_gpsCancelButton()), new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.RetailersSearchFragment.8
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
                AddFarmerDraftListAdapter addFarmerDraftListAdapter = new AddFarmerDraftListAdapter(this.mContext, this.tempGrowersList, ConstantsPMC.TYPE_Retailer, "0", this.isFrom, ((DraftList) getActivity()).segmentId, this.isFromSelfAssignment, ((DraftList) getActivity()).isFromTestmonial, ((DraftList) getActivity()).isFromFeedBack, ((DraftList) getActivity()).isFromSurvey);
                this.mAdapter = addFarmerDraftListAdapter;
                this.list.setAdapter(addFarmerDraftListAdapter);
                return;
            }
            Toast.makeText(getActivity().getApplicationContext(), this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_noItemsAvailableAlert()), 0).show();
            return;
        }
        locationNotFound();
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
                RetailersSearchFragment.this.dbllatitude = Double.valueOf(location.getLatitude());
                RetailersSearchFragment.this.dbllongitude = Double.valueOf(location.getLongitude());
                RetailersSearchFragment.this.hasLocation = true;
            }
        }

        @Override // android.location.LocationListener
        public void onProviderEnabled(String str) {
            Toast.makeText(RetailersSearchFragment.this.getActivity().getApplicationContext(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_gpsEnabledAlert()), 0).show();
        }
    }

    public void fragmentCommunication() {
        showOverLayWalkthrough();
    }

    private void showOverLayWalkthrough() {
        Target target = new Target() { // from class: com.conceptglobal.pmc.fragments.RetailersSearchFragment.9
            @Override // com.github.amlcurran.showcaseview.targets.Target
            public Point getPoint() {
                return new Point(UtilDeclarations.getScreenWidth() - RetailersSearchFragment.optionsMenu.findItem(R.id.search_cis).getIcon().getIntrinsicWidth(), ((AppCompatActivity) RetailersSearchFragment.this.getActivity()).getSupportActionBar().getHeight());
            }
        };
        final Target target2 = new Target() { // from class: com.conceptglobal.pmc.fragments.RetailersSearchFragment.10
            @Override // com.github.amlcurran.showcaseview.targets.Target
            public Point getPoint() {
                return new Point(UtilDeclarations.getScreenWidth() - ((RetailersSearchFragment.optionsMenu.findItem(R.id.filter_cis).getIcon().getIntrinsicWidth() * 5) / 2), ((AppCompatActivity) RetailersSearchFragment.this.getActivity()).getSupportActionBar().getHeight());
            }
        };
        ShowcaseView build = new ShowcaseView.Builder((Activity) this.mContext).setTarget(target).setContentTitle("Search").setContentText("Click here to search ").withMaterialShowcase().setStyle(R.style.CustomShowcaseTheme2).setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.RetailersSearchFragment.11
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                int i = RetailersSearchFragment.this.counter;
                if (i == 0) {
                    RetailersSearchFragment.this.showcaseView.setTarget(target2);
                    RetailersSearchFragment.this.showcaseView.setContentTitle("Filter");
                    RetailersSearchFragment.this.showcaseView.setContentText("Click her for filter options");
                    RetailersSearchFragment.this.showcaseView.setButtonText("Close");
                } else if (i == 1) {
                    RetailersSearchFragment.this.showcaseView.hide();
                }
                RetailersSearchFragment.access$2408(RetailersSearchFragment.this);
            }
        }).build();
        this.showcaseView = build;
        build.setButtonText("Next");
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showMibileSearchDialog(String str) {
        final Dialog dialog = new Dialog(getActivity());
        dialog.requestWindowFeature(1);
        dialog.setContentView(R.layout.alert_mobile_search);
        final EditText editText = (EditText) dialog.findViewById(R.id.etMobileNumber);
        editText.setText(str);
        ((TextView) dialog.findViewById(R.id.tvMobileNumber)).setText(getResources().getString(R.string.retailer_mobile_number_not_in_market));
        Button button = (Button) dialog.findViewById(R.id.btn_cancel_alert);
        ((Button) dialog.findViewById(R.id.btn_search_alert)).setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.RetailersSearchFragment.13
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                UtilDeclarations.hideInputKeyboard(RetailersSearchFragment.this.getActivity());
                if (!UtilDeclarations.isOnline(RetailersSearchFragment.this.getActivity())) {
                    RetailersSearchFragment retailersSearchFragment = RetailersSearchFragment.this;
                    retailersSearchFragment.showAlertDialog(retailersSearchFragment.getResources().getString(R.string.pmc_check_internet));
                    dialog.dismiss();
                }
                if (RetailersSearchFragment.this.isValidMobileNumber(editText.getText().toString())) {
                    RetailersSearchFragment.this.callMobileDetailsApi(editText.getText().toString());
                    dialog.dismiss();
                } else {
                    editText.setError("Please enter 10 digit mobile number");
                }
            }
        });
        button.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.RetailersSearchFragment.14
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                UtilDeclarations.hideInputKeyboard(RetailersSearchFragment.this.getActivity());
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
    public void showAlertDialog(String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        builder.setMessage(str).setCancelable(false).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.RetailersSearchFragment.15
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

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isValidMobileNumber(String str) {
        return !str.isEmpty() && str.length() == 10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void callMobileDetailsApi(String str) {
        new SendRequestToServerAsync(getActivity(), this.getFarmerDetails, null, ConstantsPMC.getInstance().getMobileDetailsUrlRetailer() + "=" + str, true).execute(new Void[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showDetailsDialog(RetailerMobileDetails retailerMobileDetails) {
        final Dialog dialog = new Dialog(getActivity());
        dialog.requestWindowFeature(1);
        dialog.setContentView(R.layout.alert_farmer_mobile_details);
        TextView textView = (TextView) dialog.findViewById(R.id.tvFarmerName);
        ImageView imageView = (ImageView) dialog.findViewById(R.id.imgFarmerProfile);
        Button button = (Button) dialog.findViewById(R.id.btn_ok_alert);
        textView.setText(getResources().getString(R.string.pmc_reg_farmer_name) + " : " + retailerMobileDetails.getFarmerName() + "\n\n" + getResources().getString(R.string.pmc_reg_mobile_no) + " : " + retailerMobileDetails.getMobile() + "\n\nTerritoryName : " + retailerMobileDetails.getTerritoryName() + "\n\nVillageName : " + retailerMobileDetails.getVillageName());
        Picasso.with(getActivity()).load(retailerMobileDetails.getImagePath()).resize(150, 150).skipMemoryCache().placeholder(getResources().getDrawable(R.drawable.ic_user_pic)).into(imageView);
        button.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.RetailersSearchFragment.17
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
    public void showNoDataAvailableDialog(String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        builder.setMessage(str).setCancelable(false).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fragments.RetailersSearchFragment.18
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
            if (intent.getAction().equalsIgnoreCase("android.intent.action.RetailerSearchLocationPermissionGranted")) {
                RetailersSearchFragment.this.fetchLocation();
                return;
            }
            if (intent.getAction().equalsIgnoreCase("android.intent.action.RetailerSearchLocationPermissionDenied")) {
                RetailersSearchFragment.this.mLocationUtils.showDialog(RetailersSearchFragment.this.getActivity(), LocationUtils.PERMISSION_DENIED);
            } else if (intent.getAction().equalsIgnoreCase("android.intent.action.RetailerSearchGPSTurnedOnResult")) {
                RetailersSearchFragment.this.fetchLocation();
            } else if (intent.getAction().equalsIgnoreCase("android.intent.action.RetailerSearchGPSNotTurnedOnResult")) {
                RetailersSearchFragment.this.mLocationUtils.showDialog(RetailersSearchFragment.this.getActivity(), LocationUtils.GPS_NOT_TURNED_ON);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fetchLocation() {
        PLog.location(this.TAG, "location capture started", this.tag, UtilDeclarations.getDateTime());
        if (!this.mLocationUtils.checkPermissions(getActivity())) {
            this.mLocationUtils.requestPermissions(getActivity());
            return;
        }
        try {
            new FetchLocation(getActivity(), true, new OnLocationFoundListener() { // from class: com.conceptglobal.pmc.fragments.RetailersSearchFragment.19
                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onLocationFound(Location location) {
                }

                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onTimerTimeOut() {
                }

                @Override // com.conceptglobal.pmc.interfaces.OnLocationFoundListener
                public void onLocationFound(LocationInfo locationInfo) {
                    PLog.location(RetailersSearchFragment.this.TAG, "location found", RetailersSearchFragment.this.tag, UtilDeclarations.getDateTime());
                    RetailersSearchFragment.this.dbllatitude = Double.valueOf(locationInfo.getLatitude());
                    RetailersSearchFragment.this.dbllongitude = Double.valueOf(locationInfo.getLongitude());
                    if (RetailersSearchFragment.this.isFromSelfAssignment) {
                        double d = RetailersSearchFragment.this.distanceInKiloMeters * 0.01d;
                        double doubleValue = RetailersSearchFragment.this.dbllatitude.doubleValue() - d;
                        double doubleValue2 = RetailersSearchFragment.this.dbllatitude.doubleValue() + d;
                        String str = " and latitude between cast( " + doubleValue + " as numeric) and cast(" + doubleValue2 + " as numeric) ";
                        new LocationFilterTask().execute(str + " and longitude between cast( " + (RetailersSearchFragment.this.dbllongitude.doubleValue() - d) + " as numeric) and cast(" + (RetailersSearchFragment.this.dbllongitude.doubleValue() + d) + " as numeric) ");
                        return;
                    }
                    RetailersSearchFragment.this.disPlayRadiusData();
                }
            }, this.TAG);
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
            RetailersSearchFragment.this.loaderrl.setVisibility(0);
            if (RetailersSearchFragment.farmerType.equals(ConstantsPMC.TYPE_Retailer)) {
                PLog.location(RetailersSearchFragment.this.TAG, "getting nearest retailers  started", RetailersSearchFragment.this.tag, UtilDeclarations.getDateTime());
            }
            if (RetailersSearchFragment.farmerType.equalsIgnoreCase(ConstantsPMC.TYPE_Distributor) || RetailersSearchFragment.farmerType.equalsIgnoreCase("Dealer")) {
                PLog.location(RetailersSearchFragment.this.TAG, "getting nearest Dealers  started", RetailersSearchFragment.this.tag, UtilDeclarations.getDateTime());
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Void doInBackground(String... strArr) {
            try {
                if (!RetailersSearchFragment.farmerType.equalsIgnoreCase(ConstantsPMC.TYPE_Distributor) && !RetailersSearchFragment.farmerType.equalsIgnoreCase("Dealer")) {
                    this.data = GetDataFromDB.getInstance().getRetailerBindDataDynamicRadiusNew(Queries.getInstance().getAllRetailersDashboardDataWithRadius(RetailersSearchFragment.this.query, strArr[0], "2", -1, 0), true);
                    return null;
                }
                this.data = GetDataFromDB.getInstance().getRetailerBindDataDynamicRadiusNew(Queries.getInstance().getAllRetailersDashboardDataWithRadius(RetailersSearchFragment.this.query, strArr[0], "3", -1, 0), true);
                return null;
            } catch (Exception unused) {
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Void r2) {
            super.onPostExecute((LocationFilterTask) r2);
            RetailersSearchFragment.this.loaderrl.setVisibility(8);
            if (TextUtils.isEmpty(this.keyword)) {
                RetailersSearchFragment.this.refreshAdapter(this.data);
            } else {
                RetailersSearchFragment.this.resetDataAndNofityAdapter(this.data);
            }
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
            RetailersSearchFragment.this.createProgressDialog("Please wait");
            if (RetailersSearchFragment.this.dialog == null || RetailersSearchFragment.this.getActivity().isFinishing()) {
                return;
            }
            RetailersSearchFragment.this.dialog.show();
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
                if (!RetailersSearchFragment.farmerType.equalsIgnoreCase(ConstantsPMC.TYPE_Distributor) && !RetailersSearchFragment.farmerType.equalsIgnoreCase("Dealer")) {
                    if (RetailersSearchFragment.farmerType.equalsIgnoreCase("UnVerifiedRetailer")) {
                        this.data = GetDataFromDB.getInstance().getRetailerBindDataDynamicRadius(Queries.getInstance().getDashboardDataForUnverifiedRetailers(RetailersSearchFragment.this.query, "2", parseInt, parseInt2, RetailersSearchFragment.this.fromFavourites), true);
                        return null;
                    }
                    this.data = GetDataFromDB.getInstance().getRetailerBindDataDynamicRadius(Queries.getInstance().getAllRetailersDashboardData(RetailersSearchFragment.this.query, "2", parseInt, parseInt2, RetailersSearchFragment.this.fromFavourites, ""), true);
                    return null;
                }
                this.data = GetDataFromDB.getInstance().getRetailerBindDataDynamicRadiusNew(Queries.getInstance().getAllRetailersDashboardData(RetailersSearchFragment.this.query, "3", parseInt, parseInt2), true);
                return null;
            }
            if (RetailersSearchFragment.farmerType.equalsIgnoreCase(ConstantsPMC.TYPE_Distributor) || RetailersSearchFragment.farmerType.equalsIgnoreCase("Dealer")) {
                this.data = GetDataFromDB.getInstance().addRretailersGetRetailersByKeyword(Queries.getInstance().getAllRetailersDashboardData(RetailersSearchFragment.this.query, "3", parseInt, parseInt2), this.keyword);
                return null;
            }
            this.data = GetDataFromDB.getInstance().addRretailersGetRetailersByKeyword(Queries.getInstance().getAllRetailersDashboardData(RetailersSearchFragment.this.query, "2", parseInt, parseInt2, RetailersSearchFragment.this.fromFavourites, ""), this.keyword);
            return null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Void r2) {
            super.onPostExecute((LoadDataTask) r2);
            if (RetailersSearchFragment.this.dialog != null && RetailersSearchFragment.this.dialog.isShowing()) {
                RetailersSearchFragment.this.dialog.dismiss();
            }
            if (TextUtils.isEmpty(this.keyword)) {
                RetailersSearchFragment.this.refreshAdapter(this.data);
            } else {
                RetailersSearchFragment.this.resetDataAndNofityAdapter(this.data);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshAdapter(List<DashboardListModel> list) {
        this.draftList.clear();
        this.mAdapter.showLoading(false);
        this.loadMore = true;
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
        this.loaderrl.setVisibility(8);
        this.list.setVisibility(0);
        this.list.removeOnScrollListener(this.scrollListener);
        this.loadMore = false;
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
            String str2 = strArr[1];
            if (RetailersSearchFragment.this.radiusSearch.getText().toString() != null && RetailersSearchFragment.this.radiusSearch.getText().toString().length() > 0) {
                this.data = GetDataFromDB.getInstance().getRetailerBindDataDynamic1(Queries.getInstance().retailerSearchQueryLatLongNotNull(str, RetailersSearchFragment.this.addCropQuery, RetailersSearchFragment.this.addStateQuery, RetailersSearchFragment.this.addDistrictQuery, RetailersSearchFragment.this.addTalukaQuery, RetailersSearchFragment.this.addLocationQuery, RetailersSearchFragment.this.addRadiusQuery, str2, RetailersSearchFragment.this.fromFavourites));
                return null;
            }
            this.data = GetDataFromDB.getInstance().getRetailerBindDataDynamic1(Queries.getInstance().retailerSearchQuery(str, RetailersSearchFragment.this.addCropQuery, RetailersSearchFragment.this.addStateQuery, RetailersSearchFragment.this.addDistrictQuery, RetailersSearchFragment.this.addTalukaQuery, RetailersSearchFragment.this.addLocationQuery, RetailersSearchFragment.this.addRadiusQuery, str2, RetailersSearchFragment.this.fromFavourites));
            return null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Void r14) {
            super.onPostExecute((SearchDataTask) r14);
            RetailersSearchFragment.this.draftList.clear();
            RetailersSearchFragment.this.draftList.addAll(this.data);
            RetailersSearchFragment.this.loaderrl.setVisibility(8);
            RetailersSearchFragment.this.list.setVisibility(0);
            RetailersSearchFragment.this.fastScroller.setVisibility(0);
            try {
                if (RetailersSearchFragment.this.radiusSearch.getText().toString() != null && RetailersSearchFragment.this.radiusSearch.getText().toString().length() > 0) {
                    try {
                        RetailersSearchFragment.this.hasLocation = false;
                        if (RetailersSearchFragment.this.draftList == null || RetailersSearchFragment.this.draftList.size() <= 0) {
                            Toast.makeText(RetailersSearchFragment.this.getActivity().getApplicationContext(), RetailersSearchFragment.this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_noItemsAvailableAlert()), 1).show();
                            try {
                                if (RetailersSearchFragment.this.draftList == null || RetailersSearchFragment.this.draftList.size() <= 0) {
                                    Toast.makeText(RetailersSearchFragment.this.getActivity().getApplicationContext(), RetailersSearchFragment.this.getDataFromDB.getValue(LabelUtils.getInstance().getPmc_noItemsAvailableAlert()), 0).show();
                                } else {
                                    RetailersSearchFragment.this.mAdapter = new AddFarmerDraftListAdapter(RetailersSearchFragment.this.mContext, RetailersSearchFragment.this.draftList, ConstantsPMC.TYPE_Retailer, "0", RetailersSearchFragment.this.isFrom, ((DraftList) RetailersSearchFragment.this.getActivity()).segmentId, RetailersSearchFragment.this.isFromSelfAssignment, ((DraftList) RetailersSearchFragment.this.getActivity()).isFromTestmonial, ((DraftList) RetailersSearchFragment.this.getActivity()).isFromFeedBack, ((DraftList) RetailersSearchFragment.this.getActivity()).isFromSurvey);
                                    RetailersSearchFragment.this.list.setAdapter(RetailersSearchFragment.this.mAdapter);
                                }
                            } catch (Exception e) {
                                e.printStackTrace();
                                PLog.e(RetailersSearchFragment.this.TAG, e);
                            }
                        } else {
                            RetailersSearchFragment.this.fetchLocation();
                        }
                    } catch (Exception e2) {
                        PLog.e(RetailersSearchFragment.this.TAG, e2);
                    }
                } else {
                    RetailersSearchFragment.this.mAdapter = new AddFarmerDraftListAdapter(RetailersSearchFragment.this.mContext, RetailersSearchFragment.this.draftList, RetailersSearchFragment.farmerType, "0", RetailersSearchFragment.this.isFrom, ((DraftList) RetailersSearchFragment.this.getActivity()).segmentId, RetailersSearchFragment.this.isFromSelfAssignment, ((DraftList) RetailersSearchFragment.this.getActivity()).isFromTestmonial, ((DraftList) RetailersSearchFragment.this.getActivity()).isFromFeedBack, ((DraftList) RetailersSearchFragment.this.getActivity()).isFromSurvey);
                    RetailersSearchFragment.this.list.setAdapter(RetailersSearchFragment.this.mAdapter);
                }
                RetailersSearchFragment.this.fastScroller.setRecyclerView(RetailersSearchFragment.this.list);
                RetailersSearchFragment.this.addCropQuery = "";
                RetailersSearchFragment.this.addStateQuery = "";
                RetailersSearchFragment.this.addDistrictQuery = "";
                RetailersSearchFragment.this.addTalukaQuery = "";
                RetailersSearchFragment.this.addLocationQuery = "";
                RetailersSearchFragment.this.addRadiusQuery = "";
            } catch (Exception e3) {
                PLog.e(RetailersSearchFragment.this.TAG, e3);
            }
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
        Intent intent3 = new Intent(getActivity().getBaseContext(), (Class<?>) SAAttributeActivity.class);
        intent3.putExtra(ConstantDeclarations.getInstance().getKEYFARMERID(), stringExtra);
        intent3.putExtra("ACTIVITYID", Integer.parseInt(stringArray[0]));
        intent3.putExtra("ACTIVITYNAME", stringArray[1]);
        intent3.putExtra("SEGMENTID", ((DraftList) getActivity()).segmentId);
        intent3.putExtra("ISSELFASSIGN", 1);
        intent3.putExtra("TRANSID", timeInMillis);
        intent3.putExtra("ASSIGNMENTID", 0);
        intent3.addFlags(67108864);
        startActivity(intent3.addFlags(131072).addFlags(67108864));
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
        radioGroup.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: com.conceptglobal.pmc.fragments.RetailersSearchFragment.20
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public void onCheckedChanged(RadioGroup radioGroup2, int i) {
                RadioButton radioButton = (RadioButton) radioGroup2.findViewById(i);
                if (i > -1) {
                    switch (radioButton.getId()) {
                        case R.id.rbAll /* 2131297131 */:
                            RetailersSearchFragment.this.fromFavourites = ConstantsPMC.ALL;
                            break;
                        case R.id.rbFavourite /* 2131297132 */:
                            RetailersSearchFragment.this.fromFavourites = ConstantsPMC.FAVOURITES;
                            break;
                    }
                    RetailersSearchFragment.this.loadMore("-1", "50");
                }
            }
        });
    }

    private void OnSelectCheckedChangeListener(RadioGroup radioGroup) {
        radioGroup.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: com.conceptglobal.pmc.fragments.RetailersSearchFragment.21
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public void onCheckedChanged(RadioGroup radioGroup2, int i) {
                RadioButton radioButton = (RadioButton) radioGroup2.findViewById(i);
                RetailersSearchFragment retailersSearchFragment = RetailersSearchFragment.this;
                retailersSearchFragment.slideToBottom(retailersSearchFragment.rvSort);
                switch (radioButton.getId()) {
                    case R.id.a_to_z /* 2131296277 */:
                        if (RetailersSearchFragment.farmerType.equals(ConstantsPMC.TYPE_Distributor) || RetailersSearchFragment.farmerType.equals("Dealer")) {
                            RetailersSearchFragment.this.mAdapter.onSortItemSelected(7, ConstantsPMC.TYPE_Distributor);
                            break;
                        } else {
                            RetailersSearchFragment.this.mAdapter.onSortItemSelected(7, ConstantsPMC.TYPE_Retailer);
                            break;
                        }
                        break;
                    case R.id.segmentHighToLow /* 2131297235 */:
                        if (RetailersSearchFragment.farmerType.equals(ConstantsPMC.TYPE_Distributor) || RetailersSearchFragment.farmerType.equals("Dealer")) {
                            RetailersSearchFragment.this.mAdapter.onSortItemSelected(6, ConstantsPMC.TYPE_Distributor);
                            break;
                        } else {
                            RetailersSearchFragment.this.mAdapter.onSortItemSelected(6, ConstantsPMC.TYPE_Retailer);
                            break;
                        }
                    case R.id.segmentLowToHigh /* 2131297236 */:
                        if (RetailersSearchFragment.farmerType.equals(ConstantsPMC.TYPE_Distributor) || RetailersSearchFragment.farmerType.equals("Dealer")) {
                            RetailersSearchFragment.this.mAdapter.onSortItemSelected(5, ConstantsPMC.TYPE_Distributor);
                            break;
                        } else {
                            RetailersSearchFragment.this.mAdapter.onSortItemSelected(5, ConstantsPMC.TYPE_Retailer);
                            break;
                        }
                        break;
                    case R.id.z_to_a /* 2131297801 */:
                        if (RetailersSearchFragment.farmerType.equals(ConstantsPMC.TYPE_Distributor) || RetailersSearchFragment.farmerType.equals("Dealer")) {
                            RetailersSearchFragment.this.mAdapter.onSortItemSelected(8, ConstantsPMC.TYPE_Distributor);
                            break;
                        } else {
                            RetailersSearchFragment.this.mAdapter.onSortItemSelected(8, ConstantsPMC.TYPE_Retailer);
                            break;
                        }
                }
            }
        });
    }

    public void slideToBottom(View view) {
        view.setVisibility(8);
        this.isDisplaySortDialog = false;
    }

    public void slideToTop(View view) {
        view.setVisibility(0);
        this.isDisplaySortDialog = true;
    }
}

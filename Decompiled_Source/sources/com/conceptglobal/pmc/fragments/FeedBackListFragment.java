package com.conceptglobal.pmc.fragments;

import android.app.SearchManager;
import android.content.Context;
import android.content.Intent;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.appcompat.widget.SearchView;
import androidx.core.view.MenuItemCompat;
import androidx.fragment.app.Fragment;
import com.conceptglobal.pmc.activity.TargetVsPlanSummaryActivity;
import com.conceptglobal.pmc.adapter.FeedBackDraftAdapterCopy;
import com.conceptglobal.pmc.common.ListPopupOne;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.model.VillageDetails;
import com.conceptglobal.pmc.utils.ConstantDeclarations;
import com.conceptglobal.pmc.utils.LabelUtils;
import com.conceptglobal.pmc.utils.PLog;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import com.conceptglobal.pmcdeepakfertilizers.R;
import com.google.firebase.analytics.FirebaseAnalytics;
import de.keyboardsurfer.android.widget.crouton.Crouton;
import de.keyboardsurfer.android.widget.crouton.Style;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class FeedBackListFragment extends Fragment implements View.OnClickListener {
    private static final String ARG_PARAM1 = "param1";
    private static final String ARG_PARAM2 = "param2";
    protected static final String TAG = "FOHome";
    private FeedBackDraftAdapterCopy adapter;
    private EditText brandSearch;
    private TextView btnClear;
    private TextView btnGo;
    private Context context;
    private EditText cropSearch;
    private EditText custTypeSearch;
    private Double dbllatitude;
    private Double dbllongitude;
    private MenuItem filterItem;
    private LinearLayout filtersLL;
    private GetDataFromDB getData;
    private String isFrom;
    private LocationManager locationMgr;
    private ListView lvList;
    private String mParam1;
    private String mParam2;
    private LocationListener myLocationListener;
    private EditText radiusSearch;
    private View rootView;
    private TextView tvBrandId;
    private TextView tvCropId;
    private TextView tvCustTypeId;
    private TextView tvPD;
    private TextView tvScroll;
    private TextView tvTBV;
    private TextView tvVC;
    private TextView tvVillageName;
    private List<VillageDetails> listVillageNames = new ArrayList();
    private int countSync = 0;
    public String filteredCutomerType = "";
    private String addCustTypeQuery = "";
    private String addCropQuery = "";
    private String addBrandQuery = "";
    private String addRadiusQuery = "";
    private boolean hasLocation = false;

    public static FeedBackListFragment newInstance(String str, String str2, String str3) {
        FeedBackListFragment feedBackListFragment = new FeedBackListFragment();
        Bundle bundle = new Bundle();
        bundle.putString(ARG_PARAM1, str);
        bundle.putString(ARG_PARAM2, str2);
        bundle.putString("IsFrom", str3);
        feedBackListFragment.setArguments(bundle);
        return feedBackListFragment;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (this.rootView == null) {
            this.rootView = layoutInflater.inflate(R.layout.village_list_view, viewGroup, false);
        }
        setHasOptionsMenu(true);
        init();
        String str = this.isFrom;
        if (str != null && str.equalsIgnoreCase("FeedBack")) {
            setSueveyLayoutData();
        } else {
            setLayoutData();
        }
        getDataFromDB();
        setData();
        checkCountForSync();
        return this.rootView;
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.mParam1 = getArguments().getString(ARG_PARAM1);
            this.mParam2 = getArguments().getString(ARG_PARAM2);
            this.isFrom = getArguments().getString("IsFrom");
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
    }

    private void init() {
        this.context = getContext();
        this.getData = new GetDataFromDB();
        this.lvList = (ListView) this.rootView.findViewById(R.id.lv_village_list);
        this.tvVillageName = (TextView) this.rootView.findViewById(R.id.tv_villagename_village_list);
        this.tvTBV = (TextView) this.rootView.findViewById(R.id.tv_tbv_village_list);
        this.tvPD = (TextView) this.rootView.findViewById(R.id.tv_pd_village_list);
        this.tvVC = (TextView) this.rootView.findViewById(R.id.tv_vc_village_list);
        this.filtersLL = (LinearLayout) this.rootView.findViewById(R.id.filtersVillList);
        EditText editText = (EditText) this.rootView.findViewById(R.id.ed_custType);
        this.custTypeSearch = editText;
        editText.setHint(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_customTypeFilterText()));
        EditText editText2 = (EditText) this.rootView.findViewById(R.id.ed_cropSearch);
        this.cropSearch = editText2;
        editText2.setHint(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_cropFilterText()));
        this.cropSearch.setVisibility(8);
        EditText editText3 = (EditText) this.rootView.findViewById(R.id.ed_Brand);
        this.brandSearch = editText3;
        editText3.setHint(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_brandFilterText()));
        this.brandSearch.setVisibility(8);
        EditText editText4 = (EditText) this.rootView.findViewById(R.id.ed_RadiusSearch);
        this.radiusSearch = editText4;
        editText4.setHint(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_radiusFilterText()));
        this.radiusSearch.setVisibility(8);
        this.tvCustTypeId = (TextView) this.rootView.findViewById(R.id.tvCustTypeId);
        this.tvCropId = (TextView) this.rootView.findViewById(R.id.tvCropId);
        TextView textView = (TextView) this.rootView.findViewById(R.id.tvBrandId);
        this.tvBrandId = textView;
        textView.setVisibility(8);
        TextView textView2 = (TextView) this.rootView.findViewById(R.id.filter_list_goBtn);
        this.btnGo = textView2;
        textView2.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_goFilterText()));
        TextView textView3 = (TextView) this.rootView.findViewById(R.id.farmer_lsit_ClearBtn);
        this.btnClear = textView3;
        textView3.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_clearFilterText()));
        this.custTypeSearch.setOnClickListener(this);
        this.cropSearch.setOnClickListener(this);
        this.radiusSearch.setOnClickListener(this);
        this.btnGo.setOnClickListener(this);
        this.btnClear.setOnClickListener(this);
        TextView textView4 = (TextView) this.rootView.findViewById(R.id.tv_scroll_village_list);
        this.tvScroll = textView4;
        textView4.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_todoAbbrevations()));
        this.tvScroll.setSelected(true);
        this.tvTBV.setOnClickListener(this);
        this.tvPD.setOnClickListener(this);
        this.tvVC.setOnClickListener(this);
    }

    private void setLayoutData() {
        if (this.mParam1.equalsIgnoreCase("Activity")) {
            this.tvVillageName.setText("ACTIVITY");
        } else {
            this.tvVillageName.setText("GEOGRAPHY");
        }
        this.tvTBV.setText("To Be Completed");
        this.tvPD.setText("Not Synced");
    }

    private void setSueveyLayoutData() {
        this.tvVillageName.setText("Complaints");
        this.tvTBV.setText("Total Complaints");
        this.tvPD.setText("Resolution Pending");
    }

    private void getDataFromDB() {
        String str = this.isFrom;
        if (str == null || !str.equalsIgnoreCase("FeedBack")) {
            return;
        }
        this.listVillageNames = this.getData.getActivityNamesForToDo(Queries.getInstance().getGetAllFeedBackData());
    }

    private void setData() {
        this.lvList.setAdapter((ListAdapter) null);
        List<VillageDetails> list = this.listVillageNames;
        if (list == null || list.size() <= 0) {
            return;
        }
        FeedBackDraftAdapterCopy feedBackDraftAdapterCopy = new FeedBackDraftAdapterCopy(getActivity(), this.listVillageNames, this.mParam1, this.filteredCutomerType, this.isFrom);
        this.adapter = feedBackDraftAdapterCopy;
        this.lvList.setAdapter((ListAdapter) feedBackDraftAdapterCopy);
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        getDataFromDB();
        setData();
    }

    private void checkCountForSync() {
        try {
            this.countSync = UtilDeclarations.getCountForSync();
        } catch (Exception e) {
            this.countSync = 0;
            PLog.e(TAG, e);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.ed_cropSearch /* 2131296583 */:
                try {
                    ListPopupOne listPopupOne = new ListPopupOne(getActivity(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectText()) + " " + GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_cropFilterText()), Queries.getInstance().getCropNames(), view, this.tvCropId);
                    listPopupOne.getWindow().getAttributes().windowAnimations = R.style.PauseDialogAnimation;
                    listPopupOne.show();
                    listPopupOne.getWindow().setSoftInputMode(3);
                    break;
                } catch (Exception e) {
                    PLog.e(TAG, e);
                }
            case R.id.ed_custType /* 2131296584 */:
                try {
                    ListPopupOne listPopupOne2 = new ListPopupOne(getActivity(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_selectText()) + " " + GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_customTypeFilterText()), Queries.getInstance().getActivitySegments(), view, this.tvCustTypeId);
                    listPopupOne2.getWindow().getAttributes().windowAnimations = R.style.PauseDialogAnimation;
                    listPopupOne2.show();
                    listPopupOne2.getWindow().setSoftInputMode(3);
                    break;
                } catch (Exception e2) {
                    PLog.e(TAG, e2);
                    return;
                }
            case R.id.farmer_lsit_ClearBtn /* 2131296743 */:
                this.custTypeSearch.setText("");
                this.brandSearch.setText("");
                this.cropSearch.setText("");
                this.radiusSearch.setText("");
                this.tvCropId.setText("");
                this.tvCustTypeId.setText("");
                this.tvBrandId.setText("");
                this.filteredCutomerType = "";
                setData();
                break;
            case R.id.filter_list_goBtn /* 2131296763 */:
                setData();
                break;
            case R.id.tv_pd_village_list /* 2131297638 */:
                Crouton.showText(getActivity(), "Resolution Pending", Style.INFO);
                break;
            case R.id.tv_tbv_village_list /* 2131297670 */:
                Crouton.showText(getActivity(), "Total Complaints", Style.INFO);
                break;
            case R.id.tv_vc_village_list /* 2131297689 */:
                Crouton.showText(getActivity(), "Resolution Pending", Style.INFO);
                break;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == 16908332) {
            getActivity().finish();
            return true;
        }
        if (itemId != R.id.filter_todo) {
            if (itemId == R.id.targetVsActual) {
                Intent intent = new Intent(getActivity(), (Class<?>) TargetVsPlanSummaryActivity.class);
                intent.putExtra(SettingsJsonConstants.PROMPT_TITLE_KEY, "Target&PlanSummary");
                this.context.startActivity(intent);
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
        menuInflater.inflate(R.menu.search_only, menu);
        this.filterItem = menu.findItem(R.id.filter_todo);
        MenuItem findItem = menu.findItem(R.id.targetVsActual);
        this.filterItem.setVisible(false);
        findItem.setVisible(false);
        MenuItem findItem2 = menu.findItem(R.id.search_only);
        findItem2.setVisible(false);
        SearchManager searchManager = (SearchManager) getActivity().getSystemService(FirebaseAnalytics.Event.SEARCH);
        final SearchView searchView = (SearchView) MenuItemCompat.getActionView(findItem2);
        if (searchView != null) {
            searchView.setSearchableInfo(searchManager.getSearchableInfo(getActivity().getComponentName()));
            searchView.setIconifiedByDefault(false);
        }
        MenuItemCompat.setOnActionExpandListener(findItem2, new MenuItemCompat.OnActionExpandListener() { // from class: com.conceptglobal.pmc.fragments.FeedBackListFragment.1
            @Override // androidx.core.view.MenuItemCompat.OnActionExpandListener
            public boolean onMenuItemActionCollapse(MenuItem menuItem) {
                if (FeedBackListFragment.this.adapter == null) {
                    return true;
                }
                FeedBackListFragment.this.adapter.getFilter().filter(ConstantDeclarations.getInstance().getEMPTY());
                searchView.setQuery(ConstantDeclarations.getInstance().getEMPTY(), false);
                return true;
            }

            @Override // androidx.core.view.MenuItemCompat.OnActionExpandListener
            public boolean onMenuItemActionExpand(MenuItem menuItem) {
                if (FeedBackListFragment.this.adapter == null) {
                    return true;
                }
                FeedBackListFragment.this.adapter.getFilter().filter(ConstantDeclarations.getInstance().getEMPTY());
                searchView.setQuery(ConstantDeclarations.getInstance().getEMPTY(), false);
                return true;
            }
        });
        searchView.setOnQueryTextListener(new SearchView.OnQueryTextListener() { // from class: com.conceptglobal.pmc.fragments.FeedBackListFragment.2
            @Override // androidx.appcompat.widget.SearchView.OnQueryTextListener
            public boolean onQueryTextChange(String str) {
                if (FeedBackListFragment.this.adapter == null) {
                    return true;
                }
                FeedBackListFragment.this.adapter.getFilter().filter(str);
                return true;
            }

            @Override // androidx.appcompat.widget.SearchView.OnQueryTextListener
            public boolean onQueryTextSubmit(String str) {
                if (FeedBackListFragment.this.adapter == null) {
                    return true;
                }
                FeedBackListFragment.this.adapter.getFilter().filter(str);
                return true;
            }
        });
        super.onCreateOptionsMenu(menu, menuInflater);
    }
}

package com.conceptglobal.pmc.fragments;

import android.app.Activity;
import android.app.SearchManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.SearchView;
import androidx.core.view.MenuItemCompat;
import androidx.fragment.app.Fragment;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.conceptglobal.ifastscroll.FastScroller;
import com.conceptglobal.pmc.adapter.AddFarmerDraftListAdapter;
import com.conceptglobal.pmc.common.Astat;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.model.DashboardListModel;
import com.conceptglobal.pmc.model.DynamicFields;
import com.conceptglobal.pmc.registration.DraftList;
import com.conceptglobal.pmc.utils.PLog;
import com.conceptglobal.pmcdeepakfertilizers.R;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class DraftFragment extends Fragment {
    public static String ACTION_REFRESH_LIST = "ACTION_REFRESH_LIST";
    private static final String TAG = "DraftFragment";
    private static DraftFragment mFragment;
    StringBuilder dynamicColumnnames;
    private String farmerType;
    private FastScroller fastScroller;
    private RecyclerView list;
    private Activity mActivity;
    public AddFarmerDraftListAdapter mAdapter;
    private List<DashboardListModel> draftList = new ArrayList();
    private String draftStatus = "0";
    private String statusCode = "0";
    private String serverUpdateStatus = "false";
    private String isFrom = "";
    ArrayList<DashboardListModel> listOfStrings = new ArrayList<>();
    private ArrayList<DynamicFields> attributesArry = null;
    private BroadcastReceiver myReciever = new BroadcastReceiver() { // from class: com.conceptglobal.pmc.fragments.DraftFragment.3
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            DraftFragment.this.listOfStrings = (ArrayList) intent.getSerializableExtra("FarmerList");
            DraftFragment.this.mAdapter = new AddFarmerDraftListAdapter(DraftFragment.this.mActivity, DraftFragment.this.listOfStrings, DraftFragment.this.farmerType, "0", DraftFragment.this.isFrom, ((DraftList) DraftFragment.this.getActivity()).segmentId, ((DraftList) DraftFragment.this.getActivity()).isFromSelfAssignment, ((DraftList) DraftFragment.this.getActivity()).isFromTestmonial, ((DraftList) DraftFragment.this.getActivity()).isFromFeedBack, ((DraftList) DraftFragment.this.getActivity()).isFromSurvey);
            DraftFragment.this.list.setAdapter(DraftFragment.this.mAdapter);
        }
    };

    public static DraftFragment newInstance(int i, String str) {
        DraftFragment draftFragment = new DraftFragment();
        mFragment = draftFragment;
        draftFragment.setDraftStatus(i);
        Bundle bundle = new Bundle();
        bundle.putString("farmerType", str);
        mFragment.setArguments(bundle);
        return mFragment;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.fragment_draft_list, viewGroup, false);
        initialization(inflate);
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mActivity = getActivity();
        this.farmerType = getArguments().getString("farmerType");
        setHasOptionsMenu(true);
        LocalBroadcastManager.getInstance(this.mActivity).registerReceiver(this.myReciever, new IntentFilter(ACTION_REFRESH_LIST));
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        String str;
        List<DashboardListModel> retailerBindDataDynamic1;
        super.onActivityCreated(bundle);
        this.dynamicColumnnames = new StringBuilder();
        try {
            GetDataFromDB getDataFromDB = GetDataFromDB.getInstance();
            Queries queries = Queries.getInstance();
            if (this.farmerType.equals("Village")) {
                str = "Village";
            } else {
                if (!this.farmerType.equals(ConstantsPMC.TYPE_Retailer) && !this.farmerType.equals("Dealer")) {
                    str = this.farmerType;
                }
                str = "Dealer";
            }
            this.attributesArry = getDataFromDB.getDynanicFieldsFirDraft(queries.gettingDraftColunNames(str));
            for (int i = 0; i < this.attributesArry.size(); i++) {
                this.dynamicColumnnames.append(this.attributesArry.get(i).getDbColumnName() + ",");
            }
            this.dynamicColumnnames.deleteCharAt(r1.length() - 1);
            String sb = this.dynamicColumnnames.toString();
            this.draftList.clear();
            if (this.farmerType.equals(ConstantsPMC.TYPE_FARMER)) {
                retailerBindDataDynamic1 = GetDataFromDB.getInstance().getFarmerBindDataDynamic1(Queries.getInstance().getDashboardData(sb, this.draftStatus, this.serverUpdateStatus, "1"), false);
            } else if (this.farmerType.equals(ConstantsPMC.TYPE_Retailer)) {
                retailerBindDataDynamic1 = GetDataFromDB.getInstance().getRetailerBindDataDynamic1(Queries.getInstance().getRetailerDashboardData(sb, this.draftStatus, this.serverUpdateStatus, "2"));
            } else if (!this.farmerType.equals("Planter")) {
                if (this.farmerType.equals("Village")) {
                    retailerBindDataDynamic1 = GetDataFromDB.getInstance().getFarmerBindDataDynamic1(Queries.getInstance().getDashboardData(sb, this.draftStatus, this.serverUpdateStatus, "4"), false);
                } else {
                    if (!this.farmerType.equalsIgnoreCase(ConstantsPMC.TYPE_Distributor) && !this.farmerType.equalsIgnoreCase("Dealer")) {
                        retailerBindDataDynamic1 = null;
                    }
                    retailerBindDataDynamic1 = GetDataFromDB.getInstance().getRetailerBindDataDynamic1(Queries.getInstance().getRetailerDashboardData(sb, this.draftStatus, this.serverUpdateStatus, "3"));
                }
            } else {
                retailerBindDataDynamic1 = GetDataFromDB.getInstance().getFarmerBindDataDynamic1(Queries.getInstance().getDashboardData(sb, this.draftStatus, this.serverUpdateStatus, "8"), false);
            }
            this.draftList.addAll(retailerBindDataDynamic1);
            this.listOfStrings.clear();
            this.listOfStrings.addAll(retailerBindDataDynamic1);
        } catch (Exception e) {
            PLog.e(TAG, e);
        }
        AddFarmerDraftListAdapter addFarmerDraftListAdapter = new AddFarmerDraftListAdapter(this.mActivity, this.listOfStrings, this.farmerType, this.draftStatus, this.isFrom, ((DraftList) getActivity()).segmentId, ((DraftList) getActivity()).isFromSelfAssignment, ((DraftList) getActivity()).isFromTestmonial, ((DraftList) getActivity()).isFromFeedBack, ((DraftList) getActivity()).isFromSurvey);
        this.mAdapter = addFarmerDraftListAdapter;
        this.list.setAdapter(addFarmerDraftListAdapter);
        this.fastScroller.setRecyclerView(this.list);
    }

    private void initialization(View view) {
        RecyclerView recyclerView = (RecyclerView) view.findViewById(R.id.list);
        this.list = recyclerView;
        recyclerView.setHasFixedSize(true);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this.mActivity);
        linearLayoutManager.setOrientation(1);
        this.list.setLayoutManager(linearLayoutManager);
        this.fastScroller = (FastScroller) view.findViewById(R.id.fastscroll);
    }

    private void setDraftStatus(int i) {
        String tab = GetDataFromDB.getInstance().getSwipeTabsInDraftList().get(i).getTab();
        tab.hashCode();
        switch (tab) {
            case "NOTSENT":
                this.attributesArry = new ArrayList<>();
                this.dynamicColumnnames = new StringBuilder();
                this.draftStatus = "1";
                this.listOfStrings.clear();
                this.serverUpdateStatus = "false";
                this.isFrom = "NOTSENT";
                break;
            case "ALL":
                this.attributesArry = new ArrayList<>();
                this.dynamicColumnnames = new StringBuilder();
                this.draftStatus = "1";
                this.statusCode = "2";
                this.listOfStrings.clear();
                this.serverUpdateStatus = "1";
                this.isFrom = "ALL";
                break;
            case "SENT":
                this.attributesArry = new ArrayList<>();
                this.dynamicColumnnames = new StringBuilder();
                this.draftStatus = "1";
                this.statusCode = "1";
                this.listOfStrings.clear();
                this.serverUpdateStatus = "true";
                this.isFrom = "SENT";
                break;
            case "DRAFT":
                this.attributesArry = new ArrayList<>();
                this.dynamicColumnnames = new StringBuilder();
                this.draftStatus = "0";
                this.listOfStrings.clear();
                this.serverUpdateStatus = "false";
                this.isFrom = "DRAFT";
                break;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            this.mActivity.finish();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        menuInflater.inflate(R.menu.newsamplingform, menu);
        MenuItem findItem = menu.findItem(R.id.search_cis);
        SearchManager searchManager = (SearchManager) this.mActivity.getSystemService(FirebaseAnalytics.Event.SEARCH);
        final SearchView searchView = (SearchView) MenuItemCompat.getActionView(findItem);
        if (searchView != null) {
            searchView.setSearchableInfo(searchManager.getSearchableInfo(this.mActivity.getComponentName()));
            searchView.setIconifiedByDefault(false);
        }
        MenuItemCompat.setOnActionExpandListener(findItem, new MenuItemCompat.OnActionExpandListener() { // from class: com.conceptglobal.pmc.fragments.DraftFragment.1
            @Override // androidx.core.view.MenuItemCompat.OnActionExpandListener
            public boolean onMenuItemActionCollapse(MenuItem menuItem) {
                if (DraftFragment.this.mAdapter == null) {
                    return true;
                }
                DraftFragment.this.mAdapter.getFilter().filter("");
                searchView.setQuery(Astat.KEY_EMPTY, false);
                return true;
            }

            @Override // androidx.core.view.MenuItemCompat.OnActionExpandListener
            public boolean onMenuItemActionExpand(MenuItem menuItem) {
                if (DraftFragment.this.mAdapter == null) {
                    return true;
                }
                DraftFragment.this.mAdapter.getFilter().filter("");
                searchView.setQuery(Astat.KEY_EMPTY, false);
                return true;
            }
        });
        searchView.setOnQueryTextListener(new SearchView.OnQueryTextListener() { // from class: com.conceptglobal.pmc.fragments.DraftFragment.2
            @Override // androidx.appcompat.widget.SearchView.OnQueryTextListener
            public boolean onQueryTextChange(String str) {
                if (DraftFragment.this.mAdapter == null) {
                    return true;
                }
                DraftFragment.this.mAdapter.getFilter().filter(str);
                return true;
            }

            @Override // androidx.appcompat.widget.SearchView.OnQueryTextListener
            public boolean onQueryTextSubmit(String str) {
                if (DraftFragment.this.mAdapter == null) {
                    return true;
                }
                DraftFragment.this.mAdapter.getFilter().filter(str);
                return true;
            }
        });
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        LocalBroadcastManager.getInstance(this.mActivity).unregisterReceiver(this.myReciever);
        super.onDestroy();
    }
}

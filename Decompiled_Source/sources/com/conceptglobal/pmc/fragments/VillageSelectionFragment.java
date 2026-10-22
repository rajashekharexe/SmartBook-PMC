package com.conceptglobal.pmc.fragments;

import android.app.SearchManager;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.appcompat.widget.SearchView;
import androidx.core.view.MenuItemCompat;
import androidx.fragment.app.Fragment;
import com.conceptglobal.pmc.SetupPMC;
import com.conceptglobal.pmc.SyncPMC;
import com.conceptglobal.pmc.adapter.VillageSelectionAdapter;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.fo.VillageDisplayActivity;
import com.conceptglobal.pmc.model.VillageDetails;
import com.conceptglobal.pmc.utils.ConstantDeclarations;
import com.conceptglobal.pmc.utils.LabelUtils;
import com.conceptglobal.pmc.utils.PLog;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import com.conceptglobal.pmcdeepakfertilizers.R;
import com.google.firebase.analytics.FirebaseAnalytics;
import de.keyboardsurfer.android.widget.crouton.Crouton;
import de.keyboardsurfer.android.widget.crouton.Style;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class VillageSelectionFragment extends Fragment implements View.OnClickListener {
    protected static final String TAG = "VillageSelectionActivity";
    private VillageSelectionAdapter adapter;
    private Context context;
    private GetDataFromDB getData;
    private ListView lvList;
    private TextView tvPD;
    private TextView tvScroll;
    private TextView tvTBV;
    private TextView tvVC;
    private TextView tvVillageName;
    private List<VillageDetails> listVillageNames = new ArrayList();
    private int countSync = 0;

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.village_list_view, viewGroup, false);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        init();
        setLayoutData();
        getDataFromDB();
        setData();
        checkCountForSync();
    }

    private void init() {
        this.context = getActivity();
        this.getData = new GetDataFromDB();
        this.lvList = (ListView) getActivity().findViewById(R.id.lv_village_list);
        this.tvVillageName = (TextView) getActivity().findViewById(R.id.tv_villagename_village_list);
        this.tvTBV = (TextView) getActivity().findViewById(R.id.tv_tbv_village_list);
        this.tvPD = (TextView) getActivity().findViewById(R.id.tv_pd_village_list);
        this.tvVC = (TextView) getActivity().findViewById(R.id.tv_vc_village_list);
        TextView textView = (TextView) getActivity().findViewById(R.id.tv_scroll_village_list);
        this.tvScroll = textView;
        textView.setSelected(true);
        this.tvTBV.setOnClickListener(this);
        this.tvPD.setOnClickListener(this);
        this.tvVC.setOnClickListener(this);
    }

    private void setLayoutData() {
        this.tvVillageName.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_villageText()));
        this.tvTBV.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_tbvColumnText()));
        this.tvPD.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_pdColumnText()));
        this.tvVC.setText(getResources().getString(R.string.pmc_string_pfu));
    }

    private void getDataFromDB() {
        this.listVillageNames = this.getData.getVillageNames(Queries.getInstance().getGetAllVillagesData());
    }

    private void setData() {
        List<VillageDetails> list = this.listVillageNames;
        if (list != null && list.size() > 0) {
            VillageSelectionAdapter villageSelectionAdapter = new VillageSelectionAdapter(getActivity(), this.listVillageNames, "", "", null, null);
            this.adapter = villageSelectionAdapter;
            this.lvList.setAdapter((ListAdapter) villageSelectionAdapter);
            return;
        }
        Crouton.showText(getActivity(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_contactReportManager()) != null ? GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_contactReportManager()) : "", Style.ALERT);
    }

    private void checkCountForSync() {
        try {
            this.countSync = UtilDeclarations.getCountForSync();
            getActivity().supportInvalidateOptionsMenu();
        } catch (Exception e) {
            this.countSync = 0;
            PLog.e(TAG, e);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.tv_pd_village_list) {
            Crouton.showText(getActivity(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_pendingDataHint()) != null ? GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_pendingDataHint()) : "", Style.INFO);
        } else if (id == R.id.tv_tbv_village_list) {
            Crouton.showText(getActivity(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_tbvScrollText()) != null ? GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_tbvScrollText()) : "", Style.INFO);
        } else {
            if (id != R.id.tv_vc_village_list) {
                return;
            }
            Crouton.showText(getActivity(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_draftsHint()) != null ? GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_draftsHint()) : "", Style.INFO);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        getActivity().getMenuInflater().inflate(R.menu.village_selection_menu, menu);
        MenuItem findItem = menu.findItem(R.id.search_action_provider_village);
        SearchManager searchManager = (SearchManager) getActivity().getSystemService(FirebaseAnalytics.Event.SEARCH);
        final SearchView searchView = (SearchView) MenuItemCompat.getActionView(findItem);
        if (searchView != null) {
            searchView.setSearchableInfo(searchManager.getSearchableInfo(getActivity().getComponentName()));
            searchView.setIconifiedByDefault(false);
        }
        if (this.countSync == 0) {
            menu.findItem(R.id.sync_data_village).setIcon(R.drawable.ic_action_refresh);
        } else {
            menu.findItem(R.id.sync_data_village).setIcon(R.drawable.ic_action_refresh_pending);
        }
        MenuItemCompat.setOnActionExpandListener(findItem, new MenuItemCompat.OnActionExpandListener() { // from class: com.conceptglobal.pmc.fragments.VillageSelectionFragment.1
            @Override // androidx.core.view.MenuItemCompat.OnActionExpandListener
            public boolean onMenuItemActionCollapse(MenuItem menuItem) {
                if (VillageSelectionFragment.this.adapter == null) {
                    return true;
                }
                VillageSelectionFragment.this.adapter.getFilter().filter(ConstantDeclarations.getInstance().getEMPTY());
                searchView.setQuery(ConstantDeclarations.getInstance().getEMPTY(), false);
                return true;
            }

            @Override // androidx.core.view.MenuItemCompat.OnActionExpandListener
            public boolean onMenuItemActionExpand(MenuItem menuItem) {
                if (VillageSelectionFragment.this.adapter == null) {
                    return true;
                }
                VillageSelectionFragment.this.adapter.getFilter().filter(ConstantDeclarations.getInstance().getEMPTY());
                searchView.setQuery(ConstantDeclarations.getInstance().getEMPTY(), false);
                return true;
            }
        });
        searchView.setOnQueryTextListener(new SearchView.OnQueryTextListener() { // from class: com.conceptglobal.pmc.fragments.VillageSelectionFragment.2
            @Override // androidx.appcompat.widget.SearchView.OnQueryTextListener
            public boolean onQueryTextChange(String str) {
                if (VillageSelectionFragment.this.adapter == null) {
                    return true;
                }
                VillageSelectionFragment.this.adapter.getFilter().filter(str);
                return true;
            }

            @Override // androidx.appcompat.widget.SearchView.OnQueryTextListener
            public boolean onQueryTextSubmit(String str) {
                if (VillageSelectionFragment.this.adapter == null) {
                    return true;
                }
                VillageSelectionFragment.this.adapter.getFilter().filter(str);
                return true;
            }
        });
        super.onCreateOptionsMenu(menu, menuInflater);
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == 16908332) {
            getActivity().finish();
            return true;
        }
        if (itemId == R.id.show_more_village) {
            List<VillageDetails> list = this.listVillageNames;
            if (list != null && list.size() > 0) {
                startActivity(new Intent(this.context, (Class<?>) VillageDisplayActivity.class).addFlags(67108864));
            } else {
                Crouton.showText(getActivity(), R.string.pmc_val_no_data, Style.ALERT);
            }
        } else if (itemId == R.id.sync_data_village) {
            if (UtilDeclarations.isOnline(this.context)) {
                if (this.countSync != 0) {
                    Intent intent = new Intent(this.context, (Class<?>) SyncPMC.class);
                    intent.putExtra(ConstantDeclarations.getInstance().getKeyfromwhichclass(), "fromvillageselectionfragment");
                    startActivity(intent);
                    getActivity().finish();
                } else {
                    startActivity(new Intent(this.context, (Class<?>) SetupPMC.class).addFlags(67108864));
                    getActivity().finish();
                }
            } else {
                Crouton.showText(getActivity(), GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_cannotSync()) != null ? GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_cannotSync()) : "", Style.ALERT);
            }
        }
        return super.onOptionsItemSelected(menuItem);
    }
}

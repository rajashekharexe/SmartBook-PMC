package com.conceptglobal.pmc.fo;

import android.app.SearchManager;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.SlidingDrawer;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.widget.SearchView;
import androidx.core.view.MenuItemCompat;
import com.conceptglobal.pmc.BaseActivity;
import com.conceptglobal.pmc.adapter.VillageDisplayAdapter;
import com.conceptglobal.pmc.adapter.VillageDisplayDetailsAdapter;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.utils.ConstantDeclarations;
import com.conceptglobal.pmc.utils.LabelUtils;
import com.conceptglobal.pmc.utils.PLog;
import com.conceptglobal.pmcdeepakfertilizers.R;
import com.google.firebase.analytics.FirebaseAnalytics;
import de.keyboardsurfer.android.widget.crouton.Crouton;
import de.keyboardsurfer.android.widget.crouton.Style;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.apache.commons.io.IOUtils;

/* loaded from: classes.dex */
public class VillageDisplayActivity extends BaseActivity {
    protected static final String TAG = "VillageSelectionActivity";
    private VillageDisplayAdapter adapter;
    private Context context;
    private GetDataFromDB getData;
    private List<HashMap<String, String>> listVillageData = new ArrayList();
    private List<HashMap<String, String>> listVillageDetails = new ArrayList();
    private LinearLayout llDrawer;
    private ListView lvDetails;
    private ListView lvList;
    private SlidingDrawer slidingDrawer;
    private TextView tvSummery;

    @Override // com.conceptglobal.pmc.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.villages_display_view);
        setActionBar();
        init();
        slidingDrawerSetup();
        getDataFromDB();
        setData();
    }

    @Override // com.conceptglobal.pmc.BaseActivity
    protected void displayNotification(String str, String str2) {
        Crouton.showText(this, "" + str2 + IOUtils.LINE_SEPARATOR_UNIX + str, Style.ALERT);
    }

    private void setActionBar() {
        getSupportActionBar().setDisplayOptions(16);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        getSupportActionBar().setHomeButtonEnabled(true);
        getSupportActionBar().setDisplayShowHomeEnabled(true);
        getSupportActionBar().setCustomView(R.layout.header_actionbar);
        getSupportActionBar().setBackgroundDrawable(new ColorDrawable(getResources().getColor(R.color.action_bar_bg_blue)));
        TextView textView = (TextView) findViewById(R.id.tv_title_header_actionbar);
        ((TextView) findViewById(R.id.tv_subtitle_header_actionbar)).setVisibility(8);
        textView.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_villWiseSummery()));
    }

    private void init() {
        this.context = this;
        this.getData = new GetDataFromDB();
        this.lvList = (ListView) findViewById(R.id.lv_village_display);
        this.lvDetails = (ListView) findViewById(R.id.lv_details_village_display);
        this.llDrawer = (LinearLayout) findViewById(R.id.handleButton_village_display);
        this.tvSummery = (TextView) findViewById(R.id.tv_summery_village_display);
        this.slidingDrawer = (SlidingDrawer) findViewById(R.id.sliding_drawer_village_display);
    }

    private void slidingDrawerSetup() {
        this.tvSummery.setVisibility(8);
        this.slidingDrawer.setOnDrawerOpenListener(new SlidingDrawer.OnDrawerOpenListener() { // from class: com.conceptglobal.pmc.fo.VillageDisplayActivity.1
            @Override // android.widget.SlidingDrawer.OnDrawerOpenListener
            public void onDrawerOpened() {
                VillageDisplayActivity.this.tvSummery.setVisibility(0);
                VillageDisplayActivity.this.llDrawer.setBackgroundColor(VillageDisplayActivity.this.getResources().getColor(R.color.background_color));
            }
        });
        this.slidingDrawer.setOnDrawerCloseListener(new SlidingDrawer.OnDrawerCloseListener() { // from class: com.conceptglobal.pmc.fo.VillageDisplayActivity.2
            @Override // android.widget.SlidingDrawer.OnDrawerCloseListener
            public void onDrawerClosed() {
                VillageDisplayActivity.this.tvSummery.setVisibility(8);
                VillageDisplayActivity.this.llDrawer.setBackgroundColor(VillageDisplayActivity.this.getResources().getColor(R.color.transparent));
            }
        });
    }

    private void getDataFromDB() {
        try {
            this.listVillageData = this.getData.getDataInHashMapList(GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getGetQueryOfvillageDisplay()));
        } catch (Exception e) {
            PLog.e(TAG, e);
            this.listVillageData = null;
        }
        try {
            this.listVillageDetails = this.getData.getDataInHashMapList(Queries.getInstance().getGetVillageDataDetails());
        } catch (Exception e2) {
            PLog.e(TAG, e2);
            this.listVillageDetails = null;
        }
    }

    private void setData() {
        List<HashMap<String, String>> list = this.listVillageData;
        if (list != null && list.size() > 0) {
            VillageDisplayAdapter villageDisplayAdapter = new VillageDisplayAdapter(this.context, this.listVillageData);
            this.adapter = villageDisplayAdapter;
            villageDisplayAdapter.notifyDataSetChanged();
            this.lvList.setAdapter((ListAdapter) this.adapter);
        } else {
            Toast.makeText(this.context, GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_noDataFound()), 0).show();
        }
        List<HashMap<String, String>> list2 = this.listVillageDetails;
        if (list2 == null || list2.size() <= 0) {
            return;
        }
        this.lvDetails.setAdapter((ListAdapter) new VillageDisplayDetailsAdapter(this.context, this.listVillageDetails));
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.search_only, menu);
        MenuItem findItem = menu.findItem(R.id.search_only);
        SearchManager searchManager = (SearchManager) getSystemService(FirebaseAnalytics.Event.SEARCH);
        final SearchView searchView = (SearchView) MenuItemCompat.getActionView(findItem);
        if (searchView != null) {
            searchView.setSearchableInfo(searchManager.getSearchableInfo(getComponentName()));
            searchView.setIconifiedByDefault(false);
        }
        MenuItemCompat.setOnActionExpandListener(findItem, new MenuItemCompat.OnActionExpandListener() { // from class: com.conceptglobal.pmc.fo.VillageDisplayActivity.3
            @Override // androidx.core.view.MenuItemCompat.OnActionExpandListener
            public boolean onMenuItemActionCollapse(MenuItem menuItem) {
                if (VillageDisplayActivity.this.adapter != null) {
                    VillageDisplayActivity.this.adapter.getFilter().filter(ConstantDeclarations.getInstance().getEMPTY());
                    searchView.setQuery(ConstantDeclarations.getInstance().getEMPTY(), false);
                }
                VillageDisplayActivity.this.slidingDrawer.close();
                return true;
            }

            @Override // androidx.core.view.MenuItemCompat.OnActionExpandListener
            public boolean onMenuItemActionExpand(MenuItem menuItem) {
                if (VillageDisplayActivity.this.adapter != null) {
                    VillageDisplayActivity.this.adapter.getFilter().filter(ConstantDeclarations.getInstance().getEMPTY());
                    searchView.setQuery(ConstantDeclarations.getInstance().getEMPTY(), false);
                }
                VillageDisplayActivity.this.slidingDrawer.close();
                return true;
            }
        });
        searchView.setOnQueryTextListener(new SearchView.OnQueryTextListener() { // from class: com.conceptglobal.pmc.fo.VillageDisplayActivity.4
            @Override // androidx.appcompat.widget.SearchView.OnQueryTextListener
            public boolean onQueryTextChange(String str) {
                if (VillageDisplayActivity.this.adapter != null) {
                    VillageDisplayActivity.this.adapter.getFilter().filter(str);
                }
                VillageDisplayActivity.this.slidingDrawer.close();
                return true;
            }

            @Override // androidx.appcompat.widget.SearchView.OnQueryTextListener
            public boolean onQueryTextSubmit(String str) {
                if (VillageDisplayActivity.this.adapter != null) {
                    VillageDisplayActivity.this.adapter.getFilter().filter(str);
                }
                VillageDisplayActivity.this.slidingDrawer.close();
                return true;
            }
        });
        return super.onCreateOptionsMenu(menu);
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            if (this.slidingDrawer.isOpened()) {
                this.slidingDrawer.close();
                return true;
            }
            finish();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.slidingDrawer.isOpened()) {
            this.slidingDrawer.close();
        } else {
            finish();
        }
    }

    @Override // com.conceptglobal.pmc.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        getDataFromDB();
        setData();
    }
}

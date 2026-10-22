package com.conceptglobal.pmc.fo;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.widget.TabHost;
import android.widget.Toast;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentTabHost;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.fragments.ChildAttributesFragmentVertical;
import com.conceptglobal.pmc.interfaces.ChildAttributeLevelListener;
import com.conceptglobal.pmc.model.DashboardListModel;
import com.conceptglobal.pmc.utils.ConstantDeclarations;
import com.conceptglobal.pmc.utils.LocationUtils;
import com.conceptglobal.pmc.utils.PLog;
import com.conceptglobal.pmcdeepakfertilizers.R;
import java.util.HashMap;

/* loaded from: classes.dex */
public class AudianceChildAttributeActivity extends FragmentActivity implements ChildAttributeLevelListener {
    public static Context ctx;
    private int activityAssignmentId;
    private int activityId;
    private int assignmentID;
    private Context context;
    private int currentLevel;
    private int demoActivity;
    private String displayType;
    private int isPlanned;
    private int isSelfassign;
    private int ismba;
    public LocationUtils mLocationUtils;
    private FragmentTabHost mTabHost;
    private int parentAttributeId;
    private int segmentId;
    private long transId;
    private final String TAG = "ChildAttributeActivity";
    private int countVillage = 1;
    private String farmerId = "0";
    public HashMap<String, DashboardListModel> selectedFarmers = null;

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.alert_village_details);
        this.context = this;
        this.mLocationUtils = new LocationUtils();
        ConstantsPMC.getInstance().getLanguageConfigurations(this.context);
        init();
        getData();
        setData();
        setListeners();
        ctx = this;
    }

    private void setData() {
        this.currentLevel = 1;
        String str = "level " + this.currentLevel;
        int i = this.parentAttributeId;
        addTab(str, i, this.countVillage, String.valueOf(i));
    }

    private void init() {
        FragmentTabHost fragmentTabHost = (FragmentTabHost) findViewById(R.id.tabHostChildAttribute);
        this.mTabHost = fragmentTabHost;
        fragmentTabHost.setup(this, getSupportFragmentManager(), R.id.realTabContent);
    }

    private void addTab(String str, int i, int i2, String str2) {
        this.mTabHost.newTabSpec(str).setIndicator(str, null);
        Bundle bundle = new Bundle();
        bundle.putInt("ISSELFASSIGN", this.isSelfassign);
        bundle.putInt("ParentAttributeId", i);
        bundle.putLong("TRANSID", this.transId);
        bundle.putInt("ActivityAssignmentId", this.activityAssignmentId);
        bundle.putInt("SEGMENTID", this.segmentId);
        bundle.putInt("Count", i2);
        bundle.putString("pairId", str2);
        bundle.putInt("AssignmentId", this.assignmentID);
        bundle.putInt(ConstantDeclarations.getInstance().getKEYACTIVITYID(), this.activityId);
        bundle.putInt(ConstantDeclarations.getInstance().getKEYISPLANNED(), this.isPlanned);
        bundle.putString(ConstantDeclarations.getInstance().getKEYFARMERID(), this.farmerId);
        bundle.putString("DISPLAYTYPE", this.displayType);
        bundle.putInt(ConstantDeclarations.getInstance().getKeyIsMba(), this.ismba);
        Fragment findFragmentByTag = getSupportFragmentManager().findFragmentByTag(str);
        if (findFragmentByTag != null) {
            getSupportFragmentManager().beginTransaction().remove(findFragmentByTag).commitAllowingStateLoss();
        }
        String str3 = this.displayType;
        if (str3 != null && str3.equals("2")) {
            FragmentTabHost fragmentTabHost = this.mTabHost;
            fragmentTabHost.addTab(fragmentTabHost.newTabSpec("").setIndicator("", null), ChildAttributesFragmentVertical.class, bundle);
        } else {
            FragmentTabHost fragmentTabHost2 = this.mTabHost;
            fragmentTabHost2.addTab(fragmentTabHost2.newTabSpec("").setIndicator("", null), AudianceChildAttributesFragment.class, bundle);
        }
    }

    private void getData() {
        try {
            Intent intent = getIntent();
            this.ismba = intent.getIntExtra(ConstantDeclarations.getInstance().getKeyIsMba(), 0);
            this.farmerId = intent.getStringExtra(ConstantDeclarations.getInstance().getKEYFARMERID());
            this.isSelfassign = intent.getIntExtra("ISSELFASSIGN", 0);
            this.segmentId = intent.getIntExtra("SEGMENTID", 0);
            this.activityId = intent.getIntExtra(ConstantDeclarations.getInstance().getKEYACTIVITYID(), 0);
            this.isPlanned = intent.getIntExtra(ConstantDeclarations.getInstance().getKEYISPLANNED(), 0);
            this.parentAttributeId = intent.getIntExtra("ParentAttributeId", 0);
            this.transId = intent.getLongExtra("TRANSID", 0L);
            this.activityAssignmentId = intent.getIntExtra("ActivityAssignmentId", 0);
            this.assignmentID = intent.getIntExtra("AssignmentId", 0);
            this.displayType = intent.getStringExtra("DISPLAYTYPE");
            this.selectedFarmers = (HashMap) getIntent().getExtras().get("FarmersData");
        } catch (Exception e) {
            PLog.e("ChildAttributeActivity", e);
        }
    }

    private void setListeners() {
        this.mTabHost.setOnTabChangedListener(new TabHost.OnTabChangeListener() { // from class: com.conceptglobal.pmc.fo.AudianceChildAttributeActivity.1
            @Override // android.widget.TabHost.OnTabChangeListener
            public void onTabChanged(String str) {
                if (AudianceChildAttributeActivity.this.mTabHost.getCurrentTab() < AudianceChildAttributeActivity.this.currentLevel - 1) {
                    AudianceChildAttributeActivity.this.mTabHost.setCurrentTab(AudianceChildAttributeActivity.this.mTabHost.getCurrentTab() + 1);
                }
                Toast.makeText(AudianceChildAttributeActivity.this, str, 0).show();
            }
        });
    }

    @Override // com.conceptglobal.pmc.interfaces.ChildAttributeLevelListener
    public void addOrDeleteTab(int i, int i2, int i3, String str) {
        if (i == 1 && i2 != 0) {
            this.currentLevel++;
            addTab("level " + this.currentLevel, i2, i3, str);
            this.mTabHost.setCurrentTab(this.currentLevel - 1);
            Toast.makeText(getApplicationContext(), "clicked" + str, 0).show();
            return;
        }
        if (i == 2) {
            Toast.makeText(getApplicationContext(), "clicked", 0).show();
            return;
        }
        int i4 = this.currentLevel;
        if (i4 == 1) {
            LocalBroadcastManager.getInstance(getApplicationContext()).sendBroadcast(new Intent("QUANTITY_REMAINS"));
            finish();
        } else {
            this.currentLevel = i4 - 1;
            this.mTabHost.setCurrentTab(i4 - 2);
            this.mTabHost.getTabWidget().removeViewAt(this.currentLevel);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity, androidx.core.app.ActivityCompat.OnRequestPermissionsResultCallback
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        Log.i("ChildAttributeActivity", "onRequestPermissionResult");
        if (i == 34) {
            if (iArr.length <= 0) {
                Log.i("ChildAttributeActivity", "User interaction was cancelled.");
            } else if (iArr[0] == 0) {
                LocalBroadcastManager.getInstance(this).sendBroadcast(new Intent("android.intent.action.GPSTurnedOnResult"));
            } else {
                this.mLocationUtils.showDialog(this, LocationUtils.PERMISSION_DENIED);
            }
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i != 1) {
            return;
        }
        if (i2 == -1) {
            LocalBroadcastManager.getInstance(this).sendBroadcast(new Intent("android.intent.action.GPSTurnedOnResult"));
        } else {
            if (i2 != 0) {
                return;
            }
            this.mLocationUtils.showDialog(this, LocationUtils.GPS_NOT_TURNED_ON);
        }
    }
}

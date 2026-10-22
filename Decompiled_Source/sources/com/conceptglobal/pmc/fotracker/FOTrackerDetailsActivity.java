package com.conceptglobal.pmc.fotracker;

import android.app.AlertDialog;
import android.app.LocalActivityManager;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.TabHost;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.fotracker.sync.SyncDataService;
import com.conceptglobal.pmc.fotracker.util.UtilDeclarations;
import com.conceptglobal.pmcdeepakfertilizers.R;

/* loaded from: classes.dex */
public class FOTrackerDetailsActivity extends AppCompatActivity {
    private FOTrackerDetailsActivity mActivity;
    private ImageView sync;
    private TabHost tabHost;
    private WebView webView;

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        requestWindowFeature(1);
        super.onCreate(bundle);
        setContentView(R.layout.activity_fotracker_details);
        this.mActivity = this;
        init();
        settingTabs();
        settingData();
        settingListeners();
    }

    private void settingListeners() {
        this.sync.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.fotracker.FOTrackerDetailsActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                FOTrackerDetailsActivity.this.startService(new Intent(FOTrackerDetailsActivity.this.mActivity, (Class<?>) SyncDataService.class));
            }
        });
        this.tabHost.setOnTabChangedListener(new TabHost.OnTabChangeListener() { // from class: com.conceptglobal.pmc.fotracker.FOTrackerDetailsActivity.2
            @Override // android.widget.TabHost.OnTabChangeListener
            public void onTabChanged(String str) {
                if (FOTrackerDetailsActivity.this.tabHost.getCurrentTab() != 1 || UtilDeclarations.isOnline(FOTrackerDetailsActivity.this.getApplicationContext())) {
                    return;
                }
                FOTrackerDetailsActivity.this.showNoInternetDialog("No internet");
            }
        });
    }

    private void settingData() {
        if (UtilDeclarations.isOnline(getApplicationContext())) {
            this.webView.getSettings().setJavaScriptEnabled(true);
            this.webView.loadUrl("http://iconceptapps.com/PMCDemo/PMCMobilePages/FOReport/Index/" + ConstantsPMC.getInstance().getDeviceID());
            this.webView.setHorizontalScrollBarEnabled(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showNoInternetDialog(String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setMessage(str).setCancelable(false).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fotracker.FOTrackerDetailsActivity.3
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        });
        AlertDialog show = builder.show();
        if (UtilDeclarations.isTablet(this)) {
            UtilDeclarations.makeTabletDialogTextlarge(show);
        }
    }

    private void init() {
        this.tabHost = (TabHost) findViewById(R.id.fo_tabhost);
        this.webView = (WebView) findViewById(R.id.fo_distance_webView);
        this.sync = (ImageView) findViewById(R.id.sync);
    }

    private void settingTabs() {
        LocalActivityManager localActivityManager = new LocalActivityManager(this, false);
        localActivityManager.dispatchCreate(null);
        this.tabHost.setup(localActivityManager);
        addTab("Home", R.drawable.ic_others_wight, "Tag2");
        addTab("Report", R.drawable.ic_activity_wight, "Tag1");
    }

    private void addTab(String str, int i, String str2) {
        TabHost.TabSpec newTabSpec = this.tabHost.newTabSpec(str);
        View inflate = LayoutInflater.from(this).inflate(R.layout.fo_tab_indicator, (ViewGroup) this.tabHost.getTabWidget(), false);
        ((TextView) inflate.findViewById(R.id.title_tab_indicator)).setText(str);
        newTabSpec.setIndicator(inflate);
        if (str2.equalsIgnoreCase("Tag1")) {
            newTabSpec.setContent(R.id.tab1);
        } else if (str2.equalsIgnoreCase("Tag2")) {
            Intent intent = new Intent(this, (Class<?>) FOTrackerForeGroundServiceActivity.class);
            intent.addFlags(131072).addFlags(8192);
            newTabSpec.setContent(intent);
        }
        this.tabHost.addTab(newTabSpec);
    }
}

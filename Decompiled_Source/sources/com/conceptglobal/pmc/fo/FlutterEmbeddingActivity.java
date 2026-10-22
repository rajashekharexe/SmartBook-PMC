package com.conceptglobal.pmc.fo;

import android.os.Bundle;
import androidx.appcompat.app.AppCompatActivity;

/* loaded from: classes.dex */
public class FlutterEmbeddingActivity extends AppCompatActivity {
    private static boolean isRoutePoped = false;
    private String activityName;
    private String campaignID;
    private String crop;
    private String location;
    private String products;
    private String retailerContactIDs;
    private String retailerNames;
    private String transId;

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.campaignID = getIntent().getStringExtra("campaignID");
        this.transId = String.valueOf(Long.valueOf(getIntent().getLongExtra("transId", 0L)));
        this.activityName = getIntent().getStringExtra("activityName");
        this.crop = getIntent().getStringExtra("Crop");
        this.products = getIntent().getStringExtra("Product");
        this.location = getIntent().getStringExtra("Location");
        this.retailerNames = getIntent().getStringExtra("RetailerName");
        this.retailerContactIDs = getIntent().getStringExtra("RetailerContactID");
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
    }
}

package com.conceptglobal.pmc.fo;

import android.app.ProgressDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.webkit.JavascriptInterface;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.RelativeLayout;
import androidx.appcompat.app.AppCompatActivity;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.common.NeoCampaignConstants;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.fo.NeoCampaignWebView;
import com.conceptglobal.pmc.fragments.FragmentHolder;
import com.conceptglobal.pmc.fragments.WebViewFragment;
import com.conceptglobal.pmc.utils.CustomActionBar;
import com.conceptglobal.pmc.utils.Encryption;
import com.conceptglobal.pmc.utils.InstanceConfig;
import com.conceptglobal.pmc.utils.SharedPrefManager;
import com.conceptglobal.pmcdeepakfertilizers.R;
import com.evernote.android.job.JobStorage;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.messaging.Constants;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class NeoCampaignWebView extends AppCompatActivity {
    private static boolean isRoutePoped = false;
    private String activityName;
    private String campaignID;
    private String crop;
    private WebViewFragment fragment;
    private String location;
    private ProgressDialog mProgress;
    private String products;
    private RelativeLayout progressbarRL;
    private String retailerContactIDs;
    private String retailerNames;
    private String transId;
    private WebView webView;
    private boolean dataSent = false;
    BroadcastReceiver closeActivity_Receiver = new BroadcastReceiver() { // from class: com.conceptglobal.pmc.fo.NeoCampaignWebView.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent.getExtras().containsKey(NeoCampaignWebView.this.campaignID)) {
                String string = intent.getExtras().getString(NeoCampaignWebView.this.campaignID);
                if (TextUtils.isEmpty(string)) {
                    return;
                }
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put(FirebaseAnalytics.Param.METHOD, NeoCampaignConstants.ON_ACTIVITY_FINISH);
                    jSONObject.put(NeoCampaignConstants.CAMPAIGN_ID, string);
                } catch (Exception unused) {
                }
                NeoCampaignWebView.this.webView.evaluateJavascript("javascript:sendDataToNeoCampaign('" + jSONObject.toString() + "')", null);
            }
        }
    };
    BroadcastReceiver neocampaigndata_Receiver = new BroadcastReceiver() { // from class: com.conceptglobal.pmc.fo.NeoCampaignWebView.3
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            try {
                JSONObject jSONObject = new JSONObject(intent.getStringExtra("Data"));
                jSONObject.put(FirebaseAnalytics.Param.METHOD, NeoCampaignConstants.VMN_MISSED_CALL_DATA);
                String jSONObject2 = jSONObject.toString();
                NeoCampaignWebView.this.webView.evaluateJavascript("javascript:sendDataToNeoCampaign('" + jSONObject2 + "')", null);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    };

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_neo_campaign_web_view);
        CustomActionBar.initActionBar(this, "Neo Campaign");
        initWebView();
    }

    private void initWebView() {
        String str;
        this.progressbarRL = (RelativeLayout) findViewById(R.id.progressbarRL);
        initData();
        WebView webView = (WebView) findViewById(R.id.webView);
        this.webView = webView;
        webView.getSettings().setJavaScriptEnabled(true);
        WebSettings settings = this.webView.getSettings();
        settings.setMixedContentMode(2);
        settings.setUseWideViewPort(true);
        settings.setLoadWithOverviewMode(true);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        settings.setAllowFileAccess(true);
        settings.setDomStorageEnabled(true);
        settings.setCacheMode(-1);
        settings.setAllowContentAccess(true);
        settings.setMediaPlaybackRequiresUserGesture(false);
        settings.setCacheMode(2);
        settings.setSupportMultipleWindows(true);
        this.webView.addJavascriptInterface(new WebAppInterface(this), "AndroidApp");
        this.webView.setWebViewClient(new WebViewClient() { // from class: com.conceptglobal.pmc.fo.NeoCampaignWebView.1
            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView webView2, String str2) {
                if (!NeoCampaignWebView.this.dataSent) {
                    NeoCampaignWebView.this.dataSent = true;
                }
                super.onPageFinished(webView2, str2);
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedError(WebView webView2, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
                CharSequence description;
                if (Build.VERSION.SDK_INT >= 23) {
                    StringBuilder sb = new StringBuilder("Error: ");
                    description = webResourceError.getDescription();
                    sb.append((Object) description);
                    Log.e("WebView", sb.toString());
                }
                super.onReceivedError(webView2, webResourceRequest, webResourceError);
            }
        });
        try {
            if (ConstantsPMC.getInstance().getIsTrainingORLive() != 2) {
                str = InstanceConfig.getInstance(InstanceConfig.Instance.PMCDUAT).baseUrl + "/neoCampaignMUI";
            } else {
                str = InstanceConfig.getInstance(InstanceConfig.Instance.pmcdlive).baseUrl + "/neoCampaignMUILive ";
            }
            this.webView.loadUrl(str);
        } catch (Exception e) {
            Log.e("NCWEBVIEW", e.toString());
        }
    }

    private void loadWebViewFragment() {
        this.fragment = FragmentHolder.getInstance().getFragment();
        getSupportFragmentManager().beginTransaction().replace(R.id.fragment_container, this.fragment).show(this.fragment).commit();
    }

    private void initData() {
        this.campaignID = getIntent().getStringExtra("campaignID");
        this.transId = getIntent().getStringExtra("transId");
        this.activityName = getIntent().getStringExtra("activityName");
        this.crop = getIntent().getStringExtra("Crop");
        this.products = getIntent().getStringExtra("Product");
        this.location = getIntent().getStringExtra("Location");
        this.retailerNames = getIntent().getStringExtra("RetailerName");
        this.retailerContactIDs = getIntent().getStringExtra("RetailerContactID");
        LocalBroadcastManager.getInstance(this).registerReceiver(this.closeActivity_Receiver, new IntentFilter(NeoCampaignConstants.CLOSE_ACTIVITY));
        LocalBroadcastManager.getInstance(this).registerReceiver(this.neocampaigndata_Receiver, new IntentFilter(NeoCampaignConstants.CAMPAIGN_DATA));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void navigateToNeocampaign() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(FirebaseAnalytics.Param.METHOD, NeoCampaignConstants.DATA_PASS_METHOD);
            jSONObject.put(NeoCampaignConstants.PARENT_APP, "PMC");
            jSONObject.put(NeoCampaignConstants.USER_NAME, GetDataFromDB.getInstance().getSingleValue(Queries.getInstance().getEmployeeID()));
            jSONObject.put(NeoCampaignConstants.PASSWORD, Encryption.decrypt(GetDataFromDB.getInstance().getSingleValue(Queries.getInstance().getPasswordQuery())));
            jSONObject.put(NeoCampaignConstants.FCM_KEY, SharedPrefManager.getStringValue(this, "FCMKEY"));
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (!TextUtils.isEmpty(this.campaignID)) {
            sendCampaignDetails(jSONObject);
        } else {
            sendInitialData(jSONObject);
        }
        this.webView.evaluateJavascript("javascript:sendDataToNeoCampaign('" + jSONObject.toString() + "')", null);
    }

    public void sendInitialData(JSONObject jSONObject) {
        prepareCampaignDetails(jSONObject);
        try {
            jSONObject.put(NeoCampaignConstants.ROOT_URL, "");
            jSONObject.put(NeoCampaignConstants.BASE_URL, "");
            jSONObject.put(NeoCampaignConstants.ROOT_URL_WITH_PORT, "");
            jSONObject.put(NeoCampaignConstants.ACCESS_TOKEN, "");
            jSONObject.put(NeoCampaignConstants.CLIENT_ID, "");
            jSONObject.put(NeoCampaignConstants.CLIENT_SECRET, "");
            jSONObject.put(NeoCampaignConstants.NEOINT_IDENTITY_SERVICE, "");
            jSONObject.put(NeoCampaignConstants.IS_APPOVER, getIntent().getBooleanExtra("IsAppover", false));
        } catch (Exception unused) {
        }
    }

    private void sendCampaignDetails(JSONObject jSONObject) {
        prepareCampaignDetails(jSONObject);
        try {
            jSONObject.put(NeoCampaignConstants.CAMPAIGN_ID, this.campaignID);
        } catch (Exception unused) {
        }
    }

    private void prepareCampaignDetails(JSONObject jSONObject) {
        try {
            jSONObject.put(NeoCampaignConstants.PARENT_APP, "PMC");
            jSONObject.put("CampignActivityId", this.transId);
            jSONObject.put("CampaignSource", "PMC");
            jSONObject.put(JobStorage.COLUMN_ID, "");
            jSONObject.put("CampaignTitle", this.activityName);
            jSONObject.put("CampaignDescription", "");
            jSONObject.put("CampaignStatus", "");
            jSONObject.put("CampaignProfileImage", "");
            jSONObject.put("CampignLatLong", "");
            jSONObject.put("CampignLocation", this.location);
            jSONObject.put("CampignSubLocation", "");
            jSONObject.put("CampignSubLocationLatLong", "");
            jSONObject.put("CampaignStartDate", "");
            jSONObject.put("CampaignEndDate", "");
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("Id", "");
            jSONObject2.put("Name", "");
            jSONObject2.put("MobileNumber", "");
            jSONObject.put("CreatedBy", jSONObject2);
            jSONObject.put("VMNType", "Call");
            jSONObject.put("CampaignScheduleDate", "");
            jSONObject.put("CampaignScheduleTime", "");
            JSONArray jSONArray = new JSONArray();
            String str = this.products;
            if (str != null) {
                for (String str2 : str.split(",")) {
                    JSONObject jSONObject3 = new JSONObject();
                    jSONObject3.put("NeoIntId", "");
                    jSONObject3.put("displayName", str2);
                    jSONObject3.put("Product Name", str2);
                    jSONArray.put(jSONObject3);
                }
            }
            jSONObject.put("CampaignProductProfile", jSONArray);
            JSONArray jSONArray2 = new JSONArray();
            JSONObject jSONObject4 = new JSONObject();
            jSONObject4.put("NeoIntId", "");
            jSONObject4.put("Crop Name", this.crop);
            jSONObject4.put("Crop Code", "");
            jSONObject4.put("CropId", "");
            jSONArray2.put(jSONObject4);
            jSONObject.put("CampaignCrops", jSONArray2);
            jSONObject.put("HasApprovals", "No");
            jSONObject.put("Moments", new JSONArray());
            JSONObject jSONObject5 = new JSONObject();
            jSONObject5.put("Zone", "");
            jSONObject5.put("Region", "");
            jSONObject5.put("Territory", "");
            jSONObject.put("ESADetails", jSONObject5);
            jSONObject.put("LotteryFlag", false);
            jSONObject.put("DiscountFlag", false);
            jSONObject.put(NeoCampaignConstants.IS_LOTTERYE_NABLED, getIntent().getBooleanExtra(NeoCampaignConstants.IS_LOTTERYE_NABLED, false));
            jSONObject.put("RetailerName", this.retailerNames);
            jSONObject.put("RetailerContactID", this.retailerContactIDs);
        } catch (Exception unused) {
        }
    }

    public class WebAppInterface {
        Context mContext;

        WebAppInterface(Context context) {
            this.mContext = context;
        }

        @JavascriptInterface
        public void handleMessageFromFlutter(final String str) {
            Log.d("WebAppInterface", "Message from Flutter via JavaScript: " + str);
            NeoCampaignWebView.this.runOnUiThread(new Runnable() { // from class: com.conceptglobal.pmc.fo.NeoCampaignWebView$WebAppInterface$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    NeoCampaignWebView.WebAppInterface.this.m196x5ed20d80(str);
                }
            });
        }

        /* renamed from: lambda$handleMessageFromFlutter$0$com-conceptglobal-pmc-fo-NeoCampaignWebView$WebAppInterface, reason: not valid java name */
        /* synthetic */ void m196x5ed20d80(String str) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                if (jSONObject.get(FirebaseAnalytics.Param.METHOD).equals("getInitialData")) {
                    NeoCampaignWebView.this.navigateToNeocampaign();
                } else {
                    NeoCampaignWebView.this.handleNeoCampaignCallbackEvents(jSONObject);
                }
            } catch (JSONException e) {
                throw new RuntimeException(e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleNeoCampaignCallbackEvents(JSONObject jSONObject) {
        try {
            if (jSONObject.get(FirebaseAnalytics.Param.METHOD).equals(NeoCampaignConstants.UPDATE_CAMPAIGN_ID)) {
                String str = (String) ((JSONObject) jSONObject.get(Constants.ScionAnalytics.MessageType.DATA_MESSAGE)).get(NeoCampaignConstants.CAMPAIGN_ID);
                Intent intent = new Intent("Campaign_FARMERS_List");
                intent.putExtra(NeoCampaignConstants.UPDATE_CAMPAIGN_ID, str);
                LocalBroadcastManager.getInstance(getApplicationContext()).sendBroadcast(intent);
            } else if (jSONObject.get(FirebaseAnalytics.Param.METHOD).equals(NeoCampaignConstants.CAMPAIGN_COMPLETED)) {
                Intent intent2 = new Intent("Campaign_FARMERS_List");
                intent2.putExtra(NeoCampaignConstants.CAMPAIGN_COMPLETED, "Completed");
                LocalBroadcastManager.getInstance(getApplicationContext()).sendBroadcast(intent2);
                finish();
            } else if (jSONObject.get(FirebaseAnalytics.Param.METHOD).equals(NeoCampaignConstants.ADD_MOBILE_NUMBER)) {
                JSONObject jSONObject2 = (JSONObject) jSONObject.get(Constants.ScionAnalytics.MessageType.DATA_MESSAGE);
                jSONObject2.getString(NeoCampaignConstants.CAMPAIGN_ID);
                String string = jSONObject2.getString("MobileNumber");
                Intent intent3 = new Intent("Campaign_FARMERS_List");
                intent3.putExtra("MobileNumber", string);
                LocalBroadcastManager.getInstance(getApplicationContext()).sendBroadcast(intent3);
            } else if (jSONObject.get(FirebaseAnalytics.Param.METHOD).equals(NeoCampaignConstants.MISSED_CALLS_UPDATE)) {
                JSONObject jSONObject3 = (JSONObject) jSONObject.get(Constants.ScionAnalytics.MessageType.DATA_MESSAGE);
                jSONObject3.getString(NeoCampaignConstants.CAMPAIGN_ID);
                List<Map<String, Object>> convertJsonArrayToListMap = convertJsonArrayToListMap((JSONArray) jSONObject3.get("MissedCallsList"));
                Intent intent4 = new Intent("Campaign_FARMERS_List");
                Bundle bundle = new Bundle();
                bundle.putSerializable("MissedCallsList", (Serializable) convertJsonArrayToListMap);
                intent4.putExtra("BUNDLE", bundle);
                LocalBroadcastManager.getInstance(getApplicationContext()).sendBroadcast(intent4);
            } else if (jSONObject.get(FirebaseAnalytics.Param.METHOD).equals(NeoCampaignConstants.DISMISS_DIALOG)) {
                this.progressbarRL.setVisibility(8);
                this.webView.setVisibility(0);
            } else if (jSONObject.get(FirebaseAnalytics.Param.METHOD).equals(NeoCampaignConstants.NAVIGATE_BACK)) {
                onBackPressed();
            }
        } catch (JSONException unused) {
        }
    }

    public static List<Map<String, Object>> convertJsonArrayToListMap(JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        if (jSONArray == null) {
            return arrayList;
        }
        for (int i = 0; i < jSONArray.length(); i++) {
            try {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                HashMap hashMap = new HashMap();
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    hashMap.put(next, jSONObject.get(next));
                }
                arrayList.add(hashMap);
            } catch (JSONException e) {
                throw new RuntimeException(e);
            }
        }
        return arrayList;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        LocalBroadcastManager.getInstance(this).unregisterReceiver(this.closeActivity_Receiver);
        LocalBroadcastManager.getInstance(this).unregisterReceiver(this.neocampaigndata_Receiver);
        super.onDestroy();
    }
}

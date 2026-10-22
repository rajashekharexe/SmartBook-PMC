package com.conceptglobal.pmc.fragments;

import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.JavascriptInterface;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.RelativeLayout;
import androidx.fragment.app.Fragment;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.fragments.WebViewFragment;
import com.conceptglobal.pmc.utils.Encryption;
import com.conceptglobal.pmcdeepakfertilizers.R;
import com.evernote.android.job.JobStorage;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.messaging.Constants;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class WebViewFragment extends Fragment {
    private String activityName;
    private String campaignID;
    private String crop;
    private boolean dataSent = false;
    private boolean isRoutePoped = false;
    private String location;
    private ProgressDialog mProgress;
    private String products;
    private RelativeLayout progressbarRL;
    private String retailerContactIDs;
    private String retailerNames;
    private String transId;
    private WebView webView;

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.campaignID = arguments.getString("campaignID");
            this.transId = String.valueOf(Long.valueOf(arguments.getLong("transId", 0L)));
            this.activityName = arguments.getString("activityName");
            this.crop = arguments.getString("Crop");
            this.products = arguments.getString("Product");
            this.location = arguments.getString("Location");
            this.retailerNames = arguments.getString("RetailerName");
            this.retailerContactIDs = arguments.getString("RetailerContactID");
        }
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.fragment_web_view, viewGroup, false);
        this.webView = (WebView) inflate.findViewById(R.id.webview);
        initWebView();
        loadUrl();
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        this.webView.saveState(bundle);
    }

    public WebView getWebView() {
        return this.webView;
    }

    private void initWebView() {
        this.webView.getSettings().setJavaScriptEnabled(true);
        WebView.setWebContentsDebuggingEnabled(true);
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
        this.webView.addJavascriptInterface(new WebAppInterface(getContext()), "AndroidApp");
        this.webView.setWebChromeClient(new WebChromeClient() { // from class: com.conceptglobal.pmc.fragments.WebViewFragment.1
            @Override // android.webkit.WebChromeClient
            public void onProgressChanged(WebView webView, int i) {
            }
        });
    }

    private void loadUrl() {
        try {
            this.webView.loadUrl("http://10.10.20.35:8080");
        } catch (Exception e) {
            Log.e("NCWEBVIEW", e.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void navigateToNeocampaign() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(FirebaseAnalytics.Param.METHOD, "DATA_PASS_METHOD");
            jSONObject.put("PARENT_APP", "PMC");
            jSONObject.put("USER_NAME", GetDataFromDB.getInstance().getSingleValue(Queries.getInstance().getEmployeeID()));
            jSONObject.put("PASSWORD", Encryption.decrypt(GetDataFromDB.getInstance().getSingleValue(Queries.getInstance().getPasswordQuery())));
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

    private void sendInitialData(JSONObject jSONObject) {
        prepareCampaignDetails(jSONObject);
        try {
            jSONObject.put("ROOT_URL", "");
            jSONObject.put("BASE_URL", "");
            jSONObject.put("ROOT_URL_WITH_PORT", "");
            jSONObject.put("ACCESS_TOKEN", "");
            jSONObject.put("CLIENT_ID", "");
            jSONObject.put("CLIENT_SECRET", "");
            jSONObject.put("NEOINT_IDENTITY_SERVICE", "");
            jSONObject.put("IS_APPOVER", false);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void sendCampaignDetails(JSONObject jSONObject) {
        prepareCampaignDetails(jSONObject);
        try {
            jSONObject.put("CAMPAIGN_ID", this.campaignID);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void prepareCampaignDetails(JSONObject jSONObject) {
        try {
            jSONObject.put("PARENT_APP", "PMC");
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
            jSONObject.put("IS_LOTTERYE_NABLED", false);
            jSONObject.put("RetailerName", this.retailerNames);
            jSONObject.put("RetailerContactID", this.retailerContactIDs);
        } catch (Exception e) {
            e.printStackTrace();
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
            WebViewFragment.this.getActivity().runOnUiThread(new Runnable() { // from class: com.conceptglobal.pmc.fragments.WebViewFragment$WebAppInterface$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    WebViewFragment.WebAppInterface.this.m197xf80ac7ea(str);
                }
            });
        }

        /* renamed from: lambda$handleMessageFromFlutter$0$com-conceptglobal-pmc-fragments-WebViewFragment$WebAppInterface, reason: not valid java name */
        /* synthetic */ void m197xf80ac7ea(String str) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                if (jSONObject.get(FirebaseAnalytics.Param.METHOD).equals("getInitialData")) {
                    WebViewFragment.this.navigateToNeocampaign();
                } else {
                    WebViewFragment.this.handleNeoCampaignCallbackEvents(jSONObject);
                }
            } catch (JSONException e) {
                throw new RuntimeException(e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleNeoCampaignCallbackEvents(JSONObject jSONObject) {
        try {
            if (!jSONObject.get(FirebaseAnalytics.Param.METHOD).equals("UPDATE_CAMPAIGN_ID")) {
                if (jSONObject.get(FirebaseAnalytics.Param.METHOD).equals("CAMPAIGN_COMPLETED")) {
                    Intent intent = new Intent("Campaign_FARMERS_List");
                    intent.putExtra("CAMPAIGN_COMPLETED", "Completed");
                    LocalBroadcastManager.getInstance(getContext()).sendBroadcast(intent);
                }
            } else {
                String string = ((JSONObject) jSONObject.get(Constants.ScionAnalytics.MessageType.DATA_MESSAGE)).getString("CAMPAIGN_ID");
                Intent intent2 = new Intent("Campaign_FARMERS_List");
                intent2.putExtra("UPDATE_CAMPAIGN_ID", string);
                LocalBroadcastManager.getInstance(getContext()).sendBroadcast(intent2);
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        super.onDetach();
        WebView webView = this.webView;
        if (webView != null) {
            webView.destroy();
            this.webView = null;
        }
    }
}

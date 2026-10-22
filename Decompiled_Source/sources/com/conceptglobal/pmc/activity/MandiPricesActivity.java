package com.conceptglobal.pmc.activity;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.promotions.database.CategoryDAO;
import com.conceptglobal.pmc.utils.CustomActionBar;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import com.conceptglobal.pmcdeepakfertilizers.R;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;

/* loaded from: classes.dex */
public class MandiPricesActivity extends AppCompatActivity {
    boolean IsbackEnabled;
    private String activityName;
    String from = "";
    TextView tvNoData;
    WebAppInterface webAppInterface;
    private WebView webView;

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_mandi_prices);
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
        CustomActionBar.initActionBar(this, getIntent().getExtras().getString(SettingsJsonConstants.PROMPT_TITLE_KEY, "") + " (" + UtilDeclarations.getApplicationVersion(this) + ")");
        setSupportActionBar(toolbar);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        getSupportActionBar().setDisplayShowHomeEnabled(true);
        init();
        loadData();
    }

    private void showNoInternetDialog(String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setMessage(str).setCancelable(false).setPositiveButton("Ok", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.activity.MandiPricesActivity.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
                MandiPricesActivity.this.finish();
            }
        });
        builder.show();
    }

    private void loadData() {
        this.webView.setVisibility(0);
        if (com.conceptglobal.pmc.promotions.utils.UtilDeclarations.isOnline(this)) {
            this.webView.setWebChromeClient(new WebChromeClient() { // from class: com.conceptglobal.pmc.activity.MandiPricesActivity.2
                private ProgressDialog mProgress;

                @Override // android.webkit.WebChromeClient
                public void onProgressChanged(WebView webView, int i) {
                    if (this.mProgress == null) {
                        ProgressDialog progressDialog = new ProgressDialog(MandiPricesActivity.this);
                        this.mProgress = progressDialog;
                        progressDialog.setCanceledOnTouchOutside(false);
                        this.mProgress.show();
                    }
                    this.mProgress.setMessage("Loading ");
                    if (i == 100) {
                        this.mProgress.dismiss();
                        this.mProgress = null;
                    }
                }
            });
            this.webView.setWebViewClient(new WebViewClient() { // from class: com.conceptglobal.pmc.activity.MandiPricesActivity.3
                private int running = 0;

                @Override // android.webkit.WebViewClient
                public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
                    super.onReceivedError(webView, webResourceRequest, webResourceError);
                }
            });
            this.tvNoData.setVisibility(8);
            this.webView.getSettings().setDomStorageEnabled(true);
            this.webView.getSettings().setJavaScriptEnabled(true);
            WebAppInterface webAppInterface = new WebAppInterface(getApplicationContext(), this);
            this.webAppInterface = webAppInterface;
            this.webView.addJavascriptInterface(webAppInterface, "Android");
            int parseInt = Integer.parseInt(new CategoryDAO(this).getPdaId());
            this.webView.loadUrl(ConstantsPMC.getInstance().getWebViewMandiPrices() + "?PdaId=" + parseInt);
            return;
        }
        this.webView.setVisibility(8);
        this.tvNoData.setVisibility(0);
        showNoInternetDialog("No Internet");
    }

    private void init() {
        this.webView = (WebView) findViewById(R.id.webView);
        this.tvNoData = (TextView) findViewById(R.id.tvNoData);
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        return super.onCreateOptionsMenu(menu);
    }

    public class WebAppInterface {
        Activity mActivity;
        Context mContext;

        public WebAppInterface(Context context, Activity activity) {
            this.mContext = context;
            this.mActivity = activity;
        }
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            finish();
        }
        return super.onOptionsItemSelected(menuItem);
    }
}

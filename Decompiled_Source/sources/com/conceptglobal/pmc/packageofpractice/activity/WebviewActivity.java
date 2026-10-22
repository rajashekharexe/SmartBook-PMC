package com.conceptglobal.pmc.packageofpractice.activity;

import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.MenuItem;
import android.webkit.JavascriptInterface;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import com.conceptglobal.pmc.promotions.database.CategoryDAO;
import com.conceptglobal.pmc.promotions.utils.Constants;
import com.conceptglobal.pmc.promotions.utils.UtilDeclarations;
import com.conceptglobal.pmc.utils.CustomActionBar;
import com.conceptglobal.pmcdeepakfertilizers.R;

/* loaded from: classes.dex */
public class WebviewActivity extends AppCompatActivity {
    private String cropName;
    private String htmlStartPage;
    private String localHTMLZIPURL;
    private int popid;
    private WebAppInterface webAppInterface;
    private WebView webView;

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_webview);
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            this.localHTMLZIPURL = extras.getString("localHTMLZIPURL");
            this.htmlStartPage = extras.getString("htmlStartPage");
            this.cropName = extras.getString("cropName");
            this.popid = extras.getInt(Constants.POP_PRIMARY_COLUMN_NAME);
        }
        this.webView = (WebView) findViewById(R.id.webview);
        CustomActionBar.initActionBar(this, this.cropName, true);
        loadData();
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            finish();
        }
        return super.onOptionsItemSelected(menuItem);
    }

    private void loadData() {
        this.webView.setWebChromeClient(new WebChromeClient() { // from class: com.conceptglobal.pmc.packageofpractice.activity.WebviewActivity.1
            private ProgressDialog mProgress;

            @Override // android.webkit.WebChromeClient
            public void onProgressChanged(WebView webView, int i) {
                if (this.mProgress == null) {
                    ProgressDialog progressDialog = new ProgressDialog(WebviewActivity.this);
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
        this.webView.setWebViewClient(new WebViewClient() { // from class: com.conceptglobal.pmc.packageofpractice.activity.WebviewActivity.2
            private int running = 0;

            @Override // android.webkit.WebViewClient
            public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
                super.onReceivedError(webView, webResourceRequest, webResourceError);
            }
        });
        this.webView.getSettings().setJavaScriptEnabled(true);
        WebAppInterface webAppInterface = new WebAppInterface(getApplicationContext());
        this.webAppInterface = webAppInterface;
        this.webView.addJavascriptInterface(webAppInterface, "Android");
        this.webView.loadUrl("file://" + this.localHTMLZIPURL + "/" + this.cropName.toLowerCase() + "/" + this.htmlStartPage);
        CategoryDAO categoryDAO = new CategoryDAO(this);
        categoryDAO.insertContentLog(this.popid, 0, Integer.valueOf(categoryDAO.getPdaId()).intValue(), categoryDAO.getUserId(), UtilDeclarations.getDateTimeForLogs(), true, false, 3, Constants.USAGE_ACTION_VIEWED, 1, this.popid, Constants.POP_PRIMARY_COLUMN_NAME);
    }

    public class WebAppInterface {
        Context mContext;

        @JavascriptInterface
        public void dataSaved(boolean z) {
        }

        @JavascriptInterface
        public void moveToVistCompleatepage(boolean z) {
        }

        public WebAppInterface(Context context) {
            this.mContext = context;
        }

        @JavascriptInterface
        public void saverequired(String str, String str2, String str3, String str4) {
            Bundle bundle = new Bundle();
            bundle.putString("feed", str);
            bundle.putString("consumed", str2);
            bundle.putString("sample", str3);
            bundle.putString("nooffish", str4);
            Intent intent = new Intent();
            intent.putExtra("Data", bundle);
            WebviewActivity.this.setResult(-1, intent);
            WebviewActivity.this.finish();
        }

        @JavascriptInterface
        public void saverequiredfordistributor(boolean z) {
            if (z) {
                AlertDialog create = new AlertDialog.Builder(WebviewActivity.this).create();
                create.setCanceledOnTouchOutside(false);
                create.setMessage("Month plan has not be saved.");
                create.setButton(-1, "Ok", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.packageofpractice.activity.WebviewActivity.WebAppInterface.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        dialogInterface.dismiss();
                    }
                });
                create.show();
            }
        }
    }
}

package com.conceptglobal.pmc.promotions.activity;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.webkit.JavascriptInterface;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.conceptglobal.pmc.promotions.database.CategoryDAO;
import com.conceptglobal.pmc.promotions.utils.UtilDeclarations;
import com.conceptglobal.pmcdeepakfertilizers.R;

/* loaded from: classes.dex */
public class SampleTestActivity extends AppCompatActivity {
    boolean IsbackEnabled;
    private String activityName;
    String from = "";
    TextView tvNoData;
    private int vedioId;
    WebAppInterface webAppInterface;
    private WebView webView;

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_sample_test);
        setSupportActionBar((Toolbar) findViewById(R.id.toolbar));
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        getSupportActionBar().setDisplayShowHomeEnabled(true);
        if (getIntent().getExtras() != null) {
            this.vedioId = getIntent().getExtras().getInt("vedioId");
        }
        init();
        loadData();
    }

    private void showNoInternetDialog(String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setMessage(str).setCancelable(false).setPositiveButton("Ok", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.promotions.activity.SampleTestActivity.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
                SampleTestActivity.this.finish();
            }
        });
        builder.show();
    }

    private void loadData() {
        this.webView.setVisibility(0);
        if (UtilDeclarations.isOnline(this)) {
            this.webView.setWebChromeClient(new WebChromeClient() { // from class: com.conceptglobal.pmc.promotions.activity.SampleTestActivity.2
                private ProgressDialog mProgress;

                @Override // android.webkit.WebChromeClient
                public void onProgressChanged(WebView webView, int i) {
                    if (this.mProgress == null) {
                        ProgressDialog progressDialog = new ProgressDialog(SampleTestActivity.this);
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
            this.tvNoData.setVisibility(8);
            this.webView.getSettings().setJavaScriptEnabled(true);
            WebAppInterface webAppInterface = new WebAppInterface(getApplicationContext(), this);
            this.webAppInterface = webAppInterface;
            this.webView.addJavascriptInterface(webAppInterface, "Android");
            Integer.parseInt(new CategoryDAO(this).getPdaId());
            this.webView.loadUrl("http://mliquidate.com/pmc2.0demo/quiz/attempt-quiz?quizid=25&PdaId=5207");
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

        @JavascriptInterface
        public void testStatus(String str) {
            if (str == null || !str.equalsIgnoreCase("PASS")) {
                new CategoryDAO(this.mContext).updateWatchStatus("TestStatus", SampleTestActivity.this.vedioId, 2);
            } else {
                new CategoryDAO(this.mContext).updateWatchStatus("TestStatus", SampleTestActivity.this.vedioId, 1);
            }
            Intent intent = new Intent("TestStatus");
            intent.putExtra("Status", str);
            LocalBroadcastManager.getInstance(this.mContext).sendBroadcast(intent);
        }
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            finish();
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
    }
}

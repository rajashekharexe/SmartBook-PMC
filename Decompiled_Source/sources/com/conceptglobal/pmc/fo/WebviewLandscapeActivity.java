package com.conceptglobal.pmc.fo;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.widget.TabWidget;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowCompat;
import androidx.core.view.WindowInsetsCompat;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.utils.CustomActionBar;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import com.conceptglobal.pmcdeepakfertilizers.R;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import org.apache.http.HttpHeaders;

/* loaded from: classes.dex */
public class WebviewLandscapeActivity extends AppCompatActivity {
    boolean IsbackEnabled;
    private long activityID;
    private String activityName;
    String from = "";
    String title;
    TextView tvNoData;
    WebAppInterface webAppInterface;
    private WebView webView;

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_sample_test);
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
        this.title = getIntent().getExtras().getString(SettingsJsonConstants.PROMPT_TITLE_KEY, "");
        this.from = getIntent().getExtras().getString(HttpHeaders.FROM);
        if (getIntent().getExtras() != null) {
            try {
                this.activityID = getIntent().getLongExtra("activityID", 0L);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        CustomActionBar.initActionBar(this, this.title + " (" + UtilDeclarations.getApplicationVersion(this) + ")");
        setSupportActionBar(toolbar);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        getSupportActionBar().setDisplayShowHomeEnabled(true);
        init();
        setBottomViewPadding();
        setTopviewViewPadding(toolbar);
        loadData();
        setBottomViewPadding();
    }

    private void setTopviewViewPadding(Toolbar toolbar) {
        WindowCompat.setDecorFitsSystemWindows(getWindow(), false);
        ViewCompat.setOnApplyWindowInsetsListener(toolbar, new OnApplyWindowInsetsListener() { // from class: com.conceptglobal.pmc.fo.WebviewLandscapeActivity.1
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                view.setPadding(view.getPaddingLeft(), windowInsetsCompat.getInsets(WindowInsetsCompat.Type.statusBars()).top, view.getPaddingRight(), view.getPaddingBottom());
                return windowInsetsCompat;
            }
        });
    }

    private void showNoInternetDialog(String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setMessage(str).setCancelable(false).setPositiveButton("Ok", new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.fo.WebviewLandscapeActivity.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
                WebviewLandscapeActivity.this.finish();
            }
        });
        builder.show();
    }

    private void loadData() {
        this.webView.setVisibility(0);
        if (UtilDeclarations.isOnline(this)) {
            this.webView.setWebChromeClient(new WebChromeClient() { // from class: com.conceptglobal.pmc.fo.WebviewLandscapeActivity.3
                private ProgressDialog mProgress;

                @Override // android.webkit.WebChromeClient
                public void onProgressChanged(WebView webView, int i) {
                    if (this.mProgress == null) {
                        ProgressDialog progressDialog = new ProgressDialog(WebviewLandscapeActivity.this);
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
            this.webAppInterface = new WebAppInterface(getApplicationContext(), this);
            if (!TextUtils.isEmpty(this.from) && this.from.equalsIgnoreCase("Weekly Tour Plan")) {
                this.webView.loadUrl(ConstantsPMC.getInstance().getWebViewUrlWeeklyPlan() + ConstantsPMC.getInstance().getUserId());
                return;
            }
            if (this.from.equalsIgnoreCase("Task Assign")) {
                this.webView.loadUrl(ConstantsPMC.getInstance().getWebViewUrlTaskAssign() + ConstantsPMC.getInstance().getUserId());
                return;
            }
            if (TextUtils.isEmpty(this.from) || !this.from.equalsIgnoreCase("Reports")) {
                return;
            }
            this.webView.loadUrl(ConstantsPMC.getInstance().getWebViewUrlReportsNew() + ConstantsPMC.getInstance().getUserId());
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

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
    }

    private void setBottomViewPadding() {
        ViewCompat.setOnApplyWindowInsetsListener(this.webView, new OnApplyWindowInsetsListener() { // from class: com.conceptglobal.pmc.fo.WebviewLandscapeActivity$$ExternalSyntheticLambda0
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                return WebviewLandscapeActivity.lambda$setBottomViewPadding$0(view, windowInsetsCompat);
            }
        });
    }

    static /* synthetic */ WindowInsetsCompat lambda$setBottomViewPadding$0(View view, WindowInsetsCompat windowInsetsCompat) {
        Insets insets = windowInsetsCompat.getInsets(WindowInsetsCompat.Type.systemBars());
        TabWidget tabWidget = (TabWidget) view.findViewById(android.R.id.tabs);
        if (tabWidget != null) {
            tabWidget.setPadding(tabWidget.getPaddingLeft(), tabWidget.getPaddingTop(), tabWidget.getPaddingRight(), insets.bottom);
        }
        return windowInsetsCompat;
    }
}

package com.conceptglobal.pmc;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.webkit.JavascriptInterface;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import com.conceptglobal.pmc.activity.WebviewUploadFileActivity;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.fo.WebviewLandscapeActivity;
import com.conceptglobal.pmc.utils.CustomActionBar;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import com.google.firebase.messaging.Constants;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.net.URLEncoder;
import org.apache.http.HttpHeaders;

/* loaded from: classes.dex */
public class ReportViewActivity extends AppCompatActivity {
    boolean IsbackEnabled;
    private int activityID;
    private String activityName;
    private long contactID;
    LinearLayout llParentView;
    TextView tvNoData;
    WebAppInterface webAppInterface;
    private WebView webView;
    String from = "";
    String expensesUrl = "";

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(com.conceptglobal.pmcdeepakfertilizers.R.layout.activity_report_view);
        if (getIntent().getExtras() != null) {
            this.from = getIntent().getExtras().getString(Constants.MessagePayloadKeys.FROM);
            try {
                this.expensesUrl = getIntent().getExtras().getString("ExpensesUrl");
            } catch (Exception unused) {
            }
            String str = this.from;
            if (str != null && str.equals("Planning")) {
                CustomActionBar.initActionBar(this, getIntent().getExtras().getString("activityName") + " (" + UtilDeclarations.getApplicationVersion(this) + ")");
            } else {
                String str2 = this.from;
                if (str2 != null && str2.equals("Expenses")) {
                    CustomActionBar.initActionBar(this, getIntent().getExtras().getString("activityName") + " (" + UtilDeclarations.getApplicationVersion(this) + ")");
                } else {
                    String str3 = this.from;
                    if (str3 != null && str3.equals("MDOLocation")) {
                        CustomActionBar.initActionBar(this, getIntent().getExtras().getString("activityName") + " (" + UtilDeclarations.getApplicationVersion(this) + ")");
                    } else {
                        String str4 = this.from;
                        if (str4 != null && str4.equals("UserCreation")) {
                            CustomActionBar.initActionBar(this, getIntent().getExtras().getString("activityName") + " (" + UtilDeclarations.getApplicationVersion(this) + ")");
                        } else {
                            String str5 = this.from;
                            if (str5 != null && str5.equals("ApproveResignations")) {
                                CustomActionBar.initActionBar(this, getIntent().getExtras().getString("activityName") + " (" + UtilDeclarations.getApplicationVersion(this) + ")");
                            } else {
                                String str6 = this.from;
                                if (str6 != null && str6.equals("AttendanceRegularization")) {
                                    CustomActionBar.initActionBar(this, getIntent().getExtras().getString("activityName") + " (" + UtilDeclarations.getApplicationVersion(this) + ")");
                                } else {
                                    String str7 = this.from;
                                    if (str7 != null && str7.equals("Abscond")) {
                                        CustomActionBar.initActionBar(this, getIntent().getExtras().getString("activityName") + " (" + UtilDeclarations.getApplicationVersion(this) + ")");
                                    } else {
                                        String str8 = this.from;
                                        if (str8 != null && str8.equals("Retailer details")) {
                                            CustomActionBar.initActionBar(this, getIntent().getExtras().getString("activityName") + " (" + UtilDeclarations.getApplicationVersion(this) + ")");
                                        } else {
                                            String str9 = this.from;
                                            if (str9 != null && str9.equals("Task Assign")) {
                                                CustomActionBar.initActionBar(this, getIntent().getExtras().getString("activityName") + " (" + UtilDeclarations.getApplicationVersion(this) + ")");
                                            } else {
                                                CustomActionBar.initActionBar(this, getIntent().getExtras().getString("activityName") + " Reports (" + UtilDeclarations.getApplicationVersion(this) + ")");
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        if (getIntent().getExtras() != null) {
            this.activityID = getIntent().getExtras().getInt("activityID");
            this.activityName = getIntent().getExtras().getString("activityName");
            if (getIntent().hasExtra("ContactID")) {
                this.contactID = getIntent().getExtras().getLong("ContactID");
            }
        }
        init();
        setBottomViewPadding();
        loadData();
    }

    private void showNoInternetDialog(String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setMessage(str).setCancelable(false).setPositiveButton(com.conceptglobal.pmcdeepakfertilizers.R.string.ok, new DialogInterface.OnClickListener() { // from class: com.conceptglobal.pmc.ReportViewActivity.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
                ReportViewActivity.this.finish();
            }
        });
        AlertDialog show = builder.show();
        if (UtilDeclarations.isTablet(this)) {
            UtilDeclarations.makeTabletDialogTextlarge(show);
        }
    }

    private void loadData() {
        this.webView.setVisibility(0);
        if (UtilDeclarations.isOnline(this)) {
            this.webView.setWebChromeClient(new WebChromeClient() { // from class: com.conceptglobal.pmc.ReportViewActivity.2
                private ProgressDialog mProgress;

                @Override // android.webkit.WebChromeClient
                public void onProgressChanged(WebView webView, int i) {
                    if (ReportViewActivity.this.isFinishing()) {
                        return;
                    }
                    if (this.mProgress == null) {
                        ProgressDialog progressDialog = new ProgressDialog(ReportViewActivity.this);
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
            if (this.from.equals("Reports")) {
                int i = this.activityID;
                if (i == 1) {
                    Intent intent = new Intent(this, (Class<?>) WebviewLandscapeActivity.class);
                    intent.putExtra(SettingsJsonConstants.PROMPT_TITLE_KEY, this.activityName);
                    intent.putExtra(HttpHeaders.FROM, "Reports");
                    startActivity(intent.addFlags(67108864));
                    finish();
                    return;
                }
                if (i == 2) {
                    this.webView.loadUrl(ConstantsPMC.getInstance().getWebViewUrlFarmerTargetReports() + ConstantsPMC.getInstance().getUserId());
                    return;
                }
                if (i == 3) {
                    this.webView.loadUrl(ConstantsPMC.getInstance().getWebViewUrlFODaywiseReport() + ConstantsPMC.getInstance().getUserId());
                    return;
                }
                if (i == 4) {
                    this.webView.loadUrl(ConstantsPMC.getInstance().getWebViewUrlAttendanceReport() + ConstantsPMC.getInstance().getUserId());
                    return;
                }
                if (i == 5) {
                    this.webView.loadUrl(ConstantsPMC.getInstance().getWebViewUrlApplyLeaveReports() + ConstantsPMC.getInstance().getUserId());
                    return;
                }
                if (i == 6) {
                    this.webView.loadUrl(ConstantsPMC.getInstance().getWebViewUrlTaDaReports() + ConstantsPMC.getInstance().getUserId());
                    return;
                }
                return;
            }
            if (this.from.equals("Planning")) {
                if (this.activityName.equalsIgnoreCase("Demand Generation Plan")) {
                    this.webView.loadUrl(ConstantsPMC.getInstance().getWebViewUrlPlaning("DemandGenerationPlan") + ConstantsPMC.getInstance().getUserId());
                    return;
                }
                if (this.activityName.equalsIgnoreCase("Product Wise Sales Plan")) {
                    WebAppInterface webAppInterface = new WebAppInterface(getApplicationContext(), this);
                    this.webAppInterface = webAppInterface;
                    this.webView.addJavascriptInterface(webAppInterface, "Android");
                    this.webView.loadUrl(ConstantsPMC.getInstance().getWebViewUrlPlaning("ProductWiseSalesPlan") + ConstantsPMC.getInstance().getDeviceID());
                    return;
                }
                if (this.activityName.equalsIgnoreCase("Distributor Sales Plan")) {
                    this.webView.loadUrl(ConstantsPMC.getInstance().getWebViewUrlDistributorSalesPlan() + ConstantsPMC.getInstance().getDeviceID() + "?businessType=1");
                    return;
                }
                return;
            }
            if (this.from.equalsIgnoreCase("MDOLocation")) {
                this.webView.loadUrl(ConstantsPMC.getInstance().getWebViewUrlMDOLOcation() + ConstantsPMC.getInstance().getUserId());
                return;
            }
            if (this.from.equalsIgnoreCase("UserCreation")) {
                Intent intent2 = new Intent(this, (Class<?>) WebviewUploadFileActivity.class);
                intent2.putExtra(Constants.MessagePayloadKeys.FROM, "UserCreation");
                startActivity(intent2);
                finish();
                return;
            }
            if (this.from.equalsIgnoreCase("ApproveResignations")) {
                Intent intent3 = new Intent(this, (Class<?>) WebviewUploadFileActivity.class);
                intent3.putExtra(Constants.MessagePayloadKeys.FROM, "ApproveResignations");
                startActivity(intent3);
                finish();
                return;
            }
            if (this.from.equalsIgnoreCase("AttendanceRegularization")) {
                this.webView.loadUrl(ConstantsPMC.getInstance().getWebViewUrlAttendanceRegularization() + ConstantsPMC.getInstance().getUserId());
                return;
            }
            if (this.from.equalsIgnoreCase("Expenses")) {
                WebAppInterface webAppInterface2 = new WebAppInterface(getApplicationContext(), this);
                this.webAppInterface = webAppInterface2;
                this.webView.addJavascriptInterface(webAppInterface2, "Android");
                this.webView.loadUrl("https://drive.google.com/viewerng/viewer?embedded=true&url=" + this.expensesUrl);
                return;
            }
            if (this.from.equalsIgnoreCase("Abscond")) {
                Intent intent4 = new Intent(this, (Class<?>) WebviewUploadFileActivity.class);
                intent4.putExtra(Constants.MessagePayloadKeys.FROM, "Abscond");
                startActivity(intent4);
                finish();
                return;
            }
            if (this.from.equalsIgnoreCase("Retailer details")) {
                this.webView.loadUrl(ConstantsPMC.getInstance().getWebViewUrlRetailerReport() + this.contactID);
                return;
            }
            if (this.from.equalsIgnoreCase("Task Assign")) {
                this.webView.loadUrl(ConstantsPMC.getInstance().getWebViewUrlTaskAssign() + ConstantsPMC.getInstance().getUserId());
                return;
            }
            if (this.from.equalsIgnoreCase("HRPolicy")) {
                WebAppInterface webAppInterface3 = new WebAppInterface(getApplicationContext(), this);
                this.webAppInterface = webAppInterface3;
                this.webView.addJavascriptInterface(webAppInterface3, "Android");
                try {
                    int i2 = this.activityID;
                    if (i2 == 1) {
                        this.webView.loadUrl("https://drive.google.com/viewerng/viewer?embedded=true&url=" + URLEncoder.encode(GetDataFromDB.getInstance().getSingleValue(Queries.getInstance().getItemValueForPDFLinks("pmc_hr_policy")), "UTF-8"));
                    } else if (i2 == 2) {
                        this.webView.loadUrl("https://drive.google.com/viewerng/viewer?embedded=true&url=" + URLEncoder.encode(GetDataFromDB.getInstance().getSingleValue(Queries.getInstance().getItemValueForPDFLinks("pmc_training_document")), "UTF-8"));
                    }
                    return;
                } catch (Exception e) {
                    e.printStackTrace();
                    return;
                }
            }
            return;
        }
        this.webView.setVisibility(8);
        this.tvNoData.setVisibility(0);
        showNoInternetDialog(getResources().getString(com.conceptglobal.pmcdeepakfertilizers.R.string.pmc_check_internet));
    }

    private void init() {
        this.webView = (WebView) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.webView);
        this.tvNoData = (TextView) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tvNoData);
        this.llParentView = (LinearLayout) findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.llParentView);
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == 16908332) {
            String str = this.activityName;
            if (str != null && str.equalsIgnoreCase("Product Wise Sales Plan")) {
                if (!this.IsbackEnabled) {
                    finish();
                }
            } else {
                finish();
            }
        } else if (itemId == com.conceptglobal.pmcdeepakfertilizers.R.id.sync_data_village) {
            Toast.makeText(this, "Loading page..", 1).show();
            loadData();
        }
        return super.onOptionsItemSelected(menuItem);
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
        public void IsbackEnabled(final boolean z) {
            ReportViewActivity.this.IsbackEnabled = z;
            this.mActivity.runOnUiThread(new Runnable() { // from class: com.conceptglobal.pmc.ReportViewActivity.WebAppInterface.1
                @Override // java.lang.Runnable
                public void run() {
                    if (z) {
                        ReportViewActivity.this.getSupportActionBar().setDisplayHomeAsUpEnabled(false);
                    } else {
                        ReportViewActivity.this.getSupportActionBar().setDisplayHomeAsUpEnabled(true);
                    }
                }
            });
        }
    }

    private void setBottomViewPadding() {
        ViewCompat.setOnApplyWindowInsetsListener(this.llParentView, new OnApplyWindowInsetsListener() { // from class: com.conceptglobal.pmc.ReportViewActivity$$ExternalSyntheticLambda0
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                return ReportViewActivity.this.m190xa2db50d9(view, windowInsetsCompat);
            }
        });
    }

    /* renamed from: lambda$setBottomViewPadding$0$com-conceptglobal-pmc-ReportViewActivity, reason: not valid java name */
    /* synthetic */ WindowInsetsCompat m190xa2db50d9(View view, WindowInsetsCompat windowInsetsCompat) {
        Insets insets = windowInsetsCompat.getInsets(WindowInsetsCompat.Type.systemBars());
        LinearLayout linearLayout = this.llParentView;
        if (linearLayout != null) {
            linearLayout.setPadding(linearLayout.getPaddingLeft(), this.llParentView.getPaddingTop(), this.llParentView.getPaddingRight(), insets.bottom);
        }
        return windowInsetsCompat;
    }
}

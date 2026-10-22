package com.conceptglobal.pmc.utils;

import android.R;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;
import com.conceptglobal.imaterialdesign.app.Dialog;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.database.GetDataFromDB;
import com.conceptglobal.pmc.interfaces.OnEndDayListener;
import com.conceptglobal.pmc.service.SyncDataService;

/* loaded from: classes.dex */
public class DayActiviesReportDialog extends Dialog {
    private AlertDialog alertDialog;
    private Button close;
    private Button endDay;
    private Context mContext;
    private OnEndDayListener mListener;
    private TextView noInternet;
    private Button refresh;
    private WebView webView;

    public DayActiviesReportDialog(Context context, OnEndDayListener onEndDayListener) {
        super(context);
        this.mListener = onEndDayListener;
        this.mContext = context;
    }

    public void showDialog() {
        ViewGroup viewGroup = (ViewGroup) findViewById(R.id.content);
        AlertDialog.Builder builder = new AlertDialog.Builder(this.mContext);
        builder.setView(LayoutInflater.from(this.mContext).inflate(com.conceptglobal.pmcdeepakfertilizers.R.layout.dialog_reports_view, viewGroup, false));
        AlertDialog create = builder.create();
        this.alertDialog = create;
        create.show();
        this.alertDialog.setCancelable(false);
        this.alertDialog.setCanceledOnTouchOutside(false);
        this.alertDialog.getWindow().setLayout(-2, -2);
        this.webView = (WebView) this.alertDialog.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.webView);
        TextView textView = (TextView) this.alertDialog.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tvInternet);
        this.noInternet = textView;
        textView.setText(GetDataFromDB.getInstance().getValue(LabelUtils.getInstance().getPmc_pleaseCheckDataError()));
        this.endDay = (Button) this.alertDialog.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.btnEndDay);
        this.refresh = (Button) this.alertDialog.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.btnRefresh);
        this.close = (Button) this.alertDialog.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.btnClose);
        loadData();
        this.endDay.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.utils.DayActiviesReportDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DayActiviesReportDialog.this.alertDialog.dismiss();
                DayActiviesReportDialog.this.mListener.onEndDayClick();
                if (!UtilDeclarations.isOnline(DayActiviesReportDialog.this.mContext) || UtilDeclarations.isServiceRunning(DayActiviesReportDialog.this.mContext, SyncDataService.class)) {
                    return;
                }
                Toast.makeText(DayActiviesReportDialog.this.mContext, "Service initiated", 1);
                new SendDataServiceUtil(DayActiviesReportDialog.this.mContext).startService();
            }
        });
        this.refresh.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.utils.DayActiviesReportDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DayActiviesReportDialog.this.loadData();
            }
        });
        this.close.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.utils.DayActiviesReportDialog.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DayActiviesReportDialog.this.alertDialog.dismiss();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadData() {
        this.webView.setVisibility(0);
        if (UtilDeclarations.isOnline(this.mContext)) {
            this.webView.setWebChromeClient(new WebChromeClient() { // from class: com.conceptglobal.pmc.utils.DayActiviesReportDialog.4
                private ProgressDialog mProgress;

                @Override // android.webkit.WebChromeClient
                public void onProgressChanged(WebView webView, int i) {
                    if (this.mProgress == null) {
                        ProgressDialog progressDialog = new ProgressDialog(DayActiviesReportDialog.this.mContext);
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
            this.noInternet.setVisibility(8);
            this.webView.setVisibility(0);
            this.refresh.setVisibility(8);
            this.endDay.setVisibility(0);
            this.webView.getSettings().setJavaScriptEnabled(true);
            this.webView.loadUrl(ConstantsPMC.getInstance().getWebViewUrlFODaywiseReport() + ConstantsPMC.getInstance().getUserId());
            return;
        }
        this.webView.setVisibility(8);
        this.noInternet.setVisibility(0);
        this.refresh.setVisibility(0);
        this.endDay.setVisibility(8);
    }

    public void dismissDialog() {
        AlertDialog alertDialog = this.alertDialog;
        if (alertDialog == null || !alertDialog.isShowing()) {
            return;
        }
        this.alertDialog.dismiss();
    }
}

package com.conceptglobal.pmc.utils;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.conceptglobal.pmc.interfaces.OnRequestCancelListener;
import com.conceptglobal.pmcdeepakfertilizers.R;

/* loaded from: classes.dex */
public class CustomProgressDialog extends Dialog {
    private Activity activity;
    private Button cancelbtn;
    public LinearLayout cancelll;
    private RelativeLayout countRL;
    private String extras;
    public TextView fullpercent;
    private CustomProgressDialog mDialog;
    private ProgressBar mProgressBar;
    private OnRequestCancelListener mRequestCancelListner;
    public TextView msgtxt;
    public TextView percent;
    private RelativeLayout percentRL;
    private progressbarType progressType;
    public LinearLayout progressbarll;
    public TextView progresscount;
    private ProgressBar progressspinner;

    public enum progressbarType {
        NORMAL_DIALOG,
        PERCENT_BAR,
        COUNT_BAR
    }

    public CustomProgressDialog(Context context, progressbarType progressbartype, String str) {
        super(context);
        setCancelable(false);
        setCanceledOnTouchOutside(false);
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.gravity = 1;
        getWindow().setAttributes(attributes);
        this.mDialog = this;
        this.activity = (Activity) context;
        this.extras = str;
        this.progressType = progressbartype;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        requestWindowFeature(1);
        super.onCreate(bundle);
        setContentView(R.layout.custom_progress_dialog);
        this.cancelll = (LinearLayout) findViewById(R.id.cancelll);
        this.progressbarll = (LinearLayout) findViewById(R.id.progressbarll);
        this.countRL = (RelativeLayout) findViewById(R.id.countRL);
        this.percentRL = (RelativeLayout) findViewById(R.id.percentRL);
        this.msgtxt = (TextView) findViewById(R.id.msgtxt);
        this.mProgressBar = (ProgressBar) findViewById(R.id.progressbar);
        this.progressspinner = (ProgressBar) findViewById(R.id.progressspinner);
        enableDisableProgressBar();
        Button button = (Button) findViewById(R.id.cancelbtn);
        this.cancelbtn = button;
        button.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.utils.CustomProgressDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CustomProgressDialog.this.dismiss();
                try {
                    CustomProgressDialog customProgressDialog = CustomProgressDialog.this;
                    customProgressDialog.mRequestCancelListner = (OnRequestCancelListener) customProgressDialog.activity;
                    CustomProgressDialog.this.mRequestCancelListner.onCancel(CustomProgressDialog.this.extras, true);
                } catch (ClassCastException e) {
                    e.printStackTrace();
                }
            }
        });
    }

    /* renamed from: com.conceptglobal.pmc.utils.CustomProgressDialog$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$com$conceptglobal$pmc$utils$CustomProgressDialog$progressbarType;

        static {
            int[] iArr = new int[progressbarType.values().length];
            $SwitchMap$com$conceptglobal$pmc$utils$CustomProgressDialog$progressbarType = iArr;
            try {
                iArr[progressbarType.NORMAL_DIALOG.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$conceptglobal$pmc$utils$CustomProgressDialog$progressbarType[progressbarType.PERCENT_BAR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$conceptglobal$pmc$utils$CustomProgressDialog$progressbarType[progressbarType.COUNT_BAR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private void enableDisableProgressBar() {
        int i = AnonymousClass2.$SwitchMap$com$conceptglobal$pmc$utils$CustomProgressDialog$progressbarType[this.progressType.ordinal()];
        if (i == 1) {
            this.progressbarll.setVisibility(8);
            this.progressspinner.setVisibility(0);
        } else if (i == 2) {
            this.percent = (TextView) findViewById(R.id.percent);
            this.fullpercent = (TextView) findViewById(R.id.fullpercent);
            this.countRL.setVisibility(8);
        } else {
            if (i != 3) {
                return;
            }
            this.progresscount = (TextView) findViewById(R.id.progresscount);
            this.percentRL.setVisibility(8);
        }
    }

    public void setProgressBar(String str, boolean z, int i) {
        this.mProgressBar.setIndeterminate(z);
        this.mProgressBar.setMax(i);
        setProgressMsg(str);
    }

    public void setProgress(int i, int i2) {
        try {
            if (this.progressType == progressbarType.PERCENT_BAR) {
                this.mProgressBar.setProgress(i);
                this.percent.setText("" + i + "%");
                this.fullpercent.setText(i + "/" + i2);
            } else {
                TextView textView = this.progresscount;
                if (textView != null) {
                    textView.setText(i + "/" + i2);
                }
            }
        } catch (Exception unused) {
        }
    }

    public void showDialog(String str) {
        Activity activity = this.activity;
        if (activity == null || activity.isFinishing() || this.activity.isRestricted()) {
            return;
        }
        CustomProgressDialog customProgressDialog = this.mDialog;
        if (customProgressDialog != null && !customProgressDialog.isShowing()) {
            show();
        }
        setProgressMsg(str);
    }

    public void setProgressMsg(String str) {
        TextView textView;
        CustomProgressDialog customProgressDialog = this.mDialog;
        if (customProgressDialog == null || !customProgressDialog.isShowing() || (textView = this.msgtxt) == null) {
            return;
        }
        textView.setText(str);
    }
}

package com.conceptglobal.pmc.utils;

import android.R;
import android.app.AlertDialog;
import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.conceptglobal.imaterialdesign.app.Dialog;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.interfaces.OnVerifyOTPListener;

/* loaded from: classes.dex */
public class OTPVerificationDialog extends Dialog {
    private AlertDialog alertDialog;
    private EditText edtOTP;
    private String farmerMobile;
    private String farmerName;
    private String isFrom;
    private Context mContext;
    private OnVerifyOTPListener mListener;

    public OTPVerificationDialog(Context context, String str, String str2, OnVerifyOTPListener onVerifyOTPListener) {
        super(context);
        this.farmerMobile = str;
        this.farmerName = str2;
        this.mListener = onVerifyOTPListener;
        this.mContext = context;
    }

    public OTPVerificationDialog(Context context, String str, String str2, OnVerifyOTPListener onVerifyOTPListener, String str3) {
        super(context);
        this.farmerMobile = str;
        this.farmerName = str2;
        this.mListener = onVerifyOTPListener;
        this.mContext = context;
        this.isFrom = str3;
    }

    public void showDialog() {
        ViewGroup viewGroup = (ViewGroup) findViewById(R.id.content);
        AlertDialog.Builder builder = new AlertDialog.Builder(this.mContext);
        builder.setView(LayoutInflater.from(this.mContext).inflate(com.conceptglobal.pmcdeepakfertilizers.R.layout.dialog_otp_verification, viewGroup, false));
        AlertDialog create = builder.create();
        this.alertDialog = create;
        create.show();
        this.alertDialog.setCancelable(false);
        this.alertDialog.setCanceledOnTouchOutside(false);
        this.alertDialog.getWindow().setLayout(-2, -2);
        this.edtOTP = (EditText) this.alertDialog.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.edtOTP);
        TextView textView = (TextView) this.alertDialog.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tvFarmerName);
        TextView textView2 = (TextView) this.alertDialog.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tvFarmerMobile);
        textView.setText(this.farmerName);
        textView2.setText(this.farmerMobile);
        ((ImageView) this.alertDialog.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.ivClose)).setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.utils.OTPVerificationDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                OTPVerificationDialog.this.alertDialog.dismiss();
                OTPVerificationDialog.this.mListener.onClose();
            }
        });
        ((Ibutton) this.alertDialog.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.btnSubmit)).setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.utils.OTPVerificationDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (!TextUtils.isEmpty(OTPVerificationDialog.this.edtOTP.getText().toString()) || !OTPVerificationDialog.this.edtOTP.getText().toString().equals("")) {
                    OTPVerificationDialog.this.mListener.onSubmitOTP(OTPVerificationDialog.this.edtOTP.getText().toString());
                } else {
                    Toast.makeText(OTPVerificationDialog.this.mContext, "Please enter valid Verification Code.", 1).show();
                }
            }
        });
        ((Ibutton) this.alertDialog.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tvVerifyLater)).setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.utils.OTPVerificationDialog.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                OTPVerificationDialog.this.alertDialog.dismiss();
                OTPVerificationDialog.this.mListener.onVerifyLater();
            }
        });
        TextView textView3 = (TextView) this.alertDialog.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tvResendOTP);
        TextView textView4 = (TextView) this.alertDialog.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tvFarmernameLable);
        textView3.setOnClickListener(new View.OnClickListener() { // from class: com.conceptglobal.pmc.utils.OTPVerificationDialog.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                OTPVerificationDialog.this.mListener.onResendOTP();
            }
        });
        if (!TextUtils.isEmpty(this.isFrom) && this.isFrom.equalsIgnoreCase("Registration")) {
            TextView textView5 = (TextView) this.alertDialog.findViewById(com.conceptglobal.pmcdeepakfertilizers.R.id.tvFarmerMobileLable);
            textView4.setVisibility(8);
            textView5.setVisibility(8);
            textView2.setVisibility(8);
            textView3.setVisibility(8);
        }
        if (TextUtils.isEmpty(this.isFrom) || !this.isFrom.equalsIgnoreCase(ConstantsPMC.TYPE_Retailer)) {
            return;
        }
        textView4.setText("Retailer Shop name : ");
    }

    public void dismissDialog() {
        AlertDialog alertDialog = this.alertDialog;
        if (alertDialog == null || !alertDialog.isShowing()) {
            return;
        }
        this.alertDialog.dismiss();
    }
}

package com.conceptglobal.pmc.interfaces;

/* loaded from: classes.dex */
public interface OnVerifyOTPListener {
    void onClose();

    void onResendOTP();

    void onSubmitOTP(String str);

    void onVerifyLater();
}

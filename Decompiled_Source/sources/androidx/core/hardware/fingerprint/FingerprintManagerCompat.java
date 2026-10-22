package androidx.core.hardware.fingerprint;

import android.content.Context;
import android.hardware.fingerprint.FingerprintManager;
import android.os.Build;
import android.os.Handler;
import androidx.core.graphics.Insets$$ExternalSyntheticApiModelOutline0;
import androidx.core.os.CancellationSignal;
import java.security.Signature;
import javax.crypto.Cipher;
import javax.crypto.Mac;

@Deprecated
/* loaded from: classes.dex */
public class FingerprintManagerCompat {
    private final Context mContext;

    public static abstract class AuthenticationCallback {
        public void onAuthenticationError(int errMsgId, CharSequence errString) {
        }

        public void onAuthenticationFailed() {
        }

        public void onAuthenticationHelp(int helpMsgId, CharSequence helpString) {
        }

        public void onAuthenticationSucceeded(AuthenticationResult result) {
        }
    }

    public static FingerprintManagerCompat from(Context context) {
        return new FingerprintManagerCompat(context);
    }

    private FingerprintManagerCompat(Context context) {
        this.mContext = context;
    }

    public boolean hasEnrolledFingerprints() {
        FingerprintManager fingerprintManagerOrNull;
        boolean hasEnrolledFingerprints;
        if (Build.VERSION.SDK_INT < 23 || (fingerprintManagerOrNull = getFingerprintManagerOrNull(this.mContext)) == null) {
            return false;
        }
        hasEnrolledFingerprints = fingerprintManagerOrNull.hasEnrolledFingerprints();
        return hasEnrolledFingerprints;
    }

    public boolean isHardwareDetected() {
        FingerprintManager fingerprintManagerOrNull;
        boolean isHardwareDetected;
        if (Build.VERSION.SDK_INT < 23 || (fingerprintManagerOrNull = getFingerprintManagerOrNull(this.mContext)) == null) {
            return false;
        }
        isHardwareDetected = fingerprintManagerOrNull.isHardwareDetected();
        return isHardwareDetected;
    }

    public void authenticate(CryptoObject crypto, int flags, CancellationSignal cancel, AuthenticationCallback callback, Handler handler) {
        FingerprintManager fingerprintManagerOrNull;
        if (Build.VERSION.SDK_INT < 23 || (fingerprintManagerOrNull = getFingerprintManagerOrNull(this.mContext)) == null) {
            return;
        }
        fingerprintManagerOrNull.authenticate(wrapCryptoObject(crypto), cancel != null ? (android.os.CancellationSignal) cancel.getCancellationSignalObject() : null, flags, wrapCallback(callback), handler);
    }

    private static FingerprintManager getFingerprintManagerOrNull(Context context) {
        Object systemService;
        Object systemService2;
        if (Build.VERSION.SDK_INT == 23) {
            systemService2 = context.getSystemService((Class<Object>) Insets$$ExternalSyntheticApiModelOutline0.m95m());
            return Insets$$ExternalSyntheticApiModelOutline0.m(systemService2);
        }
        if (Build.VERSION.SDK_INT <= 23 || !context.getPackageManager().hasSystemFeature("android.hardware.fingerprint")) {
            return null;
        }
        systemService = context.getSystemService((Class<Object>) Insets$$ExternalSyntheticApiModelOutline0.m95m());
        return Insets$$ExternalSyntheticApiModelOutline0.m(systemService);
    }

    private static FingerprintManager.CryptoObject wrapCryptoObject(CryptoObject cryptoObject) {
        if (cryptoObject == null) {
            return null;
        }
        if (cryptoObject.getCipher() != null) {
            Insets$$ExternalSyntheticApiModelOutline0.m103m$1();
            return Insets$$ExternalSyntheticApiModelOutline0.m(cryptoObject.getCipher());
        }
        if (cryptoObject.getSignature() != null) {
            Insets$$ExternalSyntheticApiModelOutline0.m103m$1();
            return Insets$$ExternalSyntheticApiModelOutline0.m(cryptoObject.getSignature());
        }
        if (cryptoObject.getMac() == null) {
            return null;
        }
        Insets$$ExternalSyntheticApiModelOutline0.m103m$1();
        return Insets$$ExternalSyntheticApiModelOutline0.m(cryptoObject.getMac());
    }

    static CryptoObject unwrapCryptoObject(FingerprintManager.CryptoObject cryptoObject) {
        Cipher cipher;
        Signature signature;
        Mac mac;
        Mac mac2;
        Signature signature2;
        Cipher cipher2;
        if (cryptoObject == null) {
            return null;
        }
        cipher = cryptoObject.getCipher();
        if (cipher != null) {
            cipher2 = cryptoObject.getCipher();
            return new CryptoObject(cipher2);
        }
        signature = cryptoObject.getSignature();
        if (signature != null) {
            signature2 = cryptoObject.getSignature();
            return new CryptoObject(signature2);
        }
        mac = cryptoObject.getMac();
        if (mac == null) {
            return null;
        }
        mac2 = cryptoObject.getMac();
        return new CryptoObject(mac2);
    }

    private static FingerprintManager.AuthenticationCallback wrapCallback(final AuthenticationCallback callback) {
        return new FingerprintManager.AuthenticationCallback() { // from class: androidx.core.hardware.fingerprint.FingerprintManagerCompat.1
            @Override // android.hardware.fingerprint.FingerprintManager.AuthenticationCallback
            public void onAuthenticationError(int errMsgId, CharSequence errString) {
                AuthenticationCallback.this.onAuthenticationError(errMsgId, errString);
            }

            @Override // android.hardware.fingerprint.FingerprintManager.AuthenticationCallback
            public void onAuthenticationHelp(int helpMsgId, CharSequence helpString) {
                AuthenticationCallback.this.onAuthenticationHelp(helpMsgId, helpString);
            }

            @Override // android.hardware.fingerprint.FingerprintManager.AuthenticationCallback
            public void onAuthenticationSucceeded(FingerprintManager.AuthenticationResult result) {
                FingerprintManager.CryptoObject cryptoObject;
                AuthenticationCallback authenticationCallback = AuthenticationCallback.this;
                cryptoObject = result.getCryptoObject();
                authenticationCallback.onAuthenticationSucceeded(new AuthenticationResult(FingerprintManagerCompat.unwrapCryptoObject(cryptoObject)));
            }

            @Override // android.hardware.fingerprint.FingerprintManager.AuthenticationCallback
            public void onAuthenticationFailed() {
                AuthenticationCallback.this.onAuthenticationFailed();
            }
        };
    }

    public static class CryptoObject {
        private final Cipher mCipher;
        private final Mac mMac;
        private final Signature mSignature;

        public CryptoObject(Signature signature) {
            this.mSignature = signature;
            this.mCipher = null;
            this.mMac = null;
        }

        public CryptoObject(Cipher cipher) {
            this.mCipher = cipher;
            this.mSignature = null;
            this.mMac = null;
        }

        public CryptoObject(Mac mac) {
            this.mMac = mac;
            this.mCipher = null;
            this.mSignature = null;
        }

        public Signature getSignature() {
            return this.mSignature;
        }

        public Cipher getCipher() {
            return this.mCipher;
        }

        public Mac getMac() {
            return this.mMac;
        }
    }

    public static final class AuthenticationResult {
        private final CryptoObject mCryptoObject;

        public AuthenticationResult(CryptoObject crypto) {
            this.mCryptoObject = crypto;
        }

        public CryptoObject getCryptoObject() {
            return this.mCryptoObject;
        }
    }
}

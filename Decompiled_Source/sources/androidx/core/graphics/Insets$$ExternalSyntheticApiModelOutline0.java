package androidx.core.graphics;

import android.database.CursorWindow;
import android.graphics.BlendMode;
import android.graphics.BlendModeColorFilter;
import android.graphics.drawable.AdaptiveIconDrawable;
import android.graphics.drawable.Drawable;
import android.hardware.fingerprint.FingerprintManager;
import android.location.GnssStatus;
import android.os.LocaleList;
import java.security.Signature;
import javax.crypto.Cipher;
import javax.crypto.Mac;

/* compiled from: D8$$SyntheticClass */
/* loaded from: classes.dex */
public final /* synthetic */ class Insets$$ExternalSyntheticApiModelOutline0 {
    public static /* synthetic */ CursorWindow m(String str, long j) {
        return new CursorWindow(str, j);
    }

    public static /* synthetic */ BlendModeColorFilter m(int i, BlendMode blendMode) {
        return new BlendModeColorFilter(i, blendMode);
    }

    public static /* synthetic */ AdaptiveIconDrawable m(Drawable drawable, Drawable drawable2) {
        return new AdaptiveIconDrawable(drawable, drawable2);
    }

    public static /* synthetic */ FingerprintManager.CryptoObject m(Signature signature) {
        return new FingerprintManager.CryptoObject(signature);
    }

    public static /* synthetic */ FingerprintManager.CryptoObject m(Cipher cipher) {
        return new FingerprintManager.CryptoObject(cipher);
    }

    public static /* synthetic */ FingerprintManager.CryptoObject m(Mac mac) {
        return new FingerprintManager.CryptoObject(mac);
    }

    public static /* bridge */ /* synthetic */ FingerprintManager m(Object obj) {
        return (FingerprintManager) obj;
    }

    /* renamed from: m, reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ GnssStatus m91m(Object obj) {
        return (GnssStatus) obj;
    }

    /* renamed from: m, reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ LocaleList m94m(Object obj) {
        return (LocaleList) obj;
    }

    /* renamed from: m, reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ Class m95m() {
        return FingerprintManager.class;
    }

    /* renamed from: m, reason: collision with other method in class */
    public static /* synthetic */ void m99m() {
    }

    /* renamed from: m$1, reason: collision with other method in class */
    public static /* synthetic */ void m103m$1() {
    }
}

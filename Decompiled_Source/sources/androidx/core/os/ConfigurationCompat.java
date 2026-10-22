package androidx.core.os;

import android.content.res.Configuration;
import android.os.Build;
import android.os.LocaleList;

/* loaded from: classes.dex */
public final class ConfigurationCompat {
    private ConfigurationCompat() {
    }

    public static LocaleListCompat getLocales(Configuration configuration) {
        LocaleList locales;
        if (Build.VERSION.SDK_INT < 24) {
            return LocaleListCompat.create(configuration.locale);
        }
        locales = configuration.getLocales();
        return LocaleListCompat.wrap(locales);
    }
}

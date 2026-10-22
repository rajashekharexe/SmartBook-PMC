package androidx.core.telephony.mbms;

import android.content.Context;
import android.os.Build;
import android.os.LocaleList;
import android.telephony.mbms.ServiceInfo;
import java.util.Iterator;
import java.util.Locale;
import java.util.Set;

/* loaded from: classes.dex */
public final class MbmsHelper {
    private MbmsHelper() {
    }

    public static CharSequence getBestNameForService(Context context, ServiceInfo serviceInfo) {
        LocaleList locales;
        Set namedContentLocales;
        Set namedContentLocales2;
        Locale firstMatch;
        CharSequence nameForLocale;
        if (Build.VERSION.SDK_INT < 28) {
            return null;
        }
        locales = context.getResources().getConfiguration().getLocales();
        namedContentLocales = serviceInfo.getNamedContentLocales();
        int size = namedContentLocales.size();
        if (size == 0) {
            return null;
        }
        String[] strArr = new String[size];
        namedContentLocales2 = serviceInfo.getNamedContentLocales();
        Iterator it = namedContentLocales2.iterator();
        int i = 0;
        while (it.hasNext()) {
            strArr[i] = ((Locale) it.next()).toLanguageTag();
            i++;
        }
        firstMatch = locales.getFirstMatch(strArr);
        if (firstMatch == null) {
            return null;
        }
        nameForLocale = serviceInfo.getNameForLocale(firstMatch);
        return nameForLocale;
    }
}

package androidx.core.os;

import android.os.LocaleList;
import java.util.Locale;

/* loaded from: classes.dex */
final class LocaleListPlatformWrapper implements LocaleListInterface {
    private final LocaleList mLocaleList;

    LocaleListPlatformWrapper(LocaleList localeList) {
        this.mLocaleList = localeList;
    }

    @Override // androidx.core.os.LocaleListInterface
    public Object getLocaleList() {
        return this.mLocaleList;
    }

    @Override // androidx.core.os.LocaleListInterface
    public Locale get(int index) {
        Locale locale;
        locale = this.mLocaleList.get(index);
        return locale;
    }

    @Override // androidx.core.os.LocaleListInterface
    public boolean isEmpty() {
        boolean isEmpty;
        isEmpty = this.mLocaleList.isEmpty();
        return isEmpty;
    }

    @Override // androidx.core.os.LocaleListInterface
    public int size() {
        int size;
        size = this.mLocaleList.size();
        return size;
    }

    @Override // androidx.core.os.LocaleListInterface
    public int indexOf(Locale locale) {
        int indexOf;
        indexOf = this.mLocaleList.indexOf(locale);
        return indexOf;
    }

    public boolean equals(Object other) {
        boolean equals;
        equals = this.mLocaleList.equals(((LocaleListInterface) other).getLocaleList());
        return equals;
    }

    public int hashCode() {
        int hashCode;
        hashCode = this.mLocaleList.hashCode();
        return hashCode;
    }

    public String toString() {
        String localeList;
        localeList = this.mLocaleList.toString();
        return localeList;
    }

    @Override // androidx.core.os.LocaleListInterface
    public String toLanguageTags() {
        String languageTags;
        languageTags = this.mLocaleList.toLanguageTags();
        return languageTags;
    }

    @Override // androidx.core.os.LocaleListInterface
    public Locale getFirstMatch(String[] supportedLocales) {
        Locale firstMatch;
        firstMatch = this.mLocaleList.getFirstMatch(supportedLocales);
        return firstMatch;
    }
}

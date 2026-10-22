package com.conceptglobal.pmc.utils;

import android.text.Html;
import android.text.Spanned;
import android.util.Log;
import java.util.Locale;

/* loaded from: classes.dex */
public final class Search {
    private Search() {
    }

    public static Spanned getString(String str, String str2) {
        if (str != null) {
            try {
                if (str.length() > 0) {
                    String lowerCase = str2.toLowerCase(Locale.getDefault());
                    String lowerCase2 = str.toLowerCase(Locale.getDefault());
                    if (lowerCase.contains(lowerCase2)) {
                        int indexOf = lowerCase.indexOf(lowerCase2);
                        String substring = str2.substring(indexOf, str.length() + indexOf);
                        str2 = str2.replace(substring, "<b><font color='red'>" + substring + "</font></b>");
                    } else {
                        str2 = str2.replace(str, str);
                    }
                }
            } catch (Exception e) {
                Log.e("Searh", e.getMessage());
                return Html.fromHtml(str2);
            }
        }
        return Html.fromHtml(str2);
    }
}

package org.apache.http.impl.cookie;

import java.util.Collection;
import org.apache.http.cookie.CookieSpec;
import org.apache.http.cookie.CookieSpecFactory;
import org.apache.http.cookie.CookieSpecProvider;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.HttpContext;

/* loaded from: classes2.dex */
public class NetscapeDraftSpecFactoryHC4 implements CookieSpecFactory, CookieSpecProvider {
    private final String[] datepatterns;

    public NetscapeDraftSpecFactoryHC4(String[] strArr) {
        this.datepatterns = strArr;
    }

    public NetscapeDraftSpecFactoryHC4() {
        this(null);
    }

    @Override // org.apache.http.cookie.CookieSpecFactory
    public CookieSpec newInstance(HttpParams httpParams) {
        if (httpParams != null) {
            Collection collection = (Collection) httpParams.getParameter("http.protocol.cookie-datepatterns");
            return new NetscapeDraftSpecHC4(collection != null ? (String[]) collection.toArray(new String[collection.size()]) : null);
        }
        return new NetscapeDraftSpecHC4();
    }

    @Override // org.apache.http.cookie.CookieSpecProvider
    public CookieSpec create(HttpContext httpContext) {
        return new NetscapeDraftSpecHC4(this.datepatterns);
    }
}

package org.apache.http.impl.cookie;

import org.apache.http.cookie.Cookie;
import org.apache.http.cookie.CookieAttributeHandler;
import org.apache.http.cookie.CookieOrigin;
import org.apache.http.cookie.CookieRestrictionViolationException;
import org.apache.http.cookie.MalformedCookieException;
import org.apache.http.cookie.SetCookie;
import org.apache.http.util.Args;
import org.apache.http.util.TextUtils;

/* loaded from: classes2.dex */
public class BasicPathHandlerHC4 implements CookieAttributeHandler {
    @Override // org.apache.http.cookie.CookieAttributeHandler
    public void parse(SetCookie setCookie, String str) throws MalformedCookieException {
        Args.notNull(setCookie, "Cookie");
        if (TextUtils.isBlank(str)) {
            str = "/";
        }
        setCookie.setPath(str);
    }

    @Override // org.apache.http.cookie.CookieAttributeHandler
    public void validate(Cookie cookie, CookieOrigin cookieOrigin) throws MalformedCookieException {
        if (match(cookie, cookieOrigin)) {
            return;
        }
        throw new CookieRestrictionViolationException("Illegal path attribute \"" + cookie.getPath() + "\". Path of origin: \"" + cookieOrigin.getPath() + "\"");
    }

    @Override // org.apache.http.cookie.CookieAttributeHandler
    public boolean match(Cookie cookie, CookieOrigin cookieOrigin) {
        Args.notNull(cookie, "Cookie");
        Args.notNull(cookieOrigin, "Cookie origin");
        String path = cookieOrigin.getPath();
        String path2 = cookie.getPath();
        if (path2 == null) {
            path2 = "/";
        }
        if (path2.length() > 1 && path2.endsWith("/")) {
            path2 = path2.substring(0, path2.length() - 1);
        }
        boolean startsWith = path.startsWith(path2);
        if (!startsWith || path.length() == path2.length() || path2.endsWith("/")) {
            return startsWith;
        }
        return path.charAt(path2.length()) == '/';
    }
}

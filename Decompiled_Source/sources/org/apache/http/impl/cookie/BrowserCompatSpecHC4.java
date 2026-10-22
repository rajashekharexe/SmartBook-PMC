package org.apache.http.impl.cookie;

import java.util.ArrayList;
import java.util.List;
import org.apache.http.FormattedHeader;
import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.client.config.CookieSpecs;
import org.apache.http.cookie.Cookie;
import org.apache.http.cookie.CookieOrigin;
import org.apache.http.cookie.MalformedCookieException;
import org.apache.http.impl.cookie.BrowserCompatSpecFactoryHC4;
import org.apache.http.message.BasicHeaderElement;
import org.apache.http.message.BasicHeaderValueFormatterHC4;
import org.apache.http.message.BufferedHeader;
import org.apache.http.message.ParserCursor;
import org.apache.http.util.Args;
import org.apache.http.util.CharArrayBuffer;

/* loaded from: classes2.dex */
public class BrowserCompatSpecHC4 extends CookieSpecBaseHC4 {
    private static final String[] DEFAULT_DATE_PATTERNS = {org.apache.http.client.utils.DateUtils.PATTERN_RFC1123, org.apache.http.client.utils.DateUtils.PATTERN_RFC1036, org.apache.http.client.utils.DateUtils.PATTERN_ASCTIME, "EEE, dd-MMM-yyyy HH:mm:ss z", "EEE, dd-MMM-yyyy HH-mm-ss z", "EEE, dd MMM yy HH:mm:ss z", "EEE dd-MMM-yyyy HH:mm:ss z", "EEE dd MMM yyyy HH:mm:ss z", "EEE dd-MMM-yyyy HH-mm-ss z", "EEE dd-MMM-yy HH:mm:ss z", "EEE dd MMM yy HH:mm:ss z", "EEE,dd-MMM-yy HH:mm:ss z", "EEE,dd-MMM-yyyy HH:mm:ss z", "EEE, dd-MM-yyyy HH:mm:ss z"};
    private final String[] datepatterns;

    @Override // org.apache.http.cookie.CookieSpec
    public int getVersion() {
        return 0;
    }

    @Override // org.apache.http.cookie.CookieSpec
    public Header getVersionHeader() {
        return null;
    }

    public BrowserCompatSpecHC4(String[] strArr, BrowserCompatSpecFactoryHC4.SecurityLevel securityLevel) {
        if (strArr != null) {
            this.datepatterns = (String[]) strArr.clone();
        } else {
            this.datepatterns = DEFAULT_DATE_PATTERNS;
        }
        int i = AnonymousClass2.$SwitchMap$org$apache$http$impl$cookie$BrowserCompatSpecFactoryHC4$SecurityLevel[securityLevel.ordinal()];
        if (i == 1) {
            registerAttribHandler("path", new BasicPathHandlerHC4());
        } else if (i == 2) {
            registerAttribHandler("path", new BasicPathHandlerHC4() { // from class: org.apache.http.impl.cookie.BrowserCompatSpecHC4.1
                @Override // org.apache.http.impl.cookie.BasicPathHandlerHC4, org.apache.http.cookie.CookieAttributeHandler
                public void validate(Cookie cookie, CookieOrigin cookieOrigin) throws MalformedCookieException {
                }
            });
        } else {
            throw new RuntimeException("Unknown security level");
        }
        registerAttribHandler("domain", new BasicDomainHandlerHC4());
        registerAttribHandler("max-age", new BasicMaxAgeHandlerHC4());
        registerAttribHandler("secure", new BasicSecureHandlerHC4());
        registerAttribHandler("comment", new BasicCommentHandlerHC4());
        registerAttribHandler("expires", new BasicExpiresHandlerHC4(this.datepatterns));
        registerAttribHandler("version", new BrowserCompatVersionAttributeHandler());
    }

    /* renamed from: org.apache.http.impl.cookie.BrowserCompatSpecHC4$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$http$impl$cookie$BrowserCompatSpecFactoryHC4$SecurityLevel;

        static {
            int[] iArr = new int[BrowserCompatSpecFactoryHC4.SecurityLevel.values().length];
            $SwitchMap$org$apache$http$impl$cookie$BrowserCompatSpecFactoryHC4$SecurityLevel = iArr;
            try {
                iArr[BrowserCompatSpecFactoryHC4.SecurityLevel.SECURITYLEVEL_DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$http$impl$cookie$BrowserCompatSpecFactoryHC4$SecurityLevel[BrowserCompatSpecFactoryHC4.SecurityLevel.SECURITYLEVEL_IE_MEDIUM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public BrowserCompatSpecHC4(String[] strArr) {
        this(strArr, BrowserCompatSpecFactoryHC4.SecurityLevel.SECURITYLEVEL_DEFAULT);
    }

    public BrowserCompatSpecHC4() {
        this(null, BrowserCompatSpecFactoryHC4.SecurityLevel.SECURITYLEVEL_DEFAULT);
    }

    @Override // org.apache.http.cookie.CookieSpec
    public List<Cookie> parse(Header header, CookieOrigin cookieOrigin) throws MalformedCookieException {
        CharArrayBuffer charArrayBuffer;
        ParserCursor parserCursor;
        Args.notNull(header, "Header");
        Args.notNull(cookieOrigin, "Cookie origin");
        if (!header.getName().equalsIgnoreCase("Set-Cookie")) {
            throw new MalformedCookieException("Unrecognized cookie header '" + header.toString() + "'");
        }
        HeaderElement[] elements = header.getElements();
        boolean z = false;
        boolean z2 = false;
        for (HeaderElement headerElement : elements) {
            if (headerElement.getParameterByName("version") != null) {
                z2 = true;
            }
            if (headerElement.getParameterByName("expires") != null) {
                z = true;
            }
        }
        if (z || !z2) {
            NetscapeDraftHeaderParserHC4 netscapeDraftHeaderParserHC4 = NetscapeDraftHeaderParserHC4.DEFAULT;
            if (header instanceof FormattedHeader) {
                FormattedHeader formattedHeader = (FormattedHeader) header;
                charArrayBuffer = formattedHeader.getBuffer();
                parserCursor = new ParserCursor(formattedHeader.getValuePos(), charArrayBuffer.length());
            } else {
                String value = header.getValue();
                if (value == null) {
                    throw new MalformedCookieException("Header value is null");
                }
                charArrayBuffer = new CharArrayBuffer(value.length());
                charArrayBuffer.append(value);
                parserCursor = new ParserCursor(0, charArrayBuffer.length());
            }
            elements = new HeaderElement[]{netscapeDraftHeaderParserHC4.parseHeader(charArrayBuffer, parserCursor)};
        }
        return parse(elements, cookieOrigin);
    }

    private static boolean isQuoteEnclosed(String str) {
        return str != null && str.startsWith("\"") && str.endsWith("\"");
    }

    @Override // org.apache.http.cookie.CookieSpec
    public List<Header> formatCookies(List<Cookie> list) {
        Args.notEmpty(list, "List of cookies");
        CharArrayBuffer charArrayBuffer = new CharArrayBuffer(list.size() * 20);
        charArrayBuffer.append("Cookie");
        charArrayBuffer.append(": ");
        for (int i = 0; i < list.size(); i++) {
            Cookie cookie = list.get(i);
            if (i > 0) {
                charArrayBuffer.append("; ");
            }
            String name = cookie.getName();
            String value = cookie.getValue();
            if (cookie.getVersion() > 0 && !isQuoteEnclosed(value)) {
                BasicHeaderValueFormatterHC4.INSTANCE.formatHeaderElement(charArrayBuffer, (HeaderElement) new BasicHeaderElement(name, value), false);
            } else {
                charArrayBuffer.append(name);
                charArrayBuffer.append("=");
                if (value != null) {
                    charArrayBuffer.append(value);
                }
            }
        }
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(new BufferedHeader(charArrayBuffer));
        return arrayList;
    }

    public String toString() {
        return CookieSpecs.BROWSER_COMPATIBILITY;
    }
}

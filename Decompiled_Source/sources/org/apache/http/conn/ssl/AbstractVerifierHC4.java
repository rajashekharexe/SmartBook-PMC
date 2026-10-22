package org.apache.http.conn.ssl;

import android.util.Log;
import com.conceptglobal.pmc.utils.DataAttributes;
import java.io.IOException;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import kotlin.text.Typography;
import org.apache.http.NameValuePair;
import org.apache.http.conn.util.InetAddressUtilsHC4;
import org.apache.http.util.TextUtils;

/* loaded from: classes2.dex */
public abstract class AbstractVerifierHC4 implements X509HostnameVerifier {
    private static final String[] BAD_COUNTRY_2LDS;
    private static final String TAG = "HttpClient";

    static {
        String[] strArr = {"ac", DataAttributes.AADHAR_CO_ATTR, "com", "ed", "edu", "go", "gouv", "gov", "info", "lg", "ne", "net", "or", "org"};
        BAD_COUNTRY_2LDS = strArr;
        Arrays.sort(strArr);
    }

    @Override // org.apache.http.conn.ssl.X509HostnameVerifier
    public final void verify(String str, SSLSocket sSLSocket) throws IOException {
        if (str == null) {
            throw new NullPointerException("host to verify is null");
        }
        SSLSession session = sSLSocket.getSession();
        if (session == null) {
            sSLSocket.getInputStream().available();
            session = sSLSocket.getSession();
            if (session == null) {
                sSLSocket.startHandshake();
                session = sSLSocket.getSession();
            }
        }
        verify(str, (X509Certificate) session.getPeerCertificates()[0]);
    }

    @Override // org.apache.http.conn.ssl.X509HostnameVerifier, javax.net.ssl.HostnameVerifier
    public final boolean verify(String str, SSLSession sSLSession) {
        try {
            verify(str, (X509Certificate) sSLSession.getPeerCertificates()[0]);
            return true;
        } catch (SSLException unused) {
            return false;
        }
    }

    @Override // org.apache.http.conn.ssl.X509HostnameVerifier
    public final void verify(String str, X509Certificate x509Certificate) throws SSLException {
        verify(str, getCNs(x509Certificate), getSubjectAlts(x509Certificate, str));
    }

    public final void verify(String str, String[] strArr, String[] strArr2, boolean z) throws SSLException {
        boolean endsWith;
        String str2;
        LinkedList linkedList = new LinkedList();
        if (strArr != null && strArr.length > 0 && (str2 = strArr[0]) != null) {
            linkedList.add(str2);
        }
        if (strArr2 != null) {
            for (String str3 : strArr2) {
                if (str3 != null) {
                    linkedList.add(str3);
                }
            }
        }
        if (linkedList.isEmpty()) {
            throw new SSLException("Certificate for <" + str + "> doesn't contain CN or DNS subjectAlt");
        }
        StringBuilder sb = new StringBuilder();
        String normaliseIPv6Address = normaliseIPv6Address(str.trim().toLowerCase(Locale.ENGLISH));
        Iterator it = linkedList.iterator();
        boolean z2 = false;
        while (it.hasNext()) {
            String lowerCase = ((String) it.next()).toLowerCase(Locale.ENGLISH);
            sb.append(" <");
            sb.append(lowerCase);
            sb.append(Typography.greater);
            if (it.hasNext()) {
                sb.append(" OR");
            }
            String[] split = lowerCase.split("\\.");
            if (split.length >= 3 && split[0].endsWith("*") && validCountryWildcard(lowerCase) && !isIPAddress(str)) {
                String str4 = split[0];
                if (str4.length() > 1) {
                    String substring = str4.substring(0, str4.length() - 1);
                    endsWith = normaliseIPv6Address.startsWith(substring) && normaliseIPv6Address.substring(substring.length()).endsWith(lowerCase.substring(str4.length()));
                } else {
                    endsWith = normaliseIPv6Address.endsWith(lowerCase.substring(1));
                }
                if (endsWith && z) {
                    endsWith = countDots(normaliseIPv6Address) == countDots(lowerCase);
                }
                z2 = endsWith;
            } else {
                z2 = normaliseIPv6Address.equals(normaliseIPv6Address(lowerCase));
            }
            if (z2) {
                break;
            }
        }
        if (z2) {
            return;
        }
        throw new SSLException("hostname in certificate didn't match: <" + str + "> !=" + ((Object) sb));
    }

    @Deprecated
    public static boolean acceptableCountryWildcard(String str) {
        String[] split = str.split("\\.");
        return (split.length == 3 && split[2].length() == 2 && Arrays.binarySearch(BAD_COUNTRY_2LDS, split[1]) >= 0) ? false : true;
    }

    boolean validCountryWildcard(String str) {
        String[] split = str.split("\\.");
        return (split.length == 3 && split[2].length() == 2 && Arrays.binarySearch(BAD_COUNTRY_2LDS, split[1]) >= 0) ? false : true;
    }

    public static String[] getCNs(X509Certificate x509Certificate) {
        try {
            return extractCNs(x509Certificate.getSubjectX500Principal().toString());
        } catch (SSLException unused) {
            return null;
        }
    }

    static String[] extractCNs(String str) throws SSLException {
        if (str == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        List<NameValuePair> parse = DistinguishedNameParser.INSTANCE.parse(str);
        for (int i = 0; i < parse.size(); i++) {
            NameValuePair nameValuePair = parse.get(i);
            String name = nameValuePair.getName();
            String value = nameValuePair.getValue();
            if (TextUtils.isBlank(value)) {
                throw new SSLException(str + " is not a valid X500 distinguished name");
            }
            if (name.equalsIgnoreCase("cn")) {
                arrayList.add(value);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    private static String[] getSubjectAlts(X509Certificate x509Certificate, String str) {
        Collection<List<?>> collection;
        int i = isIPAddress(str) ? 7 : 2;
        LinkedList linkedList = new LinkedList();
        try {
            collection = x509Certificate.getSubjectAlternativeNames();
        } catch (CertificateParsingException unused) {
            collection = null;
        }
        if (collection != null) {
            for (List<?> list : collection) {
                if (((Integer) list.get(0)).intValue() == i) {
                    linkedList.add((String) list.get(1));
                }
            }
        }
        if (linkedList.isEmpty()) {
            return null;
        }
        String[] strArr = new String[linkedList.size()];
        linkedList.toArray(strArr);
        return strArr;
    }

    public static String[] getDNSSubjectAlts(X509Certificate x509Certificate) {
        return getSubjectAlts(x509Certificate, null);
    }

    public static int countDots(String str) {
        int i = 0;
        for (int i2 = 0; i2 < str.length(); i2++) {
            if (str.charAt(i2) == '.') {
                i++;
            }
        }
        return i;
    }

    private static boolean isIPAddress(String str) {
        return str != null && (InetAddressUtilsHC4.isIPv4Address(str) || InetAddressUtilsHC4.isIPv6Address(str));
    }

    private String normaliseIPv6Address(String str) {
        if (str != null && InetAddressUtilsHC4.isIPv6Address(str)) {
            try {
                return InetAddress.getByName(str).getHostAddress();
            } catch (UnknownHostException e) {
                Log.e(TAG, "Unexpected error converting " + str, e);
            }
        }
        return str;
    }
}

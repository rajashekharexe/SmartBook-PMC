package org.apache.http.util;

import java.util.ArrayList;
import java.util.Map;

/* loaded from: classes2.dex */
public class VersionInfoHC4 {
    public static final String PROPERTY_MODULE = "info.module";
    public static final String PROPERTY_RELEASE = "info.release";
    public static final String PROPERTY_TIMESTAMP = "info.timestamp";
    public static final String UNAVAILABLE = "UNAVAILABLE";
    public static final String VERSION_PROPERTY_FILE = "version.properties";
    private final String infoClassloader;
    private final String infoModule;
    private final String infoPackage;
    private final String infoRelease;
    private final String infoTimestamp;

    protected VersionInfoHC4(String str, String str2, String str3, String str4, String str5) {
        Args.notNull(str, "Package identifier");
        this.infoPackage = str;
        this.infoModule = str2 == null ? UNAVAILABLE : str2;
        this.infoRelease = str3 == null ? UNAVAILABLE : str3;
        this.infoTimestamp = str4 == null ? UNAVAILABLE : str4;
        this.infoClassloader = str5 == null ? UNAVAILABLE : str5;
    }

    public final String getPackage() {
        return this.infoPackage;
    }

    public final String getModule() {
        return this.infoModule;
    }

    public final String getRelease() {
        return this.infoRelease;
    }

    public final String getTimestamp() {
        return this.infoTimestamp;
    }

    public final String getClassloader() {
        return this.infoClassloader;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(this.infoPackage.length() + 20 + this.infoModule.length() + this.infoRelease.length() + this.infoTimestamp.length() + this.infoClassloader.length());
        sb.append("VersionInfo(");
        sb.append(this.infoPackage);
        sb.append(':');
        sb.append(this.infoModule);
        if (!UNAVAILABLE.equals(this.infoRelease)) {
            sb.append(':');
            sb.append(this.infoRelease);
        }
        if (!UNAVAILABLE.equals(this.infoTimestamp)) {
            sb.append(':');
            sb.append(this.infoTimestamp);
        }
        sb.append(')');
        if (!UNAVAILABLE.equals(this.infoClassloader)) {
            sb.append('@');
            sb.append(this.infoClassloader);
        }
        return sb.toString();
    }

    public static VersionInfo[] loadVersionInfo(String[] strArr, ClassLoader classLoader) {
        Args.notNull(strArr, "Package identifier array");
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            VersionInfoHC4 loadVersionInfo = loadVersionInfo(str, classLoader);
            if (loadVersionInfo != null) {
                arrayList.add(loadVersionInfo);
            }
        }
        return (VersionInfo[]) arrayList.toArray(new VersionInfo[arrayList.size()]);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:13:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.apache.http.util.VersionInfoHC4 loadVersionInfo(java.lang.String r5, java.lang.ClassLoader r6) {
        /*
            java.lang.String r0 = "/version.properties"
            java.lang.String r1 = "Package identifier"
            org.apache.http.util.Args.notNull(r5, r1)
            if (r6 == 0) goto La
            goto L12
        La:
            java.lang.Thread r6 = java.lang.Thread.currentThread()
            java.lang.ClassLoader r6 = r6.getContextClassLoader()
        L12:
            r1 = 0
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.io.IOException -> L45
            r2.<init>()     // Catch: java.io.IOException -> L45
            r3 = 46
            r4 = 47
            java.lang.String r3 = r5.replace(r3, r4)     // Catch: java.io.IOException -> L45
            r2.append(r3)     // Catch: java.io.IOException -> L45
            r2.append(r0)     // Catch: java.io.IOException -> L45
            java.lang.String r0 = r2.toString()     // Catch: java.io.IOException -> L45
            java.io.InputStream r0 = r6.getResourceAsStream(r0)     // Catch: java.io.IOException -> L45
            if (r0 == 0) goto L43
            java.util.Properties r2 = new java.util.Properties     // Catch: java.lang.Throwable -> L3e
            r2.<init>()     // Catch: java.lang.Throwable -> L3e
            r2.load(r0)     // Catch: java.lang.Throwable -> L3e
            r0.close()     // Catch: java.io.IOException -> L3c
            goto L47
        L3c:
            goto L47
        L3e:
            r2 = move-exception
            r0.close()     // Catch: java.io.IOException -> L45
            throw r2     // Catch: java.io.IOException -> L45
        L43:
            r2 = r1
            goto L47
        L45:
            goto L43
        L47:
            if (r2 == 0) goto L4d
            org.apache.http.util.VersionInfoHC4 r1 = fromMap(r5, r2, r6)
        L4d:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.http.util.VersionInfoHC4.loadVersionInfo(java.lang.String, java.lang.ClassLoader):org.apache.http.util.VersionInfoHC4");
    }

    protected static VersionInfoHC4 fromMap(String str, Map<?, ?> map, ClassLoader classLoader) {
        String str2;
        String str3;
        String str4;
        Args.notNull(str, "Package identifier");
        if (map != null) {
            String str5 = (String) map.get(PROPERTY_MODULE);
            if (str5 != null && str5.length() < 1) {
                str5 = null;
            }
            String str6 = (String) map.get(PROPERTY_RELEASE);
            if (str6 != null && (str6.length() < 1 || str6.equals("${pom.version}"))) {
                str6 = null;
            }
            String str7 = (String) map.get(PROPERTY_TIMESTAMP);
            str4 = (str7 == null || (str7.length() >= 1 && !str7.equals("${mvn.timestamp}"))) ? str7 : null;
            str2 = str5;
            str3 = str6;
        } else {
            str2 = null;
            str3 = null;
            str4 = null;
        }
        return new VersionInfoHC4(str, str2, str3, str4, classLoader != null ? classLoader.toString() : null);
    }

    public static String getUserAgent(String str, String str2, Class<?> cls) {
        VersionInfoHC4 loadVersionInfo = loadVersionInfo(str2, cls.getClassLoader());
        return str + "/" + (loadVersionInfo != null ? loadVersionInfo.getRelease() : UNAVAILABLE) + " (Java 1.5 minimum; Java/" + System.getProperty("java.version") + ")";
    }
}

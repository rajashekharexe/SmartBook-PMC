package com.evernote.android.job.util.support;

import com.evernote.android.job.util.JobCat;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public final class PersistableBundleCompat {
    private static final JobCat CAT = new JobCat("PersistableBundleCompat");
    private static final String UTF_8 = "UTF-8";
    private final Map<String, Object> mValues;

    public PersistableBundleCompat() {
        this(new HashMap());
    }

    public PersistableBundleCompat(PersistableBundleCompat persistableBundleCompat) {
        this(new HashMap(persistableBundleCompat.mValues));
    }

    private PersistableBundleCompat(Map<String, Object> map) {
        this.mValues = map;
    }

    public void putBoolean(String str, boolean z) {
        this.mValues.put(str, Boolean.valueOf(z));
    }

    public boolean getBoolean(String str, boolean z) {
        Object obj = this.mValues.get(str);
        return obj instanceof Boolean ? ((Boolean) obj).booleanValue() : z;
    }

    public void putInt(String str, int i) {
        this.mValues.put(str, Integer.valueOf(i));
    }

    public int getInt(String str, int i) {
        Object obj = this.mValues.get(str);
        return obj instanceof Integer ? ((Integer) obj).intValue() : i;
    }

    public void putIntArray(String str, int[] iArr) {
        this.mValues.put(str, iArr);
    }

    public int[] getIntArray(String str) {
        Object obj = this.mValues.get(str);
        if (obj instanceof int[]) {
            return (int[]) obj;
        }
        return null;
    }

    public void putLong(String str, long j) {
        this.mValues.put(str, Long.valueOf(j));
    }

    public long getLong(String str, long j) {
        Object obj = this.mValues.get(str);
        return obj instanceof Long ? ((Long) obj).longValue() : j;
    }

    public void putLongArray(String str, long[] jArr) {
        this.mValues.put(str, jArr);
    }

    public long[] getLongArray(String str) {
        Object obj = this.mValues.get(str);
        if (obj instanceof long[]) {
            return (long[]) obj;
        }
        return null;
    }

    public void putDouble(String str, double d) {
        this.mValues.put(str, Double.valueOf(d));
    }

    public double getDouble(String str, double d) {
        Object obj = this.mValues.get(str);
        return obj instanceof Double ? ((Double) obj).doubleValue() : d;
    }

    public void putDoubleArray(String str, double[] dArr) {
        this.mValues.put(str, dArr);
    }

    public double[] getDoubleArray(String str) {
        Object obj = this.mValues.get(str);
        if (obj instanceof double[]) {
            return (double[]) obj;
        }
        return null;
    }

    public void putString(String str, String str2) {
        this.mValues.put(str, str2);
    }

    public String getString(String str, String str2) {
        Object obj = this.mValues.get(str);
        return obj instanceof String ? (String) obj : str2;
    }

    public void putStringArray(String str, String[] strArr) {
        this.mValues.put(str, strArr);
    }

    public String[] getStringArray(String str) {
        Object obj = this.mValues.get(str);
        if (obj instanceof String[]) {
            return (String[]) obj;
        }
        return null;
    }

    public void putPersistableBundleCompat(String str, PersistableBundleCompat persistableBundleCompat) {
        this.mValues.put(str, persistableBundleCompat == null ? null : persistableBundleCompat.mValues);
    }

    public PersistableBundleCompat getPersistableBundleCompat(String str) {
        Object obj = this.mValues.get(str);
        if (obj instanceof Map) {
            return new PersistableBundleCompat((Map<String, Object>) obj);
        }
        return null;
    }

    public void clear() {
        this.mValues.clear();
    }

    public boolean containsKey(String str) {
        return this.mValues.containsKey(str);
    }

    public Object get(String str) {
        return this.mValues.get(str);
    }

    public boolean isEmpty() {
        return this.mValues.isEmpty();
    }

    public Set<String> keySet() {
        return this.mValues.keySet();
    }

    public void putAll(PersistableBundleCompat persistableBundleCompat) {
        this.mValues.putAll(persistableBundleCompat.mValues);
    }

    public void remove(String str) {
        this.mValues.remove(str);
    }

    public int size() {
        return this.mValues.size();
    }

    public String saveToXml() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            try {
                XmlUtils.writeMapXml(this.mValues, byteArrayOutputStream);
                return byteArrayOutputStream.toString("UTF-8");
            } finally {
                try {
                    byteArrayOutputStream.close();
                } catch (IOException unused) {
                }
            }
        } catch (IOException e) {
            e = e;
            CAT.e(e);
            try {
                byteArrayOutputStream.close();
            } catch (IOException unused2) {
            }
            return "";
        } catch (Error e2) {
            CAT.e(e2);
            try {
                byteArrayOutputStream.close();
            } catch (IOException unused3) {
            }
            return "";
        } catch (XmlPullParserException e3) {
            e = e3;
            CAT.e(e);
            byteArrayOutputStream.close();
            return "";
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0046 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.evernote.android.job.util.support.PersistableBundleCompat fromXml(java.lang.String r3) {
        /*
            r0 = 0
            java.io.ByteArrayInputStream r1 = new java.io.ByteArrayInputStream     // Catch: java.lang.Throwable -> L24 java.lang.VerifyError -> L26 java.io.IOException -> L37 org.xmlpull.v1.XmlPullParserException -> L39
            java.lang.String r2 = "UTF-8"
            byte[] r3 = r3.getBytes(r2)     // Catch: java.lang.Throwable -> L24 java.lang.VerifyError -> L26 java.io.IOException -> L37 org.xmlpull.v1.XmlPullParserException -> L39
            r1.<init>(r3)     // Catch: java.lang.Throwable -> L24 java.lang.VerifyError -> L26 java.io.IOException -> L37 org.xmlpull.v1.XmlPullParserException -> L39
            java.util.HashMap r3 = com.evernote.android.job.util.support.XmlUtils.readMapXml(r1)     // Catch: java.lang.Throwable -> L19 java.lang.VerifyError -> L1c java.io.IOException -> L1f org.xmlpull.v1.XmlPullParserException -> L21
            com.evernote.android.job.util.support.PersistableBundleCompat r0 = new com.evernote.android.job.util.support.PersistableBundleCompat     // Catch: java.lang.Throwable -> L19 java.lang.VerifyError -> L1c java.io.IOException -> L1f org.xmlpull.v1.XmlPullParserException -> L21
            r0.<init>(r3)     // Catch: java.lang.Throwable -> L19 java.lang.VerifyError -> L1c java.io.IOException -> L1f org.xmlpull.v1.XmlPullParserException -> L21
            r1.close()     // Catch: java.io.IOException -> L18
        L18:
            return r0
        L19:
            r3 = move-exception
            r0 = r1
            goto L4a
        L1c:
            r3 = move-exception
            r0 = r1
            goto L27
        L1f:
            r3 = move-exception
            goto L22
        L21:
            r3 = move-exception
        L22:
            r0 = r1
            goto L3a
        L24:
            r3 = move-exception
            goto L4a
        L26:
            r3 = move-exception
        L27:
            com.evernote.android.job.util.JobCat r1 = com.evernote.android.job.util.support.PersistableBundleCompat.CAT     // Catch: java.lang.Throwable -> L24
            r1.e(r3)     // Catch: java.lang.Throwable -> L24
            com.evernote.android.job.util.support.PersistableBundleCompat r3 = new com.evernote.android.job.util.support.PersistableBundleCompat     // Catch: java.lang.Throwable -> L24
            r3.<init>()     // Catch: java.lang.Throwable -> L24
            if (r0 == 0) goto L36
            r0.close()     // Catch: java.io.IOException -> L36
        L36:
            return r3
        L37:
            r3 = move-exception
            goto L3a
        L39:
            r3 = move-exception
        L3a:
            com.evernote.android.job.util.JobCat r1 = com.evernote.android.job.util.support.PersistableBundleCompat.CAT     // Catch: java.lang.Throwable -> L24
            r1.e(r3)     // Catch: java.lang.Throwable -> L24
            com.evernote.android.job.util.support.PersistableBundleCompat r3 = new com.evernote.android.job.util.support.PersistableBundleCompat     // Catch: java.lang.Throwable -> L24
            r3.<init>()     // Catch: java.lang.Throwable -> L24
            if (r0 == 0) goto L49
            r0.close()     // Catch: java.io.IOException -> L49
        L49:
            return r3
        L4a:
            if (r0 == 0) goto L4f
            r0.close()     // Catch: java.io.IOException -> L4f
        L4f:
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.evernote.android.job.util.support.PersistableBundleCompat.fromXml(java.lang.String):com.evernote.android.job.util.support.PersistableBundleCompat");
    }
}

package org.aspectj.runtime.reflect;

import java.lang.reflect.Modifier;
import kotlin.text.Typography;
import okhttp3.HttpUrl;
import org.apache.commons.io.FilenameUtils;

/* loaded from: classes2.dex */
class StringMaker {
    static StringMaker longStringMaker;
    static StringMaker middleStringMaker;
    static StringMaker shortStringMaker;
    int cacheOffset;
    boolean shortTypeNames = true;
    boolean includeArgs = true;
    boolean includeThrows = false;
    boolean includeModifiers = false;
    boolean shortPrimaryTypeNames = false;
    boolean includeJoinPointTypeName = true;
    boolean includeEnclosingPoint = true;
    boolean shortKindName = true;

    StringMaker() {
    }

    static {
        StringMaker stringMaker = new StringMaker();
        shortStringMaker = stringMaker;
        stringMaker.shortTypeNames = true;
        stringMaker.includeArgs = false;
        stringMaker.includeThrows = false;
        stringMaker.includeModifiers = false;
        stringMaker.shortPrimaryTypeNames = true;
        stringMaker.includeJoinPointTypeName = false;
        stringMaker.includeEnclosingPoint = false;
        stringMaker.cacheOffset = 0;
        StringMaker stringMaker2 = new StringMaker();
        middleStringMaker = stringMaker2;
        stringMaker2.shortTypeNames = true;
        stringMaker2.includeArgs = true;
        stringMaker2.includeThrows = false;
        stringMaker2.includeModifiers = false;
        stringMaker2.shortPrimaryTypeNames = false;
        shortStringMaker.cacheOffset = 1;
        StringMaker stringMaker3 = new StringMaker();
        longStringMaker = stringMaker3;
        stringMaker3.shortTypeNames = false;
        stringMaker3.includeArgs = true;
        stringMaker3.includeThrows = false;
        stringMaker3.includeModifiers = true;
        stringMaker3.shortPrimaryTypeNames = false;
        stringMaker3.shortKindName = false;
        stringMaker3.cacheOffset = 2;
    }

    String makeKindName(String str) {
        int lastIndexOf = str.lastIndexOf(45);
        return lastIndexOf == -1 ? str : str.substring(lastIndexOf + 1);
    }

    String makeModifiersString(int i) {
        if (!this.includeModifiers) {
            return "";
        }
        String modifier = Modifier.toString(i);
        return modifier.length() == 0 ? "" : new StringBuffer().append(modifier).append(" ").toString();
    }

    String stripPackageName(String str) {
        int lastIndexOf = str.lastIndexOf(46);
        return lastIndexOf == -1 ? str : str.substring(lastIndexOf + 1);
    }

    String makeTypeName(Class cls, String str, boolean z) {
        if (cls == null) {
            return "ANONYMOUS";
        }
        if (cls.isArray()) {
            Class<?> componentType = cls.getComponentType();
            return new StringBuffer().append(makeTypeName(componentType, componentType.getName(), z)).append(HttpUrl.PATH_SEGMENT_ENCODE_SET_URI).toString();
        }
        if (z) {
            return stripPackageName(str).replace(Typography.dollar, FilenameUtils.EXTENSION_SEPARATOR);
        }
        return str.replace(Typography.dollar, FilenameUtils.EXTENSION_SEPARATOR);
    }

    public String makeTypeName(Class cls) {
        return makeTypeName(cls, cls.getName(), this.shortTypeNames);
    }

    public String makePrimaryTypeName(Class cls, String str) {
        return makeTypeName(cls, str, this.shortPrimaryTypeNames);
    }

    public void addTypeNames(StringBuffer stringBuffer, Class[] clsArr) {
        for (int i = 0; i < clsArr.length; i++) {
            if (i > 0) {
                stringBuffer.append(", ");
            }
            stringBuffer.append(makeTypeName(clsArr[i]));
        }
    }

    public void addSignature(StringBuffer stringBuffer, Class[] clsArr) {
        if (clsArr == null) {
            return;
        }
        if (!this.includeArgs) {
            if (clsArr.length == 0) {
                stringBuffer.append("()");
                return;
            } else {
                stringBuffer.append("(..)");
                return;
            }
        }
        stringBuffer.append("(");
        addTypeNames(stringBuffer, clsArr);
        stringBuffer.append(")");
    }

    public void addThrows(StringBuffer stringBuffer, Class[] clsArr) {
        if (!this.includeThrows || clsArr == null || clsArr.length == 0) {
            return;
        }
        stringBuffer.append(" throws ");
        addTypeNames(stringBuffer, clsArr);
    }
}

package org.jsoup.parser;

import java.util.Arrays;
import java.util.Locale;
import org.jsoup.helper.Validate;

/* loaded from: classes2.dex */
public final class CharacterReader {
    static final char EOF = 65535;
    private static final int maxCacheLen = 12;
    private final char[] input;
    private final int length;
    private int pos = 0;
    private int mark = 0;
    private final String[] stringCache = new String[512];

    public CharacterReader(String str) {
        Validate.notNull(str);
        char[] charArray = str.toCharArray();
        this.input = charArray;
        this.length = charArray.length;
    }

    public int pos() {
        return this.pos;
    }

    public boolean isEmpty() {
        return this.pos >= this.length;
    }

    public char current() {
        int i = this.pos;
        if (i >= this.length) {
            return (char) 65535;
        }
        return this.input[i];
    }

    char consume() {
        int i = this.pos;
        char c = i >= this.length ? (char) 65535 : this.input[i];
        this.pos = i + 1;
        return c;
    }

    void unconsume() {
        this.pos--;
    }

    public void advance() {
        this.pos++;
    }

    void mark() {
        this.mark = this.pos;
    }

    void rewindToMark() {
        this.pos = this.mark;
    }

    String consumeAsString() {
        char[] cArr = this.input;
        int i = this.pos;
        this.pos = i + 1;
        return new String(cArr, i, 1);
    }

    int nextIndexOf(char c) {
        for (int i = this.pos; i < this.length; i++) {
            if (c == this.input[i]) {
                return i - this.pos;
            }
        }
        return -1;
    }

    int nextIndexOf(CharSequence charSequence) {
        char charAt = charSequence.charAt(0);
        int i = this.pos;
        while (i < this.length) {
            if (charAt != this.input[i]) {
                do {
                    i++;
                    if (i >= this.length) {
                        break;
                    }
                } while (charAt != this.input[i]);
            }
            int i2 = i + 1;
            int length = (charSequence.length() + i2) - 1;
            int i3 = this.length;
            if (i < i3 && length <= i3) {
                int i4 = i2;
                for (int i5 = 1; i4 < length && charSequence.charAt(i5) == this.input[i4]; i5++) {
                    i4++;
                }
                if (i4 == length) {
                    return i - this.pos;
                }
            }
            i = i2;
        }
        return -1;
    }

    public String consumeTo(char c) {
        int nextIndexOf = nextIndexOf(c);
        if (nextIndexOf != -1) {
            String cacheString = cacheString(this.pos, nextIndexOf);
            this.pos += nextIndexOf;
            return cacheString;
        }
        return consumeToEnd();
    }

    String consumeTo(String str) {
        int nextIndexOf = nextIndexOf(str);
        if (nextIndexOf != -1) {
            String cacheString = cacheString(this.pos, nextIndexOf);
            this.pos += nextIndexOf;
            return cacheString;
        }
        return consumeToEnd();
    }

    public String consumeToAny(char... cArr) {
        int i = this.pos;
        int i2 = this.length;
        char[] cArr2 = this.input;
        loop0: while (this.pos < i2) {
            for (char c : cArr) {
                if (cArr2[this.pos] == c) {
                    break loop0;
                }
            }
            this.pos++;
        }
        int i3 = this.pos;
        return i3 > i ? cacheString(i, i3 - i) : "";
    }

    String consumeToAnySorted(char... cArr) {
        int i = this.pos;
        int i2 = this.length;
        char[] cArr2 = this.input;
        while (true) {
            int i3 = this.pos;
            if (i3 >= i2 || Arrays.binarySearch(cArr, cArr2[i3]) >= 0) {
                break;
            }
            this.pos++;
        }
        int i4 = this.pos;
        return i4 > i ? cacheString(i, i4 - i) : "";
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:?, code lost:
    
        return cacheString(r0, r3 - r0);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    java.lang.String consumeData() {
        /*
            r6 = this;
            int r0 = r6.pos
            int r1 = r6.length
            char[] r2 = r6.input
        L6:
            int r3 = r6.pos
            if (r3 >= r1) goto L1c
            char r4 = r2[r3]
            r5 = 38
            if (r4 == r5) goto L1c
            r5 = 60
            if (r4 == r5) goto L1c
            if (r4 != 0) goto L17
            goto L1c
        L17:
            int r3 = r3 + 1
            r6.pos = r3
            goto L6
        L1c:
            if (r3 <= r0) goto L24
            int r3 = r3 - r0
            java.lang.String r0 = r6.cacheString(r0, r3)
            goto L26
        L24:
            java.lang.String r0 = ""
        L26:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jsoup.parser.CharacterReader.consumeData():java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:?, code lost:
    
        return cacheString(r0, r3 - r0);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    java.lang.String consumeTagName() {
        /*
            r6 = this;
            int r0 = r6.pos
            int r1 = r6.length
            char[] r2 = r6.input
        L6:
            int r3 = r6.pos
            if (r3 >= r1) goto L30
            char r4 = r2[r3]
            r5 = 9
            if (r4 == r5) goto L30
            r5 = 10
            if (r4 == r5) goto L30
            r5 = 13
            if (r4 == r5) goto L30
            r5 = 12
            if (r4 == r5) goto L30
            r5 = 32
            if (r4 == r5) goto L30
            r5 = 47
            if (r4 == r5) goto L30
            r5 = 62
            if (r4 == r5) goto L30
            if (r4 != 0) goto L2b
            goto L30
        L2b:
            int r3 = r3 + 1
            r6.pos = r3
            goto L6
        L30:
            if (r3 <= r0) goto L38
            int r3 = r3 - r0
            java.lang.String r0 = r6.cacheString(r0, r3)
            goto L3a
        L38:
            java.lang.String r0 = ""
        L3a:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jsoup.parser.CharacterReader.consumeTagName():java.lang.String");
    }

    String consumeToEnd() {
        int i = this.pos;
        String cacheString = cacheString(i, this.length - i);
        this.pos = this.length;
        return cacheString;
    }

    String consumeLetterSequence() {
        char c;
        int i = this.pos;
        while (true) {
            int i2 = this.pos;
            if (i2 >= this.length || (((c = this.input[i2]) < 'A' || c > 'Z') && ((c < 'a' || c > 'z') && !Character.isLetter(c)))) {
                break;
            }
            this.pos++;
        }
        return cacheString(i, this.pos - i);
    }

    String consumeLetterThenDigitSequence() {
        char c;
        int i = this.pos;
        while (true) {
            int i2 = this.pos;
            if (i2 >= this.length || (((c = this.input[i2]) < 'A' || c > 'Z') && ((c < 'a' || c > 'z') && !Character.isLetter(c)))) {
                break;
            }
            this.pos++;
        }
        while (!isEmpty()) {
            char[] cArr = this.input;
            int i3 = this.pos;
            char c2 = cArr[i3];
            if (c2 < '0' || c2 > '9') {
                break;
            }
            this.pos = i3 + 1;
        }
        return cacheString(i, this.pos - i);
    }

    String consumeHexSequence() {
        int i;
        char c;
        int i2 = this.pos;
        while (true) {
            i = this.pos;
            if (i >= this.length || (((c = this.input[i]) < '0' || c > '9') && ((c < 'A' || c > 'F') && (c < 'a' || c > 'f')))) {
                break;
            }
            this.pos = i + 1;
        }
        return cacheString(i2, i - i2);
    }

    String consumeDigitSequence() {
        int i;
        char c;
        int i2 = this.pos;
        while (true) {
            i = this.pos;
            if (i >= this.length || (c = this.input[i]) < '0' || c > '9') {
                break;
            }
            this.pos = i + 1;
        }
        return cacheString(i2, i - i2);
    }

    boolean matches(char c) {
        return !isEmpty() && this.input[this.pos] == c;
    }

    boolean matches(String str) {
        int length = str.length();
        if (length > this.length - this.pos) {
            return false;
        }
        for (int i = 0; i < length; i++) {
            if (str.charAt(i) != this.input[this.pos + i]) {
                return false;
            }
        }
        return true;
    }

    boolean matchesIgnoreCase(String str) {
        int length = str.length();
        if (length > this.length - this.pos) {
            return false;
        }
        for (int i = 0; i < length; i++) {
            if (Character.toUpperCase(str.charAt(i)) != Character.toUpperCase(this.input[this.pos + i])) {
                return false;
            }
        }
        return true;
    }

    boolean matchesAny(char... cArr) {
        if (isEmpty()) {
            return false;
        }
        char c = this.input[this.pos];
        for (char c2 : cArr) {
            if (c2 == c) {
                return true;
            }
        }
        return false;
    }

    boolean matchesAnySorted(char[] cArr) {
        return !isEmpty() && Arrays.binarySearch(cArr, this.input[this.pos]) >= 0;
    }

    boolean matchesLetter() {
        if (isEmpty()) {
            return false;
        }
        char c = this.input[this.pos];
        return (c >= 'A' && c <= 'Z') || (c >= 'a' && c <= 'z') || Character.isLetter(c);
    }

    boolean matchesDigit() {
        char c;
        return !isEmpty() && (c = this.input[this.pos]) >= '0' && c <= '9';
    }

    boolean matchConsume(String str) {
        if (!matches(str)) {
            return false;
        }
        this.pos += str.length();
        return true;
    }

    boolean matchConsumeIgnoreCase(String str) {
        if (!matchesIgnoreCase(str)) {
            return false;
        }
        this.pos += str.length();
        return true;
    }

    boolean containsIgnoreCase(String str) {
        return nextIndexOf(str.toLowerCase(Locale.ENGLISH)) > -1 || nextIndexOf(str.toUpperCase(Locale.ENGLISH)) > -1;
    }

    public String toString() {
        char[] cArr = this.input;
        int i = this.pos;
        return new String(cArr, i, this.length - i);
    }

    private String cacheString(int i, int i2) {
        char[] cArr = this.input;
        String[] strArr = this.stringCache;
        if (i2 > 12) {
            return new String(cArr, i, i2);
        }
        int i3 = 0;
        int i4 = i;
        int i5 = 0;
        while (i3 < i2) {
            i5 = (i5 * 31) + cArr[i4];
            i3++;
            i4++;
        }
        int length = (strArr.length - 1) & i5;
        String str = strArr[length];
        if (str == null) {
            String str2 = new String(cArr, i, i2);
            strArr[length] = str2;
            return str2;
        }
        if (rangeEquals(i, i2, str)) {
            return str;
        }
        String str3 = new String(cArr, i, i2);
        strArr[length] = str3;
        return str3;
    }

    boolean rangeEquals(int i, int i2, String str) {
        if (i2 != str.length()) {
            return false;
        }
        char[] cArr = this.input;
        int i3 = 0;
        while (true) {
            int i4 = i2 - 1;
            if (i2 == 0) {
                return true;
            }
            int i5 = i + 1;
            int i6 = i3 + 1;
            if (cArr[i] != str.charAt(i3)) {
                return false;
            }
            i = i5;
            i2 = i4;
            i3 = i6;
        }
    }
}

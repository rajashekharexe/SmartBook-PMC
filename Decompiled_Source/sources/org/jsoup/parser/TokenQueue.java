package org.jsoup.parser;

import io.fabric.sdk.android.services.events.EventsFilesManager;
import org.jsoup.helper.StringUtil;
import org.jsoup.helper.Validate;

/* loaded from: classes2.dex */
public class TokenQueue {
    private static final char ESC = '\\';
    private int pos = 0;
    private String queue;

    public TokenQueue(String str) {
        Validate.notNull(str);
        this.queue = str;
    }

    public boolean isEmpty() {
        return remainingLength() == 0;
    }

    private int remainingLength() {
        return this.queue.length() - this.pos;
    }

    public char peek() {
        if (isEmpty()) {
            return (char) 0;
        }
        return this.queue.charAt(this.pos);
    }

    public void addFirst(Character ch) {
        addFirst(ch.toString());
    }

    public void addFirst(String str) {
        this.queue = str + this.queue.substring(this.pos);
        this.pos = 0;
    }

    public boolean matches(String str) {
        return this.queue.regionMatches(true, this.pos, str, 0, str.length());
    }

    public boolean matchesCS(String str) {
        return this.queue.startsWith(str, this.pos);
    }

    public boolean matchesAny(String... strArr) {
        for (String str : strArr) {
            if (matches(str)) {
                return true;
            }
        }
        return false;
    }

    public boolean matchesAny(char... cArr) {
        if (isEmpty()) {
            return false;
        }
        for (char c : cArr) {
            if (this.queue.charAt(this.pos) == c) {
                return true;
            }
        }
        return false;
    }

    public boolean matchesStartTag() {
        return remainingLength() >= 2 && this.queue.charAt(this.pos) == '<' && Character.isLetter(this.queue.charAt(this.pos + 1));
    }

    public boolean matchChomp(String str) {
        if (!matches(str)) {
            return false;
        }
        this.pos += str.length();
        return true;
    }

    public boolean matchesWhitespace() {
        return !isEmpty() && StringUtil.isWhitespace(this.queue.charAt(this.pos));
    }

    public boolean matchesWord() {
        return !isEmpty() && Character.isLetterOrDigit(this.queue.charAt(this.pos));
    }

    public void advance() {
        if (isEmpty()) {
            return;
        }
        this.pos++;
    }

    public char consume() {
        String str = this.queue;
        int i = this.pos;
        this.pos = i + 1;
        return str.charAt(i);
    }

    public void consume(String str) {
        if (!matches(str)) {
            throw new IllegalStateException("Queue did not match expected sequence");
        }
        int length = str.length();
        if (length > remainingLength()) {
            throw new IllegalStateException("Queue not long enough to consume sequence");
        }
        this.pos += length;
    }

    public String consumeTo(String str) {
        int indexOf = this.queue.indexOf(str, this.pos);
        if (indexOf != -1) {
            String substring = this.queue.substring(this.pos, indexOf);
            this.pos += substring.length();
            return substring;
        }
        return remainder();
    }

    public String consumeToIgnoreCase(String str) {
        int i = this.pos;
        String substring = str.substring(0, 1);
        boolean equals = substring.toLowerCase().equals(substring.toUpperCase());
        while (!isEmpty() && !matches(str)) {
            if (equals) {
                int indexOf = this.queue.indexOf(substring, this.pos);
                int i2 = this.pos;
                int i3 = indexOf - i2;
                if (i3 == 0) {
                    this.pos = i2 + 1;
                } else if (i3 < 0) {
                    this.pos = this.queue.length();
                } else {
                    this.pos = i2 + i3;
                }
            } else {
                this.pos++;
            }
        }
        return this.queue.substring(i, this.pos);
    }

    public String consumeToAny(String... strArr) {
        int i = this.pos;
        while (!isEmpty() && !matchesAny(strArr)) {
            this.pos++;
        }
        return this.queue.substring(i, this.pos);
    }

    public String chompTo(String str) {
        String consumeTo = consumeTo(str);
        matchChomp(str);
        return consumeTo;
    }

    public String chompToIgnoreCase(String str) {
        String consumeToIgnoreCase = consumeToIgnoreCase(str);
        matchChomp(str);
        return consumeToIgnoreCase;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0067 A[EDGE_INSN: B:14:0x0067->B:15:0x0067 BREAK  A[LOOP:0: B:2:0x0006->B:20:?], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:20:? A[LOOP:0: B:2:0x0006->B:20:?, LOOP_END, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String chompBalanced(char r10, char r11) {
        /*
            r9 = this;
            r0 = -1
            r1 = 0
            r2 = 0
            r3 = 0
            r4 = -1
            r5 = -1
        L6:
            boolean r6 = r9.isEmpty()
            if (r6 == 0) goto Ld
            goto L67
        Ld:
            char r6 = r9.consume()
            java.lang.Character r7 = java.lang.Character.valueOf(r6)
            if (r1 == 0) goto L1b
            r8 = 92
            if (r1 == r8) goto L5a
        L1b:
            r8 = 39
            java.lang.Character r8 = java.lang.Character.valueOf(r8)
            boolean r8 = r7.equals(r8)
            if (r8 != 0) goto L33
            r8 = 34
            java.lang.Character r8 = java.lang.Character.valueOf(r8)
            boolean r8 = r7.equals(r8)
            if (r8 == 0) goto L3a
        L33:
            r7.getClass()
            if (r6 == r10) goto L3a
            r2 = r2 ^ 1
        L3a:
            if (r2 == 0) goto L3d
            goto L65
        L3d:
            java.lang.Character r8 = java.lang.Character.valueOf(r10)
            boolean r8 = r7.equals(r8)
            if (r8 == 0) goto L4e
            int r3 = r3 + 1
            if (r4 != r0) goto L5a
            int r4 = r9.pos
            goto L5a
        L4e:
            java.lang.Character r8 = java.lang.Character.valueOf(r11)
            boolean r8 = r7.equals(r8)
            if (r8 == 0) goto L5a
            int r3 = r3 + (-1)
        L5a:
            if (r3 <= 0) goto L61
            if (r1 == 0) goto L61
            int r1 = r9.pos
            r5 = r1
        L61:
            r7.getClass()
            r1 = r6
        L65:
            if (r3 > 0) goto L6
        L67:
            if (r5 < 0) goto L70
            java.lang.String r10 = r9.queue
            java.lang.String r10 = r10.substring(r4, r5)
            goto L72
        L70:
            java.lang.String r10 = ""
        L72:
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jsoup.parser.TokenQueue.chompBalanced(char, char):java.lang.String");
    }

    public static String unescape(String str) {
        StringBuilder sb = new StringBuilder();
        char[] charArray = str.toCharArray();
        int length = charArray.length;
        int i = 0;
        char c = 0;
        while (i < length) {
            char c2 = charArray[i];
            if (c2 != '\\') {
                sb.append(c2);
            } else if (c != 0 && c == '\\') {
                sb.append(c2);
            }
            i++;
            c = c2;
        }
        return sb.toString();
    }

    public boolean consumeWhitespace() {
        boolean z = false;
        while (matchesWhitespace()) {
            this.pos++;
            z = true;
        }
        return z;
    }

    public String consumeWord() {
        int i = this.pos;
        while (matchesWord()) {
            this.pos++;
        }
        return this.queue.substring(i, this.pos);
    }

    public String consumeTagName() {
        int i = this.pos;
        while (!isEmpty() && (matchesWord() || matchesAny(':', '_', '-'))) {
            this.pos++;
        }
        return this.queue.substring(i, this.pos);
    }

    public String consumeElementSelector() {
        int i = this.pos;
        while (!isEmpty() && (matchesWord() || matchesAny("*|", "|", EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR, "-"))) {
            this.pos++;
        }
        return this.queue.substring(i, this.pos);
    }

    public String consumeCssIdentifier() {
        int i = this.pos;
        while (!isEmpty() && (matchesWord() || matchesAny('-', '_'))) {
            this.pos++;
        }
        return this.queue.substring(i, this.pos);
    }

    public String consumeAttributeKey() {
        int i = this.pos;
        while (!isEmpty() && (matchesWord() || matchesAny('-', '_', ':'))) {
            this.pos++;
        }
        return this.queue.substring(i, this.pos);
    }

    public String remainder() {
        String str = this.queue;
        String substring = str.substring(this.pos, str.length());
        this.pos = this.queue.length();
        return substring;
    }

    public String toString() {
        return this.queue.substring(this.pos);
    }
}

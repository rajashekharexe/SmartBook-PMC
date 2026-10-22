package com.googlecode.mp4parser.h264;

/* loaded from: classes2.dex */
public class CharCache {
    private char[] cache;
    private int pos;

    public CharCache(int i) {
        this.cache = new char[i];
    }

    public void append(String str) {
        char[] charArray = str.toCharArray();
        char[] cArr = this.cache;
        int length = cArr.length;
        int i = this.pos;
        int i2 = length - i;
        if (charArray.length < i2) {
            i2 = charArray.length;
        }
        System.arraycopy(charArray, 0, cArr, i, i2);
        this.pos += i2;
    }

    public String toString() {
        return new String(this.cache, 0, this.pos);
    }

    public void clear() {
        this.pos = 0;
    }

    public void append(char c) {
        int i = this.pos;
        char[] cArr = this.cache;
        if (i < cArr.length - 1) {
            cArr[i] = c;
            this.pos = i + 1;
        }
    }

    public int length() {
        return this.pos;
    }
}

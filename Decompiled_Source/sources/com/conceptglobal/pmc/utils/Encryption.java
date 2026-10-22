package com.conceptglobal.pmc.utils;

import android.util.Base64;
import android.util.Log;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.apache.commons.io.IOUtils;

/* loaded from: classes.dex */
public class Encryption {
    private static String encryptionKey = "1234567891123456";

    public static String encrypt(String str) {
        if (str == null) {
            return str;
        }
        try {
            if (str.length() == 0) {
                return str;
            }
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS7Padding");
            cipher.init(1, new SecretKeySpec(encryptionKey.getBytes("UTF-8"), "AES"), new IvParameterSpec(new byte[]{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}));
            return Base64.encodeToString(cipher.doFinal(str.getBytes("UTF-8")), 0);
        } catch (Exception unused) {
            return str;
        }
    }

    public static String encryptRemovenewLine(String str) {
        if (str == null) {
            return str;
        }
        try {
            if (str.length() == 0) {
                return str;
            }
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS7Padding");
            cipher.init(1, new SecretKeySpec(encryptionKey.getBytes("UTF-8"), "AES"), new IvParameterSpec(new byte[]{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}));
            return Base64.encodeToString(cipher.doFinal(str.getBytes("UTF-8")), 0).replaceAll(IOUtils.LINE_SEPARATOR_UNIX, "");
        } catch (Exception unused) {
            return str;
        }
    }

    public static String decryptWithPKCPadding(String str) throws Exception {
        if (str.length() == 0) {
            return "";
        }
        if (str.equalsIgnoreCase("null")) {
            return str;
        }
        byte[] decode = Base64.decode(str, 0);
        Cipher cipher = Cipher.getInstance("AES/CBC/NoPadding");
        cipher.init(2, new SecretKeySpec(encryptionKey.getBytes("UTF-8"), "AES"), new IvParameterSpec(new byte[]{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}));
        return new String(cipher.doFinal(decode), "UTF-8");
    }

    public static String decrypt(String str) throws Exception {
        if (str == null || str.trim().length() == 0) {
            Log.e("Empty", "Empty string");
        } else if (str.trim().length() != 0) {
            byte[] decode = Base64.decode(str, 0);
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS7Padding");
            cipher.init(2, new SecretKeySpec(encryptionKey.getBytes("UTF-8"), "AES"), new IvParameterSpec(new byte[]{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}));
            String str2 = new String(cipher.doFinal(decode), "UTF-8");
            return str2.length() == 0 ? decryptWithPKCPadding(str) : str2;
        }
        return "";
    }
}

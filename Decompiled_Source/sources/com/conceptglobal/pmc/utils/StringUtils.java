package com.conceptglobal.pmc.utils;

import android.app.Activity;
import android.bluetooth.BluetoothAdapter;
import android.content.ClipData;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import androidx.core.content.FileProvider;
import com.conceptglobal.pmc.PMCApplication;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.StringWriter;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.StringTokenizer;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public class StringUtils {
    public static int getInt(String str) {
        if (str != null && !str.equalsIgnoreCase("")) {
            if (str.contains(".")) {
                str = str.split("\\.")[0];
            }
            try {
                return Integer.parseInt(str);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return 0;
    }

    public static String getStringTwoDigitsAfterPoint(String str) {
        if (str != null && str.contains(".")) {
            return str.split(".")[0];
        }
        return "";
    }

    public static int getIntFromFloat(float f) {
        String str = f + "";
        if (str == null || str.equalsIgnoreCase("")) {
            return 0;
        }
        return (int) f;
    }

    public String getImageNameFromUrl(String str) {
        if (str.contains("*/")) {
            return str.substring(str.indexOf("/img/") + 5).replace("/", "").replace("*", "");
        }
        String substring = str.substring(str.lastIndexOf("/"));
        return substring.substring(0, substring.indexOf("."));
    }

    public static String getString(boolean z) {
        try {
            return String.valueOf(z);
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public static String getStringFromInt(int i) {
        try {
            return String.valueOf(i);
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public static String getString(long j) {
        try {
            return String.valueOf(j);
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public static String getString(float f) {
        try {
            return String.valueOf(f);
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public static String getStringInDoubleDigit(int i) {
        String str;
        try {
            str = String.valueOf(i);
        } catch (Exception e) {
            e = e;
            str = "00";
        }
        try {
            if (str.length() != 1) {
                return str;
            }
            return "0" + str;
        } catch (Exception e2) {
            e = e2;
            e.printStackTrace();
            return str;
        }
    }

    public static boolean isValidEmail(String str) {
        return Pattern.compile("[a-zA-Z0-9\\+\\.\\_\\%\\-\\+]{1,256}\\@[a-zA-Z0-9][a-zA-Z0-9\\-]{0,64}(\\.[a-zA-Z0-9][a-zA-Z0-9\\-]{0,25})+").matcher(str).matches();
    }

    public static float getFloat(String str) {
        if (str != null && !str.equalsIgnoreCase("") && !str.equalsIgnoreCase(".")) {
            try {
                return Float.parseFloat(str);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return 0.0f;
    }

    public static long getLong(String str) {
        if (str != null && !str.equalsIgnoreCase("")) {
            try {
                return Long.parseLong(str);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return 0L;
    }

    public static int toInt(String str) {
        if (str == null || str.equalsIgnoreCase("")) {
            return -1;
        }
        try {
            return Integer.parseInt(str);
        } catch (Exception e) {
            e.printStackTrace();
            return -1;
        }
    }

    public static String checkString(String str) {
        return str != null ? str : "";
    }

    public static String setSuperScriptForNumber(int i) {
        String str = i + "";
        if (i == 1) {
            return str + "<sup><small>st</small></sup>";
        }
        if (i == 2) {
            return str + "<sup><small>nd</small></sup>";
        }
        if (i == 3) {
            return str + "<sup><small>rd</small></sup>";
        }
        return str + "<sup><small>th</small></sup>";
    }

    public static void write(String str, BufferedWriter bufferedWriter) throws IOException {
        bufferedWriter.write(str);
        bufferedWriter.newLine();
    }

    public static void printViaBluetooth(Context context, String str) {
        if (BluetoothAdapter.getDefaultAdapter() == null) {
            return;
        }
        try {
            Intent intent = new Intent();
            intent.setAction("android.intent.action.SEND");
            Uri uriForFile = FileProvider.getUriForFile(context, "com.conceptglobal.pmcdeepakfertilizers.provider", new File(FileUtils.getDataDir(PMCApplication.getContext()).getAbsolutePath() + "/" + str));
            if (Build.VERSION.SDK_INT <= 21) {
                intent.setClipData(ClipData.newRawUri("", uriForFile));
                intent.addFlags(3);
            }
            intent.setType("image/*");
            intent.putExtra("android.intent.extra.STREAM", uriForFile);
            if (Build.MODEL.equalsIgnoreCase("GT-P1000")) {
                intent.setClassName("com.android.bluetooth", "com.broadcom.bt.app.opp.OppLauncherActivity");
            } else {
                intent.setClassName("com.android.bluetooth", "com.android.bluetooth.opp.BluetoothOppLauncherActivity");
            }
            ((Activity) context).startActivityForResult(intent, 77);
        } catch (Exception unused) {
        }
    }

    public static String float2strSpecificFraction(double d, int i) {
        String str;
        StringTokenizer stringTokenizer;
        NumberFormat numberInstance = NumberFormat.getNumberInstance(Locale.US);
        numberInstance.setMinimumFractionDigits(i);
        try {
            str = numberInstance.format(d);
        } catch (Exception e) {
            e.printStackTrace();
            str = "";
        }
        if (str.contains(".")) {
            stringTokenizer = new StringTokenizer(str, ".");
        } else {
            stringTokenizer = str.contains(",") ? new StringTokenizer(str, ",") : null;
        }
        String nextToken = stringTokenizer.nextToken();
        String nextToken2 = stringTokenizer.nextToken();
        if (nextToken2.length() == i) {
            return str;
        }
        return nextToken + "." + nextToken2.substring(0, i);
    }

    public static double getDouble(String str) {
        if (str != null && !str.equalsIgnoreCase("")) {
            try {
                return Double.parseDouble(str);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return 0.0d;
    }

    public static boolean getBool(String str) {
        if (str == null || str.equalsIgnoreCase("")) {
            return false;
        }
        try {
            return Boolean.parseBoolean(str);
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public static String convertStreamToString(InputStream inputStream) throws IOException {
        if (inputStream != null) {
            StringWriter stringWriter = new StringWriter();
            char[] cArr = new char[1024];
            try {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, "UTF-8"));
                while (true) {
                    int read = bufferedReader.read(cArr);
                    if (read != -1) {
                        stringWriter.write(cArr, 0, read);
                    } else {
                        String obj = stringWriter.toString();
                        stringWriter.close();
                        return obj;
                    }
                }
            } finally {
                inputStream.close();
            }
        } else {
            return "";
        }
    }

    public static String getUniqueUUID() {
        return UUID.randomUUID().toString();
    }

    public String sb2String(StringBuffer stringBuffer) {
        if (stringBuffer == null) {
            return "";
        }
        try {
            return stringBuffer.toString();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public long sb2Long(StringBuffer stringBuffer) {
        if (stringBuffer == null) {
            return 0L;
        }
        try {
            return Long.parseLong(stringBuffer.toString());
        } catch (Exception e) {
            e.printStackTrace();
            return 0L;
        }
    }

    public double sb2Double(StringBuffer stringBuffer) {
        if (stringBuffer == null) {
            return 0.0d;
        }
        try {
            return Double.parseDouble(stringBuffer.toString());
        } catch (Exception e) {
            e.printStackTrace();
            return 0.0d;
        }
    }

    public float sb2Float(StringBuffer stringBuffer) {
        if (stringBuffer == null) {
            return 0.0f;
        }
        try {
            return getFloat(stringBuffer.toString());
        } catch (Exception e) {
            e.printStackTrace();
            return 0.0f;
        }
    }

    public boolean sb2Boolean(StringBuffer stringBuffer) {
        if (stringBuffer == null || stringBuffer.length() <= 0) {
            return false;
        }
        try {
            return stringBuffer.toString().equalsIgnoreCase("true");
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean sb2BooleanSuc(StringBuffer stringBuffer) {
        if (stringBuffer == null || stringBuffer.length() <= 0) {
            return false;
        }
        try {
            return stringBuffer.toString().equalsIgnoreCase("Success");
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public int sb2Int(StringBuffer stringBuffer) {
        if (stringBuffer == null) {
            return 0;
        }
        return string2Int(stringBuffer.toString());
    }

    public int string2Int(String str) {
        if (str != null && str.length() > 0) {
            try {
                return getInt(str);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return 0;
    }

    public float string2Float(String str) {
        if (str != null && str.length() > 0) {
            try {
                return getFloat(str);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return 0.0f;
    }

    public boolean string2Boolean(String str) {
        if (str != null && str.length() > 0) {
            try {
                return str.equalsIgnoreCase(FirebaseAnalytics.Param.SUCCESS);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return false;
    }

    public boolean string2Boolean_True_False(String str) {
        if (str != null && str.length() > 0) {
            try {
                return str.equalsIgnoreCase("true");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return false;
    }

    public Double string2Double(String str) {
        double d;
        if (str != null && str.length() > 0) {
            try {
                d = Double.parseDouble(str);
            } catch (Exception e) {
                e.printStackTrace();
            }
            return Double.valueOf(d);
        }
        d = 0.0d;
        return Double.valueOf(d);
    }

    public boolean getBoolean(String str) {
        if (str != null && str.length() > 0) {
            try {
                return str.equalsIgnoreCase("true");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return false;
    }

    public static List<String> getNumbersFromString(String str, int i) {
        ArrayList arrayList = new ArrayList();
        if (str != null && str.trim().length() != 0) {
            Matcher matcher = Pattern.compile("\\d+").matcher(str);
            while (matcher.find()) {
                if (i == 0) {
                    arrayList.add(matcher.group());
                } else if (matcher.group().length() > i) {
                    arrayList.add(matcher.group());
                }
            }
        }
        return arrayList;
    }

    public static String removeInvertedCommas(String str) {
        return (str == null || !str.endsWith("\"")) ? str : str.substring(1, str.length() - 1);
    }
}

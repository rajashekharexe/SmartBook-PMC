package com.conceptglobal.pmc.utils;

import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import org.apache.commons.io.IOUtils;

/* loaded from: classes.dex */
public class WeatherHttpClient {
    public static String BASE_URL_CITY = "http://api.openweathermap.org/data/2.5/weather?q=";
    public static String BASE_URL_LOC = "http://api.openweathermap.org/data/2.5/weather?";
    public static String FORECAST_URL_CITY = "http://api.openweathermap.org/data/2.5/forecast?q=";
    public static String FORECAST_URL_LOC = "http://api.openweathermap.org/data/2.5/forecast?";
    public static String IMG_URL = "http://openweathermap.org/img/w/";

    public String getWeatherData(String str) {
        HttpURLConnection httpURLConnection;
        InputStream inputStream;
        try {
            httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            try {
                httpURLConnection.setRequestMethod("GET");
                httpURLConnection.setDoInput(true);
                httpURLConnection.setDoOutput(true);
                httpURLConnection.connect();
                StringBuffer stringBuffer = new StringBuffer();
                inputStream = httpURLConnection.getInputStream();
                try {
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
                    while (true) {
                        String readLine = bufferedReader.readLine();
                        if (readLine == null) {
                            break;
                        }
                        stringBuffer.append(readLine + IOUtils.LINE_SEPARATOR_WINDOWS);
                    }
                    inputStream.close();
                    httpURLConnection.disconnect();
                    String stringBuffer2 = stringBuffer.toString();
                    try {
                        inputStream.close();
                    } catch (Throwable unused) {
                    }
                    try {
                        httpURLConnection.disconnect();
                    } catch (Throwable unused2) {
                    }
                    return stringBuffer2;
                } catch (Throwable th) {
                    th = th;
                    try {
                        th.printStackTrace();
                        try {
                            inputStream.close();
                        } catch (Throwable unused3) {
                        }
                        try {
                            httpURLConnection.disconnect();
                        } catch (Throwable unused4) {
                        }
                        return null;
                    } finally {
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                inputStream = null;
            }
        } catch (Throwable th3) {
            th = th3;
            httpURLConnection = null;
            inputStream = null;
        }
    }

    public byte[] getImage(String str) {
        HttpURLConnection httpURLConnection;
        InputStream inputStream;
        try {
            httpURLConnection = (HttpURLConnection) new URL(IMG_URL + str + ".png").openConnection();
            try {
                httpURLConnection.setRequestMethod("GET");
                httpURLConnection.setDoInput(true);
                httpURLConnection.connect();
                inputStream = httpURLConnection.getInputStream();
                try {
                    byte[] bArr = new byte[1024];
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    while (inputStream.read(bArr) != -1) {
                        byteArrayOutputStream.write(bArr);
                    }
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    try {
                        inputStream.close();
                    } catch (Throwable unused) {
                    }
                    try {
                        httpURLConnection.disconnect();
                    } catch (Throwable unused2) {
                    }
                    return byteArray;
                } catch (Throwable th) {
                    th = th;
                    try {
                        th.printStackTrace();
                        try {
                            inputStream.close();
                        } catch (Throwable unused3) {
                        }
                        try {
                            httpURLConnection.disconnect();
                        } catch (Throwable unused4) {
                        }
                        return null;
                    } catch (Throwable th2) {
                        try {
                            inputStream.close();
                        } catch (Throwable unused5) {
                        }
                        try {
                            httpURLConnection.disconnect();
                            throw th2;
                        } catch (Throwable unused6) {
                            throw th2;
                        }
                    }
                }
            } catch (Throwable th3) {
                th = th3;
                inputStream = null;
            }
        } catch (Throwable th4) {
            th = th4;
            httpURLConnection = null;
            inputStream = null;
        }
    }
}

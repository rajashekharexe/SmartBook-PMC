package com.conceptglobal.pmc.utils;

import android.util.Log;
import java.text.DateFormat;
import java.text.DecimalFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

/* loaded from: classes.dex */
public class DateUtils {
    private static String TAG = "DateUtils";

    public static Date getDate(int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        Calendar calendar = Calendar.getInstance();
        try {
            calendar.set(1, i);
            calendar.set(2, i2);
            calendar.set(5, i3);
            calendar.set(11, i4);
            calendar.set(12, i5);
            calendar.set(13, i6);
            calendar.set(14, i7);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return calendar.getTime();
    }

    public static String formatDate(Date date) {
        SimpleDateFormat simpleDateFormat;
        try {
            simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
        } catch (Exception e) {
            e.printStackTrace();
            simpleDateFormat = null;
        }
        return simpleDateFormat.format(date);
    }

    public static String formatDateWithOutTime(Date date) {
        SimpleDateFormat simpleDateFormat;
        try {
            simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        } catch (Exception e) {
            e.printStackTrace();
            simpleDateFormat = null;
        }
        return simpleDateFormat.format(date);
    }

    public static String formatDateWithOutTimeForServiceAcrs(Date date, int i) {
        SimpleDateFormat simpleDateFormat;
        try {
            if (i == 1) {
                simpleDateFormat = new SimpleDateFormat("dd-MM-yyyy");
            } else {
                simpleDateFormat = new SimpleDateFormat("MM-dd-yyyy");
            }
        } catch (Exception e) {
            e.printStackTrace();
            simpleDateFormat = null;
        }
        return simpleDateFormat.format(date);
    }

    public static String formatDate(Date date, String str) {
        SimpleDateFormat simpleDateFormat;
        try {
            simpleDateFormat = new SimpleDateFormat(str);
        } catch (Exception e) {
            e.printStackTrace();
            simpleDateFormat = null;
        }
        return simpleDateFormat.format(date);
    }

    public static String formatDateForSeviceAc(String str) {
        Date date;
        SimpleDateFormat simpleDateFormat = null;
        try {
            date = new SimpleDateFormat("dd-MM-yyyy").parse(str);
        } catch (Exception e) {
            e = e;
            date = null;
        }
        try {
            simpleDateFormat = new SimpleDateFormat("MM-dd-yyyy");
        } catch (Exception e2) {
            e = e2;
            e.printStackTrace();
            return simpleDateFormat.format(date);
        }
        return simpleDateFormat.format(date);
    }

    public static Date formatDate(String str, String str2) {
        try {
            return new SimpleDateFormat(str2).parse(str);
        } catch (ParseException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static Date getDateFromString(String str) {
        try {
            return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS").parse(str);
        } catch (ParseException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static Date getDateFromStringWithoutTime(String str) {
        try {
            return new SimpleDateFormat("yyyy-MM-dd").parse(str);
        } catch (ParseException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static Date formatDt(Date date) {
        try {
            return new SimpleDateFormat("MM/dd/yyyy").parse(formatDate(date));
        } catch (ParseException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String formatDate(String str, String str2, String str3) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str2);
        try {
            return new SimpleDateFormat(str3).format(simpleDateFormat.parse(str));
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static Date format(Date date, String str) {
        try {
            return formatDate(formatDate(date, str), str);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static Date format(String str, String str2) {
        try {
            return formatDate(str, str2);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static Date getDate(String str) {
        try {
            return new SimpleDateFormat("MM/dd/yyyy").parse(str);
        } catch (ParseException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static Date getDateToday() {
        Calendar calendar = Calendar.getInstance();
        try {
            calendar.setTime(new Date());
            int i = calendar.get(11);
            int i2 = calendar.get(12);
            int i3 = calendar.get(13);
            int i4 = calendar.get(14);
            calendar.set(11, i);
            calendar.set(12, i2);
            calendar.set(13, i3);
            calendar.set(14, i4);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return calendar.getTime();
    }

    public static String getPastBookingAllowDate(int i) {
        Calendar calendar = Calendar.getInstance();
        try {
            calendar.setTime(new Date());
            int i2 = calendar.get(11);
            int i3 = calendar.get(12);
            int i4 = calendar.get(13);
            int i5 = calendar.get(14);
            calendar.set(11, i2);
            calendar.set(12, i3);
            calendar.set(13, i4);
            calendar.set(14, i5);
            calendar.set(5, calendar.get(5) - i);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return formatDateWithOutTime(calendar.getTime());
    }

    public static Date parse(String str, DateFormat... dateFormatArr) {
        for (DateFormat dateFormat : dateFormatArr) {
            try {
                return dateFormat.parse(str);
            } catch (ParseException e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    public static long differenceOfMinutesBetweenDates(Date date, Date date2) {
        long time = date2.getTime() - date.getTime();
        Log.i("test", "difference ::::::: " + time);
        long j = time / 86400000;
        long j2 = time % 86400000;
        long j3 = j2 / 3600000;
        long j4 = j2 % 3600000;
        long j5 = j4 / ConstantDeclarations.REPEAT_TIME;
        long j6 = (j4 % ConstantDeclarations.REPEAT_TIME) / 1000;
        return j5;
    }

    public static String durationBetweenDates(Date date, Date date2) {
        long time = date2.getTime() - date.getTime();
        try {
            DecimalFormat decimalFormat = new DecimalFormat("00");
            long j = time / 86400000;
            long j2 = time % 86400000;
            long j3 = j2 / 3600000;
            long j4 = j2 % 3600000;
            return decimalFormat.format(j3) + " : " + decimalFormat.format(j4 / ConstantDeclarations.REPEAT_TIME) + " : " + decimalFormat.format((j4 % ConstantDeclarations.REPEAT_TIME) / 1000);
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public static long differenceOfDaysBetweenDates(Date date, Date date2) {
        long j;
        long time = date2.getTime() - date.getTime();
        try {
            j = time / 86400000;
        } catch (Exception e) {
            e = e;
            j = 0;
        }
        try {
            long j2 = time % 86400000;
            long j3 = j2 / 3600000;
            long j4 = j2 % 3600000;
            long j5 = j4 / ConstantDeclarations.REPEAT_TIME;
            long j6 = (j4 % ConstantDeclarations.REPEAT_TIME) / 1000;
            Log.i("test", "Diff Daysss :::::::::::: " + j);
        } catch (Exception e2) {
            e = e2;
            e.printStackTrace();
            return j;
        }
        return j;
    }

    public static int getDateDiffFromNow(String str) {
        int i = 0;
        try {
            i = ((int) ((((new Date().getTime() - new SimpleDateFormat("yyyy-MM-dd", Locale.getDefault()).parse(str).getTime()) / 1000) / 60) / 60)) / 24;
            Log.i(TAG, "Date " + str + " Difference From Now :" + i + " days");
            return i;
        } catch (Exception e) {
            e.printStackTrace();
            return i;
        }
    }

    public static String getNextDate(String str, int i) {
        try {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("MM/dd/yyyy");
            Calendar calendar = Calendar.getInstance();
            calendar.setTime(simpleDateFormat.parse(str));
            calendar.add(5, 1);
            return simpleDateFormat.format(calendar.getTime());
        } catch (Exception e) {
            e.printStackTrace();
            return str;
        }
    }

    public static String getPreviousDay(String str) {
        try {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("MM/dd/yyyy");
            Calendar calendar = Calendar.getInstance();
            calendar.setTime(simpleDateFormat.parse(str));
            calendar.add(5, -1);
            return simpleDateFormat.format(calendar.getTime());
        } catch (Exception e) {
            e.printStackTrace();
            return str;
        }
    }

    public static int compareDates(Date date, Date date2) {
        Log.i("test", "date1 ::::::::::" + date);
        Log.i("test", "date2 ::::::::::" + date2);
        try {
            return date.compareTo(date2);
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    public static long differenceInHourse(Date date, Date date2) {
        long time = date2.getTime() - date.getTime();
        long j = 0;
        try {
            long j2 = time / 86400000;
            long j3 = time % 86400000;
            j = (j3 / 3600000) + (24 * j2);
            long j4 = j3 % 3600000;
            long j5 = j4 / ConstantDeclarations.REPEAT_TIME;
            long j6 = (j4 % ConstantDeclarations.REPEAT_TIME) / 1000;
            Log.i("test", "Diff Daysss :::::::::::: " + j2);
            return j;
        } catch (Exception e) {
            e.printStackTrace();
            return j;
        }
    }
}

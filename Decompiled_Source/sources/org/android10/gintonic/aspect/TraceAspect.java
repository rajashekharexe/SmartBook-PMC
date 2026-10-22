package org.android10.gintonic.aspect;

import android.content.Context;
import android.content.Intent;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.gson.Gson;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Map;
import org.android10.gintonic.DatabaseHandler.DatabaseHandler;
import org.android10.gintonic.internal.StopWatch;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.aspectj.lang.reflect.CodeSignature;
import org.aspectj.lang.reflect.MethodSignature;

@Aspect
/* loaded from: classes2.dex */
public class TraceAspect {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final String POINTCUT_CONSTRUCTOR = "execution(@org.android10.gintonic.annotation.DebugTrace *.new(..))";
    private static final String POINTCUT_METHOD = "execution(@org.android10.gintonic.annotation.DebugTrace * *(..))";

    @Pointcut(POINTCUT_CONSTRUCTOR)
    public void constructorAnnotatedDebugTrace() {
    }

    @Pointcut(POINTCUT_METHOD)
    public void methodAnnotatedWithDebugTrace() {
    }

    @Around("methodAnnotatedWithDebugTrace() || constructorAnnotatedDebugTrace()")
    public Object weaveJoinPoint(ProceedingJoinPoint proceedingJoinPoint) throws Throwable {
        Object obj = null;
        try {
            if (isLogEnabled()) {
                MethodSignature methodSignature = (MethodSignature) proceedingJoinPoint.getSignature();
                Object[] args = proceedingJoinPoint.getArgs();
                String simpleName = methodSignature.getDeclaringType().getSimpleName();
                String name = methodSignature.getName();
                methodSignature.getParameterNames();
                methodSignature.getMethod().getParameterAnnotations();
                String[] parameterNames = ((CodeSignature) proceedingJoinPoint.getSignature()).getParameterNames();
                StopWatch stopWatch = new StopWatch();
                stopWatch.start();
                obj = proceedingJoinPoint.proceed();
                stopWatch.stop();
                logParamValues(simpleName, name, new StringBuilder(), parameterNames, args, obj, stopWatch.getTotalTimeMillis() + " ms");
            } else {
                obj = proceedingJoinPoint.proceed();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return obj;
    }

    public static void logParamValues(String str, String str2, StringBuilder sb, String[] strArr, Object[] objArr, Object obj, String str3) {
        try {
            sb.append("{\"Method\":\"" + str2 + "\"");
            sb.append(",");
            sb.append("\"Params\":");
            sb.append("{");
            for (int i = 0; i < objArr.length; i++) {
                sb.append("\"" + strArr[i] + "\"");
                sb.append(":");
                sb.append(toString(objArr[i]).replaceAll("'", "\"").trim());
                if (i < objArr.length - 1) {
                    sb.append(",");
                }
            }
            String sb2 = sb.toString();
            insertLog(str, str2, (sb2.substring(sb2.length() + (-1)).equals(",") ? sb2.substring(0, sb2.length() - 1) : sb.toString()) + "}}", toString(obj), str3);
        } catch (Exception unused) {
        }
    }

    private static void insertLog(String str, String str2, String str3, String str4, String str5) {
        DatabaseHandler databaseHandler = DatabaseHandler.getInstance();
        SQLiteDatabase sQLiteDatabase = null;
        try {
            String str6 = "INSERT INTO Logger(ClassName, MethodName, Params, MethodResult, LogTime, ExecutionTime) VALUES ('" + str + "','" + str2 + "','" + str3 + "','" + str4 + "','" + new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()) + "','" + str5 + "')";
            sQLiteDatabase = databaseHandler.openDatabase();
            sQLiteDatabase.execSQL(str6);
            if (sQLiteDatabase == null) {
                return;
            }
        } catch (Exception unused) {
            if (sQLiteDatabase == null) {
                return;
            }
        } catch (Throwable th) {
            if (sQLiteDatabase != null) {
                databaseHandler.closeDatabase();
            }
            throw th;
        }
        databaseHandler.closeDatabase();
    }

    public static String toString(Object obj) {
        if (obj == null) {
            return "\"null\"";
        }
        try {
            if (obj.equals("")) {
                return "\"null\"";
            }
            if (obj instanceof String) {
                return "\"" + ((String) obj) + "\"";
            }
            if (obj instanceof CharSequence) {
                return "\"" + ((String) obj) + "\"";
            }
            if (obj instanceof Long) {
                return "\"" + ((Long) obj).toString() + "\"";
            }
            if (obj instanceof Boolean) {
                return "\"" + ((Boolean) obj).toString() + "\"";
            }
            if (obj instanceof Double) {
                return "\"" + ((Double) obj).toString() + "\"";
            }
            if (obj instanceof Float) {
                return "\"" + ((Float) obj).toString() + "\"";
            }
            if (obj instanceof Integer) {
                return "\"" + ((Integer) obj).toString() + "\"";
            }
            if (obj instanceof List) {
                if (((List) obj) != null && ((List) obj).size() > 0) {
                    if (!(((List) obj).get(0) instanceof EditText) && !(((List) obj).get(0) instanceof TextView) && !(((List) obj).get(0) instanceof Button)) {
                        return new Gson().toJson((List) obj);
                    }
                    String str = ((List) obj).get(0) instanceof EditText ? "EditText" : ((List) obj).get(0) instanceof TextView ? "TextView" : ((List) obj).get(0) instanceof Button ? "Button" : "View";
                    StringBuilder sb = new StringBuilder();
                    sb.append("{\"View\":\"" + str + "\", ");
                    sb.append("\"Data\":");
                    sb.append("[");
                    for (int i = 0; i < ((List) obj).size(); i++) {
                        sb.append("{");
                        sb.append("\"Id\":\"" + ((TextView) ((List) obj).get(i)).getId() + "\"");
                        sb.append(",");
                        sb.append("\"Text\":");
                        String str2 = null;
                        sb.append(((TextView) ((List) obj).get(i)).getText() != null ? "\"" + ((TextView) ((List) obj).get(i)).getText().toString() + "\"" : null);
                        sb.append(",");
                        sb.append("\"Tag\":");
                        if (((TextView) ((List) obj).get(i)).getTag() != null) {
                            str2 = "\"" + ((TextView) ((List) obj).get(i)).getTag().toString() + "\"";
                        }
                        sb.append(str2);
                        sb.append("},");
                    }
                    String sb2 = sb.toString();
                    return sb2.substring(0, sb2.length() - 1) + "]}";
                }
                return "\"Empty List\"";
            }
            if (obj instanceof Map) {
                return new Gson().toJson((Map) obj);
            }
            if (obj instanceof String[]) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("\"");
                String[] strArr = (String[]) obj;
                if (strArr.length > 0) {
                    for (int i2 = 0; i2 < strArr.length; i2++) {
                        if (i2 > 0) {
                            sb3.append(",");
                        }
                        sb3.append(strArr[i2]);
                    }
                }
                sb3.append("\"");
                return sb3.toString();
            }
            if (obj instanceof String[][]) {
                StringBuilder sb4 = new StringBuilder();
                for (String[] strArr2 : (String[][]) obj) {
                    sb4.append(Arrays.toString(strArr2));
                    sb4.append(",");
                }
                String sb5 = sb4.toString();
                return "\"" + sb5.substring(0, sb5.length() - 1) + "\"";
            }
            if (obj instanceof Class) {
                return "\"" + ((Class) obj).getSimpleName() + "\"";
            }
            if (obj instanceof View) {
                return "\"View\"";
            }
            if (obj instanceof Bundle) {
                return getBundleData((Bundle) obj);
            }
            if (obj instanceof AdapterView) {
                return "\"AdapterView\"";
            }
            if (obj instanceof Menu) {
                return "\"Menu\"";
            }
            if (obj instanceof MenuItem) {
                return "\"MenuItem\"";
            }
            if (obj instanceof Exception) {
                return "\"" + ((Exception) obj).getMessage() + "\"";
            }
            if (obj instanceof ImageView) {
                return "\"ImageView\"";
            }
            if (obj instanceof File) {
                return "\"" + ((File) obj).getAbsolutePath() + "\"";
            }
            if (obj instanceof Context) {
                return "\"Context\"";
            }
            if (obj instanceof BitmapFactory.Options) {
                return "\"BitmapFactory.Options\"";
            }
            if (obj instanceof Bitmap) {
                return "\"Bitmap\"";
            }
            if (obj instanceof Intent) {
                return getBundleData(((Intent) obj).getExtras());
            }
            return "\"object\"";
        } catch (Exception e) {
            return "\"error--" + e.getMessage() + "\"";
        }
    }

    private static String getBundleData(Bundle bundle) {
        StringBuilder sb = new StringBuilder();
        StringBuilder sb2 = new StringBuilder();
        try {
            sb2.append("{\"BundleData\":[");
            if (bundle != null) {
                boolean z = false;
                for (String str : bundle.keySet()) {
                    Object obj = bundle.get(str);
                    sb.append("{");
                    sb.append("\"" + str + "\":\"" + obj.toString() + "\"");
                    sb.append("},");
                    z = true;
                }
                if (z) {
                    String sb3 = sb.toString();
                    sb2.append(sb3.substring(0, sb3.length() - 1));
                }
            }
            sb2.append("]}");
        } catch (Exception unused) {
        }
        return sb2.toString();
    }

    private static String buildLogMessage(String str, String str2, long j) {
        return "iLogger --> " + str2 + " --> " + str + " --> [" + j + "ms]";
    }

    public void setLogStatus(String str, String str2) {
        DatabaseHandler databaseHandler = DatabaseHandler.getInstance();
        SQLiteDatabase sQLiteDatabase = null;
        try {
            sQLiteDatabase = databaseHandler.openDatabase();
            sQLiteDatabase.execSQL("INSERT OR REPLACE INTO LogStatus(Id,PdaId,Status) VALUES (1,'" + str2 + "' ,'" + str + "')");
            if (sQLiteDatabase == null) {
                return;
            }
        } catch (Exception unused) {
            if (sQLiteDatabase == null) {
                return;
            }
        } catch (Throwable th) {
            if (sQLiteDatabase != null) {
                databaseHandler.closeDatabase();
            }
            throw th;
        }
        databaseHandler.closeDatabase();
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0029, code lost:
    
        r0.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x004a, code lost:
    
        if (r2 == null) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0052, code lost:
    
        if (r2.equals("Enabled") == false) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0054, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:?, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:?, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0047, code lost:
    
        if (r4 != null) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0027, code lost:
    
        if (r4 != null) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean isLogEnabled() {
        /*
            r6 = this;
            org.android10.gintonic.DatabaseHandler.DatabaseHandler r0 = org.android10.gintonic.DatabaseHandler.DatabaseHandler.getInstance()
            r1 = 0
            r2 = 0
            java.lang.String r3 = "SELECT status FROM LogStatus"
            android.database.sqlite.SQLiteDatabase r4 = r0.openDatabase()     // Catch: java.lang.Throwable -> L32 java.lang.Exception -> L3f
            android.database.Cursor r3 = r4.rawQuery(r3, r2)     // Catch: java.lang.Throwable -> L2d java.lang.Exception -> L2f
            if (r3 == 0) goto L22
            boolean r5 = r3.moveToFirst()     // Catch: java.lang.Throwable -> L1d java.lang.Exception -> L20
            if (r5 == 0) goto L22
            java.lang.String r2 = r3.getString(r1)     // Catch: java.lang.Throwable -> L1d java.lang.Exception -> L20
            goto L22
        L1d:
            r1 = move-exception
            r2 = r3
            goto L34
        L20:
            goto L42
        L22:
            if (r3 == 0) goto L27
            r3.close()
        L27:
            if (r4 == 0) goto L4a
        L29:
            r0.closeDatabase()
            goto L4a
        L2d:
            r1 = move-exception
            goto L34
        L2f:
            r3 = r2
            goto L42
        L32:
            r1 = move-exception
            r4 = r2
        L34:
            if (r2 == 0) goto L39
            r2.close()
        L39:
            if (r4 == 0) goto L3e
            r0.closeDatabase()
        L3e:
            throw r1
        L3f:
            r3 = r2
            r4 = r3
        L42:
            if (r3 == 0) goto L47
            r3.close()
        L47:
            if (r4 == 0) goto L4a
            goto L29
        L4a:
            if (r2 == 0) goto L55
            java.lang.String r0 = "Enabled"
            boolean r0 = r2.equals(r0)
            if (r0 == 0) goto L55
            r1 = 1
        L55:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.android10.gintonic.aspect.TraceAspect.isLogEnabled():boolean");
    }
}

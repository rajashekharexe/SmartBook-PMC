package com.conceptglobal.pmc.export;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.ClipData;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.pdf.PdfDocument;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Environment;
import android.os.StrictMode;
import android.text.TextUtils;
import android.util.Log;
import android.widget.Toast;
import androidx.core.content.FileProvider;

import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStreamWriter;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.nio.charset.StandardCharsets;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

public class FarmerExportHelper {
    private static final String TAG = "FarmerExportHelper";

    public static class FarmerItem {
        public String name = "";
        public String mobile = "";
        public String village = "";
        public boolean isSaarthie = false;
    }

    public static class VillageSummaryItem {
        public String village = "";
        public int saarthieCount = 0;
        public int normalCount = 0;
        public int totalCount = 0;
    }

    public static class ExportData {
        public List<FarmerItem> saarthieList = new ArrayList<>();
        public List<FarmerItem> normalList = new ArrayList<>();
        public List<VillageSummaryItem> summaryList = new ArrayList<>();
        public int totalFarmers = 0;
    }

    public static void showExportDialog(final Activity activity) {
        if (activity == null || activity.isFinishing()) return;

        activity.runOnUiThread(new Runnable() {
            @Override
            public void run() {
                AlertDialog.Builder builder = new AlertDialog.Builder(activity);
                builder.setTitle("Export Farmer Directory");
                builder.setMessage("Select directory export format:\n(Includes Summary, Saarthie & Normal Farmers)");

                builder.setPositiveButton("PDF Document", new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        dialog.dismiss();
                        new ExportTask(activity, true).execute();
                    }
                });

                builder.setNeutralButton("Excel (.xlsx)", new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        dialog.dismiss();
                        new ExportTask(activity, false).execute();
                    }
                });

                builder.setNegativeButton("Cancel", new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        dialog.dismiss();
                    }
                });

                builder.create().show();
            }
        });
    }

    private static class ExportTask extends AsyncTask<Void, Void, File> {
        private final Activity activity;
        private final boolean isPdf;
        private ProgressDialog progressDialog;
        private String errorMessage = null;
        private int totalExported = 0;

        ExportTask(Activity activity, boolean isPdf) {
            this.activity = activity;
            this.isPdf = isPdf;
        }

        @Override
        protected void onPreExecute() {
            super.onPreExecute();
            progressDialog = new ProgressDialog(activity);
            progressDialog.setTitle("Exporting Directory");
            progressDialog.setMessage("Extracting database and building " + (isPdf ? "PDF..." : "Excel file..."));
            progressDialog.setCancelable(false);
            progressDialog.show();
        }

        @Override
        protected File doInBackground(Void... voids) {
            try {
                ExportData data = loadFarmerData(activity);
                if (data == null) {
                    errorMessage = "Failed to open farmer database.";
                    return null;
                }

                totalExported = data.totalFarmers;
                if (data.saarthieList.isEmpty() && data.normalList.isEmpty()) {
                    errorMessage = "No farmer records found in database.";
                    return null;
                }

                File exportDir = getExportDirectory(activity);
                if (!exportDir.exists() && !exportDir.mkdirs()) {
                    errorMessage = "Failed to create directory: " + exportDir.getAbsolutePath();
                    return null;
                }

                String timestamp = new SimpleDateFormat("yyyyMMdd_HHmmss", Locale.getDefault()).format(new Date());
                if (isPdf) {
                    File outFile = new File(exportDir, "PMC_Farmer_Directory_" + timestamp + ".pdf");
                    generatePdf(activity, data, outFile);
                    return outFile;
                } else {
                    File outFile = new File(exportDir, "PMC_Farmer_Directory_" + timestamp + ".xlsx");
                    generateExcel(data, outFile);
                    return outFile;
                }
            } catch (Exception e) {
                Log.e(TAG, "Export error", e);
                errorMessage = e.getMessage();
                return null;
            }
        }

        @Override
        protected void onPostExecute(File resultFile) {
            if (progressDialog != null && progressDialog.isShowing()) {
                progressDialog.dismiss();
            }

            if (resultFile != null && resultFile.exists()) {
                Toast.makeText(activity, "Exported " + totalExported + " farmers successfully!", Toast.LENGTH_SHORT).show();
                shareFile(activity, resultFile, isPdf ? "application/pdf" : "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet");
            } else {
                String msg = errorMessage != null ? errorMessage : "Export failed. Please try again.";
                Toast.makeText(activity, msg, Toast.LENGTH_LONG).show();
            }
        }
    }

    private static File getExportDirectory(Context context) {
        File dir = null;
        try {
            dir = context.getExternalFilesDir(Environment.DIRECTORY_DOCUMENTS);
            if (dir == null) {
                dir = context.getExternalFilesDir(null);
            }
            if (dir != null) {
                dir = new File(dir, "Smartbook_Exports");
            }
        } catch (Throwable ignored) {}

        if (dir == null) {
            dir = new File(context.getFilesDir(), "Smartbook_Exports");
        }

        if (!dir.exists()) {
            dir.mkdirs();
        }
        return dir;
    }

    private static String decryptSafe(String val) {
        if (val == null) return "";
        val = val.trim();
        if (val.isEmpty() || "null".equalsIgnoreCase(val)) return "";
        try {
            Class<?> encClass = Class.forName("com.conceptglobal.pmc.utils.Encryption");
            Method decryptMethod = encClass.getMethod("decrypt", String.class);
            String decrypted = (String) decryptMethod.invoke(null, val);
            if (decrypted != null && !decrypted.trim().isEmpty() && !decrypted.equalsIgnoreCase("Empty")) {
                return decrypted.trim();
            }
        } catch (Throwable ignored) {}
        return val;
    }

    private static SQLiteDatabase getAppDatabase(Context context) {
        // 1. Official App Singleton: DataBaseHandler.getInstance().openDatabase()
        try {
            Class<?> dbHandlerClass = Class.forName("com.conceptglobal.pmc.database.DataBaseHandler");
            Method getInstanceMethod = dbHandlerClass.getMethod("getInstance");
            Object handler = getInstanceMethod.invoke(null);
            if (handler != null) {
                Method openDbMethod = handler.getClass().getMethod("openDatabase");
                SQLiteDatabase db = (SQLiteDatabase) openDbMethod.invoke(handler);
                if (db != null && db.isOpen()) {
                    Log.i(TAG, "Successfully acquired database from DataBaseHandler singleton.");
                    return db;
                }
            }
        } catch (Throwable t) {
            Log.w(TAG, "DataBaseHandler.openDatabase reflection attempt: " + t.getMessage());
        }

        // 2. DataBaseHandler.datapath static field
        try {
            Class<?> dbHandlerClass = Class.forName("com.conceptglobal.pmc.database.DataBaseHandler");
            Field datapathField = dbHandlerClass.getField("datapath");
            String datapath = (String) datapathField.get(null);
            if (datapath != null) {
                File f = new File(datapath);
                if (f.exists() && f.canRead()) {
                    Log.i(TAG, "Opening database from DataBaseHandler.datapath: " + datapath);
                    return SQLiteDatabase.openDatabase(f.getAbsolutePath(), null, SQLiteDatabase.OPEN_READONLY);
                }
            }
        } catch (Throwable t) {
            Log.w(TAG, "DataBaseHandler.datapath check attempt: " + t.getMessage());
        }

        // 3. FileUtils.getDataDir + ConstantDeclarations.getDatabasePath
        try {
            Class<?> fileUtilsClass = Class.forName("com.conceptglobal.pmc.utils.FileUtils");
            Method getDataDirMethod = fileUtilsClass.getMethod("getDataDir", Context.class);
            File dataDir = (File) getDataDirMethod.invoke(null, context);

            Class<?> constClass = Class.forName("com.conceptglobal.pmc.utils.ConstantDeclarations");
            Method getInstanceMethod = constClass.getMethod("getInstance");
            Object constInstance = getInstanceMethod.invoke(null);
            Method getDbPathMethod = constInstance.getClass().getMethod("getDatabasePath");
            String relPath = (String) getDbPathMethod.invoke(constInstance);

            if (dataDir != null && relPath != null) {
                File f = new File(dataDir, relPath);
                if (f.exists() && f.canRead()) {
                    Log.i(TAG, "Opening database from FileUtils + ConstantDeclarations: " + f.getAbsolutePath());
                    return SQLiteDatabase.openDatabase(f.getAbsolutePath(), null, SQLiteDatabase.OPEN_READONLY);
                }
            }
        } catch (Throwable t) {
            Log.w(TAG, "FileUtils/ConstantDeclarations check attempt: " + t.getMessage());
        }

        // 4. Candidate Locations across external and internal storage
        List<File> baseDirs = new ArrayList<>();
        if (context != null) {
            File ext = context.getExternalFilesDir(null);
            if (ext != null) {
                baseDirs.add(ext);
                if (ext.getParentFile() != null) baseDirs.add(ext.getParentFile());
            }
            File filesDir = context.getFilesDir();
            if (filesDir != null) {
                baseDirs.add(filesDir);
                if (filesDir.getParentFile() != null) baseDirs.add(filesDir.getParentFile());
            }
            String pkg = context.getPackageName();
            baseDirs.add(new File("/storage/emulated/0/Android/data/" + pkg + "/files"));
            baseDirs.add(new File("/sdcard/Android/data/" + pkg + "/files"));
            baseDirs.add(new File("/data/data/" + pkg));
        }

        String[] subPaths = new String[] {
            "PMCLivedeepakfertilizers/Database/pmc.sqlite",
            "PMCLivedeepakfertilizersMigration/Database/pmc.sqlite",
            "PMCPatch/Database/pmc.sqlite",
            "PMC/Database/pmc.sqlite",
            "Database/pmc.sqlite",
            "databases/pmc.sqlite",
            "pmc.sqlite"
        };

        for (File base : baseDirs) {
            if (base == null || !base.exists()) continue;
            for (String sub : subPaths) {
                File candidate = new File(base, sub);
                if (candidate.exists() && candidate.canRead()) {
                    Log.i(TAG, "Discovered database file at: " + candidate.getAbsolutePath());
                    try {
                        return SQLiteDatabase.openDatabase(candidate.getAbsolutePath(), null, SQLiteDatabase.OPEN_READONLY);
                    } catch (Throwable ignored) {}
                }
            }
        }

        // 5. Deep search in external directory
        if (context != null) {
            File ext = context.getExternalFilesDir(null);
            File found = findFileRecursive(ext, "pmc.sqlite", 4);
            if (found != null && found.canRead()) {
                Log.i(TAG, "Recursive search discovered database at: " + found.getAbsolutePath());
                try {
                    return SQLiteDatabase.openDatabase(found.getAbsolutePath(), null, SQLiteDatabase.OPEN_READONLY);
                } catch (Throwable ignored) {}
            }
        }

        Log.e(TAG, "Could not locate pmc.sqlite through any discovery method.");
        return null;
    }

    private static File findFileRecursive(File dir, String filename, int maxDepth) {
        if (dir == null || !dir.exists() || maxDepth < 0) return null;
        File target = new File(dir, filename);
        if (target.exists()) return target;
        File[] children = dir.listFiles();
        if (children != null) {
            for (File child : children) {
                if (child.isDirectory()) {
                    File found = findFileRecursive(child, filename, maxDepth - 1);
                    if (found != null) return found;
                }
            }
        }
        return null;
    }

    private static void closeAppDatabase(SQLiteDatabase db) {
        if (db == null) return;
        try {
            Class<?> dbHandlerClass = Class.forName("com.conceptglobal.pmc.database.DataBaseHandler");
            Method getInstanceMethod = dbHandlerClass.getMethod("getInstance");
            Object handler = getInstanceMethod.invoke(null);
            if (handler != null) {
                Method closeDbMethod = handler.getClass().getMethod("closeDatabase");
                closeDbMethod.invoke(handler);
                return;
            }
        } catch (Throwable ignored) {}

        try {
            if (db.isOpen()) {
                db.close();
            }
        } catch (Throwable ignored) {}
    }

    private static int getColIdx(Cursor c, String name) {
        if (c == null) return -1;
        for (int i = 0; i < c.getColumnCount(); i++) {
            if (name.equalsIgnoreCase(c.getColumnName(i))) {
                return i;
            }
        }
        return -1;
    }

    public static ExportData loadFarmerData(Context context) {
        ExportData exportData = new ExportData();
        SQLiteDatabase db = getAppDatabase(context);
        if (db == null) return null;

        Cursor cursor = null;
        try {
            try {
                cursor = db.rawQuery("SELECT * FROM FarmerMaster", null);
            } catch (Throwable t1) {
                try {
                    cursor = db.rawQuery("SELECT * FROM farmermaster", null);
                } catch (Throwable t2) {
                    Log.e(TAG, "Queries to FarmerMaster and farmermaster failed", t2);
                }
            }

            if (cursor != null && cursor.moveToFirst()) {
                int nameIdx = getColIdx(cursor, "FarmerName");
                int mobIdx = getColIdx(cursor, "Mobile");
                int vlgIdx = getColIdx(cursor, "VillageName");
                int activeIdx = getColIdx(cursor, "IsActive");
                int statusIdx = getColIdx(cursor, "Status");
                int saarthieIdx = getColIdx(cursor, "IsSaarthie");
                int saarthieIdIdx = getColIdx(cursor, "SaarthieFarmerID");
                int parentIdx = getColIdx(cursor, "ParentSaarthieFarmerID");
                int respondentIdx = getColIdx(cursor, "RespondentNo");

                Map<String, VillageSummaryItem> summaryMap = new HashMap<>();

                do {
                    // Check isActive
                    if (activeIdx >= 0) {
                        String act = cursor.getString(activeIdx);
                        if (act != null) {
                            String actTrim = act.trim();
                            if ("false".equalsIgnoreCase(actTrim) || "0".equals(actTrim)) {
                                continue;
                            }
                        }
                    }

                    // Check Status
                    if (statusIdx >= 0) {
                        String st = cursor.getString(statusIdx);
                        if (st != null) {
                            String stTrim = st.trim();
                            if ("0".equals(stTrim) || "5".equals(stTrim)) {
                                continue;
                            }
                        }
                    }

                    // Farmer Name (Decrypted)
                    String rawName = nameIdx >= 0 ? cursor.getString(nameIdx) : "";
                    String name = decryptSafe(rawName);
                    if (name.isEmpty() && respondentIdx >= 0) {
                        name = "Farmer #" + cursor.getString(respondentIdx);
                    }
                    if (name.isEmpty()) {
                        continue;
                    }

                    // Mobile (Decrypted)
                    String rawMob = mobIdx >= 0 ? cursor.getString(mobIdx) : "";
                    String mobile = decryptSafe(rawMob);

                    // Village Name (Decrypted)
                    String rawVlg = vlgIdx >= 0 ? cursor.getString(vlgIdx) : "";
                    String village = decryptSafe(rawVlg);
                    if (village.isEmpty() || "null".equalsIgnoreCase(village)) {
                        village = "Unknown";
                    }

                    // IsSaarthie check
                    String saarthieVal = saarthieIdx >= 0 ? cursor.getString(saarthieIdx) : null;
                    String saarthieIdVal = saarthieIdIdx >= 0 ? cursor.getString(saarthieIdIdx) : null;
                    String parentVal = parentIdx >= 0 ? cursor.getString(parentIdx) : null;

                    boolean isSaarthie = false;
                    if (saarthieVal != null) {
                        String sTrim = saarthieVal.trim();
                        if ("1".equals(sTrim) || "true".equalsIgnoreCase(sTrim) || "yes".equalsIgnoreCase(sTrim)) {
                            isSaarthie = true;
                        }
                    }
                    if (!isSaarthie && saarthieIdVal != null) {
                        String sId = saarthieIdVal.trim();
                        if (!sId.isEmpty() && !"0".equals(sId) && !"null".equalsIgnoreCase(sId)) {
                            isSaarthie = true;
                        }
                    }
                    if (!isSaarthie && parentVal != null) {
                        String pId = parentVal.trim();
                        if (!pId.isEmpty() && !"0".equals(pId) && !"null".equalsIgnoreCase(pId)) {
                            isSaarthie = true;
                        }
                    }

                    FarmerItem item = new FarmerItem();
                    item.name = name;
                    item.mobile = mobile;
                    item.village = village;
                    item.isSaarthie = isSaarthie;

                    if (isSaarthie) {
                        exportData.saarthieList.add(item);
                    } else {
                        exportData.normalList.add(item);
                    }

                    VillageSummaryItem sum = summaryMap.get(village);
                    if (sum == null) {
                        sum = new VillageSummaryItem();
                        sum.village = village;
                        summaryMap.put(village, sum);
                    }
                    if (isSaarthie) {
                        sum.saarthieCount++;
                    } else {
                        sum.normalCount++;
                    }
                    sum.totalCount++;

                } while (cursor.moveToNext());

                // Sort individual lists by Village ASC, then Name ASC
                Comparator<FarmerItem> farmerComp = new Comparator<FarmerItem>() {
                    @Override
                    public int compare(FarmerItem a, FarmerItem b) {
                        int vComp = a.village.compareToIgnoreCase(b.village);
                        if (vComp != 0) return vComp;
                        return a.name.compareToIgnoreCase(b.name);
                    }
                };
                Collections.sort(exportData.saarthieList, farmerComp);
                Collections.sort(exportData.normalList, farmerComp);

                exportData.summaryList = new ArrayList<>(summaryMap.values());
                Collections.sort(exportData.summaryList, new Comparator<VillageSummaryItem>() {
                    @Override
                    public int compare(VillageSummaryItem a, VillageSummaryItem b) {
                        return a.village.compareToIgnoreCase(b.village);
                    }
                });

                exportData.totalFarmers = exportData.saarthieList.size() + exportData.normalList.size();
                Log.i(TAG, "Loaded " + exportData.totalFarmers + " farmers (Saarthie: " 
                        + exportData.saarthieList.size() + ", Normal: " + exportData.normalList.size() + ")");
            }
        } catch (Exception e) {
            Log.e(TAG, "Error reading farmers from database", e);
        } finally {
            if (cursor != null) cursor.close();
            closeAppDatabase(db);
        }

        return exportData;
    }

    private static String cleanStr(String s) {
        return (s == null || "null".equalsIgnoreCase(s.trim())) ? "" : s.trim();
    }

    public static void generatePdf(Context context, ExportData data, File outputFile) throws Exception {
        PdfDocument document = new PdfDocument();

        final int PAGE_WIDTH = 595;
        final int PAGE_HEIGHT = 842;
        final int MARGIN_LEFT = 36;
        final int MARGIN_RIGHT = 559;
        final int MARGIN_TOP = 40;
        final int MARGIN_BOTTOM = 800;

        Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG);
        int pageNumber = 1;

        final int COLOR_PRIMARY = 0xFF004B87;
        final int COLOR_SECONDARY = 0xFF1E6091;
        final int COLOR_TEXT = 0xFF1A1A1A;
        final int COLOR_ZEBRA = 0xFFF7F9FC;
        final int COLOR_BORDER = 0xFFD1D5DB;

        // PAGE 1: TITLE & SUMMARY
        PdfDocument.PageInfo pageInfo = new PdfDocument.PageInfo.Builder(PAGE_WIDTH, PAGE_HEIGHT, pageNumber).create();
        PdfDocument.Page page = document.startPage(pageInfo);
        Canvas canvas = page.getCanvas();

        int y = MARGIN_TOP;

        // Corporate Header
        paint.setColor(COLOR_PRIMARY);
        paint.setTextSize(18);
        paint.setTypeface(Typeface.create(Typeface.DEFAULT, Typeface.BOLD));
        canvas.drawText("DEEPAK FERTILISERS AND PETROCHEMICALS", MARGIN_LEFT, y + 16, paint);

        paint.setColor(COLOR_SECONDARY);
        paint.setTextSize(14);
        paint.setTypeface(Typeface.create(Typeface.DEFAULT, Typeface.BOLD));
        canvas.drawText("PMC Farmer Directory & Executive Summary", MARGIN_LEFT, y + 36, paint);

        paint.setColor(0xFF666666);
        paint.setTextSize(9);
        paint.setTypeface(Typeface.create(Typeface.DEFAULT, Typeface.NORMAL));
        String generatedAt = new SimpleDateFormat("dd MMMM yyyy, hh:mm a", Locale.getDefault()).format(new Date());
        canvas.drawText("Generated on: " + generatedAt, MARGIN_LEFT, y + 52, paint);

        paint.setColor(COLOR_PRIMARY);
        paint.setStrokeWidth(2f);
        canvas.drawLine(MARGIN_LEFT, y + 62, MARGIN_RIGHT, y + 62, paint);
        y += 76;

        // Metadata block
        paint.setColor(0xFFE8EEF5);
        canvas.drawRect(MARGIN_LEFT, y, MARGIN_RIGHT, y + 42, paint);
        paint.setColor(COLOR_PRIMARY);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(1f);
        canvas.drawRect(MARGIN_LEFT, y, MARGIN_RIGHT, y + 42, paint);
        paint.setStyle(Paint.Style.FILL);

        paint.setColor(COLOR_TEXT);
        paint.setTextSize(10);
        paint.setTypeface(Typeface.create(Typeface.DEFAULT, Typeface.BOLD));
        canvas.drawText("Total Farmers: " + data.totalFarmers, MARGIN_LEFT + 12, y + 18, paint);
        canvas.drawText("Saarthie Farmers: " + data.saarthieList.size(), MARGIN_LEFT + 150, y + 18, paint);
        canvas.drawText("Normal Farmers: " + data.normalList.size(), MARGIN_LEFT + 320, y + 18, paint);
        canvas.drawText("Total Villages: " + data.summaryList.size(), MARGIN_LEFT + 12, y + 34, paint);
        y += 58;

        // Section Title: Executive Summary
        paint.setColor(COLOR_PRIMARY);
        paint.setTextSize(12);
        paint.setTypeface(Typeface.create(Typeface.DEFAULT, Typeface.BOLD));
        canvas.drawText("SECTION 1: VILLAGE-WISE SUMMARY", MARGIN_LEFT, y, paint);
        y += 8;

        // Summary Table Headers
        final int[] sumColX = {MARGIN_LEFT, MARGIN_LEFT + 35, MARGIN_LEFT + 250, MARGIN_LEFT + 345, MARGIN_LEFT + 435, MARGIN_RIGHT};
        y = drawTableHeader(canvas, paint, y, sumColX, new String[]{"Sl", "Village Name", "Saarthie", "Normal", "Total"});

        int sumSl = 1;
        int grandSaarthie = 0;
        int grandNormal = 0;
        int grandTotal = 0;

        for (VillageSummaryItem item : data.summaryList) {
            if (y > MARGIN_BOTTOM - 40) {
                drawPageFooter(canvas, paint, pageNumber);
                document.finishPage(page);
                pageNumber++;
                pageInfo = new PdfDocument.PageInfo.Builder(PAGE_WIDTH, PAGE_HEIGHT, pageNumber).create();
                page = document.startPage(pageInfo);
                canvas = page.getCanvas();
                y = MARGIN_TOP;
                y = drawTableHeader(canvas, paint, y, sumColX, new String[]{"Sl", "Village Name", "Saarthie", "Normal", "Total"});
            }

            boolean isZebra = (sumSl % 2 == 0);
            if (isZebra) {
                paint.setColor(COLOR_ZEBRA);
                canvas.drawRect(MARGIN_LEFT, y, MARGIN_RIGHT, y + 18, paint);
            }

            paint.setColor(COLOR_TEXT);
            paint.setTextSize(9);
            paint.setTypeface(Typeface.create(Typeface.DEFAULT, Typeface.NORMAL));
            canvas.drawText(String.valueOf(sumSl), sumColX[0] + 6, y + 13, paint);
            canvas.drawText(truncate(item.village, 36), sumColX[1] + 6, y + 13, paint);
            canvas.drawText(String.valueOf(item.saarthieCount), sumColX[2] + 6, y + 13, paint);
            canvas.drawText(String.valueOf(item.normalCount), sumColX[3] + 6, y + 13, paint);
            canvas.drawText(String.valueOf(item.totalCount), sumColX[4] + 6, y + 13, paint);

            paint.setColor(COLOR_BORDER);
            paint.setStrokeWidth(0.5f);
            canvas.drawLine(MARGIN_LEFT, y + 18, MARGIN_RIGHT, y + 18, paint);

            grandSaarthie += item.saarthieCount;
            grandNormal += item.normalCount;
            grandTotal += item.totalCount;
            y += 18;
            sumSl++;
        }

        // Summary Grand Total Row
        paint.setColor(0xFFD9E2EC);
        canvas.drawRect(MARGIN_LEFT, y, MARGIN_RIGHT, y + 20, paint);
        paint.setColor(COLOR_PRIMARY);
        paint.setTextSize(9);
        paint.setTypeface(Typeface.create(Typeface.DEFAULT, Typeface.BOLD));
        canvas.drawText("GRAND TOTAL", sumColX[1] + 6, y + 14, paint);
        canvas.drawText(String.valueOf(grandSaarthie), sumColX[2] + 6, y + 14, paint);
        canvas.drawText(String.valueOf(grandNormal), sumColX[3] + 6, y + 14, paint);
        canvas.drawText(String.valueOf(grandTotal), sumColX[4] + 6, y + 14, paint);
        y += 26;

        drawPageFooter(canvas, paint, pageNumber);
        document.finishPage(page);

        // PART A & PART B DIRECTORY TABLES
        final int[] dirColX = {MARGIN_LEFT, MARGIN_LEFT + 35, MARGIN_LEFT + 185, MARGIN_LEFT + 375, MARGIN_RIGHT};
        final String[] dirHeaders = {"Sl", "Village", "Farmer Name", "Mobile Number"};

        // PART A: SAARTHIE FARMERS
        pageNumber++;
        pageInfo = new PdfDocument.PageInfo.Builder(PAGE_WIDTH, PAGE_HEIGHT, pageNumber).create();
        page = document.startPage(pageInfo);
        canvas = page.getCanvas();
        y = MARGIN_TOP;

        paint.setColor(COLOR_PRIMARY);
        paint.setTextSize(13);
        paint.setTypeface(Typeface.create(Typeface.DEFAULT, Typeface.BOLD));
        canvas.drawText("PART A: SAARTHIE FARMERS DIRECTORY (" + data.saarthieList.size() + ")", MARGIN_LEFT, y + 14, paint);
        y += 26;
        y = drawTableHeader(canvas, paint, y, dirColX, dirHeaders);

        int fSl = 1;
        for (FarmerItem farmer : data.saarthieList) {
            if (y > MARGIN_BOTTOM - 20) {
                drawPageFooter(canvas, paint, pageNumber);
                document.finishPage(page);
                pageNumber++;
                pageInfo = new PdfDocument.PageInfo.Builder(PAGE_WIDTH, PAGE_HEIGHT, pageNumber).create();
                page = document.startPage(pageInfo);
                canvas = page.getCanvas();
                y = MARGIN_TOP;
                y = drawTableHeader(canvas, paint, y, dirColX, dirHeaders);
            }

            if (fSl % 2 == 0) {
                paint.setColor(COLOR_ZEBRA);
                canvas.drawRect(MARGIN_LEFT, y, MARGIN_RIGHT, y + 18, paint);
            }

            paint.setColor(COLOR_TEXT);
            paint.setTextSize(9);
            paint.setTypeface(Typeface.create(Typeface.DEFAULT, Typeface.NORMAL));
            canvas.drawText(String.valueOf(fSl), dirColX[0] + 6, y + 13, paint);
            canvas.drawText(truncate(farmer.village, 22), dirColX[1] + 6, y + 13, paint);
            canvas.drawText(truncate(farmer.name, 28), dirColX[2] + 6, y + 13, paint);
            canvas.drawText(farmer.mobile, dirColX[3] + 6, y + 13, paint);

            paint.setColor(COLOR_BORDER);
            paint.setStrokeWidth(0.5f);
            canvas.drawLine(MARGIN_LEFT, y + 18, MARGIN_RIGHT, y + 18, paint);

            y += 18;
            fSl++;
        }

        drawPageFooter(canvas, paint, pageNumber);
        document.finishPage(page);

        // PART B: REGULAR / NORMAL FARMERS
        pageNumber++;
        pageInfo = new PdfDocument.PageInfo.Builder(PAGE_WIDTH, PAGE_HEIGHT, pageNumber).create();
        page = document.startPage(pageInfo);
        canvas = page.getCanvas();
        y = MARGIN_TOP;

        paint.setColor(COLOR_PRIMARY);
        paint.setTextSize(13);
        paint.setTypeface(Typeface.create(Typeface.DEFAULT, Typeface.BOLD));
        canvas.drawText("PART B: REGULAR / NORMAL FARMERS DIRECTORY (" + data.normalList.size() + ")", MARGIN_LEFT, y + 14, paint);
        y += 26;
        y = drawTableHeader(canvas, paint, y, dirColX, dirHeaders);

        fSl = 1;
        for (FarmerItem farmer : data.normalList) {
            if (y > MARGIN_BOTTOM - 20) {
                drawPageFooter(canvas, paint, pageNumber);
                document.finishPage(page);
                pageNumber++;
                pageInfo = new PdfDocument.PageInfo.Builder(PAGE_WIDTH, PAGE_HEIGHT, pageNumber).create();
                page = document.startPage(pageInfo);
                canvas = page.getCanvas();
                y = MARGIN_TOP;
                y = drawTableHeader(canvas, paint, y, dirColX, dirHeaders);
            }

            if (fSl % 2 == 0) {
                paint.setColor(COLOR_ZEBRA);
                canvas.drawRect(MARGIN_LEFT, y, MARGIN_RIGHT, y + 18, paint);
            }

            paint.setColor(COLOR_TEXT);
            paint.setTextSize(9);
            paint.setTypeface(Typeface.create(Typeface.DEFAULT, Typeface.NORMAL));
            canvas.drawText(String.valueOf(fSl), dirColX[0] + 6, y + 13, paint);
            canvas.drawText(truncate(farmer.village, 22), dirColX[1] + 6, y + 13, paint);
            canvas.drawText(truncate(farmer.name, 28), dirColX[2] + 6, y + 13, paint);
            canvas.drawText(farmer.mobile, dirColX[3] + 6, y + 13, paint);

            paint.setColor(COLOR_BORDER);
            paint.setStrokeWidth(0.5f);
            canvas.drawLine(MARGIN_LEFT, y + 18, MARGIN_RIGHT, y + 18, paint);

            y += 18;
            fSl++;
        }

        drawPageFooter(canvas, paint, pageNumber);
        document.finishPage(page);

        FileOutputStream fos = new FileOutputStream(outputFile);
        document.writeTo(fos);
        fos.close();
        document.close();
    }

    private static int drawTableHeader(Canvas canvas, Paint paint, int y, int[] colX, String[] headers) {
        paint.setColor(0xFF004B87);
        canvas.drawRect(colX[0], y, colX[colX.length - 1], y + 22, paint);

        paint.setColor(Color.WHITE);
        paint.setTextSize(9);
        paint.setTypeface(Typeface.create(Typeface.DEFAULT, Typeface.BOLD));

        for (int i = 0; i < headers.length; i++) {
            canvas.drawText(headers[i], colX[i] + 6, y + 15, paint);
        }

        return y + 22;
    }

    private static void drawPageFooter(Canvas canvas, Paint paint, int pageNumber) {
        paint.setColor(0xFF9E9E9E);
        paint.setTextSize(8);
        paint.setTypeface(Typeface.create(Typeface.DEFAULT, Typeface.NORMAL));
        canvas.drawText("PMC Smartbook - Deepak Fertilisers and Petrochemicals Corp.", 36, 820, paint);
        String pStr = "Page " + pageNumber;
        canvas.drawText(pStr, 559 - paint.measureText(pStr), 820, paint);
    }

    private static String truncate(String text, int maxLen) {
        if (text == null) return "";
        if (text.length() <= maxLen) return text;
        return text.substring(0, maxLen - 2) + "..";
    }

    public static void generateExcel(ExportData data, File outputFile) throws Exception {
        ZipOutputStream zos = new ZipOutputStream(new FileOutputStream(outputFile));

        // 1. [Content_Types].xml
        zos.putNextEntry(new ZipEntry("[Content_Types].xml"));
        writeZipString(zos,
                "<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?>\n" +
                "<Types xmlns=\"http://schemas.openxmlformats.org/package/2006/content-types\">\n" +
                "  <Default Extension=\"rels\" ContentType=\"application/vnd.openxmlformats-package.relationships+xml\"/>\n" +
                "  <Default Extension=\"xml\" ContentType=\"application/xml\"/>\n" +
                "  <Override PartName=\"/xl/workbook.xml\" ContentType=\"application/vnd.openxmlformats-officedocument.spreadsheetml.sheet.main+xml\"/>\n" +
                "  <Override PartName=\"/xl/styles.xml\" ContentType=\"application/vnd.openxmlformats-officedocument.spreadsheetml.styles+xml\"/>\n" +
                "  <Override PartName=\"/xl/worksheets/sheet1.xml\" ContentType=\"application/vnd.openxmlformats-officedocument.spreadsheetml.worksheet+xml\"/>\n" +
                "  <Override PartName=\"/xl/worksheets/sheet2.xml\" ContentType=\"application/vnd.openxmlformats-officedocument.spreadsheetml.worksheet+xml\"/>\n" +
                "  <Override PartName=\"/xl/worksheets/sheet3.xml\" ContentType=\"application/vnd.openxmlformats-officedocument.spreadsheetml.worksheet+xml\"/>\n" +
                "</Types>");
        zos.closeEntry();

        // 2. _rels/.rels
        zos.putNextEntry(new ZipEntry("_rels/.rels"));
        writeZipString(zos,
                "<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?>\n" +
                "<Relationships xmlns=\"http://schemas.openxmlformats.org/package/2006/relationships\">\n" +
                "  <Relationship Id=\"rId1\" Type=\"http://schemas.openxmlformats.org/officeDocument/2006/relationships/officeDocument\" Target=\"xl/workbook.xml\"/>\n" +
                "</Relationships>");
        zos.closeEntry();

        // 3. xl/_rels/workbook.xml.rels
        zos.putNextEntry(new ZipEntry("xl/_rels/workbook.xml.rels"));
        writeZipString(zos,
                "<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?>\n" +
                "<Relationships xmlns=\"http://schemas.openxmlformats.org/package/2006/relationships\">\n" +
                "  <Relationship Id=\"rId1\" Type=\"http://schemas.openxmlformats.org/officeDocument/2006/relationships/worksheet\" Target=\"worksheets/sheet1.xml\"/>\n" +
                "  <Relationship Id=\"rId2\" Type=\"http://schemas.openxmlformats.org/officeDocument/2006/relationships/worksheet\" Target=\"worksheets/sheet2.xml\"/>\n" +
                "  <Relationship Id=\"rId3\" Type=\"http://schemas.openxmlformats.org/officeDocument/2006/relationships/worksheet\" Target=\"worksheets/sheet3.xml\"/>\n" +
                "  <Relationship Id=\"rId4\" Type=\"http://schemas.openxmlformats.org/officeDocument/2006/relationships/styles\" Target=\"styles.xml\"/>\n" +
                "</Relationships>");
        zos.closeEntry();

        // 4. xl/workbook.xml
        zos.putNextEntry(new ZipEntry("xl/workbook.xml"));
        writeZipString(zos,
                "<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?>\n" +
                "<workbook xmlns=\"http://schemas.openxmlformats.org/spreadsheetml/2006/main\" xmlns:r=\"http://schemas.openxmlformats.org/officeDocument/2006/relationships\">\n" +
                "  <sheets>\n" +
                "    <sheet name=\"Village Summary\" sheetId=\"1\" r:id=\"rId1\"/>\n" +
                "    <sheet name=\"Saarthie Farmers\" sheetId=\"2\" r:id=\"rId2\"/>\n" +
                "    <sheet name=\"Normal Farmers\" sheetId=\"3\" r:id=\"rId3\"/>\n" +
                "  </sheets>\n" +
                "</workbook>");
        zos.closeEntry();

        // 5. xl/styles.xml
        zos.putNextEntry(new ZipEntry("xl/styles.xml"));
        writeZipString(zos,
                "<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?>\n" +
                "<styleSheet xmlns=\"http://schemas.openxmlformats.org/spreadsheetml/2006/main\">\n" +
                "  <fonts count=\"2\">\n" +
                "    <font><sz val=\"11\"/><color rgb=\"FF1A1A1A\"/><name val=\"Calibri\"/></font>\n" +
                "    <font><b/><sz val=\"11\"/><color rgb=\"FFFFFFFF\"/><name val=\"Calibri\"/></font>\n" +
                "  </fonts>\n" +
                "  <fills count=\"3\">\n" +
                "    <fill><patternFill patternType=\"none\"/></fill>\n" +
                "    <fill><patternFill patternType=\"gray125\"/></fill>\n" +
                "    <fill><patternFill patternType=\"solid\"><fgColor rgb=\"FF004B87\"/></patternFill></fill>\n" +
                "  </fills>\n" +
                "  <borders count=\"2\">\n" +
                "    <border><left/><right/><top/><bottom/></border>\n" +
                "    <border><left style=\"thin\"><color rgb=\"FFD1D5DB\"/></left><right style=\"thin\"><color rgb=\"FFD1D5DB\"/></right><top style=\"thin\"><color rgb=\"FFD1D5DB\"/></top><bottom style=\"thin\"><color rgb=\"FFD1D5DB\"/></bottom></border>\n" +
                "  </borders>\n" +
                "  <cellStyleXfs count=\"1\">\n" +
                "    <xf numFmtId=\"0\" fontId=\"0\" fillId=\"0\" borderId=\"0\"/>\n" +
                "  </cellStyleXfs>\n" +
                "  <cellXfs count=\"3\">\n" +
                "    <xf numFmtId=\"0\" fontId=\"0\" fillId=\"0\" borderId=\"1\" xfId=\"0\" applyBorder=\"1\"/>\n" +
                "    <xf numFmtId=\"0\" fontId=\"1\" fillId=\"2\" borderId=\"1\" xfId=\"0\" applyFont=\"1\" applyFill=\"1\" applyBorder=\"1\"/>\n" +
                "    <xf numFmtId=\"0\" fontId=\"0\" fillId=\"0\" borderId=\"1\" xfId=\"0\" applyBorder=\"1\"/>\n" +
                "  </cellXfs>\n" +
                "</styleSheet>");
        zos.closeEntry();

        // 6. xl/worksheets/sheet1.xml (Village Summary)
        zos.putNextEntry(new ZipEntry("xl/worksheets/sheet1.xml"));
        StringBuilder s1 = new StringBuilder();
        s1.append("<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?>\n");
        s1.append("<worksheet xmlns=\"http://schemas.openxmlformats.org/spreadsheetml/2006/main\">\n");
        s1.append("  <cols>\n");
        s1.append("    <col min=\"1\" max=\"1\" width=\"8\" customWidth=\"1\"/>\n");
        s1.append("    <col min=\"2\" max=\"2\" width=\"30\" customWidth=\"1\"/>\n");
        s1.append("    <col min=\"3\" max=\"3\" width=\"18\" customWidth=\"1\"/>\n");
        s1.append("    <col min=\"4\" max=\"4\" width=\"18\" customWidth=\"1\"/>\n");
        s1.append("    <col min=\"5\" max=\"5\" width=\"18\" customWidth=\"1\"/>\n");
        s1.append("  </cols>\n");
        s1.append("  <sheetData>\n");

        s1.append("    <row r=\"1\">\n");
        appendStrCell(s1, "A1", "Sl No.", 1);
        appendStrCell(s1, "B1", "Village Name", 1);
        appendStrCell(s1, "C1", "Saarthie Farmers", 1);
        appendStrCell(s1, "D1", "Normal Farmers", 1);
        appendStrCell(s1, "E1", "Total Farmers", 1);
        s1.append("    </row>\n");

        int r = 2;
        int totalS = 0, totalN = 0, totalAll = 0;
        for (VillageSummaryItem v : data.summaryList) {
            s1.append("    <row r=\"").append(r).append("\">\n");
            appendNumCell(s1, "A" + r, (r - 1), 0);
            appendStrCell(s1, "B" + r, v.village, 0);
            appendNumCell(s1, "C" + r, v.saarthieCount, 0);
            appendNumCell(s1, "D" + r, v.normalCount, 0);
            appendNumCell(s1, "E" + r, v.totalCount, 0);
            s1.append("    </row>\n");

            totalS += v.saarthieCount;
            totalN += v.normalCount;
            totalAll += v.totalCount;
            r++;
        }

        s1.append("    <row r=\"").append(r).append("\">\n");
        appendStrCell(s1, "A" + r, "", 1);
        appendStrCell(s1, "B" + r, "GRAND TOTAL", 1);
        appendNumCell(s1, "C" + r, totalS, 1);
        appendNumCell(s1, "D" + r, totalN, 1);
        appendNumCell(s1, "E" + r, totalAll, 1);
        s1.append("    </row>\n");

        s1.append("  </sheetData>\n</worksheet>");
        writeZipString(zos, s1.toString());
        zos.closeEntry();

        // 7. xl/worksheets/sheet2.xml (Saarthie Farmers)
        zos.putNextEntry(new ZipEntry("xl/worksheets/sheet2.xml"));
        writeFarmerSheet(zos, data.saarthieList);
        zos.closeEntry();

        // 8. xl/worksheets/sheet3.xml (Normal Farmers)
        zos.putNextEntry(new ZipEntry("xl/worksheets/sheet3.xml"));
        writeFarmerSheet(zos, data.normalList);
        zos.closeEntry();

        zos.finish();
        zos.close();
    }

    private static void writeFarmerSheet(ZipOutputStream zos, List<FarmerItem> list) throws Exception {
        StringBuilder sb = new StringBuilder();
        sb.append("<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?>\n");
        sb.append("<worksheet xmlns=\"http://schemas.openxmlformats.org/spreadsheetml/2006/main\">\n");
        sb.append("  <cols>\n");
        sb.append("    <col min=\"1\" max=\"1\" width=\"8\" customWidth=\"1\"/>\n");
        sb.append("    <col min=\"2\" max=\"2\" width=\"28\" customWidth=\"1\"/>\n");
        sb.append("    <col min=\"3\" max=\"3\" width=\"32\" customWidth=\"1\"/>\n");
        sb.append("    <col min=\"4\" max=\"4\" width=\"20\" customWidth=\"1\"/>\n");
        sb.append("  </cols>\n");
        sb.append("  <sheetData>\n");

        sb.append("    <row r=\"1\">\n");
        appendStrCell(sb, "A1", "Sl No.", 1);
        appendStrCell(sb, "B1", "Village", 1);
        appendStrCell(sb, "C1", "Farmer Name", 1);
        appendStrCell(sb, "D1", "Mobile Number", 1);
        sb.append("    </row>\n");

        int r = 2;
        for (FarmerItem f : list) {
            sb.append("    <row r=\"").append(r).append("\">\n");
            appendNumCell(sb, "A" + r, (r - 1), 0);
            appendStrCell(sb, "B" + r, f.village, 0);
            appendStrCell(sb, "C" + r, f.name, 0);
            appendStrCell(sb, "D" + r, f.mobile, 0);
            sb.append("    </row>\n");
            r++;
        }

        sb.append("  </sheetData>\n</worksheet>");
        writeZipString(zos, sb.toString());
    }

    private static void appendStrCell(StringBuilder sb, String ref, String text, int style) {
        sb.append("      <c r=\"").append(ref).append("\" t=\"inlineStr\"");
        if (style > 0) sb.append(" s=\"").append(style).append("\"");
        sb.append("><is><t>").append(escapeXml(text)).append("</t></is></c>\n");
    }

    private static void appendNumCell(StringBuilder sb, String ref, int val, int style) {
        sb.append("      <c r=\"").append(ref).append("\"");
        if (style > 0) sb.append(" s=\"").append(style).append("\"");
        sb.append("><v>").append(val).append("</v></c>\n");
    }

    private static String escapeXml(String s) {
        if (s == null) return "";
        return s.replace("&", "&amp;")
                .replace("<", "&lt;")
                .replace(">", "&gt;")
                .replace("\"", "&quot;")
                .replace("'", "&apos;");
    }

    private static void writeZipString(ZipOutputStream zos, String content) throws Exception {
        byte[] bytes = content.getBytes(StandardCharsets.UTF_8);
        zos.write(bytes, 0, bytes.length);
    }

    public static void shareFile(Activity activity, File file, String mimeType) {
        try {
            Uri contentUri;
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.N) {
                String authority = activity.getPackageName() + ".provider";
                contentUri = FileProvider.getUriForFile(activity, authority, file);
            } else {
                contentUri = Uri.fromFile(file);
            }

            Intent shareIntent = new Intent(Intent.ACTION_SEND);
            shareIntent.setType(mimeType);
            shareIntent.putExtra(Intent.EXTRA_STREAM, contentUri);
            shareIntent.putExtra(Intent.EXTRA_SUBJECT, file.getName());
            shareIntent.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION | Intent.FLAG_GRANT_WRITE_URI_PERMISSION);
            shareIntent.setClipData(ClipData.newRawUri("", contentUri));

            activity.startActivity(Intent.createChooser(shareIntent, "Share Farmer Directory"));
        } catch (Exception e) {
            Log.e(TAG, "Error sharing file", e);
            try {
                StrictMode.VmPolicy.Builder builder = new StrictMode.VmPolicy.Builder();
                StrictMode.setVmPolicy(builder.build());
                Intent viewIntent = new Intent(Intent.ACTION_VIEW);
                viewIntent.setDataAndType(Uri.fromFile(file), mimeType);
                viewIntent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_GRANT_READ_URI_PERMISSION);
                activity.startActivity(viewIntent);
            } catch (Exception ex) {
                Toast.makeText(activity, "Saved to Documents/Smartbook_Exports: " + file.getName(), Toast.LENGTH_LONG).show();
            }
        }
    }
}

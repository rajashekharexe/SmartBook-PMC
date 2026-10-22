package com.conceptglobal.pmc.fotracker.database;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.database.DataBaseHandler;
import com.conceptglobal.pmc.fotracker.ConstantDeclarations;
import com.conceptglobal.pmc.fotracker.model.FoTrackerTransactionDetails;
import com.conceptglobal.pmc.fotracker.util.SharedPrefManager;
import com.conceptglobal.pmc.utils.PLog;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.List;

/* loaded from: classes.dex */
public class GetDataFromDB {
    private static final String TAG = "GetDataFromDB";
    private static DataBaseHandler dbInstance = DataBaseHandler.getInstance();
    private static GetDataFromDB instance;
    private static SQLiteDatabase sqliteDatabase;
    private String message = "Exception";

    public static void checkForDBTblUpdate(String[] strArr) {
        try {
            for (String str : strArr) {
                getInstance().executeRawQueryInDB(str);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void getFOLables(String str) throws Exception {
        Hashtable<String, String> hashtable = new Hashtable<>();
        Cursor cursor = null;
        try {
            try {
                SQLiteDatabase openDatabase = dbInstance.openDatabase();
                sqliteDatabase = openDatabase;
                cursor = openDatabase.rawQuery(str, null);
                if (cursor != null && cursor.getCount() > 0 && cursor.moveToFirst()) {
                    do {
                        try {
                            hashtable.put(cursor.getString(0), cursor.getString(1));
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    } while (cursor.moveToNext());
                }
            } catch (Exception e2) {
                throw e2;
            }
        } finally {
            if (cursor != null) {
                cursor.close();
            }
            ConstantsPMC.getInstance().setHtFoLabels(hashtable);
            dbInstance.closeDatabase();
        }
    }

    public String getValue(String str, Context context) {
        String str2 = ConstantsPMC.getInstance().getHtFoLabels().get(str);
        if (str2 != null) {
            return str2;
        }
        try {
            GetDataFromDB getDataFromDB = getInstance();
            Queries queries = Queries.getInstance();
            new SharedPrefManager();
            getDataFromDB.getFOLables(queries.getStrings(SharedPrefManager.getPMCLanguage(context)));
            return ConstantsPMC.getInstance().getHtFoLabels().get(str);
        } catch (Exception e) {
            e.printStackTrace();
            e.printStackTrace();
            return str2;
        }
    }

    public FoTrackerTransactionDetails getLastTransactionData() throws Exception {
        FoTrackerTransactionDetails foTrackerTransactionDetails = new FoTrackerTransactionDetails();
        new ArrayList();
        Cursor cursor = null;
        try {
            try {
                SQLiteDatabase openDatabase = dbInstance.openDatabase();
                sqliteDatabase = openDatabase;
                Cursor rawQuery = openDatabase.rawQuery(Queries.getInstance().getTrackId(), null);
                int i = 0;
                if (rawQuery != null) {
                    try {
                        if (rawQuery.moveToFirst()) {
                            i = rawQuery.getInt(0);
                        }
                    } catch (Exception e) {
                        throw e;
                    } catch (Throwable th) {
                        th = th;
                        cursor = rawQuery;
                        if (cursor != null) {
                            cursor.close();
                        }
                        dbInstance.closeDatabase();
                        throw th;
                    }
                }
                Cursor rawQuery2 = sqliteDatabase.rawQuery("select TrackId,StartDate,EndDate from FoTrackerHeader where TrackId = " + i, null);
                if (rawQuery2 != null && rawQuery2.getCount() > 0 && rawQuery2.moveToFirst()) {
                    do {
                        try {
                            foTrackerTransactionDetails.setTrackerId(rawQuery2.getInt(rawQuery2.getColumnIndex("TrackId")));
                            foTrackerTransactionDetails.setStartTime(rawQuery2.getString(rawQuery2.getColumnIndex("StartDate")));
                            foTrackerTransactionDetails.setEndTime(rawQuery2.getString(rawQuery2.getColumnIndex("EndDate")));
                        } catch (Exception e2) {
                            PLog.e(TAG, e2);
                        }
                    } while (rawQuery2.moveToNext());
                }
                if (rawQuery2 != null) {
                    rawQuery2.close();
                }
                dbInstance.closeDatabase();
                return foTrackerTransactionDetails;
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e3) {
            throw e3;
        }
    }

    public static int getLatLondMandatory(String str) {
        int intValue = ConstantDeclarations.Enumaration.mRequestType0.value().intValue();
        Cursor cursor = null;
        try {
            try {
                SQLiteDatabase openDatabase = dbInstance.openDatabase();
                sqliteDatabase = openDatabase;
                cursor = openDatabase.rawQuery(str, null);
                if (cursor != null && cursor.getCount() > 0 && cursor.moveToFirst()) {
                    do {
                        try {
                            intValue = cursor.getInt(ConstantDeclarations.Enumaration.mRequestType0.value().intValue());
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    } while (cursor.moveToNext());
                }
                return intValue;
            } catch (Exception e2) {
                throw e2;
            }
        } finally {
            if (cursor != null) {
                cursor.close();
            }
            dbInstance.closeDatabase();
        }
    }

    public static GetDataFromDB getInstance() {
        Log.e("DbInstatnce", "---created");
        if (instance == null) {
            instance = new GetDataFromDB();
        }
        return instance;
    }

    public boolean executeRawQuery(String str) throws Exception {
        try {
            executeRawQueryInDB(str);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean executeRawQueryForExpiry(String str) throws Exception {
        try {
            executeRawQueryInDB(str);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            throw e;
        }
    }

    public synchronized void executeRawQueryInDB(String str) throws Exception {
        try {
            try {
                SQLiteDatabase openDatabase = dbInstance.openDatabase();
                sqliteDatabase = openDatabase;
                if (openDatabase != null) {
                    openDatabase.execSQL(str);
                }
            } catch (Exception e) {
                throw e;
            }
        } finally {
            dbInstance.closeDatabase();
        }
    }

    public synchronized void executeRawQueryOnDBInLoop(String str, SQLiteDatabase sQLiteDatabase) throws Exception {
        if (sQLiteDatabase != null) {
            try {
                sQLiteDatabase.execSQL(str);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x001f, code lost:
    
        if (r0 != null) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0034, code lost:
    
        com.conceptglobal.pmc.fotracker.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0039, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0031, code lost:
    
        r0.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x002f, code lost:
    
        if (r0 == null) goto L20;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int getTrainingORLive() {
        /*
            r4 = this;
            r0 = 0
            r1 = -1
            com.conceptglobal.pmc.database.DataBaseHandler r2 = com.conceptglobal.pmc.fotracker.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L22 java.lang.Exception -> L2e
            android.database.sqlite.SQLiteDatabase r2 = r2.openDatabase()     // Catch: java.lang.Throwable -> L22 java.lang.Exception -> L2e
            com.conceptglobal.pmc.fotracker.database.GetDataFromDB.sqliteDatabase = r2     // Catch: java.lang.Throwable -> L22 java.lang.Exception -> L2e
            if (r2 == 0) goto L1f
            java.lang.String r3 = "SELECT itemValue from ConfigurableLookup where itemKey='isTrainingORLive'"
            android.database.Cursor r0 = r2.rawQuery(r3, r0)     // Catch: java.lang.Throwable -> L22 java.lang.Exception -> L2e
            if (r0 == 0) goto L1f
            boolean r2 = r0.moveToFirst()     // Catch: java.lang.Throwable -> L22 java.lang.Exception -> L2e
            if (r2 == 0) goto L1f
            r2 = 0
            int r1 = r0.getInt(r2)     // Catch: java.lang.Throwable -> L22 java.lang.Exception -> L2e
        L1f:
            if (r0 == 0) goto L34
            goto L31
        L22:
            r1 = move-exception
            if (r0 == 0) goto L28
            r0.close()
        L28:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.fotracker.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            throw r1
        L2e:
            if (r0 == 0) goto L34
        L31:
            r0.close()
        L34:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.fotracker.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.fotracker.database.GetDataFromDB.getTrainingORLive():int");
    }

    public Cursor getCursor(String str) {
        return sqliteDatabase.rawQuery(str, null);
    }

    public int getcount(String str) throws Exception {
        int intValue = ConstantDeclarations.Enumaration.mRequestType0.value().intValue();
        Cursor cursor = null;
        try {
            try {
                SQLiteDatabase openDatabase = dbInstance.openDatabase();
                sqliteDatabase = openDatabase;
                cursor = openDatabase.rawQuery(str, null);
                if (cursor != null && cursor.getCount() > 0 && cursor.moveToFirst()) {
                    do {
                        intValue = cursor.getInt(ConstantDeclarations.Enumaration.mRequestType0.value().intValue());
                    } while (cursor.moveToNext());
                }
                return intValue;
            } catch (Exception e) {
                throw e;
            }
        } finally {
            if (cursor != null) {
                cursor.close();
            }
            dbInstance.closeDatabase();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:23:0x003b  */
    /* JADX WARN: Type inference failed for: r4v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v5, types: [android.database.Cursor] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String getSingleValue(java.lang.String r4) throws java.lang.Exception {
        /*
            r3 = this;
            r0 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r1 = com.conceptglobal.pmc.fotracker.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L2e java.lang.Exception -> L33
            android.database.sqlite.SQLiteDatabase r1 = r1.openDatabase()     // Catch: java.lang.Throwable -> L2e java.lang.Exception -> L33
            com.conceptglobal.pmc.fotracker.database.GetDataFromDB.sqliteDatabase = r1     // Catch: java.lang.Throwable -> L2e java.lang.Exception -> L33
            android.database.Cursor r4 = r1.rawQuery(r4, r0)     // Catch: java.lang.Throwable -> L2e java.lang.Exception -> L33
            if (r4 == 0) goto L23
            boolean r1 = r4.moveToFirst()     // Catch: java.lang.Exception -> L21 java.lang.Throwable -> L38
            if (r1 == 0) goto L23
        L15:
            r0 = 0
            java.lang.String r0 = r4.getString(r0)     // Catch: java.lang.Exception -> L21 java.lang.Throwable -> L38
            boolean r1 = r4.moveToNext()     // Catch: java.lang.Exception -> L21 java.lang.Throwable -> L38
            if (r1 != 0) goto L15
            goto L23
        L21:
            r0 = move-exception
            goto L37
        L23:
            if (r4 == 0) goto L28
            r4.close()
        L28:
            com.conceptglobal.pmc.database.DataBaseHandler r4 = com.conceptglobal.pmc.fotracker.database.GetDataFromDB.dbInstance
            r4.closeDatabase()
            return r0
        L2e:
            r4 = move-exception
            r2 = r0
            r0 = r4
            r4 = r2
            goto L39
        L33:
            r4 = move-exception
            r2 = r0
            r0 = r4
            r4 = r2
        L37:
            throw r0     // Catch: java.lang.Throwable -> L38
        L38:
            r0 = move-exception
        L39:
            if (r4 == 0) goto L3e
            r4.close()
        L3e:
            com.conceptglobal.pmc.database.DataBaseHandler r4 = com.conceptglobal.pmc.fotracker.database.GetDataFromDB.dbInstance
            r4.closeDatabase()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.fotracker.database.GetDataFromDB.getSingleValue(java.lang.String):java.lang.String");
    }

    public int getIntValue(String str) throws Exception {
        int i;
        Cursor cursor = null;
        try {
            try {
                SQLiteDatabase openDatabase = dbInstance.openDatabase();
                sqliteDatabase = openDatabase;
                cursor = openDatabase.rawQuery(str, null);
                int i2 = 0;
                if (cursor != null && cursor.moveToFirst()) {
                    do {
                        i = cursor.getInt(0);
                    } while (cursor.moveToNext());
                    i2 = i;
                }
                return i2;
            } catch (Exception e) {
                throw e;
            }
        } finally {
            if (cursor != null) {
                cursor.close();
            }
            dbInstance.closeDatabase();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:23:0x003b  */
    /* JADX WARN: Type inference failed for: r4v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v5, types: [android.database.Cursor] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String getStringValue(java.lang.String r4) throws java.lang.Exception {
        /*
            r3 = this;
            r0 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r1 = com.conceptglobal.pmc.fotracker.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L2e java.lang.Exception -> L33
            android.database.sqlite.SQLiteDatabase r1 = r1.openDatabase()     // Catch: java.lang.Throwable -> L2e java.lang.Exception -> L33
            com.conceptglobal.pmc.fotracker.database.GetDataFromDB.sqliteDatabase = r1     // Catch: java.lang.Throwable -> L2e java.lang.Exception -> L33
            android.database.Cursor r4 = r1.rawQuery(r4, r0)     // Catch: java.lang.Throwable -> L2e java.lang.Exception -> L33
            if (r4 == 0) goto L23
            boolean r1 = r4.moveToFirst()     // Catch: java.lang.Exception -> L21 java.lang.Throwable -> L38
            if (r1 == 0) goto L23
        L15:
            r0 = 0
            java.lang.String r0 = r4.getString(r0)     // Catch: java.lang.Exception -> L21 java.lang.Throwable -> L38
            boolean r1 = r4.moveToNext()     // Catch: java.lang.Exception -> L21 java.lang.Throwable -> L38
            if (r1 != 0) goto L15
            goto L23
        L21:
            r0 = move-exception
            goto L37
        L23:
            if (r4 == 0) goto L28
            r4.close()
        L28:
            com.conceptglobal.pmc.database.DataBaseHandler r4 = com.conceptglobal.pmc.fotracker.database.GetDataFromDB.dbInstance
            r4.closeDatabase()
            return r0
        L2e:
            r4 = move-exception
            r2 = r0
            r0 = r4
            r4 = r2
            goto L39
        L33:
            r4 = move-exception
            r2 = r0
            r0 = r4
            r4 = r2
        L37:
            throw r0     // Catch: java.lang.Throwable -> L38
        L38:
            r0 = move-exception
        L39:
            if (r4 == 0) goto L3e
            r4.close()
        L3e:
            com.conceptglobal.pmc.database.DataBaseHandler r4 = com.conceptglobal.pmc.fotracker.database.GetDataFromDB.dbInstance
            r4.closeDatabase()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.fotracker.database.GetDataFromDB.getStringValue(java.lang.String):java.lang.String");
    }

    public List<String> getList(String str) throws Exception {
        ArrayList arrayList = new ArrayList();
        Cursor cursor = null;
        try {
            try {
                SQLiteDatabase openDatabase = dbInstance.openDatabase();
                sqliteDatabase = openDatabase;
                cursor = openDatabase.rawQuery(str, null);
                if (cursor != null && cursor.getCount() > 0 && cursor.moveToFirst()) {
                    do {
                        try {
                            arrayList.add(cursor.getString(ConstantDeclarations.Enumaration.mRequestType0.value().intValue()));
                        } catch (Exception e) {
                            throw e;
                        }
                    } while (cursor.moveToNext());
                }
                return arrayList;
            } finally {
                if (cursor != null) {
                    cursor.close();
                }
                dbInstance.closeDatabase();
            }
        } catch (Exception e2) {
            throw e2;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x002b, code lost:
    
        if (r0 != null) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x003c, code lost:
    
        com.conceptglobal.pmc.fotracker.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0041, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0039, code lost:
    
        r0.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0037, code lost:
    
        if (r0 == null) goto L18;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.database.Cursor getLocationData() {
        /*
            r3 = this;
            r0 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r1 = com.conceptglobal.pmc.fotracker.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L2e java.lang.Exception -> L30
            android.database.sqlite.SQLiteDatabase r1 = r1.openDatabase()     // Catch: java.lang.Throwable -> L2e java.lang.Exception -> L30
            com.conceptglobal.pmc.fotracker.database.GetDataFromDB.sqliteDatabase = r1     // Catch: java.lang.Throwable -> L2e java.lang.Exception -> L30
            com.conceptglobal.pmc.fotracker.database.Queries r2 = com.conceptglobal.pmc.fotracker.database.Queries.getInstance()     // Catch: java.lang.Throwable -> L2e java.lang.Exception -> L30
            java.lang.String r2 = r2.getAllLocation()     // Catch: java.lang.Throwable -> L2e java.lang.Exception -> L30
            android.database.Cursor r0 = r1.rawQuery(r2, r0)     // Catch: java.lang.Throwable -> L2e java.lang.Exception -> L30
            if (r0 == 0) goto L24
            int r1 = r0.getCount()     // Catch: java.lang.Throwable -> L2e java.lang.Exception -> L30
            if (r1 <= 0) goto L24
            boolean r1 = r0.moveToFirst()     // Catch: java.lang.Throwable -> L2e java.lang.Exception -> L30
            if (r1 == 0) goto L24
            goto L2b
        L24:
            java.lang.String r1 = "Curosr"
            java.lang.String r2 = "empty"
            android.util.Log.d(r1, r2)     // Catch: java.lang.Throwable -> L2e java.lang.Exception -> L30
        L2b:
            if (r0 == 0) goto L3c
            goto L39
        L2e:
            r1 = move-exception
            goto L42
        L30:
            java.lang.String r1 = "Exception"
            java.lang.String r2 = "Error"
            android.util.Log.d(r1, r2)     // Catch: java.lang.Throwable -> L2e
            if (r0 == 0) goto L3c
        L39:
            r0.close()
        L3c:
            com.conceptglobal.pmc.database.DataBaseHandler r1 = com.conceptglobal.pmc.fotracker.database.GetDataFromDB.dbInstance
            r1.closeDatabase()
            return r0
        L42:
            if (r0 == 0) goto L47
            r0.close()
        L47:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.fotracker.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.fotracker.database.GetDataFromDB.getLocationData():android.database.Cursor");
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0110, code lost:
    
        if (r1 != null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x011e, code lost:
    
        com.conceptglobal.pmc.fotracker.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0123, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x011b, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0119, code lost:
    
        if (r1 == null) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.conceptglobal.pmc.fotracker.model.FoTrackerHeader> getFoTrackerHeaderDetails(java.lang.String r4) {
        /*
            Method dump skipped, instructions count: 303
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.fotracker.database.GetDataFromDB.getFoTrackerHeaderDetails(java.lang.String):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x00b5, code lost:
    
        if (r1 != null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x00c3, code lost:
    
        com.conceptglobal.pmc.fotracker.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x00c8, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00c0, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00be, code lost:
    
        if (r1 == null) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.conceptglobal.pmc.fotracker.model.FoTrackerDetails> getFoTrackerdetailsDetails(java.lang.String r4) {
        /*
            r3 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r1 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r2 = com.conceptglobal.pmc.fotracker.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> Lb8 java.lang.Exception -> Lba
            android.database.sqlite.SQLiteDatabase r2 = r2.openDatabase()     // Catch: java.lang.Throwable -> Lb8 java.lang.Exception -> Lba
            com.conceptglobal.pmc.fotracker.database.GetDataFromDB.sqliteDatabase = r2     // Catch: java.lang.Throwable -> Lb8 java.lang.Exception -> Lba
            android.database.Cursor r1 = r2.rawQuery(r4, r1)     // Catch: java.lang.Throwable -> Lb8 java.lang.Exception -> Lba
            if (r1 == 0) goto Lb5
            int r4 = r1.getCount()     // Catch: java.lang.Throwable -> Lb8 java.lang.Exception -> Lba
            if (r4 <= 0) goto Lb5
            boolean r4 = r1.moveToFirst()     // Catch: java.lang.Throwable -> Lb8 java.lang.Exception -> Lba
            if (r4 == 0) goto Lb5
        L20:
            com.conceptglobal.pmc.fotracker.model.FoTrackerDetails r4 = new com.conceptglobal.pmc.fotracker.model.FoTrackerDetails     // Catch: java.lang.Exception -> Lab java.lang.Throwable -> Lb8
            r4.<init>()     // Catch: java.lang.Exception -> Lab java.lang.Throwable -> Lb8
            java.lang.String r2 = "DetailsId"
            int r2 = r1.getColumnIndex(r2)     // Catch: java.lang.Exception -> Lab java.lang.Throwable -> Lb8
            int r2 = r1.getInt(r2)     // Catch: java.lang.Exception -> Lab java.lang.Throwable -> Lb8
            r4.setDetailsId(r2)     // Catch: java.lang.Exception -> Lab java.lang.Throwable -> Lb8
            java.lang.String r2 = "TrackId"
            int r2 = r1.getColumnIndex(r2)     // Catch: java.lang.Exception -> Lab java.lang.Throwable -> Lb8
            int r2 = r1.getInt(r2)     // Catch: java.lang.Exception -> Lab java.lang.Throwable -> Lb8
            r4.setTrackId(r2)     // Catch: java.lang.Exception -> Lab java.lang.Throwable -> Lb8
            java.lang.String r2 = "Latitude"
            int r2 = r1.getColumnIndex(r2)     // Catch: java.lang.Exception -> Lab java.lang.Throwable -> Lb8
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> Lab java.lang.Throwable -> Lb8
            r4.setLatitude(r2)     // Catch: java.lang.Exception -> Lab java.lang.Throwable -> Lb8
            java.lang.String r2 = "Longitude"
            int r2 = r1.getColumnIndex(r2)     // Catch: java.lang.Exception -> Lab java.lang.Throwable -> Lb8
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> Lab java.lang.Throwable -> Lb8
            r4.setLongitude(r2)     // Catch: java.lang.Exception -> Lab java.lang.Throwable -> Lb8
            java.lang.String r2 = "PdaId"
            int r2 = r1.getColumnIndex(r2)     // Catch: java.lang.Exception -> Lab java.lang.Throwable -> Lb8
            int r2 = r1.getInt(r2)     // Catch: java.lang.Exception -> Lab java.lang.Throwable -> Lb8
            r4.setPdaId(r2)     // Catch: java.lang.Exception -> Lab java.lang.Throwable -> Lb8
            java.lang.String r2 = "SyncStatus"
            int r2 = r1.getColumnIndex(r2)     // Catch: java.lang.Exception -> Lab java.lang.Throwable -> Lb8
            int r2 = r1.getInt(r2)     // Catch: java.lang.Exception -> Lab java.lang.Throwable -> Lb8
            r4.setSyncStatus(r2)     // Catch: java.lang.Exception -> Lab java.lang.Throwable -> Lb8
            java.lang.String r2 = "CreatedBy"
            int r2 = r1.getColumnIndex(r2)     // Catch: java.lang.Exception -> Lab java.lang.Throwable -> Lb8
            int r2 = r1.getInt(r2)     // Catch: java.lang.Exception -> Lab java.lang.Throwable -> Lb8
            r4.setCreatedBy(r2)     // Catch: java.lang.Exception -> Lab java.lang.Throwable -> Lb8
            java.lang.String r2 = "CreatedDate"
            int r2 = r1.getColumnIndex(r2)     // Catch: java.lang.Exception -> Lab java.lang.Throwable -> Lb8
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> Lab java.lang.Throwable -> Lb8
            r4.setCreatedDate(r2)     // Catch: java.lang.Exception -> Lab java.lang.Throwable -> Lb8
            java.lang.String r2 = "UpdatedBy"
            int r2 = r1.getColumnIndex(r2)     // Catch: java.lang.Exception -> Lab java.lang.Throwable -> Lb8
            int r2 = r1.getInt(r2)     // Catch: java.lang.Exception -> Lab java.lang.Throwable -> Lb8
            r4.setUpdatedBy(r2)     // Catch: java.lang.Exception -> Lab java.lang.Throwable -> Lb8
            java.lang.String r2 = "UpdatedDate"
            int r2 = r1.getColumnIndex(r2)     // Catch: java.lang.Exception -> Lab java.lang.Throwable -> Lb8
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> Lab java.lang.Throwable -> Lb8
            r4.setUpdatedDate(r2)     // Catch: java.lang.Exception -> Lab java.lang.Throwable -> Lb8
            r0.add(r4)     // Catch: java.lang.Exception -> Lab java.lang.Throwable -> Lb8
            goto Laf
        Lab:
            r4 = move-exception
            r4.printStackTrace()     // Catch: java.lang.Throwable -> Lb8 java.lang.Exception -> Lba
        Laf:
            boolean r4 = r1.moveToNext()     // Catch: java.lang.Throwable -> Lb8 java.lang.Exception -> Lba
            if (r4 != 0) goto L20
        Lb5:
            if (r1 == 0) goto Lc3
            goto Lc0
        Lb8:
            r4 = move-exception
            goto Lc9
        Lba:
            r4 = move-exception
            r4.printStackTrace()     // Catch: java.lang.Throwable -> Lb8
            if (r1 == 0) goto Lc3
        Lc0:
            r1.close()
        Lc3:
            com.conceptglobal.pmc.database.DataBaseHandler r4 = com.conceptglobal.pmc.fotracker.database.GetDataFromDB.dbInstance
            r4.closeDatabase()
            return r0
        Lc9:
            if (r1 == 0) goto Lce
            r1.close()
        Lce:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.fotracker.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.fotracker.database.GetDataFromDB.getFoTrackerdetailsDetails(java.lang.String):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0074, code lost:
    
        if (r1 != null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0082, code lost:
    
        com.conceptglobal.pmc.fotracker.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0087, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x007f, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x007d, code lost:
    
        if (r1 == null) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.conceptglobal.pmc.fotracker.model.ErrorLogger> getErrorLoggerDetails(java.lang.String r4) {
        /*
            r3 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r1 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r2 = com.conceptglobal.pmc.fotracker.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L77 java.lang.Exception -> L79
            android.database.sqlite.SQLiteDatabase r2 = r2.openDatabase()     // Catch: java.lang.Throwable -> L77 java.lang.Exception -> L79
            com.conceptglobal.pmc.fotracker.database.GetDataFromDB.sqliteDatabase = r2     // Catch: java.lang.Throwable -> L77 java.lang.Exception -> L79
            android.database.Cursor r1 = r2.rawQuery(r4, r1)     // Catch: java.lang.Throwable -> L77 java.lang.Exception -> L79
            if (r1 == 0) goto L74
            int r4 = r1.getCount()     // Catch: java.lang.Throwable -> L77 java.lang.Exception -> L79
            if (r4 <= 0) goto L74
            boolean r4 = r1.moveToFirst()     // Catch: java.lang.Throwable -> L77 java.lang.Exception -> L79
            if (r4 == 0) goto L74
        L20:
            com.conceptglobal.pmc.fotracker.model.ErrorLogger r4 = new com.conceptglobal.pmc.fotracker.model.ErrorLogger     // Catch: java.lang.Exception -> L6a java.lang.Throwable -> L77
            r4.<init>()     // Catch: java.lang.Exception -> L6a java.lang.Throwable -> L77
            java.lang.String r2 = "Id"
            int r2 = r1.getColumnIndex(r2)     // Catch: java.lang.Exception -> L6a java.lang.Throwable -> L77
            int r2 = r1.getInt(r2)     // Catch: java.lang.Exception -> L6a java.lang.Throwable -> L77
            r4.setId(r2)     // Catch: java.lang.Exception -> L6a java.lang.Throwable -> L77
            java.lang.String r2 = "PDAID"
            int r2 = r1.getColumnIndex(r2)     // Catch: java.lang.Exception -> L6a java.lang.Throwable -> L77
            int r2 = r1.getInt(r2)     // Catch: java.lang.Exception -> L6a java.lang.Throwable -> L77
            r4.setPDAID(r2)     // Catch: java.lang.Exception -> L6a java.lang.Throwable -> L77
            java.lang.String r2 = "CreatedDate"
            int r2 = r1.getColumnIndex(r2)     // Catch: java.lang.Exception -> L6a java.lang.Throwable -> L77
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> L6a java.lang.Throwable -> L77
            r4.setCreatedDate(r2)     // Catch: java.lang.Exception -> L6a java.lang.Throwable -> L77
            java.lang.String r2 = "ServerStatus"
            int r2 = r1.getColumnIndex(r2)     // Catch: java.lang.Exception -> L6a java.lang.Throwable -> L77
            int r2 = r1.getInt(r2)     // Catch: java.lang.Exception -> L6a java.lang.Throwable -> L77
            r4.setServerStatus(r2)     // Catch: java.lang.Exception -> L6a java.lang.Throwable -> L77
            java.lang.String r2 = "ErrorMessage"
            int r2 = r1.getColumnIndex(r2)     // Catch: java.lang.Exception -> L6a java.lang.Throwable -> L77
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> L6a java.lang.Throwable -> L77
            r4.setErrorMessage(r2)     // Catch: java.lang.Exception -> L6a java.lang.Throwable -> L77
            r0.add(r4)     // Catch: java.lang.Exception -> L6a java.lang.Throwable -> L77
            goto L6e
        L6a:
            r4 = move-exception
            r4.printStackTrace()     // Catch: java.lang.Throwable -> L77 java.lang.Exception -> L79
        L6e:
            boolean r4 = r1.moveToNext()     // Catch: java.lang.Throwable -> L77 java.lang.Exception -> L79
            if (r4 != 0) goto L20
        L74:
            if (r1 == 0) goto L82
            goto L7f
        L77:
            r4 = move-exception
            goto L88
        L79:
            r4 = move-exception
            r4.printStackTrace()     // Catch: java.lang.Throwable -> L77
            if (r1 == 0) goto L82
        L7f:
            r1.close()
        L82:
            com.conceptglobal.pmc.database.DataBaseHandler r4 = com.conceptglobal.pmc.fotracker.database.GetDataFromDB.dbInstance
            r4.closeDatabase()
            return r0
        L88:
            if (r1 == 0) goto L8d
            r1.close()
        L8d:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.fotracker.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.fotracker.database.GetDataFromDB.getErrorLoggerDetails(java.lang.String):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0037, code lost:
    
        if (r1 == null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x002a, code lost:
    
        if (r1 != null) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x003c, code lost:
    
        com.conceptglobal.pmc.fotracker.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0041, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0039, code lost:
    
        r1.close();
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0045  */
    /* JADX WARN: Type inference failed for: r0v0, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String getButtonText() {
        /*
            r4 = this;
            r0 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r1 = com.conceptglobal.pmc.fotracker.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L2d java.lang.Exception -> L32
            android.database.sqlite.SQLiteDatabase r1 = r1.openDatabase()     // Catch: java.lang.Throwable -> L2d java.lang.Exception -> L32
            com.conceptglobal.pmc.fotracker.database.GetDataFromDB.sqliteDatabase = r1     // Catch: java.lang.Throwable -> L2d java.lang.Exception -> L32
            java.lang.String r2 = "Select * from ConfigurableLookup WHERE itemKey='ButtonText'"
            android.database.Cursor r1 = r1.rawQuery(r2, r0)     // Catch: java.lang.Throwable -> L2d java.lang.Exception -> L32
            if (r1 == 0) goto L2a
            int r2 = r1.getCount()     // Catch: java.lang.Exception -> L28 java.lang.Throwable -> L42
            if (r2 <= 0) goto L2a
            boolean r2 = r1.moveToFirst()     // Catch: java.lang.Exception -> L28 java.lang.Throwable -> L42
            if (r2 == 0) goto L2a
            java.lang.String r2 = "itemValue"
            int r2 = r1.getColumnIndexOrThrow(r2)     // Catch: java.lang.Exception -> L28 java.lang.Throwable -> L42
            java.lang.String r0 = r1.getString(r2)     // Catch: java.lang.Exception -> L28 java.lang.Throwable -> L42
            goto L2a
        L28:
            r2 = move-exception
            goto L34
        L2a:
            if (r1 == 0) goto L3c
            goto L39
        L2d:
            r1 = move-exception
            r3 = r1
            r1 = r0
            r0 = r3
            goto L43
        L32:
            r2 = move-exception
            r1 = r0
        L34:
            r2.printStackTrace()     // Catch: java.lang.Throwable -> L42
            if (r1 == 0) goto L3c
        L39:
            r1.close()
        L3c:
            com.conceptglobal.pmc.database.DataBaseHandler r1 = com.conceptglobal.pmc.fotracker.database.GetDataFromDB.dbInstance
            r1.closeDatabase()
            return r0
        L42:
            r0 = move-exception
        L43:
            if (r1 == 0) goto L48
            r1.close()
        L48:
            com.conceptglobal.pmc.database.DataBaseHandler r1 = com.conceptglobal.pmc.fotracker.database.GetDataFromDB.dbInstance
            r1.closeDatabase()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.fotracker.database.GetDataFromDB.getButtonText():java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0034, code lost:
    
        if (r1 != null) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0042, code lost:
    
        com.conceptglobal.pmc.fotracker.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0047, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x003f, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x003d, code lost:
    
        if (r1 == null) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int checkIfTableIsEmptyOrNot() {
        /*
            r4 = this;
            r0 = 0
            java.lang.Boolean.valueOf(r0)
            r1 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r2 = com.conceptglobal.pmc.fotracker.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L37 java.lang.Exception -> L39
            android.database.sqlite.SQLiteDatabase r2 = r2.openDatabase()     // Catch: java.lang.Throwable -> L37 java.lang.Exception -> L39
            com.conceptglobal.pmc.fotracker.database.GetDataFromDB.sqliteDatabase = r2     // Catch: java.lang.Throwable -> L37 java.lang.Exception -> L39
            java.lang.String r3 = "Select * from FoTrackerHeader Order By TrackId DESC Limit 1"
            android.database.Cursor r1 = r2.rawQuery(r3, r1)     // Catch: java.lang.Throwable -> L37 java.lang.Exception -> L39
            if (r1 == 0) goto L33
            int r2 = r1.getCount()     // Catch: java.lang.Throwable -> L37 java.lang.Exception -> L39
            if (r2 <= 0) goto L33
            boolean r2 = r1.moveToFirst()     // Catch: java.lang.Throwable -> L37 java.lang.Exception -> L39
            if (r2 == 0) goto L33
            java.lang.String r2 = "EndDate"
            int r2 = r1.getColumnIndexOrThrow(r2)     // Catch: java.lang.Throwable -> L37 java.lang.Exception -> L39
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Throwable -> L37 java.lang.Exception -> L39
            boolean r2 = android.text.TextUtils.isEmpty(r2)     // Catch: java.lang.Throwable -> L37 java.lang.Exception -> L39
            if (r2 == 0) goto L34
            r0 = 2
            goto L34
        L33:
            r0 = 1
        L34:
            if (r1 == 0) goto L42
            goto L3f
        L37:
            r0 = move-exception
            goto L48
        L39:
            r2 = move-exception
            r2.printStackTrace()     // Catch: java.lang.Throwable -> L37
            if (r1 == 0) goto L42
        L3f:
            r1.close()
        L42:
            com.conceptglobal.pmc.database.DataBaseHandler r1 = com.conceptglobal.pmc.fotracker.database.GetDataFromDB.dbInstance
            r1.closeDatabase()
            return r0
        L48:
            if (r1 == 0) goto L4d
            r1.close()
        L4d:
            com.conceptglobal.pmc.database.DataBaseHandler r1 = com.conceptglobal.pmc.fotracker.database.GetDataFromDB.dbInstance
            r1.closeDatabase()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.fotracker.database.GetDataFromDB.checkIfTableIsEmptyOrNot():int");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(12:0|1|(2:2|3)|(3:17|18|(7:22|(1:7)|8|9|10|11|12))|5|(0)|8|9|10|11|12|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0057, code lost:
    
        r1 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0058, code lost:
    
        r1.printStackTrace();
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x002d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String getDayFromDB() {
        /*
            r5 = this;
            r0 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r1 = com.conceptglobal.pmc.fotracker.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L36 java.lang.Exception -> L3b
            android.database.sqlite.SQLiteDatabase r1 = r1.openDatabase()     // Catch: java.lang.Throwable -> L36 java.lang.Exception -> L3b
            com.conceptglobal.pmc.fotracker.database.GetDataFromDB.sqliteDatabase = r1     // Catch: java.lang.Throwable -> L36 java.lang.Exception -> L3b
            java.lang.String r2 = "Select * from FoTrackerHeader Order By TrackId DESC Limit 1"
            android.database.Cursor r1 = r1.rawQuery(r2, r0)     // Catch: java.lang.Throwable -> L36 java.lang.Exception -> L3b
            if (r1 == 0) goto L2a
            int r2 = r1.getCount()     // Catch: java.lang.Exception -> L28 java.lang.Throwable -> L66
            if (r2 <= 0) goto L2a
            boolean r2 = r1.moveToFirst()     // Catch: java.lang.Exception -> L28 java.lang.Throwable -> L66
            if (r2 == 0) goto L2a
            java.lang.String r2 = "StartDate"
            int r2 = r1.getColumnIndexOrThrow(r2)     // Catch: java.lang.Exception -> L28 java.lang.Throwable -> L66
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> L28 java.lang.Throwable -> L66
            goto L2b
        L28:
            r2 = move-exception
            goto L3d
        L2a:
            r2 = r0
        L2b:
            if (r1 == 0) goto L30
            r1.close()
        L30:
            com.conceptglobal.pmc.database.DataBaseHandler r1 = com.conceptglobal.pmc.fotracker.database.GetDataFromDB.dbInstance
            r1.closeDatabase()
            goto L4b
        L36:
            r1 = move-exception
            r4 = r1
            r1 = r0
            r0 = r4
            goto L67
        L3b:
            r2 = move-exception
            r1 = r0
        L3d:
            r2.printStackTrace()     // Catch: java.lang.Throwable -> L66
            if (r1 == 0) goto L45
            r1.close()
        L45:
            com.conceptglobal.pmc.database.DataBaseHandler r1 = com.conceptglobal.pmc.fotracker.database.GetDataFromDB.dbInstance
            r1.closeDatabase()
            r2 = r0
        L4b:
            java.text.SimpleDateFormat r1 = new java.text.SimpleDateFormat     // Catch: java.text.ParseException -> L57
            java.lang.String r3 = "MMM dd yyyy HH:mm:ss.sss"
            r1.<init>(r3)     // Catch: java.text.ParseException -> L57
            java.util.Date r0 = r1.parse(r2)     // Catch: java.text.ParseException -> L57
            goto L5b
        L57:
            r1 = move-exception
            r1.printStackTrace()
        L5b:
            java.lang.String r1 = "dd"
            java.lang.CharSequence r0 = android.text.format.DateFormat.format(r1, r0)
            java.lang.String r0 = java.lang.String.valueOf(r0)
            return r0
        L66:
            r0 = move-exception
        L67:
            if (r1 == 0) goto L6c
            r1.close()
        L6c:
            com.conceptglobal.pmc.database.DataBaseHandler r1 = com.conceptglobal.pmc.fotracker.database.GetDataFromDB.dbInstance
            r1.closeDatabase()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.fotracker.database.GetDataFromDB.getDayFromDB():java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0039, code lost:
    
        if (r1 != null) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0047, code lost:
    
        com.conceptglobal.pmc.fotracker.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0050, code lost:
    
        return r0.booleanValue();
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0044, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0042, code lost:
    
        if (r1 == null) goto L20;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean checkIfEndDateIsEmpty() {
        /*
            r4 = this;
            r0 = 0
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
            r1 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r2 = com.conceptglobal.pmc.fotracker.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L3c java.lang.Exception -> L3e
            android.database.sqlite.SQLiteDatabase r2 = r2.openDatabase()     // Catch: java.lang.Throwable -> L3c java.lang.Exception -> L3e
            com.conceptglobal.pmc.fotracker.database.GetDataFromDB.sqliteDatabase = r2     // Catch: java.lang.Throwable -> L3c java.lang.Exception -> L3e
            java.lang.String r3 = "Select * from FoTrackerHeader Order By TrackId DESC Limit 1"
            android.database.Cursor r1 = r2.rawQuery(r3, r1)     // Catch: java.lang.Throwable -> L3c java.lang.Exception -> L3e
            if (r1 == 0) goto L39
            int r2 = r1.getCount()     // Catch: java.lang.Throwable -> L3c java.lang.Exception -> L3e
            if (r2 <= 0) goto L39
            boolean r2 = r1.moveToFirst()     // Catch: java.lang.Throwable -> L3c java.lang.Exception -> L3e
            if (r2 == 0) goto L39
            java.lang.String r2 = "EndDate"
            int r2 = r1.getColumnIndexOrThrow(r2)     // Catch: java.lang.Throwable -> L3c java.lang.Exception -> L3e
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Throwable -> L3c java.lang.Exception -> L3e
            java.lang.String r3 = ""
            boolean r2 = r2.equals(r3)     // Catch: java.lang.Throwable -> L3c java.lang.Exception -> L3e
            if (r2 == 0) goto L39
            r2 = 1
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r2)     // Catch: java.lang.Throwable -> L3c java.lang.Exception -> L3e
        L39:
            if (r1 == 0) goto L47
            goto L44
        L3c:
            r0 = move-exception
            goto L51
        L3e:
            r2 = move-exception
            r2.printStackTrace()     // Catch: java.lang.Throwable -> L3c
            if (r1 == 0) goto L47
        L44:
            r1.close()
        L47:
            com.conceptglobal.pmc.database.DataBaseHandler r1 = com.conceptglobal.pmc.fotracker.database.GetDataFromDB.dbInstance
            r1.closeDatabase()
            boolean r0 = r0.booleanValue()
            return r0
        L51:
            if (r1 == 0) goto L56
            r1.close()
        L56:
            com.conceptglobal.pmc.database.DataBaseHandler r1 = com.conceptglobal.pmc.fotracker.database.GetDataFromDB.dbInstance
            r1.closeDatabase()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.fotracker.database.GetDataFromDB.checkIfEndDateIsEmpty():boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0052, code lost:
    
        com.conceptglobal.pmc.fotracker.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0057, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x004f, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x004d, code lost:
    
        if (r1 == null) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0044, code lost:
    
        if (r1 != null) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.conceptglobal.pmc.fotracker.model.FoModel> getLastData() {
        /*
            r5 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r1 = 0
            com.conceptglobal.pmc.fotracker.model.FoModel r2 = new com.conceptglobal.pmc.fotracker.model.FoModel     // Catch: java.lang.Throwable -> L47 java.lang.Exception -> L49
            r2.<init>()     // Catch: java.lang.Throwable -> L47 java.lang.Exception -> L49
            com.conceptglobal.pmc.database.DataBaseHandler r3 = com.conceptglobal.pmc.fotracker.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L47 java.lang.Exception -> L49
            android.database.sqlite.SQLiteDatabase r3 = r3.openDatabase()     // Catch: java.lang.Throwable -> L47 java.lang.Exception -> L49
            com.conceptglobal.pmc.fotracker.database.GetDataFromDB.sqliteDatabase = r3     // Catch: java.lang.Throwable -> L47 java.lang.Exception -> L49
            com.conceptglobal.pmc.fotracker.database.Queries r4 = com.conceptglobal.pmc.fotracker.database.Queries.getInstance()     // Catch: java.lang.Throwable -> L47 java.lang.Exception -> L49
            java.lang.String r4 = r4.getLastData()     // Catch: java.lang.Throwable -> L47 java.lang.Exception -> L49
            android.database.Cursor r1 = r3.rawQuery(r4, r1)     // Catch: java.lang.Throwable -> L47 java.lang.Exception -> L49
            if (r1 == 0) goto L44
            boolean r3 = r1.moveToFirst()     // Catch: java.lang.Throwable -> L47 java.lang.Exception -> L49
            if (r3 == 0) goto L44
            java.lang.String r3 = "Latitude"
            int r3 = r1.getColumnIndex(r3)     // Catch: java.lang.Throwable -> L47 java.lang.Exception -> L49
            java.lang.String r3 = r1.getString(r3)     // Catch: java.lang.Throwable -> L47 java.lang.Exception -> L49
            r2.setLatitude(r3)     // Catch: java.lang.Throwable -> L47 java.lang.Exception -> L49
            java.lang.String r3 = "Longitude"
            int r3 = r1.getColumnIndex(r3)     // Catch: java.lang.Throwable -> L47 java.lang.Exception -> L49
            java.lang.String r3 = r1.getString(r3)     // Catch: java.lang.Throwable -> L47 java.lang.Exception -> L49
            r2.setLongitude(r3)     // Catch: java.lang.Throwable -> L47 java.lang.Exception -> L49
            r0.add(r2)     // Catch: java.lang.Throwable -> L47 java.lang.Exception -> L49
        L44:
            if (r1 == 0) goto L52
            goto L4f
        L47:
            r0 = move-exception
            goto L58
        L49:
            r2 = move-exception
            r2.printStackTrace()     // Catch: java.lang.Throwable -> L47
            if (r1 == 0) goto L52
        L4f:
            r1.close()
        L52:
            com.conceptglobal.pmc.database.DataBaseHandler r1 = com.conceptglobal.pmc.fotracker.database.GetDataFromDB.dbInstance
            r1.closeDatabase()
            return r0
        L58:
            if (r1 == 0) goto L5d
            r1.close()
        L5d:
            com.conceptglobal.pmc.database.DataBaseHandler r1 = com.conceptglobal.pmc.fotracker.database.GetDataFromDB.dbInstance
            r1.closeDatabase()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.fotracker.database.GetDataFromDB.getLastData():java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x001b, code lost:
    
        if (r1 != null) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0029, code lost:
    
        com.conceptglobal.pmc.fotracker.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x002e, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0026, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0024, code lost:
    
        if (r1 == null) goto L17;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int getFoTrackerCount(java.lang.String r4) {
        /*
            r3 = this;
            r0 = 0
            r1 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r2 = com.conceptglobal.pmc.fotracker.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L1e java.lang.Exception -> L20
            android.database.sqlite.SQLiteDatabase r2 = r2.openDatabase()     // Catch: java.lang.Throwable -> L1e java.lang.Exception -> L20
            com.conceptglobal.pmc.fotracker.database.GetDataFromDB.sqliteDatabase = r2     // Catch: java.lang.Throwable -> L1e java.lang.Exception -> L20
            android.database.Cursor r1 = r2.rawQuery(r4, r1)     // Catch: java.lang.Throwable -> L1e java.lang.Exception -> L20
            if (r1 == 0) goto L1b
            boolean r4 = r1.moveToFirst()     // Catch: java.lang.Throwable -> L1e java.lang.Exception -> L20
            if (r4 == 0) goto L1b
            int r4 = r1.getCount()     // Catch: java.lang.Throwable -> L1e java.lang.Exception -> L20
            r0 = r4
        L1b:
            if (r1 == 0) goto L29
            goto L26
        L1e:
            r4 = move-exception
            goto L2f
        L20:
            r4 = move-exception
            r4.printStackTrace()     // Catch: java.lang.Throwable -> L1e
            if (r1 == 0) goto L29
        L26:
            r1.close()
        L29:
            com.conceptglobal.pmc.database.DataBaseHandler r4 = com.conceptglobal.pmc.fotracker.database.GetDataFromDB.dbInstance
            r4.closeDatabase()
            return r0
        L2f:
            if (r1 == 0) goto L34
            r1.close()
        L34:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.fotracker.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.fotracker.database.GetDataFromDB.getFoTrackerCount(java.lang.String):int");
    }
}

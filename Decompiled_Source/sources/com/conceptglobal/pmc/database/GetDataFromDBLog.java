package com.conceptglobal.pmc.database;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.utils.PLog;

/* loaded from: classes.dex */
public class GetDataFromDBLog {
    private static final String TAG = "GetDataFromDBLog";
    private static LogDataBaseHandler dbInstance = LogDataBaseHandler.getInstance();
    private static GetDataFromDBLog instance;
    private static SQLiteDatabase sqliteDatabase;
    private String message = "Exception";

    public static synchronized GetDataFromDBLog getInstance() {
        GetDataFromDBLog getDataFromDBLog;
        synchronized (GetDataFromDBLog.class) {
            if (instance == null) {
                instance = new GetDataFromDBLog();
            }
            getDataFromDBLog = instance;
        }
        return getDataFromDBLog;
    }

    public synchronized void executeRawQueryInDB(String str) throws Exception {
        try {
            try {
                SQLiteDatabase openDatabase = dbInstance.openDatabase();
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

    /* JADX WARN: Code restructure failed: missing block: B:18:0x00c1, code lost:
    
        if (r1 != null) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x00d1, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDBLog.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x00d6, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x00ce, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00cc, code lost:
    
        if (r1 == null) goto L20;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.conceptglobal.pmc.model.Logger> getLogData(java.lang.String r5) {
        /*
            r4 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r1 = 0
            com.conceptglobal.pmc.common.ConstantsPMC r2 = com.conceptglobal.pmc.common.ConstantsPMC.getInstance()     // Catch: java.lang.Throwable -> Lc4 java.lang.Exception -> Lc6
            java.lang.String r2 = r2.getDeviceID()     // Catch: java.lang.Throwable -> Lc4 java.lang.Exception -> Lc6
            com.conceptglobal.pmc.database.LogDataBaseHandler r3 = com.conceptglobal.pmc.database.GetDataFromDBLog.dbInstance     // Catch: java.lang.Throwable -> Lc4 java.lang.Exception -> Lc6
            android.database.sqlite.SQLiteDatabase r3 = r3.openDatabase()     // Catch: java.lang.Throwable -> Lc4 java.lang.Exception -> Lc6
            com.conceptglobal.pmc.database.GetDataFromDBLog.sqliteDatabase = r3     // Catch: java.lang.Throwable -> Lc4 java.lang.Exception -> Lc6
            android.database.Cursor r1 = r3.rawQuery(r5, r1)     // Catch: java.lang.Throwable -> Lc4 java.lang.Exception -> Lc6
            if (r1 == 0) goto Lc1
            int r5 = r1.getCount()     // Catch: java.lang.Throwable -> Lc4 java.lang.Exception -> Lc6
            if (r5 <= 0) goto Lc1
            boolean r5 = r1.moveToFirst()     // Catch: java.lang.Throwable -> Lc4 java.lang.Exception -> Lc6
            if (r5 == 0) goto Lc1
        L28:
            com.conceptglobal.pmc.model.Logger r5 = new com.conceptglobal.pmc.model.Logger     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc4
            r5.<init>()     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc4
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r3 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType0     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc4
            java.lang.Integer r3 = r3.value()     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc4
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc4
            int r3 = r1.getInt(r3)     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc4
            r5.setId(r3)     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc4
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r3 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType1     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc4
            java.lang.Integer r3 = r3.value()     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc4
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc4
            java.lang.String r3 = r1.getString(r3)     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc4
            r5.setClassName(r3)     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc4
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r3 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType2     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc4
            java.lang.Integer r3 = r3.value()     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc4
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc4
            java.lang.String r3 = r1.getString(r3)     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc4
            r5.setMethodName(r3)     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc4
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r3 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType3     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc4
            java.lang.Integer r3 = r3.value()     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc4
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc4
            java.lang.String r3 = r1.getString(r3)     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc4
            r5.setParams(r3)     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc4
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r3 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType4     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc4
            java.lang.Integer r3 = r3.value()     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc4
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc4
            java.lang.String r3 = r1.getString(r3)     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc4
            r5.setLogTime(r3)     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc4
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r3 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType5     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc4
            java.lang.Integer r3 = r3.value()     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc4
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc4
            java.lang.String r3 = r1.getString(r3)     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc4
            r5.setMethodResult(r3)     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc4
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r3 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType6     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc4
            java.lang.Integer r3 = r3.value()     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc4
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc4
            java.lang.String r3 = r1.getString(r3)     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc4
            r5.setServerUpdatedStatus(r3)     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc4
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r3 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType7     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc4
            java.lang.Integer r3 = r3.value()     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc4
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc4
            java.lang.String r3 = r1.getString(r3)     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc4
            r5.setExecutionTime(r3)     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc4
            r5.setPdaId(r2)     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc4
            r0.add(r5)     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc4
        Lbb:
            boolean r5 = r1.moveToNext()     // Catch: java.lang.Throwable -> Lc4 java.lang.Exception -> Lc6
            if (r5 != 0) goto L28
        Lc1:
            if (r1 == 0) goto Ld1
            goto Lce
        Lc4:
            r5 = move-exception
            goto Ld7
        Lc6:
            r5 = move-exception
            java.lang.String r2 = "LOGGER"
            com.conceptglobal.pmc.utils.PLog.e(r2, r5)     // Catch: java.lang.Throwable -> Lc4
            if (r1 == 0) goto Ld1
        Lce:
            r1.close()
        Ld1:
            com.conceptglobal.pmc.database.LogDataBaseHandler r5 = com.conceptglobal.pmc.database.GetDataFromDBLog.dbInstance
            r5.closeDatabase()
            return r0
        Ld7:
            if (r1 == 0) goto Ldc
            r1.close()
        Ldc:
            com.conceptglobal.pmc.database.LogDataBaseHandler r0 = com.conceptglobal.pmc.database.GetDataFromDBLog.dbInstance
            r0.closeDatabase()
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDBLog.getLogData(java.lang.String):java.util.List");
    }

    public int getLogsCount() throws Exception {
        try {
            return getInstance().getcount(Queries.getInstance().getDebugTraceErrorLogsCountQry());
        } catch (Exception e) {
            PLog.e(TAG, e);
            throw e;
        }
    }

    public Cursor getCursor(String str) {
        return sqliteDatabase.rawQuery(str, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:31:0x005c  */
    /* JADX WARN: Type inference failed for: r5v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v3, types: [android.database.Cursor] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int getcount(java.lang.String r5) throws java.lang.Exception {
        /*
            r4 = this;
            java.lang.String r0 = "GetDataFromDBLog"
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r1 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType0
            java.lang.Integer r1 = r1.value()
            int r1 = r1.intValue()
            r2 = 0
            com.conceptglobal.pmc.database.LogDataBaseHandler r3 = com.conceptglobal.pmc.database.GetDataFromDBLog.dbInstance     // Catch: java.lang.Throwable -> L50 java.lang.Exception -> L53
            android.database.sqlite.SQLiteDatabase r3 = r3.openDatabase()     // Catch: java.lang.Throwable -> L50 java.lang.Exception -> L53
            com.conceptglobal.pmc.database.GetDataFromDBLog.sqliteDatabase = r3     // Catch: java.lang.Throwable -> L50 java.lang.Exception -> L53
            android.database.Cursor r5 = r3.rawQuery(r5, r2)     // Catch: java.lang.Throwable -> L50 java.lang.Exception -> L53
            if (r5 == 0) goto L43
            int r3 = r5.getCount()     // Catch: java.lang.Exception -> L41 java.lang.Throwable -> L59
            if (r3 <= 0) goto L43
            boolean r3 = r5.moveToFirst()     // Catch: java.lang.Exception -> L41 java.lang.Throwable -> L59
            if (r3 == 0) goto L43
        L27:
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r3 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType0     // Catch: java.lang.Exception -> L36 java.lang.Throwable -> L59
            java.lang.Integer r3 = r3.value()     // Catch: java.lang.Exception -> L36 java.lang.Throwable -> L59
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> L36 java.lang.Throwable -> L59
            int r1 = r5.getInt(r3)     // Catch: java.lang.Exception -> L36 java.lang.Throwable -> L59
            goto L3a
        L36:
            r3 = move-exception
            com.conceptglobal.pmc.utils.PLog.e(r0, r3)     // Catch: java.lang.Exception -> L41 java.lang.Throwable -> L59
        L3a:
            boolean r3 = r5.moveToNext()     // Catch: java.lang.Exception -> L41 java.lang.Throwable -> L59
            if (r3 != 0) goto L27
            goto L43
        L41:
            r1 = move-exception
            goto L55
        L43:
            if (r5 == 0) goto L48
            r5.close()
        L48:
            com.conceptglobal.pmc.database.LogDataBaseHandler r5 = com.conceptglobal.pmc.database.GetDataFromDBLog.dbInstance
            r5.closeDatabase()
            com.conceptglobal.pmc.database.GetDataFromDBLog.sqliteDatabase = r2
            return r1
        L50:
            r0 = move-exception
            r5 = r2
            goto L5a
        L53:
            r1 = move-exception
            r5 = r2
        L55:
            com.conceptglobal.pmc.utils.PLog.e(r0, r1)     // Catch: java.lang.Throwable -> L59
            throw r1     // Catch: java.lang.Throwable -> L59
        L59:
            r0 = move-exception
        L5a:
            if (r5 == 0) goto L5f
            r5.close()
        L5f:
            com.conceptglobal.pmc.database.LogDataBaseHandler r5 = com.conceptglobal.pmc.database.GetDataFromDBLog.dbInstance
            r5.closeDatabase()
            com.conceptglobal.pmc.database.GetDataFromDBLog.sqliteDatabase = r2
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDBLog.getcount(java.lang.String):int");
    }
}

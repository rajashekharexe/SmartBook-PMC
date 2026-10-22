package com.conceptglobal.pmc.fotracker.database;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;
import com.conceptglobal.pmc.database.DataBaseHandler;
import com.conceptglobal.pmc.fotracker.model.GetUserDetailsModel;
import com.conceptglobal.pmc.fotracker.util.UtilDeclarations;
import java.util.ArrayList;
import java.util.Arrays;

/* loaded from: classes.dex */
public class InsertDataIntoDB {
    private static DataBaseHandler dbInstance = DataBaseHandler.getInstance();

    public static void insertFirstDayFOTrackerHeader(String str, String str2) throws Exception {
        try {
            try {
                SQLiteDatabase openDatabase = dbInstance.openDatabase();
                if (openDatabase != null) {
                    ContentValues contentValues = new ContentValues();
                    String stringValue = GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getPdaId());
                    contentValues.put("UserId", Integer.valueOf(Integer.parseInt(GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getUseridFoeUserDetails(Integer.parseInt(stringValue))))));
                    contentValues.put("PdaId", Integer.valueOf(Integer.parseInt(stringValue)));
                    contentValues.put("StartDate", str);
                    contentValues.put("CreatedDate", str);
                    contentValues.put("UpdatedDate", str);
                    contentValues.put("Remarks", str2);
                    contentValues.put("IsProcessed", (Integer) 0);
                    contentValues.put("SyncStatus", (Integer) 0);
                    openDatabase.insert("FoTrackerHeader", null, contentValues);
                }
            } catch (Exception e) {
                throw e;
            }
        } finally {
            dbInstance.closeDatabase();
        }
    }

    public static synchronized void insertUserDetails(GetUserDetailsModel getUserDetailsModel, String str) throws Exception {
        synchronized (InsertDataIntoDB.class) {
            try {
                GetDataFromDB.getInstance().executeRawQueryInDB("INSERT INTO pmcUserDetails(lineId, userId, userName, password, firstName, mobile,pdauser ,pdaID,active,createdBy,createdDate,updatedBy,updatedDate,city,roleid,address3,NotificationStatus) values(1," + getUserDetailsModel.getUserid() + ",'" + getUserDetailsModel.getUsername() + "','" + getUserDetailsModel.getPassword() + "','" + getUserDetailsModel.getFirstName() + "','" + str + "','1','" + getUserDetailsModel.getDeviceid() + "','" + getUserDetailsModel.getActive() + "'," + getUserDetailsModel.getUserid() + ", '" + UtilDeclarations.getDateTime() + "', " + getUserDetailsModel.getUserid() + ", '" + UtilDeclarations.getDateTime() + "','" + getUserDetailsModel.getTerritoryID() + "','" + getUserDetailsModel.getUserType() + "','" + getUserDetailsModel.getGeoDisplayName() + "','" + getUserDetailsModel.getNotificationStatus() + "')");
            } catch (Exception e) {
                throw e;
            }
        }
    }

    public static void insertUserRoleMapping(GetUserDetailsModel getUserDetailsModel) throws Exception {
        for (int i = 0; i < getUserDetailsModel.getUserrolemapping().size(); i++) {
            GetDataFromDB.getInstance().executeRawQueryInDB("insert into pmcUserRolemapping(RoleId,FunctionId,CreatedDate,UpdatedDate)values(" + getUserDetailsModel.getUserrolemapping().get(i).getRoleId() + "," + getUserDetailsModel.getUserrolemapping().get(i).getFunctionId() + ",'" + UtilDeclarations.getDateTime() + "','" + UtilDeclarations.getDateTime() + "')");
        }
    }

    public static void insertTerritoryList(GetUserDetailsModel getUserDetailsModel) throws Exception {
        for (int i = 0; i < getUserDetailsModel.getTerritoryList().size(); i++) {
            GetDataFromDB.getInstance().executeRawQueryInDB("insert into TerritoryMaster(territoryId,territoryName,regionId,IsActive) values(" + getUserDetailsModel.getTerritoryList().get(i).getTerritoryId() + ",'" + getUserDetailsModel.getTerritoryList().get(i).getTerritoryName() + "','" + getUserDetailsModel.getTerritoryList().get(i).getRegionId() + "','" + getUserDetailsModel.getTerritoryList().get(i).getIsActive() + "')");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002f A[Catch: all -> 0x0026, Exception -> 0x0029, TRY_LEAVE, TryCatch #4 {Exception -> 0x0029, all -> 0x0026, blocks: (B:25:0x001b, B:27:0x0021, B:8:0x002f), top: B:24:0x001b }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void updateCloseDayFOTrackerHeader(java.lang.String r7, java.lang.String r8, java.lang.String r9, java.lang.String r10) {
        /*
            java.lang.String r10 = "TrackId = "
            r0 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r1 = com.conceptglobal.pmc.fotracker.database.InsertDataIntoDB.dbInstance     // Catch: java.lang.Throwable -> L74 java.lang.Exception -> L76
            android.database.sqlite.SQLiteDatabase r1 = r1.openDatabase()     // Catch: java.lang.Throwable -> L74 java.lang.Exception -> L76
            com.conceptglobal.pmc.fotracker.database.Queries r2 = com.conceptglobal.pmc.fotracker.database.Queries.getInstance()     // Catch: java.lang.Throwable -> L74 java.lang.Exception -> L76
            java.lang.String r2 = r2.getTrackId()     // Catch: java.lang.Throwable -> L74 java.lang.Exception -> L76
            r3 = r0
            java.lang.String[] r3 = (java.lang.String[]) r3     // Catch: java.lang.Throwable -> L74 java.lang.Exception -> L76
            android.database.Cursor r2 = r1.rawQuery(r2, r0)     // Catch: java.lang.Throwable -> L74 java.lang.Exception -> L76
            r3 = 0
            if (r2 == 0) goto L2c
            boolean r4 = r2.moveToFirst()     // Catch: java.lang.Throwable -> L26 java.lang.Exception -> L29
            if (r4 == 0) goto L2c
            int r4 = r2.getInt(r3)     // Catch: java.lang.Throwable -> L26 java.lang.Exception -> L29
            goto L2d
        L26:
            r7 = move-exception
            r0 = r2
            goto L78
        L29:
            r7 = move-exception
            r0 = r2
            goto L77
        L2c:
            r4 = 0
        L2d:
            if (r1 == 0) goto L69
            android.content.ContentValues r5 = new android.content.ContentValues     // Catch: java.lang.Throwable -> L26 java.lang.Exception -> L29
            r5.<init>()     // Catch: java.lang.Throwable -> L26 java.lang.Exception -> L29
            java.lang.String r6 = "EndDate"
            r5.put(r6, r7)     // Catch: java.lang.Throwable -> L26 java.lang.Exception -> L29
            java.lang.String r7 = "IsProcessed"
            java.lang.Integer r6 = java.lang.Integer.valueOf(r3)     // Catch: java.lang.Throwable -> L26 java.lang.Exception -> L29
            r5.put(r7, r6)     // Catch: java.lang.Throwable -> L26 java.lang.Exception -> L29
            java.lang.String r7 = "FoDistance"
            r5.put(r7, r8)     // Catch: java.lang.Throwable -> L26 java.lang.Exception -> L29
            java.lang.String r7 = "ActualEndDate"
            r5.put(r7, r9)     // Catch: java.lang.Throwable -> L26 java.lang.Exception -> L29
            java.lang.String r7 = "SyncStatus"
            java.lang.Integer r8 = java.lang.Integer.valueOf(r3)     // Catch: java.lang.Throwable -> L26 java.lang.Exception -> L29
            r5.put(r7, r8)     // Catch: java.lang.Throwable -> L26 java.lang.Exception -> L29
            java.lang.String r7 = "FoTrackerHeader"
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L26 java.lang.Exception -> L29
            r8.<init>(r10)     // Catch: java.lang.Throwable -> L26 java.lang.Exception -> L29
            r8.append(r4)     // Catch: java.lang.Throwable -> L26 java.lang.Exception -> L29
            java.lang.String r8 = r8.toString()     // Catch: java.lang.Throwable -> L26 java.lang.Exception -> L29
            r9 = r0
            java.lang.String[] r9 = (java.lang.String[]) r9     // Catch: java.lang.Throwable -> L26 java.lang.Exception -> L29
            r1.update(r7, r5, r8, r0)     // Catch: java.lang.Throwable -> L26 java.lang.Exception -> L29
        L69:
            if (r2 == 0) goto L6e
            r2.close()
        L6e:
            com.conceptglobal.pmc.database.DataBaseHandler r7 = com.conceptglobal.pmc.fotracker.database.InsertDataIntoDB.dbInstance
            r7.closeDatabase()
            return
        L74:
            r7 = move-exception
            goto L78
        L76:
            r7 = move-exception
        L77:
            throw r7     // Catch: java.lang.Throwable -> L74
        L78:
            if (r0 == 0) goto L7d
            r0.close()
        L7d:
            com.conceptglobal.pmc.database.DataBaseHandler r8 = com.conceptglobal.pmc.fotracker.database.InsertDataIntoDB.dbInstance
            r8.closeDatabase()
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.fotracker.database.InsertDataIntoDB.updateCloseDayFOTrackerHeader(java.lang.String, java.lang.String, java.lang.String, java.lang.String):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x003d A[Catch: all -> 0x00b5, Exception -> 0x00b7, TRY_LEAVE, TryCatch #1 {all -> 0x00b5, blocks: (B:3:0x0003, B:7:0x0035, B:9:0x003d, B:30:0x00b8), top: B:2:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void insertCoordinates(java.lang.Double r7, java.lang.Double r8, java.lang.String r9) throws java.lang.Exception {
        /*
            java.lang.String r0 = " "
            r1 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r2 = com.conceptglobal.pmc.fotracker.database.InsertDataIntoDB.dbInstance     // Catch: java.lang.Throwable -> Lb5 java.lang.Exception -> Lb7
            android.database.sqlite.SQLiteDatabase r2 = r2.openDatabase()     // Catch: java.lang.Throwable -> Lb5 java.lang.Exception -> Lb7
            com.conceptglobal.pmc.fotracker.database.Queries r3 = com.conceptglobal.pmc.fotracker.database.Queries.getInstance()     // Catch: java.lang.Throwable -> Lb5 java.lang.Exception -> Lb7
            java.lang.String r3 = r3.getTrackId()     // Catch: java.lang.Throwable -> Lb5 java.lang.Exception -> Lb7
            r4 = r1
            java.lang.String[] r4 = (java.lang.String[]) r4     // Catch: java.lang.Throwable -> Lb5 java.lang.Exception -> Lb7
            android.database.Cursor r2 = r2.rawQuery(r3, r1)     // Catch: java.lang.Throwable -> Lb5 java.lang.Exception -> Lb7
            r3 = 0
            if (r2 == 0) goto L34
            boolean r4 = r2.moveToFirst()     // Catch: java.lang.Throwable -> L2c java.lang.Exception -> L30
            if (r4 == 0) goto L34
            java.lang.String r4 = "Max(TrackId)"
            int r4 = r2.getColumnIndex(r4)     // Catch: java.lang.Throwable -> L2c java.lang.Exception -> L30
            int r2 = r2.getInt(r4)     // Catch: java.lang.Throwable -> L2c java.lang.Exception -> L30
            goto L35
        L2c:
            r7 = move-exception
            r1 = r2
            goto Lb9
        L30:
            r7 = move-exception
            r1 = r2
            goto Lb8
        L34:
            r2 = 0
        L35:
            com.conceptglobal.pmc.database.DataBaseHandler r4 = com.conceptglobal.pmc.fotracker.database.InsertDataIntoDB.dbInstance     // Catch: java.lang.Throwable -> Lb5 java.lang.Exception -> Lb7
            android.database.sqlite.SQLiteDatabase r4 = r4.openDatabase()     // Catch: java.lang.Throwable -> Lb5 java.lang.Exception -> Lb7
            if (r4 == 0) goto Laf
            android.content.ContentValues r5 = new android.content.ContentValues     // Catch: java.lang.Throwable -> Lb5 java.lang.Exception -> Lb7
            r5.<init>()     // Catch: java.lang.Throwable -> Lb5 java.lang.Exception -> Lb7
            java.lang.String r6 = "Latitude"
            r5.put(r6, r7)     // Catch: java.lang.Throwable -> Lb5 java.lang.Exception -> Lb7
            java.lang.String r7 = "Longitude"
            r5.put(r7, r8)     // Catch: java.lang.Throwable -> Lb5 java.lang.Exception -> Lb7
            com.conceptglobal.pmc.fotracker.database.GetDataFromDB r7 = com.conceptglobal.pmc.fotracker.database.GetDataFromDB.getInstance()     // Catch: java.lang.Throwable -> Lb5 java.lang.Exception -> Lb7
            com.conceptglobal.pmc.fotracker.database.Queries r8 = com.conceptglobal.pmc.fotracker.database.Queries.getInstance()     // Catch: java.lang.Throwable -> Lb5 java.lang.Exception -> Lb7
            java.lang.String r8 = r8.getPdaId()     // Catch: java.lang.Throwable -> Lb5 java.lang.Exception -> Lb7
            java.lang.String r7 = r7.getStringValue(r8)     // Catch: java.lang.Throwable -> Lb5 java.lang.Exception -> Lb7
            java.lang.String r8 = "PdaId"
            r5.put(r8, r7)     // Catch: java.lang.Throwable -> Lb5 java.lang.Exception -> Lb7
            java.lang.String r7 = "CreatedDate"
            java.lang.String r8 = com.conceptglobal.pmc.fotracker.util.UtilDeclarations.getDateTime()     // Catch: java.lang.Throwable -> Lb5 java.lang.Exception -> Lb7
            r5.put(r7, r8)     // Catch: java.lang.Throwable -> Lb5 java.lang.Exception -> Lb7
            java.lang.String r7 = "UpdatedDate"
            java.lang.String r8 = com.conceptglobal.pmc.fotracker.util.UtilDeclarations.getDateTime()     // Catch: java.lang.Throwable -> Lb5 java.lang.Exception -> Lb7
            r5.put(r7, r8)     // Catch: java.lang.Throwable -> Lb5 java.lang.Exception -> Lb7
            java.lang.String r7 = "CreatedBy"
            r5.put(r7, r0)     // Catch: java.lang.Throwable -> Lb5 java.lang.Exception -> Lb7
            java.lang.String r7 = "UpdatedBy"
            r5.put(r7, r0)     // Catch: java.lang.Throwable -> Lb5 java.lang.Exception -> Lb7
            java.lang.String r7 = "StartDate"
            r5.put(r7, r9)     // Catch: java.lang.Throwable -> Lb5 java.lang.Exception -> Lb7
            java.lang.String r7 = "TrackId"
            java.lang.Integer r8 = java.lang.Integer.valueOf(r2)     // Catch: java.lang.Throwable -> Lb5 java.lang.Exception -> Lb7
            r5.put(r7, r8)     // Catch: java.lang.Throwable -> Lb5 java.lang.Exception -> Lb7
            java.lang.String r7 = "SyncStatus"
            java.lang.Integer r8 = java.lang.Integer.valueOf(r3)     // Catch: java.lang.Throwable -> Lb5 java.lang.Exception -> Lb7
            r5.put(r7, r8)     // Catch: java.lang.Throwable -> Lb5 java.lang.Exception -> Lb7
            java.lang.String r7 = "IsProcessed"
            java.lang.Integer r8 = java.lang.Integer.valueOf(r3)     // Catch: java.lang.Throwable -> Lb5 java.lang.Exception -> Lb7
            r5.put(r7, r8)     // Catch: java.lang.Throwable -> Lb5 java.lang.Exception -> Lb7
            java.lang.String r7 = "FoTrackerDetails"
            r8 = r1
            java.lang.String r8 = (java.lang.String) r8     // Catch: java.lang.Throwable -> Lb5 java.lang.Exception -> Lb7
            long r7 = r4.insert(r7, r1, r5)     // Catch: java.lang.Throwable -> Lb5 java.lang.Exception -> Lb7
            java.lang.String r9 = "InsertCoordinates"
            java.lang.String r7 = java.lang.String.valueOf(r7)     // Catch: java.lang.Throwable -> Lb5 java.lang.Exception -> Lb7
            android.util.Log.d(r9, r7)     // Catch: java.lang.Throwable -> Lb5 java.lang.Exception -> Lb7
        Laf:
            com.conceptglobal.pmc.database.DataBaseHandler r7 = com.conceptglobal.pmc.fotracker.database.InsertDataIntoDB.dbInstance
            r7.closeDatabase()
            return
        Lb5:
            r7 = move-exception
            goto Lb9
        Lb7:
            r7 = move-exception
        Lb8:
            throw r7     // Catch: java.lang.Throwable -> Lb5
        Lb9:
            if (r1 == 0) goto Lbe
            r1.close()
        Lbe:
            com.conceptglobal.pmc.database.DataBaseHandler r8 = com.conceptglobal.pmc.fotracker.database.InsertDataIntoDB.dbInstance
            r8.closeDatabase()
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.fotracker.database.InsertDataIntoDB.insertCoordinates(java.lang.Double, java.lang.Double, java.lang.String):void");
    }

    public static void updateFoTrackerDetails(String str, String str2, String str3) {
        try {
            try {
                GetDataFromDB.getInstance().getStringValue(Queries.getInstance().getPdaId());
                SQLiteDatabase openDatabase = dbInstance.openDatabase();
                ContentValues contentValues = new ContentValues();
                contentValues.put("IsProcessed", (Integer) 1);
                contentValues.put("SyncStatus", (Integer) 1);
                ArrayList arrayList = new ArrayList(Arrays.asList(str2.replaceAll("\\[|\\]", "").split(",")));
                Log.d("kists", "" + arrayList.toString());
                for (int i = 0; i < arrayList.size(); i++) {
                    try {
                        Log.i("details", "" + ((String) arrayList.get(i)));
                        int parseInt = Integer.parseInt(((String) arrayList.get(i)).replaceAll("\"", ""));
                        Log.d("detailsid", "" + parseInt);
                        openDatabase.update(str, contentValues, str3 + " = " + parseInt, null);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        } finally {
            dbInstance.closeDatabase();
        }
    }

    public static void updateErrorLoggerDetails(String str, String str2, String str3) {
        try {
            try {
                SQLiteDatabase openDatabase = dbInstance.openDatabase();
                ContentValues contentValues = new ContentValues();
                contentValues.put("ServerStatus", (Integer) 1);
                ArrayList arrayList = new ArrayList(Arrays.asList(str2.replaceAll("\\[|\\]", "").split(",")));
                Log.i("test", "ErrorLogger list :::::::::::::: " + arrayList.toString());
                for (int i = 0; i < arrayList.size(); i++) {
                    try {
                        Log.i("Id :::::::::", "" + ((String) arrayList.get(i)));
                        int parseInt = Integer.parseInt(((String) arrayList.get(i)).replaceAll("\"", ""));
                        Log.d("Id :::::::::", "" + parseInt);
                        int update = openDatabase.update(str, contentValues, str3 + " = " + parseInt, null);
                        StringBuilder sb = new StringBuilder();
                        sb.append("updated :::::::::::  ");
                        sb.append(update);
                        Log.i("test", sb.toString());
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        } finally {
            dbInstance.closeDatabase();
        }
    }
}

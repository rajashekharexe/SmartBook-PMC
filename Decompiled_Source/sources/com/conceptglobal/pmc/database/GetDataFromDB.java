package com.conceptglobal.pmc.database;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDoneException;
import android.database.sqlite.SQLiteStatement;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.Log;
import com.conceptglobal.pmc.PMCApplication;
import com.conceptglobal.pmc.common.ConstantsPMC;
import com.conceptglobal.pmc.common.Items;
import com.conceptglobal.pmc.common.Queries;
import com.conceptglobal.pmc.model.ActivityModel;
import com.conceptglobal.pmc.model.AttributeModel;
import com.conceptglobal.pmc.model.AudianceFarmer;
import com.conceptglobal.pmc.model.BrandsModel;
import com.conceptglobal.pmc.model.CropModel;
import com.conceptglobal.pmc.model.DraftListSwipeTabs;
import com.conceptglobal.pmc.model.FieldData;
import com.conceptglobal.pmc.model.FieldTypes;
import com.conceptglobal.pmc.model.ImageDetails;
import com.conceptglobal.pmc.model.MultiSelectData;
import com.conceptglobal.pmc.model.PatchDetailsModel;
import com.conceptglobal.pmc.model.TabEnable;
import com.conceptglobal.pmc.packageofpractice.models.IndividualCropItemModal;
import com.conceptglobal.pmc.packageofpractice.models.LibraryDetails;
import com.conceptglobal.pmc.promotions.models.TargetVsActialDetailsModel;
import com.conceptglobal.pmc.promotions.utils.Constants;
import com.conceptglobal.pmc.utils.ConstantDeclarations;
import com.conceptglobal.pmc.utils.Encryption;
import com.conceptglobal.pmc.utils.LabelUtils;
import com.conceptglobal.pmc.utils.PLog;
import com.conceptglobal.pmc.utils.SharedPrefManager;
import com.conceptglobal.pmc.utils.UtilDeclarations;
import io.fabric.sdk.android.services.events.EventsFilesManager;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.List;

/* loaded from: classes.dex */
public class GetDataFromDB {
    private static final String TAG = "GetDataFromDB";
    private static DataBaseHandler dbInstance = DataBaseHandler.getInstance();
    private static GetDataFromDB instance;
    private static SQLiteDatabase sqliteDatabase;
    private String message = "Exception";

    public Cursor getFarmerAceragesOldNewCursor() {
        return sqliteDatabase.rawQuery("SELECT  FarmerName,CONumber,Mobile,Acreages,AcreagesOwned,LeasedIn,LeasedOut,Cultivated  FROM pmcSVFarmerDetailsINNER JOIN pmcSVFarmerCropMapping ON pmcSVFarmerCropMapping.FarmerId=pmcSVFarmerDetails.FarmerIdINNER JOIN CropMaster ON pmcSVFarmerCropMapping .CropId=CropMaster.CropIdWHERE  pmcSVFarmerDetails.FarmerId=1 AND pmcSVFarmerCropMapping.recordFlag=1 AND pmcSVFarmerDetails.recordFlag=1UNION ALLSELECT  FarmerName,CONumber,Mobile,Acreages,AcreagesOwned,LeasedIn,LeasedOut,Cultivated  FROM pmcSVFarmerDetailsINNER JOIN pmcSVFarmerCropMapping ON pmcSVFarmerCropMapping.FarmerId=pmcSVFarmerDetails.FarmerIdINNER JOIN CropMaster ON pmcSVFarmerCropMapping .CropId=CropMaster.CropIdWHERE  pmcSVFarmerDetails.FarmerId=1 AND pmcSVFarmerCropMapping.recordFlag=1 AND pmcSVFarmerDetails.recordFlag=2", null);
    }

    public static void checkForDBTblUpdate(String[] strArr) {
        try {
            for (String str : strArr) {
                getInstance().executeRawQueryInDB(str);
            }
        } catch (Exception e) {
            e.printStackTrace();
            PLog.e(TAG, e);
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
                            PLog.e(TAG, e);
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

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0120, code lost:
    
        if (r2 != null) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x012e, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0133, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x012b, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0129, code lost:
    
        if (r2 == null) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.conceptglobal.pmc.promotions.models.UsageDetails> getUsagedetailsDetails(java.lang.String r5) {
        /*
            Method dump skipped, instructions count: 319
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getUsagedetailsDetails(java.lang.String):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0091, code lost:
    
        if (r2 != null) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x009f, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x00a4, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x009c, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x009a, code lost:
    
        if (r2 == null) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.conceptglobal.pmc.model.Log4Trace> getLog4TraceDetails(java.lang.String r5) {
        /*
            r4 = this;
            java.lang.String r0 = "Log4Trace"
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            r2 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r3 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L94 java.lang.Exception -> L96
            android.database.sqlite.SQLiteDatabase r3 = r3.openDatabase()     // Catch: java.lang.Throwable -> L94 java.lang.Exception -> L96
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r3     // Catch: java.lang.Throwable -> L94 java.lang.Exception -> L96
            android.database.Cursor r2 = r3.rawQuery(r5, r2)     // Catch: java.lang.Throwable -> L94 java.lang.Exception -> L96
            if (r2 == 0) goto L91
            int r5 = r2.getCount()     // Catch: java.lang.Throwable -> L94 java.lang.Exception -> L96
            if (r5 <= 0) goto L91
            boolean r5 = r2.moveToFirst()     // Catch: java.lang.Throwable -> L94 java.lang.Exception -> L96
            if (r5 == 0) goto L91
        L22:
            com.conceptglobal.pmc.model.Log4Trace r5 = new com.conceptglobal.pmc.model.Log4Trace     // Catch: java.lang.Exception -> L86 java.lang.Throwable -> L94
            r5.<init>()     // Catch: java.lang.Exception -> L86 java.lang.Throwable -> L94
            java.lang.String r3 = "CreatedID"
            int r3 = r2.getColumnIndex(r3)     // Catch: java.lang.Exception -> L86 java.lang.Throwable -> L94
            int r3 = r2.getInt(r3)     // Catch: java.lang.Exception -> L86 java.lang.Throwable -> L94
            r5.setCreatedID(r3)     // Catch: java.lang.Exception -> L86 java.lang.Throwable -> L94
            java.lang.String r3 = "ScreenName"
            int r3 = r2.getColumnIndex(r3)     // Catch: java.lang.Exception -> L86 java.lang.Throwable -> L94
            java.lang.String r3 = r2.getString(r3)     // Catch: java.lang.Exception -> L86 java.lang.Throwable -> L94
            r5.setName(r3)     // Catch: java.lang.Exception -> L86 java.lang.Throwable -> L94
            java.lang.String r3 = "PdaId"
            int r3 = r2.getColumnIndex(r3)     // Catch: java.lang.Exception -> L86 java.lang.Throwable -> L94
            int r3 = r2.getInt(r3)     // Catch: java.lang.Exception -> L86 java.lang.Throwable -> L94
            r5.setPdaId(r3)     // Catch: java.lang.Exception -> L86 java.lang.Throwable -> L94
            java.lang.String r3 = "CreatedDate"
            int r3 = r2.getColumnIndex(r3)     // Catch: java.lang.Exception -> L86 java.lang.Throwable -> L94
            java.lang.String r3 = r2.getString(r3)     // Catch: java.lang.Exception -> L86 java.lang.Throwable -> L94
            r5.setCreatedDate(r3)     // Catch: java.lang.Exception -> L86 java.lang.Throwable -> L94
            java.lang.String r3 = "ActivityID"
            int r3 = r2.getColumnIndex(r3)     // Catch: java.lang.Exception -> L86 java.lang.Throwable -> L94
            java.lang.String r3 = r2.getString(r3)     // Catch: java.lang.Exception -> L86 java.lang.Throwable -> L94
            r5.setActivityID(r3)     // Catch: java.lang.Exception -> L86 java.lang.Throwable -> L94
            java.lang.String r3 = "Action"
            int r3 = r2.getColumnIndexOrThrow(r3)     // Catch: java.lang.Exception -> L86 java.lang.Throwable -> L94
            java.lang.String r3 = r2.getString(r3)     // Catch: java.lang.Exception -> L86 java.lang.Throwable -> L94
            r5.setAction(r3)     // Catch: java.lang.Exception -> L86 java.lang.Throwable -> L94
            java.lang.String r3 = "UserId"
            int r3 = r2.getColumnIndex(r3)     // Catch: java.lang.Exception -> L86 java.lang.Throwable -> L94
            int r3 = r2.getInt(r3)     // Catch: java.lang.Exception -> L86 java.lang.Throwable -> L94
            r5.setUserId(r3)     // Catch: java.lang.Exception -> L86 java.lang.Throwable -> L94
            r1.add(r5)     // Catch: java.lang.Exception -> L86 java.lang.Throwable -> L94
            goto L8b
        L86:
            r5 = move-exception
            r3 = 0
            com.conceptglobal.pmc.utils.PLog.e(r0, r5, r3)     // Catch: java.lang.Throwable -> L94 java.lang.Exception -> L96
        L8b:
            boolean r5 = r2.moveToNext()     // Catch: java.lang.Throwable -> L94 java.lang.Exception -> L96
            if (r5 != 0) goto L22
        L91:
            if (r2 == 0) goto L9f
            goto L9c
        L94:
            r5 = move-exception
            goto La5
        L96:
            r5 = move-exception
            com.conceptglobal.pmc.utils.PLog.e(r0, r5)     // Catch: java.lang.Throwable -> L94
            if (r2 == 0) goto L9f
        L9c:
            r2.close()
        L9f:
            com.conceptglobal.pmc.database.DataBaseHandler r5 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r5.closeDatabase()
            return r1
        La5:
            if (r2 == 0) goto Laa
            r2.close()
        Laa:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getLog4TraceDetails(java.lang.String):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x003f, code lost:
    
        if (r2 != null) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x004d, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0052, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x004a, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0048, code lost:
    
        if (r2 == null) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.ArrayList<java.lang.Integer> getRuleAttributeIds(java.lang.String r5) {
        /*
            r4 = this;
            java.lang.String r0 = "getUsagedetailsDetails"
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            r2 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r3 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L42 java.lang.Exception -> L44
            android.database.sqlite.SQLiteDatabase r3 = r3.openDatabase()     // Catch: java.lang.Throwable -> L42 java.lang.Exception -> L44
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r3     // Catch: java.lang.Throwable -> L42 java.lang.Exception -> L44
            android.database.Cursor r2 = r3.rawQuery(r5, r2)     // Catch: java.lang.Throwable -> L42 java.lang.Exception -> L44
            if (r2 == 0) goto L3f
            int r5 = r2.getCount()     // Catch: java.lang.Throwable -> L42 java.lang.Exception -> L44
            if (r5 <= 0) goto L3f
            boolean r5 = r2.moveToFirst()     // Catch: java.lang.Throwable -> L42 java.lang.Exception -> L44
            if (r5 == 0) goto L3f
        L22:
            java.lang.String r5 = "AttributeId"
            int r5 = r2.getColumnIndex(r5)     // Catch: java.lang.Exception -> L34 java.lang.Throwable -> L42
            int r5 = r2.getInt(r5)     // Catch: java.lang.Exception -> L34 java.lang.Throwable -> L42
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)     // Catch: java.lang.Exception -> L34 java.lang.Throwable -> L42
            r1.add(r5)     // Catch: java.lang.Exception -> L34 java.lang.Throwable -> L42
            goto L39
        L34:
            r5 = move-exception
            r3 = 0
            com.conceptglobal.pmc.utils.PLog.e(r0, r5, r3)     // Catch: java.lang.Throwable -> L42 java.lang.Exception -> L44
        L39:
            boolean r5 = r2.moveToNext()     // Catch: java.lang.Throwable -> L42 java.lang.Exception -> L44
            if (r5 != 0) goto L22
        L3f:
            if (r2 == 0) goto L4d
            goto L4a
        L42:
            r5 = move-exception
            goto L53
        L44:
            r5 = move-exception
            com.conceptglobal.pmc.utils.PLog.e(r0, r5)     // Catch: java.lang.Throwable -> L42
            if (r2 == 0) goto L4d
        L4a:
            r2.close()
        L4d:
            com.conceptglobal.pmc.database.DataBaseHandler r5 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r5.closeDatabase()
            return r1
        L53:
            if (r2 == 0) goto L58
            r2.close()
        L58:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getRuleAttributeIds(java.lang.String):java.util.ArrayList");
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0068, code lost:
    
        if (r2 != null) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0076, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x007b, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0073, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0071, code lost:
    
        if (r2 == null) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.conceptglobal.pmc.promotions.models.ContentFaourites> getContentFavouriteDetails(java.lang.String r5) {
        /*
            r4 = this;
            java.lang.String r0 = "getUsagedetailsDetails"
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            r2 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r3 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L6b java.lang.Exception -> L6d
            android.database.sqlite.SQLiteDatabase r3 = r3.openDatabase()     // Catch: java.lang.Throwable -> L6b java.lang.Exception -> L6d
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r3     // Catch: java.lang.Throwable -> L6b java.lang.Exception -> L6d
            android.database.Cursor r2 = r3.rawQuery(r5, r2)     // Catch: java.lang.Throwable -> L6b java.lang.Exception -> L6d
            if (r2 == 0) goto L68
            int r5 = r2.getCount()     // Catch: java.lang.Throwable -> L6b java.lang.Exception -> L6d
            if (r5 <= 0) goto L68
            boolean r5 = r2.moveToFirst()     // Catch: java.lang.Throwable -> L6b java.lang.Exception -> L6d
            if (r5 == 0) goto L68
        L22:
            com.conceptglobal.pmc.promotions.models.ContentFaourites r5 = new com.conceptglobal.pmc.promotions.models.ContentFaourites     // Catch: java.lang.Exception -> L5d java.lang.Throwable -> L6b
            r5.<init>()     // Catch: java.lang.Exception -> L5d java.lang.Throwable -> L6b
            java.lang.String r3 = "FavouriteId"
            int r3 = r2.getColumnIndex(r3)     // Catch: java.lang.Exception -> L5d java.lang.Throwable -> L6b
            int r3 = r2.getInt(r3)     // Catch: java.lang.Exception -> L5d java.lang.Throwable -> L6b
            r5.setFavouriteId(r3)     // Catch: java.lang.Exception -> L5d java.lang.Throwable -> L6b
            java.lang.String r3 = "ContentID"
            int r3 = r2.getColumnIndex(r3)     // Catch: java.lang.Exception -> L5d java.lang.Throwable -> L6b
            int r3 = r2.getInt(r3)     // Catch: java.lang.Exception -> L5d java.lang.Throwable -> L6b
            r5.setContentID(r3)     // Catch: java.lang.Exception -> L5d java.lang.Throwable -> L6b
            java.lang.String r3 = "ISFavourite"
            int r3 = r2.getColumnIndex(r3)     // Catch: java.lang.Exception -> L5d java.lang.Throwable -> L6b
            int r3 = r2.getInt(r3)     // Catch: java.lang.Exception -> L5d java.lang.Throwable -> L6b
            r5.setISFavourite(r3)     // Catch: java.lang.Exception -> L5d java.lang.Throwable -> L6b
            com.conceptglobal.pmc.common.ConstantsPMC r3 = com.conceptglobal.pmc.common.ConstantsPMC.getInstance()     // Catch: java.lang.Exception -> L5d java.lang.Throwable -> L6b
            java.lang.String r3 = r3.getDeviceID()     // Catch: java.lang.Exception -> L5d java.lang.Throwable -> L6b
            r5.setPdaID(r3)     // Catch: java.lang.Exception -> L5d java.lang.Throwable -> L6b
            r1.add(r5)     // Catch: java.lang.Exception -> L5d java.lang.Throwable -> L6b
            goto L62
        L5d:
            r5 = move-exception
            r3 = 0
            com.conceptglobal.pmc.utils.PLog.e(r0, r5, r3)     // Catch: java.lang.Throwable -> L6b java.lang.Exception -> L6d
        L62:
            boolean r5 = r2.moveToNext()     // Catch: java.lang.Throwable -> L6b java.lang.Exception -> L6d
            if (r5 != 0) goto L22
        L68:
            if (r2 == 0) goto L76
            goto L73
        L6b:
            r5 = move-exception
            goto L7c
        L6d:
            r5 = move-exception
            com.conceptglobal.pmc.utils.PLog.e(r0, r5)     // Catch: java.lang.Throwable -> L6b
            if (r2 == 0) goto L76
        L73:
            r2.close()
        L76:
            com.conceptglobal.pmc.database.DataBaseHandler r5 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r5.closeDatabase()
            return r1
        L7c:
            if (r2 == 0) goto L81
            r2.close()
        L81:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getContentFavouriteDetails(java.lang.String):java.util.List");
    }

    public LibraryDetails getLibraryDetails(String str) {
        Exception exc;
        LibraryDetails libraryDetails;
        Exception e;
        Cursor cursor = null;
        r1 = null;
        r1 = null;
        r1 = null;
        r1 = null;
        LibraryDetails libraryDetails2 = null;
        cursor = null;
        try {
            try {
                SQLiteDatabase openDatabase = dbInstance.openDatabase();
                sqliteDatabase = openDatabase;
                Cursor rawQuery = openDatabase.rawQuery(str, null);
                if (rawQuery != null) {
                    try {
                        try {
                            if (rawQuery.getCount() > 0 && rawQuery.moveToFirst()) {
                                do {
                                    try {
                                        libraryDetails = new LibraryDetails();
                                    } catch (Exception e2) {
                                        libraryDetails = libraryDetails2;
                                        e = e2;
                                    }
                                    try {
                                        libraryDetails.setPOPID(rawQuery.getInt(rawQuery.getColumnIndex(Constants.POP_PRIMARY_COLUMN_NAME)));
                                        libraryDetails.setHTMLZIPURL(rawQuery.getString(rawQuery.getColumnIndex("HTMLZIPURL")));
                                        libraryDetails.setLocalHTMLZIPURL(rawQuery.getString(rawQuery.getColumnIndex("LocalHTMLZIPURL")));
                                        libraryDetails.setVersionNo(rawQuery.getInt(rawQuery.getColumnIndex("VersionNo")));
                                        libraryDetails.setDeviceVersionNo(rawQuery.getInt(rawQuery.getColumnIndex("DeviceVersionNo")));
                                    } catch (Exception e3) {
                                        e = e3;
                                        try {
                                            PLog.e("getLibraryDetails", e, 0);
                                            libraryDetails2 = libraryDetails;
                                        } catch (Exception e4) {
                                            cursor = rawQuery;
                                            exc = e4;
                                            PLog.e("getLibraryDetails", exc);
                                            if (cursor != null) {
                                                cursor.close();
                                            }
                                            dbInstance.closeDatabase();
                                            return libraryDetails;
                                        }
                                    }
                                    libraryDetails2 = libraryDetails;
                                } while (rawQuery.moveToNext());
                            }
                        } catch (Exception e5) {
                            LibraryDetails libraryDetails3 = libraryDetails2;
                            cursor = rawQuery;
                            exc = e5;
                            libraryDetails = libraryDetails3;
                        }
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
                if (rawQuery != null) {
                    rawQuery.close();
                }
                dbInstance.closeDatabase();
                return libraryDetails2;
            } catch (Exception e6) {
                exc = e6;
                libraryDetails = null;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v2, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5, types: [com.conceptglobal.pmc.packageofpractice.models.IndividualCropItemModal] */
    /* JADX WARN: Type inference failed for: r1v50 */
    /* JADX WARN: Type inference failed for: r1v6 */
    public IndividualCropItemModal getIndividualCropDetails(String str) {
        Exception exc;
        IndividualCropItemModal individualCropItemModal;
        Exception e;
        ?? r1 = 0;
        r1 = null;
        r1 = null;
        r1 = null;
        r1 = null;
        IndividualCropItemModal individualCropItemModal2 = null;
        Cursor cursor = null;
        try {
            try {
                SQLiteDatabase openDatabase = dbInstance.openDatabase();
                sqliteDatabase = openDatabase;
                Cursor rawQuery = openDatabase.rawQuery(str, null);
                if (rawQuery != null) {
                    try {
                        try {
                            if (rawQuery.getCount() > 0 && rawQuery.moveToFirst()) {
                                do {
                                    try {
                                        individualCropItemModal = new IndividualCropItemModal();
                                    } catch (Exception e2) {
                                        individualCropItemModal = individualCropItemModal2;
                                        e = e2;
                                    }
                                    try {
                                        individualCropItemModal.setPopID(rawQuery.getInt(rawQuery.getColumnIndex(Constants.POP_PRIMARY_COLUMN_NAME)));
                                        individualCropItemModal.setCropName(rawQuery.getString(rawQuery.getColumnIndex("CropName")));
                                        individualCropItemModal.setThumbnailURL(rawQuery.getString(rawQuery.getColumnIndex("ThumbnailURL")));
                                        individualCropItemModal.setLocalThumnailpath(rawQuery.getString(rawQuery.getColumnIndex("LocalThumnailpath")));
                                        individualCropItemModal.setHtmlZipURL(rawQuery.getString(rawQuery.getColumnIndex("HTMLZIPURL")));
                                        individualCropItemModal.setLocalHTMLZIPURL(rawQuery.getString(rawQuery.getColumnIndex("LocalHTMLZIPURL")));
                                        individualCropItemModal.setHtmlStartPage(rawQuery.getString(rawQuery.getColumnIndex("HTMLStartPage")));
                                        individualCropItemModal.setVersionNo(rawQuery.getInt(rawQuery.getColumnIndex("VersionNo")));
                                        individualCropItemModal.setDeviceVersionNo(rawQuery.getInt(rawQuery.getColumnIndex("DeviceVersionNo")));
                                    } catch (Exception e3) {
                                        e = e3;
                                        try {
                                            PLog.e("getLibraryDetails", e, 0);
                                            individualCropItemModal2 = individualCropItemModal;
                                        } catch (Exception e4) {
                                            cursor = rawQuery;
                                            exc = e4;
                                            PLog.e("getLibraryDetails", exc);
                                            if (cursor != null) {
                                                cursor.close();
                                            }
                                            dbInstance.closeDatabase();
                                            r1 = individualCropItemModal;
                                            return r1;
                                        }
                                    }
                                    individualCropItemModal2 = individualCropItemModal;
                                } while (rawQuery.moveToNext());
                            }
                        } catch (Exception e5) {
                            IndividualCropItemModal individualCropItemModal3 = individualCropItemModal2;
                            cursor = rawQuery;
                            exc = e5;
                            individualCropItemModal = individualCropItemModal3;
                        }
                    } catch (Throwable th) {
                        th = th;
                        r1 = rawQuery;
                        if (r1 != 0) {
                            r1.close();
                        }
                        dbInstance.closeDatabase();
                        throw th;
                    }
                }
                if (rawQuery != null) {
                    rawQuery.close();
                }
                dbInstance.closeDatabase();
                r1 = individualCropItemModal2;
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e6) {
            exc = e6;
            individualCropItemModal = null;
        }
        return r1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x0105, code lost:
    
        if (r6 != null) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0107, code lost:
    
        r6.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0111, code lost:
    
        if (r6 == null) goto L33;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.ArrayList<com.conceptglobal.pmc.packageofpractice.models.CropCategoryModal> getCropCategoryDetails(java.lang.String r13) {
        /*
            Method dump skipped, instructions count: 329
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getCropCategoryDetails(java.lang.String):java.util.ArrayList");
    }

    public static GetDataFromDB getInstance() {
        Log.e("DbInstatnce", "---created");
        if (instance == null) {
            instance = new GetDataFromDB();
        }
        return instance;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x004f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.conceptglobal.pmc.model.SampleModel getSampleModel(java.lang.String r4) throws java.lang.Exception {
        /*
            r3 = this;
            r0 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r1 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L42 java.lang.Exception -> L47
            android.database.sqlite.SQLiteDatabase r1 = r1.openDatabase()     // Catch: java.lang.Throwable -> L42 java.lang.Exception -> L47
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r1     // Catch: java.lang.Throwable -> L42 java.lang.Exception -> L47
            android.database.Cursor r4 = r1.rawQuery(r4, r0)     // Catch: java.lang.Throwable -> L42 java.lang.Exception -> L47
            if (r4 == 0) goto L37
            boolean r1 = r4.moveToFirst()     // Catch: java.lang.Exception -> L35 java.lang.Throwable -> L4c
            if (r1 == 0) goto L37
            com.conceptglobal.pmc.model.SampleModel r0 = new com.conceptglobal.pmc.model.SampleModel     // Catch: java.lang.Exception -> L35 java.lang.Throwable -> L4c
            r0.<init>()     // Catch: java.lang.Exception -> L35 java.lang.Throwable -> L4c
            r1 = 0
            java.lang.String r1 = r4.getString(r1)     // Catch: java.lang.Exception -> L35 java.lang.Throwable -> L4c
            r0.setId(r1)     // Catch: java.lang.Exception -> L35 java.lang.Throwable -> L4c
            r1 = 1
            java.lang.String r1 = r4.getString(r1)     // Catch: java.lang.Exception -> L35 java.lang.Throwable -> L4c
            r0.setName(r1)     // Catch: java.lang.Exception -> L35 java.lang.Throwable -> L4c
            if (r4 == 0) goto L2f
            r4.close()
        L2f:
            com.conceptglobal.pmc.database.DataBaseHandler r4 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r4.closeDatabase()
            return r0
        L35:
            r0 = move-exception
            goto L4b
        L37:
            if (r4 == 0) goto L3c
            r4.close()
        L3c:
            com.conceptglobal.pmc.database.DataBaseHandler r4 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r4.closeDatabase()
            return r0
        L42:
            r4 = move-exception
            r2 = r0
            r0 = r4
            r4 = r2
            goto L4d
        L47:
            r4 = move-exception
            r2 = r0
            r0 = r4
            r4 = r2
        L4b:
            throw r0     // Catch: java.lang.Throwable -> L4c
        L4c:
            r0 = move-exception
        L4d:
            if (r4 == 0) goto L52
            r4.close()
        L52:
            com.conceptglobal.pmc.database.DataBaseHandler r4 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r4.closeDatabase()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getSampleModel(java.lang.String):com.conceptglobal.pmc.model.SampleModel");
    }

    public boolean executeRawQuery(String str) throws Exception {
        try {
            executeRawQueryInDB(str);
            return true;
        } catch (Exception e) {
            PLog.e(TAG, e);
            return false;
        }
    }

    public boolean executeRawQueryForExpiry(String str) throws Exception {
        try {
            executeRawQueryInDB(str);
            return true;
        } catch (Exception e) {
            PLog.e(TAG, e);
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
                PLog.e(TAG, e, 0);
            }
        }
    }

    public Cursor getCursor(String str) {
        return sqliteDatabase.rawQuery(str, null);
    }

    public TargetVsActialDetailsModel getTargetAndActualDetails(String str) throws Exception {
        ConstantDeclarations.Enumaration.mRequestType0.value().intValue();
        TargetVsActialDetailsModel targetVsActialDetailsModel = new TargetVsActialDetailsModel();
        Cursor cursor = null;
        try {
            try {
                SQLiteDatabase openDatabase = dbInstance.openDatabase();
                sqliteDatabase = openDatabase;
                cursor = openDatabase.rawQuery(str, null);
                if (cursor != null && cursor.getCount() > 0 && cursor.moveToFirst()) {
                    do {
                        targetVsActialDetailsModel.setTarget(cursor.getInt(ConstantDeclarations.Enumaration.mRequestType0.value().intValue()));
                        targetVsActialDetailsModel.setPlan(cursor.getInt(ConstantDeclarations.Enumaration.mRequestType1.value().intValue()));
                        targetVsActialDetailsModel.setActual(cursor.getInt(ConstantDeclarations.Enumaration.mRequestType2.value().intValue()));
                    } while (cursor.moveToNext());
                }
                return targetVsActialDetailsModel;
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
            com.conceptglobal.pmc.database.DataBaseHandler r1 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L2e java.lang.Exception -> L33
            android.database.sqlite.SQLiteDatabase r1 = r1.openDatabase()     // Catch: java.lang.Throwable -> L2e java.lang.Exception -> L33
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r1     // Catch: java.lang.Throwable -> L2e java.lang.Exception -> L33
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
            com.conceptglobal.pmc.database.DataBaseHandler r4 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
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
            com.conceptglobal.pmc.database.DataBaseHandler r4 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r4.closeDatabase()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getSingleValue(java.lang.String):java.lang.String");
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
            com.conceptglobal.pmc.database.DataBaseHandler r1 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L2e java.lang.Exception -> L33
            android.database.sqlite.SQLiteDatabase r1 = r1.openDatabase()     // Catch: java.lang.Throwable -> L2e java.lang.Exception -> L33
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r1     // Catch: java.lang.Throwable -> L2e java.lang.Exception -> L33
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
            com.conceptglobal.pmc.database.DataBaseHandler r4 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
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
            com.conceptglobal.pmc.database.DataBaseHandler r4 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r4.closeDatabase()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getStringValue(java.lang.String):java.lang.String");
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
                            PLog.e(TAG, e);
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

    public List<CropModel> getListKeyValue(String str) throws Exception {
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
                            CropModel cropModel = new CropModel();
                            cropModel.setId(cursor.getInt(ConstantDeclarations.Enumaration.mRequestType0.value().intValue()));
                            cropModel.setValue(cursor.getString(ConstantDeclarations.Enumaration.mRequestType1.value().intValue()));
                            arrayList.add(cropModel);
                        } catch (Exception e) {
                            PLog.e(TAG, e);
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

    public AudianceFarmer getListAudianceData(String str) throws Exception {
        AudianceFarmer audianceFarmer = new AudianceFarmer();
        Cursor cursor = null;
        try {
            try {
                SQLiteDatabase openDatabase = dbInstance.openDatabase();
                sqliteDatabase = openDatabase;
                cursor = openDatabase.rawQuery(str, null);
                if (cursor != null && cursor.getCount() > 0 && cursor.moveToFirst()) {
                    do {
                        try {
                            audianceFarmer.setTableName(cursor.getString(ConstantDeclarations.Enumaration.mRequestType0.value().intValue()));
                            audianceFarmer.setDbColumnName(cursor.getString(ConstantDeclarations.Enumaration.mRequestType1.value().intValue()));
                        } catch (Exception e) {
                            PLog.e(TAG, e);
                        }
                    } while (cursor.moveToNext());
                }
                return audianceFarmer;
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

    /* JADX WARN: Code restructure failed: missing block: B:19:0x008f, code lost:
    
        if (r1 != null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x009f, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x00a4, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x009c, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x009a, code lost:
    
        if (r1 == null) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.conceptglobal.pmc.model.VillageDetails> getVillageNames(java.lang.String r14) {
        /*
            r13 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r1 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r2 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> L94
            android.database.sqlite.SQLiteDatabase r2 = r2.openDatabase()     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> L94
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r2     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> L94
            android.database.Cursor r1 = r2.rawQuery(r14, r1)     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> L94
            if (r1 == 0) goto L8f
            int r14 = r1.getCount()     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> L94
            if (r14 <= 0) goto L8f
            boolean r14 = r1.moveToFirst()     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> L94
            if (r14 == 0) goto L8f
        L20:
            com.conceptglobal.pmc.model.VillageDetails r14 = new com.conceptglobal.pmc.model.VillageDetails     // Catch: java.lang.Exception -> L83 java.lang.Throwable -> L92
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType0     // Catch: java.lang.Exception -> L83 java.lang.Throwable -> L92
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> L83 java.lang.Throwable -> L92
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> L83 java.lang.Throwable -> L92
            java.lang.String r4 = r1.getString(r2)     // Catch: java.lang.Exception -> L83 java.lang.Throwable -> L92
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType2     // Catch: java.lang.Exception -> L83 java.lang.Throwable -> L92
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> L83 java.lang.Throwable -> L92
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> L83 java.lang.Throwable -> L92
            int r6 = r1.getInt(r2)     // Catch: java.lang.Exception -> L83 java.lang.Throwable -> L92
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType3     // Catch: java.lang.Exception -> L83 java.lang.Throwable -> L92
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> L83 java.lang.Throwable -> L92
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> L83 java.lang.Throwable -> L92
            int r7 = r1.getInt(r2)     // Catch: java.lang.Exception -> L83 java.lang.Throwable -> L92
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType4     // Catch: java.lang.Exception -> L83 java.lang.Throwable -> L92
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> L83 java.lang.Throwable -> L92
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> L83 java.lang.Throwable -> L92
            int r8 = r1.getInt(r2)     // Catch: java.lang.Exception -> L83 java.lang.Throwable -> L92
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType1     // Catch: java.lang.Exception -> L83 java.lang.Throwable -> L92
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> L83 java.lang.Throwable -> L92
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> L83 java.lang.Throwable -> L92
            java.lang.String r9 = r1.getString(r2)     // Catch: java.lang.Exception -> L83 java.lang.Throwable -> L92
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType1     // Catch: java.lang.Exception -> L83 java.lang.Throwable -> L92
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> L83 java.lang.Throwable -> L92
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> L83 java.lang.Throwable -> L92
            java.lang.String r10 = r1.getString(r2)     // Catch: java.lang.Exception -> L83 java.lang.Throwable -> L92
            java.lang.String r12 = ""
            r3 = 0
            r5 = 0
            r11 = 1
            r2 = r14
            r2.<init>(r3, r4, r5, r6, r7, r8, r9, r10, r11, r12)     // Catch: java.lang.Exception -> L83 java.lang.Throwable -> L92
            r0.add(r14)     // Catch: java.lang.Exception -> L83 java.lang.Throwable -> L92
            goto L89
        L83:
            r14 = move-exception
            java.lang.String r2 = "GetDataFromDB"
            com.conceptglobal.pmc.utils.PLog.e(r2, r14)     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> L94
        L89:
            boolean r14 = r1.moveToNext()     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> L94
            if (r14 != 0) goto L20
        L8f:
            if (r1 == 0) goto L9f
            goto L9c
        L92:
            r14 = move-exception
            goto La5
        L94:
            r14 = move-exception
            java.lang.String r2 = "Getting Village Names"
            com.conceptglobal.pmc.utils.PLog.e(r2, r14)     // Catch: java.lang.Throwable -> L92
            if (r1 == 0) goto L9f
        L9c:
            r1.close()
        L9f:
            com.conceptglobal.pmc.database.DataBaseHandler r14 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r14.closeDatabase()
            return r0
        La5:
            if (r1 == 0) goto Laa
            r1.close()
        Laa:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            throw r14
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getVillageNames(java.lang.String):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x00a3, code lost:
    
        if (r1 != null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x00b3, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x00b8, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00b0, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00ae, code lost:
    
        if (r1 == null) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.conceptglobal.pmc.model.VillageDetails> getActivityNamesForToDo(java.lang.String r14) {
        /*
            r13 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r1 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r2 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> La6 java.lang.Exception -> La8
            android.database.sqlite.SQLiteDatabase r2 = r2.openDatabase()     // Catch: java.lang.Throwable -> La6 java.lang.Exception -> La8
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r2     // Catch: java.lang.Throwable -> La6 java.lang.Exception -> La8
            android.database.Cursor r1 = r2.rawQuery(r14, r1)     // Catch: java.lang.Throwable -> La6 java.lang.Exception -> La8
            if (r1 == 0) goto La3
            int r14 = r1.getCount()     // Catch: java.lang.Throwable -> La6 java.lang.Exception -> La8
            if (r14 <= 0) goto La3
            boolean r14 = r1.moveToFirst()     // Catch: java.lang.Throwable -> La6 java.lang.Exception -> La8
            if (r14 == 0) goto La3
        L20:
            com.conceptglobal.pmc.model.VillageDetails r14 = new com.conceptglobal.pmc.model.VillageDetails     // Catch: java.lang.Exception -> L97 java.lang.Throwable -> La6
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType0     // Catch: java.lang.Exception -> L97 java.lang.Throwable -> La6
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> L97 java.lang.Throwable -> La6
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> L97 java.lang.Throwable -> La6
            java.lang.String r4 = r1.getString(r2)     // Catch: java.lang.Exception -> L97 java.lang.Throwable -> La6
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType3     // Catch: java.lang.Exception -> L97 java.lang.Throwable -> La6
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> L97 java.lang.Throwable -> La6
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> L97 java.lang.Throwable -> La6
            int r6 = r1.getInt(r2)     // Catch: java.lang.Exception -> L97 java.lang.Throwable -> La6
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType4     // Catch: java.lang.Exception -> L97 java.lang.Throwable -> La6
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> L97 java.lang.Throwable -> La6
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> L97 java.lang.Throwable -> La6
            int r7 = r1.getInt(r2)     // Catch: java.lang.Exception -> L97 java.lang.Throwable -> La6
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType5     // Catch: java.lang.Exception -> L97 java.lang.Throwable -> La6
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> L97 java.lang.Throwable -> La6
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> L97 java.lang.Throwable -> La6
            int r8 = r1.getInt(r2)     // Catch: java.lang.Exception -> L97 java.lang.Throwable -> La6
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType1     // Catch: java.lang.Exception -> L97 java.lang.Throwable -> La6
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> L97 java.lang.Throwable -> La6
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> L97 java.lang.Throwable -> La6
            int r2 = r1.getInt(r2)     // Catch: java.lang.Exception -> L97 java.lang.Throwable -> La6
            java.lang.String r9 = r13.getActiviyName(r2)     // Catch: java.lang.Exception -> L97 java.lang.Throwable -> La6
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType1     // Catch: java.lang.Exception -> L97 java.lang.Throwable -> La6
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> L97 java.lang.Throwable -> La6
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> L97 java.lang.Throwable -> La6
            int r2 = r1.getInt(r2)     // Catch: java.lang.Exception -> L97 java.lang.Throwable -> La6
            java.lang.String r10 = r13.getActiviyName(r2)     // Catch: java.lang.Exception -> L97 java.lang.Throwable -> La6
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType2     // Catch: java.lang.Exception -> L97 java.lang.Throwable -> La6
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> L97 java.lang.Throwable -> La6
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> L97 java.lang.Throwable -> La6
            java.lang.String r12 = r1.getString(r2)     // Catch: java.lang.Exception -> L97 java.lang.Throwable -> La6
            r3 = 0
            r5 = 0
            r11 = 1
            r2 = r14
            r2.<init>(r3, r4, r5, r6, r7, r8, r9, r10, r11, r12)     // Catch: java.lang.Exception -> L97 java.lang.Throwable -> La6
            r0.add(r14)     // Catch: java.lang.Exception -> L97 java.lang.Throwable -> La6
            goto L9d
        L97:
            r14 = move-exception
            java.lang.String r2 = "GetDataFromDB"
            com.conceptglobal.pmc.utils.PLog.e(r2, r14)     // Catch: java.lang.Throwable -> La6 java.lang.Exception -> La8
        L9d:
            boolean r14 = r1.moveToNext()     // Catch: java.lang.Throwable -> La6 java.lang.Exception -> La8
            if (r14 != 0) goto L20
        La3:
            if (r1 == 0) goto Lb3
            goto Lb0
        La6:
            r14 = move-exception
            goto Lb9
        La8:
            r14 = move-exception
            java.lang.String r2 = "Getting Activity Names"
            com.conceptglobal.pmc.utils.PLog.e(r2, r14)     // Catch: java.lang.Throwable -> La6
            if (r1 == 0) goto Lb3
        Lb0:
            r1.close()
        Lb3:
            com.conceptglobal.pmc.database.DataBaseHandler r14 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r14.closeDatabase()
            return r0
        Lb9:
            if (r1 == 0) goto Lbe
            r1.close()
        Lbe:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            throw r14
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getActivityNamesForToDo(java.lang.String):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x009b, code lost:
    
        if (r1 != null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x00ab, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x00b0, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00a8, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00a6, code lost:
    
        if (r1 == null) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.conceptglobal.pmc.model.VillageDetails> getActivitySummeryNamesForToDo(java.lang.String r14) {
        /*
            r13 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r1 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r2 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L9e java.lang.Exception -> La0
            android.database.sqlite.SQLiteDatabase r2 = r2.openDatabase()     // Catch: java.lang.Throwable -> L9e java.lang.Exception -> La0
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r2     // Catch: java.lang.Throwable -> L9e java.lang.Exception -> La0
            android.database.Cursor r1 = r2.rawQuery(r14, r1)     // Catch: java.lang.Throwable -> L9e java.lang.Exception -> La0
            if (r1 == 0) goto L9b
            int r14 = r1.getCount()     // Catch: java.lang.Throwable -> L9e java.lang.Exception -> La0
            if (r14 <= 0) goto L9b
            boolean r14 = r1.moveToFirst()     // Catch: java.lang.Throwable -> L9e java.lang.Exception -> La0
            if (r14 == 0) goto L9b
        L20:
            com.conceptglobal.pmc.model.VillageDetails r14 = new com.conceptglobal.pmc.model.VillageDetails     // Catch: java.lang.Exception -> L8f java.lang.Throwable -> L9e
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType0     // Catch: java.lang.Exception -> L8f java.lang.Throwable -> L9e
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> L8f java.lang.Throwable -> L9e
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> L8f java.lang.Throwable -> L9e
            java.lang.String r4 = r1.getString(r2)     // Catch: java.lang.Exception -> L8f java.lang.Throwable -> L9e
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType3     // Catch: java.lang.Exception -> L8f java.lang.Throwable -> L9e
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> L8f java.lang.Throwable -> L9e
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> L8f java.lang.Throwable -> L9e
            int r6 = r1.getInt(r2)     // Catch: java.lang.Exception -> L8f java.lang.Throwable -> L9e
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType4     // Catch: java.lang.Exception -> L8f java.lang.Throwable -> L9e
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> L8f java.lang.Throwable -> L9e
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> L8f java.lang.Throwable -> L9e
            int r7 = r1.getInt(r2)     // Catch: java.lang.Exception -> L8f java.lang.Throwable -> L9e
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType5     // Catch: java.lang.Exception -> L8f java.lang.Throwable -> L9e
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> L8f java.lang.Throwable -> L9e
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> L8f java.lang.Throwable -> L9e
            int r8 = r1.getInt(r2)     // Catch: java.lang.Exception -> L8f java.lang.Throwable -> L9e
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType1     // Catch: java.lang.Exception -> L8f java.lang.Throwable -> L9e
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> L8f java.lang.Throwable -> L9e
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> L8f java.lang.Throwable -> L9e
            java.lang.String r9 = r1.getString(r2)     // Catch: java.lang.Exception -> L8f java.lang.Throwable -> L9e
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType1     // Catch: java.lang.Exception -> L8f java.lang.Throwable -> L9e
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> L8f java.lang.Throwable -> L9e
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> L8f java.lang.Throwable -> L9e
            java.lang.String r10 = r1.getString(r2)     // Catch: java.lang.Exception -> L8f java.lang.Throwable -> L9e
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType2     // Catch: java.lang.Exception -> L8f java.lang.Throwable -> L9e
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> L8f java.lang.Throwable -> L9e
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> L8f java.lang.Throwable -> L9e
            java.lang.String r12 = r1.getString(r2)     // Catch: java.lang.Exception -> L8f java.lang.Throwable -> L9e
            r3 = 0
            r5 = 0
            r11 = 1
            r2 = r14
            r2.<init>(r3, r4, r5, r6, r7, r8, r9, r10, r11, r12)     // Catch: java.lang.Exception -> L8f java.lang.Throwable -> L9e
            r0.add(r14)     // Catch: java.lang.Exception -> L8f java.lang.Throwable -> L9e
            goto L95
        L8f:
            r14 = move-exception
            java.lang.String r2 = "GetDataFromDB"
            com.conceptglobal.pmc.utils.PLog.e(r2, r14)     // Catch: java.lang.Throwable -> L9e java.lang.Exception -> La0
        L95:
            boolean r14 = r1.moveToNext()     // Catch: java.lang.Throwable -> L9e java.lang.Exception -> La0
            if (r14 != 0) goto L20
        L9b:
            if (r1 == 0) goto Lab
            goto La8
        L9e:
            r14 = move-exception
            goto Lb1
        La0:
            r14 = move-exception
            java.lang.String r2 = "Getting Activity Names"
            com.conceptglobal.pmc.utils.PLog.e(r2, r14)     // Catch: java.lang.Throwable -> L9e
            if (r1 == 0) goto Lab
        La8:
            r1.close()
        Lab:
            com.conceptglobal.pmc.database.DataBaseHandler r14 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r14.closeDatabase()
            return r0
        Lb1:
            if (r1 == 0) goto Lb6
            r1.close()
        Lb6:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            throw r14
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getActivitySummeryNamesForToDo(java.lang.String):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0135, code lost:
    
        if (r1 != null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0145, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x014a, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0142, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0140, code lost:
    
        if (r1 == null) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.conceptglobal.pmc.model.LastVisitModel> getLastVistData(java.lang.String r5) {
        /*
            Method dump skipped, instructions count: 342
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getLastVistData(java.lang.String):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x00c2, code lost:
    
        if (r2 != null) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00d0, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00d5, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00cd, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00cb, code lost:
    
        if (r2 == null) goto L40;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.conceptglobal.pmc.model.SuggesionsModel> getSuggesionsList(java.lang.String r6) {
        /*
            r5 = this;
            java.lang.String r0 = "getSuggesionsList"
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            r2 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r3 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> Lc5 java.lang.Exception -> Lc7
            android.database.sqlite.SQLiteDatabase r3 = r3.openDatabase()     // Catch: java.lang.Throwable -> Lc5 java.lang.Exception -> Lc7
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r3     // Catch: java.lang.Throwable -> Lc5 java.lang.Exception -> Lc7
            android.database.Cursor r2 = r3.rawQuery(r6, r2)     // Catch: java.lang.Throwable -> Lc5 java.lang.Exception -> Lc7
            if (r2 == 0) goto Lc2
            int r6 = r2.getCount()     // Catch: java.lang.Throwable -> Lc5 java.lang.Exception -> Lc7
            if (r6 <= 0) goto Lc2
            boolean r6 = r2.moveToFirst()     // Catch: java.lang.Throwable -> Lc5 java.lang.Exception -> Lc7
            if (r6 == 0) goto Lc2
        L22:
            com.conceptglobal.pmc.model.SuggesionsModel r6 = new com.conceptglobal.pmc.model.SuggesionsModel     // Catch: java.lang.Exception -> Lb7 java.lang.Throwable -> Lc5
            r6.<init>()     // Catch: java.lang.Exception -> Lb7 java.lang.Throwable -> Lc5
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r3 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType0     // Catch: java.lang.Exception -> Lb7 java.lang.Throwable -> Lc5
            java.lang.Integer r3 = r3.value()     // Catch: java.lang.Exception -> Lb7 java.lang.Throwable -> Lc5
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> Lb7 java.lang.Throwable -> Lc5
            java.lang.String r3 = r2.getString(r3)     // Catch: java.lang.Exception -> Lb7 java.lang.Throwable -> Lc5
            java.lang.String r4 = ""
            if (r3 == 0) goto L48
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r3 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType0     // Catch: java.lang.Exception -> Lb7 java.lang.Throwable -> Lc5
            java.lang.Integer r3 = r3.value()     // Catch: java.lang.Exception -> Lb7 java.lang.Throwable -> Lc5
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> Lb7 java.lang.Throwable -> Lc5
            java.lang.String r3 = r2.getString(r3)     // Catch: java.lang.Exception -> Lb7 java.lang.Throwable -> Lc5
            goto L49
        L48:
            r3 = r4
        L49:
            r6.setAttributeName(r3)     // Catch: java.lang.Exception -> Lb7 java.lang.Throwable -> Lc5
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r3 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType1     // Catch: java.lang.Exception -> Lb7 java.lang.Throwable -> Lc5
            java.lang.Integer r3 = r3.value()     // Catch: java.lang.Exception -> Lb7 java.lang.Throwable -> Lc5
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> Lb7 java.lang.Throwable -> Lc5
            java.lang.String r3 = r2.getString(r3)     // Catch: java.lang.Exception -> Lb7 java.lang.Throwable -> Lc5
            if (r3 == 0) goto L6b
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r3 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType1     // Catch: java.lang.Exception -> Lb7 java.lang.Throwable -> Lc5
            java.lang.Integer r3 = r3.value()     // Catch: java.lang.Exception -> Lb7 java.lang.Throwable -> Lc5
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> Lb7 java.lang.Throwable -> Lc5
            java.lang.String r3 = r2.getString(r3)     // Catch: java.lang.Exception -> Lb7 java.lang.Throwable -> Lc5
            goto L6c
        L6b:
            r3 = r4
        L6c:
            r6.setAttributeValue(r3)     // Catch: java.lang.Exception -> Lb7 java.lang.Throwable -> Lc5
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r3 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType2     // Catch: java.lang.Exception -> Lb7 java.lang.Throwable -> Lc5
            java.lang.Integer r3 = r3.value()     // Catch: java.lang.Exception -> Lb7 java.lang.Throwable -> Lc5
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> Lb7 java.lang.Throwable -> Lc5
            java.lang.String r3 = r2.getString(r3)     // Catch: java.lang.Exception -> Lb7 java.lang.Throwable -> Lc5
            if (r3 == 0) goto L8e
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r3 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType2     // Catch: java.lang.Exception -> Lb7 java.lang.Throwable -> Lc5
            java.lang.Integer r3 = r3.value()     // Catch: java.lang.Exception -> Lb7 java.lang.Throwable -> Lc5
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> Lb7 java.lang.Throwable -> Lc5
            java.lang.String r3 = r2.getString(r3)     // Catch: java.lang.Exception -> Lb7 java.lang.Throwable -> Lc5
            goto L8f
        L8e:
            r3 = r4
        L8f:
            r6.setAttributeId(r3)     // Catch: java.lang.Exception -> Lb7 java.lang.Throwable -> Lc5
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r3 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType3     // Catch: java.lang.Exception -> Lb7 java.lang.Throwable -> Lc5
            java.lang.Integer r3 = r3.value()     // Catch: java.lang.Exception -> Lb7 java.lang.Throwable -> Lc5
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> Lb7 java.lang.Throwable -> Lc5
            java.lang.String r3 = r2.getString(r3)     // Catch: java.lang.Exception -> Lb7 java.lang.Throwable -> Lc5
            if (r3 == 0) goto Lb0
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r3 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType3     // Catch: java.lang.Exception -> Lb7 java.lang.Throwable -> Lc5
            java.lang.Integer r3 = r3.value()     // Catch: java.lang.Exception -> Lb7 java.lang.Throwable -> Lc5
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> Lb7 java.lang.Throwable -> Lc5
            java.lang.String r4 = r2.getString(r3)     // Catch: java.lang.Exception -> Lb7 java.lang.Throwable -> Lc5
        Lb0:
            r6.setSuggestedValueIds(r4)     // Catch: java.lang.Exception -> Lb7 java.lang.Throwable -> Lc5
            r1.add(r6)     // Catch: java.lang.Exception -> Lb7 java.lang.Throwable -> Lc5
            goto Lbc
        Lb7:
            r6 = move-exception
            r3 = 0
            com.conceptglobal.pmc.utils.PLog.e(r0, r6, r3)     // Catch: java.lang.Throwable -> Lc5 java.lang.Exception -> Lc7
        Lbc:
            boolean r6 = r2.moveToNext()     // Catch: java.lang.Throwable -> Lc5 java.lang.Exception -> Lc7
            if (r6 != 0) goto L22
        Lc2:
            if (r2 == 0) goto Ld0
            goto Lcd
        Lc5:
            r6 = move-exception
            goto Ld6
        Lc7:
            r6 = move-exception
            com.conceptglobal.pmc.utils.PLog.e(r0, r6)     // Catch: java.lang.Throwable -> Lc5
            if (r2 == 0) goto Ld0
        Lcd:
            r2.close()
        Ld0:
            com.conceptglobal.pmc.database.DataBaseHandler r6 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r6.closeDatabase()
            return r1
        Ld6:
            if (r2 == 0) goto Ldb
            r2.close()
        Ldb:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getSuggesionsList(java.lang.String):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x00c2, code lost:
    
        if (r2 != null) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00d0, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00d5, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00cd, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00cb, code lost:
    
        if (r2 == null) goto L40;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.conceptglobal.pmc.model.BrandSuggesionsModel> getDossagesList(java.lang.String r9) {
        /*
            r8 = this;
            java.lang.String r0 = "getSuggesionsList"
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            r2 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r3 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> Lc5 java.lang.Exception -> Lc7
            android.database.sqlite.SQLiteDatabase r3 = r3.openDatabase()     // Catch: java.lang.Throwable -> Lc5 java.lang.Exception -> Lc7
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r3     // Catch: java.lang.Throwable -> Lc5 java.lang.Exception -> Lc7
            android.database.Cursor r2 = r3.rawQuery(r9, r2)     // Catch: java.lang.Throwable -> Lc5 java.lang.Exception -> Lc7
            if (r2 == 0) goto Lc2
            int r9 = r2.getCount()     // Catch: java.lang.Throwable -> Lc5 java.lang.Exception -> Lc7
            if (r9 <= 0) goto Lc2
            boolean r9 = r2.moveToFirst()     // Catch: java.lang.Throwable -> Lc5 java.lang.Exception -> Lc7
            if (r9 == 0) goto Lc2
        L22:
            com.conceptglobal.pmc.model.BrandSuggesionsModel r9 = new com.conceptglobal.pmc.model.BrandSuggesionsModel     // Catch: java.lang.Exception -> Lb7 java.lang.Throwable -> Lc5
            r9.<init>()     // Catch: java.lang.Exception -> Lb7 java.lang.Throwable -> Lc5
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r3 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType0     // Catch: java.lang.Exception -> Lb7 java.lang.Throwable -> Lc5
            java.lang.Integer r3 = r3.value()     // Catch: java.lang.Exception -> Lb7 java.lang.Throwable -> Lc5
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> Lb7 java.lang.Throwable -> Lc5
            java.lang.String r3 = r2.getString(r3)     // Catch: java.lang.Exception -> Lb7 java.lang.Throwable -> Lc5
            java.lang.String r4 = ""
            if (r3 == 0) goto L48
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r3 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType0     // Catch: java.lang.Exception -> Lb7 java.lang.Throwable -> Lc5
            java.lang.Integer r3 = r3.value()     // Catch: java.lang.Exception -> Lb7 java.lang.Throwable -> Lc5
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> Lb7 java.lang.Throwable -> Lc5
            java.lang.String r3 = r2.getString(r3)     // Catch: java.lang.Exception -> Lb7 java.lang.Throwable -> Lc5
            goto L49
        L48:
            r3 = r4
        L49:
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r5 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType1     // Catch: java.lang.Exception -> Lb7 java.lang.Throwable -> Lc5
            java.lang.Integer r5 = r5.value()     // Catch: java.lang.Exception -> Lb7 java.lang.Throwable -> Lc5
            int r5 = r5.intValue()     // Catch: java.lang.Exception -> Lb7 java.lang.Throwable -> Lc5
            java.lang.String r5 = r2.getString(r5)     // Catch: java.lang.Exception -> Lb7 java.lang.Throwable -> Lc5
            if (r5 == 0) goto L68
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r5 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType1     // Catch: java.lang.Exception -> Lb7 java.lang.Throwable -> Lc5
            java.lang.Integer r5 = r5.value()     // Catch: java.lang.Exception -> Lb7 java.lang.Throwable -> Lc5
            int r5 = r5.intValue()     // Catch: java.lang.Exception -> Lb7 java.lang.Throwable -> Lc5
            java.lang.String r5 = r2.getString(r5)     // Catch: java.lang.Exception -> Lb7 java.lang.Throwable -> Lc5
            goto L69
        L68:
            r5 = r4
        L69:
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r6 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType2     // Catch: java.lang.Exception -> Lb7 java.lang.Throwable -> Lc5
            java.lang.Integer r6 = r6.value()     // Catch: java.lang.Exception -> Lb7 java.lang.Throwable -> Lc5
            int r6 = r6.intValue()     // Catch: java.lang.Exception -> Lb7 java.lang.Throwable -> Lc5
            java.lang.String r6 = r2.getString(r6)     // Catch: java.lang.Exception -> Lb7 java.lang.Throwable -> Lc5
            if (r6 == 0) goto L88
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r6 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType2     // Catch: java.lang.Exception -> Lb7 java.lang.Throwable -> Lc5
            java.lang.Integer r6 = r6.value()     // Catch: java.lang.Exception -> Lb7 java.lang.Throwable -> Lc5
            int r6 = r6.intValue()     // Catch: java.lang.Exception -> Lb7 java.lang.Throwable -> Lc5
            java.lang.String r6 = r2.getString(r6)     // Catch: java.lang.Exception -> Lb7 java.lang.Throwable -> Lc5
            goto L89
        L88:
            r6 = r4
        L89:
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r7 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType3     // Catch: java.lang.Exception -> Lb7 java.lang.Throwable -> Lc5
            java.lang.Integer r7 = r7.value()     // Catch: java.lang.Exception -> Lb7 java.lang.Throwable -> Lc5
            int r7 = r7.intValue()     // Catch: java.lang.Exception -> Lb7 java.lang.Throwable -> Lc5
            java.lang.String r7 = r2.getString(r7)     // Catch: java.lang.Exception -> Lb7 java.lang.Throwable -> Lc5
            if (r7 == 0) goto La7
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r4 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType3     // Catch: java.lang.Exception -> Lb7 java.lang.Throwable -> Lc5
            java.lang.Integer r4 = r4.value()     // Catch: java.lang.Exception -> Lb7 java.lang.Throwable -> Lc5
            int r4 = r4.intValue()     // Catch: java.lang.Exception -> Lb7 java.lang.Throwable -> Lc5
            java.lang.String r4 = r2.getString(r4)     // Catch: java.lang.Exception -> Lb7 java.lang.Throwable -> Lc5
        La7:
            r9.setAttributeName(r3)     // Catch: java.lang.Exception -> Lb7 java.lang.Throwable -> Lc5
            r9.setAttributeName2(r5)     // Catch: java.lang.Exception -> Lb7 java.lang.Throwable -> Lc5
            r9.setAttributeValue(r6)     // Catch: java.lang.Exception -> Lb7 java.lang.Throwable -> Lc5
            r9.setAttributeValue2(r4)     // Catch: java.lang.Exception -> Lb7 java.lang.Throwable -> Lc5
            r1.add(r9)     // Catch: java.lang.Exception -> Lb7 java.lang.Throwable -> Lc5
            goto Lbc
        Lb7:
            r9 = move-exception
            r3 = 0
            com.conceptglobal.pmc.utils.PLog.e(r0, r9, r3)     // Catch: java.lang.Throwable -> Lc5 java.lang.Exception -> Lc7
        Lbc:
            boolean r9 = r2.moveToNext()     // Catch: java.lang.Throwable -> Lc5 java.lang.Exception -> Lc7
            if (r9 != 0) goto L22
        Lc2:
            if (r2 == 0) goto Ld0
            goto Lcd
        Lc5:
            r9 = move-exception
            goto Ld6
        Lc7:
            r9 = move-exception
            com.conceptglobal.pmc.utils.PLog.e(r0, r9)     // Catch: java.lang.Throwable -> Lc5
            if (r2 == 0) goto Ld0
        Lcd:
            r2.close()
        Ld0:
            com.conceptglobal.pmc.database.DataBaseHandler r9 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r9.closeDatabase()
            return r1
        Ld6:
            if (r2 == 0) goto Ldb
            r2.close()
        Ldb:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getDossagesList(java.lang.String):java.util.List");
    }

    public void updateSummaryTableActualDetails(String str, String str2) throws Exception {
        Cursor cursor = null;
        try {
            try {
                SQLiteDatabase openDatabase = dbInstance.openDatabase();
                sqliteDatabase = openDatabase;
                cursor = openDatabase.rawQuery(str, null);
                if (cursor != null && cursor.moveToFirst()) {
                    do {
                        executeRawQuery(Queries.getInstance().getUpdateActualValQry(str2, cursor.getInt(0) + 1));
                    } while (cursor.moveToNext());
                }
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

    public void updateChildTransactionDetails(String str) throws Exception {
        Cursor cursor = null;
        try {
            try {
                SQLiteDatabase openDatabase = dbInstance.openDatabase();
                sqliteDatabase = openDatabase;
                cursor = openDatabase.rawQuery(str, null);
                if (cursor != null && cursor.moveToFirst()) {
                    do {
                        int i = cursor.getInt(0);
                        if (i > 0) {
                            executeRawQuery(Queries.getInstance().UpdateChildTransdetails(i));
                        }
                    } while (cursor.moveToNext());
                }
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

    public void updateSurveyChildTransactionDetails(String str) throws Exception {
        Cursor cursor = null;
        try {
            try {
                SQLiteDatabase openDatabase = dbInstance.openDatabase();
                sqliteDatabase = openDatabase;
                cursor = openDatabase.rawQuery(str, null);
                if (cursor != null && cursor.moveToFirst()) {
                    do {
                        int i = cursor.getInt(0);
                        if (i > 0) {
                            executeRawQuery(Queries.getInstance().UpdateSurveyChildTransdetails(i));
                        }
                    } while (cursor.moveToNext());
                }
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

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0201, code lost:
    
        if (r1 != null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0211, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0216, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x020e, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x020c, code lost:
    
        if (r1 == null) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.conceptglobal.pmc.model.AssignmentActivityDetailsModel> getFarmerActivityDetails(java.lang.String r5) {
        /*
            Method dump skipped, instructions count: 546
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getFarmerActivityDetails(java.lang.String):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x01f0, code lost:
    
        if (r1 != null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0200, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0205, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x01fd, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x01fb, code lost:
    
        if (r1 == null) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.conceptglobal.pmc.model.SurveyAssignmentActivityDetailsModel> getSurveyActivityDetails(java.lang.String r5) {
        /*
            Method dump skipped, instructions count: 529
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getSurveyActivityDetails(java.lang.String):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x00cf, code lost:
    
        if (r1 != null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x00df, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x00e4, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00dc, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00da, code lost:
    
        if (r1 == null) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.conceptglobal.pmc.model.StatusActivityModel> getStatusActivityDetails(java.lang.String r5) {
        /*
            r4 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r1 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r2 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> Ld2 java.lang.Exception -> Ld4
            android.database.sqlite.SQLiteDatabase r2 = r2.openDatabase()     // Catch: java.lang.Throwable -> Ld2 java.lang.Exception -> Ld4
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r2     // Catch: java.lang.Throwable -> Ld2 java.lang.Exception -> Ld4
            android.database.Cursor r1 = r2.rawQuery(r5, r1)     // Catch: java.lang.Throwable -> Ld2 java.lang.Exception -> Ld4
            if (r1 == 0) goto Lcf
            int r5 = r1.getCount()     // Catch: java.lang.Throwable -> Ld2 java.lang.Exception -> Ld4
            if (r5 <= 0) goto Lcf
            boolean r5 = r1.moveToFirst()     // Catch: java.lang.Throwable -> Ld2 java.lang.Exception -> Ld4
            if (r5 == 0) goto Lcf
        L20:
            com.conceptglobal.pmc.model.StatusActivityModel r5 = new com.conceptglobal.pmc.model.StatusActivityModel     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld2
            r5.<init>()     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld2
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType0     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld2
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld2
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld2
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld2
            r5.setMarketname(r2)     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld2
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType1     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld2
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld2
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld2
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld2
            r5.setStatename(r2)     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld2
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType2     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld2
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld2
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld2
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld2
            r5.setDistrictname(r2)     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld2
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType3     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld2
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld2
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld2
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld2
            r5.setTalukaname(r2)     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld2
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType4     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld2
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld2
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld2
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld2
            r5.setActivityname(r2)     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld2
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType5     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld2
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld2
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld2
            int r2 = r1.getInt(r2)     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld2
            r5.setFopendingcount(r2)     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld2
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType6     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld2
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld2
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld2
            int r2 = r1.getInt(r2)     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld2
            r5.setApprovedcount(r2)     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld2
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType7     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld2
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld2
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld2
            int r2 = r1.getInt(r2)     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld2
            r5.setFcount(r2)     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld2
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType8     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld2
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld2
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld2
            int r2 = r1.getInt(r2)     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld2
            r5.setAcount(r2)     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld2
            r0.add(r5)     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld2
            goto Lc9
        Lc2:
            r5 = move-exception
            java.lang.String r2 = "StatusActivityDetailsModel"
            r3 = 0
            com.conceptglobal.pmc.utils.PLog.e(r2, r5, r3)     // Catch: java.lang.Throwable -> Ld2 java.lang.Exception -> Ld4
        Lc9:
            boolean r5 = r1.moveToNext()     // Catch: java.lang.Throwable -> Ld2 java.lang.Exception -> Ld4
            if (r5 != 0) goto L20
        Lcf:
            if (r1 == 0) goto Ldf
            goto Ldc
        Ld2:
            r5 = move-exception
            goto Le5
        Ld4:
            r5 = move-exception
            java.lang.String r2 = "Farmer Activity details"
            com.conceptglobal.pmc.utils.PLog.e(r2, r5)     // Catch: java.lang.Throwable -> Ld2
            if (r1 == 0) goto Ldf
        Ldc:
            r1.close()
        Ldf:
            com.conceptglobal.pmc.database.DataBaseHandler r5 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r5.closeDatabase()
            return r0
        Le5:
            if (r1 == 0) goto Lea
            r1.close()
        Lea:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getStatusActivityDetails(java.lang.String):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x00ad, code lost:
    
        if (r1 != null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x00bd, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x00c2, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00ba, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00b8, code lost:
    
        if (r1 == null) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.conceptglobal.pmc.model.StatusVillagesActivityModel> getStatusVillagesActivityDetails(java.lang.String r5) {
        /*
            r4 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r1 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r2 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> Lb0 java.lang.Exception -> Lb2
            android.database.sqlite.SQLiteDatabase r2 = r2.openDatabase()     // Catch: java.lang.Throwable -> Lb0 java.lang.Exception -> Lb2
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r2     // Catch: java.lang.Throwable -> Lb0 java.lang.Exception -> Lb2
            android.database.Cursor r1 = r2.rawQuery(r5, r1)     // Catch: java.lang.Throwable -> Lb0 java.lang.Exception -> Lb2
            if (r1 == 0) goto Lad
            int r5 = r1.getCount()     // Catch: java.lang.Throwable -> Lb0 java.lang.Exception -> Lb2
            if (r5 <= 0) goto Lad
            boolean r5 = r1.moveToFirst()     // Catch: java.lang.Throwable -> Lb0 java.lang.Exception -> Lb2
            if (r5 == 0) goto Lad
        L20:
            com.conceptglobal.pmc.model.StatusVillagesActivityModel r5 = new com.conceptglobal.pmc.model.StatusVillagesActivityModel     // Catch: java.lang.Exception -> La0 java.lang.Throwable -> Lb0
            r5.<init>()     // Catch: java.lang.Exception -> La0 java.lang.Throwable -> Lb0
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType0     // Catch: java.lang.Exception -> La0 java.lang.Throwable -> Lb0
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> La0 java.lang.Throwable -> Lb0
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> La0 java.lang.Throwable -> Lb0
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> La0 java.lang.Throwable -> Lb0
            r5.setVillagename(r2)     // Catch: java.lang.Exception -> La0 java.lang.Throwable -> Lb0
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType1     // Catch: java.lang.Exception -> La0 java.lang.Throwable -> Lb0
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> La0 java.lang.Throwable -> Lb0
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> La0 java.lang.Throwable -> Lb0
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> La0 java.lang.Throwable -> Lb0
            r5.setStatename(r2)     // Catch: java.lang.Exception -> La0 java.lang.Throwable -> Lb0
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType2     // Catch: java.lang.Exception -> La0 java.lang.Throwable -> Lb0
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> La0 java.lang.Throwable -> Lb0
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> La0 java.lang.Throwable -> Lb0
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> La0 java.lang.Throwable -> Lb0
            r5.setDistrictname(r2)     // Catch: java.lang.Exception -> La0 java.lang.Throwable -> Lb0
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType3     // Catch: java.lang.Exception -> La0 java.lang.Throwable -> Lb0
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> La0 java.lang.Throwable -> Lb0
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> La0 java.lang.Throwable -> Lb0
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> La0 java.lang.Throwable -> Lb0
            r5.setTalukaname(r2)     // Catch: java.lang.Exception -> La0 java.lang.Throwable -> Lb0
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType4     // Catch: java.lang.Exception -> La0 java.lang.Throwable -> Lb0
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> La0 java.lang.Throwable -> Lb0
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> La0 java.lang.Throwable -> Lb0
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> La0 java.lang.Throwable -> Lb0
            r5.setActivityname(r2)     // Catch: java.lang.Exception -> La0 java.lang.Throwable -> Lb0
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType5     // Catch: java.lang.Exception -> La0 java.lang.Throwable -> Lb0
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> La0 java.lang.Throwable -> Lb0
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> La0 java.lang.Throwable -> Lb0
            int r2 = r1.getInt(r2)     // Catch: java.lang.Exception -> La0 java.lang.Throwable -> Lb0
            r5.setFopendingcount(r2)     // Catch: java.lang.Exception -> La0 java.lang.Throwable -> Lb0
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType6     // Catch: java.lang.Exception -> La0 java.lang.Throwable -> Lb0
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> La0 java.lang.Throwable -> Lb0
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> La0 java.lang.Throwable -> Lb0
            int r2 = r1.getInt(r2)     // Catch: java.lang.Exception -> La0 java.lang.Throwable -> Lb0
            r5.setApprovedcount(r2)     // Catch: java.lang.Exception -> La0 java.lang.Throwable -> Lb0
            r0.add(r5)     // Catch: java.lang.Exception -> La0 java.lang.Throwable -> Lb0
            goto La7
        La0:
            r5 = move-exception
            java.lang.String r2 = "StatusActivityDetailsModel"
            r3 = 0
            com.conceptglobal.pmc.utils.PLog.e(r2, r5, r3)     // Catch: java.lang.Throwable -> Lb0 java.lang.Exception -> Lb2
        La7:
            boolean r5 = r1.moveToNext()     // Catch: java.lang.Throwable -> Lb0 java.lang.Exception -> Lb2
            if (r5 != 0) goto L20
        Lad:
            if (r1 == 0) goto Lbd
            goto Lba
        Lb0:
            r5 = move-exception
            goto Lc3
        Lb2:
            r5 = move-exception
            java.lang.String r2 = "Farmer Activity details"
            com.conceptglobal.pmc.utils.PLog.e(r2, r5)     // Catch: java.lang.Throwable -> Lb0
            if (r1 == 0) goto Lbd
        Lba:
            r1.close()
        Lbd:
            com.conceptglobal.pmc.database.DataBaseHandler r5 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r5.closeDatabase()
            return r0
        Lc3:
            if (r1 == 0) goto Lc8
            r1.close()
        Lc8:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getStatusVillagesActivityDetails(java.lang.String):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x019b, code lost:
    
        if (r1 != null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x01ab, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x01b0, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x01a8, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x01a6, code lost:
    
        if (r1 == null) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.conceptglobal.pmc.model.FarmerCropMapping> getFarmerCropMappingDetails(java.lang.String r5) {
        /*
            Method dump skipped, instructions count: 444
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getFarmerCropMappingDetails(java.lang.String):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0135, code lost:
    
        if (r1 != null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0145, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x014a, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0142, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0140, code lost:
    
        if (r1 == null) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.conceptglobal.pmc.model.FarmerLandDetails> getFarmerLandDetails(java.lang.String r5) {
        /*
            Method dump skipped, instructions count: 342
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getFarmerLandDetails(java.lang.String):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0127, code lost:
    
        if (r1 != null) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0137, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x013c, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0134, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0132, code lost:
    
        if (r1 == null) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.conceptglobal.pmc.model.DealerLandDetails> getDealerLandDetails(java.lang.String r5) {
        /*
            Method dump skipped, instructions count: 328
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getDealerLandDetails(java.lang.String):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x01ab, code lost:
    
        if (r2 != null) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x01bb, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x01c0, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x01b8, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x01b6, code lost:
    
        if (r2 == null) goto L27;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.conceptglobal.pmc.model.AttendanceModel> getAttendanceDetails(java.lang.String r6) {
        /*
            Method dump skipped, instructions count: 460
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getAttendanceDetails(java.lang.String):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:104:0x0362, code lost:
    
        if (r5 == null) goto L181;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x0379, code lost:
    
        return r2;
     */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0344 A[LOOP:0: B:9:0x005a->B:102:0x0344, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0362 A[EDGE_INSN: B:103:0x0362->B:104:0x0362 BREAK  A[LOOP:0: B:9:0x005a->B:102:0x0344], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.conceptglobal.pmc.model.PMCAttendanceModel> getPMCAttendanceDetails(java.lang.String r27) {
        /*
            Method dump skipped, instructions count: 901
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getPMCAttendanceDetails(java.lang.String):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x01c3, code lost:
    
        if (r1 != null) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x01d3, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x01d8, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x01d0, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x01ce, code lost:
    
        if (r1 == null) goto L29;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.conceptglobal.pmc.model.FarmerDetails> getListFarmereDetails(java.lang.String r5) {
        /*
            Method dump skipped, instructions count: 484
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getListFarmereDetails(java.lang.String):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x018a, code lost:
    
        if (r2 != null) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0198, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x019d, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0195, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0193, code lost:
    
        if (r2 == null) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.conceptglobal.pmc.model.AssignmentVisitDetails> getAssignmentVisitDetails(java.lang.String r6) {
        /*
            Method dump skipped, instructions count: 425
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getAssignmentVisitDetails(java.lang.String):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0124, code lost:
    
        if (r2 != null) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0132, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0137, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x012f, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x012d, code lost:
    
        if (r2 == null) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.conceptglobal.pmc.model.SurveyAssignmentVisitDetails> getSurveyAssignmentVisitDetails(java.lang.String r6) {
        /*
            Method dump skipped, instructions count: 323
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getSurveyAssignmentVisitDetails(java.lang.String):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x00c6, code lost:
    
        if (r2 != null) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00d4, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00d9, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00d1, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00cf, code lost:
    
        if (r2 == null) goto L29;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.conceptglobal.pmc.model.ComplaintInfoModel> getFBFComplaintResolutionDetails(java.lang.String r6) {
        /*
            r5 = this;
            java.lang.String r0 = "getFarmerAssignmentDetails"
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            r2 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r3 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> Lc9 java.lang.Exception -> Lcb
            android.database.sqlite.SQLiteDatabase r3 = r3.openDatabase()     // Catch: java.lang.Throwable -> Lc9 java.lang.Exception -> Lcb
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r3     // Catch: java.lang.Throwable -> Lc9 java.lang.Exception -> Lcb
            android.database.Cursor r2 = r3.rawQuery(r6, r2)     // Catch: java.lang.Throwable -> Lc9 java.lang.Exception -> Lcb
            if (r2 == 0) goto Lc6
            int r6 = r2.getCount()     // Catch: java.lang.Throwable -> Lc9 java.lang.Exception -> Lcb
            if (r6 <= 0) goto Lc6
            boolean r6 = r2.moveToFirst()     // Catch: java.lang.Throwable -> Lc9 java.lang.Exception -> Lcb
            if (r6 == 0) goto Lc6
        L22:
            com.conceptglobal.pmc.model.ComplaintInfoModel r6 = new com.conceptglobal.pmc.model.ComplaintInfoModel     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc9
            r6.<init>()     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc9
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r3 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType0     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc9
            java.lang.Integer r3 = r3.value()     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc9
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc9
            java.lang.String r3 = r2.getString(r3)     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc9
            if (r3 == 0) goto L62
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r3 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType0     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc9
            java.lang.Integer r3 = r3.value()     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc9
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc9
            java.lang.String r3 = r2.getString(r3)     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc9
            java.lang.String r4 = ""
            boolean r3 = r3.equalsIgnoreCase(r4)     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc9
            if (r3 != 0) goto L62
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r3 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType0     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc9
            java.lang.Integer r3 = r3.value()     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc9
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc9
            java.lang.String r3 = r2.getString(r3)     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc9
            int r3 = java.lang.Integer.parseInt(r3)     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc9
            r6.setActivityAssignmentId(r3)     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc9
        L62:
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r3 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType1     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc9
            java.lang.Integer r3 = r3.value()     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc9
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc9
            int r3 = r2.getInt(r3)     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc9
            r6.setUserId(r3)     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc9
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r3 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType3     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc9
            java.lang.Integer r3 = r3.value()     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc9
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc9
            long r3 = r2.getLong(r3)     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc9
            r6.setTransId(r3)     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc9
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r3 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType6     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc9
            java.lang.Integer r3 = r3.value()     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc9
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc9
            java.lang.String r3 = r2.getString(r3)     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc9
            r6.setResolverComments(r3)     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc9
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r3 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType7     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc9
            java.lang.Integer r3 = r3.value()     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc9
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc9
            int r3 = r2.getInt(r3)     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc9
            r6.setResolveStatus(r3)     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc9
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r3 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType8     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc9
            java.lang.Integer r3 = r3.value()     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc9
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc9
            int r3 = r2.getInt(r3)     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc9
            r6.setIsSMSRequired(r3)     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc9
            r1.add(r6)     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc9
            goto Lc0
        Lbb:
            r6 = move-exception
            r3 = 0
            com.conceptglobal.pmc.utils.PLog.e(r0, r6, r3)     // Catch: java.lang.Throwable -> Lc9 java.lang.Exception -> Lcb
        Lc0:
            boolean r6 = r2.moveToNext()     // Catch: java.lang.Throwable -> Lc9 java.lang.Exception -> Lcb
            if (r6 != 0) goto L22
        Lc6:
            if (r2 == 0) goto Ld4
            goto Ld1
        Lc9:
            r6 = move-exception
            goto Lda
        Lcb:
            r6 = move-exception
            com.conceptglobal.pmc.utils.PLog.e(r0, r6)     // Catch: java.lang.Throwable -> Lc9
            if (r2 == 0) goto Ld4
        Ld1:
            r2.close()
        Ld4:
            com.conceptglobal.pmc.database.DataBaseHandler r6 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r6.closeDatabase()
            return r1
        Lda:
            if (r2 == 0) goto Ldf
            r2.close()
        Ldf:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getFBFComplaintResolutionDetails(java.lang.String):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0091, code lost:
    
        if (r2 != null) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x009f, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x00a4, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x009c, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x009a, code lost:
    
        if (r2 == null) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.conceptglobal.pmc.model.FavouriteFarmer> getFavouriteFarmerDetails(java.lang.String r5) {
        /*
            r4 = this;
            java.lang.String r0 = "FavouriteFarmer"
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            r2 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r3 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L94 java.lang.Exception -> L96
            android.database.sqlite.SQLiteDatabase r3 = r3.openDatabase()     // Catch: java.lang.Throwable -> L94 java.lang.Exception -> L96
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r3     // Catch: java.lang.Throwable -> L94 java.lang.Exception -> L96
            android.database.Cursor r2 = r3.rawQuery(r5, r2)     // Catch: java.lang.Throwable -> L94 java.lang.Exception -> L96
            if (r2 == 0) goto L91
            int r5 = r2.getCount()     // Catch: java.lang.Throwable -> L94 java.lang.Exception -> L96
            if (r5 <= 0) goto L91
            boolean r5 = r2.moveToFirst()     // Catch: java.lang.Throwable -> L94 java.lang.Exception -> L96
            if (r5 == 0) goto L91
        L22:
            com.conceptglobal.pmc.model.FavouriteFarmer r5 = new com.conceptglobal.pmc.model.FavouriteFarmer     // Catch: java.lang.Exception -> L86 java.lang.Throwable -> L94
            r5.<init>()     // Catch: java.lang.Exception -> L86 java.lang.Throwable -> L94
            java.lang.String r3 = "RespondentNo"
            int r3 = r2.getColumnIndex(r3)     // Catch: java.lang.Exception -> L86 java.lang.Throwable -> L94
            java.lang.String r3 = r2.getString(r3)     // Catch: java.lang.Exception -> L86 java.lang.Throwable -> L94
            r5.setRespondentNo(r3)     // Catch: java.lang.Exception -> L86 java.lang.Throwable -> L94
            java.lang.String r3 = "IsFavourite"
            int r3 = r2.getColumnIndex(r3)     // Catch: java.lang.Exception -> L86 java.lang.Throwable -> L94
            int r3 = r2.getInt(r3)     // Catch: java.lang.Exception -> L86 java.lang.Throwable -> L94
            r5.setIsFavourite(r3)     // Catch: java.lang.Exception -> L86 java.lang.Throwable -> L94
            java.lang.String r3 = "PdaId"
            int r3 = r2.getColumnIndex(r3)     // Catch: java.lang.Exception -> L86 java.lang.Throwable -> L94
            java.lang.String r3 = r2.getString(r3)     // Catch: java.lang.Exception -> L86 java.lang.Throwable -> L94
            r5.setPDAID(r3)     // Catch: java.lang.Exception -> L86 java.lang.Throwable -> L94
            java.lang.String r3 = "CreatedBy"
            int r3 = r2.getColumnIndex(r3)     // Catch: java.lang.Exception -> L86 java.lang.Throwable -> L94
            int r3 = r2.getInt(r3)     // Catch: java.lang.Exception -> L86 java.lang.Throwable -> L94
            r5.setCreatedBy(r3)     // Catch: java.lang.Exception -> L86 java.lang.Throwable -> L94
            java.lang.String r3 = "CreatedDate"
            int r3 = r2.getColumnIndex(r3)     // Catch: java.lang.Exception -> L86 java.lang.Throwable -> L94
            java.lang.String r3 = r2.getString(r3)     // Catch: java.lang.Exception -> L86 java.lang.Throwable -> L94
            r5.setCreatedDate(r3)     // Catch: java.lang.Exception -> L86 java.lang.Throwable -> L94
            java.lang.String r3 = "UpdatedBy"
            int r3 = r2.getColumnIndex(r3)     // Catch: java.lang.Exception -> L86 java.lang.Throwable -> L94
            int r3 = r2.getInt(r3)     // Catch: java.lang.Exception -> L86 java.lang.Throwable -> L94
            r5.setUpdatedBy(r3)     // Catch: java.lang.Exception -> L86 java.lang.Throwable -> L94
            java.lang.String r3 = "UpdatedDate"
            int r3 = r2.getColumnIndex(r3)     // Catch: java.lang.Exception -> L86 java.lang.Throwable -> L94
            java.lang.String r3 = r2.getString(r3)     // Catch: java.lang.Exception -> L86 java.lang.Throwable -> L94
            r5.setUpdatedDate(r3)     // Catch: java.lang.Exception -> L86 java.lang.Throwable -> L94
            r1.add(r5)     // Catch: java.lang.Exception -> L86 java.lang.Throwable -> L94
            goto L8b
        L86:
            r5 = move-exception
            r3 = 0
            com.conceptglobal.pmc.utils.PLog.e(r0, r5, r3)     // Catch: java.lang.Throwable -> L94 java.lang.Exception -> L96
        L8b:
            boolean r5 = r2.moveToNext()     // Catch: java.lang.Throwable -> L94 java.lang.Exception -> L96
            if (r5 != 0) goto L22
        L91:
            if (r2 == 0) goto L9f
            goto L9c
        L94:
            r5 = move-exception
            goto La5
        L96:
            r5 = move-exception
            com.conceptglobal.pmc.utils.PLog.e(r0, r5)     // Catch: java.lang.Throwable -> L94
            if (r2 == 0) goto L9f
        L9c:
            r2.close()
        L9f:
            com.conceptglobal.pmc.database.DataBaseHandler r5 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r5.closeDatabase()
            return r1
        La5:
            if (r2 == 0) goto Laa
            r2.close()
        Laa:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getFavouriteFarmerDetails(java.lang.String):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0124, code lost:
    
        if (r2 != null) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0132, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0137, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x012f, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x012d, code lost:
    
        if (r2 == null) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.conceptglobal.pmc.model.TSTAssignmentVisitDetails> getTSTAssignmentVisitDetails(java.lang.String r6) {
        /*
            Method dump skipped, instructions count: 323
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getTSTAssignmentVisitDetails(java.lang.String):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0124, code lost:
    
        if (r2 != null) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0132, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0137, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x012f, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x012d, code lost:
    
        if (r2 == null) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.conceptglobal.pmc.model.FeedbackAssignmentVisitDetails> getFBFAssignmentVisitDetails(java.lang.String r6) {
        /*
            Method dump skipped, instructions count: 323
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getFBFAssignmentVisitDetails(java.lang.String):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x00fa, code lost:
    
        if (r2 != null) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0108, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x010d, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0105, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0103, code lost:
    
        if (r2 == null) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.conceptglobal.pmc.model.AssignmentVisitDetails getAssignmentVisitDetail(java.lang.String r6) {
        /*
            r5 = this;
            java.lang.String r0 = "getFarmerAssignmentDetails"
            com.conceptglobal.pmc.model.AssignmentVisitDetails r1 = new com.conceptglobal.pmc.model.AssignmentVisitDetails
            r1.<init>()
            r2 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r3 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> Lfd java.lang.Exception -> Lff
            android.database.sqlite.SQLiteDatabase r3 = r3.openDatabase()     // Catch: java.lang.Throwable -> Lfd java.lang.Exception -> Lff
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r3     // Catch: java.lang.Throwable -> Lfd java.lang.Exception -> Lff
            android.database.Cursor r2 = r3.rawQuery(r6, r2)     // Catch: java.lang.Throwable -> Lfd java.lang.Exception -> Lff
            if (r2 == 0) goto Lfa
            int r6 = r2.getCount()     // Catch: java.lang.Throwable -> Lfd java.lang.Exception -> Lff
            if (r6 <= 0) goto Lfa
            boolean r6 = r2.moveToFirst()     // Catch: java.lang.Throwable -> Lfd java.lang.Exception -> Lff
            if (r6 == 0) goto Lfa
        L22:
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r6 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType0     // Catch: java.lang.Exception -> Lef java.lang.Throwable -> Lfd
            java.lang.Integer r6 = r6.value()     // Catch: java.lang.Exception -> Lef java.lang.Throwable -> Lfd
            int r6 = r6.intValue()     // Catch: java.lang.Exception -> Lef java.lang.Throwable -> Lfd
            int r6 = r2.getInt(r6)     // Catch: java.lang.Exception -> Lef java.lang.Throwable -> Lfd
            r1.setAssignmentId(r6)     // Catch: java.lang.Exception -> Lef java.lang.Throwable -> Lfd
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r6 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType1     // Catch: java.lang.Exception -> Lef java.lang.Throwable -> Lfd
            java.lang.Integer r6 = r6.value()     // Catch: java.lang.Exception -> Lef java.lang.Throwable -> Lfd
            int r6 = r6.intValue()     // Catch: java.lang.Exception -> Lef java.lang.Throwable -> Lfd
            java.lang.String r6 = r2.getString(r6)     // Catch: java.lang.Exception -> Lef java.lang.Throwable -> Lfd
            r1.setVisitDescription(r6)     // Catch: java.lang.Exception -> Lef java.lang.Throwable -> Lfd
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r6 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType2     // Catch: java.lang.Exception -> Lef java.lang.Throwable -> Lfd
            java.lang.Integer r6 = r6.value()     // Catch: java.lang.Exception -> Lef java.lang.Throwable -> Lfd
            int r6 = r6.intValue()     // Catch: java.lang.Exception -> Lef java.lang.Throwable -> Lfd
            java.lang.String r6 = r2.getString(r6)     // Catch: java.lang.Exception -> Lef java.lang.Throwable -> Lfd
            r1.setCreatedDate(r6)     // Catch: java.lang.Exception -> Lef java.lang.Throwable -> Lfd
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r6 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType3     // Catch: java.lang.Exception -> Lef java.lang.Throwable -> Lfd
            java.lang.Integer r6 = r6.value()     // Catch: java.lang.Exception -> Lef java.lang.Throwable -> Lfd
            int r6 = r6.intValue()     // Catch: java.lang.Exception -> Lef java.lang.Throwable -> Lfd
            int r6 = r2.getInt(r6)     // Catch: java.lang.Exception -> Lef java.lang.Throwable -> Lfd
            r1.setCreatedBy(r6)     // Catch: java.lang.Exception -> Lef java.lang.Throwable -> Lfd
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r6 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType4     // Catch: java.lang.Exception -> Lef java.lang.Throwable -> Lfd
            java.lang.Integer r6 = r6.value()     // Catch: java.lang.Exception -> Lef java.lang.Throwable -> Lfd
            int r6 = r6.intValue()     // Catch: java.lang.Exception -> Lef java.lang.Throwable -> Lfd
            java.lang.String r6 = r2.getString(r6)     // Catch: java.lang.Exception -> Lef java.lang.Throwable -> Lfd
            r1.setUpdatedDate(r6)     // Catch: java.lang.Exception -> Lef java.lang.Throwable -> Lfd
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r6 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType5     // Catch: java.lang.Exception -> Lef java.lang.Throwable -> Lfd
            java.lang.Integer r6 = r6.value()     // Catch: java.lang.Exception -> Lef java.lang.Throwable -> Lfd
            int r6 = r6.intValue()     // Catch: java.lang.Exception -> Lef java.lang.Throwable -> Lfd
            int r6 = r2.getInt(r6)     // Catch: java.lang.Exception -> Lef java.lang.Throwable -> Lfd
            r1.setUpdatedBy(r6)     // Catch: java.lang.Exception -> Lef java.lang.Throwable -> Lfd
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r6 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType6     // Catch: java.lang.Exception -> Lef java.lang.Throwable -> Lfd
            java.lang.Integer r6 = r6.value()     // Catch: java.lang.Exception -> Lef java.lang.Throwable -> Lfd
            int r6 = r6.intValue()     // Catch: java.lang.Exception -> Lef java.lang.Throwable -> Lfd
            int r6 = r2.getInt(r6)     // Catch: java.lang.Exception -> Lef java.lang.Throwable -> Lfd
            r1.setPdaId(r6)     // Catch: java.lang.Exception -> Lef java.lang.Throwable -> Lfd
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r6 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType7     // Catch: java.lang.Exception -> Lef java.lang.Throwable -> Lfd
            java.lang.Integer r6 = r6.value()     // Catch: java.lang.Exception -> Lef java.lang.Throwable -> Lfd
            int r6 = r6.intValue()     // Catch: java.lang.Exception -> Lef java.lang.Throwable -> Lfd
            double r3 = r2.getDouble(r6)     // Catch: java.lang.Exception -> Lef java.lang.Throwable -> Lfd
            r1.setLatitude(r3)     // Catch: java.lang.Exception -> Lef java.lang.Throwable -> Lfd
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r6 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType8     // Catch: java.lang.Exception -> Lef java.lang.Throwable -> Lfd
            java.lang.Integer r6 = r6.value()     // Catch: java.lang.Exception -> Lef java.lang.Throwable -> Lfd
            int r6 = r6.intValue()     // Catch: java.lang.Exception -> Lef java.lang.Throwable -> Lfd
            double r3 = r2.getDouble(r6)     // Catch: java.lang.Exception -> Lef java.lang.Throwable -> Lfd
            r1.setLongitude(r3)     // Catch: java.lang.Exception -> Lef java.lang.Throwable -> Lfd
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r6 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType9     // Catch: java.lang.Exception -> Lef java.lang.Throwable -> Lfd
            java.lang.Integer r6 = r6.value()     // Catch: java.lang.Exception -> Lef java.lang.Throwable -> Lfd
            int r6 = r6.intValue()     // Catch: java.lang.Exception -> Lef java.lang.Throwable -> Lfd
            java.lang.String r6 = r2.getString(r6)     // Catch: java.lang.Exception -> Lef java.lang.Throwable -> Lfd
            r1.setRemarks(r6)     // Catch: java.lang.Exception -> Lef java.lang.Throwable -> Lfd
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r6 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType10     // Catch: java.lang.Exception -> Lef java.lang.Throwable -> Lfd
            java.lang.Integer r6 = r6.value()     // Catch: java.lang.Exception -> Lef java.lang.Throwable -> Lfd
            int r6 = r6.intValue()     // Catch: java.lang.Exception -> Lef java.lang.Throwable -> Lfd
            int r6 = r2.getInt(r6)     // Catch: java.lang.Exception -> Lef java.lang.Throwable -> Lfd
            r1.setActivityAssignmentId(r6)     // Catch: java.lang.Exception -> Lef java.lang.Throwable -> Lfd
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r6 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType11     // Catch: java.lang.Exception -> Lef java.lang.Throwable -> Lfd
            java.lang.Integer r6 = r6.value()     // Catch: java.lang.Exception -> Lef java.lang.Throwable -> Lfd
            int r6 = r6.intValue()     // Catch: java.lang.Exception -> Lef java.lang.Throwable -> Lfd
            java.lang.String r6 = r2.getString(r6)     // Catch: java.lang.Exception -> Lef java.lang.Throwable -> Lfd
            r1.setTransactionId(r6)     // Catch: java.lang.Exception -> Lef java.lang.Throwable -> Lfd
            goto Lf4
        Lef:
            r6 = move-exception
            r3 = 0
            com.conceptglobal.pmc.utils.PLog.e(r0, r6, r3)     // Catch: java.lang.Throwable -> Lfd java.lang.Exception -> Lff
        Lf4:
            boolean r6 = r2.moveToNext()     // Catch: java.lang.Throwable -> Lfd java.lang.Exception -> Lff
            if (r6 != 0) goto L22
        Lfa:
            if (r2 == 0) goto L108
            goto L105
        Lfd:
            r6 = move-exception
            goto L10e
        Lff:
            r6 = move-exception
            com.conceptglobal.pmc.utils.PLog.e(r0, r6)     // Catch: java.lang.Throwable -> Lfd
            if (r2 == 0) goto L108
        L105:
            r2.close()
        L108:
            com.conceptglobal.pmc.database.DataBaseHandler r6 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r6.closeDatabase()
            return r1
        L10e:
            if (r2 == 0) goto L113
            r2.close()
        L113:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getAssignmentVisitDetail(java.lang.String):com.conceptglobal.pmc.model.AssignmentVisitDetails");
    }

    public static String getMaxImageID(String str) {
        int i = 0;
        SQLiteStatement sQLiteStatement = null;
        try {
            try {
                SQLiteDatabase openDatabase = dbInstance.openDatabase();
                sqliteDatabase = openDatabase;
                sQLiteStatement = openDatabase.compileStatement("select ImageId from ActivityImageDetails order by ImageId DESC limit 1");
                long simpleQueryForLong = sQLiteStatement.simpleQueryForLong();
                Long valueOf = Long.valueOf(simpleQueryForLong);
                valueOf.getClass();
                i = (int) (simpleQueryForLong + 1);
                Log.v("for id...,", "strMaxId..." + valueOf + "strid.." + i);
            } catch (SQLiteDoneException unused) {
                String str2 = str + "1";
                sQLiteStatement.close();
                dbInstance.closeDatabase();
                return str2;
            } catch (Exception e) {
                e.printStackTrace();
            }
            sQLiteStatement.close();
            dbInstance.closeDatabase();
            return String.valueOf(i);
        } catch (Throwable th) {
            sQLiteStatement.close();
            dbInstance.closeDatabase();
            throw th;
        }
    }

    public static String getMaxcp_event_compl_idFromTable(String str, String str2, String str3, int i) {
        long simpleQueryForLong;
        Long valueOf;
        String sb;
        String str4 = "0";
        SQLiteStatement sQLiteStatement = null;
        try {
            try {
                sQLiteStatement = dbInstance.openDatabase().compileStatement("select max(CAST( (case when substr(" + str2 + ",1,1)  is '_' then  substr(" + str2 + ",1+1)when substr(" + str2 + ",2,1)  is '_' then  substr(" + str2 + ",2+1)when substr(" + str2 + ",3,1)  is '_' then  substr(" + str2 + ",3+1)when substr(" + str2 + ",4,1)  is '_' then  substr(" + str2 + ",4+1)when substr(" + str2 + ",5,1)  is '_' then  substr(" + str2 + ",5+1)when substr(" + str2 + ",6,1)  is '_' then  substr(" + str2 + ",6+1)when substr(" + str2 + ",7,1)  is '_' then  substr(" + str2 + ",7+1)when substr(" + str2 + ",8,1)  is '_' then  substr(" + str2 + ",8+1)when substr(" + str2 + ",9,1)  is '_' then  substr(" + str2 + ",9+1)when substr(" + str2 + ",10,1)  is '_' then  substr(" + str2 + ",10+1)when substr(" + str2 + ",11,1)  is '_' then  substr(" + str2 + ",11+1)when substr(" + str2 + ",12,1)  is '_' then  substr(" + str2 + ",12+1)when substr(" + str2 + ",13,1)  is '_' then  substr(" + str2 + ",13+1)when substr(" + str2 + ",14,1)  is '_' then  substr(" + str2 + ",14+1)when substr(" + str2 + ",15,1)  is '_' then  substr(" + str2 + ",15+1)when substr(" + str2 + ",16,1)  is '_' then  substr(" + str2 + ",16+1)when substr(" + str2 + ",17,1)  is '_' then  substr(" + str2 + ",17+1)when substr(" + str2 + ",18,1)  is '_' then  substr(" + str2 + ",18+1)when substr(" + str2 + ",19,1)  is '_' then  substr(" + str2 + ",19+1)when substr(" + str2 + ",20,1)  is '_' then  substr(" + str2 + ",20+1)else " + str2 + " end) as integer)) from " + str);
                simpleQueryForLong = sQLiteStatement.simpleQueryForLong();
                valueOf = Long.valueOf(simpleQueryForLong);
            } catch (Exception e) {
                e.printStackTrace();
            }
            if (str3 != null && !str3.equalsIgnoreCase("0")) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(i);
                sb2.append(str3);
                sb2.append(EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR);
                valueOf.getClass();
                sb2.append(simpleQueryForLong + 1);
                sb = sb2.toString();
                str4 = sb;
                return str4;
            }
            StringBuilder sb3 = new StringBuilder(EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR);
            valueOf.getClass();
            sb3.append(simpleQueryForLong + 1);
            sb = sb3.toString();
            str4 = sb;
            return str4;
        } finally {
            sQLiteStatement.close();
            dbInstance.closeDatabase();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x028c, code lost:
    
        if (r1 != null) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x029c, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x02a1, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0299, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0297, code lost:
    
        if (r1 == null) goto L47;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.conceptglobal.pmc.model.FarmerDetails getAllFarmereDetails(java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 685
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getAllFarmereDetails(java.lang.String):com.conceptglobal.pmc.model.FarmerDetails");
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x0113, code lost:
    
        if (r2 != null) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0121, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0126, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x011e, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x011c, code lost:
    
        if (r2 == null) goto L38;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.conceptglobal.pmc.model.FarmerDetails> getFarmereDetails(java.lang.String r7) {
        /*
            Method dump skipped, instructions count: 306
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getFarmereDetails(java.lang.String):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x01ab, code lost:
    
        if (r2 != null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x01b9, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x01be, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x01b6, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x01b4, code lost:
    
        if (r2 == null) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.ArrayList<com.conceptglobal.pmc.model.AssignmentActivityDetailsModel> getFarmerToDODetails(java.lang.String r6) {
        /*
            Method dump skipped, instructions count: 458
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getFarmerToDODetails(java.lang.String):java.util.ArrayList");
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x01bc, code lost:
    
        if (r2 != null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x01ca, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x01cf, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x01c7, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x01c5, code lost:
    
        if (r2 == null) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.ArrayList<com.conceptglobal.pmc.model.AssignmentActivityDetailsModel> getFBFFarmerToDODetails(java.lang.String r6) {
        /*
            Method dump skipped, instructions count: 475
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getFBFFarmerToDODetails(java.lang.String):java.util.ArrayList");
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0156, code lost:
    
        if (r2 != null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0164, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0169, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0161, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x015f, code lost:
    
        if (r2 == null) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.ArrayList<com.conceptglobal.pmc.model.AssignmentActivityDetailsModel> getSelfDraftDetails(java.lang.String r6) {
        /*
            Method dump skipped, instructions count: 373
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getSelfDraftDetails(java.lang.String):java.util.ArrayList");
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x019a, code lost:
    
        if (r1 != null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x01aa, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x01af, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x01a7, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x01a5, code lost:
    
        if (r1 == null) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.ArrayList<com.conceptglobal.pmc.model.AssignmentActivityDetailsModel> getFarmerToDOLatLongDetails(java.lang.String r4) {
        /*
            Method dump skipped, instructions count: 443
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getFarmerToDOLatLongDetails(java.lang.String):java.util.ArrayList");
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x00c7, code lost:
    
        if (r1 != null) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x00e1, code lost:
    
        return r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.conceptglobal.pmc.model.Log4Net> getLog4NetData(java.lang.String r4) {
        /*
            r3 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r1 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r2 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> Lca java.lang.Exception -> Ld6
            android.database.sqlite.SQLiteDatabase r2 = r2.openDatabase()     // Catch: java.lang.Throwable -> Lca java.lang.Exception -> Ld6
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r2     // Catch: java.lang.Throwable -> Lca java.lang.Exception -> Ld6
            android.database.Cursor r1 = r2.rawQuery(r4, r1)     // Catch: java.lang.Throwable -> Lca java.lang.Exception -> Ld6
            if (r1 == 0) goto Lc7
            int r4 = r1.getCount()     // Catch: java.lang.Throwable -> Lca java.lang.Exception -> Ld6
            if (r4 <= 0) goto Lc7
            boolean r4 = r1.moveToFirst()     // Catch: java.lang.Throwable -> Lca java.lang.Exception -> Ld6
            if (r4 == 0) goto Lc7
        L20:
            com.conceptglobal.pmc.model.Log4Net r4 = new com.conceptglobal.pmc.model.Log4Net     // Catch: java.lang.Exception -> Lc1 java.lang.Throwable -> Lca
            r4.<init>()     // Catch: java.lang.Exception -> Lc1 java.lang.Throwable -> Lca
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType0     // Catch: java.lang.Exception -> Lc1 java.lang.Throwable -> Lca
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> Lc1 java.lang.Throwable -> Lca
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> Lc1 java.lang.Throwable -> Lca
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> Lc1 java.lang.Throwable -> Lca
            r4.setDate(r2)     // Catch: java.lang.Exception -> Lc1 java.lang.Throwable -> Lca
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType1     // Catch: java.lang.Exception -> Lc1 java.lang.Throwable -> Lca
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> Lc1 java.lang.Throwable -> Lca
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> Lc1 java.lang.Throwable -> Lca
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> Lc1 java.lang.Throwable -> Lca
            r4.setThread(r2)     // Catch: java.lang.Exception -> Lc1 java.lang.Throwable -> Lca
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType2     // Catch: java.lang.Exception -> Lc1 java.lang.Throwable -> Lca
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> Lc1 java.lang.Throwable -> Lca
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> Lc1 java.lang.Throwable -> Lca
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> Lc1 java.lang.Throwable -> Lca
            r4.setLevel(r2)     // Catch: java.lang.Exception -> Lc1 java.lang.Throwable -> Lca
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType3     // Catch: java.lang.Exception -> Lc1 java.lang.Throwable -> Lca
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> Lc1 java.lang.Throwable -> Lca
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> Lc1 java.lang.Throwable -> Lca
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> Lc1 java.lang.Throwable -> Lca
            r4.setLogger(r2)     // Catch: java.lang.Exception -> Lc1 java.lang.Throwable -> Lca
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType4     // Catch: java.lang.Exception -> Lc1 java.lang.Throwable -> Lca
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> Lc1 java.lang.Throwable -> Lca
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> Lc1 java.lang.Throwable -> Lca
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> Lc1 java.lang.Throwable -> Lca
            r4.setMessage(r2)     // Catch: java.lang.Exception -> Lc1 java.lang.Throwable -> Lca
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType5     // Catch: java.lang.Exception -> Lc1 java.lang.Throwable -> Lca
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> Lc1 java.lang.Throwable -> Lca
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> Lc1 java.lang.Throwable -> Lca
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> Lc1 java.lang.Throwable -> Lca
            r4.setException(r2)     // Catch: java.lang.Exception -> Lc1 java.lang.Throwable -> Lca
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType6     // Catch: java.lang.Exception -> Lc1 java.lang.Throwable -> Lca
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> Lc1 java.lang.Throwable -> Lca
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> Lc1 java.lang.Throwable -> Lca
            int r2 = r1.getInt(r2)     // Catch: java.lang.Exception -> Lc1 java.lang.Throwable -> Lca
            r4.setUserId(r2)     // Catch: java.lang.Exception -> Lc1 java.lang.Throwable -> Lca
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType7     // Catch: java.lang.Exception -> Lc1 java.lang.Throwable -> Lca
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> Lc1 java.lang.Throwable -> Lca
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> Lc1 java.lang.Throwable -> Lca
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> Lc1 java.lang.Throwable -> Lca
            r4.setExceptionAt(r2)     // Catch: java.lang.Exception -> Lc1 java.lang.Throwable -> Lca
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType8     // Catch: java.lang.Exception -> Lc1 java.lang.Throwable -> Lca
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> Lc1 java.lang.Throwable -> Lca
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> Lc1 java.lang.Throwable -> Lca
            int r2 = r1.getInt(r2)     // Catch: java.lang.Exception -> Lc1 java.lang.Throwable -> Lca
            r4.setId(r2)     // Catch: java.lang.Exception -> Lc1 java.lang.Throwable -> Lca
            r0.add(r4)     // Catch: java.lang.Exception -> Lc1 java.lang.Throwable -> Lca
        Lc1:
            boolean r4 = r1.moveToNext()     // Catch: java.lang.Throwable -> Lca java.lang.Exception -> Ld6
            if (r4 != 0) goto L20
        Lc7:
            if (r1 == 0) goto Ldc
            goto Ld9
        Lca:
            r4 = move-exception
            if (r1 == 0) goto Ld0
            r1.close()
        Ld0:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            throw r4
        Ld6:
            if (r1 == 0) goto Ldc
        Ld9:
            r1.close()
        Ldc:
            com.conceptglobal.pmc.database.DataBaseHandler r4 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r4.closeDatabase()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getLog4NetData(java.lang.String):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0059, code lost:
    
        if (r1 != null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0069, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x006e, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0066, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0064, code lost:
    
        if (r1 == null) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.conceptglobal.pmc.model.AttributeModel> getSavedAttributeDetails(java.lang.String r4) {
        /*
            r3 = this;
            java.lang.String r4 = "SELECT  attributeId ,attributeValue FROM pmcFarmerActivityDetails where farmerId =Enumaration.mRequestType1.value() and activityId =Enumaration.mRequestType1.value()"
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r1 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r2 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L5c java.lang.Exception -> L5e
            android.database.sqlite.SQLiteDatabase r2 = r2.openDatabase()     // Catch: java.lang.Throwable -> L5c java.lang.Exception -> L5e
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r2     // Catch: java.lang.Throwable -> L5c java.lang.Exception -> L5e
            android.database.Cursor r1 = r2.rawQuery(r4, r1)     // Catch: java.lang.Throwable -> L5c java.lang.Exception -> L5e
            if (r1 == 0) goto L59
            int r4 = r1.getCount()     // Catch: java.lang.Throwable -> L5c java.lang.Exception -> L5e
            if (r4 <= 0) goto L59
            boolean r4 = r1.moveToFirst()     // Catch: java.lang.Throwable -> L5c java.lang.Exception -> L5e
            if (r4 == 0) goto L59
        L22:
            com.conceptglobal.pmc.model.AttributeModel r4 = new com.conceptglobal.pmc.model.AttributeModel     // Catch: java.lang.Exception -> L4d java.lang.Throwable -> L5c
            r4.<init>()     // Catch: java.lang.Exception -> L4d java.lang.Throwable -> L5c
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType0     // Catch: java.lang.Exception -> L4d java.lang.Throwable -> L5c
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> L4d java.lang.Throwable -> L5c
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> L4d java.lang.Throwable -> L5c
            int r2 = r1.getInt(r2)     // Catch: java.lang.Exception -> L4d java.lang.Throwable -> L5c
            r4.setAttributeId(r2)     // Catch: java.lang.Exception -> L4d java.lang.Throwable -> L5c
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType1     // Catch: java.lang.Exception -> L4d java.lang.Throwable -> L5c
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> L4d java.lang.Throwable -> L5c
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> L4d java.lang.Throwable -> L5c
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> L4d java.lang.Throwable -> L5c
            r4.setAttributeValue(r2)     // Catch: java.lang.Exception -> L4d java.lang.Throwable -> L5c
            r0.add(r4)     // Catch: java.lang.Exception -> L4d java.lang.Throwable -> L5c
            goto L53
        L4d:
            r4 = move-exception
            java.lang.String r2 = "getSavedAttributeDetails "
            com.conceptglobal.pmc.utils.PLog.e(r2, r4)     // Catch: java.lang.Throwable -> L5c java.lang.Exception -> L5e
        L53:
            boolean r4 = r1.moveToNext()     // Catch: java.lang.Throwable -> L5c java.lang.Exception -> L5e
            if (r4 != 0) goto L22
        L59:
            if (r1 == 0) goto L69
            goto L66
        L5c:
            r4 = move-exception
            goto L6f
        L5e:
            r4 = move-exception
            java.lang.String r2 = "Savid attribute details  "
            com.conceptglobal.pmc.utils.PLog.e(r2, r4)     // Catch: java.lang.Throwable -> L5c
            if (r1 == 0) goto L69
        L66:
            r1.close()
        L69:
            com.conceptglobal.pmc.database.DataBaseHandler r4 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r4.closeDatabase()
            return r0
        L6f:
            if (r1 == 0) goto L74
            r1.close()
        L74:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getSavedAttributeDetails(java.lang.String):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x00f3, code lost:
    
        if (r1 != null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0103, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0108, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0100, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00fe, code lost:
    
        if (r1 == null) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.conceptglobal.pmc.model.FarmerCropMapping> getCropSelectionData(java.lang.String r4) {
        /*
            r3 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r1 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r2 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> Lf6 java.lang.Exception -> Lf8
            android.database.sqlite.SQLiteDatabase r2 = r2.openDatabase()     // Catch: java.lang.Throwable -> Lf6 java.lang.Exception -> Lf8
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r2     // Catch: java.lang.Throwable -> Lf6 java.lang.Exception -> Lf8
            android.database.Cursor r1 = r2.rawQuery(r4, r1)     // Catch: java.lang.Throwable -> Lf6 java.lang.Exception -> Lf8
            if (r1 == 0) goto Lf3
            int r4 = r1.getCount()     // Catch: java.lang.Throwable -> Lf6 java.lang.Exception -> Lf8
            if (r4 <= 0) goto Lf3
            boolean r4 = r1.moveToFirst()     // Catch: java.lang.Throwable -> Lf6 java.lang.Exception -> Lf8
            if (r4 == 0) goto Lf3
        L20:
            com.conceptglobal.pmc.model.FarmerCropMapping r4 = new com.conceptglobal.pmc.model.FarmerCropMapping     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf6
            r4.<init>()     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf6
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType0     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf6
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf6
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf6
            int r2 = r1.getInt(r2)     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf6
            r4.setCropId(r2)     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf6
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType1     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf6
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf6
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf6
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf6
            r4.setCropName(r2)     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf6
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType2     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf6
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf6
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf6
            float r2 = r1.getFloat(r2)     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf6
            r4.setAcreages(r2)     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf6
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType3     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf6
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf6
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf6
            int r2 = r1.getInt(r2)     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf6
            r4.setHybridId(r2)     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf6
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType4     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf6
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf6
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf6
            int r2 = r1.getInt(r2)     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf6
            r4.setMappingId(r2)     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf6
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType5     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf6
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf6
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf6
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf6
            r4.setDos(r2)     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf6
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType6     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf6
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf6
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf6
            int r2 = r1.getInt(r2)     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf6
            r4.setSeasonID(r2)     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf6
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType7     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf6
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf6
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf6
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf6
            r4.setIrrigationType(r2)     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf6
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType8     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf6
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf6
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf6
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf6
            r4.setCreateddate(r2)     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf6
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType9     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf6
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf6
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf6
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf6
            r4.setAcreagetype(r2)     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf6
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType10     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf6
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf6
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf6
            float r2 = r1.getFloat(r2)     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf6
            r4.setAcreagevalue(r2)     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf6
            r0.add(r4)     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf6
            goto Led
        Le4:
            r4 = move-exception
            r4.printStackTrace()     // Catch: java.lang.Throwable -> Lf6 java.lang.Exception -> Lf8
            java.lang.String r2 = "GetDataFromDB"
            com.conceptglobal.pmc.utils.PLog.e(r2, r4)     // Catch: java.lang.Throwable -> Lf6 java.lang.Exception -> Lf8
        Led:
            boolean r4 = r1.moveToNext()     // Catch: java.lang.Throwable -> Lf6 java.lang.Exception -> Lf8
            if (r4 != 0) goto L20
        Lf3:
            if (r1 == 0) goto L103
            goto L100
        Lf6:
            r4 = move-exception
            goto L109
        Lf8:
            r4 = move-exception
            java.lang.String r2 = "Crop Selection Data"
            com.conceptglobal.pmc.utils.PLog.e(r2, r4)     // Catch: java.lang.Throwable -> Lf6
            if (r1 == 0) goto L103
        L100:
            r1.close()
        L103:
            com.conceptglobal.pmc.database.DataBaseHandler r4 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r4.closeDatabase()
            return r0
        L109:
            if (r1 == 0) goto L10e
            r1.close()
        L10e:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getCropSelectionData(java.lang.String):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x00d1, code lost:
    
        if (r1 != null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x00e1, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x00e6, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00de, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00dc, code lost:
    
        if (r1 == null) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.conceptglobal.pmc.model.FarmerLandDetails> getPlotDetails(java.lang.String r4) {
        /*
            r3 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r1 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r2 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> Ld4 java.lang.Exception -> Ld6
            android.database.sqlite.SQLiteDatabase r2 = r2.openDatabase()     // Catch: java.lang.Throwable -> Ld4 java.lang.Exception -> Ld6
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r2     // Catch: java.lang.Throwable -> Ld4 java.lang.Exception -> Ld6
            android.database.Cursor r1 = r2.rawQuery(r4, r1)     // Catch: java.lang.Throwable -> Ld4 java.lang.Exception -> Ld6
            if (r1 == 0) goto Ld1
            int r4 = r1.getCount()     // Catch: java.lang.Throwable -> Ld4 java.lang.Exception -> Ld6
            if (r4 <= 0) goto Ld1
            boolean r4 = r1.moveToFirst()     // Catch: java.lang.Throwable -> Ld4 java.lang.Exception -> Ld6
            if (r4 == 0) goto Ld1
        L20:
            com.conceptglobal.pmc.model.FarmerLandDetails r4 = new com.conceptglobal.pmc.model.FarmerLandDetails     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld4
            r4.<init>()     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld4
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType0     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld4
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld4
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld4
            int r2 = r1.getInt(r2)     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld4
            r4.setMappingId(r2)     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld4
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType1     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld4
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld4
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld4
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld4
            r4.setFarmerId(r2)     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld4
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType2     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld4
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld4
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld4
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld4
            r4.setLandname(r2)     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld4
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType3     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld4
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld4
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld4
            float r2 = r1.getFloat(r2)     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld4
            r4.setAcreages(r2)     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld4
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType4     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld4
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld4
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld4
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld4
            r4.setAddress(r2)     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld4
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType5     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld4
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld4
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld4
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld4
            r4.setLatitude(r2)     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld4
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType6     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld4
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld4
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld4
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld4
            r4.setLongitude(r2)     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld4
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType7     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld4
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld4
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld4
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld4
            r4.setOnField(r2)     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld4
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType8     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld4
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld4
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld4
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld4
            r4.setRespondentNo(r2)     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld4
            r0.add(r4)     // Catch: java.lang.Exception -> Lc2 java.lang.Throwable -> Ld4
            goto Lcb
        Lc2:
            r4 = move-exception
            r4.printStackTrace()     // Catch: java.lang.Throwable -> Ld4 java.lang.Exception -> Ld6
            java.lang.String r2 = "GetDataFromDB"
            com.conceptglobal.pmc.utils.PLog.e(r2, r4)     // Catch: java.lang.Throwable -> Ld4 java.lang.Exception -> Ld6
        Lcb:
            boolean r4 = r1.moveToNext()     // Catch: java.lang.Throwable -> Ld4 java.lang.Exception -> Ld6
            if (r4 != 0) goto L20
        Ld1:
            if (r1 == 0) goto Le1
            goto Lde
        Ld4:
            r4 = move-exception
            goto Le7
        Ld6:
            r4 = move-exception
            java.lang.String r2 = "Crop Selection Data"
            com.conceptglobal.pmc.utils.PLog.e(r2, r4)     // Catch: java.lang.Throwable -> Ld4
            if (r1 == 0) goto Le1
        Lde:
            r1.close()
        Le1:
            com.conceptglobal.pmc.database.DataBaseHandler r4 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r4.closeDatabase()
            return r0
        Le7:
            if (r1 == 0) goto Lec
            r1.close()
        Lec:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getPlotDetails(java.lang.String):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x00c0, code lost:
    
        if (r1 != null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x00d0, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x00d5, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00cd, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00cb, code lost:
    
        if (r1 == null) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.conceptglobal.pmc.model.DealerLandDetails> getDealetrPlotDetails(java.lang.String r4) {
        /*
            r3 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r1 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r2 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> Lc3 java.lang.Exception -> Lc5
            android.database.sqlite.SQLiteDatabase r2 = r2.openDatabase()     // Catch: java.lang.Throwable -> Lc3 java.lang.Exception -> Lc5
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r2     // Catch: java.lang.Throwable -> Lc3 java.lang.Exception -> Lc5
            android.database.Cursor r1 = r2.rawQuery(r4, r1)     // Catch: java.lang.Throwable -> Lc3 java.lang.Exception -> Lc5
            if (r1 == 0) goto Lc0
            int r4 = r1.getCount()     // Catch: java.lang.Throwable -> Lc3 java.lang.Exception -> Lc5
            if (r4 <= 0) goto Lc0
            boolean r4 = r1.moveToFirst()     // Catch: java.lang.Throwable -> Lc3 java.lang.Exception -> Lc5
            if (r4 == 0) goto Lc0
        L20:
            com.conceptglobal.pmc.model.DealerLandDetails r4 = new com.conceptglobal.pmc.model.DealerLandDetails     // Catch: java.lang.Exception -> Lb1 java.lang.Throwable -> Lc3
            r4.<init>()     // Catch: java.lang.Exception -> Lb1 java.lang.Throwable -> Lc3
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType0     // Catch: java.lang.Exception -> Lb1 java.lang.Throwable -> Lc3
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> Lb1 java.lang.Throwable -> Lc3
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> Lb1 java.lang.Throwable -> Lc3
            int r2 = r1.getInt(r2)     // Catch: java.lang.Exception -> Lb1 java.lang.Throwable -> Lc3
            r4.setMappingId(r2)     // Catch: java.lang.Exception -> Lb1 java.lang.Throwable -> Lc3
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType1     // Catch: java.lang.Exception -> Lb1 java.lang.Throwable -> Lc3
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> Lb1 java.lang.Throwable -> Lc3
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> Lb1 java.lang.Throwable -> Lc3
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> Lb1 java.lang.Throwable -> Lc3
            r4.setContactid(r2)     // Catch: java.lang.Exception -> Lb1 java.lang.Throwable -> Lc3
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType2     // Catch: java.lang.Exception -> Lb1 java.lang.Throwable -> Lc3
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> Lb1 java.lang.Throwable -> Lc3
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> Lb1 java.lang.Throwable -> Lc3
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> Lb1 java.lang.Throwable -> Lc3
            r4.setLandname(r2)     // Catch: java.lang.Exception -> Lb1 java.lang.Throwable -> Lc3
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType3     // Catch: java.lang.Exception -> Lb1 java.lang.Throwable -> Lc3
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> Lb1 java.lang.Throwable -> Lc3
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> Lb1 java.lang.Throwable -> Lc3
            float r2 = r1.getFloat(r2)     // Catch: java.lang.Exception -> Lb1 java.lang.Throwable -> Lc3
            r4.setAcreages(r2)     // Catch: java.lang.Exception -> Lb1 java.lang.Throwable -> Lc3
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType4     // Catch: java.lang.Exception -> Lb1 java.lang.Throwable -> Lc3
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> Lb1 java.lang.Throwable -> Lc3
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> Lb1 java.lang.Throwable -> Lc3
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> Lb1 java.lang.Throwable -> Lc3
            r4.setAddress(r2)     // Catch: java.lang.Exception -> Lb1 java.lang.Throwable -> Lc3
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType5     // Catch: java.lang.Exception -> Lb1 java.lang.Throwable -> Lc3
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> Lb1 java.lang.Throwable -> Lc3
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> Lb1 java.lang.Throwable -> Lc3
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> Lb1 java.lang.Throwable -> Lc3
            r4.setLatitude(r2)     // Catch: java.lang.Exception -> Lb1 java.lang.Throwable -> Lc3
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType6     // Catch: java.lang.Exception -> Lb1 java.lang.Throwable -> Lc3
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> Lb1 java.lang.Throwable -> Lc3
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> Lb1 java.lang.Throwable -> Lc3
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> Lb1 java.lang.Throwable -> Lc3
            r4.setLongitude(r2)     // Catch: java.lang.Exception -> Lb1 java.lang.Throwable -> Lc3
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType7     // Catch: java.lang.Exception -> Lb1 java.lang.Throwable -> Lc3
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> Lb1 java.lang.Throwable -> Lc3
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> Lb1 java.lang.Throwable -> Lc3
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> Lb1 java.lang.Throwable -> Lc3
            r4.setOnField(r2)     // Catch: java.lang.Exception -> Lb1 java.lang.Throwable -> Lc3
            r0.add(r4)     // Catch: java.lang.Exception -> Lb1 java.lang.Throwable -> Lc3
            goto Lba
        Lb1:
            r4 = move-exception
            r4.printStackTrace()     // Catch: java.lang.Throwable -> Lc3 java.lang.Exception -> Lc5
            java.lang.String r2 = "GetDataFromDB"
            com.conceptglobal.pmc.utils.PLog.e(r2, r4)     // Catch: java.lang.Throwable -> Lc3 java.lang.Exception -> Lc5
        Lba:
            boolean r4 = r1.moveToNext()     // Catch: java.lang.Throwable -> Lc3 java.lang.Exception -> Lc5
            if (r4 != 0) goto L20
        Lc0:
            if (r1 == 0) goto Ld0
            goto Lcd
        Lc3:
            r4 = move-exception
            goto Ld6
        Lc5:
            r4 = move-exception
            java.lang.String r2 = "Crop Selection Data"
            com.conceptglobal.pmc.utils.PLog.e(r2, r4)     // Catch: java.lang.Throwable -> Lc3
            if (r1 == 0) goto Ld0
        Lcd:
            r1.close()
        Ld0:
            com.conceptglobal.pmc.database.DataBaseHandler r4 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r4.closeDatabase()
            return r0
        Ld6:
            if (r1 == 0) goto Ldb
            r1.close()
        Ldb:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getDealetrPlotDetails(java.lang.String):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x007c, code lost:
    
        if (r1 != null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x008c, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0091, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0089, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0087, code lost:
    
        if (r1 == null) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.conceptglobal.pmc.model.DealerCompanyMapping> getCompanySelectionData(java.lang.String r4) {
        /*
            r3 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r1 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r2 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L7f java.lang.Exception -> L81
            android.database.sqlite.SQLiteDatabase r2 = r2.openDatabase()     // Catch: java.lang.Throwable -> L7f java.lang.Exception -> L81
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r2     // Catch: java.lang.Throwable -> L7f java.lang.Exception -> L81
            android.database.Cursor r1 = r2.rawQuery(r4, r1)     // Catch: java.lang.Throwable -> L7f java.lang.Exception -> L81
            if (r1 == 0) goto L7c
            int r4 = r1.getCount()     // Catch: java.lang.Throwable -> L7f java.lang.Exception -> L81
            if (r4 <= 0) goto L7c
            boolean r4 = r1.moveToFirst()     // Catch: java.lang.Throwable -> L7f java.lang.Exception -> L81
            if (r4 == 0) goto L7c
        L20:
            com.conceptglobal.pmc.model.DealerCompanyMapping r4 = new com.conceptglobal.pmc.model.DealerCompanyMapping     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L7f
            r4.<init>()     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L7f
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType0     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L7f
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L7f
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L7f
            int r2 = r1.getInt(r2)     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L7f
            r4.setCompanyId(r2)     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L7f
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType1     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L7f
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L7f
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L7f
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L7f
            r4.setCompanyName(r2)     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L7f
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType2     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L7f
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L7f
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L7f
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L7f
            r4.setCompanySales(r2)     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L7f
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType3     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L7f
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L7f
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L7f
            int r2 = r1.getInt(r2)     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L7f
            r4.setMappingId(r2)     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L7f
            r0.add(r4)     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L7f
            goto L76
        L6d:
            r4 = move-exception
            java.lang.String r2 = "GetDataFromDB"
            com.conceptglobal.pmc.utils.PLog.e(r2, r4)     // Catch: java.lang.Throwable -> L7f java.lang.Exception -> L81
            r4.printStackTrace()     // Catch: java.lang.Throwable -> L7f java.lang.Exception -> L81
        L76:
            boolean r4 = r1.moveToNext()     // Catch: java.lang.Throwable -> L7f java.lang.Exception -> L81
            if (r4 != 0) goto L20
        L7c:
            if (r1 == 0) goto L8c
            goto L89
        L7f:
            r4 = move-exception
            goto L92
        L81:
            r4 = move-exception
            java.lang.String r2 = "Crop Selection Data"
            com.conceptglobal.pmc.utils.PLog.e(r2, r4)     // Catch: java.lang.Throwable -> L7f
            if (r1 == 0) goto L8c
        L89:
            r1.close()
        L8c:
            com.conceptglobal.pmc.database.DataBaseHandler r4 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r4.closeDatabase()
            return r0
        L92:
            if (r1 == 0) goto L97
            r1.close()
        L97:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getCompanySelectionData(java.lang.String):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0072, code lost:
    
        if (r1 != null) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0082, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0087, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x007f, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x007d, code lost:
    
        if (r1 == null) goto L20;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.conceptglobal.pmc.model.PmcRetailersModel> getRetailerNames(java.lang.String r4) {
        /*
            r3 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r1 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r2 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L77
            android.database.sqlite.SQLiteDatabase r2 = r2.openDatabase()     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L77
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r2     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L77
            android.database.Cursor r1 = r2.rawQuery(r4, r1)     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L77
            if (r1 == 0) goto L72
            int r4 = r1.getCount()     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L77
            if (r4 <= 0) goto L72
            boolean r4 = r1.moveToFirst()     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L77
            if (r4 == 0) goto L72
        L20:
            com.conceptglobal.pmc.model.PmcRetailersModel r4 = new com.conceptglobal.pmc.model.PmcRetailersModel     // Catch: java.lang.Exception -> L6c java.lang.Throwable -> L75
            r4.<init>()     // Catch: java.lang.Exception -> L6c java.lang.Throwable -> L75
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType0     // Catch: java.lang.Exception -> L6c java.lang.Throwable -> L75
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> L6c java.lang.Throwable -> L75
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> L6c java.lang.Throwable -> L75
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> L6c java.lang.Throwable -> L75
            r4.setContactId(r2)     // Catch: java.lang.Exception -> L6c java.lang.Throwable -> L75
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType1     // Catch: java.lang.Exception -> L6c java.lang.Throwable -> L75
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> L6c java.lang.Throwable -> L75
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> L6c java.lang.Throwable -> L75
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> L6c java.lang.Throwable -> L75
            r4.setRetailercode(r2)     // Catch: java.lang.Exception -> L6c java.lang.Throwable -> L75
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType2     // Catch: java.lang.Exception -> L6c java.lang.Throwable -> L75
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> L6c java.lang.Throwable -> L75
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> L6c java.lang.Throwable -> L75
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> L6c java.lang.Throwable -> L75
            r4.setContactName(r2)     // Catch: java.lang.Exception -> L6c java.lang.Throwable -> L75
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType3     // Catch: java.lang.Exception -> L6c java.lang.Throwable -> L75
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> L6c java.lang.Throwable -> L75
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> L6c java.lang.Throwable -> L75
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> L6c java.lang.Throwable -> L75
            r4.setMobileNumber(r2)     // Catch: java.lang.Exception -> L6c java.lang.Throwable -> L75
            r0.add(r4)     // Catch: java.lang.Exception -> L6c java.lang.Throwable -> L75
        L6c:
            boolean r4 = r1.moveToNext()     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L77
            if (r4 != 0) goto L20
        L72:
            if (r1 == 0) goto L82
            goto L7f
        L75:
            r4 = move-exception
            goto L88
        L77:
            r4 = move-exception
            java.lang.String r2 = "Getting Retailer Names ::"
            com.conceptglobal.pmc.utils.PLog.e(r2, r4)     // Catch: java.lang.Throwable -> L75
            if (r1 == 0) goto L82
        L7f:
            r1.close()
        L82:
            com.conceptglobal.pmc.database.DataBaseHandler r4 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r4.closeDatabase()
            return r0
        L88:
            if (r1 == 0) goto L8d
            r1.close()
        L8d:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getRetailerNames(java.lang.String):java.util.List");
    }

    public List<ActivityModel> getPMCActivities(String str) throws Exception {
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
                            ActivityModel activityModel = new ActivityModel();
                            activityModel.setActivityId(cursor.getInt(ConstantDeclarations.Enumaration.mRequestType0.value().intValue()));
                            activityModel.setActivityName(cursor.getString(ConstantDeclarations.Enumaration.mRequestType1.value().intValue()));
                            activityModel.setIsPlanned(cursor.getInt(ConstantDeclarations.Enumaration.mRequestType2.value().intValue()));
                            activityModel.setIsDone(cursor.getInt(ConstantDeclarations.Enumaration.mRequestType3.value().intValue()));
                            arrayList.add(activityModel);
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

    public List<AttributeModel> getPMCActivityAttributes(String str) throws Exception {
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
                            AttributeModel attributeModel = new AttributeModel();
                            attributeModel.setAttributeId(cursor.getInt(ConstantDeclarations.Enumaration.mRequestType0.value().intValue()));
                            attributeModel.setAttributeName(cursor.getString(ConstantDeclarations.Enumaration.mRequestType1.value().intValue()).trim());
                            if (cursor.getString(ConstantDeclarations.Enumaration.mRequestType2.value().intValue()) != null) {
                                attributeModel.setControlType(cursor.getString(ConstantDeclarations.Enumaration.mRequestType2.value().intValue()));
                            } else {
                                attributeModel.setControlType("");
                            }
                            if (cursor.getString(ConstantDeclarations.Enumaration.mRequestType3.value().intValue()) != null) {
                                attributeModel.setAttributeValue(cursor.getString(ConstantDeclarations.Enumaration.mRequestType3.value().intValue()).trim());
                            } else {
                                attributeModel.setAttributeValue("");
                            }
                            if (cursor.getString(ConstantDeclarations.Enumaration.mRequestType4.value().intValue()) != null) {
                                attributeModel.setIsMandatory(cursor.getInt(ConstantDeclarations.Enumaration.mRequestType4.value().intValue()));
                            } else {
                                attributeModel.setIsMandatory(0);
                            }
                            if (cursor.getString(ConstantDeclarations.Enumaration.mRequestType5.value().intValue()) != null) {
                                attributeModel.setDetailsId(cursor.getInt(ConstantDeclarations.Enumaration.mRequestType5.value().intValue()));
                            } else {
                                attributeModel.setDetailsId(0);
                            }
                            if (cursor.getString(ConstantDeclarations.Enumaration.mRequestType6.value().intValue()) != null) {
                                attributeModel.setSequenceId(cursor.getString(ConstantDeclarations.Enumaration.mRequestType6.value().intValue()));
                            } else {
                                attributeModel.setSequenceId("");
                            }
                            if (cursor.getInt(ConstantDeclarations.Enumaration.mRequestType7.value().intValue()) != 0) {
                                attributeModel.setActivityAttributeId(cursor.getInt(ConstantDeclarations.Enumaration.mRequestType7.value().intValue()));
                            } else {
                                attributeModel.setActivityAttributeId(0);
                            }
                            attributeModel.setMaxLength(cursor.getInt(ConstantDeclarations.Enumaration.mRequestType8.value().intValue()));
                            attributeModel.setMinLength(cursor.getInt(ConstantDeclarations.Enumaration.mRequestType9.value().intValue()));
                            attributeModel.setMinValue(cursor.getLong(ConstantDeclarations.Enumaration.mRequestType10.value().intValue()));
                            attributeModel.setMaxValue(cursor.getLong(ConstantDeclarations.Enumaration.mRequestType11.value().intValue()));
                            attributeModel.setValidationType(cursor.getString(ConstantDeclarations.Enumaration.mRequestType12.value().intValue()));
                            attributeModel.setValidationExpression(cursor.getString(ConstantDeclarations.Enumaration.mRequestType13.value().intValue()));
                            attributeModel.setAttributeSource(cursor.getString(ConstantDeclarations.Enumaration.mRequestType14.value().intValue()));
                            attributeModel.setAttributeValueField(cursor.getString(ConstantDeclarations.Enumaration.mRequestType15.value().intValue()));
                            attributeModel.setAttributeDisplayField(cursor.getString(ConstantDeclarations.Enumaration.mRequestType16.value().intValue()));
                            attributeModel.setAttributeLookupKey(cursor.getString(ConstantDeclarations.Enumaration.mRequestType17.value().intValue()));
                            attributeModel.setAttributeDefaultValue(cursor.getString(ConstantDeclarations.Enumaration.mRequestType18.value().intValue()));
                            attributeModel.setIsKeyAttribute(cursor.getInt(ConstantDeclarations.Enumaration.mRequestType19.value().intValue()));
                            attributeModel.setFilterAttribute1(cursor.getInt(ConstantDeclarations.Enumaration.mRequestType20.value().intValue()));
                            attributeModel.setFilterAttribute2(cursor.getInt(ConstantDeclarations.Enumaration.mRequestType21.value().intValue()));
                            attributeModel.setFilterAttribute3(cursor.getInt(ConstantDeclarations.Enumaration.mRequestType22.value().intValue()));
                            attributeModel.setDisplayType(cursor.getString(ConstantDeclarations.Enumaration.mRequestType23.value().intValue()));
                            attributeModel.setDynamicColumn(cursor.getString(ConstantDeclarations.Enumaration.mRequestType24.value().intValue()));
                            attributeModel.setDynamicCondition(cursor.getString(ConstantDeclarations.Enumaration.mRequestType25.value().intValue()));
                            attributeModel.setIsReadOnly(cursor.getInt(ConstantDeclarations.Enumaration.mRequestType26.value().intValue()));
                            attributeModel.setSourceQuery(cursor.getString(ConstantDeclarations.Enumaration.mRequestType27.value().intValue()));
                            attributeModel.setDisplayRows(cursor.getInt(ConstantDeclarations.Enumaration.mRequestType28.value().intValue()));
                            arrayList.add(attributeModel);
                        } catch (Exception e) {
                            throw e;
                        }
                    } while (cursor.moveToNext());
                }
                return arrayList;
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

    public List<AttributeModel> getPMCTSTActivityAttributes(String str) throws Exception {
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
                            AttributeModel attributeModel = new AttributeModel();
                            attributeModel.setAttributeId(cursor.getInt(ConstantDeclarations.Enumaration.mRequestType0.value().intValue()));
                            attributeModel.setAttributeName(cursor.getString(ConstantDeclarations.Enumaration.mRequestType1.value().intValue()).trim());
                            if (cursor.getString(ConstantDeclarations.Enumaration.mRequestType2.value().intValue()) != null) {
                                attributeModel.setControlType(cursor.getString(ConstantDeclarations.Enumaration.mRequestType2.value().intValue()));
                            } else {
                                attributeModel.setControlType("");
                            }
                            if (cursor.getString(ConstantDeclarations.Enumaration.mRequestType3.value().intValue()) != null) {
                                attributeModel.setAttributeValue(cursor.getString(ConstantDeclarations.Enumaration.mRequestType3.value().intValue()).trim());
                            } else {
                                attributeModel.setAttributeValue("");
                            }
                            if (cursor.getString(ConstantDeclarations.Enumaration.mRequestType4.value().intValue()) != null) {
                                attributeModel.setIsMandatory(cursor.getInt(ConstantDeclarations.Enumaration.mRequestType4.value().intValue()));
                            } else {
                                attributeModel.setIsMandatory(0);
                            }
                            if (cursor.getString(ConstantDeclarations.Enumaration.mRequestType5.value().intValue()) != null) {
                                attributeModel.setDetailsId(cursor.getInt(ConstantDeclarations.Enumaration.mRequestType5.value().intValue()));
                            } else {
                                attributeModel.setDetailsId(0);
                            }
                            if (cursor.getString(ConstantDeclarations.Enumaration.mRequestType6.value().intValue()) != null) {
                                attributeModel.setSequenceId(cursor.getString(ConstantDeclarations.Enumaration.mRequestType6.value().intValue()));
                            } else {
                                attributeModel.setSequenceId("");
                            }
                            if (cursor.getInt(ConstantDeclarations.Enumaration.mRequestType7.value().intValue()) != 0) {
                                attributeModel.setActivityAttributeId(cursor.getInt(ConstantDeclarations.Enumaration.mRequestType7.value().intValue()));
                            } else {
                                attributeModel.setActivityAttributeId(0);
                            }
                            attributeModel.setMaxLength(cursor.getInt(ConstantDeclarations.Enumaration.mRequestType8.value().intValue()));
                            attributeModel.setMinLength(cursor.getInt(ConstantDeclarations.Enumaration.mRequestType9.value().intValue()));
                            attributeModel.setMinValue(cursor.getLong(ConstantDeclarations.Enumaration.mRequestType10.value().intValue()));
                            attributeModel.setMaxValue(cursor.getLong(ConstantDeclarations.Enumaration.mRequestType11.value().intValue()));
                            attributeModel.setValidationType(cursor.getString(ConstantDeclarations.Enumaration.mRequestType12.value().intValue()));
                            attributeModel.setValidationExpression(cursor.getString(ConstantDeclarations.Enumaration.mRequestType13.value().intValue()));
                            attributeModel.setAttributeSource(cursor.getString(ConstantDeclarations.Enumaration.mRequestType14.value().intValue()));
                            attributeModel.setAttributeValueField(cursor.getString(ConstantDeclarations.Enumaration.mRequestType15.value().intValue()));
                            attributeModel.setAttributeDisplayField(cursor.getString(ConstantDeclarations.Enumaration.mRequestType16.value().intValue()));
                            attributeModel.setAttributeLookupKey(cursor.getString(ConstantDeclarations.Enumaration.mRequestType17.value().intValue()));
                            attributeModel.setAttributeDefaultValue(cursor.getString(ConstantDeclarations.Enumaration.mRequestType18.value().intValue()));
                            attributeModel.setIsKeyAttribute(cursor.getInt(ConstantDeclarations.Enumaration.mRequestType19.value().intValue()));
                            attributeModel.setFilterAttribute1(cursor.getInt(ConstantDeclarations.Enumaration.mRequestType20.value().intValue()));
                            attributeModel.setFilterAttribute2(cursor.getInt(ConstantDeclarations.Enumaration.mRequestType21.value().intValue()));
                            attributeModel.setFilterAttribute3(cursor.getInt(ConstantDeclarations.Enumaration.mRequestType22.value().intValue()));
                            attributeModel.setDisplayType(cursor.getString(ConstantDeclarations.Enumaration.mRequestType23.value().intValue()));
                            attributeModel.setDynamicColumn(cursor.getString(ConstantDeclarations.Enumaration.mRequestType24.value().intValue()));
                            attributeModel.setDynamicCondition(cursor.getString(ConstantDeclarations.Enumaration.mRequestType25.value().intValue()));
                            attributeModel.setIsReadOnly(cursor.getInt(ConstantDeclarations.Enumaration.mRequestType26.value().intValue()));
                            attributeModel.setSourceQuery(cursor.getString(ConstantDeclarations.Enumaration.mRequestType27.value().intValue()));
                            arrayList.add(attributeModel);
                        } catch (Exception e) {
                            throw e;
                        }
                    } while (cursor.moveToNext());
                }
                return arrayList;
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

    public List<AttributeModel> getPMCSurveyActivityAttributes(String str) throws Exception {
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
                            AttributeModel attributeModel = new AttributeModel();
                            attributeModel.setAttributeId(cursor.getInt(ConstantDeclarations.Enumaration.mRequestType0.value().intValue()));
                            attributeModel.setAttributeName(cursor.getString(ConstantDeclarations.Enumaration.mRequestType1.value().intValue()).trim());
                            if (cursor.getString(ConstantDeclarations.Enumaration.mRequestType2.value().intValue()) != null) {
                                attributeModel.setControlType(cursor.getString(ConstantDeclarations.Enumaration.mRequestType2.value().intValue()));
                            } else {
                                attributeModel.setControlType("");
                            }
                            if (cursor.getString(ConstantDeclarations.Enumaration.mRequestType3.value().intValue()) != null) {
                                attributeModel.setAttributeValue(cursor.getString(ConstantDeclarations.Enumaration.mRequestType3.value().intValue()).trim());
                            } else {
                                attributeModel.setAttributeValue("");
                            }
                            if (cursor.getString(ConstantDeclarations.Enumaration.mRequestType4.value().intValue()) != null) {
                                attributeModel.setIsMandatory(cursor.getInt(ConstantDeclarations.Enumaration.mRequestType4.value().intValue()));
                            } else {
                                attributeModel.setIsMandatory(0);
                            }
                            if (cursor.getString(ConstantDeclarations.Enumaration.mRequestType5.value().intValue()) != null) {
                                attributeModel.setDetailsId(cursor.getInt(ConstantDeclarations.Enumaration.mRequestType5.value().intValue()));
                            } else {
                                attributeModel.setDetailsId(0);
                            }
                            if (cursor.getString(ConstantDeclarations.Enumaration.mRequestType6.value().intValue()) != null) {
                                attributeModel.setSequenceId(cursor.getString(ConstantDeclarations.Enumaration.mRequestType6.value().intValue()));
                            } else {
                                attributeModel.setSequenceId("");
                            }
                            if (cursor.getInt(ConstantDeclarations.Enumaration.mRequestType7.value().intValue()) != 0) {
                                attributeModel.setActivityAttributeId(cursor.getInt(ConstantDeclarations.Enumaration.mRequestType7.value().intValue()));
                            } else {
                                attributeModel.setActivityAttributeId(0);
                            }
                            attributeModel.setMaxLength(cursor.getInt(ConstantDeclarations.Enumaration.mRequestType8.value().intValue()));
                            attributeModel.setMinLength(cursor.getInt(ConstantDeclarations.Enumaration.mRequestType9.value().intValue()));
                            attributeModel.setMinValue(cursor.getLong(ConstantDeclarations.Enumaration.mRequestType10.value().intValue()));
                            attributeModel.setMaxValue(cursor.getLong(ConstantDeclarations.Enumaration.mRequestType11.value().intValue()));
                            attributeModel.setValidationType(cursor.getString(ConstantDeclarations.Enumaration.mRequestType12.value().intValue()));
                            attributeModel.setValidationExpression(cursor.getString(ConstantDeclarations.Enumaration.mRequestType13.value().intValue()));
                            attributeModel.setAttributeSource(cursor.getString(ConstantDeclarations.Enumaration.mRequestType14.value().intValue()));
                            attributeModel.setAttributeValueField(cursor.getString(ConstantDeclarations.Enumaration.mRequestType15.value().intValue()));
                            attributeModel.setAttributeDisplayField(cursor.getString(ConstantDeclarations.Enumaration.mRequestType16.value().intValue()));
                            attributeModel.setAttributeLookupKey(cursor.getString(ConstantDeclarations.Enumaration.mRequestType17.value().intValue()));
                            attributeModel.setAttributeDefaultValue(cursor.getString(ConstantDeclarations.Enumaration.mRequestType18.value().intValue()));
                            attributeModel.setIsKeyAttribute(cursor.getInt(ConstantDeclarations.Enumaration.mRequestType19.value().intValue()));
                            attributeModel.setFilterAttribute1(cursor.getInt(ConstantDeclarations.Enumaration.mRequestType20.value().intValue()));
                            attributeModel.setFilterAttribute2(cursor.getInt(ConstantDeclarations.Enumaration.mRequestType21.value().intValue()));
                            attributeModel.setFilterAttribute3(cursor.getInt(ConstantDeclarations.Enumaration.mRequestType22.value().intValue()));
                            attributeModel.setDisplayType(cursor.getString(ConstantDeclarations.Enumaration.mRequestType23.value().intValue()));
                            attributeModel.setDynamicColumn(cursor.getString(ConstantDeclarations.Enumaration.mRequestType24.value().intValue()));
                            attributeModel.setDynamicCondition(cursor.getString(ConstantDeclarations.Enumaration.mRequestType25.value().intValue()));
                            attributeModel.setIsReadOnly(cursor.getInt(ConstantDeclarations.Enumaration.mRequestType26.value().intValue()));
                            attributeModel.setSourceQuery(cursor.getString(ConstantDeclarations.Enumaration.mRequestType27.value().intValue()));
                            arrayList.add(attributeModel);
                        } catch (Exception e) {
                            throw e;
                        }
                    } while (cursor.moveToNext());
                }
                return arrayList;
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

    public List<AttributeModel> getPMCFBFActivityAttributes(String str) throws Exception {
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
                            AttributeModel attributeModel = new AttributeModel();
                            attributeModel.setAttributeId(cursor.getInt(ConstantDeclarations.Enumaration.mRequestType0.value().intValue()));
                            attributeModel.setAttributeName(cursor.getString(ConstantDeclarations.Enumaration.mRequestType1.value().intValue()).trim());
                            if (cursor.getString(ConstantDeclarations.Enumaration.mRequestType2.value().intValue()) != null) {
                                attributeModel.setControlType(cursor.getString(ConstantDeclarations.Enumaration.mRequestType2.value().intValue()));
                            } else {
                                attributeModel.setControlType("");
                            }
                            if (cursor.getString(ConstantDeclarations.Enumaration.mRequestType3.value().intValue()) != null) {
                                attributeModel.setAttributeValue(cursor.getString(ConstantDeclarations.Enumaration.mRequestType3.value().intValue()).trim());
                            } else {
                                attributeModel.setAttributeValue("");
                            }
                            if (cursor.getString(ConstantDeclarations.Enumaration.mRequestType4.value().intValue()) != null) {
                                attributeModel.setIsMandatory(cursor.getInt(ConstantDeclarations.Enumaration.mRequestType4.value().intValue()));
                            } else {
                                attributeModel.setIsMandatory(0);
                            }
                            if (cursor.getString(ConstantDeclarations.Enumaration.mRequestType5.value().intValue()) != null) {
                                attributeModel.setDetailsId(cursor.getInt(ConstantDeclarations.Enumaration.mRequestType5.value().intValue()));
                            } else {
                                attributeModel.setDetailsId(0);
                            }
                            if (cursor.getString(ConstantDeclarations.Enumaration.mRequestType6.value().intValue()) != null) {
                                attributeModel.setSequenceId(cursor.getString(ConstantDeclarations.Enumaration.mRequestType6.value().intValue()));
                            } else {
                                attributeModel.setSequenceId("");
                            }
                            if (cursor.getInt(ConstantDeclarations.Enumaration.mRequestType7.value().intValue()) != 0) {
                                attributeModel.setActivityAttributeId(cursor.getInt(ConstantDeclarations.Enumaration.mRequestType7.value().intValue()));
                            } else {
                                attributeModel.setActivityAttributeId(0);
                            }
                            attributeModel.setMaxLength(cursor.getInt(ConstantDeclarations.Enumaration.mRequestType8.value().intValue()));
                            attributeModel.setMinLength(cursor.getInt(ConstantDeclarations.Enumaration.mRequestType9.value().intValue()));
                            attributeModel.setMinValue(cursor.getLong(ConstantDeclarations.Enumaration.mRequestType10.value().intValue()));
                            attributeModel.setMaxValue(cursor.getLong(ConstantDeclarations.Enumaration.mRequestType11.value().intValue()));
                            attributeModel.setValidationType(cursor.getString(ConstantDeclarations.Enumaration.mRequestType12.value().intValue()));
                            attributeModel.setValidationExpression(cursor.getString(ConstantDeclarations.Enumaration.mRequestType13.value().intValue()));
                            attributeModel.setAttributeSource(cursor.getString(ConstantDeclarations.Enumaration.mRequestType14.value().intValue()));
                            attributeModel.setAttributeValueField(cursor.getString(ConstantDeclarations.Enumaration.mRequestType15.value().intValue()));
                            attributeModel.setAttributeDisplayField(cursor.getString(ConstantDeclarations.Enumaration.mRequestType16.value().intValue()));
                            attributeModel.setAttributeLookupKey(cursor.getString(ConstantDeclarations.Enumaration.mRequestType17.value().intValue()));
                            attributeModel.setAttributeDefaultValue(cursor.getString(ConstantDeclarations.Enumaration.mRequestType18.value().intValue()));
                            attributeModel.setIsKeyAttribute(cursor.getInt(ConstantDeclarations.Enumaration.mRequestType19.value().intValue()));
                            attributeModel.setFilterAttribute1(cursor.getInt(ConstantDeclarations.Enumaration.mRequestType20.value().intValue()));
                            attributeModel.setFilterAttribute2(cursor.getInt(ConstantDeclarations.Enumaration.mRequestType21.value().intValue()));
                            attributeModel.setFilterAttribute3(cursor.getInt(ConstantDeclarations.Enumaration.mRequestType22.value().intValue()));
                            attributeModel.setDisplayType(cursor.getString(ConstantDeclarations.Enumaration.mRequestType23.value().intValue()));
                            attributeModel.setDynamicColumn(cursor.getString(ConstantDeclarations.Enumaration.mRequestType24.value().intValue()));
                            attributeModel.setDynamicCondition(cursor.getString(ConstantDeclarations.Enumaration.mRequestType25.value().intValue()));
                            attributeModel.setIsReadOnly(cursor.getInt(ConstantDeclarations.Enumaration.mRequestType26.value().intValue()));
                            attributeModel.setSourceQuery(cursor.getString(ConstantDeclarations.Enumaration.mRequestType27.value().intValue()));
                            arrayList.add(attributeModel);
                        } catch (Exception e) {
                            throw e;
                        }
                    } while (cursor.moveToNext());
                }
                return arrayList;
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

    /* JADX WARN: Can't wrap try/catch for region: R(11:0|1|(5:2|3|4|5|6)|(3:7|(3:90|91|(1:(8:97|98|99|(6:102|(5:143|144|145|146|147)(2:104|(1:106)(5:110|(4:121|(1:123)(1:141)|124|(2:126|(1:128)(6:129|130|131|132|134|109)))|142|124|(0)))|107|108|109|100)|154|155|137|(1:140)(1:139)))(0))(2:11|(1:(7:17|18|(6:21|(1:23)(1:(1:28)(2:29|(3:31|(1:42)|43)(8:44|(1:55)|56|57|58|59|61|26)))|24|25|26|19)|68|69|64|(1:67)(1:66)))(0))|(1:74))|75|76|77|(5:79|80|81|82|83)|88|83|(1:(0))) */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0304 A[Catch: Exception -> 0x032b, all -> 0x034c, TryCatch #1 {Exception -> 0x032b, blocks: (B:147:0x02a7, B:106:0x02b3, B:110:0x02c0, B:112:0x02ca, B:114:0x02d0, B:116:0x02d6, B:118:0x02dc, B:121:0x02e3, B:123:0x02eb, B:124:0x02fe, B:126:0x0304, B:129:0x030e, B:142:0x02f2), top: B:146:0x02a7 }] */
    /* JADX WARN: Removed duplicated region for block: B:139:0x0340 A[LOOP:2: B:97:0x027f->B:139:0x0340, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:140:0x0346 A[EDGE_INSN: B:140:0x0346->B:73:0x0346 BREAK  A[LOOP:2: B:97:0x027f->B:139:0x0340], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0243 A[LOOP:0: B:17:0x0063->B:66:0x0243, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0346 A[EDGE_INSN: B:67:0x0346->B:73:0x0346 BREAK  A[LOOP:0: B:17:0x0063->B:66:0x0243], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0374 A[Catch: Exception -> 0x037f, TRY_LEAVE, TryCatch #7 {Exception -> 0x037f, blocks: (B:77:0x036a, B:79:0x0374), top: B:76:0x036a }] */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v5 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String[][] getlotdata(java.lang.String r20) {
        /*
            Method dump skipped, instructions count: 909
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getlotdata(java.lang.String):java.lang.String[][]");
    }

    public List<BrandsModel> getFarmerAssociatedBrands(String str) throws Exception {
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
                            BrandsModel brandsModel = new BrandsModel();
                            brandsModel.setBrandId(cursor.getString(ConstantDeclarations.Enumaration.mRequestType0.value().intValue()));
                            if (!str.contains("||")) {
                                String columnName = cursor.getColumnName(ConstantDeclarations.Enumaration.mRequestType1.value().intValue());
                                if (!columnName.equalsIgnoreCase("RetailerShopName") && !columnName.equalsIgnoreCase("FarmerName") && !columnName.equalsIgnoreCase("ContactName") && !columnName.equalsIgnoreCase("MobileNumber") && !columnName.equalsIgnoreCase("Mobile")) {
                                    brandsModel.setBrandName(cursor.getString(ConstantDeclarations.Enumaration.mRequestType1.value().intValue()));
                                }
                                brandsModel.setBrandName(Encryption.decrypt(cursor.getString(ConstantDeclarations.Enumaration.mRequestType1.value().intValue())));
                            } else if (str.contains("-")) {
                                String columnName2 = cursor.getColumnName(ConstantDeclarations.Enumaration.mRequestType1.value().intValue());
                                if (!columnName2.equalsIgnoreCase("RetailerShopName") && !columnName2.equalsIgnoreCase("FarmerName") && !columnName2.equalsIgnoreCase("ContactName") && !columnName2.equalsIgnoreCase("MobileNumber") && !columnName2.equalsIgnoreCase("Mobile")) {
                                    brandsModel.setBrandName(cursor.getString(ConstantDeclarations.Enumaration.mRequestType1.value().intValue()));
                                }
                                String substring = cursor.getString(ConstantDeclarations.Enumaration.mRequestType1.value().intValue()).substring(cursor.getString(ConstantDeclarations.Enumaration.mRequestType1.value().intValue()).indexOf("-") + 1, cursor.getString(ConstantDeclarations.Enumaration.mRequestType1.value().intValue()).length());
                                brandsModel.setBrandName(Encryption.decrypt(cursor.getString(ConstantDeclarations.Enumaration.mRequestType1.value().intValue()).substring(0, cursor.getString(ConstantDeclarations.Enumaration.mRequestType1.value().intValue()).indexOf("-"))).trim() + "-" + Encryption.decrypt(substring).trim());
                            } else {
                                String columnName3 = cursor.getColumnName(ConstantDeclarations.Enumaration.mRequestType1.value().intValue());
                                if (!columnName3.equalsIgnoreCase("RetailerShopName") && !columnName3.equalsIgnoreCase("FarmerName") && !columnName3.equalsIgnoreCase("ContactName") && !columnName3.equalsIgnoreCase("MobileNumber") && !columnName3.equalsIgnoreCase("Mobile")) {
                                    brandsModel.setBrandName(cursor.getString(ConstantDeclarations.Enumaration.mRequestType1.value().intValue()));
                                }
                                String substring2 = cursor.getString(ConstantDeclarations.Enumaration.mRequestType1.value().intValue()).substring(cursor.getString(ConstantDeclarations.Enumaration.mRequestType1.value().intValue()).indexOf("(") + 1, cursor.getString(ConstantDeclarations.Enumaration.mRequestType1.value().intValue()).indexOf(")"));
                                brandsModel.setBrandName(Encryption.decrypt(cursor.getString(ConstantDeclarations.Enumaration.mRequestType1.value().intValue()).substring(0, cursor.getString(ConstantDeclarations.Enumaration.mRequestType1.value().intValue()).indexOf("("))).trim() + "(" + substring2.trim() + ")");
                            }
                            if (cursor.getColumnIndex("attributeValue") != -1 && cursor.getString(ConstantDeclarations.Enumaration.mRequestType2.value().intValue()) != null) {
                                brandsModel.setBrandSelected(cursor.getString(ConstantDeclarations.Enumaration.mRequestType2.value().intValue()));
                                Items.areItemsExist = true;
                            }
                            arrayList.add(brandsModel);
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

    public List<BrandsModel> getCatgoryDetails(String str) throws Exception {
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
                            BrandsModel brandsModel = new BrandsModel();
                            brandsModel.setBrandId(cursor.getString(ConstantDeclarations.Enumaration.mRequestType0.value().intValue()));
                            brandsModel.setBrandName(cursor.getColumnName(ConstantDeclarations.Enumaration.mRequestType1.value().intValue()));
                            arrayList.add(brandsModel);
                        } catch (Exception e) {
                            throw e;
                        }
                    } while (cursor.moveToNext());
                }
                return arrayList;
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

    public List<FieldData> getdropdowndataList(String str) throws Exception {
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
                            FieldData fieldData = new FieldData();
                            fieldData.setId(cursor.getString(ConstantDeclarations.Enumaration.mRequestType0.value().intValue()));
                            fieldData.setName(cursor.getString(ConstantDeclarations.Enumaration.mRequestType1.value().intValue()));
                            arrayList.add(fieldData);
                        } catch (Exception e) {
                            throw e;
                        }
                    } while (cursor.moveToNext());
                }
                return arrayList;
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

    public List<FieldData> getMIListdetails(String str) throws Exception {
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
                            FieldData fieldData = new FieldData();
                            fieldData.setId(cursor.getString(ConstantDeclarations.Enumaration.mRequestType0.value().intValue()));
                            fieldData.setName(cursor.getString(ConstantDeclarations.Enumaration.mRequestType1.value().intValue()));
                            arrayList.add(fieldData);
                        } catch (Exception e) {
                            throw e;
                        }
                    } while (cursor.moveToNext());
                }
                return arrayList;
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

    public int getMIIsFirstChild(String str) throws Exception {
        Cursor cursor = null;
        try {
            try {
                SQLiteDatabase openDatabase = dbInstance.openDatabase();
                sqliteDatabase = openDatabase;
                cursor = openDatabase.rawQuery(str, null);
                if (cursor != null && cursor.getCount() > 0 && cursor.moveToFirst()) {
                    try {
                        return cursor.getInt(ConstantDeclarations.Enumaration.mRequestType0.value().intValue());
                    } catch (Exception e) {
                        throw e;
                    }
                }
                if (cursor != null) {
                    cursor.close();
                }
                dbInstance.closeDatabase();
                return 0;
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

    public List<HashMap<String, String>> getDataInHashMapList(String str) throws Exception {
        ArrayList arrayList = new ArrayList();
        new HashMap();
        Cursor cursor = null;
        try {
            try {
                SQLiteDatabase openDatabase = dbInstance.openDatabase();
                sqliteDatabase = openDatabase;
                cursor = openDatabase.rawQuery(str, null);
                List asList = Arrays.asList(cursor.getColumnNames());
                if (cursor != null && cursor.getCount() > 0 && cursor.moveToFirst()) {
                    do {
                        try {
                            HashMap hashMap = new HashMap();
                            for (int intValue = ConstantDeclarations.Enumaration.mRequestType0.value().intValue(); intValue < asList.size(); intValue++) {
                                if (!cursor.getString(intValue).toString().equalsIgnoreCase("0")) {
                                    hashMap.put((String) asList.get(intValue), cursor.getString(intValue));
                                }
                            }
                            arrayList.add(hashMap);
                        } catch (Exception e) {
                            throw e;
                        }
                    } while (cursor.moveToNext());
                }
                return arrayList;
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

    public List<FieldTypes> getFiledDetails(String str) throws Exception {
        ArrayList arrayList = new ArrayList();
        Cursor cursor = null;
        try {
            try {
                SQLiteDatabase openDatabase = dbInstance.openDatabase();
                sqliteDatabase = openDatabase;
                cursor = openDatabase.rawQuery(str, null);
                if (cursor != null && cursor.getCount() > 0 && cursor.moveToFirst()) {
                    do {
                        FieldTypes fieldTypes = new FieldTypes();
                        fieldTypes.setId(cursor.getInt(ConstantDeclarations.Enumaration.mRequestType0.value().intValue()));
                        fieldTypes.setName(cursor.getString(ConstantDeclarations.Enumaration.mRequestType1.value().intValue()));
                        arrayList.add(fieldTypes);
                    } while (cursor.moveToNext());
                }
                return arrayList;
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

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0134, code lost:
    
        if (r1 != null) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x014e, code lost:
    
        return r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.conceptglobal.pmc.model.SyncErrorLogModel> getSyncErrorLogsData(java.lang.String r4) {
        /*
            Method dump skipped, instructions count: 335
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getSyncErrorLogsData(java.lang.String):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x009b, code lost:
    
        if (r2 != null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x00a9, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x00ae, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00a6, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00a4, code lost:
    
        if (r2 == null) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.conceptglobal.pmc.model.SuperwiserFarmerList> getsuperwiserFarmereDetails(java.lang.String r5) {
        /*
            r4 = this;
            java.lang.String r0 = "Getting Faremer details :: "
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            r2 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r3 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L9e java.lang.Exception -> La0
            android.database.sqlite.SQLiteDatabase r3 = r3.openDatabase()     // Catch: java.lang.Throwable -> L9e java.lang.Exception -> La0
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r3     // Catch: java.lang.Throwable -> L9e java.lang.Exception -> La0
            android.database.Cursor r2 = r3.rawQuery(r5, r2)     // Catch: java.lang.Throwable -> L9e java.lang.Exception -> La0
            if (r2 == 0) goto L9b
            int r5 = r2.getCount()     // Catch: java.lang.Throwable -> L9e java.lang.Exception -> La0
            if (r5 <= 0) goto L9b
            boolean r5 = r2.moveToFirst()     // Catch: java.lang.Throwable -> L9e java.lang.Exception -> La0
            if (r5 == 0) goto L9b
        L22:
            com.conceptglobal.pmc.model.SuperwiserFarmerList r5 = new com.conceptglobal.pmc.model.SuperwiserFarmerList     // Catch: java.lang.Exception -> L91 java.lang.Throwable -> L9e
            r5.<init>()     // Catch: java.lang.Exception -> L91 java.lang.Throwable -> L9e
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r3 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType0     // Catch: java.lang.Exception -> L91 java.lang.Throwable -> L9e
            java.lang.Integer r3 = r3.value()     // Catch: java.lang.Exception -> L91 java.lang.Throwable -> L9e
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> L91 java.lang.Throwable -> L9e
            int r3 = r2.getInt(r3)     // Catch: java.lang.Exception -> L91 java.lang.Throwable -> L9e
            r5.setFarmerId(r3)     // Catch: java.lang.Exception -> L91 java.lang.Throwable -> L9e
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r3 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType1     // Catch: java.lang.Exception -> L91 java.lang.Throwable -> L9e
            java.lang.Integer r3 = r3.value()     // Catch: java.lang.Exception -> L91 java.lang.Throwable -> L9e
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> L91 java.lang.Throwable -> L9e
            java.lang.String r3 = r2.getString(r3)     // Catch: java.lang.Exception -> L91 java.lang.Throwable -> L9e
            r5.setFarmerName(r3)     // Catch: java.lang.Exception -> L91 java.lang.Throwable -> L9e
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r3 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType2     // Catch: java.lang.Exception -> L91 java.lang.Throwable -> L9e
            java.lang.Integer r3 = r3.value()     // Catch: java.lang.Exception -> L91 java.lang.Throwable -> L9e
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> L91 java.lang.Throwable -> L9e
            java.lang.String r3 = r2.getString(r3)     // Catch: java.lang.Exception -> L91 java.lang.Throwable -> L9e
            r5.setMobile(r3)     // Catch: java.lang.Exception -> L91 java.lang.Throwable -> L9e
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r3 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType3     // Catch: java.lang.Exception -> L91 java.lang.Throwable -> L9e
            java.lang.Integer r3 = r3.value()     // Catch: java.lang.Exception -> L91 java.lang.Throwable -> L9e
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> L91 java.lang.Throwable -> L9e
            java.lang.String r3 = r2.getString(r3)     // Catch: java.lang.Exception -> L91 java.lang.Throwable -> L9e
            r5.setActivityName(r3)     // Catch: java.lang.Exception -> L91 java.lang.Throwable -> L9e
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r3 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType4     // Catch: java.lang.Exception -> L91 java.lang.Throwable -> L9e
            java.lang.Integer r3 = r3.value()     // Catch: java.lang.Exception -> L91 java.lang.Throwable -> L9e
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> L91 java.lang.Throwable -> L9e
            java.lang.String r3 = r2.getString(r3)     // Catch: java.lang.Exception -> L91 java.lang.Throwable -> L9e
            r5.setServerUpdatedStatus(r3)     // Catch: java.lang.Exception -> L91 java.lang.Throwable -> L9e
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r3 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType5     // Catch: java.lang.Exception -> L91 java.lang.Throwable -> L9e
            java.lang.Integer r3 = r3.value()     // Catch: java.lang.Exception -> L91 java.lang.Throwable -> L9e
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> L91 java.lang.Throwable -> L9e
            int r3 = r2.getInt(r3)     // Catch: java.lang.Exception -> L91 java.lang.Throwable -> L9e
            r5.setRecordFlag(r3)     // Catch: java.lang.Exception -> L91 java.lang.Throwable -> L9e
            r1.add(r5)     // Catch: java.lang.Exception -> L91 java.lang.Throwable -> L9e
            goto L95
        L91:
            r5 = move-exception
            com.conceptglobal.pmc.utils.PLog.e(r0, r5)     // Catch: java.lang.Throwable -> L9e java.lang.Exception -> La0
        L95:
            boolean r5 = r2.moveToNext()     // Catch: java.lang.Throwable -> L9e java.lang.Exception -> La0
            if (r5 != 0) goto L22
        L9b:
            if (r2 == 0) goto La9
            goto La6
        L9e:
            r5 = move-exception
            goto Laf
        La0:
            r5 = move-exception
            com.conceptglobal.pmc.utils.PLog.e(r0, r5)     // Catch: java.lang.Throwable -> L9e
            if (r2 == 0) goto La9
        La6:
            r2.close()
        La9:
            com.conceptglobal.pmc.database.DataBaseHandler r5 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r5.closeDatabase()
            return r1
        Laf:
            if (r2 == 0) goto Lb4
            r2.close()
        Lb4:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getsuperwiserFarmereDetails(java.lang.String):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x00ac, code lost:
    
        if (r2 != null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x00ba, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x00bf, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00b7, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00b5, code lost:
    
        if (r2 == null) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.conceptglobal.pmc.model.SuperwiserFarmerList> getsuperwiserApproveFarmerDetails(java.lang.String r5) {
        /*
            r4 = this;
            java.lang.String r0 = "Getting Faremer details :: "
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            r2 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r3 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> Laf java.lang.Exception -> Lb1
            android.database.sqlite.SQLiteDatabase r3 = r3.openDatabase()     // Catch: java.lang.Throwable -> Laf java.lang.Exception -> Lb1
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r3     // Catch: java.lang.Throwable -> Laf java.lang.Exception -> Lb1
            android.database.Cursor r2 = r3.rawQuery(r5, r2)     // Catch: java.lang.Throwable -> Laf java.lang.Exception -> Lb1
            if (r2 == 0) goto Lac
            int r5 = r2.getCount()     // Catch: java.lang.Throwable -> Laf java.lang.Exception -> Lb1
            if (r5 <= 0) goto Lac
            boolean r5 = r2.moveToFirst()     // Catch: java.lang.Throwable -> Laf java.lang.Exception -> Lb1
            if (r5 == 0) goto Lac
        L22:
            com.conceptglobal.pmc.model.SuperwiserFarmerList r5 = new com.conceptglobal.pmc.model.SuperwiserFarmerList     // Catch: java.lang.Exception -> La2 java.lang.Throwable -> Laf
            r5.<init>()     // Catch: java.lang.Exception -> La2 java.lang.Throwable -> Laf
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r3 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType0     // Catch: java.lang.Exception -> La2 java.lang.Throwable -> Laf
            java.lang.Integer r3 = r3.value()     // Catch: java.lang.Exception -> La2 java.lang.Throwable -> Laf
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> La2 java.lang.Throwable -> Laf
            int r3 = r2.getInt(r3)     // Catch: java.lang.Exception -> La2 java.lang.Throwable -> Laf
            r5.setFarmerId(r3)     // Catch: java.lang.Exception -> La2 java.lang.Throwable -> Laf
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r3 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType1     // Catch: java.lang.Exception -> La2 java.lang.Throwable -> Laf
            java.lang.Integer r3 = r3.value()     // Catch: java.lang.Exception -> La2 java.lang.Throwable -> Laf
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> La2 java.lang.Throwable -> Laf
            java.lang.String r3 = r2.getString(r3)     // Catch: java.lang.Exception -> La2 java.lang.Throwable -> Laf
            r5.setFarmerName(r3)     // Catch: java.lang.Exception -> La2 java.lang.Throwable -> Laf
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r3 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType2     // Catch: java.lang.Exception -> La2 java.lang.Throwable -> Laf
            java.lang.Integer r3 = r3.value()     // Catch: java.lang.Exception -> La2 java.lang.Throwable -> Laf
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> La2 java.lang.Throwable -> Laf
            java.lang.String r3 = r2.getString(r3)     // Catch: java.lang.Exception -> La2 java.lang.Throwable -> Laf
            r5.setMobile(r3)     // Catch: java.lang.Exception -> La2 java.lang.Throwable -> Laf
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r3 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType3     // Catch: java.lang.Exception -> La2 java.lang.Throwable -> Laf
            java.lang.Integer r3 = r3.value()     // Catch: java.lang.Exception -> La2 java.lang.Throwable -> Laf
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> La2 java.lang.Throwable -> Laf
            java.lang.String r3 = r2.getString(r3)     // Catch: java.lang.Exception -> La2 java.lang.Throwable -> Laf
            r5.setActivityName(r3)     // Catch: java.lang.Exception -> La2 java.lang.Throwable -> Laf
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r3 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType4     // Catch: java.lang.Exception -> La2 java.lang.Throwable -> Laf
            java.lang.Integer r3 = r3.value()     // Catch: java.lang.Exception -> La2 java.lang.Throwable -> Laf
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> La2 java.lang.Throwable -> Laf
            java.lang.String r3 = r2.getString(r3)     // Catch: java.lang.Exception -> La2 java.lang.Throwable -> Laf
            r5.setServerUpdatedStatus(r3)     // Catch: java.lang.Exception -> La2 java.lang.Throwable -> Laf
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r3 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType5     // Catch: java.lang.Exception -> La2 java.lang.Throwable -> Laf
            java.lang.Integer r3 = r3.value()     // Catch: java.lang.Exception -> La2 java.lang.Throwable -> Laf
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> La2 java.lang.Throwable -> Laf
            int r3 = r2.getInt(r3)     // Catch: java.lang.Exception -> La2 java.lang.Throwable -> Laf
            r5.setChangedFlag(r3)     // Catch: java.lang.Exception -> La2 java.lang.Throwable -> Laf
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r3 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType6     // Catch: java.lang.Exception -> La2 java.lang.Throwable -> Laf
            java.lang.Integer r3 = r3.value()     // Catch: java.lang.Exception -> La2 java.lang.Throwable -> Laf
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> La2 java.lang.Throwable -> Laf
            int r3 = r2.getInt(r3)     // Catch: java.lang.Exception -> La2 java.lang.Throwable -> Laf
            r5.setRecordFlag(r3)     // Catch: java.lang.Exception -> La2 java.lang.Throwable -> Laf
            r1.add(r5)     // Catch: java.lang.Exception -> La2 java.lang.Throwable -> Laf
            goto La6
        La2:
            r5 = move-exception
            com.conceptglobal.pmc.utils.PLog.e(r0, r5)     // Catch: java.lang.Throwable -> Laf java.lang.Exception -> Lb1
        La6:
            boolean r5 = r2.moveToNext()     // Catch: java.lang.Throwable -> Laf java.lang.Exception -> Lb1
            if (r5 != 0) goto L22
        Lac:
            if (r2 == 0) goto Lba
            goto Lb7
        Laf:
            r5 = move-exception
            goto Lc0
        Lb1:
            r5 = move-exception
            com.conceptglobal.pmc.utils.PLog.e(r0, r5)     // Catch: java.lang.Throwable -> Laf
            if (r2 == 0) goto Lba
        Lb7:
            r2.close()
        Lba:
            com.conceptglobal.pmc.database.DataBaseHandler r5 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r5.closeDatabase()
            return r1
        Lc0:
            if (r2 == 0) goto Lc5
            r2.close()
        Lc5:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getsuperwiserApproveFarmerDetails(java.lang.String):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x00cf, code lost:
    
        if (r3 != null) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x00df, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00dc, code lost:
    
        r3.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00da, code lost:
    
        if (r3 == null) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x005c, code lost:
    
        if (r3 != null) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x006a, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0067, code lost:
    
        r3.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0065, code lost:
    
        if (r3 == null) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.conceptglobal.pmc.model.FarmerCropAcerages> getCropAceragesBasedonFarmerId(java.lang.String r5, int r6) {
        /*
            r4 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r1 = 1
            java.lang.String r2 = "Getting Faremer Crop details :: "
            r3 = 0
            if (r6 != r1) goto L7c
            com.conceptglobal.pmc.database.DataBaseHandler r6 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L5f java.lang.Exception -> L61
            android.database.sqlite.SQLiteDatabase r6 = r6.openDatabase()     // Catch: java.lang.Throwable -> L5f java.lang.Exception -> L61
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r6     // Catch: java.lang.Throwable -> L5f java.lang.Exception -> L61
            android.database.Cursor r3 = r6.rawQuery(r5, r3)     // Catch: java.lang.Throwable -> L5f java.lang.Exception -> L61
            if (r3 == 0) goto L5c
            int r5 = r3.getCount()     // Catch: java.lang.Throwable -> L5f java.lang.Exception -> L61
            if (r5 <= 0) goto L5c
            boolean r5 = r3.moveToFirst()     // Catch: java.lang.Throwable -> L5f java.lang.Exception -> L61
            if (r5 == 0) goto L5c
        L25:
            com.conceptglobal.pmc.model.FarmerCropAcerages r5 = new com.conceptglobal.pmc.model.FarmerCropAcerages     // Catch: java.lang.Exception -> L50 java.lang.Throwable -> L5f
            r5.<init>()     // Catch: java.lang.Exception -> L50 java.lang.Throwable -> L5f
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r6 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType0     // Catch: java.lang.Exception -> L50 java.lang.Throwable -> L5f
            java.lang.Integer r6 = r6.value()     // Catch: java.lang.Exception -> L50 java.lang.Throwable -> L5f
            int r6 = r6.intValue()     // Catch: java.lang.Exception -> L50 java.lang.Throwable -> L5f
            java.lang.String r6 = r3.getString(r6)     // Catch: java.lang.Exception -> L50 java.lang.Throwable -> L5f
            r5.setCropName(r6)     // Catch: java.lang.Exception -> L50 java.lang.Throwable -> L5f
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r6 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType1     // Catch: java.lang.Exception -> L50 java.lang.Throwable -> L5f
            java.lang.Integer r6 = r6.value()     // Catch: java.lang.Exception -> L50 java.lang.Throwable -> L5f
            int r6 = r6.intValue()     // Catch: java.lang.Exception -> L50 java.lang.Throwable -> L5f
            java.lang.String r6 = r3.getString(r6)     // Catch: java.lang.Exception -> L50 java.lang.Throwable -> L5f
            r5.setAceragesOld(r6)     // Catch: java.lang.Exception -> L50 java.lang.Throwable -> L5f
            r0.add(r5)     // Catch: java.lang.Exception -> L50 java.lang.Throwable -> L5f
            goto L56
        L50:
            r5 = move-exception
            java.lang.String r6 = "GetDataFromDB"
            com.conceptglobal.pmc.utils.PLog.e(r6, r5)     // Catch: java.lang.Throwable -> L5f java.lang.Exception -> L61
        L56:
            boolean r5 = r3.moveToNext()     // Catch: java.lang.Throwable -> L5f java.lang.Exception -> L61
            if (r5 != 0) goto L25
        L5c:
            if (r3 == 0) goto L6a
            goto L67
        L5f:
            r5 = move-exception
            goto L71
        L61:
            r5 = move-exception
            com.conceptglobal.pmc.utils.PLog.e(r2, r5)     // Catch: java.lang.Throwable -> L5f
            if (r3 == 0) goto L6a
        L67:
            r3.close()
        L6a:
            com.conceptglobal.pmc.database.DataBaseHandler r5 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r5.closeDatabase()
            goto Le4
        L71:
            if (r3 == 0) goto L76
            r3.close()
        L76:
            com.conceptglobal.pmc.database.DataBaseHandler r6 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r6.closeDatabase()
            throw r5
        L7c:
            com.conceptglobal.pmc.database.DataBaseHandler r6 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> Ld2 java.lang.Exception -> Ld4
            android.database.sqlite.SQLiteDatabase r6 = r6.openDatabase()     // Catch: java.lang.Throwable -> Ld2 java.lang.Exception -> Ld4
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r6     // Catch: java.lang.Throwable -> Ld2 java.lang.Exception -> Ld4
            android.database.Cursor r3 = r6.rawQuery(r5, r3)     // Catch: java.lang.Throwable -> Ld2 java.lang.Exception -> Ld4
            if (r3 == 0) goto Lcf
            int r5 = r3.getCount()     // Catch: java.lang.Throwable -> Ld2 java.lang.Exception -> Ld4
            if (r5 <= 0) goto Lcf
            boolean r5 = r3.moveToFirst()     // Catch: java.lang.Throwable -> Ld2 java.lang.Exception -> Ld4
            if (r5 == 0) goto Lcf
        L96:
            com.conceptglobal.pmc.model.FarmerCropAcerages r5 = new com.conceptglobal.pmc.model.FarmerCropAcerages     // Catch: java.lang.Exception -> Lc5 java.lang.Throwable -> Ld2
            r5.<init>()     // Catch: java.lang.Exception -> Lc5 java.lang.Throwable -> Ld2
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r6 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType2     // Catch: java.lang.Exception -> Lc5 java.lang.Throwable -> Ld2
            java.lang.Integer r6 = r6.value()     // Catch: java.lang.Exception -> Lc5 java.lang.Throwable -> Ld2
            int r6 = r6.intValue()     // Catch: java.lang.Exception -> Lc5 java.lang.Throwable -> Ld2
            java.lang.String r6 = r3.getString(r6)     // Catch: java.lang.Exception -> Lc5 java.lang.Throwable -> Ld2
            int r6 = java.lang.Integer.parseInt(r6)     // Catch: java.lang.Exception -> Lc5 java.lang.Throwable -> Ld2
            r5.setCropId(r6)     // Catch: java.lang.Exception -> Lc5 java.lang.Throwable -> Ld2
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r6 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType1     // Catch: java.lang.Exception -> Lc5 java.lang.Throwable -> Ld2
            java.lang.Integer r6 = r6.value()     // Catch: java.lang.Exception -> Lc5 java.lang.Throwable -> Ld2
            int r6 = r6.intValue()     // Catch: java.lang.Exception -> Lc5 java.lang.Throwable -> Ld2
            java.lang.String r6 = r3.getString(r6)     // Catch: java.lang.Exception -> Lc5 java.lang.Throwable -> Ld2
            r5.setAceragesNew(r6)     // Catch: java.lang.Exception -> Lc5 java.lang.Throwable -> Ld2
            r0.add(r5)     // Catch: java.lang.Exception -> Lc5 java.lang.Throwable -> Ld2
            goto Lc9
        Lc5:
            r5 = move-exception
            com.conceptglobal.pmc.utils.PLog.e(r2, r5)     // Catch: java.lang.Throwable -> Ld2 java.lang.Exception -> Ld4
        Lc9:
            boolean r5 = r3.moveToNext()     // Catch: java.lang.Throwable -> Ld2 java.lang.Exception -> Ld4
            if (r5 != 0) goto L96
        Lcf:
            if (r3 == 0) goto Ldf
            goto Ldc
        Ld2:
            r5 = move-exception
            goto Le5
        Ld4:
            r5 = move-exception
            java.lang.String r6 = "Getting Farmer Crop details :: "
            com.conceptglobal.pmc.utils.PLog.e(r6, r5)     // Catch: java.lang.Throwable -> Ld2
            if (r3 == 0) goto Ldf
        Ldc:
            r3.close()
        Ldf:
            com.conceptglobal.pmc.database.DataBaseHandler r5 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r5.closeDatabase()
        Le4:
            return r0
        Le5:
            if (r3 == 0) goto Lea
            r3.close()
        Lea:
            com.conceptglobal.pmc.database.DataBaseHandler r6 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r6.closeDatabase()
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getCropAceragesBasedonFarmerId(java.lang.String, int):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x00c5, code lost:
    
        if (r2 != null) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00d3, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00d8, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00d0, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00ce, code lost:
    
        if (r2 == null) goto L32;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.conceptglobal.pmc.model.FarmerCropAcerages> getCropAceragesBasedonFarmerId2(java.lang.String r6) {
        /*
            r5 = this;
            java.lang.String r0 = "Getting Farmer Cr details :: "
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            r2 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r3 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> Lc8 java.lang.Exception -> Lca
            android.database.sqlite.SQLiteDatabase r3 = r3.openDatabase()     // Catch: java.lang.Throwable -> Lc8 java.lang.Exception -> Lca
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r3     // Catch: java.lang.Throwable -> Lc8 java.lang.Exception -> Lca
            android.database.Cursor r2 = r3.rawQuery(r6, r2)     // Catch: java.lang.Throwable -> Lc8 java.lang.Exception -> Lca
            if (r2 == 0) goto Lc5
            int r6 = r2.getCount()     // Catch: java.lang.Throwable -> Lc8 java.lang.Exception -> Lca
            if (r6 <= 0) goto Lc5
            boolean r6 = r2.moveToFirst()     // Catch: java.lang.Throwable -> Lc8 java.lang.Exception -> Lca
            if (r6 == 0) goto Lc5
        L22:
            com.conceptglobal.pmc.model.FarmerCropAcerages r6 = new com.conceptglobal.pmc.model.FarmerCropAcerages     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc8
            r6.<init>()     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc8
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r3 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType0     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc8
            java.lang.Integer r3 = r3.value()     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc8
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc8
            java.lang.String r3 = r2.getString(r3)     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc8
            r6.setCropName(r3)     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc8
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r3 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType1     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc8
            java.lang.Integer r3 = r3.value()     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc8
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc8
            java.lang.String r3 = r2.getString(r3)     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc8
            java.lang.String r4 = ""
            if (r3 == 0) goto L5c
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r3 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType1     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc8
            java.lang.Integer r3 = r3.value()     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc8
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc8
            java.lang.String r3 = r2.getString(r3)     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc8
            r6.setAceragesOld(r3)     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc8
            goto L5f
        L5c:
            r6.setAceragesOld(r4)     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc8
        L5f:
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r3 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType2     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc8
            java.lang.Integer r3 = r3.value()     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc8
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc8
            java.lang.String r3 = r2.getString(r3)     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc8
            r6.setAceragesNew(r3)     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc8
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r3 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType3     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc8
            java.lang.Integer r3 = r3.value()     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc8
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc8
            int r3 = r2.getInt(r3)     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc8
            r6.setCropId(r3)     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc8
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r3 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType4     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc8
            java.lang.Integer r3 = r3.value()     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc8
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc8
            java.lang.String r3 = r2.getString(r3)     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc8
            if (r3 == 0) goto La3
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r3 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType4     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc8
            java.lang.Integer r3 = r3.value()     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc8
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc8
            java.lang.String r3 = r2.getString(r3)     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc8
            r6.setOldRecordFlag(r3)     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc8
            goto La6
        La3:
            r6.setOldRecordFlag(r4)     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc8
        La6:
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r3 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType5     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc8
            java.lang.Integer r3 = r3.value()     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc8
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc8
            java.lang.String r3 = r2.getString(r3)     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc8
            r6.setNewRecordFlag(r3)     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc8
            r1.add(r6)     // Catch: java.lang.Exception -> Lbb java.lang.Throwable -> Lc8
            goto Lbf
        Lbb:
            r6 = move-exception
            com.conceptglobal.pmc.utils.PLog.e(r0, r6)     // Catch: java.lang.Throwable -> Lc8 java.lang.Exception -> Lca
        Lbf:
            boolean r6 = r2.moveToNext()     // Catch: java.lang.Throwable -> Lc8 java.lang.Exception -> Lca
            if (r6 != 0) goto L22
        Lc5:
            if (r2 == 0) goto Ld3
            goto Ld0
        Lc8:
            r6 = move-exception
            goto Ld9
        Lca:
            r6 = move-exception
            com.conceptglobal.pmc.utils.PLog.e(r0, r6)     // Catch: java.lang.Throwable -> Lc8
            if (r2 == 0) goto Ld3
        Ld0:
            r2.close()
        Ld3:
            com.conceptglobal.pmc.database.DataBaseHandler r6 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r6.closeDatabase()
            return r1
        Ld9:
            if (r2 == 0) goto Lde
            r2.close()
        Lde:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getCropAceragesBasedonFarmerId2(java.lang.String):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x005e, code lost:
    
        if (r3 == null) goto L8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0034, code lost:
    
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean existsColumnInTable(java.lang.String r7, java.lang.String r8) {
        /*
            r6 = this;
            java.lang.String r0 = "SELECT * FROM "
            java.lang.String r1 = "checking whether a column exists in the table "
            r2 = 0
            r3 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r4 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L43
            android.database.sqlite.SQLiteDatabase r4 = r4.openDatabase()     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L43
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r4     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L43
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L43
            r5.<init>(r0)     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L43
            r5.append(r7)     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L43
            java.lang.String r7 = " LIMIT 0"
            r5.append(r7)     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L43
            java.lang.String r7 = r5.toString()     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L43
            android.database.Cursor r3 = r4.rawQuery(r7, r3)     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L43
            int r7 = r3.getColumnIndex(r8)     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L43
            r8 = -1
            if (r7 == r8) goto L35
            if (r3 == 0) goto L2f
        L2c:
            r3.close()
        L2f:
            com.conceptglobal.pmc.database.DataBaseHandler r7 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r7.closeDatabase()
            return r2
        L35:
            if (r3 == 0) goto L3a
            r3.close()
        L3a:
            com.conceptglobal.pmc.database.DataBaseHandler r7 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r7.closeDatabase()
            r7 = 1
            return r7
        L41:
            r7 = move-exception
            goto L61
        L43:
            r7 = move-exception
            java.lang.String r8 = "existsColumnInTable"
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L41
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L41
            java.lang.String r1 = r7.getMessage()     // Catch: java.lang.Throwable -> L41
            r0.append(r1)     // Catch: java.lang.Throwable -> L41
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> L41
            android.util.Log.d(r8, r0)     // Catch: java.lang.Throwable -> L41
            java.lang.String r8 = "GetDataFromDB"
            com.conceptglobal.pmc.utils.PLog.e(r8, r7)     // Catch: java.lang.Throwable -> L41
            if (r3 == 0) goto L2f
            goto L2c
        L61:
            if (r3 == 0) goto L66
            r3.close()
        L66:
            com.conceptglobal.pmc.database.DataBaseHandler r8 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r8.closeDatabase()
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.existsColumnInTable(java.lang.String, java.lang.String):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0044, code lost:
    
        if (r3 != null) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0052, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0057, code lost:
    
        return r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x004f, code lost:
    
        r3.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x004d, code lost:
    
        if (r3 == null) goto L26;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean isMobileNumExists(java.lang.String r6, java.lang.String r7) {
        /*
            r5 = this;
            java.lang.String r0 = "GetDataFromDB"
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            r2 = 0
            r3 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r4 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L47 java.lang.Exception -> L49
            android.database.sqlite.SQLiteDatabase r4 = r4.openDatabase()     // Catch: java.lang.Throwable -> L47 java.lang.Exception -> L49
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r4     // Catch: java.lang.Throwable -> L47 java.lang.Exception -> L49
            android.database.Cursor r3 = r4.rawQuery(r6, r3)     // Catch: java.lang.Throwable -> L47 java.lang.Exception -> L49
            if (r3 == 0) goto L37
            boolean r6 = r3.moveToFirst()     // Catch: java.lang.Throwable -> L47 java.lang.Exception -> L49
            if (r6 == 0) goto L37
        L1d:
            java.lang.String r6 = r3.getString(r2)     // Catch: java.lang.Exception -> L2d java.lang.Throwable -> L47
            java.lang.String r6 = com.conceptglobal.pmc.utils.Encryption.decrypt(r6)     // Catch: java.lang.Exception -> L2d java.lang.Throwable -> L47
            java.lang.String r6 = r6.trim()     // Catch: java.lang.Exception -> L2d java.lang.Throwable -> L47
            r1.add(r6)     // Catch: java.lang.Exception -> L2d java.lang.Throwable -> L47
            goto L31
        L2d:
            r6 = move-exception
            com.conceptglobal.pmc.utils.PLog.e(r0, r6)     // Catch: java.lang.Throwable -> L47 java.lang.Exception -> L49
        L31:
            boolean r6 = r3.moveToNext()     // Catch: java.lang.Throwable -> L47 java.lang.Exception -> L49
            if (r6 != 0) goto L1d
        L37:
            int r6 = r1.size()     // Catch: java.lang.Throwable -> L47 java.lang.Exception -> L49
            if (r6 <= 0) goto L44
            boolean r6 = r1.contains(r7)     // Catch: java.lang.Throwable -> L47 java.lang.Exception -> L49
            if (r6 == 0) goto L44
            r2 = 1
        L44:
            if (r3 == 0) goto L52
            goto L4f
        L47:
            r6 = move-exception
            goto L58
        L49:
            r6 = move-exception
            com.conceptglobal.pmc.utils.PLog.e(r0, r6)     // Catch: java.lang.Throwable -> L47
            if (r3 == 0) goto L52
        L4f:
            r3.close()
        L52:
            com.conceptglobal.pmc.database.DataBaseHandler r6 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r6.closeDatabase()
            return r2
        L58:
            if (r3 == 0) goto L5d
            r3.close()
        L5d:
            com.conceptglobal.pmc.database.DataBaseHandler r7 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r7.closeDatabase()
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.isMobileNumExists(java.lang.String, java.lang.String):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0061, code lost:
    
        if (r4 != null) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x006f, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0074, code lost:
    
        return r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x006c, code lost:
    
        r4.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x006a, code lost:
    
        if (r4 == null) goto L30;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean isMobileNumPANExists(java.lang.String r7, java.lang.String r8, java.lang.String r9) {
        /*
            r6 = this;
            java.lang.String r0 = "GetDataFromDB"
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            r3 = 0
            r4 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r5 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L64 java.lang.Exception -> L66
            android.database.sqlite.SQLiteDatabase r5 = r5.openDatabase()     // Catch: java.lang.Throwable -> L64 java.lang.Exception -> L66
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r5     // Catch: java.lang.Throwable -> L64 java.lang.Exception -> L66
            android.database.Cursor r4 = r5.rawQuery(r7, r4)     // Catch: java.lang.Throwable -> L64 java.lang.Exception -> L66
            r7 = 1
            if (r4 == 0) goto L48
            boolean r5 = r4.moveToFirst()     // Catch: java.lang.Throwable -> L64 java.lang.Exception -> L66
            if (r5 == 0) goto L48
        L23:
            java.lang.String r5 = r4.getString(r3)     // Catch: java.lang.Exception -> L3e java.lang.Throwable -> L64
            java.lang.String r5 = com.conceptglobal.pmc.utils.Encryption.decrypt(r5)     // Catch: java.lang.Exception -> L3e java.lang.Throwable -> L64
            java.lang.String r5 = r5.trim()     // Catch: java.lang.Exception -> L3e java.lang.Throwable -> L64
            r1.add(r5)     // Catch: java.lang.Exception -> L3e java.lang.Throwable -> L64
            java.lang.String r5 = r4.getString(r7)     // Catch: java.lang.Exception -> L3e java.lang.Throwable -> L64
            java.lang.String r5 = r5.trim()     // Catch: java.lang.Exception -> L3e java.lang.Throwable -> L64
            r2.add(r5)     // Catch: java.lang.Exception -> L3e java.lang.Throwable -> L64
            goto L42
        L3e:
            r5 = move-exception
            com.conceptglobal.pmc.utils.PLog.e(r0, r5)     // Catch: java.lang.Throwable -> L64 java.lang.Exception -> L66
        L42:
            boolean r5 = r4.moveToNext()     // Catch: java.lang.Throwable -> L64 java.lang.Exception -> L66
            if (r5 != 0) goto L23
        L48:
            int r5 = r1.size()     // Catch: java.lang.Throwable -> L64 java.lang.Exception -> L66
            if (r5 <= 0) goto L61
            boolean r8 = r1.contains(r8)     // Catch: java.lang.Throwable -> L64 java.lang.Exception -> L66
            if (r8 == 0) goto L61
            int r8 = r2.size()     // Catch: java.lang.Throwable -> L64 java.lang.Exception -> L66
            if (r8 <= 0) goto L61
            boolean r8 = r2.contains(r9)     // Catch: java.lang.Throwable -> L64 java.lang.Exception -> L66
            if (r8 == 0) goto L61
            r3 = 1
        L61:
            if (r4 == 0) goto L6f
            goto L6c
        L64:
            r7 = move-exception
            goto L75
        L66:
            r7 = move-exception
            com.conceptglobal.pmc.utils.PLog.e(r0, r7)     // Catch: java.lang.Throwable -> L64
            if (r4 == 0) goto L6f
        L6c:
            r4.close()
        L6f:
            com.conceptglobal.pmc.database.DataBaseHandler r7 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r7.closeDatabase()
            return r3
        L75:
            if (r4 == 0) goto L7a
            r4.close()
        L7a:
            com.conceptglobal.pmc.database.DataBaseHandler r8 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r8.closeDatabase()
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.isMobileNumPANExists(java.lang.String, java.lang.String, java.lang.String):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0040, code lost:
    
        if (r3 != null) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x004e, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0053, code lost:
    
        return r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x004b, code lost:
    
        r3.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0049, code lost:
    
        if (r3 == null) goto L26;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean isGSTNumExists(java.lang.String r6, java.lang.String r7) {
        /*
            r5 = this;
            java.lang.String r0 = "GetDataFromDB"
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            r2 = 0
            r3 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r4 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L43 java.lang.Exception -> L45
            android.database.sqlite.SQLiteDatabase r4 = r4.openDatabase()     // Catch: java.lang.Throwable -> L43 java.lang.Exception -> L45
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r4     // Catch: java.lang.Throwable -> L43 java.lang.Exception -> L45
            android.database.Cursor r3 = r4.rawQuery(r6, r3)     // Catch: java.lang.Throwable -> L43 java.lang.Exception -> L45
            if (r3 == 0) goto L33
            boolean r6 = r3.moveToFirst()     // Catch: java.lang.Throwable -> L43 java.lang.Exception -> L45
            if (r6 == 0) goto L33
        L1d:
            java.lang.String r6 = r3.getString(r2)     // Catch: java.lang.Exception -> L29 java.lang.Throwable -> L43
            java.lang.String r6 = r6.trim()     // Catch: java.lang.Exception -> L29 java.lang.Throwable -> L43
            r1.add(r6)     // Catch: java.lang.Exception -> L29 java.lang.Throwable -> L43
            goto L2d
        L29:
            r6 = move-exception
            com.conceptglobal.pmc.utils.PLog.e(r0, r6)     // Catch: java.lang.Throwable -> L43 java.lang.Exception -> L45
        L2d:
            boolean r6 = r3.moveToNext()     // Catch: java.lang.Throwable -> L43 java.lang.Exception -> L45
            if (r6 != 0) goto L1d
        L33:
            int r6 = r1.size()     // Catch: java.lang.Throwable -> L43 java.lang.Exception -> L45
            if (r6 <= 0) goto L40
            boolean r6 = r1.contains(r7)     // Catch: java.lang.Throwable -> L43 java.lang.Exception -> L45
            if (r6 == 0) goto L40
            r2 = 1
        L40:
            if (r3 == 0) goto L4e
            goto L4b
        L43:
            r6 = move-exception
            goto L54
        L45:
            r6 = move-exception
            com.conceptglobal.pmc.utils.PLog.e(r0, r6)     // Catch: java.lang.Throwable -> L43
            if (r3 == 0) goto L4e
        L4b:
            r3.close()
        L4e:
            com.conceptglobal.pmc.database.DataBaseHandler r6 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r6.closeDatabase()
            return r2
        L54:
            if (r3 == 0) goto L59
            r3.close()
        L59:
            com.conceptglobal.pmc.database.DataBaseHandler r7 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r7.closeDatabase()
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.isGSTNumExists(java.lang.String, java.lang.String):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x002c, code lost:
    
        if (r0 != null) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x003c, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0042, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0039, code lost:
    
        r0.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0037, code lost:
    
        if (r0 == null) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean isMobileNumExists(java.lang.String r3) {
        /*
            r2 = this;
            java.lang.String r0 = "query"
            android.util.Log.d(r0, r3)
            r0 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r1 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L2f java.lang.Exception -> L31
            android.database.sqlite.SQLiteDatabase r1 = r1.openDatabase()     // Catch: java.lang.Throwable -> L2f java.lang.Exception -> L31
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r1     // Catch: java.lang.Throwable -> L2f java.lang.Exception -> L31
            android.database.Cursor r0 = r1.rawQuery(r3, r0)     // Catch: java.lang.Throwable -> L2f java.lang.Exception -> L31
            if (r0 == 0) goto L2c
            boolean r3 = r0.moveToFirst()     // Catch: java.lang.Throwable -> L2f java.lang.Exception -> L31
            if (r3 == 0) goto L2c
            int r3 = r0.getCount()     // Catch: java.lang.Throwable -> L2f java.lang.Exception -> L31
            if (r3 <= 0) goto L2c
            if (r0 == 0) goto L25
            r0.close()
        L25:
            com.conceptglobal.pmc.database.DataBaseHandler r3 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r3.closeDatabase()
            r3 = 1
            return r3
        L2c:
            if (r0 == 0) goto L3c
            goto L39
        L2f:
            r3 = move-exception
            goto L43
        L31:
            r3 = move-exception
            java.lang.String r1 = "GetDataFromDB"
            com.conceptglobal.pmc.utils.PLog.e(r1, r3)     // Catch: java.lang.Throwable -> L2f
            if (r0 == 0) goto L3c
        L39:
            r0.close()
        L3c:
            com.conceptglobal.pmc.database.DataBaseHandler r3 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r3.closeDatabase()
            r3 = 0
            return r3
        L43:
            if (r0 == 0) goto L48
            r0.close()
        L48:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.isMobileNumExists(java.lang.String):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0075, code lost:
    
        if (r2 != null) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0083, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0088, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0080, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x007e, code lost:
    
        if (r2 == null) goto L28;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.ArrayList<com.conceptglobal.pmc.model.AttributeComponet> getPageComponents(java.lang.String r6) {
        /*
            r5 = this;
            java.lang.String r0 = "getPageComponents"
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "SELECT * FROM AttributeMasterData WHERE whichPage = '"
            r1.<init>(r2)
            r1.append(r6)
            java.lang.String r6 = "'"
            r1.append(r6)
            java.lang.String r6 = r1.toString()
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            r2 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r3 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L78 java.lang.Exception -> L7a
            android.database.sqlite.SQLiteDatabase r3 = r3.openDatabase()     // Catch: java.lang.Throwable -> L78 java.lang.Exception -> L7a
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r3     // Catch: java.lang.Throwable -> L78 java.lang.Exception -> L7a
            android.database.Cursor r2 = r3.rawQuery(r6, r2)     // Catch: java.lang.Throwable -> L78 java.lang.Exception -> L7a
            if (r2 == 0) goto L75
            int r6 = r2.getCount()     // Catch: java.lang.Throwable -> L78 java.lang.Exception -> L7a
            if (r6 <= 0) goto L75
            boolean r6 = r2.moveToFirst()     // Catch: java.lang.Throwable -> L78 java.lang.Exception -> L7a
            if (r6 == 0) goto L75
        L35:
            r6 = 0
            com.conceptglobal.pmc.model.AttributeComponet r3 = new com.conceptglobal.pmc.model.AttributeComponet     // Catch: java.lang.Exception -> L6b java.lang.Throwable -> L78
            r3.<init>()     // Catch: java.lang.Exception -> L6b java.lang.Throwable -> L78
            java.lang.String r4 = "isActive"
            int r4 = r2.getColumnIndex(r4)     // Catch: java.lang.Exception -> L6b java.lang.Throwable -> L78
            int r4 = r2.getInt(r4)     // Catch: java.lang.Exception -> L6b java.lang.Throwable -> L78
            if (r4 <= 0) goto L49
            r4 = 1
            goto L4a
        L49:
            r4 = 0
        L4a:
            r3.setActive(r4)     // Catch: java.lang.Exception -> L6b java.lang.Throwable -> L78
            java.lang.String r4 = "attributeName"
            int r4 = r2.getColumnIndex(r4)     // Catch: java.lang.Exception -> L6b java.lang.Throwable -> L78
            java.lang.String r4 = r2.getString(r4)     // Catch: java.lang.Exception -> L6b java.lang.Throwable -> L78
            r3.setAttributeName(r4)     // Catch: java.lang.Exception -> L6b java.lang.Throwable -> L78
            java.lang.String r4 = "controlType"
            int r4 = r2.getColumnIndex(r4)     // Catch: java.lang.Exception -> L6b java.lang.Throwable -> L78
            java.lang.String r4 = r2.getString(r4)     // Catch: java.lang.Exception -> L6b java.lang.Throwable -> L78
            r3.setControlType(r4)     // Catch: java.lang.Exception -> L6b java.lang.Throwable -> L78
            r1.add(r3)     // Catch: java.lang.Exception -> L6b java.lang.Throwable -> L78
            goto L6f
        L6b:
            r3 = move-exception
            com.conceptglobal.pmc.utils.PLog.e(r0, r3, r6)     // Catch: java.lang.Throwable -> L78 java.lang.Exception -> L7a
        L6f:
            boolean r6 = r2.moveToNext()     // Catch: java.lang.Throwable -> L78 java.lang.Exception -> L7a
            if (r6 != 0) goto L35
        L75:
            if (r2 == 0) goto L83
            goto L80
        L78:
            r6 = move-exception
            goto L89
        L7a:
            r6 = move-exception
            com.conceptglobal.pmc.utils.PLog.e(r0, r6)     // Catch: java.lang.Throwable -> L78
            if (r2 == 0) goto L83
        L80:
            r2.close()
        L83:
            com.conceptglobal.pmc.database.DataBaseHandler r6 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r6.closeDatabase()
            return r1
        L89:
            if (r2 == 0) goto L8e
            r2.close()
        L8e:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getPageComponents(java.lang.String):java.util.ArrayList");
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0146, code lost:
    
        if (r1 != null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0156, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x015b, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0153, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0151, code lost:
    
        if (r1 == null) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.conceptglobal.pmc.model.ImageDetails> getImageDetailsList(java.lang.String r5) {
        /*
            Method dump skipped, instructions count: 359
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getImageDetailsList(java.lang.String):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0189, code lost:
    
        if (r1 != null) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0199, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x019e, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0196, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0194, code lost:
    
        if (r1 == null) goto L26;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.conceptglobal.pmc.model.ImageDetails> getImageDetailsForSync(java.lang.String r6) {
        /*
            Method dump skipped, instructions count: 426
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getImageDetailsForSync(java.lang.String):java.util.List");
    }

    private boolean checkIsPictureExists(String str) {
        return new File(str).exists();
    }

    public ImageDetails getImageDetail(String str) {
        Throwable th;
        Cursor cursor;
        Exception exc;
        ImageDetails imageDetails;
        Exception e;
        Cursor cursor2 = null;
        r0 = null;
        r0 = null;
        r0 = null;
        r0 = null;
        ImageDetails imageDetails2 = null;
        cursor2 = null;
        try {
            try {
                SQLiteDatabase openDatabase = dbInstance.openDatabase();
                sqliteDatabase = openDatabase;
                cursor = openDatabase.rawQuery(str, null);
                if (cursor != null) {
                    try {
                        try {
                            if (cursor.getCount() > 0 && cursor.moveToFirst()) {
                                do {
                                    try {
                                        imageDetails = new ImageDetails();
                                    } catch (Exception e2) {
                                        imageDetails = imageDetails2;
                                        e = e2;
                                    }
                                    try {
                                        imageDetails.setImageId(cursor.getInt(ConstantDeclarations.Enumaration.mRequestType0.value().intValue()));
                                        imageDetails.setAssignmentId(cursor.getInt(ConstantDeclarations.Enumaration.mRequestType1.value().intValue()));
                                        imageDetails.setActivityId(cursor.getInt(ConstantDeclarations.Enumaration.mRequestType2.value().intValue()));
                                        imageDetails.setAttributeId(cursor.getInt(ConstantDeclarations.Enumaration.mRequestType3.value().intValue()));
                                        imageDetails.setSubject(cursor.getString(ConstantDeclarations.Enumaration.mRequestType4.value().intValue()));
                                        imageDetails.setComments(cursor.getString(ConstantDeclarations.Enumaration.mRequestType5.value().intValue()));
                                        imageDetails.setRemarks(cursor.getString(ConstantDeclarations.Enumaration.mRequestType6.value().intValue()));
                                        imageDetails.setPicturePath(cursor.getString(ConstantDeclarations.Enumaration.mRequestType7.value().intValue()));
                                        imageDetails.setCreatedBy(cursor.getString(ConstantDeclarations.Enumaration.mRequestType8.value().intValue()));
                                        imageDetails.setCtreatedDate(cursor.getString(ConstantDeclarations.Enumaration.mRequestType9.value().intValue()));
                                        imageDetails.setUpdatedBy(cursor.getString(ConstantDeclarations.Enumaration.mRequestType10.value().intValue()));
                                        imageDetails.setUpdatedDate(cursor.getString(ConstantDeclarations.Enumaration.mRequestType11.value().intValue()));
                                        imageDetails.setPdaID(cursor.getInt(ConstantDeclarations.Enumaration.mRequestType12.value().intValue()));
                                        imageDetails.setReferenceType(cursor.getString(ConstantDeclarations.Enumaration.mRequestType13.value().intValue()));
                                        imageDetails.setReferenceId(cursor.getString(ConstantDeclarations.Enumaration.mRequestType14.value().intValue()));
                                        imageDetails.setEventTypeId(cursor.getInt(ConstantDeclarations.Enumaration.mRequestType15.value().intValue()));
                                    } catch (Exception e3) {
                                        e = e3;
                                        try {
                                            PLog.e("getAllImageDetails", e, 0);
                                            imageDetails2 = imageDetails;
                                        } catch (Exception e4) {
                                            cursor2 = cursor;
                                            exc = e4;
                                            PLog.e("list Image detials", exc);
                                            if (cursor2 != null) {
                                                cursor2.close();
                                            }
                                            dbInstance.closeDatabase();
                                            return imageDetails;
                                        }
                                    }
                                    imageDetails2 = imageDetails;
                                } while (cursor.moveToNext());
                            }
                        } catch (Exception e5) {
                            ImageDetails imageDetails3 = imageDetails2;
                            cursor2 = cursor;
                            exc = e5;
                            imageDetails = imageDetails3;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        if (cursor != null) {
                            cursor.close();
                        }
                        dbInstance.closeDatabase();
                        throw th;
                    }
                }
                if (cursor != null) {
                    cursor.close();
                }
                dbInstance.closeDatabase();
                return imageDetails2;
            } catch (Exception e6) {
                exc = e6;
                imageDetails = null;
            }
        } catch (Throwable th3) {
            Cursor cursor3 = cursor2;
            th = th3;
            cursor = cursor3;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x003f, code lost:
    
        if (r1 != null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x004f, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0054, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x004c, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x004a, code lost:
    
        if (r1 == null) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.ArrayList<java.lang.String> getImagesPathDetail(java.lang.String r5) {
        /*
            r4 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r1 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r2 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L42 java.lang.Exception -> L44
            android.database.sqlite.SQLiteDatabase r2 = r2.openDatabase()     // Catch: java.lang.Throwable -> L42 java.lang.Exception -> L44
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r2     // Catch: java.lang.Throwable -> L42 java.lang.Exception -> L44
            android.database.Cursor r1 = r2.rawQuery(r5, r1)     // Catch: java.lang.Throwable -> L42 java.lang.Exception -> L44
            if (r1 == 0) goto L3f
            int r5 = r1.getCount()     // Catch: java.lang.Throwable -> L42 java.lang.Exception -> L44
            if (r5 <= 0) goto L3f
            boolean r5 = r1.moveToFirst()     // Catch: java.lang.Throwable -> L42 java.lang.Exception -> L44
            if (r5 == 0) goto L3f
        L20:
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r5 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType0     // Catch: java.lang.Exception -> L32 java.lang.Throwable -> L42
            java.lang.Integer r5 = r5.value()     // Catch: java.lang.Exception -> L32 java.lang.Throwable -> L42
            int r5 = r5.intValue()     // Catch: java.lang.Exception -> L32 java.lang.Throwable -> L42
            java.lang.String r5 = r1.getString(r5)     // Catch: java.lang.Exception -> L32 java.lang.Throwable -> L42
            r0.add(r5)     // Catch: java.lang.Exception -> L32 java.lang.Throwable -> L42
            goto L39
        L32:
            r5 = move-exception
            java.lang.String r2 = "getAllImageDetails"
            r3 = 0
            com.conceptglobal.pmc.utils.PLog.e(r2, r5, r3)     // Catch: java.lang.Throwable -> L42 java.lang.Exception -> L44
        L39:
            boolean r5 = r1.moveToNext()     // Catch: java.lang.Throwable -> L42 java.lang.Exception -> L44
            if (r5 != 0) goto L20
        L3f:
            if (r1 == 0) goto L4f
            goto L4c
        L42:
            r5 = move-exception
            goto L55
        L44:
            r5 = move-exception
            java.lang.String r2 = "list Image detials"
            com.conceptglobal.pmc.utils.PLog.e(r2, r5)     // Catch: java.lang.Throwable -> L42
            if (r1 == 0) goto L4f
        L4c:
            r1.close()
        L4f:
            com.conceptglobal.pmc.database.DataBaseHandler r5 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r5.closeDatabase()
            return r0
        L55:
            if (r1 == 0) goto L5a
            r1.close()
        L5a:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getImagesPathDetail(java.lang.String):java.util.ArrayList");
    }

    private Bitmap loadImageFromStorage(String str) {
        try {
            return BitmapFactory.decodeStream(new FileInputStream(new File(str)));
        } catch (FileNotFoundException e) {
            PLog.e("getAllImageDetails", e, 0);
            return null;
        }
    }

    public int getTotalPendingRecordsCount() throws Exception {
        return getRecordsCountForSync(Queries.getInstance().getAssignmentActivityDetailsCountQry()) + getRecordsCountForSync(Queries.getInstance().getFarmerCropMappingCountQry()) + getRecordsCountForSync(Queries.getInstance().getFarmerLandDetailsCountQry()) + getRecordsCountForSync(Queries.getInstance().getFarmerListDetailsCountQry()) + getRecordsCountForSync(Queries.getInstance().getAssignmentVisitDetailsCountQry()) + getRecordsCountForSync(Queries.getInstance().getFarmerMasterDetailsCountQry()) + getRecordsCountForSync(Queries.getInstance().getDealerMasterDetailsCountQry()) + getRecordsCountForSync(Queries.getInstance().getDealerCropCountQry()) + getRecordsCountForSync(Queries.getInstance().getDealerCompanyCountQry()) + getRecordsCountForSync(Queries.getInstance().getAttendanceCountQry()) + getRecordsCountForSync(Queries.getInstance().getFarmerAttributes) + getRecordsCountForSync(Queries.getInstance().getDealerAttributes) + getRecordsCountForSync(Queries.getInstance().getPMCTSTAssingmentActivityDetailsCountQry()) + getRecordsCountForSync(Queries.getInstance().getPMCFBFAssingmentActivityDetailsCountQry()) + getRecordsCountForSync(Queries.getInstance().getPMCSurveyAssingmentActivityDetailsCountQry()) + getRecordsCountForSync(Queries.getInstance().getPMCFBFResolveActivityDetailsCountQry()) + getRecordsCountForSync(Queries.getInstance().getApplyOnLeave()) + getRecordsCountForSync(Queries.getInstance().getResignationDetailsCount) + getRecordsCountForSync(Queries.getInstance().getExpensesCount);
    }

    public int getRecordsCountForSync(String str) throws Exception {
        Cursor cursor = null;
        try {
            try {
                SQLiteDatabase openDatabase = dbInstance.openDatabase();
                sqliteDatabase = openDatabase;
                cursor = openDatabase.rawQuery(str, null);
                int i = 0;
                if (cursor != null && cursor.moveToFirst()) {
                    int i2 = 0;
                    do {
                        try {
                            i2 = cursor.getInt(0);
                        } catch (Exception e) {
                            PLog.e(TAG, e);
                        }
                    } while (cursor.moveToNext());
                    i = i2;
                }
                return i;
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

    public String[][] getLanguages(String str) {
        String[][] strArr = new String[0][];
        Cursor cursor = null;
        try {
            try {
                SQLiteDatabase openDatabase = dbInstance.openDatabase();
                sqliteDatabase = openDatabase;
                cursor = openDatabase.rawQuery(str, null);
                String[][] strArr2 = (String[][]) Array.newInstance((Class<?>) String.class, cursor.getCount(), cursor.getColumnCount() + ConstantDeclarations.Enumaration.mRequestType1.value().intValue());
                if (cursor != null) {
                    try {
                        if (cursor.getCount() > 0 && cursor.moveToFirst()) {
                            do {
                                try {
                                    for (int intValue = ConstantDeclarations.Enumaration.mRequestType0.value().intValue(); intValue <= cursor.getColumnCount(); intValue++) {
                                        if (intValue == cursor.getColumnCount()) {
                                            strArr2[cursor.getPosition()][intValue] = "false";
                                        } else {
                                            strArr2[cursor.getPosition()][intValue] = cursor.getString(intValue);
                                        }
                                    }
                                } catch (Exception e) {
                                    PLog.e("languages", e);
                                }
                            } while (cursor.moveToNext());
                        }
                    } catch (Exception e2) {
                        e = e2;
                        strArr = strArr2;
                        PLog.e(TAG, e.toString());
                        return strArr;
                    }
                }
                dbInstance.closeDatabase();
                if (cursor == null) {
                    return strArr2;
                }
                cursor.close();
                return strArr2;
            } catch (Exception e3) {
                e = e3;
            }
        } finally {
            dbInstance.closeDatabase();
            if (cursor != null) {
                cursor.close();
            }
        }
    }

    public String getValue(String str) {
        String str2 = ConstantsPMC.getInstance().getHtFoLabels().get(str);
        if (str2 != null) {
            return str2;
        }
        try {
            GetDataFromDB getDataFromDB = getInstance();
            Queries queries = Queries.getInstance();
            new SharedPrefManager();
            getDataFromDB.getFOLables(queries.getStrings(SharedPrefManager.getPMCLanguage(PMCApplication.getContext())));
            return ConstantsPMC.getInstance().getHtFoLabels().get(str);
        } catch (Exception e) {
            e.printStackTrace();
            PLog.e(TAG, e);
            return str2;
        }
    }

    public ArrayList<DraftListSwipeTabs> getSwipeTabsInDraftList() {
        ArrayList<DraftListSwipeTabs> arrayList = new ArrayList<>();
        arrayList.add(new DraftListSwipeTabs("ALL", getInstance().getValue(LabelUtils.getInstance().getPmc_allTabText())));
        arrayList.add(new DraftListSwipeTabs("DRAFT", getInstance().getValue(LabelUtils.getInstance().getPmc_draftTabText())));
        arrayList.add(new DraftListSwipeTabs("NOTSENT", getInstance().getValue(LabelUtils.getInstance().getPmc_notSentTabText())));
        arrayList.add(new DraftListSwipeTabs("SENT", getInstance().getValue(LabelUtils.getInstance().getPmc_sentTabText())));
        return arrayList;
    }

    public ArrayList<DraftListSwipeTabs> getExpensesSwipeTabsInToDo() {
        ArrayList<DraftListSwipeTabs> arrayList = new ArrayList<>();
        arrayList.add(new DraftListSwipeTabs("Calendar", getInstance().getValue(LabelUtils.getInstance().getPmc_calendarTabText())));
        return arrayList;
    }

    public ArrayList<DraftListSwipeTabs> getSwipeTabsInDraftList(String str) {
        ArrayList<DraftListSwipeTabs> arrayList = new ArrayList<>();
        arrayList.add(new DraftListSwipeTabs("ALL", getInstance().getValue(LabelUtils.getInstance().getPmc_allTabText())));
        arrayList.add(new DraftListSwipeTabs("Audience/DRAFT", getInstance().getValue(LabelUtils.getInstance().getPmc_draftTabText())));
        arrayList.add(new DraftListSwipeTabs("NOTSENT", getInstance().getValue(LabelUtils.getInstance().getPmc_notSentTabText())));
        arrayList.add(new DraftListSwipeTabs("SENT", getInstance().getValue(LabelUtils.getInstance().getPmc_sentTabText())));
        return arrayList;
    }

    public ArrayList<DraftListSwipeTabs> getSwipeTabsInDraftListForSelfAssignment() {
        ArrayList<DraftListSwipeTabs> arrayList = new ArrayList<>();
        arrayList.add(new DraftListSwipeTabs("ALL", ""));
        return arrayList;
    }

    public ArrayList<DraftListSwipeTabs> getSwipeTabsInToDo() {
        ArrayList<DraftListSwipeTabs> arrayList = new ArrayList<>();
        arrayList.add(new DraftListSwipeTabs("Activity", getInstance().getValue(LabelUtils.getInstance().getPmc_activityTabSelfAssignText())));
        arrayList.add(new DraftListSwipeTabs("GEO", getInstance().getValue(LabelUtils.getInstance().getPmc_geoTabText())));
        arrayList.add(new DraftListSwipeTabs("Calendar", getInstance().getValue(LabelUtils.getInstance().getPmc_calendarTabText())));
        return arrayList;
    }

    public ArrayList<DraftListSwipeTabs> getSurveySwipeTabsInToDo() {
        ArrayList<DraftListSwipeTabs> arrayList = new ArrayList<>();
        arrayList.add(new DraftListSwipeTabs("Survey", "Survey"));
        arrayList.add(new DraftListSwipeTabs("Calendar", getInstance().getValue(LabelUtils.getInstance().getPmc_calendarTabText())));
        return arrayList;
    }

    public ArrayList<DraftListSwipeTabs> getSwipeTabsInToDo_forFeedback() {
        ArrayList<DraftListSwipeTabs> arrayList = new ArrayList<>();
        arrayList.add(new DraftListSwipeTabs("Complaints", ""));
        return arrayList;
    }

    /* JADX WARN: Finally extract failed */
    public int getChildAttributeCountValue(String str) {
        Exception e;
        String str2;
        String str3 = "";
        Cursor cursor = null;
        try {
            try {
                SQLiteDatabase openDatabase = dbInstance.openDatabase();
                sqliteDatabase = openDatabase;
                cursor = openDatabase.rawQuery(str, null);
                if (cursor != null) {
                    if (cursor.moveToFirst()) {
                        str2 = "";
                        do {
                            try {
                                str2 = cursor.getString(cursor.getColumnIndex("count()"));
                            } catch (Exception e2) {
                                try {
                                    PLog.e(TAG, e2);
                                    str2 = "";
                                } catch (Exception e3) {
                                    e = e3;
                                    PLog.e(TAG, e);
                                    if (cursor != null) {
                                        cursor.close();
                                    }
                                    dbInstance.closeDatabase();
                                    str3 = str2;
                                    return Integer.parseInt(str3);
                                }
                            }
                        } while (cursor.moveToNext());
                        str3 = str2;
                    }
                }
                if (cursor != null) {
                    cursor.close();
                }
                dbInstance.closeDatabase();
            } catch (Exception e4) {
                e = e4;
                str2 = "";
            }
            return Integer.parseInt(str3);
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            dbInstance.closeDatabase();
            throw th;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x00b7, code lost:
    
        if (r2 != null) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00c5, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
        java.util.Collections.sort(r1, new com.conceptglobal.pmc.database.GetDataFromDB.AnonymousClass2(r5));
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00d2, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00c2, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00c0, code lost:
    
        if (r2 == null) goto L36;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.conceptglobal.pmc.model.CustomListDisplayModel> getCustomTypeList(java.lang.String r6) {
        /*
            r5 = this;
            java.lang.String r0 = "Getting  details :: "
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            r2 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r3 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> Lba java.lang.Exception -> Lbc
            android.database.sqlite.SQLiteDatabase r3 = r3.openDatabase()     // Catch: java.lang.Throwable -> Lba java.lang.Exception -> Lbc
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r3     // Catch: java.lang.Throwable -> Lba java.lang.Exception -> Lbc
            android.database.Cursor r2 = r3.rawQuery(r6, r2)     // Catch: java.lang.Throwable -> Lba java.lang.Exception -> Lbc
            if (r2 == 0) goto Lb7
            int r6 = r2.getCount()     // Catch: java.lang.Throwable -> Lba java.lang.Exception -> Lbc
            if (r6 <= 0) goto Lb7
            boolean r6 = r2.moveToFirst()     // Catch: java.lang.Throwable -> Lba java.lang.Exception -> Lbc
            if (r6 == 0) goto Lb7
        L22:
            com.conceptglobal.pmc.model.CustomListDisplayModel r6 = new com.conceptglobal.pmc.model.CustomListDisplayModel     // Catch: java.lang.Exception -> Lad java.lang.Throwable -> Lba
            r6.<init>()     // Catch: java.lang.Exception -> Lad java.lang.Throwable -> Lba
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r3 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType0     // Catch: java.lang.Exception -> Lad java.lang.Throwable -> Lba
            java.lang.Integer r3 = r3.value()     // Catch: java.lang.Exception -> Lad java.lang.Throwable -> Lba
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> Lad java.lang.Throwable -> Lba
            java.lang.String r3 = r2.getString(r3)     // Catch: java.lang.Exception -> Lad java.lang.Throwable -> Lba
            r6.setTypeId(r3)     // Catch: java.lang.Exception -> Lad java.lang.Throwable -> Lba
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r3 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType1     // Catch: java.lang.Exception -> Lad java.lang.Throwable -> Lba
            java.lang.Integer r3 = r3.value()     // Catch: java.lang.Exception -> Lad java.lang.Throwable -> Lba
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> Lad java.lang.Throwable -> Lba
            java.lang.String r3 = r2.getString(r3)     // Catch: java.lang.Exception -> Lad java.lang.Throwable -> Lba
            java.lang.String r4 = ""
            if (r3 == 0) goto L5c
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r3 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType1     // Catch: java.lang.Exception -> Lad java.lang.Throwable -> Lba
            java.lang.Integer r3 = r3.value()     // Catch: java.lang.Exception -> Lad java.lang.Throwable -> Lba
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> Lad java.lang.Throwable -> Lba
            java.lang.String r3 = r2.getString(r3)     // Catch: java.lang.Exception -> Lad java.lang.Throwable -> Lba
            r6.setTypeName(r3)     // Catch: java.lang.Exception -> Lad java.lang.Throwable -> Lba
            goto L5f
        L5c:
            r6.setTypeName(r4)     // Catch: java.lang.Exception -> Lad java.lang.Throwable -> Lba
        L5f:
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r3 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType2     // Catch: java.lang.Exception -> Lad java.lang.Throwable -> Lba
            java.lang.Integer r3 = r3.value()     // Catch: java.lang.Exception -> Lad java.lang.Throwable -> Lba
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> Lad java.lang.Throwable -> Lba
            java.lang.String r3 = r2.getString(r3)     // Catch: java.lang.Exception -> Lad java.lang.Throwable -> Lba
            if (r3 == 0) goto L81
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r3 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType2     // Catch: java.lang.Exception -> Lad java.lang.Throwable -> Lba
            java.lang.Integer r3 = r3.value()     // Catch: java.lang.Exception -> Lad java.lang.Throwable -> Lba
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> Lad java.lang.Throwable -> Lba
            java.lang.String r3 = r2.getString(r3)     // Catch: java.lang.Exception -> Lad java.lang.Throwable -> Lba
            r6.setField1(r3)     // Catch: java.lang.Exception -> Lad java.lang.Throwable -> Lba
            goto L84
        L81:
            r6.setField1(r4)     // Catch: java.lang.Exception -> Lad java.lang.Throwable -> Lba
        L84:
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r3 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType3     // Catch: java.lang.Exception -> Lad java.lang.Throwable -> Lba
            java.lang.Integer r3 = r3.value()     // Catch: java.lang.Exception -> Lad java.lang.Throwable -> Lba
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> Lad java.lang.Throwable -> Lba
            java.lang.String r3 = r2.getString(r3)     // Catch: java.lang.Exception -> Lad java.lang.Throwable -> Lba
            if (r3 == 0) goto La6
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r3 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType3     // Catch: java.lang.Exception -> Lad java.lang.Throwable -> Lba
            java.lang.Integer r3 = r3.value()     // Catch: java.lang.Exception -> Lad java.lang.Throwable -> Lba
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> Lad java.lang.Throwable -> Lba
            java.lang.String r3 = r2.getString(r3)     // Catch: java.lang.Exception -> Lad java.lang.Throwable -> Lba
            r6.setField2(r3)     // Catch: java.lang.Exception -> Lad java.lang.Throwable -> Lba
            goto La9
        La6:
            r6.setField2(r4)     // Catch: java.lang.Exception -> Lad java.lang.Throwable -> Lba
        La9:
            r1.add(r6)     // Catch: java.lang.Exception -> Lad java.lang.Throwable -> Lba
            goto Lb1
        Lad:
            r6 = move-exception
            com.conceptglobal.pmc.utils.PLog.e(r0, r6)     // Catch: java.lang.Throwable -> Lba java.lang.Exception -> Lbc
        Lb1:
            boolean r6 = r2.moveToNext()     // Catch: java.lang.Throwable -> Lba java.lang.Exception -> Lbc
            if (r6 != 0) goto L22
        Lb7:
            if (r2 == 0) goto Lc5
            goto Lc2
        Lba:
            r6 = move-exception
            goto Ld3
        Lbc:
            r6 = move-exception
            com.conceptglobal.pmc.utils.PLog.e(r0, r6)     // Catch: java.lang.Throwable -> Lba
            if (r2 == 0) goto Lc5
        Lc2:
            r2.close()
        Lc5:
            com.conceptglobal.pmc.database.DataBaseHandler r6 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r6.closeDatabase()
            com.conceptglobal.pmc.database.GetDataFromDB$2 r6 = new com.conceptglobal.pmc.database.GetDataFromDB$2
            r6.<init>()
            java.util.Collections.sort(r1, r6)
            return r1
        Ld3:
            if (r2 == 0) goto Ld8
            r2.close()
        Ld8:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getCustomTypeList(java.lang.String):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x0150, code lost:
    
        if (r2 != null) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x015e, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
        java.util.Collections.sort(r1, new com.conceptglobal.pmc.database.GetDataFromDB.AnonymousClass3(r6));
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x016b, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x015b, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0159, code lost:
    
        if (r2 == null) goto L45;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.conceptglobal.pmc.model.CustomListDisplayModel> getSelfAssignmentListOfPersons(java.lang.String r7) {
        /*
            Method dump skipped, instructions count: 375
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getSelfAssignmentListOfPersons(java.lang.String):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0079, code lost:
    
        if (r1 != null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0089, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x008e, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0086, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0084, code lost:
    
        if (r1 == null) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.conceptglobal.pmc.model.UserFunctions> getModules(java.lang.String r4) {
        /*
            r3 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r1 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r2 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L7c java.lang.Exception -> L7e
            android.database.sqlite.SQLiteDatabase r2 = r2.openDatabase()     // Catch: java.lang.Throwable -> L7c java.lang.Exception -> L7e
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r2     // Catch: java.lang.Throwable -> L7c java.lang.Exception -> L7e
            android.database.Cursor r1 = r2.rawQuery(r4, r1)     // Catch: java.lang.Throwable -> L7c java.lang.Exception -> L7e
            if (r1 == 0) goto L79
            int r4 = r1.getCount()     // Catch: java.lang.Throwable -> L7c java.lang.Exception -> L7e
            if (r4 <= 0) goto L79
            boolean r4 = r1.moveToFirst()     // Catch: java.lang.Throwable -> L7c java.lang.Exception -> L7e
            if (r4 == 0) goto L79
        L20:
            com.conceptglobal.pmc.model.UserFunctions r4 = new com.conceptglobal.pmc.model.UserFunctions     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L7c
            r4.<init>()     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L7c
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType0     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L7c
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L7c
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L7c
            int r2 = r1.getInt(r2)     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L7c
            r4.setFunctionId(r2)     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L7c
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType1     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L7c
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L7c
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L7c
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L7c
            r4.setFunctionName(r2)     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L7c
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType2     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L7c
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L7c
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L7c
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L7c
            r4.setPdafunction(r2)     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L7c
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType3     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L7c
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L7c
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L7c
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L7c
            r4.setNavigationUrl(r2)     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L7c
            r0.add(r4)     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L7c
            goto L73
        L6d:
            r4 = move-exception
            java.lang.String r2 = "Getting Module details :: "
            com.conceptglobal.pmc.utils.PLog.e(r2, r4)     // Catch: java.lang.Throwable -> L7c java.lang.Exception -> L7e
        L73:
            boolean r4 = r1.moveToNext()     // Catch: java.lang.Throwable -> L7c java.lang.Exception -> L7e
            if (r4 != 0) goto L20
        L79:
            if (r1 == 0) goto L89
            goto L86
        L7c:
            r4 = move-exception
            goto L8f
        L7e:
            r4 = move-exception
            java.lang.String r2 = "Getting modules :: "
            com.conceptglobal.pmc.utils.PLog.e(r2, r4)     // Catch: java.lang.Throwable -> L7c
            if (r1 == 0) goto L89
        L86:
            r1.close()
        L89:
            com.conceptglobal.pmc.database.DataBaseHandler r4 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r4.closeDatabase()
            return r0
        L8f:
            if (r1 == 0) goto L94
            r1.close()
        L94:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getModules(java.lang.String):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0047, code lost:
    
        if (r2 != null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x005b, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0060, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0058, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0056, code lost:
    
        if (r2 == null) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String getActiviyName(int r6) {
        /*
            r5 = this;
            java.lang.String r0 = "Select ActivityMasterName from ActivityMaster where ActivityMasterId ="
            java.lang.String r1 = ""
            r2 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r3 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
            android.database.sqlite.SQLiteDatabase r3 = r3.openDatabase()     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r3     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
            r4.<init>(r0)     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
            r4.append(r6)     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
            java.lang.String r6 = r4.toString()     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
            android.database.Cursor r2 = r3.rawQuery(r6, r2)     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
            if (r2 == 0) goto L47
            int r6 = r2.getCount()     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
            if (r6 <= 0) goto L47
            boolean r6 = r2.moveToFirst()     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
            if (r6 == 0) goto L47
        L2b:
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r6 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType0     // Catch: java.lang.Exception -> L3b java.lang.Throwable -> L4a
            java.lang.Integer r6 = r6.value()     // Catch: java.lang.Exception -> L3b java.lang.Throwable -> L4a
            int r6 = r6.intValue()     // Catch: java.lang.Exception -> L3b java.lang.Throwable -> L4a
            java.lang.String r6 = r2.getString(r6)     // Catch: java.lang.Exception -> L3b java.lang.Throwable -> L4a
            r1 = r6
            goto L41
        L3b:
            r6 = move-exception
            java.lang.String r0 = "GetLOtData"
            com.conceptglobal.pmc.utils.PLog.e(r0, r6)     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
        L41:
            boolean r6 = r2.moveToNext()     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
            if (r6 != 0) goto L2b
        L47:
            if (r2 == 0) goto L5b
            goto L58
        L4a:
            r6 = move-exception
            goto L61
        L4c:
            r6 = move-exception
            java.lang.String r0 = "GetDataFromDB"
            java.lang.String r6 = r6.toString()     // Catch: java.lang.Throwable -> L4a
            com.conceptglobal.pmc.utils.PLog.e(r0, r6)     // Catch: java.lang.Throwable -> L4a
            if (r2 == 0) goto L5b
        L58:
            r2.close()
        L5b:
            com.conceptglobal.pmc.database.DataBaseHandler r6 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r6.closeDatabase()
            return r1
        L61:
            if (r2 == 0) goto L66
            r2.close()
        L66:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getActiviyName(int):java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0047, code lost:
    
        if (r2 != null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x005b, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0060, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0058, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0056, code lost:
    
        if (r2 == null) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String getSurveyActiviyName(int r6) {
        /*
            r5 = this;
            java.lang.String r0 = "Select ActivityMasterName from SurveyActivityMaster where ActivityMasterId ="
            java.lang.String r1 = ""
            r2 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r3 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
            android.database.sqlite.SQLiteDatabase r3 = r3.openDatabase()     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r3     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
            r4.<init>(r0)     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
            r4.append(r6)     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
            java.lang.String r6 = r4.toString()     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
            android.database.Cursor r2 = r3.rawQuery(r6, r2)     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
            if (r2 == 0) goto L47
            int r6 = r2.getCount()     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
            if (r6 <= 0) goto L47
            boolean r6 = r2.moveToFirst()     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
            if (r6 == 0) goto L47
        L2b:
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r6 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType0     // Catch: java.lang.Exception -> L3b java.lang.Throwable -> L4a
            java.lang.Integer r6 = r6.value()     // Catch: java.lang.Exception -> L3b java.lang.Throwable -> L4a
            int r6 = r6.intValue()     // Catch: java.lang.Exception -> L3b java.lang.Throwable -> L4a
            java.lang.String r6 = r2.getString(r6)     // Catch: java.lang.Exception -> L3b java.lang.Throwable -> L4a
            r1 = r6
            goto L41
        L3b:
            r6 = move-exception
            java.lang.String r0 = "GetLOtData"
            com.conceptglobal.pmc.utils.PLog.e(r0, r6)     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
        L41:
            boolean r6 = r2.moveToNext()     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
            if (r6 != 0) goto L2b
        L47:
            if (r2 == 0) goto L5b
            goto L58
        L4a:
            r6 = move-exception
            goto L61
        L4c:
            r6 = move-exception
            java.lang.String r0 = "GetDataFromDB"
            java.lang.String r6 = r6.toString()     // Catch: java.lang.Throwable -> L4a
            com.conceptglobal.pmc.utils.PLog.e(r0, r6)     // Catch: java.lang.Throwable -> L4a
            if (r2 == 0) goto L5b
        L58:
            r2.close()
        L5b:
            com.conceptglobal.pmc.database.DataBaseHandler r6 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r6.closeDatabase()
            return r1
        L61:
            if (r2 == 0) goto L66
            r2.close()
        L66:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getSurveyActiviyName(int):java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0047, code lost:
    
        if (r2 != null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x005b, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0060, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0058, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0056, code lost:
    
        if (r2 == null) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String getFBFActiviyName(int r6) {
        /*
            r5 = this;
            java.lang.String r0 = "Select ActivityMasterName from FBFActivityMaster where ActivityMasterId ="
            java.lang.String r1 = ""
            r2 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r3 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
            android.database.sqlite.SQLiteDatabase r3 = r3.openDatabase()     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r3     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
            r4.<init>(r0)     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
            r4.append(r6)     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
            java.lang.String r6 = r4.toString()     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
            android.database.Cursor r2 = r3.rawQuery(r6, r2)     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
            if (r2 == 0) goto L47
            int r6 = r2.getCount()     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
            if (r6 <= 0) goto L47
            boolean r6 = r2.moveToFirst()     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
            if (r6 == 0) goto L47
        L2b:
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r6 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType0     // Catch: java.lang.Exception -> L3b java.lang.Throwable -> L4a
            java.lang.Integer r6 = r6.value()     // Catch: java.lang.Exception -> L3b java.lang.Throwable -> L4a
            int r6 = r6.intValue()     // Catch: java.lang.Exception -> L3b java.lang.Throwable -> L4a
            java.lang.String r6 = r2.getString(r6)     // Catch: java.lang.Exception -> L3b java.lang.Throwable -> L4a
            r1 = r6
            goto L41
        L3b:
            r6 = move-exception
            java.lang.String r0 = "GetLOtData"
            com.conceptglobal.pmc.utils.PLog.e(r0, r6)     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
        L41:
            boolean r6 = r2.moveToNext()     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
            if (r6 != 0) goto L2b
        L47:
            if (r2 == 0) goto L5b
            goto L58
        L4a:
            r6 = move-exception
            goto L61
        L4c:
            r6 = move-exception
            java.lang.String r0 = "GetDataFromDB"
            java.lang.String r6 = r6.toString()     // Catch: java.lang.Throwable -> L4a
            com.conceptglobal.pmc.utils.PLog.e(r0, r6)     // Catch: java.lang.Throwable -> L4a
            if (r2 == 0) goto L5b
        L58:
            r2.close()
        L5b:
            com.conceptglobal.pmc.database.DataBaseHandler r6 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r6.closeDatabase()
            return r1
        L61:
            if (r2 == 0) goto L66
            r2.close()
        L66:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getFBFActiviyName(int):java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0047, code lost:
    
        if (r2 != null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x005b, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0060, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0058, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0056, code lost:
    
        if (r2 == null) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String getTSTActiviyName(int r6) {
        /*
            r5 = this;
            java.lang.String r0 = "Select ActivityMasterName from TSTActivityMaster where ActivityMasterId ="
            java.lang.String r1 = ""
            r2 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r3 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
            android.database.sqlite.SQLiteDatabase r3 = r3.openDatabase()     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r3     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
            r4.<init>(r0)     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
            r4.append(r6)     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
            java.lang.String r6 = r4.toString()     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
            android.database.Cursor r2 = r3.rawQuery(r6, r2)     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
            if (r2 == 0) goto L47
            int r6 = r2.getCount()     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
            if (r6 <= 0) goto L47
            boolean r6 = r2.moveToFirst()     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
            if (r6 == 0) goto L47
        L2b:
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r6 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType0     // Catch: java.lang.Exception -> L3b java.lang.Throwable -> L4a
            java.lang.Integer r6 = r6.value()     // Catch: java.lang.Exception -> L3b java.lang.Throwable -> L4a
            int r6 = r6.intValue()     // Catch: java.lang.Exception -> L3b java.lang.Throwable -> L4a
            java.lang.String r6 = r2.getString(r6)     // Catch: java.lang.Exception -> L3b java.lang.Throwable -> L4a
            r1 = r6
            goto L41
        L3b:
            r6 = move-exception
            java.lang.String r0 = "GetLOtData"
            com.conceptglobal.pmc.utils.PLog.e(r0, r6)     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
        L41:
            boolean r6 = r2.moveToNext()     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
            if (r6 != 0) goto L2b
        L47:
            if (r2 == 0) goto L5b
            goto L58
        L4a:
            r6 = move-exception
            goto L61
        L4c:
            r6 = move-exception
            java.lang.String r0 = "GetDataFromDB"
            java.lang.String r6 = r6.toString()     // Catch: java.lang.Throwable -> L4a
            com.conceptglobal.pmc.utils.PLog.e(r0, r6)     // Catch: java.lang.Throwable -> L4a
            if (r2 == 0) goto L5b
        L58:
            r2.close()
        L5b:
            com.conceptglobal.pmc.database.DataBaseHandler r6 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r6.closeDatabase()
            return r1
        L61:
            if (r2 == 0) goto L66
            r2.close()
        L66:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getTSTActiviyName(int):java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0047, code lost:
    
        if (r2 != null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x005b, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0060, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0058, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0056, code lost:
    
        if (r2 == null) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String getActiviyCode(int r6) {
        /*
            r5 = this;
            java.lang.String r0 = "Select ActivityShortCode from ActivityMaster where ActivityMasterId ="
            java.lang.String r1 = ""
            r2 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r3 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
            android.database.sqlite.SQLiteDatabase r3 = r3.openDatabase()     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r3     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
            r4.<init>(r0)     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
            r4.append(r6)     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
            java.lang.String r6 = r4.toString()     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
            android.database.Cursor r2 = r3.rawQuery(r6, r2)     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
            if (r2 == 0) goto L47
            int r6 = r2.getCount()     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
            if (r6 <= 0) goto L47
            boolean r6 = r2.moveToFirst()     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
            if (r6 == 0) goto L47
        L2b:
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r6 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType0     // Catch: java.lang.Exception -> L3b java.lang.Throwable -> L4a
            java.lang.Integer r6 = r6.value()     // Catch: java.lang.Exception -> L3b java.lang.Throwable -> L4a
            int r6 = r6.intValue()     // Catch: java.lang.Exception -> L3b java.lang.Throwable -> L4a
            java.lang.String r6 = r2.getString(r6)     // Catch: java.lang.Exception -> L3b java.lang.Throwable -> L4a
            r1 = r6
            goto L41
        L3b:
            r6 = move-exception
            java.lang.String r0 = "GetLOtData"
            com.conceptglobal.pmc.utils.PLog.e(r0, r6)     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
        L41:
            boolean r6 = r2.moveToNext()     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
            if (r6 != 0) goto L2b
        L47:
            if (r2 == 0) goto L5b
            goto L58
        L4a:
            r6 = move-exception
            goto L61
        L4c:
            r6 = move-exception
            java.lang.String r0 = "GetDataFromDB"
            java.lang.String r6 = r6.toString()     // Catch: java.lang.Throwable -> L4a
            com.conceptglobal.pmc.utils.PLog.e(r0, r6)     // Catch: java.lang.Throwable -> L4a
            if (r2 == 0) goto L5b
        L58:
            r2.close()
        L5b:
            com.conceptglobal.pmc.database.DataBaseHandler r6 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r6.closeDatabase()
            return r1
        L61:
            if (r2 == 0) goto L66
            r2.close()
        L66:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getActiviyCode(int):java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0047, code lost:
    
        if (r2 != null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x005b, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0060, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0058, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0056, code lost:
    
        if (r2 == null) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String getFBFActiviyCode(int r6) {
        /*
            r5 = this;
            java.lang.String r0 = "Select ActivityShortCode from FBFActivityMaster where ActivityMasterId ="
            java.lang.String r1 = ""
            r2 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r3 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
            android.database.sqlite.SQLiteDatabase r3 = r3.openDatabase()     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r3     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
            r4.<init>(r0)     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
            r4.append(r6)     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
            java.lang.String r6 = r4.toString()     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
            android.database.Cursor r2 = r3.rawQuery(r6, r2)     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
            if (r2 == 0) goto L47
            int r6 = r2.getCount()     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
            if (r6 <= 0) goto L47
            boolean r6 = r2.moveToFirst()     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
            if (r6 == 0) goto L47
        L2b:
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r6 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType0     // Catch: java.lang.Exception -> L3b java.lang.Throwable -> L4a
            java.lang.Integer r6 = r6.value()     // Catch: java.lang.Exception -> L3b java.lang.Throwable -> L4a
            int r6 = r6.intValue()     // Catch: java.lang.Exception -> L3b java.lang.Throwable -> L4a
            java.lang.String r6 = r2.getString(r6)     // Catch: java.lang.Exception -> L3b java.lang.Throwable -> L4a
            r1 = r6
            goto L41
        L3b:
            r6 = move-exception
            java.lang.String r0 = "GetLOtData"
            com.conceptglobal.pmc.utils.PLog.e(r0, r6)     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
        L41:
            boolean r6 = r2.moveToNext()     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
            if (r6 != 0) goto L2b
        L47:
            if (r2 == 0) goto L5b
            goto L58
        L4a:
            r6 = move-exception
            goto L61
        L4c:
            r6 = move-exception
            java.lang.String r0 = "GetDataFromDB"
            java.lang.String r6 = r6.toString()     // Catch: java.lang.Throwable -> L4a
            com.conceptglobal.pmc.utils.PLog.e(r0, r6)     // Catch: java.lang.Throwable -> L4a
            if (r2 == 0) goto L5b
        L58:
            r2.close()
        L5b:
            com.conceptglobal.pmc.database.DataBaseHandler r6 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r6.closeDatabase()
            return r1
        L61:
            if (r2 == 0) goto L66
            r2.close()
        L66:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getFBFActiviyCode(int):java.lang.String");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00a6  */
    /* JADX WARN: Type inference failed for: r7v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v4, types: [android.database.Cursor] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String[][] getActiviyList(java.lang.String r7) {
        /*
            r6 = this;
            r0 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r1 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L88 java.lang.Exception -> L8d
            android.database.sqlite.SQLiteDatabase r1 = r1.openDatabase()     // Catch: java.lang.Throwable -> L88 java.lang.Exception -> L8d
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r1     // Catch: java.lang.Throwable -> L88 java.lang.Exception -> L8d
            android.database.Cursor r7 = r1.rawQuery(r7, r0)     // Catch: java.lang.Throwable -> L88 java.lang.Exception -> L8d
            int r1 = r7.getCount()     // Catch: java.lang.Exception -> L86 java.lang.Throwable -> La3
            int r2 = r7.getColumnCount()     // Catch: java.lang.Exception -> L86 java.lang.Throwable -> La3
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r3 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType1     // Catch: java.lang.Exception -> L86 java.lang.Throwable -> La3
            java.lang.Integer r3 = r3.value()     // Catch: java.lang.Exception -> L86 java.lang.Throwable -> La3
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> L86 java.lang.Throwable -> La3
            int r2 = r2 + r3
            r3 = 2
            int[] r3 = new int[r3]     // Catch: java.lang.Exception -> L86 java.lang.Throwable -> La3
            r4 = 1
            r3[r4] = r2     // Catch: java.lang.Exception -> L86 java.lang.Throwable -> La3
            r2 = 0
            r3[r2] = r1     // Catch: java.lang.Exception -> L86 java.lang.Throwable -> La3
            java.lang.Class<java.lang.String> r1 = java.lang.String.class
            java.lang.Object r1 = java.lang.reflect.Array.newInstance(r1, r3)     // Catch: java.lang.Exception -> L86 java.lang.Throwable -> La3
            java.lang.String[][] r1 = (java.lang.String[][]) r1     // Catch: java.lang.Exception -> L86 java.lang.Throwable -> La3
            if (r7 == 0) goto L7b
            int r2 = r7.getCount()     // Catch: java.lang.Exception -> L86 java.lang.Throwable -> La3
            if (r2 <= 0) goto L7b
            boolean r2 = r7.moveToFirst()     // Catch: java.lang.Exception -> L86 java.lang.Throwable -> La3
            if (r2 == 0) goto L7b
        L3f:
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType0     // Catch: java.lang.Exception -> L6f java.lang.Throwable -> La3
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> L6f java.lang.Throwable -> La3
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> L6f java.lang.Throwable -> La3
        L49:
            int r3 = r7.getColumnCount()     // Catch: java.lang.Exception -> L6f java.lang.Throwable -> La3
            if (r2 > r3) goto L75
            int r3 = r7.getColumnCount()     // Catch: java.lang.Exception -> L6f java.lang.Throwable -> La3
            if (r2 != r3) goto L60
            int r3 = r7.getPosition()     // Catch: java.lang.Exception -> L6f java.lang.Throwable -> La3
            r3 = r1[r3]     // Catch: java.lang.Exception -> L6f java.lang.Throwable -> La3
            java.lang.String r4 = "false"
            r3[r2] = r4     // Catch: java.lang.Exception -> L6f java.lang.Throwable -> La3
            goto L6c
        L60:
            int r3 = r7.getPosition()     // Catch: java.lang.Exception -> L6f java.lang.Throwable -> La3
            r3 = r1[r3]     // Catch: java.lang.Exception -> L6f java.lang.Throwable -> La3
            java.lang.String r4 = r7.getString(r2)     // Catch: java.lang.Exception -> L6f java.lang.Throwable -> La3
            r3[r2] = r4     // Catch: java.lang.Exception -> L6f java.lang.Throwable -> La3
        L6c:
            int r2 = r2 + 1
            goto L49
        L6f:
            r2 = move-exception
            java.lang.String r3 = "GetLOtData"
            com.conceptglobal.pmc.utils.PLog.e(r3, r2)     // Catch: java.lang.Exception -> L86 java.lang.Throwable -> La3
        L75:
            boolean r2 = r7.moveToNext()     // Catch: java.lang.Exception -> L86 java.lang.Throwable -> La3
            if (r2 != 0) goto L3f
        L7b:
            if (r7 == 0) goto L80
            r7.close()
        L80:
            com.conceptglobal.pmc.database.DataBaseHandler r7 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r7.closeDatabase()
            return r1
        L86:
            r1 = move-exception
            goto L8f
        L88:
            r7 = move-exception
            r5 = r0
            r0 = r7
            r7 = r5
            goto La4
        L8d:
            r1 = move-exception
            r7 = r0
        L8f:
            java.lang.String r2 = "GetDataFromDB"
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> La3
            com.conceptglobal.pmc.utils.PLog.e(r2, r1)     // Catch: java.lang.Throwable -> La3
            if (r7 == 0) goto L9d
            r7.close()
        L9d:
            com.conceptglobal.pmc.database.DataBaseHandler r7 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r7.closeDatabase()
            return r0
        La3:
            r0 = move-exception
        La4:
            if (r7 == 0) goto La9
            r7.close()
        La9:
            com.conceptglobal.pmc.database.DataBaseHandler r7 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r7.closeDatabase()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getActiviyList(java.lang.String):java.lang.String[][]");
    }

    /* JADX WARN: Code restructure failed: missing block: B:49:0x021f, code lost:
    
        if (r1 != null) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x022f, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0234, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x022c, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x022a, code lost:
    
        if (r1 == null) goto L53;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.ArrayList<com.conceptglobal.pmc.model.DynamicFields> getDynanicFields(java.lang.String r5) {
        /*
            Method dump skipped, instructions count: 576
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getDynanicFields(java.lang.String):java.util.ArrayList");
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0043, code lost:
    
        if (r1 != null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0053, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0058, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0050, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x004e, code lost:
    
        if (r1 == null) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.ArrayList<java.lang.String> getDynamicFeildsTabs(java.lang.String r4) {
        /*
            r3 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r1 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r2 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L46 java.lang.Exception -> L48
            android.database.sqlite.SQLiteDatabase r2 = r2.openDatabase()     // Catch: java.lang.Throwable -> L46 java.lang.Exception -> L48
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r2     // Catch: java.lang.Throwable -> L46 java.lang.Exception -> L48
            android.database.Cursor r1 = r2.rawQuery(r4, r1)     // Catch: java.lang.Throwable -> L46 java.lang.Exception -> L48
            if (r1 == 0) goto L43
            int r4 = r1.getCount()     // Catch: java.lang.Throwable -> L46 java.lang.Exception -> L48
            if (r4 <= 0) goto L43
            boolean r4 = r1.moveToFirst()     // Catch: java.lang.Throwable -> L46 java.lang.Exception -> L48
            if (r4 == 0) goto L43
        L20:
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r4 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType0     // Catch: java.lang.Exception -> L37 java.lang.Throwable -> L46
            java.lang.Integer r4 = r4.value()     // Catch: java.lang.Exception -> L37 java.lang.Throwable -> L46
            int r4 = r4.intValue()     // Catch: java.lang.Exception -> L37 java.lang.Throwable -> L46
            java.lang.String r4 = r1.getString(r4)     // Catch: java.lang.Exception -> L37 java.lang.Throwable -> L46
            java.io.PrintStream r2 = java.lang.System.out     // Catch: java.lang.Exception -> L37 java.lang.Throwable -> L46
            r2.println(r4)     // Catch: java.lang.Exception -> L37 java.lang.Throwable -> L46
            r0.add(r4)     // Catch: java.lang.Exception -> L37 java.lang.Throwable -> L46
            goto L3d
        L37:
            r4 = move-exception
            java.lang.String r2 = "Getting Module details :: "
            com.conceptglobal.pmc.utils.PLog.e(r2, r4)     // Catch: java.lang.Throwable -> L46 java.lang.Exception -> L48
        L3d:
            boolean r4 = r1.moveToNext()     // Catch: java.lang.Throwable -> L46 java.lang.Exception -> L48
            if (r4 != 0) goto L20
        L43:
            if (r1 == 0) goto L53
            goto L50
        L46:
            r4 = move-exception
            goto L59
        L48:
            r4 = move-exception
            java.lang.String r2 = "Getting modules :: "
            com.conceptglobal.pmc.utils.PLog.e(r2, r4)     // Catch: java.lang.Throwable -> L46
            if (r1 == 0) goto L53
        L50:
            r1.close()
        L53:
            com.conceptglobal.pmc.database.DataBaseHandler r4 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r4.closeDatabase()
            return r0
        L59:
            if (r1 == 0) goto L5e
            r1.close()
        L5e:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getDynamicFeildsTabs(java.lang.String):java.util.ArrayList");
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0046, code lost:
    
        if (r1 != null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0056, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x005b, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0053, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0051, code lost:
    
        if (r1 == null) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.ArrayList<com.conceptglobal.pmc.model.DynamicFields> getDynanicFieldsFirDraft(java.lang.String r4) {
        /*
            r3 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r1 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r2 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L49 java.lang.Exception -> L4b
            android.database.sqlite.SQLiteDatabase r2 = r2.openDatabase()     // Catch: java.lang.Throwable -> L49 java.lang.Exception -> L4b
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r2     // Catch: java.lang.Throwable -> L49 java.lang.Exception -> L4b
            android.database.Cursor r1 = r2.rawQuery(r4, r1)     // Catch: java.lang.Throwable -> L49 java.lang.Exception -> L4b
            if (r1 == 0) goto L46
            int r4 = r1.getCount()     // Catch: java.lang.Throwable -> L49 java.lang.Exception -> L4b
            if (r4 <= 0) goto L46
            boolean r4 = r1.moveToFirst()     // Catch: java.lang.Throwable -> L49 java.lang.Exception -> L4b
            if (r4 == 0) goto L46
        L20:
            com.conceptglobal.pmc.model.DynamicFields r4 = new com.conceptglobal.pmc.model.DynamicFields     // Catch: java.lang.Exception -> L3a java.lang.Throwable -> L49
            r4.<init>()     // Catch: java.lang.Exception -> L3a java.lang.Throwable -> L49
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType0     // Catch: java.lang.Exception -> L3a java.lang.Throwable -> L49
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> L3a java.lang.Throwable -> L49
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> L3a java.lang.Throwable -> L49
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> L3a java.lang.Throwable -> L49
            r4.setDbColumnName(r2)     // Catch: java.lang.Exception -> L3a java.lang.Throwable -> L49
            r0.add(r4)     // Catch: java.lang.Exception -> L3a java.lang.Throwable -> L49
            goto L40
        L3a:
            r4 = move-exception
            java.lang.String r2 = "Getting Module details :: "
            com.conceptglobal.pmc.utils.PLog.e(r2, r4)     // Catch: java.lang.Throwable -> L49 java.lang.Exception -> L4b
        L40:
            boolean r4 = r1.moveToNext()     // Catch: java.lang.Throwable -> L49 java.lang.Exception -> L4b
            if (r4 != 0) goto L20
        L46:
            if (r1 == 0) goto L56
            goto L53
        L49:
            r4 = move-exception
            goto L5c
        L4b:
            r4 = move-exception
            java.lang.String r2 = "Getting modules :: "
            com.conceptglobal.pmc.utils.PLog.e(r2, r4)     // Catch: java.lang.Throwable -> L49
            if (r1 == 0) goto L56
        L53:
            r1.close()
        L56:
            com.conceptglobal.pmc.database.DataBaseHandler r4 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r4.closeDatabase()
            return r0
        L5c:
            if (r1 == 0) goto L61
            r1.close()
        L61:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getDynanicFieldsFirDraft(java.lang.String):java.util.ArrayList");
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x0072, code lost:
    
        if (r1 != null) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0082, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0087, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x007f, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x007d, code lost:
    
        if (r1 == null) goto L31;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<java.lang.String> getFarmerOrRetailerBindDataDynamic(java.lang.String r6) {
        /*
            r5 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r1 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r2 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L77
            android.database.sqlite.SQLiteDatabase r2 = r2.openDatabase()     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L77
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r2     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L77
            android.database.Cursor r1 = r2.rawQuery(r6, r1)     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L77
            if (r1 == 0) goto L72
            boolean r6 = r1.moveToFirst()     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L77
            if (r6 == 0) goto L72
        L1a:
            int r6 = r1.getColumnCount()     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L77
            r2 = 0
        L1f:
            if (r2 >= r6) goto L6c
            java.lang.String r3 = r1.getColumnName(r2)     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L77
            java.lang.String r4 = "FarmerName"
            boolean r3 = r3.contains(r4)     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L77
            if (r3 != 0) goto L5a
            java.lang.String r3 = r1.getColumnName(r2)     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L77
            java.lang.String r4 = "Mobile"
            boolean r3 = r3.contains(r4)     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L77
            if (r3 != 0) goto L5a
            java.lang.String r3 = r1.getColumnName(r2)     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L77
            java.lang.String r4 = "ContactName"
            boolean r3 = r3.contains(r4)     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L77
            if (r3 != 0) goto L5a
            java.lang.String r3 = r1.getColumnName(r2)     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L77
            java.lang.String r4 = "RetailerShopName"
            boolean r3 = r3.contains(r4)     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L77
            if (r3 == 0) goto L52
            goto L5a
        L52:
            java.lang.String r3 = r1.getString(r2)     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L77
            r0.add(r3)     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L77
            goto L69
        L5a:
            java.lang.String r3 = r1.getString(r2)     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L77
            java.lang.String r3 = com.conceptglobal.pmc.utils.Encryption.decrypt(r3)     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L77
            java.lang.String r3 = r3.trim()     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L77
            r0.add(r3)     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L77
        L69:
            int r2 = r2 + 1
            goto L1f
        L6c:
            boolean r6 = r1.moveToNext()     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L77
            if (r6 != 0) goto L1a
        L72:
            if (r1 == 0) goto L82
            goto L7f
        L75:
            r6 = move-exception
            goto L88
        L77:
            r6 = move-exception
            java.lang.String r2 = "GetDataFromDB"
            com.conceptglobal.pmc.utils.PLog.e(r2, r6)     // Catch: java.lang.Throwable -> L75
            if (r1 == 0) goto L82
        L7f:
            r1.close()
        L82:
            com.conceptglobal.pmc.database.DataBaseHandler r6 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r6.closeDatabase()
            return r0
        L88:
            if (r1 == 0) goto L8d
            r1.close()
        L8d:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getFarmerOrRetailerBindDataDynamic(java.lang.String):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:60:0x016d, code lost:
    
        if (r4 != null) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x017f, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
        java.util.Collections.sort(r3, new com.conceptglobal.pmc.database.GetDataFromDB.AnonymousClass4(r16));
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x018e, code lost:
    
        return r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x017c, code lost:
    
        r4.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x017a, code lost:
    
        if (r4 == null) goto L62;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.conceptglobal.pmc.model.DashboardListModel> getFarmerBindDataDynamic1(java.lang.String r17, boolean r18) {
        /*
            Method dump skipped, instructions count: 410
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getFarmerBindDataDynamic1(java.lang.String, boolean):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:72:0x01fe, code lost:
    
        if (r4 != null) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0200, code lost:
    
        r4.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0203, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
        java.util.Collections.sort(r1, new com.conceptglobal.pmc.database.GetDataFromDB.AnonymousClass5(r20));
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0212, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x01f0, code lost:
    
        if (r4 != null) goto L85;
     */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0140 A[Catch: Exception -> 0x01eb, all -> 0x01f3, TryCatch #0 {all -> 0x01f3, blocks: (B:3:0x000c, B:5:0x002b, B:7:0x0031, B:11:0x0042, B:37:0x0068, B:39:0x006e, B:41:0x0074, B:43:0x007a, B:45:0x0080, B:47:0x0086, B:49:0x008c, B:51:0x0092, B:53:0x0098, B:55:0x009e, B:57:0x00a4, B:59:0x00aa, B:61:0x00b8, B:64:0x00c5, B:66:0x00cf, B:15:0x00e9, B:17:0x0140, B:18:0x0156, B:20:0x0160, B:21:0x016b, B:23:0x0175, B:24:0x0180, B:26:0x018a, B:27:0x0195, B:29:0x019f, B:30:0x01aa, B:32:0x01b6, B:34:0x01c1, B:67:0x00d7, B:71:0x01f9, B:81:0x01d0, B:84:0x01da), top: B:2:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0160 A[Catch: Exception -> 0x01eb, all -> 0x01f3, TryCatch #0 {all -> 0x01f3, blocks: (B:3:0x000c, B:5:0x002b, B:7:0x0031, B:11:0x0042, B:37:0x0068, B:39:0x006e, B:41:0x0074, B:43:0x007a, B:45:0x0080, B:47:0x0086, B:49:0x008c, B:51:0x0092, B:53:0x0098, B:55:0x009e, B:57:0x00a4, B:59:0x00aa, B:61:0x00b8, B:64:0x00c5, B:66:0x00cf, B:15:0x00e9, B:17:0x0140, B:18:0x0156, B:20:0x0160, B:21:0x016b, B:23:0x0175, B:24:0x0180, B:26:0x018a, B:27:0x0195, B:29:0x019f, B:30:0x01aa, B:32:0x01b6, B:34:0x01c1, B:67:0x00d7, B:71:0x01f9, B:81:0x01d0, B:84:0x01da), top: B:2:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0175 A[Catch: Exception -> 0x01eb, all -> 0x01f3, TryCatch #0 {all -> 0x01f3, blocks: (B:3:0x000c, B:5:0x002b, B:7:0x0031, B:11:0x0042, B:37:0x0068, B:39:0x006e, B:41:0x0074, B:43:0x007a, B:45:0x0080, B:47:0x0086, B:49:0x008c, B:51:0x0092, B:53:0x0098, B:55:0x009e, B:57:0x00a4, B:59:0x00aa, B:61:0x00b8, B:64:0x00c5, B:66:0x00cf, B:15:0x00e9, B:17:0x0140, B:18:0x0156, B:20:0x0160, B:21:0x016b, B:23:0x0175, B:24:0x0180, B:26:0x018a, B:27:0x0195, B:29:0x019f, B:30:0x01aa, B:32:0x01b6, B:34:0x01c1, B:67:0x00d7, B:71:0x01f9, B:81:0x01d0, B:84:0x01da), top: B:2:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x018a A[Catch: Exception -> 0x01eb, all -> 0x01f3, TryCatch #0 {all -> 0x01f3, blocks: (B:3:0x000c, B:5:0x002b, B:7:0x0031, B:11:0x0042, B:37:0x0068, B:39:0x006e, B:41:0x0074, B:43:0x007a, B:45:0x0080, B:47:0x0086, B:49:0x008c, B:51:0x0092, B:53:0x0098, B:55:0x009e, B:57:0x00a4, B:59:0x00aa, B:61:0x00b8, B:64:0x00c5, B:66:0x00cf, B:15:0x00e9, B:17:0x0140, B:18:0x0156, B:20:0x0160, B:21:0x016b, B:23:0x0175, B:24:0x0180, B:26:0x018a, B:27:0x0195, B:29:0x019f, B:30:0x01aa, B:32:0x01b6, B:34:0x01c1, B:67:0x00d7, B:71:0x01f9, B:81:0x01d0, B:84:0x01da), top: B:2:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x019f A[Catch: Exception -> 0x01eb, all -> 0x01f3, TryCatch #0 {all -> 0x01f3, blocks: (B:3:0x000c, B:5:0x002b, B:7:0x0031, B:11:0x0042, B:37:0x0068, B:39:0x006e, B:41:0x0074, B:43:0x007a, B:45:0x0080, B:47:0x0086, B:49:0x008c, B:51:0x0092, B:53:0x0098, B:55:0x009e, B:57:0x00a4, B:59:0x00aa, B:61:0x00b8, B:64:0x00c5, B:66:0x00cf, B:15:0x00e9, B:17:0x0140, B:18:0x0156, B:20:0x0160, B:21:0x016b, B:23:0x0175, B:24:0x0180, B:26:0x018a, B:27:0x0195, B:29:0x019f, B:30:0x01aa, B:32:0x01b6, B:34:0x01c1, B:67:0x00d7, B:71:0x01f9, B:81:0x01d0, B:84:0x01da), top: B:2:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x01b6 A[Catch: Exception -> 0x01eb, all -> 0x01f3, TryCatch #0 {all -> 0x01f3, blocks: (B:3:0x000c, B:5:0x002b, B:7:0x0031, B:11:0x0042, B:37:0x0068, B:39:0x006e, B:41:0x0074, B:43:0x007a, B:45:0x0080, B:47:0x0086, B:49:0x008c, B:51:0x0092, B:53:0x0098, B:55:0x009e, B:57:0x00a4, B:59:0x00aa, B:61:0x00b8, B:64:0x00c5, B:66:0x00cf, B:15:0x00e9, B:17:0x0140, B:18:0x0156, B:20:0x0160, B:21:0x016b, B:23:0x0175, B:24:0x0180, B:26:0x018a, B:27:0x0195, B:29:0x019f, B:30:0x01aa, B:32:0x01b6, B:34:0x01c1, B:67:0x00d7, B:71:0x01f9, B:81:0x01d0, B:84:0x01da), top: B:2:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x01c1 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.conceptglobal.pmc.model.DashboardListModel> getFarmerBindDataDynamic1New(java.lang.String r21, boolean r22) {
        /*
            Method dump skipped, instructions count: 542
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getFarmerBindDataDynamic1New(java.lang.String, boolean):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x01dd, code lost:
    
        return r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x01c8, code lost:
    
        if (r4 != null) goto L63;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.conceptglobal.pmc.model.DashboardListModel> getFarmersByKeyword(java.lang.String r18, java.lang.String r19) {
        /*
            Method dump skipped, instructions count: 489
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getFarmersByKeyword(java.lang.String, java.lang.String):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0013, code lost:
    
        if (r1 != null) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0015, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0024, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0021, code lost:
    
        if (r1 == null) goto L18;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int getTotalFarmersCount(android.database.sqlite.SQLiteDatabase r3, java.lang.String r4) {
        /*
            r2 = this;
            r0 = 0
            r1 = 0
            android.database.Cursor r1 = r3.rawQuery(r4, r1)     // Catch: java.lang.Throwable -> L19 java.lang.Exception -> L20
            if (r1 == 0) goto L13
            boolean r3 = r1.moveToFirst()     // Catch: java.lang.Throwable -> L19 java.lang.Exception -> L20
            if (r3 == 0) goto L13
            int r3 = r1.getInt(r0)     // Catch: java.lang.Throwable -> L19 java.lang.Exception -> L20
            r0 = r3
        L13:
            if (r1 == 0) goto L24
        L15:
            r1.close()
            goto L24
        L19:
            r3 = move-exception
            if (r1 == 0) goto L1f
            r1.close()
        L1f:
            throw r3
        L20:
            if (r1 == 0) goto L24
            goto L15
        L24:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getTotalFarmersCount(android.database.sqlite.SQLiteDatabase, java.lang.String):int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x00d2, code lost:
    
        if (r2 != null) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00e2, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
        java.util.Collections.sort(r1, new com.conceptglobal.pmc.database.GetDataFromDB.AnonymousClass6(r11));
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00ef, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00df, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00dd, code lost:
    
        if (r2 == null) goto L43;
     */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0085 A[Catch: all -> 0x00d5, Exception -> 0x00d7, TryCatch #1 {Exception -> 0x00d7, blocks: (B:3:0x0008, B:5:0x0016, B:7:0x001c, B:9:0x002d, B:12:0x0039, B:14:0x003f, B:16:0x0045, B:18:0x004b, B:21:0x0059, B:24:0x0064, B:25:0x007b, B:27:0x0085, B:28:0x006c, B:29:0x0094, B:31:0x00ac, B:33:0x00c2, B:36:0x00c6), top: B:2:0x0008, outer: #0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.conceptglobal.pmc.model.CustomListDisplayModel> getFarmerBindData(java.lang.String r12, boolean r13) {
        /*
            r11 = this;
            java.lang.String r0 = "RespondentNo"
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            r2 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r3 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            android.database.sqlite.SQLiteDatabase r3 = r3.openDatabase()     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r3     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            android.database.Cursor r2 = r3.rawQuery(r12, r2)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            if (r2 == 0) goto Ld2
            boolean r12 = r2.moveToFirst()     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            if (r12 == 0) goto Ld2
        L1c:
            com.conceptglobal.pmc.model.CustomListDisplayModel r12 = new com.conceptglobal.pmc.model.CustomListDisplayModel     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            r12.<init>()     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            java.util.ArrayList r3 = new java.util.ArrayList     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            r3.<init>()     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            int r4 = r2.getColumnCount()     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            r5 = 0
        L2b:
            if (r5 >= r4) goto Lc6
            int r6 = r2.getColumnIndex(r0)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            java.lang.String r7 = "Longitude"
            java.lang.String r8 = "Latitude"
            java.lang.String r9 = "VillageName"
            if (r5 == r6) goto L94
            int r6 = r2.getColumnIndex(r9)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            if (r5 == r6) goto L94
            int r6 = r2.getColumnIndex(r8)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            if (r5 == r6) goto L94
            int r6 = r2.getColumnIndex(r7)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            if (r5 == r6) goto L94
            java.lang.String r6 = r2.getColumnName(r5)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            java.lang.String r10 = "Mobile"
            boolean r6 = r6.contains(r10)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            java.lang.String r10 = "FarmerName"
            if (r6 != 0) goto L6c
            java.lang.String r6 = r2.getColumnName(r5)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            boolean r6 = r6.contains(r10)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            if (r6 == 0) goto L64
            goto L6c
        L64:
            java.lang.String r6 = r2.getString(r5)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            r3.add(r6)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            goto L7b
        L6c:
            java.lang.String r6 = r2.getString(r5)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            java.lang.String r6 = com.conceptglobal.pmc.utils.Encryption.decrypt(r6)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            java.lang.String r6 = r6.trim()     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            r3.add(r6)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
        L7b:
            java.lang.String r6 = r2.getColumnName(r5)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            boolean r6 = r6.contains(r10)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            if (r6 == 0) goto L94
            java.lang.String r6 = r2.getString(r5)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            java.lang.String r6 = com.conceptglobal.pmc.utils.Encryption.decrypt(r6)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            java.lang.String r6 = r6.trim()     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            r12.setTypeName(r6)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
        L94:
            int r6 = r2.getColumnIndex(r0)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            java.lang.String r6 = r2.getString(r6)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            r12.setTypeId(r6)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            int r6 = r2.getColumnIndex(r9)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            java.lang.String r6 = r2.getString(r6)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            r12.setVillageName(r6)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            if (r13 == 0) goto Lc2
            int r6 = r2.getColumnIndex(r8)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            java.lang.String r6 = r2.getString(r6)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            r12.setLatitude(r6)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            int r6 = r2.getColumnIndex(r7)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            java.lang.String r6 = r2.getString(r6)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            r12.setLongitude(r6)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
        Lc2:
            int r5 = r5 + 1
            goto L2b
        Lc6:
            r12.setData(r3)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            r1.add(r12)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            boolean r12 = r2.moveToNext()     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            if (r12 != 0) goto L1c
        Ld2:
            if (r2 == 0) goto Le2
            goto Ldf
        Ld5:
            r12 = move-exception
            goto Lf0
        Ld7:
            r12 = move-exception
            java.lang.String r13 = "GetDataFromDB"
            com.conceptglobal.pmc.utils.PLog.e(r13, r12)     // Catch: java.lang.Throwable -> Ld5
            if (r2 == 0) goto Le2
        Ldf:
            r2.close()
        Le2:
            com.conceptglobal.pmc.database.DataBaseHandler r12 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r12.closeDatabase()
            com.conceptglobal.pmc.database.GetDataFromDB$6 r12 = new com.conceptglobal.pmc.database.GetDataFromDB$6
            r12.<init>()
            java.util.Collections.sort(r1, r12)
            return r1
        Lf0:
            if (r2 == 0) goto Lf5
            r2.close()
        Lf5:
            com.conceptglobal.pmc.database.DataBaseHandler r13 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r13.closeDatabase()
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getFarmerBindData(java.lang.String, boolean):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:53:0x0144, code lost:
    
        if (r2 != null) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0154, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0159, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0151, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x014f, code lost:
    
        if (r2 == null) goto L47;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.conceptglobal.pmc.model.CustomListDisplayModel> getSelfAssignFarmersByKeyword(java.lang.String r14, java.lang.String r15) {
        /*
            Method dump skipped, instructions count: 357
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getSelfAssignFarmersByKeyword(java.lang.String, java.lang.String):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:64:0x0151, code lost:
    
        if (r2 != null) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0163, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
        java.util.Collections.sort(r1, new com.conceptglobal.pmc.database.GetDataFromDB.AnonymousClass7(r16));
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0172, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0160, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x015e, code lost:
    
        if (r2 == null) goto L66;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.conceptglobal.pmc.model.DashboardListModel> getRetailerBindDataDynamicRadiusNew(java.lang.String r17, boolean r18) {
        /*
            Method dump skipped, instructions count: 382
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getRetailerBindDataDynamicRadiusNew(java.lang.String, boolean):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:67:0x016f, code lost:
    
        if (r3 != null) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0181, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
        java.util.Collections.sort(r2, new com.conceptglobal.pmc.database.GetDataFromDB.AnonymousClass8(r16));
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0190, code lost:
    
        return r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x017e, code lost:
    
        r3.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x017c, code lost:
    
        if (r3 == null) goto L69;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.conceptglobal.pmc.model.DashboardListModel> getRetailerBindDataDynamicRadius(java.lang.String r17, boolean r18) {
        /*
            Method dump skipped, instructions count: 412
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getRetailerBindDataDynamicRadius(java.lang.String, boolean):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:73:0x0169, code lost:
    
        if (r2 != null) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0179, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
        java.util.Collections.sort(r1, new com.conceptglobal.pmc.database.GetDataFromDB.AnonymousClass9(r11));
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0186, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0176, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0174, code lost:
    
        if (r2 == null) goto L66;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.conceptglobal.pmc.model.DashboardListModel> addRretailersGetRetailersByKeyword(java.lang.String r12, java.lang.String r13) {
        /*
            Method dump skipped, instructions count: 402
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.addRretailersGetRetailersByKeyword(java.lang.String, java.lang.String):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x00a2, code lost:
    
        if (r2 != null) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00b2, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
        java.util.Collections.sort(r1, new com.conceptglobal.pmc.database.GetDataFromDB.AnonymousClass10(r9));
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00bf, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00af, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00ad, code lost:
    
        if (r2 == null) goto L35;
     */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0079 A[Catch: all -> 0x00a5, Exception -> 0x00a7, TryCatch #1 {Exception -> 0x00a7, blocks: (B:3:0x0008, B:5:0x0016, B:7:0x001c, B:9:0x002d, B:11:0x0033, B:14:0x0041, B:16:0x004d, B:19:0x0058, B:20:0x006f, B:22:0x0079, B:26:0x0060, B:24:0x0088, B:29:0x0096), top: B:2:0x0008, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0088 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.conceptglobal.pmc.model.CustomListDisplayModel> getRetailerBindData(java.lang.String r10) {
        /*
            r9 = this;
            java.lang.String r0 = "ContactId"
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            r2 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r3 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> La5 java.lang.Exception -> La7
            android.database.sqlite.SQLiteDatabase r3 = r3.openDatabase()     // Catch: java.lang.Throwable -> La5 java.lang.Exception -> La7
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r3     // Catch: java.lang.Throwable -> La5 java.lang.Exception -> La7
            android.database.Cursor r2 = r3.rawQuery(r10, r2)     // Catch: java.lang.Throwable -> La5 java.lang.Exception -> La7
            if (r2 == 0) goto La2
            boolean r10 = r2.moveToFirst()     // Catch: java.lang.Throwable -> La5 java.lang.Exception -> La7
            if (r10 == 0) goto La2
        L1c:
            com.conceptglobal.pmc.model.CustomListDisplayModel r10 = new com.conceptglobal.pmc.model.CustomListDisplayModel     // Catch: java.lang.Throwable -> La5 java.lang.Exception -> La7
            r10.<init>()     // Catch: java.lang.Throwable -> La5 java.lang.Exception -> La7
            java.util.ArrayList r3 = new java.util.ArrayList     // Catch: java.lang.Throwable -> La5 java.lang.Exception -> La7
            r3.<init>()     // Catch: java.lang.Throwable -> La5 java.lang.Exception -> La7
            int r4 = r2.getColumnCount()     // Catch: java.lang.Throwable -> La5 java.lang.Exception -> La7
            r5 = 0
        L2b:
            if (r5 >= r4) goto L96
            int r6 = r2.getColumnIndex(r0)     // Catch: java.lang.Throwable -> La5 java.lang.Exception -> La7
            if (r5 == r6) goto L88
            java.lang.String r6 = r2.getColumnName(r5)     // Catch: java.lang.Throwable -> La5 java.lang.Exception -> La7
            java.lang.String r7 = "Mobile"
            boolean r6 = r6.contains(r7)     // Catch: java.lang.Throwable -> La5 java.lang.Exception -> La7
            java.lang.String r7 = "RetailerShopName"
            if (r6 != 0) goto L60
            java.lang.String r6 = r2.getColumnName(r5)     // Catch: java.lang.Throwable -> La5 java.lang.Exception -> La7
            java.lang.String r8 = "ContactName"
            boolean r6 = r6.contains(r8)     // Catch: java.lang.Throwable -> La5 java.lang.Exception -> La7
            if (r6 != 0) goto L60
            java.lang.String r6 = r2.getColumnName(r5)     // Catch: java.lang.Throwable -> La5 java.lang.Exception -> La7
            boolean r6 = r6.contains(r7)     // Catch: java.lang.Throwable -> La5 java.lang.Exception -> La7
            if (r6 == 0) goto L58
            goto L60
        L58:
            java.lang.String r6 = r2.getString(r5)     // Catch: java.lang.Throwable -> La5 java.lang.Exception -> La7
            r3.add(r6)     // Catch: java.lang.Throwable -> La5 java.lang.Exception -> La7
            goto L6f
        L60:
            java.lang.String r6 = r2.getString(r5)     // Catch: java.lang.Throwable -> La5 java.lang.Exception -> La7
            java.lang.String r6 = com.conceptglobal.pmc.utils.Encryption.decrypt(r6)     // Catch: java.lang.Throwable -> La5 java.lang.Exception -> La7
            java.lang.String r6 = r6.trim()     // Catch: java.lang.Throwable -> La5 java.lang.Exception -> La7
            r3.add(r6)     // Catch: java.lang.Throwable -> La5 java.lang.Exception -> La7
        L6f:
            java.lang.String r6 = r2.getColumnName(r5)     // Catch: java.lang.Throwable -> La5 java.lang.Exception -> La7
            boolean r6 = r6.contains(r7)     // Catch: java.lang.Throwable -> La5 java.lang.Exception -> La7
            if (r6 == 0) goto L88
            java.lang.String r6 = r2.getString(r5)     // Catch: java.lang.Throwable -> La5 java.lang.Exception -> La7
            java.lang.String r6 = com.conceptglobal.pmc.utils.Encryption.decrypt(r6)     // Catch: java.lang.Throwable -> La5 java.lang.Exception -> La7
            java.lang.String r6 = r6.trim()     // Catch: java.lang.Throwable -> La5 java.lang.Exception -> La7
            r10.setTypeName(r6)     // Catch: java.lang.Throwable -> La5 java.lang.Exception -> La7
        L88:
            int r6 = r2.getColumnIndex(r0)     // Catch: java.lang.Throwable -> La5 java.lang.Exception -> La7
            java.lang.String r6 = r2.getString(r6)     // Catch: java.lang.Throwable -> La5 java.lang.Exception -> La7
            r10.setTypeId(r6)     // Catch: java.lang.Throwable -> La5 java.lang.Exception -> La7
            int r5 = r5 + 1
            goto L2b
        L96:
            r10.setData(r3)     // Catch: java.lang.Throwable -> La5 java.lang.Exception -> La7
            r1.add(r10)     // Catch: java.lang.Throwable -> La5 java.lang.Exception -> La7
            boolean r10 = r2.moveToNext()     // Catch: java.lang.Throwable -> La5 java.lang.Exception -> La7
            if (r10 != 0) goto L1c
        La2:
            if (r2 == 0) goto Lb2
            goto Laf
        La5:
            r10 = move-exception
            goto Lc0
        La7:
            r10 = move-exception
            java.lang.String r0 = "GetDataFromDB"
            com.conceptglobal.pmc.utils.PLog.e(r0, r10)     // Catch: java.lang.Throwable -> La5
            if (r2 == 0) goto Lb2
        Laf:
            r2.close()
        Lb2:
            com.conceptglobal.pmc.database.DataBaseHandler r10 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r10.closeDatabase()
            com.conceptglobal.pmc.database.GetDataFromDB$10 r10 = new com.conceptglobal.pmc.database.GetDataFromDB$10
            r10.<init>()
            java.util.Collections.sort(r1, r10)
            return r1
        Lc0:
            if (r2 == 0) goto Lc5
            r2.close()
        Lc5:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getRetailerBindData(java.lang.String):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x00d2, code lost:
    
        if (r2 != null) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00e2, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
        java.util.Collections.sort(r1, new com.conceptglobal.pmc.database.GetDataFromDB.AnonymousClass11(r10));
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00ef, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00df, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00dd, code lost:
    
        if (r2 == null) goto L36;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.conceptglobal.pmc.model.CustomListDisplayModel> selfAssignGetRetailersByKeyword(java.lang.String r11, java.lang.String r12) {
        /*
            r10 = this;
            java.lang.String r0 = "Mobile"
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            r2 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r3 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            android.database.sqlite.SQLiteDatabase r3 = r3.openDatabase()     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r3     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            android.database.Cursor r2 = r3.rawQuery(r11, r2)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            if (r2 == 0) goto Ld2
            boolean r11 = r2.moveToFirst()     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            if (r11 == 0) goto Ld2
        L1c:
            com.conceptglobal.pmc.model.CustomListDisplayModel r11 = new com.conceptglobal.pmc.model.CustomListDisplayModel     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            r11.<init>()     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            java.util.ArrayList r3 = new java.util.ArrayList     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            r3.<init>()     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            int r4 = r2.getColumnCount()     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            r5 = 0
        L2b:
            if (r5 >= r4) goto Lc6
            java.lang.String r6 = r2.getColumnName(r5)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            boolean r6 = r6.contains(r0)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            java.lang.String r7 = "RetailerShopName"
            java.lang.String r8 = "ContactName"
            if (r6 != 0) goto L4f
            java.lang.String r6 = r2.getColumnName(r5)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            boolean r6 = r6.contains(r8)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            if (r6 != 0) goto L4f
            java.lang.String r6 = r2.getColumnName(r5)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            boolean r6 = r6.contains(r7)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            if (r6 == 0) goto Lc2
        L4f:
            java.lang.String r6 = r2.getString(r5)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            java.lang.String r6 = com.conceptglobal.pmc.utils.Encryption.decrypt(r6)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            java.lang.String r6 = r6.trim()     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            java.lang.String r9 = r6.toLowerCase()     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            boolean r9 = r9.contains(r12)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            if (r9 == 0) goto Lc2
            r3.add(r6)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            java.lang.String r6 = r2.getColumnName(r5)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            boolean r6 = r6.contains(r0)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            if (r6 == 0) goto L85
            int r6 = r2.getColumnIndex(r8)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            java.lang.String r6 = r2.getString(r6)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            java.lang.String r6 = com.conceptglobal.pmc.utils.Encryption.decrypt(r6)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            java.lang.String r6 = r6.trim()     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            r3.add(r6)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
        L85:
            java.lang.String r6 = r2.getColumnName(r5)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            boolean r6 = r6.contains(r8)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            if (r6 == 0) goto La2
            int r6 = r2.getColumnIndex(r0)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            java.lang.String r6 = r2.getString(r6)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            java.lang.String r6 = com.conceptglobal.pmc.utils.Encryption.decrypt(r6)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            java.lang.String r6 = r6.trim()     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            r3.add(r6)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
        La2:
            int r6 = r2.getColumnIndex(r7)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            java.lang.String r6 = r2.getString(r6)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            java.lang.String r6 = r6.trim()     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            java.lang.String r6 = com.conceptglobal.pmc.utils.Encryption.decrypt(r6)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            r11.setTypeName(r6)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            java.lang.String r6 = "ContactId"
            int r6 = r2.getColumnIndex(r6)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            java.lang.String r6 = r2.getString(r6)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            r11.setTypeId(r6)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
        Lc2:
            int r5 = r5 + 1
            goto L2b
        Lc6:
            r11.setData(r3)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            r1.add(r11)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            boolean r11 = r2.moveToNext()     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            if (r11 != 0) goto L1c
        Ld2:
            if (r2 == 0) goto Le2
            goto Ldf
        Ld5:
            r11 = move-exception
            goto Lf0
        Ld7:
            r11 = move-exception
            java.lang.String r12 = "GetDataFromDB"
            com.conceptglobal.pmc.utils.PLog.e(r12, r11)     // Catch: java.lang.Throwable -> Ld5
            if (r2 == 0) goto Le2
        Ldf:
            r2.close()
        Le2:
            com.conceptglobal.pmc.database.DataBaseHandler r11 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r11.closeDatabase()
            com.conceptglobal.pmc.database.GetDataFromDB$11 r11 = new com.conceptglobal.pmc.database.GetDataFromDB$11
            r11.<init>()
            java.util.Collections.sort(r1, r11)
            return r1
        Lf0:
            if (r2 == 0) goto Lf5
            r2.close()
        Lf5:
            com.conceptglobal.pmc.database.DataBaseHandler r12 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r12.closeDatabase()
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.selfAssignGetRetailersByKeyword(java.lang.String, java.lang.String):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x00bf, code lost:
    
        if (r2 != null) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00cf, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
        java.util.Collections.sort(r1, new com.conceptglobal.pmc.database.GetDataFromDB.AnonymousClass12(r9));
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00dc, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00cc, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00ca, code lost:
    
        if (r2 == null) goto L38;
     */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0079 A[Catch: all -> 0x00c2, Exception -> 0x00c4, TryCatch #1 {Exception -> 0x00c4, blocks: (B:3:0x0008, B:5:0x0016, B:7:0x001c, B:9:0x002d, B:11:0x0033, B:14:0x0041, B:16:0x004d, B:19:0x0058, B:20:0x006f, B:22:0x0079, B:23:0x0060, B:24:0x0088, B:26:0x0095, B:28:0x00af, B:31:0x00b3), top: B:2:0x0008, outer: #0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.conceptglobal.pmc.model.CustomListDisplayModel> getRetailerBindDataSAFilter(java.lang.String r10, boolean r11) {
        /*
            r9 = this;
            java.lang.String r0 = "ContactId"
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            r2 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r3 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> Lc2 java.lang.Exception -> Lc4
            android.database.sqlite.SQLiteDatabase r3 = r3.openDatabase()     // Catch: java.lang.Throwable -> Lc2 java.lang.Exception -> Lc4
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r3     // Catch: java.lang.Throwable -> Lc2 java.lang.Exception -> Lc4
            android.database.Cursor r2 = r3.rawQuery(r10, r2)     // Catch: java.lang.Throwable -> Lc2 java.lang.Exception -> Lc4
            if (r2 == 0) goto Lbf
            boolean r10 = r2.moveToFirst()     // Catch: java.lang.Throwable -> Lc2 java.lang.Exception -> Lc4
            if (r10 == 0) goto Lbf
        L1c:
            com.conceptglobal.pmc.model.CustomListDisplayModel r10 = new com.conceptglobal.pmc.model.CustomListDisplayModel     // Catch: java.lang.Throwable -> Lc2 java.lang.Exception -> Lc4
            r10.<init>()     // Catch: java.lang.Throwable -> Lc2 java.lang.Exception -> Lc4
            java.util.ArrayList r3 = new java.util.ArrayList     // Catch: java.lang.Throwable -> Lc2 java.lang.Exception -> Lc4
            r3.<init>()     // Catch: java.lang.Throwable -> Lc2 java.lang.Exception -> Lc4
            int r4 = r2.getColumnCount()     // Catch: java.lang.Throwable -> Lc2 java.lang.Exception -> Lc4
            r5 = 0
        L2b:
            if (r5 >= r4) goto Lb3
            int r6 = r2.getColumnIndex(r0)     // Catch: java.lang.Throwable -> Lc2 java.lang.Exception -> Lc4
            if (r5 == r6) goto L88
            java.lang.String r6 = r2.getColumnName(r5)     // Catch: java.lang.Throwable -> Lc2 java.lang.Exception -> Lc4
            java.lang.String r7 = "Mobile"
            boolean r6 = r6.contains(r7)     // Catch: java.lang.Throwable -> Lc2 java.lang.Exception -> Lc4
            java.lang.String r7 = "RetailerShopName"
            if (r6 != 0) goto L60
            java.lang.String r6 = r2.getColumnName(r5)     // Catch: java.lang.Throwable -> Lc2 java.lang.Exception -> Lc4
            java.lang.String r8 = "ContactName"
            boolean r6 = r6.contains(r8)     // Catch: java.lang.Throwable -> Lc2 java.lang.Exception -> Lc4
            if (r6 != 0) goto L60
            java.lang.String r6 = r2.getColumnName(r5)     // Catch: java.lang.Throwable -> Lc2 java.lang.Exception -> Lc4
            boolean r6 = r6.contains(r7)     // Catch: java.lang.Throwable -> Lc2 java.lang.Exception -> Lc4
            if (r6 == 0) goto L58
            goto L60
        L58:
            java.lang.String r6 = r2.getString(r5)     // Catch: java.lang.Throwable -> Lc2 java.lang.Exception -> Lc4
            r3.add(r6)     // Catch: java.lang.Throwable -> Lc2 java.lang.Exception -> Lc4
            goto L6f
        L60:
            java.lang.String r6 = r2.getString(r5)     // Catch: java.lang.Throwable -> Lc2 java.lang.Exception -> Lc4
            java.lang.String r6 = com.conceptglobal.pmc.utils.Encryption.decrypt(r6)     // Catch: java.lang.Throwable -> Lc2 java.lang.Exception -> Lc4
            java.lang.String r6 = r6.trim()     // Catch: java.lang.Throwable -> Lc2 java.lang.Exception -> Lc4
            r3.add(r6)     // Catch: java.lang.Throwable -> Lc2 java.lang.Exception -> Lc4
        L6f:
            java.lang.String r6 = r2.getColumnName(r5)     // Catch: java.lang.Throwable -> Lc2 java.lang.Exception -> Lc4
            boolean r6 = r6.contains(r7)     // Catch: java.lang.Throwable -> Lc2 java.lang.Exception -> Lc4
            if (r6 == 0) goto L88
            java.lang.String r6 = r2.getString(r5)     // Catch: java.lang.Throwable -> Lc2 java.lang.Exception -> Lc4
            java.lang.String r6 = com.conceptglobal.pmc.utils.Encryption.decrypt(r6)     // Catch: java.lang.Throwable -> Lc2 java.lang.Exception -> Lc4
            java.lang.String r6 = r6.trim()     // Catch: java.lang.Throwable -> Lc2 java.lang.Exception -> Lc4
            r10.setTypeName(r6)     // Catch: java.lang.Throwable -> Lc2 java.lang.Exception -> Lc4
        L88:
            int r6 = r2.getColumnIndex(r0)     // Catch: java.lang.Throwable -> Lc2 java.lang.Exception -> Lc4
            java.lang.String r6 = r2.getString(r6)     // Catch: java.lang.Throwable -> Lc2 java.lang.Exception -> Lc4
            r10.setTypeId(r6)     // Catch: java.lang.Throwable -> Lc2 java.lang.Exception -> Lc4
            if (r11 == 0) goto Laf
            java.lang.String r6 = "Latitude"
            int r6 = r2.getColumnIndex(r6)     // Catch: java.lang.Throwable -> Lc2 java.lang.Exception -> Lc4
            java.lang.String r6 = r2.getString(r6)     // Catch: java.lang.Throwable -> Lc2 java.lang.Exception -> Lc4
            r10.setLatitude(r6)     // Catch: java.lang.Throwable -> Lc2 java.lang.Exception -> Lc4
            java.lang.String r6 = "Longitude"
            int r6 = r2.getColumnIndex(r6)     // Catch: java.lang.Throwable -> Lc2 java.lang.Exception -> Lc4
            java.lang.String r6 = r2.getString(r6)     // Catch: java.lang.Throwable -> Lc2 java.lang.Exception -> Lc4
            r10.setLongitude(r6)     // Catch: java.lang.Throwable -> Lc2 java.lang.Exception -> Lc4
        Laf:
            int r5 = r5 + 1
            goto L2b
        Lb3:
            r10.setData(r3)     // Catch: java.lang.Throwable -> Lc2 java.lang.Exception -> Lc4
            r1.add(r10)     // Catch: java.lang.Throwable -> Lc2 java.lang.Exception -> Lc4
            boolean r10 = r2.moveToNext()     // Catch: java.lang.Throwable -> Lc2 java.lang.Exception -> Lc4
            if (r10 != 0) goto L1c
        Lbf:
            if (r2 == 0) goto Lcf
            goto Lcc
        Lc2:
            r10 = move-exception
            goto Ldd
        Lc4:
            r10 = move-exception
            java.lang.String r11 = "GetDataFromDB"
            com.conceptglobal.pmc.utils.PLog.e(r11, r10)     // Catch: java.lang.Throwable -> Lc2
            if (r2 == 0) goto Lcf
        Lcc:
            r2.close()
        Lcf:
            com.conceptglobal.pmc.database.DataBaseHandler r10 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r10.closeDatabase()
            com.conceptglobal.pmc.database.GetDataFromDB$12 r10 = new com.conceptglobal.pmc.database.GetDataFromDB$12
            r10.<init>()
            java.util.Collections.sort(r1, r10)
            return r1
        Ldd:
            if (r2 == 0) goto Le2
            r2.close()
        Le2:
            com.conceptglobal.pmc.database.DataBaseHandler r11 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r11.closeDatabase()
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getRetailerBindDataSAFilter(java.lang.String, boolean):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0089, code lost:
    
        if (r2 != null) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0099, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
        java.util.Collections.sort(r1, new com.conceptglobal.pmc.database.GetDataFromDB.AnonymousClass13(r8));
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00a6, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0096, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0094, code lost:
    
        if (r2 == null) goto L31;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.conceptglobal.pmc.model.DashboardListModel> getRetailerBindDataDynamic1(java.lang.String r9) {
        /*
            r8 = this;
            java.lang.String r0 = "ContactId"
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            r2 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r3 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L8e
            android.database.sqlite.SQLiteDatabase r3 = r3.openDatabase()     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L8e
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r3     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L8e
            android.database.Cursor r2 = r3.rawQuery(r9, r2)     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L8e
            if (r2 == 0) goto L89
            boolean r9 = r2.moveToFirst()     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L8e
            if (r9 == 0) goto L89
        L1c:
            com.conceptglobal.pmc.model.DashboardListModel r9 = new com.conceptglobal.pmc.model.DashboardListModel     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L8e
            r9.<init>()     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L8e
            java.util.ArrayList r3 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L8e
            r3.<init>()     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L8e
            int r4 = r2.getColumnCount()     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L8e
            r5 = 0
        L2b:
            if (r5 >= r4) goto L7d
            int r6 = r2.getColumnIndex(r0)     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L8e
            if (r5 == r6) goto L6f
            java.lang.String r6 = r2.getColumnName(r5)     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L8e
            java.lang.String r7 = "Mobile"
            boolean r6 = r6.contains(r7)     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L8e
            if (r6 != 0) goto L60
            java.lang.String r6 = r2.getColumnName(r5)     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L8e
            java.lang.String r7 = "ContactName"
            boolean r6 = r6.contains(r7)     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L8e
            if (r6 != 0) goto L60
            java.lang.String r6 = r2.getColumnName(r5)     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L8e
            java.lang.String r7 = "RetailerShopName"
            boolean r6 = r6.contains(r7)     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L8e
            if (r6 == 0) goto L58
            goto L60
        L58:
            java.lang.String r6 = r2.getString(r5)     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L8e
            r3.add(r6)     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L8e
            goto L6f
        L60:
            java.lang.String r6 = r2.getString(r5)     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L8e
            java.lang.String r6 = com.conceptglobal.pmc.utils.Encryption.decrypt(r6)     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L8e
            java.lang.String r6 = r6.trim()     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L8e
            r3.add(r6)     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L8e
        L6f:
            int r6 = r2.getColumnIndex(r0)     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L8e
            java.lang.String r6 = r2.getString(r6)     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L8e
            r9.setDraftId(r6)     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L8e
            int r5 = r5 + 1
            goto L2b
        L7d:
            r9.setData(r3)     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L8e
            r1.add(r9)     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L8e
            boolean r9 = r2.moveToNext()     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L8e
            if (r9 != 0) goto L1c
        L89:
            if (r2 == 0) goto L99
            goto L96
        L8c:
            r9 = move-exception
            goto La7
        L8e:
            r9 = move-exception
            java.lang.String r0 = "GetDataFromDB"
            com.conceptglobal.pmc.utils.PLog.e(r0, r9)     // Catch: java.lang.Throwable -> L8c
            if (r2 == 0) goto L99
        L96:
            r2.close()
        L99:
            com.conceptglobal.pmc.database.DataBaseHandler r9 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r9.closeDatabase()
            com.conceptglobal.pmc.database.GetDataFromDB$13 r9 = new com.conceptglobal.pmc.database.GetDataFromDB$13
            r9.<init>()
            java.util.Collections.sort(r1, r9)
            return r1
        La7:
            if (r2 == 0) goto Lac
            r2.close()
        Lac:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getRetailerBindDataDynamic1(java.lang.String):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x007a, code lost:
    
        if (r1 != null) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x008a, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x008f, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0087, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0085, code lost:
    
        if (r1 == null) goto L17;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.conceptglobal.pmc.model.FarmerMaster> getFarmerBindDataStatic(java.lang.String r4) {
        /*
            r3 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r1 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r2 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L7d java.lang.Exception -> L7f
            android.database.sqlite.SQLiteDatabase r2 = r2.openDatabase()     // Catch: java.lang.Throwable -> L7d java.lang.Exception -> L7f
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r2     // Catch: java.lang.Throwable -> L7d java.lang.Exception -> L7f
            android.database.Cursor r1 = r2.rawQuery(r4, r1)     // Catch: java.lang.Throwable -> L7d java.lang.Exception -> L7f
            if (r1 == 0) goto L7a
            boolean r4 = r1.moveToFirst()     // Catch: java.lang.Throwable -> L7d java.lang.Exception -> L7f
            if (r4 == 0) goto L7a
        L1a:
            com.conceptglobal.pmc.model.FarmerMaster r4 = new com.conceptglobal.pmc.model.FarmerMaster     // Catch: java.lang.Throwable -> L7d java.lang.Exception -> L7f
            r4.<init>()     // Catch: java.lang.Throwable -> L7d java.lang.Exception -> L7f
            r2 = 0
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Throwable -> L7d java.lang.Exception -> L7f
            r4.setStateID(r2)     // Catch: java.lang.Throwable -> L7d java.lang.Exception -> L7f
            r2 = 1
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Throwable -> L7d java.lang.Exception -> L7f
            r4.setStateName(r2)     // Catch: java.lang.Throwable -> L7d java.lang.Exception -> L7f
            r2 = 2
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Throwable -> L7d java.lang.Exception -> L7f
            r4.setDistrictID(r2)     // Catch: java.lang.Throwable -> L7d java.lang.Exception -> L7f
            r2 = 3
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Throwable -> L7d java.lang.Exception -> L7f
            r4.setDistrictName(r2)     // Catch: java.lang.Throwable -> L7d java.lang.Exception -> L7f
            r2 = 4
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Throwable -> L7d java.lang.Exception -> L7f
            r4.setMandalID(r2)     // Catch: java.lang.Throwable -> L7d java.lang.Exception -> L7f
            r2 = 5
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Throwable -> L7d java.lang.Exception -> L7f
            r4.setMandalName(r2)     // Catch: java.lang.Throwable -> L7d java.lang.Exception -> L7f
            r2 = 6
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Throwable -> L7d java.lang.Exception -> L7f
            r4.setVillageId(r2)     // Catch: java.lang.Throwable -> L7d java.lang.Exception -> L7f
            r2 = 7
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Throwable -> L7d java.lang.Exception -> L7f
            r4.setVillageName(r2)     // Catch: java.lang.Throwable -> L7d java.lang.Exception -> L7f
            r2 = 8
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Throwable -> L7d java.lang.Exception -> L7f
            r4.setLatitude(r2)     // Catch: java.lang.Throwable -> L7d java.lang.Exception -> L7f
            r2 = 9
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Throwable -> L7d java.lang.Exception -> L7f
            r4.setLongitude(r2)     // Catch: java.lang.Throwable -> L7d java.lang.Exception -> L7f
            r0.add(r4)     // Catch: java.lang.Throwable -> L7d java.lang.Exception -> L7f
            boolean r4 = r1.moveToNext()     // Catch: java.lang.Throwable -> L7d java.lang.Exception -> L7f
            if (r4 != 0) goto L1a
        L7a:
            if (r1 == 0) goto L8a
            goto L87
        L7d:
            r4 = move-exception
            goto L90
        L7f:
            r4 = move-exception
            java.lang.String r2 = "GetDataFromDB"
            com.conceptglobal.pmc.utils.PLog.e(r2, r4)     // Catch: java.lang.Throwable -> L7d
            if (r1 == 0) goto L8a
        L87:
            r1.close()
        L8a:
            com.conceptglobal.pmc.database.DataBaseHandler r4 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r4.closeDatabase()
            return r0
        L90:
            if (r1 == 0) goto L95
            r1.close()
        L95:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getFarmerBindDataStatic(java.lang.String):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x00d2, code lost:
    
        if (r1 != null) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00e2, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00e7, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00df, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00dd, code lost:
    
        if (r1 == null) goto L41;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.conceptglobal.pmc.model.DealerMaster> getRetailerBindDataStatic(java.lang.String r6) {
        /*
            r5 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r1 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r2 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            android.database.sqlite.SQLiteDatabase r2 = r2.openDatabase()     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r2     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            android.database.Cursor r1 = r2.rawQuery(r6, r1)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            if (r1 == 0) goto Ld2
            boolean r6 = r1.moveToFirst()     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            if (r6 == 0) goto Ld2
        L1a:
            com.conceptglobal.pmc.model.DealerMaster r6 = new com.conceptglobal.pmc.model.DealerMaster     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            r6.<init>()     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            r2 = 0
            java.lang.String r3 = r1.getString(r2)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            java.lang.String r4 = "0"
            if (r3 == 0) goto L37
            java.lang.String r3 = r1.getString(r2)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            int r3 = r3.length()     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            if (r3 <= 0) goto L37
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            goto L38
        L37:
            r2 = r4
        L38:
            int r2 = java.lang.Integer.parseInt(r2)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            r6.setStateId(r2)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            r2 = 1
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            r6.setStateName(r2)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            r2 = 2
            java.lang.String r3 = r1.getString(r2)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            if (r3 == 0) goto L5d
            java.lang.String r3 = r1.getString(r2)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            int r3 = r3.length()     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            if (r3 <= 0) goto L5d
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            goto L5e
        L5d:
            r2 = r4
        L5e:
            int r2 = java.lang.Integer.parseInt(r2)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            r6.setDistrictId(r2)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            r2 = 3
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            r6.setDistrictName(r2)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            r2 = 4
            java.lang.String r3 = r1.getString(r2)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            if (r3 == 0) goto L83
            java.lang.String r3 = r1.getString(r2)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            int r3 = r3.length()     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            if (r3 <= 0) goto L83
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            goto L84
        L83:
            r2 = r4
        L84:
            int r2 = java.lang.Integer.parseInt(r2)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            r6.setMandalId(r2)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            r2 = 5
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            r6.setMandalName(r2)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            r2 = 6
            java.lang.String r3 = r1.getString(r2)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            if (r3 == 0) goto La8
            java.lang.String r3 = r1.getString(r2)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            int r3 = r3.length()     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            if (r3 <= 0) goto La8
            java.lang.String r4 = r1.getString(r2)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
        La8:
            int r2 = java.lang.Integer.parseInt(r4)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            r6.setVillageId(r2)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            r2 = 7
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            r6.setVillageName(r2)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            r2 = 8
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            r6.setLatitude(r2)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            r2 = 9
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            r6.setLongitude(r2)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            r0.add(r6)     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            boolean r6 = r1.moveToNext()     // Catch: java.lang.Throwable -> Ld5 java.lang.Exception -> Ld7
            if (r6 != 0) goto L1a
        Ld2:
            if (r1 == 0) goto Le2
            goto Ldf
        Ld5:
            r6 = move-exception
            goto Le8
        Ld7:
            r6 = move-exception
            java.lang.String r2 = "GetDataFromDB"
            com.conceptglobal.pmc.utils.PLog.e(r2, r6)     // Catch: java.lang.Throwable -> Ld5
            if (r1 == 0) goto Le2
        Ldf:
            r1.close()
        Le2:
            com.conceptglobal.pmc.database.DataBaseHandler r6 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r6.closeDatabase()
            return r0
        Le8:
            if (r1 == 0) goto Led
            r1.close()
        Led:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getRetailerBindDataStatic(java.lang.String):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0087, code lost:
    
        if (r2 != null) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0095, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x009a, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0092, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0090, code lost:
    
        if (r2 == null) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.conceptglobal.pmc.model.FarmerMaster> getFarnerRegistrationDetails(java.lang.String r6) {
        /*
            r5 = this;
            java.lang.String r0 = "getFarmerAssignmentDetails"
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            r2 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r3 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L8a java.lang.Exception -> L8c
            android.database.sqlite.SQLiteDatabase r3 = r3.openDatabase()     // Catch: java.lang.Throwable -> L8a java.lang.Exception -> L8c
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r3     // Catch: java.lang.Throwable -> L8a java.lang.Exception -> L8c
            android.database.Cursor r2 = r3.rawQuery(r6, r2)     // Catch: java.lang.Throwable -> L8a java.lang.Exception -> L8c
            if (r2 == 0) goto L87
            int r6 = r2.getCount()     // Catch: java.lang.Throwable -> L8a java.lang.Exception -> L8c
            if (r6 <= 0) goto L87
            boolean r6 = r2.moveToFirst()     // Catch: java.lang.Throwable -> L8a java.lang.Exception -> L8c
            if (r6 == 0) goto L87
        L22:
            r6 = 0
            com.conceptglobal.pmc.model.FarmerMaster r3 = new com.conceptglobal.pmc.model.FarmerMaster     // Catch: java.lang.Exception -> L7d java.lang.Throwable -> L8a
            r3.<init>()     // Catch: java.lang.Exception -> L7d java.lang.Throwable -> L8a
            int r4 = r2.getInt(r6)     // Catch: java.lang.Exception -> L7d java.lang.Throwable -> L8a
            r3.setFarmerID(r4)     // Catch: java.lang.Exception -> L7d java.lang.Throwable -> L8a
            r4 = 1
            java.lang.String r4 = r2.getString(r4)     // Catch: java.lang.Exception -> L7d java.lang.Throwable -> L8a
            r3.setRespondentNo(r4)     // Catch: java.lang.Exception -> L7d java.lang.Throwable -> L8a
            r4 = 2
            java.lang.String r4 = r2.getString(r4)     // Catch: java.lang.Exception -> L7d java.lang.Throwable -> L8a
            r3.setUniqueId(r4)     // Catch: java.lang.Exception -> L7d java.lang.Throwable -> L8a
            r4 = 3
            java.lang.String r4 = r2.getString(r4)     // Catch: java.lang.Exception -> L7d java.lang.Throwable -> L8a
            r3.setFarmerName(r4)     // Catch: java.lang.Exception -> L7d java.lang.Throwable -> L8a
            r4 = 4
            java.lang.String r4 = r2.getString(r4)     // Catch: java.lang.Exception -> L7d java.lang.Throwable -> L8a
            r3.setCONumber(r4)     // Catch: java.lang.Exception -> L7d java.lang.Throwable -> L8a
            r4 = 5
            java.lang.String r4 = r2.getString(r4)     // Catch: java.lang.Exception -> L7d java.lang.Throwable -> L8a
            r3.setSWDName(r4)     // Catch: java.lang.Exception -> L7d java.lang.Throwable -> L8a
            r4 = 6
            java.lang.String r4 = r2.getString(r4)     // Catch: java.lang.Exception -> L7d java.lang.Throwable -> L8a
            r3.setPINCODE(r4)     // Catch: java.lang.Exception -> L7d java.lang.Throwable -> L8a
            r4 = 7
            java.lang.String r4 = r2.getString(r4)     // Catch: java.lang.Exception -> L7d java.lang.Throwable -> L8a
            r3.setLandMark(r4)     // Catch: java.lang.Exception -> L7d java.lang.Throwable -> L8a
            r4 = 8
            java.lang.String r4 = r2.getString(r4)     // Catch: java.lang.Exception -> L7d java.lang.Throwable -> L8a
            r3.setEmail(r4)     // Catch: java.lang.Exception -> L7d java.lang.Throwable -> L8a
            r4 = 9
            java.lang.String r4 = r2.getString(r4)     // Catch: java.lang.Exception -> L7d java.lang.Throwable -> L8a
            r3.setEducation(r4)     // Catch: java.lang.Exception -> L7d java.lang.Throwable -> L8a
            r1.add(r3)     // Catch: java.lang.Exception -> L7d java.lang.Throwable -> L8a
            goto L81
        L7d:
            r3 = move-exception
            com.conceptglobal.pmc.utils.PLog.e(r0, r3, r6)     // Catch: java.lang.Throwable -> L8a java.lang.Exception -> L8c
        L81:
            boolean r6 = r2.moveToNext()     // Catch: java.lang.Throwable -> L8a java.lang.Exception -> L8c
            if (r6 != 0) goto L22
        L87:
            if (r2 == 0) goto L95
            goto L92
        L8a:
            r6 = move-exception
            goto L9b
        L8c:
            r6 = move-exception
            com.conceptglobal.pmc.utils.PLog.e(r0, r6)     // Catch: java.lang.Throwable -> L8a
            if (r2 == 0) goto L95
        L92:
            r2.close()
        L95:
            com.conceptglobal.pmc.database.DataBaseHandler r6 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r6.closeDatabase()
            return r1
        L9b:
            if (r2 == 0) goto La0
            r2.close()
        La0:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getFarnerRegistrationDetails(java.lang.String):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0057, code lost:
    
        if (r2 != null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0065, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
        java.util.Collections.sort(r1, new com.conceptglobal.pmc.database.GetDataFromDB.AnonymousClass14(r4));
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0072, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0062, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0060, code lost:
    
        if (r2 == null) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.conceptglobal.pmc.model.ReportsActivityModel> getReportsList(java.lang.String r5) {
        /*
            r4 = this;
            java.lang.String r0 = "Getting  details :: "
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            r2 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r3 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L5a java.lang.Exception -> L5c
            android.database.sqlite.SQLiteDatabase r3 = r3.openDatabase()     // Catch: java.lang.Throwable -> L5a java.lang.Exception -> L5c
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r3     // Catch: java.lang.Throwable -> L5a java.lang.Exception -> L5c
            android.database.Cursor r2 = r3.rawQuery(r5, r2)     // Catch: java.lang.Throwable -> L5a java.lang.Exception -> L5c
            if (r2 == 0) goto L57
            int r5 = r2.getCount()     // Catch: java.lang.Throwable -> L5a java.lang.Exception -> L5c
            if (r5 <= 0) goto L57
            boolean r5 = r2.moveToFirst()     // Catch: java.lang.Throwable -> L5a java.lang.Exception -> L5c
            if (r5 == 0) goto L57
        L22:
            com.conceptglobal.pmc.model.ReportsActivityModel r5 = new com.conceptglobal.pmc.model.ReportsActivityModel     // Catch: java.lang.Exception -> L4d java.lang.Throwable -> L5a
            r5.<init>()     // Catch: java.lang.Exception -> L4d java.lang.Throwable -> L5a
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r3 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType0     // Catch: java.lang.Exception -> L4d java.lang.Throwable -> L5a
            java.lang.Integer r3 = r3.value()     // Catch: java.lang.Exception -> L4d java.lang.Throwable -> L5a
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> L4d java.lang.Throwable -> L5a
            int r3 = r2.getInt(r3)     // Catch: java.lang.Exception -> L4d java.lang.Throwable -> L5a
            r5.setActivityID(r3)     // Catch: java.lang.Exception -> L4d java.lang.Throwable -> L5a
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r3 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType1     // Catch: java.lang.Exception -> L4d java.lang.Throwable -> L5a
            java.lang.Integer r3 = r3.value()     // Catch: java.lang.Exception -> L4d java.lang.Throwable -> L5a
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> L4d java.lang.Throwable -> L5a
            java.lang.String r3 = r2.getString(r3)     // Catch: java.lang.Exception -> L4d java.lang.Throwable -> L5a
            r5.setActivityName(r3)     // Catch: java.lang.Exception -> L4d java.lang.Throwable -> L5a
            r1.add(r5)     // Catch: java.lang.Exception -> L4d java.lang.Throwable -> L5a
            goto L51
        L4d:
            r5 = move-exception
            com.conceptglobal.pmc.utils.PLog.e(r0, r5)     // Catch: java.lang.Throwable -> L5a java.lang.Exception -> L5c
        L51:
            boolean r5 = r2.moveToNext()     // Catch: java.lang.Throwable -> L5a java.lang.Exception -> L5c
            if (r5 != 0) goto L22
        L57:
            if (r2 == 0) goto L65
            goto L62
        L5a:
            r5 = move-exception
            goto L73
        L5c:
            r5 = move-exception
            com.conceptglobal.pmc.utils.PLog.e(r0, r5)     // Catch: java.lang.Throwable -> L5a
            if (r2 == 0) goto L65
        L62:
            r2.close()
        L65:
            com.conceptglobal.pmc.database.DataBaseHandler r5 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r5.closeDatabase()
            com.conceptglobal.pmc.database.GetDataFromDB$14 r5 = new com.conceptglobal.pmc.database.GetDataFromDB$14
            r5.<init>()
            java.util.Collections.sort(r1, r5)
            return r1
        L73:
            if (r2 == 0) goto L78
            r2.close()
        L78:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getReportsList(java.lang.String):java.util.List");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0029 A[DONT_GENERATE] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int getPictureId(java.lang.String r3) throws java.lang.Exception {
        /*
            r2 = this;
            r0 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r1 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L32 java.lang.Exception -> L34
            android.database.sqlite.SQLiteDatabase r1 = r1.openDatabase()     // Catch: java.lang.Throwable -> L32 java.lang.Exception -> L34
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r1     // Catch: java.lang.Throwable -> L32 java.lang.Exception -> L34
            android.database.Cursor r0 = r1.rawQuery(r3, r0)     // Catch: java.lang.Throwable -> L32 java.lang.Exception -> L34
            if (r0 == 0) goto L26
            boolean r3 = r0.moveToFirst()     // Catch: java.lang.Throwable -> L32 java.lang.Exception -> L34
            if (r3 == 0) goto L26
            java.lang.String r3 = "ImageId"
            int r3 = r0.getColumnIndex(r3)     // Catch: java.lang.Exception -> L20 java.lang.Throwable -> L32
            int r3 = r0.getInt(r3)     // Catch: java.lang.Exception -> L20 java.lang.Throwable -> L32
            goto L27
        L20:
            r3 = move-exception
            java.lang.String r1 = "GetDataFromDB"
            com.conceptglobal.pmc.utils.PLog.e(r1, r3)     // Catch: java.lang.Throwable -> L32 java.lang.Exception -> L34
        L26:
            r3 = 0
        L27:
            if (r0 == 0) goto L2c
            r0.close()
        L2c:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            return r3
        L32:
            r3 = move-exception
            goto L36
        L34:
            r3 = move-exception
            throw r3     // Catch: java.lang.Throwable -> L32
        L36:
            if (r0 == 0) goto L3b
            r0.close()
        L3b:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getPictureId(java.lang.String):int");
    }

    public long getMaxId(String str, String str2) throws Exception {
        Cursor cursor = null;
        r1 = null;
        String string = null;
        try {
            try {
                SQLiteDatabase openDatabase = dbInstance.openDatabase();
                sqliteDatabase = openDatabase;
                Cursor rawQuery = openDatabase.rawQuery("SELECT MAX(" + str2 + ") FROM " + str, null);
                if (rawQuery != null) {
                    try {
                        if (rawQuery.moveToFirst()) {
                            string = rawQuery.getString(ConstantDeclarations.Enumaration.mRequestType0.value().intValue());
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
                if (rawQuery != null) {
                    rawQuery.close();
                }
                dbInstance.closeDatabase();
                if (string != null) {
                    return Long.valueOf(string).longValue();
                }
                return 0L;
            } catch (Exception e2) {
                throw e2;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public long getLookupValue(String str) throws Exception {
        Cursor cursor = null;
        try {
            try {
                SQLiteDatabase openDatabase = dbInstance.openDatabase();
                sqliteDatabase = openDatabase;
                cursor = openDatabase.rawQuery(str, null);
                if (cursor != null && cursor.moveToFirst()) {
                    return cursor.getLong(ConstantDeclarations.Enumaration.mRequestType0.value().intValue());
                }
                if (cursor != null) {
                    cursor.close();
                }
                dbInstance.closeDatabase();
                return 0L;
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

    public String getVersionNumber() {
        try {
            return getInstance().getSingleValue(Queries.getVersionNumberQry());
        } catch (Exception e) {
            PLog.e(TAG, e);
            return null;
        }
    }

    public List<PatchDetailsModel> getLatestPatchDetails(String str) throws Exception {
        ArrayList arrayList = new ArrayList();
        Cursor cursor = null;
        try {
            try {
                SQLiteDatabase openDatabase = dbInstance.openDatabase();
                sqliteDatabase = openDatabase;
                cursor = openDatabase.rawQuery(str, null);
                if (cursor != null && cursor.moveToFirst()) {
                    do {
                        PatchDetailsModel patchDetailsModel = new PatchDetailsModel();
                        patchDetailsModel.setPatchType(cursor.getString(0));
                        patchDetailsModel.setStatus(cursor.getString(1));
                        patchDetailsModel.setPatchPath(cursor.getString(2));
                        patchDetailsModel.setDiffDays(UtilDeclarations.diffDays(cursor.getString(3), "yyyy-MM-dd"));
                        arrayList.add(patchDetailsModel);
                    } while (cursor.moveToNext());
                }
                return arrayList;
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

    public int getTotalVideoReportingRecords() throws Exception {
        return getInstance().getcount(Queries.getInstance().getPendingVideosCountQry());
    }

    public int getTotalPictureReportingRecords() throws Exception {
        return getInstance().getcount(Queries.getInstance().getPendingPicturesCountQry());
    }

    public int getLogsCount() throws Exception {
        return getInstance().getcount(Queries.getInstance().getSyncErrorLogsCountQry()) + getInstance().getcount(Queries.getInstance().getLog4netCountQry());
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0021, code lost:
    
        if (r1 != null) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0031, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0036, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x002e, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x002c, code lost:
    
        if (r1 == null) goto L17;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.conceptglobal.pmc.model.FarmerMasterSyncModel> getListFarmereMasterDetails(java.lang.String r4) {
        /*
            r3 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r1 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r2 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L24 java.lang.Exception -> L26
            android.database.sqlite.SQLiteDatabase r2 = r2.openDatabase()     // Catch: java.lang.Throwable -> L24 java.lang.Exception -> L26
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r2     // Catch: java.lang.Throwable -> L24 java.lang.Exception -> L26
            android.database.Cursor r1 = r2.rawQuery(r4, r1)     // Catch: java.lang.Throwable -> L24 java.lang.Exception -> L26
            if (r1 == 0) goto L21
            boolean r4 = r1.moveToFirst()     // Catch: java.lang.Throwable -> L24 java.lang.Exception -> L26
            if (r4 == 0) goto L21
            java.lang.Class<com.conceptglobal.pmc.model.FarmerMasterSyncModel> r4 = com.conceptglobal.pmc.model.FarmerMasterSyncModel.class
            java.util.List r4 = r3.setAllSetters(r4, r1)     // Catch: java.lang.Throwable -> L24 java.lang.Exception -> L26
            r0 = r4
        L21:
            if (r1 == 0) goto L31
            goto L2e
        L24:
            r4 = move-exception
            goto L37
        L26:
            r4 = move-exception
            java.lang.String r2 = "GetDataFromDB"
            com.conceptglobal.pmc.utils.PLog.e(r2, r4)     // Catch: java.lang.Throwable -> L24
            if (r1 == 0) goto L31
        L2e:
            r1.close()
        L31:
            com.conceptglobal.pmc.database.DataBaseHandler r4 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r4.closeDatabase()
            return r0
        L37:
            if (r1 == 0) goto L3c
            r1.close()
        L3c:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getListFarmereMasterDetails(java.lang.String):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0066, code lost:
    
        r13.setAccessible(true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x007f, code lost:
    
        if (r9.getType().getSimpleName().toLowerCase(java.util.Locale.getDefault()).endsWith("int") == false) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0081, code lost:
    
        r13.invoke(r3, java.lang.Integer.valueOf(r18.getInt(r18.getColumnIndex(r9.getName()))));
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00b1, code lost:
    
        if (r9.getType().getSimpleName().toLowerCase(java.util.Locale.getDefault()).endsWith("long") == false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00b3, code lost:
    
        r13.invoke(r3, java.lang.Long.valueOf(r18.getLong(r18.getColumnIndex(r9.getName()))));
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00e3, code lost:
    
        if (r9.getType().getSimpleName().toLowerCase(java.util.Locale.getDefault()).endsWith("double") == false) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00e5, code lost:
    
        r13.invoke(r3, java.lang.Double.valueOf(r18.getDouble(r18.getColumnIndex(r9.getName()))));
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0114, code lost:
    
        if (r9.getType().getSimpleName().toLowerCase(java.util.Locale.getDefault()).endsWith("float") == false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0116, code lost:
    
        r13.invoke(r3, java.lang.Float.valueOf(r18.getFloat(r18.getColumnIndex(r9.getName()))));
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x013b, code lost:
    
        if (r18.getString(r18.getColumnIndex(r9.getName())) != null) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x014a, code lost:
    
        r13.invoke(r3, r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x013e, code lost:
    
        r8 = r18.getString(r18.getColumnIndex(r9.getName()));
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0153, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0154, code lost:
    
        com.conceptglobal.pmc.utils.PLog.e(com.conceptglobal.pmc.database.GetDataFromDB.TAG, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0157, code lost:
    
        throw r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.util.List<com.conceptglobal.pmc.model.FarmerMasterSyncModel> setAllSetters(java.lang.Class<?> r17, android.database.Cursor r18) throws java.lang.Exception {
        /*
            Method dump skipped, instructions count: 391
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.setAllSetters(java.lang.Class, android.database.Cursor):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0021, code lost:
    
        if (r1 != null) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0031, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0036, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x002e, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x002c, code lost:
    
        if (r1 == null) goto L17;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.conceptglobal.pmc.model.DealerMaster> getListDealersDetails(java.lang.String r4) {
        /*
            r3 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r1 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r2 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L24 java.lang.Exception -> L26
            android.database.sqlite.SQLiteDatabase r2 = r2.openDatabase()     // Catch: java.lang.Throwable -> L24 java.lang.Exception -> L26
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r2     // Catch: java.lang.Throwable -> L24 java.lang.Exception -> L26
            android.database.Cursor r1 = r2.rawQuery(r4, r1)     // Catch: java.lang.Throwable -> L24 java.lang.Exception -> L26
            if (r1 == 0) goto L21
            boolean r4 = r1.moveToFirst()     // Catch: java.lang.Throwable -> L24 java.lang.Exception -> L26
            if (r4 == 0) goto L21
            java.lang.Class<com.conceptglobal.pmc.model.DealerMaster> r4 = com.conceptglobal.pmc.model.DealerMaster.class
            java.util.List r4 = r3.setAllSettersForDealerData(r4, r1)     // Catch: java.lang.Throwable -> L24 java.lang.Exception -> L26
            r0 = r4
        L21:
            if (r1 == 0) goto L31
            goto L2e
        L24:
            r4 = move-exception
            goto L37
        L26:
            r4 = move-exception
            java.lang.String r2 = "GetDataFromDB"
            com.conceptglobal.pmc.utils.PLog.e(r2, r4)     // Catch: java.lang.Throwable -> L24
            if (r1 == 0) goto L31
        L2e:
            r1.close()
        L31:
            com.conceptglobal.pmc.database.DataBaseHandler r4 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r4.closeDatabase()
            return r0
        L37:
            if (r1 == 0) goto L3c
            r1.close()
        L3c:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getListDealersDetails(java.lang.String):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0065, code lost:
    
        r12.setAccessible(true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x007e, code lost:
    
        if (r0.getType().getSimpleName().toLowerCase(java.util.Locale.getDefault()).endsWith("int") == false) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0080, code lost:
    
        r12.invoke(r4, java.lang.Integer.valueOf(r18.getInt(r18.getColumnIndex(r0.getName()))));
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00af, code lost:
    
        if (r0.getType().getSimpleName().toLowerCase(java.util.Locale.getDefault()).endsWith("long") == false) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00b1, code lost:
    
        r12.invoke(r4, java.lang.Long.valueOf(r18.getLong(r18.getColumnIndex(r0.getName()))));
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00e0, code lost:
    
        if (r0.getType().getSimpleName().toLowerCase(java.util.Locale.getDefault()).endsWith("double") == false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00e2, code lost:
    
        r12.invoke(r4, java.lang.Double.valueOf(r18.getDouble(r18.getColumnIndex(r0.getName()))));
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0111, code lost:
    
        if (r0.getType().getSimpleName().toLowerCase(java.util.Locale.getDefault()).endsWith("float") == false) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0113, code lost:
    
        r12.invoke(r4, java.lang.Float.valueOf(r18.getFloat(r18.getColumnIndex(r0.getName()))));
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0141, code lost:
    
        if (r0.getType().getSimpleName().toLowerCase(java.util.Locale.getDefault()).endsWith("boolean") == false) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0171, code lost:
    
        if (r18.getString(r18.getColumnIndex(r0.getName())) != null) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0173, code lost:
    
        r0 = "";
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0182, code lost:
    
        r12.invoke(r4, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0176, code lost:
    
        r0 = r18.getString(r18.getColumnIndex(r0.getName()));
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0143, code lost:
    
        r0 = java.lang.Boolean.parseBoolean(r18.getString(r18.getColumnIndex(r0.getName())));
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0154, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0155, code lost:
    
        com.conceptglobal.pmc.utils.PLog.e(com.conceptglobal.pmc.database.GetDataFromDB.TAG, r0);
        r0 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x018a, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x018b, code lost:
    
        com.conceptglobal.pmc.utils.PLog.e(com.conceptglobal.pmc.database.GetDataFromDB.TAG, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x018e, code lost:
    
        throw r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.util.List<com.conceptglobal.pmc.model.DealerMaster> setAllSettersForDealerData(java.lang.Class<?> r17, android.database.Cursor r18) throws java.lang.Exception {
        /*
            Method dump skipped, instructions count: 422
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.setAllSettersForDealerData(java.lang.Class, android.database.Cursor):java.util.List");
    }

    public MultiSelectData getMultiSelectData(String str) {
        Cursor rawQuery;
        Cursor cursor = null;
        r1 = null;
        r1 = null;
        MultiSelectData multiSelectData = null;
        try {
            try {
                SQLiteDatabase openDatabase = dbInstance.openDatabase();
                sqliteDatabase = openDatabase;
                rawQuery = openDatabase.rawQuery(str, null);
            } catch (Exception e) {
                throw e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            StringBuilder sb = new StringBuilder();
            StringBuilder sb2 = new StringBuilder();
            if (rawQuery != null && rawQuery.moveToFirst()) {
                do {
                    sb.append(rawQuery.getString(0));
                    sb.append(",");
                    sb2.append(rawQuery.getString(1));
                    sb2.append(",");
                } while (rawQuery.moveToNext());
                if (sb2.toString().length() > 0) {
                    if (sb.toString().length() > 0) {
                        sb.deleteCharAt(sb.length() - 1);
                    }
                    if (sb2.toString().length() > 0) {
                        sb2.deleteCharAt(sb2.length() - 1);
                    }
                    multiSelectData = new MultiSelectData();
                    multiSelectData.setIds(sb.toString());
                    multiSelectData.setNames(sb2.toString());
                }
            }
            if (rawQuery != null) {
                rawQuery.close();
            }
            dbInstance.closeDatabase();
            return multiSelectData;
        } catch (Exception e2) {
            throw e2;
        } catch (Throwable th2) {
            th = th2;
            cursor = rawQuery;
            if (cursor != null) {
                cursor.close();
            }
            dbInstance.closeDatabase();
            throw th;
        }
    }

    public List<TabEnable> getActiveTabsList(String str) {
        ArrayList arrayList = new ArrayList();
        Cursor cursor = null;
        try {
            try {
                SQLiteDatabase openDatabase = dbInstance.openDatabase();
                sqliteDatabase = openDatabase;
                cursor = openDatabase.rawQuery(str, null);
                if (cursor != null && cursor.moveToFirst()) {
                    do {
                        TabEnable tabEnable = new TabEnable();
                        tabEnable.setTabName(cursor.getString(0));
                        arrayList.add(tabEnable);
                    } while (cursor.moveToNext());
                }
                return arrayList;
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

    public String getInWhichTabGeoDetailsAvailable(String str) {
        String str2;
        Cursor cursor = null;
        try {
            try {
                SQLiteDatabase openDatabase = dbInstance.openDatabase();
                sqliteDatabase = openDatabase;
                cursor = openDatabase.rawQuery(str, null);
                if (cursor != null && cursor.moveToFirst()) {
                    do {
                        str2 = cursor.getString(0);
                    } while (cursor.moveToNext());
                } else {
                    str2 = "";
                }
                return str2;
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

    /* JADX WARN: Code restructure failed: missing block: B:19:0x00f1, code lost:
    
        if (r1 != null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0101, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0106, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00fe, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00fc, code lost:
    
        if (r1 == null) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.conceptglobal.pmc.model.DealerCompanyMapping> getDealerCompanyDetails(java.lang.String r5) {
        /*
            r4 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r1 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r2 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> Lf4 java.lang.Exception -> Lf6
            android.database.sqlite.SQLiteDatabase r2 = r2.openDatabase()     // Catch: java.lang.Throwable -> Lf4 java.lang.Exception -> Lf6
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r2     // Catch: java.lang.Throwable -> Lf4 java.lang.Exception -> Lf6
            android.database.Cursor r1 = r2.rawQuery(r5, r1)     // Catch: java.lang.Throwable -> Lf4 java.lang.Exception -> Lf6
            if (r1 == 0) goto Lf1
            int r5 = r1.getCount()     // Catch: java.lang.Throwable -> Lf4 java.lang.Exception -> Lf6
            if (r5 <= 0) goto Lf1
            boolean r5 = r1.moveToFirst()     // Catch: java.lang.Throwable -> Lf4 java.lang.Exception -> Lf6
            if (r5 == 0) goto Lf1
        L20:
            com.conceptglobal.pmc.model.DealerCompanyMapping r5 = new com.conceptglobal.pmc.model.DealerCompanyMapping     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf4
            r5.<init>()     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf4
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType0     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf4
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf4
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf4
            int r2 = r1.getInt(r2)     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf4
            r5.setMappingId(r2)     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf4
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType1     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf4
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf4
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf4
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf4
            r5.setContactId(r2)     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf4
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType2     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf4
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf4
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf4
            int r2 = r1.getInt(r2)     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf4
            r5.setCompanyId(r2)     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf4
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType3     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf4
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf4
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf4
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf4
            r5.setCompanyName(r2)     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf4
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType4     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf4
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf4
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf4
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf4
            r5.setCompanySales(r2)     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf4
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType5     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf4
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf4
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf4
            int r2 = r1.getInt(r2)     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf4
            r5.setCreatedBy(r2)     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf4
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType6     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf4
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf4
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf4
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf4
            r5.setCreatedDate(r2)     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf4
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType7     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf4
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf4
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf4
            int r2 = r1.getInt(r2)     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf4
            r5.setUpdatedBy(r2)     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf4
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType8     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf4
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf4
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf4
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf4
            r5.setUpdatedDate(r2)     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf4
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType9     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf4
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf4
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf4
            int r2 = r1.getInt(r2)     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf4
            r5.setPdaid(r2)     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf4
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType10     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf4
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf4
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf4
            int r2 = r1.getInt(r2)     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf4
            r5.setStatus(r2)     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf4
            r0.add(r5)     // Catch: java.lang.Exception -> Le4 java.lang.Throwable -> Lf4
            goto Leb
        Le4:
            r5 = move-exception
            java.lang.String r2 = "FarmerCropMapping"
            r3 = 0
            com.conceptglobal.pmc.utils.PLog.e(r2, r5, r3)     // Catch: java.lang.Throwable -> Lf4 java.lang.Exception -> Lf6
        Leb:
            boolean r5 = r1.moveToNext()     // Catch: java.lang.Throwable -> Lf4 java.lang.Exception -> Lf6
            if (r5 != 0) goto L20
        Lf1:
            if (r1 == 0) goto L101
            goto Lfe
        Lf4:
            r5 = move-exception
            goto L107
        Lf6:
            r5 = move-exception
            java.lang.String r2 = "Farmer Crop Mapping details"
            com.conceptglobal.pmc.utils.PLog.e(r2, r5)     // Catch: java.lang.Throwable -> Lf4
            if (r1 == 0) goto L101
        Lfe:
            r1.close()
        L101:
            com.conceptglobal.pmc.database.DataBaseHandler r5 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r5.closeDatabase()
            return r0
        L107:
            if (r1 == 0) goto L10c
            r1.close()
        L10c:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getDealerCompanyDetails(java.lang.String):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:85:0x033f, code lost:
    
        if (r1 != null) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x034f, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0354, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x034c, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x034a, code lost:
    
        if (r1 == null) goto L89;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.conceptglobal.pmc.model.DealerCropMapping> getDealerCropDetails(java.lang.String r6) {
        /*
            Method dump skipped, instructions count: 864
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getDealerCropDetails(java.lang.String):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0146, code lost:
    
        if (r1 != null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0156, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x015b, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0153, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0151, code lost:
    
        if (r1 == null) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.conceptglobal.pmc.model.DealerCropMapping> getDealerCropSalesDetails(java.lang.String r5) {
        /*
            Method dump skipped, instructions count: 359
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getDealerCropSalesDetails(java.lang.String):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0049, code lost:
    
        if (r2 != null) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0057, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x005e, code lost:
    
        return "";
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0054, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0052, code lost:
    
        if (r2 == null) goto L25;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String getSegmentName(int r6) {
        /*
            r5 = this;
            java.lang.String r0 = "SegmentName"
            java.lang.String r1 = "Select ActivitySegmentName from ActivitySegmentMaster where ActivitySegmentId ="
            r2 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r3 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4e
            android.database.sqlite.SQLiteDatabase r3 = r3.openDatabase()     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4e
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r3     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4e
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4e
            r4.<init>(r1)     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4e
            r4.append(r6)     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4e
            java.lang.String r6 = r4.toString()     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4e
            android.database.Cursor r2 = r3.rawQuery(r6, r2)     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4e
            if (r2 == 0) goto L49
            int r6 = r2.getCount()     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4e
            if (r6 <= 0) goto L49
            boolean r6 = r2.moveToFirst()     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4e
            if (r6 == 0) goto L49
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r6 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType0     // Catch: java.lang.Exception -> L44 java.lang.Throwable -> L4c
            java.lang.Integer r6 = r6.value()     // Catch: java.lang.Exception -> L44 java.lang.Throwable -> L4c
            int r6 = r6.intValue()     // Catch: java.lang.Exception -> L44 java.lang.Throwable -> L4c
            java.lang.String r6 = r2.getString(r6)     // Catch: java.lang.Exception -> L44 java.lang.Throwable -> L4c
            if (r2 == 0) goto L3e
            r2.close()
        L3e:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            return r6
        L44:
            r6 = move-exception
            r1 = 0
            com.conceptglobal.pmc.utils.PLog.e(r0, r6, r1)     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4e
        L49:
            if (r2 == 0) goto L57
            goto L54
        L4c:
            r6 = move-exception
            goto L5f
        L4e:
            r6 = move-exception
            com.conceptglobal.pmc.utils.PLog.e(r0, r6)     // Catch: java.lang.Throwable -> L4c
            if (r2 == 0) goto L57
        L54:
            r2.close()
        L57:
            com.conceptglobal.pmc.database.DataBaseHandler r6 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r6.closeDatabase()
            java.lang.String r6 = ""
            return r6
        L5f:
            if (r2 == 0) goto L64
            r2.close()
        L64:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getSegmentName(int):java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0049, code lost:
    
        if (r2 != null) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0057, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x005e, code lost:
    
        return "";
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0054, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0052, code lost:
    
        if (r2 == null) goto L25;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String getFBFSegmentName(int r6) {
        /*
            r5 = this;
            java.lang.String r0 = "SegmentName"
            java.lang.String r1 = "Select ActivitySegmentName from FBFActivitySegmentMaster where ActivitySegmentId ="
            r2 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r3 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4e
            android.database.sqlite.SQLiteDatabase r3 = r3.openDatabase()     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4e
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r3     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4e
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4e
            r4.<init>(r1)     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4e
            r4.append(r6)     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4e
            java.lang.String r6 = r4.toString()     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4e
            android.database.Cursor r2 = r3.rawQuery(r6, r2)     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4e
            if (r2 == 0) goto L49
            int r6 = r2.getCount()     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4e
            if (r6 <= 0) goto L49
            boolean r6 = r2.moveToFirst()     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4e
            if (r6 == 0) goto L49
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r6 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType0     // Catch: java.lang.Exception -> L44 java.lang.Throwable -> L4c
            java.lang.Integer r6 = r6.value()     // Catch: java.lang.Exception -> L44 java.lang.Throwable -> L4c
            int r6 = r6.intValue()     // Catch: java.lang.Exception -> L44 java.lang.Throwable -> L4c
            java.lang.String r6 = r2.getString(r6)     // Catch: java.lang.Exception -> L44 java.lang.Throwable -> L4c
            if (r2 == 0) goto L3e
            r2.close()
        L3e:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            return r6
        L44:
            r6 = move-exception
            r1 = 0
            com.conceptglobal.pmc.utils.PLog.e(r0, r6, r1)     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4e
        L49:
            if (r2 == 0) goto L57
            goto L54
        L4c:
            r6 = move-exception
            goto L5f
        L4e:
            r6 = move-exception
            com.conceptglobal.pmc.utils.PLog.e(r0, r6)     // Catch: java.lang.Throwable -> L4c
            if (r2 == 0) goto L57
        L54:
            r2.close()
        L57:
            com.conceptglobal.pmc.database.DataBaseHandler r6 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r6.closeDatabase()
            java.lang.String r6 = ""
            return r6
        L5f:
            if (r2 == 0) goto L64
            r2.close()
        L64:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getFBFSegmentName(int):java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x004e, code lost:
    
        if (r1 != null) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x005c, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0063, code lost:
    
        return "";
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0059, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0057, code lost:
    
        if (r1 == null) goto L25;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String getFBFActivityResolveStatus(long r5, int r7) {
        /*
            r4 = this;
            java.lang.String r7 = "SegmentName"
            java.lang.String r0 = "Select ResolvedStatus from FBFActivityResolveTrack where TransId ='"
            r1 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r2 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L51 java.lang.Exception -> L53
            android.database.sqlite.SQLiteDatabase r2 = r2.openDatabase()     // Catch: java.lang.Throwable -> L51 java.lang.Exception -> L53
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r2     // Catch: java.lang.Throwable -> L51 java.lang.Exception -> L53
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L51 java.lang.Exception -> L53
            r3.<init>(r0)     // Catch: java.lang.Throwable -> L51 java.lang.Exception -> L53
            r3.append(r5)     // Catch: java.lang.Throwable -> L51 java.lang.Exception -> L53
            java.lang.String r5 = "'"
            r3.append(r5)     // Catch: java.lang.Throwable -> L51 java.lang.Exception -> L53
            java.lang.String r5 = r3.toString()     // Catch: java.lang.Throwable -> L51 java.lang.Exception -> L53
            android.database.Cursor r1 = r2.rawQuery(r5, r1)     // Catch: java.lang.Throwable -> L51 java.lang.Exception -> L53
            if (r1 == 0) goto L4e
            int r5 = r1.getCount()     // Catch: java.lang.Throwable -> L51 java.lang.Exception -> L53
            if (r5 <= 0) goto L4e
            boolean r5 = r1.moveToFirst()     // Catch: java.lang.Throwable -> L51 java.lang.Exception -> L53
            if (r5 == 0) goto L4e
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r5 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType0     // Catch: java.lang.Exception -> L49 java.lang.Throwable -> L51
            java.lang.Integer r5 = r5.value()     // Catch: java.lang.Exception -> L49 java.lang.Throwable -> L51
            int r5 = r5.intValue()     // Catch: java.lang.Exception -> L49 java.lang.Throwable -> L51
            java.lang.String r5 = r1.getString(r5)     // Catch: java.lang.Exception -> L49 java.lang.Throwable -> L51
            if (r1 == 0) goto L43
            r1.close()
        L43:
            com.conceptglobal.pmc.database.DataBaseHandler r6 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r6.closeDatabase()
            return r5
        L49:
            r5 = move-exception
            r6 = 0
            com.conceptglobal.pmc.utils.PLog.e(r7, r5, r6)     // Catch: java.lang.Throwable -> L51 java.lang.Exception -> L53
        L4e:
            if (r1 == 0) goto L5c
            goto L59
        L51:
            r5 = move-exception
            goto L64
        L53:
            r5 = move-exception
            com.conceptglobal.pmc.utils.PLog.e(r7, r5)     // Catch: java.lang.Throwable -> L51
            if (r1 == 0) goto L5c
        L59:
            r1.close()
        L5c:
            com.conceptglobal.pmc.database.DataBaseHandler r5 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r5.closeDatabase()
            java.lang.String r5 = ""
            return r5
        L64:
            if (r1 == 0) goto L69
            r1.close()
        L69:
            com.conceptglobal.pmc.database.DataBaseHandler r6 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r6.closeDatabase()
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getFBFActivityResolveStatus(long, int):java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0049, code lost:
    
        if (r2 != null) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0057, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x005e, code lost:
    
        return "";
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0054, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0052, code lost:
    
        if (r2 == null) goto L25;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String getTSTSegmentName(int r6) {
        /*
            r5 = this;
            java.lang.String r0 = "SegmentName"
            java.lang.String r1 = "Select ActivitySegmentName from TSTActivitySegmentMaster where ActivitySegmentId ="
            r2 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r3 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4e
            android.database.sqlite.SQLiteDatabase r3 = r3.openDatabase()     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4e
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r3     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4e
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4e
            r4.<init>(r1)     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4e
            r4.append(r6)     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4e
            java.lang.String r6 = r4.toString()     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4e
            android.database.Cursor r2 = r3.rawQuery(r6, r2)     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4e
            if (r2 == 0) goto L49
            int r6 = r2.getCount()     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4e
            if (r6 <= 0) goto L49
            boolean r6 = r2.moveToFirst()     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4e
            if (r6 == 0) goto L49
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r6 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType0     // Catch: java.lang.Exception -> L44 java.lang.Throwable -> L4c
            java.lang.Integer r6 = r6.value()     // Catch: java.lang.Exception -> L44 java.lang.Throwable -> L4c
            int r6 = r6.intValue()     // Catch: java.lang.Exception -> L44 java.lang.Throwable -> L4c
            java.lang.String r6 = r2.getString(r6)     // Catch: java.lang.Exception -> L44 java.lang.Throwable -> L4c
            if (r2 == 0) goto L3e
            r2.close()
        L3e:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            return r6
        L44:
            r6 = move-exception
            r1 = 0
            com.conceptglobal.pmc.utils.PLog.e(r0, r6, r1)     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4e
        L49:
            if (r2 == 0) goto L57
            goto L54
        L4c:
            r6 = move-exception
            goto L5f
        L4e:
            r6 = move-exception
            com.conceptglobal.pmc.utils.PLog.e(r0, r6)     // Catch: java.lang.Throwable -> L4c
            if (r2 == 0) goto L57
        L54:
            r2.close()
        L57:
            com.conceptglobal.pmc.database.DataBaseHandler r6 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r6.closeDatabase()
            java.lang.String r6 = ""
            return r6
        L5f:
            if (r2 == 0) goto L64
            r2.close()
        L64:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getTSTSegmentName(int):java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0049, code lost:
    
        if (r3 != null) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0057, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x005c, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0054, code lost:
    
        r3.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0052, code lost:
    
        if (r3 == null) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int getSegmentType(int r7) {
        /*
            r6 = this;
            java.lang.String r0 = "SegmentName"
            java.lang.String r1 = "Select ActivitySegmentTypeId from ActivitySegmentMaster where ActivitySegmentId ="
            r2 = 0
            r3 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r4 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4e
            android.database.sqlite.SQLiteDatabase r4 = r4.openDatabase()     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4e
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r4     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4e
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4e
            r5.<init>(r1)     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4e
            r5.append(r7)     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4e
            java.lang.String r7 = r5.toString()     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4e
            android.database.Cursor r3 = r4.rawQuery(r7, r3)     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4e
            if (r3 == 0) goto L49
            int r7 = r3.getCount()     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4e
            if (r7 <= 0) goto L49
            boolean r7 = r3.moveToFirst()     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4e
            if (r7 == 0) goto L49
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r7 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType0     // Catch: java.lang.Exception -> L45 java.lang.Throwable -> L4c
            java.lang.Integer r7 = r7.value()     // Catch: java.lang.Exception -> L45 java.lang.Throwable -> L4c
            int r7 = r7.intValue()     // Catch: java.lang.Exception -> L45 java.lang.Throwable -> L4c
            int r7 = r3.getInt(r7)     // Catch: java.lang.Exception -> L45 java.lang.Throwable -> L4c
            if (r3 == 0) goto L3f
            r3.close()
        L3f:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            return r7
        L45:
            r7 = move-exception
            com.conceptglobal.pmc.utils.PLog.e(r0, r7, r2)     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4e
        L49:
            if (r3 == 0) goto L57
            goto L54
        L4c:
            r7 = move-exception
            goto L5d
        L4e:
            r7 = move-exception
            com.conceptglobal.pmc.utils.PLog.e(r0, r7)     // Catch: java.lang.Throwable -> L4c
            if (r3 == 0) goto L57
        L54:
            r3.close()
        L57:
            com.conceptglobal.pmc.database.DataBaseHandler r7 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r7.closeDatabase()
            return r2
        L5d:
            if (r3 == 0) goto L62
            r3.close()
        L62:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getSegmentType(int):int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0049, code lost:
    
        if (r3 != null) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0057, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x005c, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0054, code lost:
    
        r3.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0052, code lost:
    
        if (r3 == null) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int getTSTSegmentType(int r7) {
        /*
            r6 = this;
            java.lang.String r0 = "SegmentName"
            java.lang.String r1 = "Select ActivitySegmentTypeId from TSTActivitySegmentMaster where ActivitySegmentId ="
            r2 = 0
            r3 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r4 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4e
            android.database.sqlite.SQLiteDatabase r4 = r4.openDatabase()     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4e
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r4     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4e
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4e
            r5.<init>(r1)     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4e
            r5.append(r7)     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4e
            java.lang.String r7 = r5.toString()     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4e
            android.database.Cursor r3 = r4.rawQuery(r7, r3)     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4e
            if (r3 == 0) goto L49
            int r7 = r3.getCount()     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4e
            if (r7 <= 0) goto L49
            boolean r7 = r3.moveToFirst()     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4e
            if (r7 == 0) goto L49
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r7 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType0     // Catch: java.lang.Exception -> L45 java.lang.Throwable -> L4c
            java.lang.Integer r7 = r7.value()     // Catch: java.lang.Exception -> L45 java.lang.Throwable -> L4c
            int r7 = r7.intValue()     // Catch: java.lang.Exception -> L45 java.lang.Throwable -> L4c
            int r7 = r3.getInt(r7)     // Catch: java.lang.Exception -> L45 java.lang.Throwable -> L4c
            if (r3 == 0) goto L3f
            r3.close()
        L3f:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            return r7
        L45:
            r7 = move-exception
            com.conceptglobal.pmc.utils.PLog.e(r0, r7, r2)     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4e
        L49:
            if (r3 == 0) goto L57
            goto L54
        L4c:
            r7 = move-exception
            goto L5d
        L4e:
            r7 = move-exception
            com.conceptglobal.pmc.utils.PLog.e(r0, r7)     // Catch: java.lang.Throwable -> L4c
            if (r3 == 0) goto L57
        L54:
            r3.close()
        L57:
            com.conceptglobal.pmc.database.DataBaseHandler r7 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r7.closeDatabase()
            return r2
        L5d:
            if (r3 == 0) goto L62
            r3.close()
        L62:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getTSTSegmentType(int):int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0114, code lost:
    
        if (r1 != null) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0172, code lost:
    
        if (r1 != null) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0179, code lost:
    
        if (r1 != null) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0187, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x018e, code lost:
    
        return "";
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0184, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0182, code lost:
    
        if (r1 == null) goto L59;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String getDropdownValueKey(com.conceptglobal.pmc.model.AttributeModel r10) {
        /*
            Method dump skipped, instructions count: 410
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getDropdownValueKey(com.conceptglobal.pmc.model.AttributeModel):java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x00c9, code lost:
    
        if (r1 != null) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00d7, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00de, code lost:
    
        return "";
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00d4, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00d2, code lost:
    
        if (r1 == null) goto L30;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String getDropdownValueKeyDefault(com.conceptglobal.pmc.model.AttributeModel r10) {
        /*
            r9 = this;
            java.lang.String r0 = "SegmentName"
            r1 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r2 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> Lcc java.lang.Exception -> Lce
            android.database.sqlite.SQLiteDatabase r2 = r2.openDatabase()     // Catch: java.lang.Throwable -> Lcc java.lang.Exception -> Lce
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r2     // Catch: java.lang.Throwable -> Lcc java.lang.Exception -> Lce
            java.lang.String r2 = r10.getAttributeSource()     // Catch: java.lang.Throwable -> Lcc java.lang.Exception -> Lce
            java.lang.String r3 = "ConfigurablelookupMaster"
            boolean r2 = r2.equalsIgnoreCase(r3)     // Catch: java.lang.Throwable -> Lcc java.lang.Exception -> Lce
            java.lang.String r3 = "'"
            java.lang.String r4 = " = '"
            java.lang.String r5 = " where "
            java.lang.String r6 = " from "
            java.lang.String r7 = "select "
            if (r2 == 0) goto L65
            android.database.sqlite.SQLiteDatabase r2 = com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase     // Catch: java.lang.Throwable -> Lcc java.lang.Exception -> Lce
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lcc java.lang.Exception -> Lce
            r8.<init>(r7)     // Catch: java.lang.Throwable -> Lcc java.lang.Exception -> Lce
            java.lang.String r7 = r10.getAttributeValueField()     // Catch: java.lang.Throwable -> Lcc java.lang.Exception -> Lce
            r8.append(r7)     // Catch: java.lang.Throwable -> Lcc java.lang.Exception -> Lce
            r8.append(r6)     // Catch: java.lang.Throwable -> Lcc java.lang.Exception -> Lce
            java.lang.String r6 = r10.getAttributeSource()     // Catch: java.lang.Throwable -> Lcc java.lang.Exception -> Lce
            r8.append(r6)     // Catch: java.lang.Throwable -> Lcc java.lang.Exception -> Lce
            r8.append(r5)     // Catch: java.lang.Throwable -> Lcc java.lang.Exception -> Lce
            java.lang.String r5 = r10.getAttributeDisplayField()     // Catch: java.lang.Throwable -> Lcc java.lang.Exception -> Lce
            r8.append(r5)     // Catch: java.lang.Throwable -> Lcc java.lang.Exception -> Lce
            r8.append(r4)     // Catch: java.lang.Throwable -> Lcc java.lang.Exception -> Lce
            java.lang.String r4 = r10.getAttributeDefaultValue()     // Catch: java.lang.Throwable -> Lcc java.lang.Exception -> Lce
            r8.append(r4)     // Catch: java.lang.Throwable -> Lcc java.lang.Exception -> Lce
            java.lang.String r4 = "' and ItemType = '"
            r8.append(r4)     // Catch: java.lang.Throwable -> Lcc java.lang.Exception -> Lce
            java.lang.String r10 = r10.getAttributeLookupKey()     // Catch: java.lang.Throwable -> Lcc java.lang.Exception -> Lce
            r8.append(r10)     // Catch: java.lang.Throwable -> Lcc java.lang.Exception -> Lce
            r8.append(r3)     // Catch: java.lang.Throwable -> Lcc java.lang.Exception -> Lce
            java.lang.String r10 = r8.toString()     // Catch: java.lang.Throwable -> Lcc java.lang.Exception -> Lce
            android.database.Cursor r10 = r2.rawQuery(r10, r1)     // Catch: java.lang.Throwable -> Lcc java.lang.Exception -> Lce
            goto L9c
        L65:
            android.database.sqlite.SQLiteDatabase r2 = com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase     // Catch: java.lang.Throwable -> Lcc java.lang.Exception -> Lce
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lcc java.lang.Exception -> Lce
            r8.<init>(r7)     // Catch: java.lang.Throwable -> Lcc java.lang.Exception -> Lce
            java.lang.String r7 = r10.getAttributeValueField()     // Catch: java.lang.Throwable -> Lcc java.lang.Exception -> Lce
            r8.append(r7)     // Catch: java.lang.Throwable -> Lcc java.lang.Exception -> Lce
            r8.append(r6)     // Catch: java.lang.Throwable -> Lcc java.lang.Exception -> Lce
            java.lang.String r6 = r10.getAttributeSource()     // Catch: java.lang.Throwable -> Lcc java.lang.Exception -> Lce
            r8.append(r6)     // Catch: java.lang.Throwable -> Lcc java.lang.Exception -> Lce
            r8.append(r5)     // Catch: java.lang.Throwable -> Lcc java.lang.Exception -> Lce
            java.lang.String r5 = r10.getAttributeDisplayField()     // Catch: java.lang.Throwable -> Lcc java.lang.Exception -> Lce
            r8.append(r5)     // Catch: java.lang.Throwable -> Lcc java.lang.Exception -> Lce
            r8.append(r4)     // Catch: java.lang.Throwable -> Lcc java.lang.Exception -> Lce
            java.lang.String r10 = r10.getAttributeDefaultValue()     // Catch: java.lang.Throwable -> Lcc java.lang.Exception -> Lce
            r8.append(r10)     // Catch: java.lang.Throwable -> Lcc java.lang.Exception -> Lce
            r8.append(r3)     // Catch: java.lang.Throwable -> Lcc java.lang.Exception -> Lce
            java.lang.String r10 = r8.toString()     // Catch: java.lang.Throwable -> Lcc java.lang.Exception -> Lce
            android.database.Cursor r10 = r2.rawQuery(r10, r1)     // Catch: java.lang.Throwable -> Lcc java.lang.Exception -> Lce
        L9c:
            r1 = r10
            if (r1 == 0) goto Lc9
            int r10 = r1.getCount()     // Catch: java.lang.Throwable -> Lcc java.lang.Exception -> Lce
            if (r10 <= 0) goto Lc9
            boolean r10 = r1.moveToFirst()     // Catch: java.lang.Throwable -> Lcc java.lang.Exception -> Lce
            if (r10 == 0) goto Lc9
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r10 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType0     // Catch: java.lang.Exception -> Lc4 java.lang.Throwable -> Lcc
            java.lang.Integer r10 = r10.value()     // Catch: java.lang.Exception -> Lc4 java.lang.Throwable -> Lcc
            int r10 = r10.intValue()     // Catch: java.lang.Exception -> Lc4 java.lang.Throwable -> Lcc
            java.lang.String r10 = r1.getString(r10)     // Catch: java.lang.Exception -> Lc4 java.lang.Throwable -> Lcc
            if (r1 == 0) goto Lbe
            r1.close()
        Lbe:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            return r10
        Lc4:
            r10 = move-exception
            r2 = 0
            com.conceptglobal.pmc.utils.PLog.e(r0, r10, r2)     // Catch: java.lang.Throwable -> Lcc java.lang.Exception -> Lce
        Lc9:
            if (r1 == 0) goto Ld7
            goto Ld4
        Lcc:
            r10 = move-exception
            goto Ldf
        Lce:
            r10 = move-exception
            com.conceptglobal.pmc.utils.PLog.e(r0, r10)     // Catch: java.lang.Throwable -> Lcc
            if (r1 == 0) goto Ld7
        Ld4:
            r1.close()
        Ld7:
            com.conceptglobal.pmc.database.DataBaseHandler r10 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r10.closeDatabase()
            java.lang.String r10 = ""
            return r10
        Ldf:
            if (r1 == 0) goto Le4
            r1.close()
        Le4:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getDropdownValueKeyDefault(com.conceptglobal.pmc.model.AttributeModel):java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x00c0, code lost:
    
        if (r1 == null) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x00ce, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x00d3, code lost:
    
        return r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00cb, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00c9, code lost:
    
        if (r1 == null) goto L26;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int getDropdownDisplayField(com.conceptglobal.pmc.model.AttributeModel r11) {
        /*
            r10 = this;
            java.lang.String r0 = "SegmentName"
            r1 = 0
            r2 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r3 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> Lc3 java.lang.Exception -> Lc5
            android.database.sqlite.SQLiteDatabase r3 = r3.openDatabase()     // Catch: java.lang.Throwable -> Lc3 java.lang.Exception -> Lc5
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r3     // Catch: java.lang.Throwable -> Lc3 java.lang.Exception -> Lc5
            java.lang.String r3 = r11.getAttributeSource()     // Catch: java.lang.Throwable -> Lc3 java.lang.Exception -> Lc5
            java.lang.String r4 = "ConfigurablelookupMaster"
            boolean r3 = r3.equalsIgnoreCase(r4)     // Catch: java.lang.Throwable -> Lc3 java.lang.Exception -> Lc5
            java.lang.String r4 = "'"
            java.lang.String r5 = " = '"
            java.lang.String r6 = " where "
            java.lang.String r7 = " from "
            java.lang.String r8 = "select "
            if (r3 == 0) goto L66
            android.database.sqlite.SQLiteDatabase r3 = com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase     // Catch: java.lang.Throwable -> Lc3 java.lang.Exception -> Lc5
            java.lang.StringBuilder r9 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lc3 java.lang.Exception -> Lc5
            r9.<init>(r8)     // Catch: java.lang.Throwable -> Lc3 java.lang.Exception -> Lc5
            java.lang.String r8 = r11.getAttributeDisplayField()     // Catch: java.lang.Throwable -> Lc3 java.lang.Exception -> Lc5
            r9.append(r8)     // Catch: java.lang.Throwable -> Lc3 java.lang.Exception -> Lc5
            r9.append(r7)     // Catch: java.lang.Throwable -> Lc3 java.lang.Exception -> Lc5
            java.lang.String r7 = r11.getAttributeSource()     // Catch: java.lang.Throwable -> Lc3 java.lang.Exception -> Lc5
            r9.append(r7)     // Catch: java.lang.Throwable -> Lc3 java.lang.Exception -> Lc5
            r9.append(r6)     // Catch: java.lang.Throwable -> Lc3 java.lang.Exception -> Lc5
            java.lang.String r6 = r11.getAttributeValueField()     // Catch: java.lang.Throwable -> Lc3 java.lang.Exception -> Lc5
            r9.append(r6)     // Catch: java.lang.Throwable -> Lc3 java.lang.Exception -> Lc5
            r9.append(r5)     // Catch: java.lang.Throwable -> Lc3 java.lang.Exception -> Lc5
            java.lang.String r5 = r11.getAttributeValue()     // Catch: java.lang.Throwable -> Lc3 java.lang.Exception -> Lc5
            r9.append(r5)     // Catch: java.lang.Throwable -> Lc3 java.lang.Exception -> Lc5
            java.lang.String r5 = "' and ItemType = '"
            r9.append(r5)     // Catch: java.lang.Throwable -> Lc3 java.lang.Exception -> Lc5
            java.lang.String r11 = r11.getAttributeLookupKey()     // Catch: java.lang.Throwable -> Lc3 java.lang.Exception -> Lc5
            r9.append(r11)     // Catch: java.lang.Throwable -> Lc3 java.lang.Exception -> Lc5
            r9.append(r4)     // Catch: java.lang.Throwable -> Lc3 java.lang.Exception -> Lc5
            java.lang.String r11 = r9.toString()     // Catch: java.lang.Throwable -> Lc3 java.lang.Exception -> Lc5
            android.database.Cursor r11 = r3.rawQuery(r11, r1)     // Catch: java.lang.Throwable -> Lc3 java.lang.Exception -> Lc5
            goto L9d
        L66:
            android.database.sqlite.SQLiteDatabase r3 = com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase     // Catch: java.lang.Throwable -> Lc3 java.lang.Exception -> Lc5
            java.lang.StringBuilder r9 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lc3 java.lang.Exception -> Lc5
            r9.<init>(r8)     // Catch: java.lang.Throwable -> Lc3 java.lang.Exception -> Lc5
            java.lang.String r8 = r11.getAttributeDisplayField()     // Catch: java.lang.Throwable -> Lc3 java.lang.Exception -> Lc5
            r9.append(r8)     // Catch: java.lang.Throwable -> Lc3 java.lang.Exception -> Lc5
            r9.append(r7)     // Catch: java.lang.Throwable -> Lc3 java.lang.Exception -> Lc5
            java.lang.String r7 = r11.getAttributeSource()     // Catch: java.lang.Throwable -> Lc3 java.lang.Exception -> Lc5
            r9.append(r7)     // Catch: java.lang.Throwable -> Lc3 java.lang.Exception -> Lc5
            r9.append(r6)     // Catch: java.lang.Throwable -> Lc3 java.lang.Exception -> Lc5
            java.lang.String r6 = r11.getAttributeValueField()     // Catch: java.lang.Throwable -> Lc3 java.lang.Exception -> Lc5
            r9.append(r6)     // Catch: java.lang.Throwable -> Lc3 java.lang.Exception -> Lc5
            r9.append(r5)     // Catch: java.lang.Throwable -> Lc3 java.lang.Exception -> Lc5
            java.lang.String r11 = r11.getAttributeValue()     // Catch: java.lang.Throwable -> Lc3 java.lang.Exception -> Lc5
            r9.append(r11)     // Catch: java.lang.Throwable -> Lc3 java.lang.Exception -> Lc5
            r9.append(r4)     // Catch: java.lang.Throwable -> Lc3 java.lang.Exception -> Lc5
            java.lang.String r11 = r9.toString()     // Catch: java.lang.Throwable -> Lc3 java.lang.Exception -> Lc5
            android.database.Cursor r11 = r3.rawQuery(r11, r1)     // Catch: java.lang.Throwable -> Lc3 java.lang.Exception -> Lc5
        L9d:
            r1 = r11
            if (r1 == 0) goto Lc0
            int r11 = r1.getCount()     // Catch: java.lang.Throwable -> Lc3 java.lang.Exception -> Lc5
            if (r11 <= 0) goto Lc0
            boolean r11 = r1.moveToFirst()     // Catch: java.lang.Throwable -> Lc3 java.lang.Exception -> Lc5
            if (r11 == 0) goto Lc0
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r11 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType0     // Catch: java.lang.Exception -> Lbc java.lang.Throwable -> Lc3
            java.lang.Integer r11 = r11.value()     // Catch: java.lang.Exception -> Lbc java.lang.Throwable -> Lc3
            int r11 = r11.intValue()     // Catch: java.lang.Exception -> Lbc java.lang.Throwable -> Lc3
            int r11 = r1.getInt(r11)     // Catch: java.lang.Exception -> Lbc java.lang.Throwable -> Lc3
            r2 = r11
            goto Lc0
        Lbc:
            r11 = move-exception
            com.conceptglobal.pmc.utils.PLog.e(r0, r11, r2)     // Catch: java.lang.Throwable -> Lc3 java.lang.Exception -> Lc5
        Lc0:
            if (r1 == 0) goto Lce
            goto Lcb
        Lc3:
            r11 = move-exception
            goto Ld4
        Lc5:
            r11 = move-exception
            com.conceptglobal.pmc.utils.PLog.e(r0, r11)     // Catch: java.lang.Throwable -> Lc3
            if (r1 == 0) goto Lce
        Lcb:
            r1.close()
        Lce:
            com.conceptglobal.pmc.database.DataBaseHandler r11 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r11.closeDatabase()
            return r2
        Ld4:
            if (r1 == 0) goto Ld9
            r1.close()
        Ld9:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getDropdownDisplayField(com.conceptglobal.pmc.model.AttributeModel):int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0078, code lost:
    
        if (r7 == null) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x006e, code lost:
    
        if (r7 == null) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x007d, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0082, code lost:
    
        return r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x007a, code lost:
    
        r7.close();
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0087  */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r3v2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String getPictureEventDisplayField(java.lang.String r7, java.lang.String r8, java.lang.String r9, java.lang.String r10, java.lang.String r11, java.lang.String r12) {
        /*
            r6 = this;
            java.lang.String r0 = " = '"
            java.lang.String r1 = "PictureType"
            java.lang.String r2 = "select "
            r3 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r4 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L71 java.lang.Exception -> L73
            android.database.sqlite.SQLiteDatabase r4 = r4.openDatabase()     // Catch: java.lang.Throwable -> L71 java.lang.Exception -> L73
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r4     // Catch: java.lang.Throwable -> L71 java.lang.Exception -> L73
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L71 java.lang.Exception -> L73
            r5.<init>(r2)     // Catch: java.lang.Throwable -> L71 java.lang.Exception -> L73
            r5.append(r7)     // Catch: java.lang.Throwable -> L71 java.lang.Exception -> L73
            java.lang.String r7 = " from "
            r5.append(r7)     // Catch: java.lang.Throwable -> L71 java.lang.Exception -> L73
            r5.append(r8)     // Catch: java.lang.Throwable -> L71 java.lang.Exception -> L73
            java.lang.String r7 = " where "
            r5.append(r7)     // Catch: java.lang.Throwable -> L71 java.lang.Exception -> L73
            r5.append(r9)     // Catch: java.lang.Throwable -> L71 java.lang.Exception -> L73
            r5.append(r0)     // Catch: java.lang.Throwable -> L71 java.lang.Exception -> L73
            r5.append(r10)     // Catch: java.lang.Throwable -> L71 java.lang.Exception -> L73
            java.lang.String r7 = "' and "
            r5.append(r7)     // Catch: java.lang.Throwable -> L71 java.lang.Exception -> L73
            r5.append(r11)     // Catch: java.lang.Throwable -> L71 java.lang.Exception -> L73
            r5.append(r0)     // Catch: java.lang.Throwable -> L71 java.lang.Exception -> L73
            r5.append(r12)     // Catch: java.lang.Throwable -> L71 java.lang.Exception -> L73
            java.lang.String r7 = "' and IsActive='True'"
            r5.append(r7)     // Catch: java.lang.Throwable -> L71 java.lang.Exception -> L73
            java.lang.String r7 = r5.toString()     // Catch: java.lang.Throwable -> L71 java.lang.Exception -> L73
            android.database.Cursor r7 = r4.rawQuery(r7, r3)     // Catch: java.lang.Throwable -> L71 java.lang.Exception -> L73
            if (r7 == 0) goto L6e
            int r8 = r7.getCount()     // Catch: java.lang.Exception -> L6c java.lang.Throwable -> L83
            if (r8 <= 0) goto L6e
            boolean r8 = r7.moveToFirst()     // Catch: java.lang.Exception -> L6c java.lang.Throwable -> L83
            if (r8 == 0) goto L6e
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r8 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType0     // Catch: java.lang.Exception -> L66 java.lang.Throwable -> L83
            java.lang.Integer r8 = r8.value()     // Catch: java.lang.Exception -> L66 java.lang.Throwable -> L83
            int r8 = r8.intValue()     // Catch: java.lang.Exception -> L66 java.lang.Throwable -> L83
            java.lang.String r8 = r7.getString(r8)     // Catch: java.lang.Exception -> L66 java.lang.Throwable -> L83
            r3 = r8
            goto L6e
        L66:
            r8 = move-exception
            r9 = 0
            com.conceptglobal.pmc.utils.PLog.e(r1, r8, r9)     // Catch: java.lang.Exception -> L6c java.lang.Throwable -> L83
            goto L6e
        L6c:
            r8 = move-exception
            goto L75
        L6e:
            if (r7 == 0) goto L7d
            goto L7a
        L71:
            r8 = move-exception
            goto L85
        L73:
            r8 = move-exception
            r7 = r3
        L75:
            com.conceptglobal.pmc.utils.PLog.e(r1, r8)     // Catch: java.lang.Throwable -> L83
            if (r7 == 0) goto L7d
        L7a:
            r7.close()
        L7d:
            com.conceptglobal.pmc.database.DataBaseHandler r7 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r7.closeDatabase()
            return r3
        L83:
            r8 = move-exception
            r3 = r7
        L85:
            if (r3 == 0) goto L8a
            r3.close()
        L8a:
            com.conceptglobal.pmc.database.DataBaseHandler r7 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r7.closeDatabase()
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getPictureEventDisplayField(java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String):java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x003f, code lost:
    
        if (r0 != null) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0052, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0057, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x004f, code lost:
    
        r0.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x004d, code lost:
    
        if (r0 == null) goto L20;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean validateUser(java.lang.String r4) {
        /*
            r3 = this;
            java.lang.String r4 = com.conceptglobal.pmc.utils.Encryption.encrypt(r4)
            java.lang.String r4 = r4.trim()
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "select password from pmcUserDetails where password='"
            r0.<init>(r1)
            r0.append(r4)
            java.lang.String r4 = "'"
            r0.append(r4)
            java.lang.String r4 = r0.toString()
            r0 = 0
            r1 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r2 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L42 java.lang.Exception -> L44
            android.database.sqlite.SQLiteDatabase r2 = r2.openDatabase()     // Catch: java.lang.Throwable -> L42 java.lang.Exception -> L44
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r2     // Catch: java.lang.Throwable -> L42 java.lang.Exception -> L44
            android.database.Cursor r0 = r2.rawQuery(r4, r0)     // Catch: java.lang.Throwable -> L42 java.lang.Exception -> L44
            if (r0 == 0) goto L3f
            boolean r4 = r0.moveToFirst()     // Catch: java.lang.Throwable -> L42 java.lang.Exception -> L44
            if (r4 == 0) goto L3f
        L31:
            int r4 = r0.getCount()     // Catch: java.lang.Throwable -> L42 java.lang.Exception -> L44
            if (r4 <= 0) goto L39
            r4 = 1
            r1 = 1
        L39:
            boolean r4 = r0.moveToNext()     // Catch: java.lang.Throwable -> L42 java.lang.Exception -> L44
            if (r4 != 0) goto L31
        L3f:
            if (r0 == 0) goto L52
            goto L4f
        L42:
            r4 = move-exception
            goto L58
        L44:
            r4 = move-exception
            java.lang.String r2 = "GetDataFromDB"
            com.conceptglobal.pmc.utils.PLog.e(r2, r4)     // Catch: java.lang.Throwable -> L42
            r4.printStackTrace()     // Catch: java.lang.Throwable -> L42
            if (r0 == 0) goto L52
        L4f:
            r0.close()
        L52:
            com.conceptglobal.pmc.database.DataBaseHandler r4 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r4.closeDatabase()
            return r1
        L58:
            if (r0 == 0) goto L5d
            r0.close()
        L5d:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.validateUser(java.lang.String):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x005a, code lost:
    
        if (r2 == null) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0068, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x006d, code lost:
    
        return r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0065, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0063, code lost:
    
        if (r2 == null) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int getKeyAttributeId(int r7, int r8, int r9) {
        /*
            r6 = this;
            java.lang.String r0 = "SegmentName"
            java.lang.String r1 = "select count(0) from ActivityAttributeMappingMaster as aam inner join ActivityKeyAttributesMaster as ak on ak.AttributeKeyMappingId = aam.AttributeKeyMappingId and ak.ActivityMasterId = aam.ActivityMasterId where ak.ActivityMasterId = "
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            r2 = 0
            r3 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r4 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L5d java.lang.Exception -> L5f
            android.database.sqlite.SQLiteDatabase r4 = r4.openDatabase()     // Catch: java.lang.Throwable -> L5d java.lang.Exception -> L5f
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r4     // Catch: java.lang.Throwable -> L5d java.lang.Exception -> L5f
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L5d java.lang.Exception -> L5f
            r5.<init>(r1)     // Catch: java.lang.Throwable -> L5d java.lang.Exception -> L5f
            r5.append(r7)     // Catch: java.lang.Throwable -> L5d java.lang.Exception -> L5f
            java.lang.String r7 = " and ak.KeyAttributeId ="
            r5.append(r7)     // Catch: java.lang.Throwable -> L5d java.lang.Exception -> L5f
            r5.append(r9)     // Catch: java.lang.Throwable -> L5d java.lang.Exception -> L5f
            java.lang.String r7 = " and ak.KeyAttributeValue= "
            r5.append(r7)     // Catch: java.lang.Throwable -> L5d java.lang.Exception -> L5f
            r5.append(r8)     // Catch: java.lang.Throwable -> L5d java.lang.Exception -> L5f
            java.lang.String r7 = " and aam.isActive = 1"
            r5.append(r7)     // Catch: java.lang.Throwable -> L5d java.lang.Exception -> L5f
            java.lang.String r7 = r5.toString()     // Catch: java.lang.Throwable -> L5d java.lang.Exception -> L5f
            android.database.Cursor r2 = r4.rawQuery(r7, r2)     // Catch: java.lang.Throwable -> L5d java.lang.Exception -> L5f
            if (r2 == 0) goto L5a
            int r7 = r2.getCount()     // Catch: java.lang.Throwable -> L5d java.lang.Exception -> L5f
            if (r7 <= 0) goto L5a
            boolean r7 = r2.moveToFirst()     // Catch: java.lang.Throwable -> L5d java.lang.Exception -> L5f
            if (r7 == 0) goto L5a
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r7 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType0     // Catch: java.lang.Exception -> L56 java.lang.Throwable -> L5d
            java.lang.Integer r7 = r7.value()     // Catch: java.lang.Exception -> L56 java.lang.Throwable -> L5d
            int r7 = r7.intValue()     // Catch: java.lang.Exception -> L56 java.lang.Throwable -> L5d
            int r7 = r2.getInt(r7)     // Catch: java.lang.Exception -> L56 java.lang.Throwable -> L5d
            r3 = r7
            goto L5a
        L56:
            r7 = move-exception
            com.conceptglobal.pmc.utils.PLog.e(r0, r7, r3)     // Catch: java.lang.Throwable -> L5d java.lang.Exception -> L5f
        L5a:
            if (r2 == 0) goto L68
            goto L65
        L5d:
            r7 = move-exception
            goto L6e
        L5f:
            r7 = move-exception
            com.conceptglobal.pmc.utils.PLog.e(r0, r7)     // Catch: java.lang.Throwable -> L5d
            if (r2 == 0) goto L68
        L65:
            r2.close()
        L68:
            com.conceptglobal.pmc.database.DataBaseHandler r7 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r7.closeDatabase()
            return r3
        L6e:
            if (r2 == 0) goto L73
            r2.close()
        L73:
            com.conceptglobal.pmc.database.DataBaseHandler r8 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r8.closeDatabase()
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getKeyAttributeId(int, int, int):int");
    }

    public int getIFContains(String str) throws Exception {
        Cursor cursor = null;
        try {
            try {
                SQLiteDatabase openDatabase = dbInstance.openDatabase();
                sqliteDatabase = openDatabase;
                cursor = openDatabase.rawQuery(str, null);
                if (cursor != null && cursor.getCount() > 0 && cursor.moveToFirst()) {
                    return cursor.getInt(ConstantDeclarations.Enumaration.mRequestType0.value().intValue());
                }
                if (cursor != null) {
                    cursor.close();
                }
                dbInstance.closeDatabase();
                return 0;
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

    /* JADX WARN: Code restructure failed: missing block: B:11:0x00a6, code lost:
    
        r7.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00a4, code lost:
    
        if (r7 == null) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x008e, code lost:
    
        if (r7 != null) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x00a9, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x00ae, code lost:
    
        return r1;
     */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00b2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String[][] getGeoDetailsConditions(java.lang.String r7) {
        /*
            r6 = this;
            r0 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r1 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L96 java.lang.Exception -> L9b
            android.database.sqlite.SQLiteDatabase r1 = r1.openDatabase()     // Catch: java.lang.Throwable -> L96 java.lang.Exception -> L9b
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r1     // Catch: java.lang.Throwable -> L96 java.lang.Exception -> L9b
            android.database.Cursor r7 = r1.rawQuery(r7, r0)     // Catch: java.lang.Throwable -> L96 java.lang.Exception -> L9b
            int r1 = r7.getCount()     // Catch: java.lang.Exception -> L91 java.lang.Throwable -> Laf
            int r2 = r7.getColumnCount()     // Catch: java.lang.Exception -> L91 java.lang.Throwable -> Laf
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r3 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType1     // Catch: java.lang.Exception -> L91 java.lang.Throwable -> Laf
            java.lang.Integer r3 = r3.value()     // Catch: java.lang.Exception -> L91 java.lang.Throwable -> Laf
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> L91 java.lang.Throwable -> Laf
            int r2 = r2 + r3
            r3 = 2
            int[] r3 = new int[r3]     // Catch: java.lang.Exception -> L91 java.lang.Throwable -> Laf
            r4 = 1
            r3[r4] = r2     // Catch: java.lang.Exception -> L91 java.lang.Throwable -> Laf
            r2 = 0
            r3[r2] = r1     // Catch: java.lang.Exception -> L91 java.lang.Throwable -> Laf
            java.lang.Class<java.lang.String> r1 = java.lang.String.class
            java.lang.Object r1 = java.lang.reflect.Array.newInstance(r1, r3)     // Catch: java.lang.Exception -> L91 java.lang.Throwable -> Laf
            java.lang.String[][] r1 = (java.lang.String[][]) r1     // Catch: java.lang.Exception -> L91 java.lang.Throwable -> Laf
            if (r7 == 0) goto L8e
            int r0 = r7.getCount()     // Catch: java.lang.Exception -> L8c java.lang.Throwable -> Laf
            if (r0 <= 0) goto L8e
            boolean r0 = r7.moveToFirst()     // Catch: java.lang.Exception -> L8c java.lang.Throwable -> Laf
            if (r0 == 0) goto L8e
        L3f:
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r0 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType0     // Catch: java.lang.Exception -> L7f java.lang.Throwable -> Laf
            java.lang.Integer r0 = r0.value()     // Catch: java.lang.Exception -> L7f java.lang.Throwable -> Laf
            int r0 = r0.intValue()     // Catch: java.lang.Exception -> L7f java.lang.Throwable -> Laf
        L49:
            int r2 = r7.getColumnCount()     // Catch: java.lang.Exception -> L7f java.lang.Throwable -> Laf
            int r2 = r2 - r4
            if (r0 > r2) goto L85
            int r2 = r7.getColumnCount()     // Catch: java.lang.Exception -> L7f java.lang.Throwable -> Laf
            if (r0 != r2) goto L61
            int r2 = r7.getPosition()     // Catch: java.lang.Exception -> L7f java.lang.Throwable -> Laf
            r2 = r1[r2]     // Catch: java.lang.Exception -> L7f java.lang.Throwable -> Laf
            java.lang.String r3 = "false"
            r2[r0] = r3     // Catch: java.lang.Exception -> L7f java.lang.Throwable -> Laf
            goto L7c
        L61:
            if (r0 != 0) goto L70
            int r2 = r7.getPosition()     // Catch: java.lang.Exception -> L7f java.lang.Throwable -> Laf
            r2 = r1[r2]     // Catch: java.lang.Exception -> L7f java.lang.Throwable -> Laf
            java.lang.String r3 = r7.getString(r0)     // Catch: java.lang.Exception -> L7f java.lang.Throwable -> Laf
            r2[r0] = r3     // Catch: java.lang.Exception -> L7f java.lang.Throwable -> Laf
            goto L7c
        L70:
            int r2 = r7.getPosition()     // Catch: java.lang.Exception -> L7f java.lang.Throwable -> Laf
            r2 = r1[r2]     // Catch: java.lang.Exception -> L7f java.lang.Throwable -> Laf
            java.lang.String r3 = r7.getString(r0)     // Catch: java.lang.Exception -> L7f java.lang.Throwable -> Laf
            r2[r0] = r3     // Catch: java.lang.Exception -> L7f java.lang.Throwable -> Laf
        L7c:
            int r0 = r0 + 1
            goto L49
        L7f:
            r0 = move-exception
            java.lang.String r2 = "getGeoDetailsConditions"
            com.conceptglobal.pmc.utils.PLog.e(r2, r0)     // Catch: java.lang.Exception -> L8c java.lang.Throwable -> Laf
        L85:
            boolean r0 = r7.moveToNext()     // Catch: java.lang.Exception -> L8c java.lang.Throwable -> Laf
            if (r0 != 0) goto L3f
            goto L8e
        L8c:
            r0 = move-exception
            goto L9f
        L8e:
            if (r7 == 0) goto La9
            goto La6
        L91:
            r1 = move-exception
            r5 = r1
            r1 = r0
            r0 = r5
            goto L9f
        L96:
            r7 = move-exception
            r5 = r0
            r0 = r7
            r7 = r5
            goto Lb0
        L9b:
            r7 = move-exception
            r1 = r0
            r0 = r7
            r7 = r1
        L9f:
            java.lang.String r2 = "GetDataFromDB"
            com.conceptglobal.pmc.utils.PLog.e(r2, r0)     // Catch: java.lang.Throwable -> Laf
            if (r7 == 0) goto La9
        La6:
            r7.close()
        La9:
            com.conceptglobal.pmc.database.DataBaseHandler r7 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r7.closeDatabase()
            return r1
        Laf:
            r0 = move-exception
        Lb0:
            if (r7 == 0) goto Lb5
            r7.close()
        Lb5:
            com.conceptglobal.pmc.database.DataBaseHandler r7 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r7.closeDatabase()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getGeoDetailsConditions(java.lang.String):java.lang.String[][]");
    }

    /* JADX WARN: Code restructure failed: missing block: B:395:0x0d10, code lost:
    
        if (r1 != null) goto L398;
     */
    /* JADX WARN: Code restructure failed: missing block: B:396:0x0d20, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:397:0x0d25, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:399:0x0d1d, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:407:0x0d1b, code lost:
    
        if (r1 == null) goto L399;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.conceptglobal.pmc.model.FarmerMasterSyncModel> getListOfFarmers(java.lang.String r5) {
        /*
            Method dump skipped, instructions count: 3377
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getListOfFarmers(java.lang.String):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:363:0x0db5, code lost:
    
        if (r1 != null) goto L366;
     */
    /* JADX WARN: Code restructure failed: missing block: B:364:0x0dc5, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:365:0x0dca, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:367:0x0dc2, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:370:0x0dc0, code lost:
    
        if (r1 == null) goto L367;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.conceptglobal.pmc.model.DealerMaster> getListOfDealers(java.lang.String r5) {
        /*
            Method dump skipped, instructions count: 3542
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getListOfDealers(java.lang.String):java.util.List");
    }

    public boolean getIsRecordExists(String str) throws Exception {
        boolean z;
        Cursor cursor = null;
        try {
            try {
                SQLiteDatabase openDatabase = dbInstance.openDatabase();
                sqliteDatabase = openDatabase;
                cursor = openDatabase.rawQuery(str, null);
                if (cursor == null || cursor.getCount() <= 0 || !cursor.moveToFirst()) {
                    z = false;
                } else {
                    do {
                    } while (cursor.moveToNext());
                    z = true;
                }
                return z;
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

    public boolean isAssignmentTransactionDoneDetail(String str) {
        Cursor cursor = null;
        try {
            SQLiteDatabase openDatabase = dbInstance.openDatabase();
            sqliteDatabase = openDatabase;
            cursor = openDatabase.rawQuery(str, null);
            if (cursor != null && cursor.getCount() > 0) {
                if (cursor.moveToFirst()) {
                    if (cursor != null) {
                        cursor.close();
                    }
                    dbInstance.closeDatabase();
                    return true;
                }
            }
            if (cursor != null) {
                cursor.close();
            }
            dbInstance.closeDatabase();
            return false;
        } catch (Exception unused) {
            if (cursor != null) {
                cursor.close();
            }
            dbInstance.closeDatabase();
            return false;
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            dbInstance.closeDatabase();
            throw th;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0032, code lost:
    
        if (r2 != null) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0040, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0045, code lost:
    
        return r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x003d, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x003b, code lost:
    
        if (r2 == null) goto L18;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int getTrainingORLive() {
        /*
            r6 = this;
            java.lang.String r0 = "GetDataFromDB"
            java.lang.String r1 = "Live Or training flag is :"
            r2 = 0
            r3 = -1
            com.conceptglobal.pmc.database.DataBaseHandler r4 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L35 java.lang.Exception -> L37
            android.database.sqlite.SQLiteDatabase r4 = r4.openDatabase()     // Catch: java.lang.Throwable -> L35 java.lang.Exception -> L37
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r4     // Catch: java.lang.Throwable -> L35 java.lang.Exception -> L37
            if (r4 == 0) goto L32
            java.lang.String r5 = "SELECT itemValue from ConfigurableLookup where itemKey='isTrainingORLive'"
            android.database.Cursor r2 = r4.rawQuery(r5, r2)     // Catch: java.lang.Throwable -> L35 java.lang.Exception -> L37
            if (r2 == 0) goto L32
            boolean r4 = r2.moveToFirst()     // Catch: java.lang.Throwable -> L35 java.lang.Exception -> L37
            if (r4 == 0) goto L32
            r4 = 0
            int r3 = r2.getInt(r4)     // Catch: java.lang.Throwable -> L35 java.lang.Exception -> L37
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L35 java.lang.Exception -> L37
            r4.<init>(r1)     // Catch: java.lang.Throwable -> L35 java.lang.Exception -> L37
            r4.append(r3)     // Catch: java.lang.Throwable -> L35 java.lang.Exception -> L37
            java.lang.String r1 = r4.toString()     // Catch: java.lang.Throwable -> L35 java.lang.Exception -> L37
            com.conceptglobal.pmc.utils.PLog.i(r0, r1)     // Catch: java.lang.Throwable -> L35 java.lang.Exception -> L37
        L32:
            if (r2 == 0) goto L40
            goto L3d
        L35:
            r0 = move-exception
            goto L46
        L37:
            r1 = move-exception
            com.conceptglobal.pmc.utils.PLog.e(r0, r1)     // Catch: java.lang.Throwable -> L35
            if (r2 == 0) goto L40
        L3d:
            r2.close()
        L40:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            return r3
        L46:
            if (r2 == 0) goto L4b
            r2.close()
        L4b:
            com.conceptglobal.pmc.database.DataBaseHandler r1 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r1.closeDatabase()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getTrainingORLive():int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x007a, code lost:
    
        if (r1 != null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x008a, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x008f, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0087, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0085, code lost:
    
        if (r1 == null) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.conceptglobal.pmc.model.TerritoryMaster> getTerritoryDetails(java.lang.String r5) {
        /*
            r4 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r1 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r2 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L7d java.lang.Exception -> L7f
            android.database.sqlite.SQLiteDatabase r2 = r2.openDatabase()     // Catch: java.lang.Throwable -> L7d java.lang.Exception -> L7f
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r2     // Catch: java.lang.Throwable -> L7d java.lang.Exception -> L7f
            android.database.Cursor r1 = r2.rawQuery(r5, r1)     // Catch: java.lang.Throwable -> L7d java.lang.Exception -> L7f
            if (r1 == 0) goto L7a
            int r5 = r1.getCount()     // Catch: java.lang.Throwable -> L7d java.lang.Exception -> L7f
            if (r5 <= 0) goto L7a
            boolean r5 = r1.moveToFirst()     // Catch: java.lang.Throwable -> L7d java.lang.Exception -> L7f
            if (r5 == 0) goto L7a
        L20:
            com.conceptglobal.pmc.model.TerritoryMaster r5 = new com.conceptglobal.pmc.model.TerritoryMaster     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L7d
            r5.<init>()     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L7d
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType0     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L7d
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L7d
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L7d
            int r2 = r1.getInt(r2)     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L7d
            r5.setTerritoryId(r2)     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L7d
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType1     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L7d
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L7d
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L7d
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L7d
            r5.setTerritoryName(r2)     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L7d
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType2     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L7d
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L7d
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L7d
            int r2 = r1.getInt(r2)     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L7d
            r5.setRegionId(r2)     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L7d
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType3     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L7d
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L7d
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L7d
            int r2 = r1.getInt(r2)     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L7d
            r5.setIsActive(r2)     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L7d
            r0.add(r5)     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L7d
            goto L74
        L6d:
            r5 = move-exception
            java.lang.String r2 = "FarmerCropMapping"
            r3 = 0
            com.conceptglobal.pmc.utils.PLog.e(r2, r5, r3)     // Catch: java.lang.Throwable -> L7d java.lang.Exception -> L7f
        L74:
            boolean r5 = r1.moveToNext()     // Catch: java.lang.Throwable -> L7d java.lang.Exception -> L7f
            if (r5 != 0) goto L20
        L7a:
            if (r1 == 0) goto L8a
            goto L87
        L7d:
            r5 = move-exception
            goto L90
        L7f:
            r5 = move-exception
            java.lang.String r2 = "Farmer Crop Mapping details"
            com.conceptglobal.pmc.utils.PLog.e(r2, r5)     // Catch: java.lang.Throwable -> L7d
            if (r1 == 0) goto L8a
        L87:
            r1.close()
        L8a:
            com.conceptglobal.pmc.database.DataBaseHandler r5 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r5.closeDatabase()
            return r0
        L90:
            if (r1 == 0) goto L95
            r1.close()
        L95:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getTerritoryDetails(java.lang.String):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0089, code lost:
    
        if (r5 == null) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x007f, code lost:
    
        if (r5 != null) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x008e, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0093, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x008b, code lost:
    
        r5.close();
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0098  */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r1v2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.conceptglobal.pmc.model.NotifyAssignDisplayModel getNotifyAssignDetails(java.lang.String r5) {
        /*
            r4 = this;
            java.lang.String r0 = "NotifyAssignmentDet"
            r1 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r2 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L82 java.lang.Exception -> L84
            android.database.sqlite.SQLiteDatabase r2 = r2.openDatabase()     // Catch: java.lang.Throwable -> L82 java.lang.Exception -> L84
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r2     // Catch: java.lang.Throwable -> L82 java.lang.Exception -> L84
            android.database.Cursor r5 = r2.rawQuery(r5, r1)     // Catch: java.lang.Throwable -> L82 java.lang.Exception -> L84
            if (r5 == 0) goto L7f
            int r2 = r5.getCount()     // Catch: java.lang.Exception -> L7d java.lang.Throwable -> L94
            if (r2 <= 0) goto L7f
            boolean r2 = r5.moveToFirst()     // Catch: java.lang.Exception -> L7d java.lang.Throwable -> L94
            if (r2 == 0) goto L7f
        L1d:
            com.conceptglobal.pmc.model.NotifyAssignDisplayModel r2 = new com.conceptglobal.pmc.model.NotifyAssignDisplayModel     // Catch: java.lang.Exception -> L71 java.lang.Throwable -> L94
            r2.<init>()     // Catch: java.lang.Exception -> L71 java.lang.Throwable -> L94
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r3 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType0     // Catch: java.lang.Exception -> L71 java.lang.Throwable -> L94
            java.lang.Integer r3 = r3.value()     // Catch: java.lang.Exception -> L71 java.lang.Throwable -> L94
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> L71 java.lang.Throwable -> L94
            java.lang.String r3 = r5.getString(r3)     // Catch: java.lang.Exception -> L71 java.lang.Throwable -> L94
            r2.setActivityMasterName(r3)     // Catch: java.lang.Exception -> L71 java.lang.Throwable -> L94
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r3 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType1     // Catch: java.lang.Exception -> L71 java.lang.Throwable -> L94
            java.lang.Integer r3 = r3.value()     // Catch: java.lang.Exception -> L71 java.lang.Throwable -> L94
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> L71 java.lang.Throwable -> L94
            java.lang.String r3 = r5.getString(r3)     // Catch: java.lang.Exception -> L71 java.lang.Throwable -> L94
            r2.setPackageName(r3)     // Catch: java.lang.Exception -> L71 java.lang.Throwable -> L94
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r3 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType2     // Catch: java.lang.Exception -> L71 java.lang.Throwable -> L94
            java.lang.Integer r3 = r3.value()     // Catch: java.lang.Exception -> L71 java.lang.Throwable -> L94
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> L71 java.lang.Throwable -> L94
            java.lang.String r3 = r5.getString(r3)     // Catch: java.lang.Exception -> L71 java.lang.Throwable -> L94
            r2.setActivityAssignmentId(r3)     // Catch: java.lang.Exception -> L71 java.lang.Throwable -> L94
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r3 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType3     // Catch: java.lang.Exception -> L71 java.lang.Throwable -> L94
            java.lang.Integer r3 = r3.value()     // Catch: java.lang.Exception -> L71 java.lang.Throwable -> L94
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> L71 java.lang.Throwable -> L94
            java.lang.String r3 = r5.getString(r3)     // Catch: java.lang.Exception -> L71 java.lang.Throwable -> L94
            r2.setActivitySegmentName(r3)     // Catch: java.lang.Exception -> L71 java.lang.Throwable -> L94
            if (r5 == 0) goto L6b
            r5.close()
        L6b:
            com.conceptglobal.pmc.database.DataBaseHandler r5 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r5.closeDatabase()
            return r2
        L71:
            r2 = move-exception
            r3 = 0
            com.conceptglobal.pmc.utils.PLog.e(r0, r2, r3)     // Catch: java.lang.Exception -> L7d java.lang.Throwable -> L94
            boolean r2 = r5.moveToNext()     // Catch: java.lang.Exception -> L7d java.lang.Throwable -> L94
            if (r2 != 0) goto L1d
            goto L7f
        L7d:
            r2 = move-exception
            goto L86
        L7f:
            if (r5 == 0) goto L8e
            goto L8b
        L82:
            r0 = move-exception
            goto L96
        L84:
            r2 = move-exception
            r5 = r1
        L86:
            com.conceptglobal.pmc.utils.PLog.e(r0, r2)     // Catch: java.lang.Throwable -> L94
            if (r5 == 0) goto L8e
        L8b:
            r5.close()
        L8e:
            com.conceptglobal.pmc.database.DataBaseHandler r5 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r5.closeDatabase()
            return r1
        L94:
            r0 = move-exception
            r1 = r5
        L96:
            if (r1 == 0) goto L9b
            r1.close()
        L9b:
            com.conceptglobal.pmc.database.DataBaseHandler r5 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r5.closeDatabase()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getNotifyAssignDetails(java.lang.String):com.conceptglobal.pmc.model.NotifyAssignDisplayModel");
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0069, code lost:
    
        if (r2 != null) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0077, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x007c, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0074, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0072, code lost:
    
        if (r2 == null) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.conceptglobal.pmc.model.RulesConfig> getRulesConfigurations(java.lang.String r5) {
        /*
            r4 = this;
            java.lang.String r0 = "NotifyAssignmentDet"
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            r2 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r3 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L6c java.lang.Exception -> L6e
            android.database.sqlite.SQLiteDatabase r3 = r3.openDatabase()     // Catch: java.lang.Throwable -> L6c java.lang.Exception -> L6e
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r3     // Catch: java.lang.Throwable -> L6c java.lang.Exception -> L6e
            android.database.Cursor r2 = r3.rawQuery(r5, r2)     // Catch: java.lang.Throwable -> L6c java.lang.Exception -> L6e
            if (r2 == 0) goto L69
            int r5 = r2.getCount()     // Catch: java.lang.Throwable -> L6c java.lang.Exception -> L6e
            if (r5 <= 0) goto L69
            boolean r5 = r2.moveToFirst()     // Catch: java.lang.Throwable -> L6c java.lang.Exception -> L6e
            if (r5 == 0) goto L69
        L22:
            com.conceptglobal.pmc.model.RulesConfig r5 = new com.conceptglobal.pmc.model.RulesConfig     // Catch: java.lang.Exception -> L5e java.lang.Throwable -> L6c
            r5.<init>()     // Catch: java.lang.Exception -> L5e java.lang.Throwable -> L6c
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r3 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType0     // Catch: java.lang.Exception -> L5e java.lang.Throwable -> L6c
            java.lang.Integer r3 = r3.value()     // Catch: java.lang.Exception -> L5e java.lang.Throwable -> L6c
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> L5e java.lang.Throwable -> L6c
            int r3 = r2.getInt(r3)     // Catch: java.lang.Exception -> L5e java.lang.Throwable -> L6c
            r5.setRule(r3)     // Catch: java.lang.Exception -> L5e java.lang.Throwable -> L6c
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r3 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType1     // Catch: java.lang.Exception -> L5e java.lang.Throwable -> L6c
            java.lang.Integer r3 = r3.value()     // Catch: java.lang.Exception -> L5e java.lang.Throwable -> L6c
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> L5e java.lang.Throwable -> L6c
            int r3 = r2.getInt(r3)     // Catch: java.lang.Exception -> L5e java.lang.Throwable -> L6c
            r5.setAttributeId(r3)     // Catch: java.lang.Exception -> L5e java.lang.Throwable -> L6c
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r3 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType2     // Catch: java.lang.Exception -> L5e java.lang.Throwable -> L6c
            java.lang.Integer r3 = r3.value()     // Catch: java.lang.Exception -> L5e java.lang.Throwable -> L6c
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> L5e java.lang.Throwable -> L6c
            int r3 = r2.getInt(r3)     // Catch: java.lang.Exception -> L5e java.lang.Throwable -> L6c
            r5.setvAttrId(r3)     // Catch: java.lang.Exception -> L5e java.lang.Throwable -> L6c
            r1.add(r5)     // Catch: java.lang.Exception -> L5e java.lang.Throwable -> L6c
            goto L63
        L5e:
            r5 = move-exception
            r3 = 0
            com.conceptglobal.pmc.utils.PLog.e(r0, r5, r3)     // Catch: java.lang.Throwable -> L6c java.lang.Exception -> L6e
        L63:
            boolean r5 = r2.moveToNext()     // Catch: java.lang.Throwable -> L6c java.lang.Exception -> L6e
            if (r5 != 0) goto L22
        L69:
            if (r2 == 0) goto L77
            goto L74
        L6c:
            r5 = move-exception
            goto L7d
        L6e:
            r5 = move-exception
            com.conceptglobal.pmc.utils.PLog.e(r0, r5)     // Catch: java.lang.Throwable -> L6c
            if (r2 == 0) goto L77
        L74:
            r2.close()
        L77:
            com.conceptglobal.pmc.database.DataBaseHandler r5 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r5.closeDatabase()
            return r1
        L7d:
            if (r2 == 0) goto L82
            r2.close()
        L82:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getRulesConfigurations(java.lang.String):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0036, code lost:
    
        if (r1 != null) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0044, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0049, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0041, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x003f, code lost:
    
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
            com.conceptglobal.pmc.database.DataBaseHandler r2 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L39 java.lang.Exception -> L3b
            android.database.sqlite.SQLiteDatabase r2 = r2.openDatabase()     // Catch: java.lang.Throwable -> L39 java.lang.Exception -> L3b
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r2     // Catch: java.lang.Throwable -> L39 java.lang.Exception -> L3b
            java.lang.String r3 = "Select * from FoTrackerHeader Order By TrackId DESC Limit 1"
            android.database.Cursor r1 = r2.rawQuery(r3, r1)     // Catch: java.lang.Throwable -> L39 java.lang.Exception -> L3b
            if (r1 == 0) goto L35
            int r2 = r1.getCount()     // Catch: java.lang.Throwable -> L39 java.lang.Exception -> L3b
            if (r2 <= 0) goto L35
            boolean r2 = r1.moveToFirst()     // Catch: java.lang.Throwable -> L39 java.lang.Exception -> L3b
            if (r2 == 0) goto L35
            java.lang.String r2 = "EndDate"
            int r2 = r1.getColumnIndexOrThrow(r2)     // Catch: java.lang.Throwable -> L39 java.lang.Exception -> L3b
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Throwable -> L39 java.lang.Exception -> L3b
            java.lang.String r3 = ""
            boolean r2 = r2.equals(r3)     // Catch: java.lang.Throwable -> L39 java.lang.Exception -> L3b
            if (r2 == 0) goto L36
            r0 = 2
            goto L36
        L35:
            r0 = 1
        L36:
            if (r1 == 0) goto L44
            goto L41
        L39:
            r0 = move-exception
            goto L4a
        L3b:
            r2 = move-exception
            r2.printStackTrace()     // Catch: java.lang.Throwable -> L39
            if (r1 == 0) goto L44
        L41:
            r1.close()
        L44:
            com.conceptglobal.pmc.database.DataBaseHandler r1 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r1.closeDatabase()
            return r0
        L4a:
            if (r1 == 0) goto L4f
            r1.close()
        L4f:
            com.conceptglobal.pmc.database.DataBaseHandler r1 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r1.closeDatabase()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.checkIfTableIsEmptyOrNot():int");
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
            com.conceptglobal.pmc.database.DataBaseHandler r1 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L36 java.lang.Exception -> L3b
            android.database.sqlite.SQLiteDatabase r1 = r1.openDatabase()     // Catch: java.lang.Throwable -> L36 java.lang.Exception -> L3b
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r1     // Catch: java.lang.Throwable -> L36 java.lang.Exception -> L3b
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
            com.conceptglobal.pmc.database.DataBaseHandler r1 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
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
            com.conceptglobal.pmc.database.DataBaseHandler r1 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
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
            com.conceptglobal.pmc.database.DataBaseHandler r1 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r1.closeDatabase()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getDayFromDB():java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0039, code lost:
    
        if (r1 != null) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0047, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
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
            com.conceptglobal.pmc.database.DataBaseHandler r2 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L3c java.lang.Exception -> L3e
            android.database.sqlite.SQLiteDatabase r2 = r2.openDatabase()     // Catch: java.lang.Throwable -> L3c java.lang.Exception -> L3e
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r2     // Catch: java.lang.Throwable -> L3c java.lang.Exception -> L3e
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
            com.conceptglobal.pmc.database.DataBaseHandler r1 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r1.closeDatabase()
            boolean r0 = r0.booleanValue()
            return r0
        L51:
            if (r1 == 0) goto L56
            r1.close()
        L56:
            com.conceptglobal.pmc.database.DataBaseHandler r1 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r1.closeDatabase()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.checkIfEndDateIsEmpty():boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x008a, code lost:
    
        if (r2 != null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0098, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x009d, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0095, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0093, code lost:
    
        if (r2 == null) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.conceptglobal.pmc.model.TerritotyFarmerMaster getTerritoryFarmereDetails(java.lang.String r5) {
        /*
            r4 = this;
            java.lang.String r0 = "Getting Territoty Faremer details :: "
            com.conceptglobal.pmc.model.TerritotyFarmerMaster r1 = new com.conceptglobal.pmc.model.TerritotyFarmerMaster
            r1.<init>()
            r2 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r3 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L8d java.lang.Exception -> L8f
            android.database.sqlite.SQLiteDatabase r3 = r3.openDatabase()     // Catch: java.lang.Throwable -> L8d java.lang.Exception -> L8f
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r3     // Catch: java.lang.Throwable -> L8d java.lang.Exception -> L8f
            android.database.Cursor r2 = r3.rawQuery(r5, r2)     // Catch: java.lang.Throwable -> L8d java.lang.Exception -> L8f
            if (r2 == 0) goto L8a
            int r5 = r2.getCount()     // Catch: java.lang.Throwable -> L8d java.lang.Exception -> L8f
            if (r5 <= 0) goto L8a
            boolean r5 = r2.moveToFirst()     // Catch: java.lang.Throwable -> L8d java.lang.Exception -> L8f
            if (r5 == 0) goto L8a
        L22:
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r5 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType0     // Catch: java.lang.Exception -> L80 java.lang.Throwable -> L8d
            java.lang.Integer r5 = r5.value()     // Catch: java.lang.Exception -> L80 java.lang.Throwable -> L8d
            int r5 = r5.intValue()     // Catch: java.lang.Exception -> L80 java.lang.Throwable -> L8d
            int r5 = r2.getInt(r5)     // Catch: java.lang.Exception -> L80 java.lang.Throwable -> L8d
            r1.setFarmerID(r5)     // Catch: java.lang.Exception -> L80 java.lang.Throwable -> L8d
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r5 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType1     // Catch: java.lang.Exception -> L80 java.lang.Throwable -> L8d
            java.lang.Integer r5 = r5.value()     // Catch: java.lang.Exception -> L80 java.lang.Throwable -> L8d
            int r5 = r5.intValue()     // Catch: java.lang.Exception -> L80 java.lang.Throwable -> L8d
            java.lang.String r5 = r2.getString(r5)     // Catch: java.lang.Exception -> L80 java.lang.Throwable -> L8d
            java.lang.String r5 = com.conceptglobal.pmc.utils.Encryption.decrypt(r5)     // Catch: java.lang.Exception -> L80 java.lang.Throwable -> L8d
            r1.setFarmerName(r5)     // Catch: java.lang.Exception -> L80 java.lang.Throwable -> L8d
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r5 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType2     // Catch: java.lang.Exception -> L80 java.lang.Throwable -> L8d
            java.lang.Integer r5 = r5.value()     // Catch: java.lang.Exception -> L80 java.lang.Throwable -> L8d
            int r5 = r5.intValue()     // Catch: java.lang.Exception -> L80 java.lang.Throwable -> L8d
            java.lang.String r5 = r2.getString(r5)     // Catch: java.lang.Exception -> L80 java.lang.Throwable -> L8d
            java.lang.String r5 = com.conceptglobal.pmc.utils.Encryption.decrypt(r5)     // Catch: java.lang.Exception -> L80 java.lang.Throwable -> L8d
            r1.setMobile(r5)     // Catch: java.lang.Exception -> L80 java.lang.Throwable -> L8d
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r5 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType3     // Catch: java.lang.Exception -> L80 java.lang.Throwable -> L8d
            java.lang.Integer r5 = r5.value()     // Catch: java.lang.Exception -> L80 java.lang.Throwable -> L8d
            int r5 = r5.intValue()     // Catch: java.lang.Exception -> L80 java.lang.Throwable -> L8d
            java.lang.String r5 = r2.getString(r5)     // Catch: java.lang.Exception -> L80 java.lang.Throwable -> L8d
            r1.setTerritory(r5)     // Catch: java.lang.Exception -> L80 java.lang.Throwable -> L8d
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r5 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType4     // Catch: java.lang.Exception -> L80 java.lang.Throwable -> L8d
            java.lang.Integer r5 = r5.value()     // Catch: java.lang.Exception -> L80 java.lang.Throwable -> L8d
            int r5 = r5.intValue()     // Catch: java.lang.Exception -> L80 java.lang.Throwable -> L8d
            java.lang.String r5 = r2.getString(r5)     // Catch: java.lang.Exception -> L80 java.lang.Throwable -> L8d
            r1.setVillage(r5)     // Catch: java.lang.Exception -> L80 java.lang.Throwable -> L8d
            goto L84
        L80:
            r5 = move-exception
            com.conceptglobal.pmc.utils.PLog.e(r0, r5)     // Catch: java.lang.Throwable -> L8d java.lang.Exception -> L8f
        L84:
            boolean r5 = r2.moveToNext()     // Catch: java.lang.Throwable -> L8d java.lang.Exception -> L8f
            if (r5 != 0) goto L22
        L8a:
            if (r2 == 0) goto L98
            goto L95
        L8d:
            r5 = move-exception
            goto L9e
        L8f:
            r5 = move-exception
            com.conceptglobal.pmc.utils.PLog.e(r0, r5)     // Catch: java.lang.Throwable -> L8d
            if (r2 == 0) goto L98
        L95:
            r2.close()
        L98:
            com.conceptglobal.pmc.database.DataBaseHandler r5 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r5.closeDatabase()
            return r1
        L9e:
            if (r2 == 0) goto La3
            r2.close()
        La3:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getTerritoryFarmereDetails(java.lang.String):com.conceptglobal.pmc.model.TerritotyFarmerMaster");
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x009b, code lost:
    
        if (r2 != null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x00a9, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x00ae, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00a6, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00a4, code lost:
    
        if (r2 == null) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.conceptglobal.pmc.model.TerritotyFarmerMaster getSearchFarmereDetails(java.lang.String r5) {
        /*
            r4 = this;
            java.lang.String r0 = "Getting Territoty Faremer details :: "
            com.conceptglobal.pmc.model.TerritotyFarmerMaster r1 = new com.conceptglobal.pmc.model.TerritotyFarmerMaster
            r1.<init>()
            r2 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r3 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L9e java.lang.Exception -> La0
            android.database.sqlite.SQLiteDatabase r3 = r3.openDatabase()     // Catch: java.lang.Throwable -> L9e java.lang.Exception -> La0
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r3     // Catch: java.lang.Throwable -> L9e java.lang.Exception -> La0
            android.database.Cursor r2 = r3.rawQuery(r5, r2)     // Catch: java.lang.Throwable -> L9e java.lang.Exception -> La0
            if (r2 == 0) goto L9b
            int r5 = r2.getCount()     // Catch: java.lang.Throwable -> L9e java.lang.Exception -> La0
            if (r5 <= 0) goto L9b
            boolean r5 = r2.moveToFirst()     // Catch: java.lang.Throwable -> L9e java.lang.Exception -> La0
            if (r5 == 0) goto L9b
        L22:
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r5 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType0     // Catch: java.lang.Exception -> L91 java.lang.Throwable -> L9e
            java.lang.Integer r5 = r5.value()     // Catch: java.lang.Exception -> L91 java.lang.Throwable -> L9e
            int r5 = r5.intValue()     // Catch: java.lang.Exception -> L91 java.lang.Throwable -> L9e
            int r5 = r2.getInt(r5)     // Catch: java.lang.Exception -> L91 java.lang.Throwable -> L9e
            r1.setFarmerID(r5)     // Catch: java.lang.Exception -> L91 java.lang.Throwable -> L9e
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r5 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType1     // Catch: java.lang.Exception -> L91 java.lang.Throwable -> L9e
            java.lang.Integer r5 = r5.value()     // Catch: java.lang.Exception -> L91 java.lang.Throwable -> L9e
            int r5 = r5.intValue()     // Catch: java.lang.Exception -> L91 java.lang.Throwable -> L9e
            java.lang.String r5 = r2.getString(r5)     // Catch: java.lang.Exception -> L91 java.lang.Throwable -> L9e
            java.lang.String r5 = com.conceptglobal.pmc.utils.Encryption.decrypt(r5)     // Catch: java.lang.Exception -> L91 java.lang.Throwable -> L9e
            r1.setFarmerName(r5)     // Catch: java.lang.Exception -> L91 java.lang.Throwable -> L9e
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r5 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType2     // Catch: java.lang.Exception -> L91 java.lang.Throwable -> L9e
            java.lang.Integer r5 = r5.value()     // Catch: java.lang.Exception -> L91 java.lang.Throwable -> L9e
            int r5 = r5.intValue()     // Catch: java.lang.Exception -> L91 java.lang.Throwable -> L9e
            java.lang.String r5 = r2.getString(r5)     // Catch: java.lang.Exception -> L91 java.lang.Throwable -> L9e
            java.lang.String r5 = com.conceptglobal.pmc.utils.Encryption.decrypt(r5)     // Catch: java.lang.Exception -> L91 java.lang.Throwable -> L9e
            r1.setMobile(r5)     // Catch: java.lang.Exception -> L91 java.lang.Throwable -> L9e
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r5 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType3     // Catch: java.lang.Exception -> L91 java.lang.Throwable -> L9e
            java.lang.Integer r5 = r5.value()     // Catch: java.lang.Exception -> L91 java.lang.Throwable -> L9e
            int r5 = r5.intValue()     // Catch: java.lang.Exception -> L91 java.lang.Throwable -> L9e
            java.lang.String r5 = r2.getString(r5)     // Catch: java.lang.Exception -> L91 java.lang.Throwable -> L9e
            r1.setTerritory(r5)     // Catch: java.lang.Exception -> L91 java.lang.Throwable -> L9e
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r5 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType4     // Catch: java.lang.Exception -> L91 java.lang.Throwable -> L9e
            java.lang.Integer r5 = r5.value()     // Catch: java.lang.Exception -> L91 java.lang.Throwable -> L9e
            int r5 = r5.intValue()     // Catch: java.lang.Exception -> L91 java.lang.Throwable -> L9e
            java.lang.String r5 = r2.getString(r5)     // Catch: java.lang.Exception -> L91 java.lang.Throwable -> L9e
            r1.setVillage(r5)     // Catch: java.lang.Exception -> L91 java.lang.Throwable -> L9e
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r5 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType5     // Catch: java.lang.Exception -> L91 java.lang.Throwable -> L9e
            java.lang.Integer r5 = r5.value()     // Catch: java.lang.Exception -> L91 java.lang.Throwable -> L9e
            int r5 = r5.intValue()     // Catch: java.lang.Exception -> L91 java.lang.Throwable -> L9e
            java.lang.String r5 = r2.getString(r5)     // Catch: java.lang.Exception -> L91 java.lang.Throwable -> L9e
            r1.setRespondentNo(r5)     // Catch: java.lang.Exception -> L91 java.lang.Throwable -> L9e
            goto L95
        L91:
            r5 = move-exception
            com.conceptglobal.pmc.utils.PLog.e(r0, r5)     // Catch: java.lang.Throwable -> L9e java.lang.Exception -> La0
        L95:
            boolean r5 = r2.moveToNext()     // Catch: java.lang.Throwable -> L9e java.lang.Exception -> La0
            if (r5 != 0) goto L22
        L9b:
            if (r2 == 0) goto La9
            goto La6
        L9e:
            r5 = move-exception
            goto Laf
        La0:
            r5 = move-exception
            com.conceptglobal.pmc.utils.PLog.e(r0, r5)     // Catch: java.lang.Throwable -> L9e
            if (r2 == 0) goto La9
        La6:
            r2.close()
        La9:
            com.conceptglobal.pmc.database.DataBaseHandler r5 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r5.closeDatabase()
            return r1
        Laf:
            if (r2 == 0) goto Lb4
            r2.close()
        Lb4:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getSearchFarmereDetails(java.lang.String):com.conceptglobal.pmc.model.TerritotyFarmerMaster");
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x00bc, code lost:
    
        if (r2 != null) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00ca, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00cf, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00c7, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00c5, code lost:
    
        if (r2 == null) goto L28;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.conceptglobal.pmc.model.TerritotyDealerMaster getTerritoryDealerDetails(java.lang.String r5) {
        /*
            r4 = this;
            java.lang.String r0 = "Getting Territoty Dealer details :: "
            com.conceptglobal.pmc.model.TerritotyDealerMaster r1 = new com.conceptglobal.pmc.model.TerritotyDealerMaster
            r1.<init>()
            r2 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r3 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> Lbf java.lang.Exception -> Lc1
            android.database.sqlite.SQLiteDatabase r3 = r3.openDatabase()     // Catch: java.lang.Throwable -> Lbf java.lang.Exception -> Lc1
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r3     // Catch: java.lang.Throwable -> Lbf java.lang.Exception -> Lc1
            android.database.Cursor r2 = r3.rawQuery(r5, r2)     // Catch: java.lang.Throwable -> Lbf java.lang.Exception -> Lc1
            if (r2 == 0) goto Lbc
            int r3 = r2.getCount()     // Catch: java.lang.Throwable -> Lbf java.lang.Exception -> Lc1
            if (r3 <= 0) goto Lbc
            boolean r3 = r2.moveToFirst()     // Catch: java.lang.Throwable -> Lbf java.lang.Exception -> Lc1
            if (r3 == 0) goto Lbc
        L22:
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r3 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType0     // Catch: java.lang.Exception -> Lb2 java.lang.Throwable -> Lbf
            java.lang.Integer r3 = r3.value()     // Catch: java.lang.Exception -> Lb2 java.lang.Throwable -> Lbf
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> Lb2 java.lang.Throwable -> Lbf
            java.lang.String r3 = r2.getString(r3)     // Catch: java.lang.Exception -> Lb2 java.lang.Throwable -> Lbf
            r1.setContactId(r3)     // Catch: java.lang.Exception -> Lb2 java.lang.Throwable -> Lbf
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r3 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType1     // Catch: java.lang.Exception -> Lb2 java.lang.Throwable -> Lbf
            java.lang.Integer r3 = r3.value()     // Catch: java.lang.Exception -> Lb2 java.lang.Throwable -> Lbf
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> Lb2 java.lang.Throwable -> Lbf
            java.lang.String r3 = r2.getString(r3)     // Catch: java.lang.Exception -> Lb2 java.lang.Throwable -> Lbf
            java.lang.String r3 = com.conceptglobal.pmc.utils.Encryption.decrypt(r3)     // Catch: java.lang.Exception -> Lb2 java.lang.Throwable -> Lbf
            r1.setRetailerShopName(r3)     // Catch: java.lang.Exception -> Lb2 java.lang.Throwable -> Lbf
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r3 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType2     // Catch: java.lang.Exception -> Lb2 java.lang.Throwable -> Lbf
            java.lang.Integer r3 = r3.value()     // Catch: java.lang.Exception -> Lb2 java.lang.Throwable -> Lbf
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> Lb2 java.lang.Throwable -> Lbf
            java.lang.String r3 = r2.getString(r3)     // Catch: java.lang.Exception -> Lb2 java.lang.Throwable -> Lbf
            java.lang.String r3 = com.conceptglobal.pmc.utils.Encryption.decrypt(r3)     // Catch: java.lang.Exception -> Lb2 java.lang.Throwable -> Lbf
            r1.setMobileNumber(r3)     // Catch: java.lang.Exception -> Lb2 java.lang.Throwable -> Lbf
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r3 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType3     // Catch: java.lang.Exception -> Lb2 java.lang.Throwable -> Lbf
            java.lang.Integer r3 = r3.value()     // Catch: java.lang.Exception -> Lb2 java.lang.Throwable -> Lbf
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> Lb2 java.lang.Throwable -> Lbf
            java.lang.String r3 = r2.getString(r3)     // Catch: java.lang.Exception -> Lb2 java.lang.Throwable -> Lbf
            r1.setTerritory(r3)     // Catch: java.lang.Exception -> Lb2 java.lang.Throwable -> Lbf
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r3 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType4     // Catch: java.lang.Exception -> Lb2 java.lang.Throwable -> Lbf
            java.lang.Integer r3 = r3.value()     // Catch: java.lang.Exception -> Lb2 java.lang.Throwable -> Lbf
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> Lb2 java.lang.Throwable -> Lbf
            java.lang.String r3 = r2.getString(r3)     // Catch: java.lang.Exception -> Lb2 java.lang.Throwable -> Lbf
            r1.setVillage(r3)     // Catch: java.lang.Exception -> Lb2 java.lang.Throwable -> Lbf
            java.lang.String r3 = "VATNo"
            boolean r3 = r5.contains(r3)     // Catch: java.lang.Exception -> Lb2 java.lang.Throwable -> Lbf
            if (r3 == 0) goto L98
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r3 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType5     // Catch: java.lang.Exception -> Lb2 java.lang.Throwable -> Lbf
            java.lang.Integer r3 = r3.value()     // Catch: java.lang.Exception -> Lb2 java.lang.Throwable -> Lbf
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> Lb2 java.lang.Throwable -> Lbf
            java.lang.String r3 = r2.getString(r3)     // Catch: java.lang.Exception -> Lb2 java.lang.Throwable -> Lbf
            r1.setGSTNO(r3)     // Catch: java.lang.Exception -> Lb2 java.lang.Throwable -> Lbf
        L98:
            java.lang.String r3 = "PANNo"
            boolean r3 = r5.contains(r3)     // Catch: java.lang.Exception -> Lb2 java.lang.Throwable -> Lbf
            if (r3 == 0) goto Lb6
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r3 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType5     // Catch: java.lang.Exception -> Lb2 java.lang.Throwable -> Lbf
            java.lang.Integer r3 = r3.value()     // Catch: java.lang.Exception -> Lb2 java.lang.Throwable -> Lbf
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> Lb2 java.lang.Throwable -> Lbf
            java.lang.String r3 = r2.getString(r3)     // Catch: java.lang.Exception -> Lb2 java.lang.Throwable -> Lbf
            r1.setPanno(r3)     // Catch: java.lang.Exception -> Lb2 java.lang.Throwable -> Lbf
            goto Lb6
        Lb2:
            r3 = move-exception
            com.conceptglobal.pmc.utils.PLog.e(r0, r3)     // Catch: java.lang.Throwable -> Lbf java.lang.Exception -> Lc1
        Lb6:
            boolean r3 = r2.moveToNext()     // Catch: java.lang.Throwable -> Lbf java.lang.Exception -> Lc1
            if (r3 != 0) goto L22
        Lbc:
            if (r2 == 0) goto Lca
            goto Lc7
        Lbf:
            r5 = move-exception
            goto Ld0
        Lc1:
            r5 = move-exception
            com.conceptglobal.pmc.utils.PLog.e(r0, r5)     // Catch: java.lang.Throwable -> Lbf
            if (r2 == 0) goto Lca
        Lc7:
            r2.close()
        Lca:
            com.conceptglobal.pmc.database.DataBaseHandler r5 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r5.closeDatabase()
            return r1
        Ld0:
            if (r2 == 0) goto Ld5
            r2.close()
        Ld5:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getTerritoryDealerDetails(java.lang.String):com.conceptglobal.pmc.model.TerritotyDealerMaster");
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x006b, code lost:
    
        if (r0 != null) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x007b, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0080, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0078, code lost:
    
        r0.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0076, code lost:
    
        if (r0 == null) goto L28;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void loadFarmerMaster(android.content.Context r8) {
        /*
            r7 = this;
            android.content.Context r0 = r8.getApplicationContext()
            com.conceptglobal.pmc.PMCApplication r0 = (com.conceptglobal.pmc.PMCApplication) r0
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            r0.farmersList = r1
            r0 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r1 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L6e java.lang.Exception -> L70
            android.database.sqlite.SQLiteDatabase r1 = r1.openDatabase()     // Catch: java.lang.Throwable -> L6e java.lang.Exception -> L70
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r1     // Catch: java.lang.Throwable -> L6e java.lang.Exception -> L70
            java.lang.String r2 = "SELECT * from FarmerMaster"
            android.database.Cursor r0 = r1.rawQuery(r2, r0)     // Catch: java.lang.Throwable -> L6e java.lang.Exception -> L70
            if (r0 == 0) goto L6b
            boolean r1 = r0.moveToFirst()     // Catch: java.lang.Throwable -> L6e java.lang.Exception -> L70
            if (r1 == 0) goto L6b
            int r1 = r0.getColumnCount()     // Catch: java.lang.Throwable -> L6e java.lang.Exception -> L70
        L28:
            java.util.HashMap r2 = new java.util.HashMap     // Catch: java.lang.Throwable -> L6e java.lang.Exception -> L70
            r2.<init>()     // Catch: java.lang.Throwable -> L6e java.lang.Exception -> L70
            r3 = 0
        L2e:
            if (r3 >= r1) goto L5a
            java.lang.String r4 = r0.getString(r3)     // Catch: java.lang.Throwable -> L6e java.lang.Exception -> L70
            java.lang.String r5 = r0.getColumnName(r3)     // Catch: java.lang.Throwable -> L6e java.lang.Exception -> L70
            java.lang.String r6 = "Mobile"
            boolean r6 = r5.contains(r6)     // Catch: java.lang.Throwable -> L6e java.lang.Exception -> L70
            if (r6 != 0) goto L50
            java.lang.String r6 = "FarmerName"
            boolean r6 = r5.contains(r6)     // Catch: java.lang.Throwable -> L6e java.lang.Exception -> L70
            if (r6 != 0) goto L50
            java.lang.String r6 = "Landline"
            boolean r6 = r5.contains(r6)     // Catch: java.lang.Throwable -> L6e java.lang.Exception -> L70
            if (r6 == 0) goto L54
        L50:
            java.lang.String r4 = com.conceptglobal.pmc.utils.Encryption.decrypt(r4)     // Catch: java.lang.Throwable -> L6e java.lang.Exception -> L70
        L54:
            r2.put(r5, r4)     // Catch: java.lang.Throwable -> L6e java.lang.Exception -> L70
            int r3 = r3 + 1
            goto L2e
        L5a:
            android.content.Context r3 = r8.getApplicationContext()     // Catch: java.lang.Throwable -> L6e java.lang.Exception -> L70
            com.conceptglobal.pmc.PMCApplication r3 = (com.conceptglobal.pmc.PMCApplication) r3     // Catch: java.lang.Throwable -> L6e java.lang.Exception -> L70
            java.util.List<java.util.Map<java.lang.String, java.lang.String>> r3 = r3.farmersList     // Catch: java.lang.Throwable -> L6e java.lang.Exception -> L70
            r3.add(r2)     // Catch: java.lang.Throwable -> L6e java.lang.Exception -> L70
            boolean r2 = r0.moveToNext()     // Catch: java.lang.Throwable -> L6e java.lang.Exception -> L70
            if (r2 != 0) goto L28
        L6b:
            if (r0 == 0) goto L7b
            goto L78
        L6e:
            r8 = move-exception
            goto L81
        L70:
            r8 = move-exception
            java.lang.String r1 = "GetDataFromDB"
            com.conceptglobal.pmc.utils.PLog.e(r1, r8)     // Catch: java.lang.Throwable -> L6e
            if (r0 == 0) goto L7b
        L78:
            r0.close()
        L7b:
            com.conceptglobal.pmc.database.DataBaseHandler r8 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r8.closeDatabase()
            return
        L81:
            if (r0 == 0) goto L86
            r0.close()
        L86:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.loadFarmerMaster(android.content.Context):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0026, code lost:
    
        if (r1 != null) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0036, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x003b, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0033, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0031, code lost:
    
        if (r1 == null) goto L17;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int getAttendanceDetailsForDate(java.lang.String r4) {
        /*
            r3 = this;
            r0 = 0
            r1 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r2 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L29 java.lang.Exception -> L2b
            android.database.sqlite.SQLiteDatabase r2 = r2.openDatabase()     // Catch: java.lang.Throwable -> L29 java.lang.Exception -> L2b
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r2     // Catch: java.lang.Throwable -> L29 java.lang.Exception -> L2b
            android.database.Cursor r1 = r2.rawQuery(r4, r1)     // Catch: java.lang.Throwable -> L29 java.lang.Exception -> L2b
            if (r1 == 0) goto L26
            boolean r4 = r1.moveToFirst()     // Catch: java.lang.Throwable -> L29 java.lang.Exception -> L2b
            if (r4 == 0) goto L26
        L16:
            java.lang.String r4 = "DetailCount"
            int r4 = r1.getColumnIndex(r4)     // Catch: java.lang.Throwable -> L29 java.lang.Exception -> L2b
            int r0 = r1.getInt(r4)     // Catch: java.lang.Throwable -> L29 java.lang.Exception -> L2b
            boolean r4 = r1.moveToNext()     // Catch: java.lang.Throwable -> L29 java.lang.Exception -> L2b
            if (r4 != 0) goto L16
        L26:
            if (r1 == 0) goto L36
            goto L33
        L29:
            r4 = move-exception
            goto L3c
        L2b:
            r4 = move-exception
            java.lang.String r2 = "GetDataFromDB"
            com.conceptglobal.pmc.utils.PLog.e(r2, r4)     // Catch: java.lang.Throwable -> L29
            if (r1 == 0) goto L36
        L33:
            r1.close()
        L36:
            com.conceptglobal.pmc.database.DataBaseHandler r4 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r4.closeDatabase()
            return r0
        L3c:
            if (r1 == 0) goto L41
            r1.close()
        L41:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getAttendanceDetailsForDate(java.lang.String):int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x009e, code lost:
    
        if (r2 != null) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00ac, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00b1, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00a9, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00a7, code lost:
    
        if (r2 == null) goto L31;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.HashMap<java.lang.String, java.util.List<com.conceptglobal.pmc.attendance.AttendanceItem>> getApprovalsList(java.lang.String r7, boolean r8) {
        /*
            r6 = this;
            java.lang.String r0 = "NotifyAssignmentDet"
            java.util.HashMap r1 = new java.util.HashMap
            r1.<init>()
            r2 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r3 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> La1 java.lang.Exception -> La3
            android.database.sqlite.SQLiteDatabase r3 = r3.openDatabase()     // Catch: java.lang.Throwable -> La1 java.lang.Exception -> La3
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r3     // Catch: java.lang.Throwable -> La1 java.lang.Exception -> La3
            android.database.Cursor r2 = r3.rawQuery(r7, r2)     // Catch: java.lang.Throwable -> La1 java.lang.Exception -> La3
            if (r2 == 0) goto L9e
            int r7 = r2.getCount()     // Catch: java.lang.Throwable -> La1 java.lang.Exception -> La3
            if (r7 <= 0) goto L9e
            boolean r7 = r2.moveToFirst()     // Catch: java.lang.Throwable -> La1 java.lang.Exception -> La3
            if (r7 == 0) goto L9e
        L22:
            java.util.ArrayList r7 = new java.util.ArrayList     // Catch: java.lang.Exception -> L93 java.lang.Throwable -> La1
            r7.<init>()     // Catch: java.lang.Exception -> L93 java.lang.Throwable -> La1
            com.conceptglobal.pmc.attendance.AttendanceItem r3 = new com.conceptglobal.pmc.attendance.AttendanceItem     // Catch: java.lang.Exception -> L93 java.lang.Throwable -> La1
            r3.<init>()     // Catch: java.lang.Exception -> L93 java.lang.Throwable -> La1
            java.lang.String r4 = "TransId"
            int r4 = r2.getColumnIndex(r4)     // Catch: java.lang.Exception -> L93 java.lang.Throwable -> La1
            java.lang.String r4 = r2.getString(r4)     // Catch: java.lang.Exception -> L93 java.lang.Throwable -> La1
            r3.setTransID(r4)     // Catch: java.lang.Exception -> L93 java.lang.Throwable -> La1
            java.lang.String r4 = "FOUserName"
            int r4 = r2.getColumnIndex(r4)     // Catch: java.lang.Exception -> L93 java.lang.Throwable -> La1
            java.lang.String r4 = r2.getString(r4)     // Catch: java.lang.Exception -> L93 java.lang.Throwable -> La1
            r3.setTitle(r4)     // Catch: java.lang.Exception -> L93 java.lang.Throwable -> La1
            java.lang.String r4 = "AttendanceDate"
            int r4 = r2.getColumnIndex(r4)     // Catch: java.lang.Exception -> L93 java.lang.Throwable -> La1
            java.lang.String r4 = r2.getString(r4)     // Catch: java.lang.Exception -> L93 java.lang.Throwable -> La1
            r3.setDate(r4)     // Catch: java.lang.Exception -> L93 java.lang.Throwable -> La1
            java.lang.String r4 = "FoTravel"
            int r4 = r2.getColumnIndex(r4)     // Catch: java.lang.Exception -> L93 java.lang.Throwable -> La1
            java.lang.String r4 = r2.getString(r4)     // Catch: java.lang.Exception -> L93 java.lang.Throwable -> La1
            r3.setDistance(r4)     // Catch: java.lang.Exception -> L93 java.lang.Throwable -> La1
            java.lang.String r4 = "FoNightHalt"
            int r4 = r2.getColumnIndex(r4)     // Catch: java.lang.Exception -> L93 java.lang.Throwable -> La1
            java.lang.String r4 = r2.getString(r4)     // Catch: java.lang.Exception -> L93 java.lang.Throwable -> La1
            r3.setNighthalt(r4)     // Catch: java.lang.Exception -> L93 java.lang.Throwable -> La1
            if (r8 == 0) goto L74
            java.lang.String r4 = r3.getTitle()     // Catch: java.lang.Exception -> L93 java.lang.Throwable -> La1
            goto L78
        L74:
            java.lang.String r4 = r3.getDate()     // Catch: java.lang.Exception -> L93 java.lang.Throwable -> La1
        L78:
            boolean r5 = r1.containsKey(r4)     // Catch: java.lang.Exception -> L93 java.lang.Throwable -> La1
            if (r5 == 0) goto L88
            java.lang.Object r7 = r1.get(r4)     // Catch: java.lang.Exception -> L93 java.lang.Throwable -> La1
            java.util.List r7 = (java.util.List) r7     // Catch: java.lang.Exception -> L93 java.lang.Throwable -> La1
            r7.add(r3)     // Catch: java.lang.Exception -> L93 java.lang.Throwable -> La1
            goto L98
        L88:
            r7.add(r3)     // Catch: java.lang.Exception -> L93 java.lang.Throwable -> La1
            java.lang.String r3 = r3.getTitle()     // Catch: java.lang.Exception -> L93 java.lang.Throwable -> La1
            r1.put(r3, r7)     // Catch: java.lang.Exception -> L93 java.lang.Throwable -> La1
            goto L98
        L93:
            r7 = move-exception
            r3 = 0
            com.conceptglobal.pmc.utils.PLog.e(r0, r7, r3)     // Catch: java.lang.Throwable -> La1 java.lang.Exception -> La3
        L98:
            boolean r7 = r2.moveToNext()     // Catch: java.lang.Throwable -> La1 java.lang.Exception -> La3
            if (r7 != 0) goto L22
        L9e:
            if (r2 == 0) goto Lac
            goto La9
        La1:
            r7 = move-exception
            goto Lb2
        La3:
            r7 = move-exception
            com.conceptglobal.pmc.utils.PLog.e(r0, r7)     // Catch: java.lang.Throwable -> La1
            if (r2 == 0) goto Lac
        La9:
            r2.close()
        Lac:
            com.conceptglobal.pmc.database.DataBaseHandler r7 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r7.closeDatabase()
            return r1
        Lb2:
            if (r2 == 0) goto Lb7
            r2.close()
        Lb7:
            com.conceptglobal.pmc.database.DataBaseHandler r8 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r8.closeDatabase()
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getApprovalsList(java.lang.String, boolean):java.util.HashMap");
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:21:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0081  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String getIMEIData() {
        /*
            r6 = this;
            java.lang.String r0 = ""
            r1 = 0
            java.lang.String r2 = "Select IMEINumber1, IMEINumber2 from IMEINumbersMaster"
            com.conceptglobal.pmc.database.DataBaseHandler r3 = com.conceptglobal.pmc.database.DataBaseHandler.getInstance()     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
            android.database.sqlite.SQLiteDatabase r3 = r3.openDatabase()     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
            android.database.Cursor r1 = r3.rawQuery(r2, r1)     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
            if (r1 == 0) goto L3e
            boolean r2 = r1.moveToFirst()     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4c
            if (r2 == 0) goto L3e
            r2 = r0
        L1a:
            java.lang.String r3 = "IMEINumber1"
            int r3 = r1.getColumnIndex(r3)     // Catch: java.lang.Exception -> L38 java.lang.Throwable -> L4a
            java.lang.String r0 = r1.getString(r3)     // Catch: java.lang.Exception -> L38 java.lang.Throwable -> L4a
            java.lang.String r3 = "IMEINumber2"
            int r3 = r1.getColumnIndex(r3)     // Catch: java.lang.Exception -> L38 java.lang.Throwable -> L4a
            java.lang.String r2 = r1.getString(r3)     // Catch: java.lang.Exception -> L38 java.lang.Throwable -> L4a
            boolean r3 = r1.moveToNext()     // Catch: java.lang.Exception -> L38 java.lang.Throwable -> L4a
            if (r3 != 0) goto L1a
            r5 = r2
            r2 = r0
            r0 = r5
            goto L3f
        L38:
            r3 = move-exception
            r5 = r1
            r1 = r0
            r0 = r2
            r2 = r5
            goto L4f
        L3e:
            r2 = r0
        L3f:
            if (r1 == 0) goto L44
            r1.close()
        L44:
            com.conceptglobal.pmc.database.DataBaseHandler r1 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r1.closeDatabase()
            goto L62
        L4a:
            r0 = move-exception
            goto L7f
        L4c:
            r3 = move-exception
            r2 = r1
            r1 = r0
        L4f:
            java.lang.String r4 = "GetDataFromDB"
            com.conceptglobal.pmc.utils.PLog.e(r4, r3)     // Catch: java.lang.Throwable -> L7d
            r3.printStackTrace()     // Catch: java.lang.Throwable -> L7d
            if (r2 == 0) goto L5c
            r2.close()
        L5c:
            com.conceptglobal.pmc.database.DataBaseHandler r2 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r2.closeDatabase()
            r2 = r1
        L62:
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            if (r1 != 0) goto L7c
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            r1.append(r2)
            java.lang.String r2 = ","
            r1.append(r2)
            r1.append(r0)
            java.lang.String r2 = r1.toString()
        L7c:
            return r2
        L7d:
            r0 = move-exception
            r1 = r2
        L7f:
            if (r1 == 0) goto L84
            r1.close()
        L84:
            com.conceptglobal.pmc.database.DataBaseHandler r1 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r1.closeDatabase()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getIMEIData():java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x01f0, code lost:
    
        if (r1 != null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0200, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0205, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x01fd, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x01fb, code lost:
    
        if (r1 == null) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.conceptglobal.pmc.model.PMCTSTAssignmentActivityDetails> getPMCTSTAssignmentActivityDetails(java.lang.String r5) {
        /*
            Method dump skipped, instructions count: 529
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getPMCTSTAssignmentActivityDetails(java.lang.String):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x01f0, code lost:
    
        if (r1 != null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0200, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0205, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x01fd, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x01fb, code lost:
    
        if (r1 == null) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.conceptglobal.pmc.model.FeedbackAssignmentActivityDetailsModel> getPMCFBFAssignmentActivityDetails(java.lang.String r5) {
        /*
            Method dump skipped, instructions count: 529
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getPMCFBFAssignmentActivityDetails(java.lang.String):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0026, code lost:
    
        if (r1 != null) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x003a, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x003f, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0037, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0035, code lost:
    
        if (r1 == null) goto L19;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.conceptglobal.pmc.model.ImageDetails> getImageDetailsForCompress(java.lang.String r4) {
        /*
            r3 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r1 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r2 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L29 java.lang.Exception -> L2b
            android.database.sqlite.SQLiteDatabase r2 = r2.openDatabase()     // Catch: java.lang.Throwable -> L29 java.lang.Exception -> L2b
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r2     // Catch: java.lang.Throwable -> L29 java.lang.Exception -> L2b
            android.database.Cursor r1 = r2.rawQuery(r4, r1)     // Catch: java.lang.Throwable -> L29 java.lang.Exception -> L2b
            if (r1 == 0) goto L26
            int r4 = r1.getCount()     // Catch: java.lang.Throwable -> L29 java.lang.Exception -> L2b
            if (r4 <= 0) goto L26
            boolean r4 = r1.moveToFirst()     // Catch: java.lang.Throwable -> L29 java.lang.Exception -> L2b
            if (r4 == 0) goto L26
        L20:
            boolean r4 = r1.moveToNext()     // Catch: java.lang.Throwable -> L29 java.lang.Exception -> L2b
            if (r4 != 0) goto L20
        L26:
            if (r1 == 0) goto L3a
            goto L37
        L29:
            r4 = move-exception
            goto L40
        L2b:
            r4 = move-exception
            java.lang.String r2 = "Getting Image details"
            java.lang.String r4 = r4.getMessage()     // Catch: java.lang.Throwable -> L29
            com.conceptglobal.pmc.utils.PLog.e(r2, r4)     // Catch: java.lang.Throwable -> L29
            if (r1 == 0) goto L3a
        L37:
            r1.close()
        L3a:
            com.conceptglobal.pmc.database.DataBaseHandler r4 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r4.closeDatabase()
            return r0
        L40:
            if (r1 == 0) goto L45
            r1.close()
        L45:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getImageDetailsForCompress(java.lang.String):java.util.List");
    }

    public synchronized void executeRawQueryUpdateImage(String str, SQLiteDatabase sQLiteDatabase) throws Exception {
        if (sQLiteDatabase != null) {
            try {
                sQLiteDatabase.execSQL(str);
            } catch (Exception e) {
                PLog.e(TAG, e, 0);
            }
        }
    }

    public synchronized String executeRawQueryInDBVideo(String str) throws Exception {
        try {
            try {
                SQLiteDatabase openDatabase = dbInstance.openDatabase();
                sqliteDatabase = openDatabase;
                if (openDatabase != null) {
                    openDatabase.execSQL(str);
                }
                dbInstance.closeDatabase();
            } catch (Exception e) {
                throw e;
            }
        } catch (Throwable th) {
            dbInstance.closeDatabase();
            throw th;
        }
        return "";
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x00b8, code lost:
    
        if (r1 != null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x00c8, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x00cd, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00c5, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00c3, code lost:
    
        if (r1 == null) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.conceptglobal.pmc.model.RetailerMultiAttributeDetails> getDealerMultiAttributeDetails(java.lang.String r5) {
        /*
            r4 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r1 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r2 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> Lbb java.lang.Exception -> Lbd
            android.database.sqlite.SQLiteDatabase r2 = r2.openDatabase()     // Catch: java.lang.Throwable -> Lbb java.lang.Exception -> Lbd
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r2     // Catch: java.lang.Throwable -> Lbb java.lang.Exception -> Lbd
            android.database.Cursor r1 = r2.rawQuery(r5, r1)     // Catch: java.lang.Throwable -> Lbb java.lang.Exception -> Lbd
            if (r1 == 0) goto Lb8
            int r5 = r1.getCount()     // Catch: java.lang.Throwable -> Lbb java.lang.Exception -> Lbd
            if (r5 <= 0) goto Lb8
            boolean r5 = r1.moveToFirst()     // Catch: java.lang.Throwable -> Lbb java.lang.Exception -> Lbd
            if (r5 == 0) goto Lb8
        L20:
            com.conceptglobal.pmc.model.RetailerMultiAttributeDetails r5 = new com.conceptglobal.pmc.model.RetailerMultiAttributeDetails     // Catch: java.lang.Exception -> Lab java.lang.Throwable -> Lbb
            r5.<init>()     // Catch: java.lang.Exception -> Lab java.lang.Throwable -> Lbb
            java.lang.String r2 = "LineId"
            int r2 = r1.getColumnIndex(r2)     // Catch: java.lang.Exception -> Lab java.lang.Throwable -> Lbb
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> Lab java.lang.Throwable -> Lbb
            r5.setLineId(r2)     // Catch: java.lang.Exception -> Lab java.lang.Throwable -> Lbb
            java.lang.String r2 = "ContactID"
            int r2 = r1.getColumnIndex(r2)     // Catch: java.lang.Exception -> Lab java.lang.Throwable -> Lbb
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> Lab java.lang.Throwable -> Lbb
            r5.setContactID(r2)     // Catch: java.lang.Exception -> Lab java.lang.Throwable -> Lbb
            java.lang.String r2 = "ColumnMappingId"
            int r2 = r1.getColumnIndex(r2)     // Catch: java.lang.Exception -> Lab java.lang.Throwable -> Lbb
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> Lab java.lang.Throwable -> Lbb
            r5.setColumnMappingId(r2)     // Catch: java.lang.Exception -> Lab java.lang.Throwable -> Lbb
            java.lang.String r2 = "AttributeValue"
            int r2 = r1.getColumnIndex(r2)     // Catch: java.lang.Exception -> Lab java.lang.Throwable -> Lbb
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> Lab java.lang.Throwable -> Lbb
            r5.setAttributeValue(r2)     // Catch: java.lang.Exception -> Lab java.lang.Throwable -> Lbb
            java.lang.String r2 = "AttributeTypeName"
            int r2 = r1.getColumnIndex(r2)     // Catch: java.lang.Exception -> Lab java.lang.Throwable -> Lbb
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> Lab java.lang.Throwable -> Lbb
            r5.setAttributeTypeName(r2)     // Catch: java.lang.Exception -> Lab java.lang.Throwable -> Lbb
            java.lang.String r2 = "PdaId"
            int r2 = r1.getColumnIndex(r2)     // Catch: java.lang.Exception -> Lab java.lang.Throwable -> Lbb
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> Lab java.lang.Throwable -> Lbb
            r5.setPdaId(r2)     // Catch: java.lang.Exception -> Lab java.lang.Throwable -> Lbb
            java.lang.String r2 = "CreatedBy"
            int r2 = r1.getColumnIndex(r2)     // Catch: java.lang.Exception -> Lab java.lang.Throwable -> Lbb
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> Lab java.lang.Throwable -> Lbb
            r5.setCreatedBy(r2)     // Catch: java.lang.Exception -> Lab java.lang.Throwable -> Lbb
            java.lang.String r2 = "CreatedDate"
            int r2 = r1.getColumnIndex(r2)     // Catch: java.lang.Exception -> Lab java.lang.Throwable -> Lbb
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> Lab java.lang.Throwable -> Lbb
            r5.setCreatedDate(r2)     // Catch: java.lang.Exception -> Lab java.lang.Throwable -> Lbb
            java.lang.String r2 = "UpdatedBy"
            int r2 = r1.getColumnIndex(r2)     // Catch: java.lang.Exception -> Lab java.lang.Throwable -> Lbb
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> Lab java.lang.Throwable -> Lbb
            r5.setUpdatedBy(r2)     // Catch: java.lang.Exception -> Lab java.lang.Throwable -> Lbb
            java.lang.String r2 = "UpdatedDate"
            int r2 = r1.getColumnIndex(r2)     // Catch: java.lang.Exception -> Lab java.lang.Throwable -> Lbb
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> Lab java.lang.Throwable -> Lbb
            r5.setUpdatedDate(r2)     // Catch: java.lang.Exception -> Lab java.lang.Throwable -> Lbb
            r0.add(r5)     // Catch: java.lang.Exception -> Lab java.lang.Throwable -> Lbb
            goto Lb2
        Lab:
            r5 = move-exception
            java.lang.String r2 = "PMCAssignmentActivityDetails"
            r3 = 0
            com.conceptglobal.pmc.utils.PLog.e(r2, r5, r3)     // Catch: java.lang.Throwable -> Lbb java.lang.Exception -> Lbd
        Lb2:
            boolean r5 = r1.moveToNext()     // Catch: java.lang.Throwable -> Lbb java.lang.Exception -> Lbd
            if (r5 != 0) goto L20
        Lb8:
            if (r1 == 0) goto Lc8
            goto Lc5
        Lbb:
            r5 = move-exception
            goto Lce
        Lbd:
            r5 = move-exception
            java.lang.String r2 = "PMC Assignment Activity Details"
            com.conceptglobal.pmc.utils.PLog.e(r2, r5)     // Catch: java.lang.Throwable -> Lbb
            if (r1 == 0) goto Lc8
        Lc5:
            r1.close()
        Lc8:
            com.conceptglobal.pmc.database.DataBaseHandler r5 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r5.closeDatabase()
            return r0
        Lce:
            if (r1 == 0) goto Ld3
            r1.close()
        Ld3:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getDealerMultiAttributeDetails(java.lang.String):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x00c5, code lost:
    
        if (r1 != null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x00d5, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x00da, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00d2, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00d0, code lost:
    
        if (r1 == null) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.conceptglobal.pmc.model.FarmerMultiAttributeDetails> getFarmerMultiAttributeDetails(java.lang.String r5) {
        /*
            r4 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r1 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r2 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> Lc8 java.lang.Exception -> Lca
            android.database.sqlite.SQLiteDatabase r2 = r2.openDatabase()     // Catch: java.lang.Throwable -> Lc8 java.lang.Exception -> Lca
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r2     // Catch: java.lang.Throwable -> Lc8 java.lang.Exception -> Lca
            android.database.Cursor r1 = r2.rawQuery(r5, r1)     // Catch: java.lang.Throwable -> Lc8 java.lang.Exception -> Lca
            if (r1 == 0) goto Lc5
            int r5 = r1.getCount()     // Catch: java.lang.Throwable -> Lc8 java.lang.Exception -> Lca
            if (r5 <= 0) goto Lc5
            boolean r5 = r1.moveToFirst()     // Catch: java.lang.Throwable -> Lc8 java.lang.Exception -> Lca
            if (r5 == 0) goto Lc5
        L20:
            com.conceptglobal.pmc.model.FarmerMultiAttributeDetails r5 = new com.conceptglobal.pmc.model.FarmerMultiAttributeDetails     // Catch: java.lang.Exception -> Lb8 java.lang.Throwable -> Lc8
            r5.<init>()     // Catch: java.lang.Exception -> Lb8 java.lang.Throwable -> Lc8
            java.lang.String r2 = "LineId"
            int r2 = r1.getColumnIndex(r2)     // Catch: java.lang.Exception -> Lb8 java.lang.Throwable -> Lc8
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> Lb8 java.lang.Throwable -> Lc8
            r5.setLineId(r2)     // Catch: java.lang.Exception -> Lb8 java.lang.Throwable -> Lc8
            java.lang.String r2 = "FarmerId"
            int r2 = r1.getColumnIndex(r2)     // Catch: java.lang.Exception -> Lb8 java.lang.Throwable -> Lc8
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> Lb8 java.lang.Throwable -> Lc8
            r5.setFarmerId(r2)     // Catch: java.lang.Exception -> Lb8 java.lang.Throwable -> Lc8
            java.lang.String r2 = "RespondentNo"
            int r2 = r1.getColumnIndex(r2)     // Catch: java.lang.Exception -> Lb8 java.lang.Throwable -> Lc8
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> Lb8 java.lang.Throwable -> Lc8
            r5.setRespondentNo(r2)     // Catch: java.lang.Exception -> Lb8 java.lang.Throwable -> Lc8
            java.lang.String r2 = "ColumnMappingId"
            int r2 = r1.getColumnIndex(r2)     // Catch: java.lang.Exception -> Lb8 java.lang.Throwable -> Lc8
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> Lb8 java.lang.Throwable -> Lc8
            r5.setColumnMappingId(r2)     // Catch: java.lang.Exception -> Lb8 java.lang.Throwable -> Lc8
            java.lang.String r2 = "AttributeValue"
            int r2 = r1.getColumnIndex(r2)     // Catch: java.lang.Exception -> Lb8 java.lang.Throwable -> Lc8
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> Lb8 java.lang.Throwable -> Lc8
            r5.setAttributeValue(r2)     // Catch: java.lang.Exception -> Lb8 java.lang.Throwable -> Lc8
            java.lang.String r2 = "AttributeTypeName"
            int r2 = r1.getColumnIndex(r2)     // Catch: java.lang.Exception -> Lb8 java.lang.Throwable -> Lc8
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> Lb8 java.lang.Throwable -> Lc8
            r5.setAttributeTypeName(r2)     // Catch: java.lang.Exception -> Lb8 java.lang.Throwable -> Lc8
            java.lang.String r2 = "PdaId"
            int r2 = r1.getColumnIndex(r2)     // Catch: java.lang.Exception -> Lb8 java.lang.Throwable -> Lc8
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> Lb8 java.lang.Throwable -> Lc8
            r5.setPdaId(r2)     // Catch: java.lang.Exception -> Lb8 java.lang.Throwable -> Lc8
            java.lang.String r2 = "CreatedBy"
            int r2 = r1.getColumnIndex(r2)     // Catch: java.lang.Exception -> Lb8 java.lang.Throwable -> Lc8
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> Lb8 java.lang.Throwable -> Lc8
            r5.setCreatedBy(r2)     // Catch: java.lang.Exception -> Lb8 java.lang.Throwable -> Lc8
            java.lang.String r2 = "CreatedDate"
            int r2 = r1.getColumnIndex(r2)     // Catch: java.lang.Exception -> Lb8 java.lang.Throwable -> Lc8
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> Lb8 java.lang.Throwable -> Lc8
            r5.setCreatedDate(r2)     // Catch: java.lang.Exception -> Lb8 java.lang.Throwable -> Lc8
            java.lang.String r2 = "UpdatedBy"
            int r2 = r1.getColumnIndex(r2)     // Catch: java.lang.Exception -> Lb8 java.lang.Throwable -> Lc8
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> Lb8 java.lang.Throwable -> Lc8
            r5.setUpdatedBy(r2)     // Catch: java.lang.Exception -> Lb8 java.lang.Throwable -> Lc8
            java.lang.String r2 = "UpdatedDate"
            int r2 = r1.getColumnIndex(r2)     // Catch: java.lang.Exception -> Lb8 java.lang.Throwable -> Lc8
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> Lb8 java.lang.Throwable -> Lc8
            r5.setUpdatedDate(r2)     // Catch: java.lang.Exception -> Lb8 java.lang.Throwable -> Lc8
            r0.add(r5)     // Catch: java.lang.Exception -> Lb8 java.lang.Throwable -> Lc8
            goto Lbf
        Lb8:
            r5 = move-exception
            java.lang.String r2 = "PMCAssignmentActivityDetails"
            r3 = 0
            com.conceptglobal.pmc.utils.PLog.e(r2, r5, r3)     // Catch: java.lang.Throwable -> Lc8 java.lang.Exception -> Lca
        Lbf:
            boolean r5 = r1.moveToNext()     // Catch: java.lang.Throwable -> Lc8 java.lang.Exception -> Lca
            if (r5 != 0) goto L20
        Lc5:
            if (r1 == 0) goto Ld5
            goto Ld2
        Lc8:
            r5 = move-exception
            goto Ldb
        Lca:
            r5 = move-exception
            java.lang.String r2 = "PMC Assignment Activity Details"
            com.conceptglobal.pmc.utils.PLog.e(r2, r5)     // Catch: java.lang.Throwable -> Lc8
            if (r1 == 0) goto Ld5
        Ld2:
            r1.close()
        Ld5:
            com.conceptglobal.pmc.database.DataBaseHandler r5 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r5.closeDatabase()
            return r0
        Ldb:
            if (r1 == 0) goto Le0
            r1.close()
        Le0:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getFarmerMultiAttributeDetails(java.lang.String):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0033, code lost:
    
        if (r1 != null) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0043, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0048, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0040, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x003e, code lost:
    
        if (r1 == null) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String getSourceQueryForMultiSelect(java.lang.String r5) {
        /*
            r4 = this;
            java.lang.String r0 = ""
            r1 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r2 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L36 java.lang.Exception -> L38
            android.database.sqlite.SQLiteDatabase r2 = r2.openDatabase()     // Catch: java.lang.Throwable -> L36 java.lang.Exception -> L38
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r2     // Catch: java.lang.Throwable -> L36 java.lang.Exception -> L38
            android.database.Cursor r1 = r2.rawQuery(r5, r1)     // Catch: java.lang.Throwable -> L36 java.lang.Exception -> L38
            if (r1 == 0) goto L33
            int r5 = r1.getCount()     // Catch: java.lang.Throwable -> L36 java.lang.Exception -> L38
            if (r5 <= 0) goto L33
            boolean r5 = r1.moveToFirst()     // Catch: java.lang.Throwable -> L36 java.lang.Exception -> L38
            if (r5 == 0) goto L33
        L1d:
            r5 = 0
            r1.moveToFirst()     // Catch: java.lang.Exception -> L27 java.lang.Throwable -> L36
            java.lang.String r5 = r1.getString(r5)     // Catch: java.lang.Exception -> L27 java.lang.Throwable -> L36
            r0 = r5
            goto L2d
        L27:
            r2 = move-exception
            java.lang.String r3 = "PMCAssignmentActivityDetails"
            com.conceptglobal.pmc.utils.PLog.e(r3, r2, r5)     // Catch: java.lang.Throwable -> L36 java.lang.Exception -> L38
        L2d:
            boolean r5 = r1.moveToNext()     // Catch: java.lang.Throwable -> L36 java.lang.Exception -> L38
            if (r5 != 0) goto L1d
        L33:
            if (r1 == 0) goto L43
            goto L40
        L36:
            r5 = move-exception
            goto L49
        L38:
            r5 = move-exception
            java.lang.String r2 = "PMC Assignment Activity Details"
            com.conceptglobal.pmc.utils.PLog.e(r2, r5)     // Catch: java.lang.Throwable -> L36
            if (r1 == 0) goto L43
        L40:
            r1.close()
        L43:
            com.conceptglobal.pmc.database.DataBaseHandler r5 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r5.closeDatabase()
            return r0
        L49:
            if (r1 == 0) goto L4e
            r1.close()
        L4e:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getSourceQueryForMultiSelect(java.lang.String):java.lang.String");
    }

    public Hashtable<String, String> getSourceQueryForMultiSelectResult(String str) {
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
                            PLog.e(TAG, e);
                        }
                    } while (cursor.moveToNext());
                }
                return hashtable;
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

    public ArrayList<String> getMultiAttributeValues(String str) throws Exception {
        ArrayList<String> arrayList = new ArrayList<>();
        Cursor cursor = null;
        try {
            try {
                SQLiteDatabase openDatabase = dbInstance.openDatabase();
                sqliteDatabase = openDatabase;
                cursor = openDatabase.rawQuery(str, null);
                if (cursor != null && cursor.getCount() > 0 && cursor.moveToFirst()) {
                    do {
                        try {
                            arrayList.add(cursor.getString(0));
                        } catch (Exception e) {
                            PLog.e(TAG, e);
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

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0109, code lost:
    
        if (r1 != null) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0117, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x011c, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0114, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0112, code lost:
    
        if (r1 == null) goto L26;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.HashMap<java.lang.String, java.util.ArrayList<com.conceptglobal.pmc.model.TableBean>> getPricesListData() {
        /*
            r4 = this;
            java.util.HashMap r0 = new java.util.HashMap
            r0.<init>()
            r1 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r2 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L10c java.lang.Exception -> L10e
            android.database.sqlite.SQLiteDatabase r2 = r2.openDatabase()     // Catch: java.lang.Throwable -> L10c java.lang.Exception -> L10e
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r2     // Catch: java.lang.Throwable -> L10c java.lang.Exception -> L10e
            com.conceptglobal.pmc.common.Queries r3 = com.conceptglobal.pmc.common.Queries.getInstance()     // Catch: java.lang.Throwable -> L10c java.lang.Exception -> L10e
            java.lang.String r3 = r3.getAllPricesData()     // Catch: java.lang.Throwable -> L10c java.lang.Exception -> L10e
            android.database.Cursor r1 = r2.rawQuery(r3, r1)     // Catch: java.lang.Throwable -> L10c java.lang.Exception -> L10e
            if (r1 == 0) goto L109
            int r2 = r1.getCount()     // Catch: java.lang.Throwable -> L10c java.lang.Exception -> L10e
            if (r2 <= 0) goto L109
            boolean r2 = r1.moveToFirst()     // Catch: java.lang.Throwable -> L10c java.lang.Exception -> L10e
            if (r2 == 0) goto L109
        L28:
            com.conceptglobal.pmc.model.TableBean r2 = new com.conceptglobal.pmc.model.TableBean     // Catch: java.lang.Exception -> Lff java.lang.Throwable -> L10c
            r2.<init>()     // Catch: java.lang.Exception -> Lff java.lang.Throwable -> L10c
            com.conceptglobal.pmc.fotracker.ConstantDeclarations$Enumaration r3 = com.conceptglobal.pmc.fotracker.ConstantDeclarations.Enumaration.mRequestType0     // Catch: java.lang.Exception -> Lff java.lang.Throwable -> L10c
            java.lang.Integer r3 = r3.value()     // Catch: java.lang.Exception -> Lff java.lang.Throwable -> L10c
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> Lff java.lang.Throwable -> L10c
            int r3 = r1.getInt(r3)     // Catch: java.lang.Exception -> Lff java.lang.Throwable -> L10c
            r2.setLineId(r3)     // Catch: java.lang.Exception -> Lff java.lang.Throwable -> L10c
            com.conceptglobal.pmc.fotracker.ConstantDeclarations$Enumaration r3 = com.conceptglobal.pmc.fotracker.ConstantDeclarations.Enumaration.mRequestType1     // Catch: java.lang.Exception -> Lff java.lang.Throwable -> L10c
            java.lang.Integer r3 = r3.value()     // Catch: java.lang.Exception -> Lff java.lang.Throwable -> L10c
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> Lff java.lang.Throwable -> L10c
            java.lang.String r3 = r1.getString(r3)     // Catch: java.lang.Exception -> Lff java.lang.Throwable -> L10c
            r2.setState(r3)     // Catch: java.lang.Exception -> Lff java.lang.Throwable -> L10c
            com.conceptglobal.pmc.fotracker.ConstantDeclarations$Enumaration r3 = com.conceptglobal.pmc.fotracker.ConstantDeclarations.Enumaration.mRequestType2     // Catch: java.lang.Exception -> Lff java.lang.Throwable -> L10c
            java.lang.Integer r3 = r3.value()     // Catch: java.lang.Exception -> Lff java.lang.Throwable -> L10c
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> Lff java.lang.Throwable -> L10c
            java.lang.String r3 = r1.getString(r3)     // Catch: java.lang.Exception -> Lff java.lang.Throwable -> L10c
            r2.setDistrict(r3)     // Catch: java.lang.Exception -> Lff java.lang.Throwable -> L10c
            com.conceptglobal.pmc.fotracker.ConstantDeclarations$Enumaration r3 = com.conceptglobal.pmc.fotracker.ConstantDeclarations.Enumaration.mRequestType3     // Catch: java.lang.Exception -> Lff java.lang.Throwable -> L10c
            java.lang.Integer r3 = r3.value()     // Catch: java.lang.Exception -> Lff java.lang.Throwable -> L10c
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> Lff java.lang.Throwable -> L10c
            java.lang.String r3 = r1.getString(r3)     // Catch: java.lang.Exception -> Lff java.lang.Throwable -> L10c
            r2.setMarket(r3)     // Catch: java.lang.Exception -> Lff java.lang.Throwable -> L10c
            com.conceptglobal.pmc.fotracker.ConstantDeclarations$Enumaration r3 = com.conceptglobal.pmc.fotracker.ConstantDeclarations.Enumaration.mRequestType4     // Catch: java.lang.Exception -> Lff java.lang.Throwable -> L10c
            java.lang.Integer r3 = r3.value()     // Catch: java.lang.Exception -> Lff java.lang.Throwable -> L10c
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> Lff java.lang.Throwable -> L10c
            java.lang.String r3 = r1.getString(r3)     // Catch: java.lang.Exception -> Lff java.lang.Throwable -> L10c
            r2.setCommodity(r3)     // Catch: java.lang.Exception -> Lff java.lang.Throwable -> L10c
            com.conceptglobal.pmc.fotracker.ConstantDeclarations$Enumaration r3 = com.conceptglobal.pmc.fotracker.ConstantDeclarations.Enumaration.mRequestType5     // Catch: java.lang.Exception -> Lff java.lang.Throwable -> L10c
            java.lang.Integer r3 = r3.value()     // Catch: java.lang.Exception -> Lff java.lang.Throwable -> L10c
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> Lff java.lang.Throwable -> L10c
            java.lang.String r3 = r1.getString(r3)     // Catch: java.lang.Exception -> Lff java.lang.Throwable -> L10c
            r2.setVariety(r3)     // Catch: java.lang.Exception -> Lff java.lang.Throwable -> L10c
            com.conceptglobal.pmc.fotracker.ConstantDeclarations$Enumaration r3 = com.conceptglobal.pmc.fotracker.ConstantDeclarations.Enumaration.mRequestType6     // Catch: java.lang.Exception -> Lff java.lang.Throwable -> L10c
            java.lang.Integer r3 = r3.value()     // Catch: java.lang.Exception -> Lff java.lang.Throwable -> L10c
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> Lff java.lang.Throwable -> L10c
            java.lang.String r3 = r1.getString(r3)     // Catch: java.lang.Exception -> Lff java.lang.Throwable -> L10c
            r2.setArrival_date(r3)     // Catch: java.lang.Exception -> Lff java.lang.Throwable -> L10c
            com.conceptglobal.pmc.fotracker.ConstantDeclarations$Enumaration r3 = com.conceptglobal.pmc.fotracker.ConstantDeclarations.Enumaration.mRequestType7     // Catch: java.lang.Exception -> Lff java.lang.Throwable -> L10c
            java.lang.Integer r3 = r3.value()     // Catch: java.lang.Exception -> Lff java.lang.Throwable -> L10c
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> Lff java.lang.Throwable -> L10c
            java.lang.String r3 = r1.getString(r3)     // Catch: java.lang.Exception -> Lff java.lang.Throwable -> L10c
            r2.setMin_price(r3)     // Catch: java.lang.Exception -> Lff java.lang.Throwable -> L10c
            com.conceptglobal.pmc.fotracker.ConstantDeclarations$Enumaration r3 = com.conceptglobal.pmc.fotracker.ConstantDeclarations.Enumaration.mRequestType8     // Catch: java.lang.Exception -> Lff java.lang.Throwable -> L10c
            java.lang.Integer r3 = r3.value()     // Catch: java.lang.Exception -> Lff java.lang.Throwable -> L10c
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> Lff java.lang.Throwable -> L10c
            java.lang.String r3 = r1.getString(r3)     // Catch: java.lang.Exception -> Lff java.lang.Throwable -> L10c
            r2.setMax_price(r3)     // Catch: java.lang.Exception -> Lff java.lang.Throwable -> L10c
            com.conceptglobal.pmc.fotracker.ConstantDeclarations$Enumaration r3 = com.conceptglobal.pmc.fotracker.ConstantDeclarations.Enumaration.mRequestType9     // Catch: java.lang.Exception -> Lff java.lang.Throwable -> L10c
            java.lang.Integer r3 = r3.value()     // Catch: java.lang.Exception -> Lff java.lang.Throwable -> L10c
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> Lff java.lang.Throwable -> L10c
            java.lang.String r3 = r1.getString(r3)     // Catch: java.lang.Exception -> Lff java.lang.Throwable -> L10c
            r2.setModal_price(r3)     // Catch: java.lang.Exception -> Lff java.lang.Throwable -> L10c
            java.lang.String r3 = r2.getMarket()     // Catch: java.lang.Exception -> Lff java.lang.Throwable -> L10c
            boolean r3 = r0.containsKey(r3)     // Catch: java.lang.Exception -> Lff java.lang.Throwable -> L10c
            if (r3 == 0) goto Lef
            java.lang.String r3 = r2.getMarket()     // Catch: java.lang.Exception -> Lff java.lang.Throwable -> L10c
            java.lang.Object r3 = r0.get(r3)     // Catch: java.lang.Exception -> Lff java.lang.Throwable -> L10c
            java.util.ArrayList r3 = (java.util.ArrayList) r3     // Catch: java.lang.Exception -> Lff java.lang.Throwable -> L10c
            r3.add(r2)     // Catch: java.lang.Exception -> Lff java.lang.Throwable -> L10c
            goto L103
        Lef:
            java.util.ArrayList r3 = new java.util.ArrayList     // Catch: java.lang.Exception -> Lff java.lang.Throwable -> L10c
            r3.<init>()     // Catch: java.lang.Exception -> Lff java.lang.Throwable -> L10c
            r3.add(r2)     // Catch: java.lang.Exception -> Lff java.lang.Throwable -> L10c
            java.lang.String r2 = r2.getMarket()     // Catch: java.lang.Exception -> Lff java.lang.Throwable -> L10c
            r0.put(r2, r3)     // Catch: java.lang.Exception -> Lff java.lang.Throwable -> L10c
            goto L103
        Lff:
            r2 = move-exception
            r2.printStackTrace()     // Catch: java.lang.Throwable -> L10c java.lang.Exception -> L10e
        L103:
            boolean r2 = r1.moveToNext()     // Catch: java.lang.Throwable -> L10c java.lang.Exception -> L10e
            if (r2 != 0) goto L28
        L109:
            if (r1 == 0) goto L117
            goto L114
        L10c:
            r0 = move-exception
            goto L11d
        L10e:
            r2 = move-exception
            r2.getMessage()     // Catch: java.lang.Throwable -> L10c
            if (r1 == 0) goto L117
        L114:
            r1.close()
        L117:
            com.conceptglobal.pmc.database.DataBaseHandler r1 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r1.closeDatabase()
            return r0
        L11d:
            if (r1 == 0) goto L122
            r1.close()
        L122:
            com.conceptglobal.pmc.database.DataBaseHandler r1 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r1.closeDatabase()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getPricesListData():java.util.HashMap");
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0074, code lost:
    
        if (r5 == null) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x006a, code lost:
    
        if (r5 != null) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0079, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x007e, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0076, code lost:
    
        r5.close();
     */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0083  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.conceptglobal.pmc.model.FarmerMaster getFarmerNameMobileData(java.lang.String r5) {
        /*
            r4 = this;
            java.lang.String r0 = "farmerMaster"
            r1 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r2 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L6d java.lang.Exception -> L6f
            android.database.sqlite.SQLiteDatabase r2 = r2.openDatabase()     // Catch: java.lang.Throwable -> L6d java.lang.Exception -> L6f
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r2     // Catch: java.lang.Throwable -> L6d java.lang.Exception -> L6f
            android.database.Cursor r5 = r2.rawQuery(r5, r1)     // Catch: java.lang.Throwable -> L6d java.lang.Exception -> L6f
            if (r5 == 0) goto L6a
            int r2 = r5.getCount()     // Catch: java.lang.Exception -> L68 java.lang.Throwable -> L7f
            if (r2 <= 0) goto L6a
            boolean r2 = r5.moveToFirst()     // Catch: java.lang.Exception -> L68 java.lang.Throwable -> L7f
            if (r2 == 0) goto L6a
        L1d:
            com.conceptglobal.pmc.model.FarmerMaster r2 = new com.conceptglobal.pmc.model.FarmerMaster     // Catch: java.lang.Exception -> L5c java.lang.Throwable -> L7f
            r2.<init>()     // Catch: java.lang.Exception -> L5c java.lang.Throwable -> L7f
            java.lang.String r3 = "FarmerName"
            int r3 = r5.getColumnIndex(r3)     // Catch: java.lang.Exception -> L5c java.lang.Throwable -> L7f
            java.lang.String r3 = r5.getString(r3)     // Catch: java.lang.Exception -> L5c java.lang.Throwable -> L7f
            java.lang.String r3 = com.conceptglobal.pmc.utils.Encryption.decrypt(r3)     // Catch: java.lang.Exception -> L5c java.lang.Throwable -> L7f
            r2.setFarmerName(r3)     // Catch: java.lang.Exception -> L5c java.lang.Throwable -> L7f
            java.lang.String r3 = "Mobile"
            int r3 = r5.getColumnIndex(r3)     // Catch: java.lang.Exception -> L5c java.lang.Throwable -> L7f
            java.lang.String r3 = r5.getString(r3)     // Catch: java.lang.Exception -> L5c java.lang.Throwable -> L7f
            java.lang.String r3 = com.conceptglobal.pmc.utils.Encryption.decrypt(r3)     // Catch: java.lang.Exception -> L5c java.lang.Throwable -> L7f
            r2.setMobile(r3)     // Catch: java.lang.Exception -> L5c java.lang.Throwable -> L7f
            java.lang.String r3 = "pdaid"
            int r3 = r5.getColumnIndex(r3)     // Catch: java.lang.Exception -> L5c java.lang.Throwable -> L7f
            java.lang.String r3 = r5.getString(r3)     // Catch: java.lang.Exception -> L5c java.lang.Throwable -> L7f
            r2.setPdaid(r3)     // Catch: java.lang.Exception -> L5c java.lang.Throwable -> L7f
            if (r5 == 0) goto L56
            r5.close()
        L56:
            com.conceptglobal.pmc.database.DataBaseHandler r5 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r5.closeDatabase()
            return r2
        L5c:
            r2 = move-exception
            r3 = 0
            com.conceptglobal.pmc.utils.PLog.e(r0, r2, r3)     // Catch: java.lang.Exception -> L68 java.lang.Throwable -> L7f
            boolean r2 = r5.moveToNext()     // Catch: java.lang.Exception -> L68 java.lang.Throwable -> L7f
            if (r2 != 0) goto L1d
            goto L6a
        L68:
            r2 = move-exception
            goto L71
        L6a:
            if (r5 == 0) goto L79
            goto L76
        L6d:
            r0 = move-exception
            goto L81
        L6f:
            r2 = move-exception
            r5 = r1
        L71:
            com.conceptglobal.pmc.utils.PLog.e(r0, r2)     // Catch: java.lang.Throwable -> L7f
            if (r5 == 0) goto L79
        L76:
            r5.close()
        L79:
            com.conceptglobal.pmc.database.DataBaseHandler r5 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r5.closeDatabase()
            return r1
        L7f:
            r0 = move-exception
            r1 = r5
        L81:
            if (r1 == 0) goto L86
            r1.close()
        L86:
            com.conceptglobal.pmc.database.DataBaseHandler r5 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r5.closeDatabase()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getFarmerNameMobileData(java.lang.String):com.conceptglobal.pmc.model.FarmerMaster");
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0093, code lost:
    
        if (r5 == null) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0089, code lost:
    
        if (r5 != null) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0098, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x009d, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0095, code lost:
    
        r5.close();
     */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00a2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.conceptglobal.pmc.model.FBFActivityResolveTrackModel getResolvedNameAndData(java.lang.String r5) {
        /*
            r4 = this;
            java.lang.String r0 = "farmerMaster"
            r1 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r2 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L8e
            android.database.sqlite.SQLiteDatabase r2 = r2.openDatabase()     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L8e
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r2     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L8e
            android.database.Cursor r5 = r2.rawQuery(r5, r1)     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L8e
            if (r5 == 0) goto L89
            int r2 = r5.getCount()     // Catch: java.lang.Exception -> L87 java.lang.Throwable -> L9e
            if (r2 <= 0) goto L89
            boolean r2 = r5.moveToFirst()     // Catch: java.lang.Exception -> L87 java.lang.Throwable -> L9e
            if (r2 == 0) goto L89
        L1d:
            com.conceptglobal.pmc.model.FBFActivityResolveTrackModel r2 = new com.conceptglobal.pmc.model.FBFActivityResolveTrackModel     // Catch: java.lang.Exception -> L7b java.lang.Throwable -> L9e
            r2.<init>()     // Catch: java.lang.Exception -> L7b java.lang.Throwable -> L9e
            java.lang.String r3 = "ResolveName"
            int r3 = r5.getColumnIndex(r3)     // Catch: java.lang.Exception -> L7b java.lang.Throwable -> L9e
            java.lang.String r3 = r5.getString(r3)     // Catch: java.lang.Exception -> L7b java.lang.Throwable -> L9e
            r2.setResolveName(r3)     // Catch: java.lang.Exception -> L7b java.lang.Throwable -> L9e
            java.lang.String r3 = "ResolveRemarks"
            int r3 = r5.getColumnIndex(r3)     // Catch: java.lang.Exception -> L7b java.lang.Throwable -> L9e
            java.lang.String r3 = r5.getString(r3)     // Catch: java.lang.Exception -> L7b java.lang.Throwable -> L9e
            r2.setResolveRemarks(r3)     // Catch: java.lang.Exception -> L7b java.lang.Throwable -> L9e
            java.lang.String r3 = "CreatedDate"
            int r3 = r5.getColumnIndex(r3)     // Catch: java.lang.Exception -> L7b java.lang.Throwable -> L9e
            java.lang.String r3 = r5.getString(r3)     // Catch: java.lang.Exception -> L7b java.lang.Throwable -> L9e
            r2.setCreatedDate(r3)     // Catch: java.lang.Exception -> L7b java.lang.Throwable -> L9e
            java.lang.String r3 = "ActivityResolveId"
            int r3 = r5.getColumnIndex(r3)     // Catch: java.lang.Exception -> L7b java.lang.Throwable -> L9e
            int r3 = r5.getInt(r3)     // Catch: java.lang.Exception -> L7b java.lang.Throwable -> L9e
            r2.setActivityResolveId(r3)     // Catch: java.lang.Exception -> L7b java.lang.Throwable -> L9e
            java.lang.String r3 = "ActivityAssignmentId"
            int r3 = r5.getColumnIndex(r3)     // Catch: java.lang.Exception -> L7b java.lang.Throwable -> L9e
            java.lang.String r3 = r5.getString(r3)     // Catch: java.lang.Exception -> L7b java.lang.Throwable -> L9e
            r2.setActivityAssignmentId(r3)     // Catch: java.lang.Exception -> L7b java.lang.Throwable -> L9e
            java.lang.String r3 = "ResolvedBy"
            int r3 = r5.getColumnIndex(r3)     // Catch: java.lang.Exception -> L7b java.lang.Throwable -> L9e
            java.lang.String r3 = r5.getString(r3)     // Catch: java.lang.Exception -> L7b java.lang.Throwable -> L9e
            r2.setResolvedBy(r3)     // Catch: java.lang.Exception -> L7b java.lang.Throwable -> L9e
            if (r5 == 0) goto L75
            r5.close()
        L75:
            com.conceptglobal.pmc.database.DataBaseHandler r5 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r5.closeDatabase()
            return r2
        L7b:
            r2 = move-exception
            r3 = 0
            com.conceptglobal.pmc.utils.PLog.e(r0, r2, r3)     // Catch: java.lang.Exception -> L87 java.lang.Throwable -> L9e
            boolean r2 = r5.moveToNext()     // Catch: java.lang.Exception -> L87 java.lang.Throwable -> L9e
            if (r2 != 0) goto L1d
            goto L89
        L87:
            r2 = move-exception
            goto L90
        L89:
            if (r5 == 0) goto L98
            goto L95
        L8c:
            r0 = move-exception
            goto La0
        L8e:
            r2 = move-exception
            r5 = r1
        L90:
            com.conceptglobal.pmc.utils.PLog.e(r0, r2)     // Catch: java.lang.Throwable -> L9e
            if (r5 == 0) goto L98
        L95:
            r5.close()
        L98:
            com.conceptglobal.pmc.database.DataBaseHandler r5 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r5.closeDatabase()
            return r1
        L9e:
            r0 = move-exception
            r1 = r5
        La0:
            if (r1 == 0) goto La5
            r1.close()
        La5:
            com.conceptglobal.pmc.database.DataBaseHandler r5 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r5.closeDatabase()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getResolvedNameAndData(java.lang.String):com.conceptglobal.pmc.model.FBFActivityResolveTrackModel");
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0063, code lost:
    
        if (r6 == null) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0059, code lost:
    
        if (r6 != null) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0068, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x006d, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0065, code lost:
    
        r6.close();
     */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0072  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.conceptglobal.pmc.model.DealerMaster getDealerNameMobileData(java.lang.String r6) {
        /*
            r5 = this;
            java.lang.String r0 = "farmerMaster"
            r1 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r2 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L5c java.lang.Exception -> L5e
            android.database.sqlite.SQLiteDatabase r2 = r2.openDatabase()     // Catch: java.lang.Throwable -> L5c java.lang.Exception -> L5e
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r2     // Catch: java.lang.Throwable -> L5c java.lang.Exception -> L5e
            android.database.Cursor r6 = r2.rawQuery(r6, r1)     // Catch: java.lang.Throwable -> L5c java.lang.Exception -> L5e
            if (r6 == 0) goto L59
            int r2 = r6.getCount()     // Catch: java.lang.Exception -> L57 java.lang.Throwable -> L6e
            if (r2 <= 0) goto L59
            boolean r2 = r6.moveToFirst()     // Catch: java.lang.Exception -> L57 java.lang.Throwable -> L6e
            if (r2 == 0) goto L59
        L1d:
            com.conceptglobal.pmc.model.DealerMaster r2 = new com.conceptglobal.pmc.model.DealerMaster     // Catch: java.lang.Exception -> L4b java.lang.Throwable -> L6e
            r2.<init>()     // Catch: java.lang.Exception -> L4b java.lang.Throwable -> L6e
            java.lang.String r3 = "ProprietorName"
            int r3 = r6.getColumnIndex(r3)     // Catch: java.lang.Exception -> L4b java.lang.Throwable -> L6e
            java.lang.String r3 = r6.getString(r3)     // Catch: java.lang.Exception -> L4b java.lang.Throwable -> L6e
            java.lang.String r4 = "MobileNumber"
            int r4 = r6.getColumnIndex(r4)     // Catch: java.lang.Exception -> L4b java.lang.Throwable -> L6e
            java.lang.String r4 = r6.getString(r4)     // Catch: java.lang.Exception -> L4b java.lang.Throwable -> L6e
            r2.setContactName(r3)     // Catch: java.lang.Exception -> L4b java.lang.Throwable -> L6e
            java.lang.String r3 = com.conceptglobal.pmc.utils.Encryption.decrypt(r4)     // Catch: java.lang.Exception -> L4b java.lang.Throwable -> L6e
            r2.setMobileNumber(r3)     // Catch: java.lang.Exception -> L4b java.lang.Throwable -> L6e
            if (r6 == 0) goto L45
            r6.close()
        L45:
            com.conceptglobal.pmc.database.DataBaseHandler r6 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r6.closeDatabase()
            return r2
        L4b:
            r2 = move-exception
            r3 = 0
            com.conceptglobal.pmc.utils.PLog.e(r0, r2, r3)     // Catch: java.lang.Exception -> L57 java.lang.Throwable -> L6e
            boolean r2 = r6.moveToNext()     // Catch: java.lang.Exception -> L57 java.lang.Throwable -> L6e
            if (r2 != 0) goto L1d
            goto L59
        L57:
            r2 = move-exception
            goto L60
        L59:
            if (r6 == 0) goto L68
            goto L65
        L5c:
            r0 = move-exception
            goto L70
        L5e:
            r2 = move-exception
            r6 = r1
        L60:
            com.conceptglobal.pmc.utils.PLog.e(r0, r2)     // Catch: java.lang.Throwable -> L6e
            if (r6 == 0) goto L68
        L65:
            r6.close()
        L68:
            com.conceptglobal.pmc.database.DataBaseHandler r6 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r6.closeDatabase()
            return r1
        L6e:
            r0 = move-exception
            r1 = r6
        L70:
            if (r1 == 0) goto L75
            r1.close()
        L75:
            com.conceptglobal.pmc.database.DataBaseHandler r6 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r6.closeDatabase()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getDealerNameMobileData(java.lang.String):com.conceptglobal.pmc.model.DealerMaster");
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0079, code lost:
    
        if (r5 == null) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x006f, code lost:
    
        if (r5 != null) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x007e, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0083, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x007b, code lost:
    
        r5.close();
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0088  */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r1v2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.conceptglobal.pmc.model.ComplaintInfoModel getResolvedActivityAndData(java.lang.String r5) {
        /*
            r4 = this;
            java.lang.String r0 = "farmerMaster"
            r1 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r2 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L74
            android.database.sqlite.SQLiteDatabase r2 = r2.openDatabase()     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L74
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r2     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L74
            android.database.Cursor r5 = r2.rawQuery(r5, r1)     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L74
            if (r5 == 0) goto L6f
            int r2 = r5.getCount()     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L84
            if (r2 <= 0) goto L6f
            boolean r2 = r5.moveToFirst()     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L84
            if (r2 == 0) goto L6f
        L1d:
            com.conceptglobal.pmc.model.ComplaintInfoModel r2 = new com.conceptglobal.pmc.model.ComplaintInfoModel     // Catch: java.lang.Exception -> L61 java.lang.Throwable -> L84
            r2.<init>()     // Catch: java.lang.Exception -> L61 java.lang.Throwable -> L84
            java.lang.String r3 = "ResolvedStatus"
            int r3 = r5.getColumnIndex(r3)     // Catch: java.lang.Exception -> L61 java.lang.Throwable -> L84
            int r3 = r5.getInt(r3)     // Catch: java.lang.Exception -> L61 java.lang.Throwable -> L84
            r2.setResolveStatus(r3)     // Catch: java.lang.Exception -> L61 java.lang.Throwable -> L84
            java.lang.String r3 = "ResolveRemarks"
            int r3 = r5.getColumnIndex(r3)     // Catch: java.lang.Exception -> L61 java.lang.Throwable -> L84
            java.lang.String r3 = r5.getString(r3)     // Catch: java.lang.Exception -> L61 java.lang.Throwable -> L84
            r2.setResolverComments(r3)     // Catch: java.lang.Exception -> L61 java.lang.Throwable -> L84
            java.lang.String r3 = "CreatedDate"
            int r3 = r5.getColumnIndex(r3)     // Catch: java.lang.Exception -> L61 java.lang.Throwable -> L84
            java.lang.String r3 = r5.getString(r3)     // Catch: java.lang.Exception -> L61 java.lang.Throwable -> L84
            r2.setCreatedDate(r3)     // Catch: java.lang.Exception -> L61 java.lang.Throwable -> L84
            java.lang.String r3 = "IsSMSRequired"
            int r3 = r5.getColumnIndex(r3)     // Catch: java.lang.Exception -> L61 java.lang.Throwable -> L84
            int r3 = r5.getInt(r3)     // Catch: java.lang.Exception -> L61 java.lang.Throwable -> L84
            r2.setIsSMSRequired(r3)     // Catch: java.lang.Exception -> L61 java.lang.Throwable -> L84
            if (r5 == 0) goto L5b
            r5.close()
        L5b:
            com.conceptglobal.pmc.database.DataBaseHandler r5 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r5.closeDatabase()
            return r2
        L61:
            r2 = move-exception
            r3 = 0
            com.conceptglobal.pmc.utils.PLog.e(r0, r2, r3)     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L84
            boolean r2 = r5.moveToNext()     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> L84
            if (r2 != 0) goto L1d
            goto L6f
        L6d:
            r2 = move-exception
            goto L76
        L6f:
            if (r5 == 0) goto L7e
            goto L7b
        L72:
            r0 = move-exception
            goto L86
        L74:
            r2 = move-exception
            r5 = r1
        L76:
            com.conceptglobal.pmc.utils.PLog.e(r0, r2)     // Catch: java.lang.Throwable -> L84
            if (r5 == 0) goto L7e
        L7b:
            r5.close()
        L7e:
            com.conceptglobal.pmc.database.DataBaseHandler r5 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r5.closeDatabase()
            return r1
        L84:
            r0 = move-exception
            r1 = r5
        L86:
            if (r1 == 0) goto L8b
            r1.close()
        L8b:
            com.conceptglobal.pmc.database.DataBaseHandler r5 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r5.closeDatabase()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getResolvedActivityAndData(java.lang.String):com.conceptglobal.pmc.model.ComplaintInfoModel");
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0058, code lost:
    
        if (r2 != null) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0066, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x006b, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0063, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0061, code lost:
    
        if (r2 == null) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.conceptglobal.pmc.model.MasterVersionTableDataModel> getMasterVersionTableData(java.lang.String r5) {
        /*
            r4 = this;
            java.lang.String r0 = "NotifyAssignmentDet"
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            r2 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r3 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L5b java.lang.Exception -> L5d
            android.database.sqlite.SQLiteDatabase r3 = r3.openDatabase()     // Catch: java.lang.Throwable -> L5b java.lang.Exception -> L5d
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r3     // Catch: java.lang.Throwable -> L5b java.lang.Exception -> L5d
            android.database.Cursor r2 = r3.rawQuery(r5, r2)     // Catch: java.lang.Throwable -> L5b java.lang.Exception -> L5d
            if (r2 == 0) goto L58
            int r5 = r2.getCount()     // Catch: java.lang.Throwable -> L5b java.lang.Exception -> L5d
            if (r5 <= 0) goto L58
            boolean r5 = r2.moveToFirst()     // Catch: java.lang.Throwable -> L5b java.lang.Exception -> L5d
            if (r5 == 0) goto L58
        L22:
            com.conceptglobal.pmc.model.MasterVersionTableDataModel r5 = new com.conceptglobal.pmc.model.MasterVersionTableDataModel     // Catch: java.lang.Exception -> L4d java.lang.Throwable -> L5b
            r5.<init>()     // Catch: java.lang.Exception -> L4d java.lang.Throwable -> L5b
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r3 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType0     // Catch: java.lang.Exception -> L4d java.lang.Throwable -> L5b
            java.lang.Integer r3 = r3.value()     // Catch: java.lang.Exception -> L4d java.lang.Throwable -> L5b
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> L4d java.lang.Throwable -> L5b
            java.lang.String r3 = r2.getString(r3)     // Catch: java.lang.Exception -> L4d java.lang.Throwable -> L5b
            r5.setTableName(r3)     // Catch: java.lang.Exception -> L4d java.lang.Throwable -> L5b
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r3 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType1     // Catch: java.lang.Exception -> L4d java.lang.Throwable -> L5b
            java.lang.Integer r3 = r3.value()     // Catch: java.lang.Exception -> L4d java.lang.Throwable -> L5b
            int r3 = r3.intValue()     // Catch: java.lang.Exception -> L4d java.lang.Throwable -> L5b
            java.lang.String r3 = r2.getString(r3)     // Catch: java.lang.Exception -> L4d java.lang.Throwable -> L5b
            r5.setUpdateOn(r3)     // Catch: java.lang.Exception -> L4d java.lang.Throwable -> L5b
            r1.add(r5)     // Catch: java.lang.Exception -> L4d java.lang.Throwable -> L5b
            goto L52
        L4d:
            r5 = move-exception
            r3 = 0
            com.conceptglobal.pmc.utils.PLog.e(r0, r5, r3)     // Catch: java.lang.Throwable -> L5b java.lang.Exception -> L5d
        L52:
            boolean r5 = r2.moveToNext()     // Catch: java.lang.Throwable -> L5b java.lang.Exception -> L5d
            if (r5 != 0) goto L22
        L58:
            if (r2 == 0) goto L66
            goto L63
        L5b:
            r5 = move-exception
            goto L6c
        L5d:
            r5 = move-exception
            com.conceptglobal.pmc.utils.PLog.e(r0, r5)     // Catch: java.lang.Throwable -> L5b
            if (r2 == 0) goto L66
        L63:
            r2.close()
        L66:
            com.conceptglobal.pmc.database.DataBaseHandler r5 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r5.closeDatabase()
            return r1
        L6c:
            if (r2 == 0) goto L71
            r2.close()
        L71:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getMasterVersionTableData(java.lang.String):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0070, code lost:
    
        if (r5 == null) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0066, code lost:
    
        if (r5 != null) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0075, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x007a, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0072, code lost:
    
        r5.close();
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:37:0x007f  */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r1v2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.conceptglobal.pmc.model.DealerMaster getRetailerNameMobileData(java.lang.String r5) {
        /*
            r4 = this;
            java.lang.String r0 = "farmerMaster"
            r1 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r2 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L69 java.lang.Exception -> L6b
            android.database.sqlite.SQLiteDatabase r2 = r2.openDatabase()     // Catch: java.lang.Throwable -> L69 java.lang.Exception -> L6b
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r2     // Catch: java.lang.Throwable -> L69 java.lang.Exception -> L6b
            android.database.Cursor r5 = r2.rawQuery(r5, r1)     // Catch: java.lang.Throwable -> L69 java.lang.Exception -> L6b
            if (r5 == 0) goto L66
            int r2 = r5.getCount()     // Catch: java.lang.Exception -> L64 java.lang.Throwable -> L7b
            if (r2 <= 0) goto L66
            boolean r2 = r5.moveToFirst()     // Catch: java.lang.Exception -> L64 java.lang.Throwable -> L7b
            if (r2 == 0) goto L66
        L1d:
            com.conceptglobal.pmc.model.DealerMaster r2 = new com.conceptglobal.pmc.model.DealerMaster     // Catch: java.lang.Exception -> L58 java.lang.Throwable -> L7b
            r2.<init>()     // Catch: java.lang.Exception -> L58 java.lang.Throwable -> L7b
            java.lang.String r3 = "ProprietorName"
            int r3 = r5.getColumnIndex(r3)     // Catch: java.lang.Exception -> L58 java.lang.Throwable -> L7b
            java.lang.String r3 = r5.getString(r3)     // Catch: java.lang.Exception -> L58 java.lang.Throwable -> L7b
            r2.setRetailerShopName(r3)     // Catch: java.lang.Exception -> L58 java.lang.Throwable -> L7b
            java.lang.String r3 = "MobileNumber"
            int r3 = r5.getColumnIndex(r3)     // Catch: java.lang.Exception -> L58 java.lang.Throwable -> L7b
            java.lang.String r3 = r5.getString(r3)     // Catch: java.lang.Exception -> L58 java.lang.Throwable -> L7b
            java.lang.String r3 = com.conceptglobal.pmc.utils.Encryption.decrypt(r3)     // Catch: java.lang.Exception -> L58 java.lang.Throwable -> L7b
            r2.setMobileNumber(r3)     // Catch: java.lang.Exception -> L58 java.lang.Throwable -> L7b
            java.lang.String r3 = "PDAId"
            int r3 = r5.getColumnIndex(r3)     // Catch: java.lang.Exception -> L58 java.lang.Throwable -> L7b
            int r3 = r5.getInt(r3)     // Catch: java.lang.Exception -> L58 java.lang.Throwable -> L7b
            r2.setPDAId(r3)     // Catch: java.lang.Exception -> L58 java.lang.Throwable -> L7b
            if (r5 == 0) goto L52
            r5.close()
        L52:
            com.conceptglobal.pmc.database.DataBaseHandler r5 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r5.closeDatabase()
            return r2
        L58:
            r2 = move-exception
            r3 = 0
            com.conceptglobal.pmc.utils.PLog.e(r0, r2, r3)     // Catch: java.lang.Exception -> L64 java.lang.Throwable -> L7b
            boolean r2 = r5.moveToNext()     // Catch: java.lang.Exception -> L64 java.lang.Throwable -> L7b
            if (r2 != 0) goto L1d
            goto L66
        L64:
            r2 = move-exception
            goto L6d
        L66:
            if (r5 == 0) goto L75
            goto L72
        L69:
            r0 = move-exception
            goto L7d
        L6b:
            r2 = move-exception
            r5 = r1
        L6d:
            com.conceptglobal.pmc.utils.PLog.e(r0, r2)     // Catch: java.lang.Throwable -> L7b
            if (r5 == 0) goto L75
        L72:
            r5.close()
        L75:
            com.conceptglobal.pmc.database.DataBaseHandler r5 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r5.closeDatabase()
            return r1
        L7b:
            r0 = move-exception
            r1 = r5
        L7d:
            if (r1 == 0) goto L82
            r1.close()
        L82:
            com.conceptglobal.pmc.database.DataBaseHandler r5 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r5.closeDatabase()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getRetailerNameMobileData(java.lang.String):com.conceptglobal.pmc.model.DealerMaster");
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0045, code lost:
    
        if (r2 != null) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x005a, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0063, code lost:
    
        return r1.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0057, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0055, code lost:
    
        if (r2 == null) goto L25;
     */
    /* JADX WARN: Finally extract failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String getModuleMandatoryColumns(java.lang.String r5) {
        /*
            r4 = this;
            java.lang.String r0 = ","
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            r2 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r3 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L48 java.lang.Exception -> L54
            android.database.sqlite.SQLiteDatabase r3 = r3.openDatabase()     // Catch: java.lang.Throwable -> L48 java.lang.Exception -> L54
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r3     // Catch: java.lang.Throwable -> L48 java.lang.Exception -> L54
            android.database.Cursor r2 = r3.rawQuery(r5, r2)     // Catch: java.lang.Throwable -> L48 java.lang.Exception -> L54
            if (r2 == 0) goto L45
            int r5 = r2.getCount()     // Catch: java.lang.Throwable -> L48 java.lang.Exception -> L54
            if (r5 <= 0) goto L45
            boolean r5 = r2.moveToFirst()     // Catch: java.lang.Throwable -> L48 java.lang.Exception -> L54
            if (r5 == 0) goto L45
        L22:
            java.lang.String r5 = "DBColumnName"
            int r5 = r2.getColumnIndex(r5)     // Catch: java.lang.Exception -> L32 java.lang.Throwable -> L48
            java.lang.String r5 = r2.getString(r5)     // Catch: java.lang.Exception -> L32 java.lang.Throwable -> L48
            r1.append(r5)     // Catch: java.lang.Exception -> L32 java.lang.Throwable -> L48
            r1.append(r0)     // Catch: java.lang.Exception -> L32 java.lang.Throwable -> L48
        L32:
            boolean r5 = r2.moveToNext()     // Catch: java.lang.Throwable -> L48 java.lang.Exception -> L54
            if (r5 != 0) goto L22
            int r5 = r1.length()     // Catch: java.lang.Throwable -> L48 java.lang.Exception -> L54
            if (r5 <= 0) goto L45
            int r5 = r1.lastIndexOf(r0)     // Catch: java.lang.Throwable -> L48 java.lang.Exception -> L54
            r1.deleteCharAt(r5)     // Catch: java.lang.Throwable -> L48 java.lang.Exception -> L54
        L45:
            if (r2 == 0) goto L5a
            goto L57
        L48:
            r5 = move-exception
            if (r2 == 0) goto L4e
            r2.close()
        L4e:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            throw r5
        L54:
            if (r2 == 0) goto L5a
        L57:
            r2.close()
        L5a:
            com.conceptglobal.pmc.database.DataBaseHandler r5 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r5.closeDatabase()
            java.lang.String r5 = r1.toString()
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getModuleMandatoryColumns(java.lang.String):java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0058, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x003e, code lost:
    
        if (r0 != null) goto L30;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean getAllMandatoryFieldsInformation(java.lang.String r5) {
        /*
            r4 = this;
            r0 = 0
            r1 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r2 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L4d
            android.database.sqlite.SQLiteDatabase r2 = r2.openDatabase()     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L4d
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r2     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L4d
            android.database.Cursor r0 = r2.rawQuery(r5, r0)     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L4d
            if (r0 == 0) goto L3e
            int r5 = r0.getCount()     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L4d
            if (r5 <= 0) goto L3e
            boolean r5 = r0.moveToFirst()     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L4d
            if (r5 == 0) goto L3e
            r5 = 0
        L1d:
            r2 = 0
        L1e:
            int r3 = r0.getColumnCount()     // Catch: java.lang.Exception -> L33 java.lang.Throwable -> L41
            if (r2 >= r3) goto L33
            java.lang.String r3 = r0.getString(r2)     // Catch: java.lang.Exception -> L33 java.lang.Throwable -> L41
            boolean r3 = android.text.TextUtils.isEmpty(r3)     // Catch: java.lang.Exception -> L33 java.lang.Throwable -> L41
            if (r3 == 0) goto L30
            r5 = 1
            goto L33
        L30:
            int r2 = r2 + 1
            goto L1e
        L33:
            boolean r2 = r0.moveToNext()     // Catch: java.lang.Exception -> L3b java.lang.Throwable -> L41
            if (r2 != 0) goto L1d
            r1 = r5
            goto L3e
        L3b:
            r1 = r5
            goto L4e
        L3e:
            if (r0 == 0) goto L53
            goto L50
        L41:
            r5 = move-exception
            if (r0 == 0) goto L47
            r0.close()
        L47:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            throw r5
        L4d:
        L4e:
            if (r0 == 0) goto L53
        L50:
            r0.close()
        L53:
            com.conceptglobal.pmc.database.DataBaseHandler r5 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r5.closeDatabase()
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getAllMandatoryFieldsInformation(java.lang.String):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x007d, code lost:
    
        if (r1 != null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x008d, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0092, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x008a, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0088, code lost:
    
        if (r1 == null) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.conceptglobal.pmc.model.SupervisoryAssignmentData> getSVActivityAssignmentIDs(java.lang.String r5) {
        /*
            r4 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r1 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r2 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L80 java.lang.Exception -> L82
            android.database.sqlite.SQLiteDatabase r2 = r2.openDatabase()     // Catch: java.lang.Throwable -> L80 java.lang.Exception -> L82
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r2     // Catch: java.lang.Throwable -> L80 java.lang.Exception -> L82
            android.database.Cursor r1 = r2.rawQuery(r5, r1)     // Catch: java.lang.Throwable -> L80 java.lang.Exception -> L82
            if (r1 == 0) goto L7d
            int r5 = r1.getCount()     // Catch: java.lang.Throwable -> L80 java.lang.Exception -> L82
            if (r5 <= 0) goto L7d
            boolean r5 = r1.moveToFirst()     // Catch: java.lang.Throwable -> L80 java.lang.Exception -> L82
            if (r5 == 0) goto L7d
        L20:
            com.conceptglobal.pmc.model.SupervisoryAssignmentData r5 = new com.conceptglobal.pmc.model.SupervisoryAssignmentData     // Catch: java.lang.Exception -> L71 java.lang.Throwable -> L80
            r5.<init>()     // Catch: java.lang.Exception -> L71 java.lang.Throwable -> L80
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType0     // Catch: java.lang.Exception -> L71 java.lang.Throwable -> L80
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> L71 java.lang.Throwable -> L80
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> L71 java.lang.Throwable -> L80
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> L71 java.lang.Throwable -> L80
            r5.setActivityassignmentid(r2)     // Catch: java.lang.Exception -> L71 java.lang.Throwable -> L80
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType1     // Catch: java.lang.Exception -> L71 java.lang.Throwable -> L80
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> L71 java.lang.Throwable -> L80
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> L71 java.lang.Throwable -> L80
            double r2 = r1.getDouble(r2)     // Catch: java.lang.Exception -> L71 java.lang.Throwable -> L80
            java.lang.Double r2 = java.lang.Double.valueOf(r2)     // Catch: java.lang.Exception -> L71 java.lang.Throwable -> L80
            r5.setRadius(r2)     // Catch: java.lang.Exception -> L71 java.lang.Throwable -> L80
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType2     // Catch: java.lang.Exception -> L71 java.lang.Throwable -> L80
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> L71 java.lang.Throwable -> L80
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> L71 java.lang.Throwable -> L80
            int r2 = r1.getInt(r2)     // Catch: java.lang.Exception -> L71 java.lang.Throwable -> L80
            r5.setActivitySegmentId(r2)     // Catch: java.lang.Exception -> L71 java.lang.Throwable -> L80
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType3     // Catch: java.lang.Exception -> L71 java.lang.Throwable -> L80
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> L71 java.lang.Throwable -> L80
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> L71 java.lang.Throwable -> L80
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> L71 java.lang.Throwable -> L80
            r5.setActivitySegmentValue(r2)     // Catch: java.lang.Exception -> L71 java.lang.Throwable -> L80
            r0.add(r5)     // Catch: java.lang.Exception -> L71 java.lang.Throwable -> L80
            goto L77
        L71:
            r5 = move-exception
            java.lang.String r2 = "GetDataFromDB"
            com.conceptglobal.pmc.utils.PLog.e(r2, r5)     // Catch: java.lang.Throwable -> L80 java.lang.Exception -> L82
        L77:
            boolean r5 = r1.moveToNext()     // Catch: java.lang.Throwable -> L80 java.lang.Exception -> L82
            if (r5 != 0) goto L20
        L7d:
            if (r1 == 0) goto L8d
            goto L8a
        L80:
            r5 = move-exception
            goto L93
        L82:
            r5 = move-exception
            java.lang.String r2 = "Getting Activity Names"
            com.conceptglobal.pmc.utils.PLog.e(r2, r5)     // Catch: java.lang.Throwable -> L80
            if (r1 == 0) goto L8d
        L8a:
            r1.close()
        L8d:
            com.conceptglobal.pmc.database.DataBaseHandler r5 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r5.closeDatabase()
            return r0
        L93:
            if (r1 == 0) goto L98
            r1.close()
        L98:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getSVActivityAssignmentIDs(java.lang.String):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0071, code lost:
    
        if (r1 != null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0081, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0086, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x007e, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x007c, code lost:
    
        if (r1 == null) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.HashMap<java.lang.String, com.conceptglobal.pmc.model.SVRadiusDataModel> getSVRadiusData(java.lang.String r5) {
        /*
            r4 = this;
            java.util.HashMap r0 = new java.util.HashMap
            r0.<init>()
            r1 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r2 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L74 java.lang.Exception -> L76
            android.database.sqlite.SQLiteDatabase r2 = r2.openDatabase()     // Catch: java.lang.Throwable -> L74 java.lang.Exception -> L76
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r2     // Catch: java.lang.Throwable -> L74 java.lang.Exception -> L76
            android.database.Cursor r1 = r2.rawQuery(r5, r1)     // Catch: java.lang.Throwable -> L74 java.lang.Exception -> L76
            if (r1 == 0) goto L71
            int r5 = r1.getCount()     // Catch: java.lang.Throwable -> L74 java.lang.Exception -> L76
            if (r5 <= 0) goto L71
            boolean r5 = r1.moveToFirst()     // Catch: java.lang.Throwable -> L74 java.lang.Exception -> L76
            if (r5 == 0) goto L71
        L20:
            com.conceptglobal.pmc.model.SVRadiusDataModel r5 = new com.conceptglobal.pmc.model.SVRadiusDataModel     // Catch: java.lang.Exception -> L65 java.lang.Throwable -> L74
            r5.<init>()     // Catch: java.lang.Exception -> L65 java.lang.Throwable -> L74
            java.lang.String r2 = "Latitude"
            int r2 = r1.getColumnIndex(r2)     // Catch: java.lang.Exception -> L65 java.lang.Throwable -> L74
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> L65 java.lang.Throwable -> L74
            r5.setLatitude(r2)     // Catch: java.lang.Exception -> L65 java.lang.Throwable -> L74
            java.lang.String r2 = "Longitude"
            int r2 = r1.getColumnIndex(r2)     // Catch: java.lang.Exception -> L65 java.lang.Throwable -> L74
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> L65 java.lang.Throwable -> L74
            r5.setLongitude(r2)     // Catch: java.lang.Exception -> L65 java.lang.Throwable -> L74
            java.lang.String r2 = "ActivityAssignmentId"
            int r2 = r1.getColumnIndex(r2)     // Catch: java.lang.Exception -> L65 java.lang.Throwable -> L74
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> L65 java.lang.Throwable -> L74
            r5.setActivityassignmentid(r2)     // Catch: java.lang.Exception -> L65 java.lang.Throwable -> L74
            java.lang.String r2 = "Radius"
            int r2 = r1.getColumnIndex(r2)     // Catch: java.lang.Exception -> L65 java.lang.Throwable -> L74
            double r2 = r1.getDouble(r2)     // Catch: java.lang.Exception -> L65 java.lang.Throwable -> L74
            java.lang.Double r2 = java.lang.Double.valueOf(r2)     // Catch: java.lang.Exception -> L65 java.lang.Throwable -> L74
            r5.setRadius(r2)     // Catch: java.lang.Exception -> L65 java.lang.Throwable -> L74
            java.lang.String r2 = r5.getActivityassignmentid()     // Catch: java.lang.Exception -> L65 java.lang.Throwable -> L74
            r0.put(r2, r5)     // Catch: java.lang.Exception -> L65 java.lang.Throwable -> L74
            goto L6b
        L65:
            r5 = move-exception
            java.lang.String r2 = "Getting Farmer Details in TODO :: "
            com.conceptglobal.pmc.utils.PLog.e(r2, r5)     // Catch: java.lang.Throwable -> L74 java.lang.Exception -> L76
        L6b:
            boolean r5 = r1.moveToNext()     // Catch: java.lang.Throwable -> L74 java.lang.Exception -> L76
            if (r5 != 0) goto L20
        L71:
            if (r1 == 0) goto L81
            goto L7e
        L74:
            r5 = move-exception
            goto L87
        L76:
            r5 = move-exception
            java.lang.String r2 = "Getting Farmer Details in TODO:: "
            com.conceptglobal.pmc.utils.PLog.e(r2, r5)     // Catch: java.lang.Throwable -> L74
            if (r1 == 0) goto L81
        L7e:
            r1.close()
        L81:
            com.conceptglobal.pmc.database.DataBaseHandler r5 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r5.closeDatabase()
            return r0
        L87:
            if (r1 == 0) goto L8c
            r1.close()
        L8c:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getSVRadiusData(java.lang.String):java.util.HashMap");
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0061, code lost:
    
        if (r1 != null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0071, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0076, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x006e, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x006c, code lost:
    
        if (r1 == null) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.conceptglobal.pmc.model.HomeLocationDetails getHomeAddressInfo(java.lang.String r4) {
        /*
            r3 = this;
            com.conceptglobal.pmc.model.HomeLocationDetails r0 = new com.conceptglobal.pmc.model.HomeLocationDetails
            r0.<init>()
            r1 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r2 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L64 java.lang.Exception -> L66
            android.database.sqlite.SQLiteDatabase r2 = r2.openDatabase()     // Catch: java.lang.Throwable -> L64 java.lang.Exception -> L66
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r2     // Catch: java.lang.Throwable -> L64 java.lang.Exception -> L66
            android.database.Cursor r1 = r2.rawQuery(r4, r1)     // Catch: java.lang.Throwable -> L64 java.lang.Exception -> L66
            if (r1 == 0) goto L61
            int r4 = r1.getCount()     // Catch: java.lang.Throwable -> L64 java.lang.Exception -> L66
            if (r4 <= 0) goto L61
            boolean r4 = r1.moveToFirst()     // Catch: java.lang.Throwable -> L64 java.lang.Exception -> L66
            if (r4 == 0) goto L61
        L20:
            java.lang.String r4 = "HomeLatitude"
            int r4 = r1.getColumnIndex(r4)     // Catch: java.lang.Exception -> L55 java.lang.Throwable -> L64
            java.lang.String r4 = r1.getString(r4)     // Catch: java.lang.Exception -> L55 java.lang.Throwable -> L64
            r0.setLattitude(r4)     // Catch: java.lang.Exception -> L55 java.lang.Throwable -> L64
            java.lang.String r4 = "HomeLongitude"
            int r4 = r1.getColumnIndex(r4)     // Catch: java.lang.Exception -> L55 java.lang.Throwable -> L64
            java.lang.String r4 = r1.getString(r4)     // Catch: java.lang.Exception -> L55 java.lang.Throwable -> L64
            r0.setLongitude(r4)     // Catch: java.lang.Exception -> L55 java.lang.Throwable -> L64
            java.lang.String r4 = "HomeAddress"
            int r4 = r1.getColumnIndex(r4)     // Catch: java.lang.Exception -> L55 java.lang.Throwable -> L64
            java.lang.String r4 = r1.getString(r4)     // Catch: java.lang.Exception -> L55 java.lang.Throwable -> L64
            r0.setHomeAddress(r4)     // Catch: java.lang.Exception -> L55 java.lang.Throwable -> L64
            java.lang.String r4 = "homelocationupdateddate"
            int r4 = r1.getColumnIndex(r4)     // Catch: java.lang.Exception -> L55 java.lang.Throwable -> L64
            java.lang.String r4 = r1.getString(r4)     // Catch: java.lang.Exception -> L55 java.lang.Throwable -> L64
            r0.setHomelocationupdateddate(r4)     // Catch: java.lang.Exception -> L55 java.lang.Throwable -> L64
            goto L5b
        L55:
            r4 = move-exception
            java.lang.String r2 = "GetDataFromDB"
            com.conceptglobal.pmc.utils.PLog.e(r2, r4)     // Catch: java.lang.Throwable -> L64 java.lang.Exception -> L66
        L5b:
            boolean r4 = r1.moveToNext()     // Catch: java.lang.Throwable -> L64 java.lang.Exception -> L66
            if (r4 != 0) goto L20
        L61:
            if (r1 == 0) goto L71
            goto L6e
        L64:
            r4 = move-exception
            goto L77
        L66:
            r4 = move-exception
            java.lang.String r2 = "Getting Activity Names"
            com.conceptglobal.pmc.utils.PLog.e(r2, r4)     // Catch: java.lang.Throwable -> L64
            if (r1 == 0) goto L71
        L6e:
            r1.close()
        L71:
            com.conceptglobal.pmc.database.DataBaseHandler r4 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r4.closeDatabase()
            return r0
        L77:
            if (r1 == 0) goto L7c
            r1.close()
        L7c:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getHomeAddressInfo(java.lang.String):com.conceptglobal.pmc.model.HomeLocationDetails");
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x004f, code lost:
    
        if (r1 != null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x005f, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0064, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x005c, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x005a, code lost:
    
        if (r1 == null) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.conceptglobal.pmc.model.LatLongDetails getLatLongInfo(java.lang.String r4) {
        /*
            r3 = this;
            com.conceptglobal.pmc.model.LatLongDetails r0 = new com.conceptglobal.pmc.model.LatLongDetails
            r0.<init>()
            r1 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r2 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> L52 java.lang.Exception -> L54
            android.database.sqlite.SQLiteDatabase r2 = r2.openDatabase()     // Catch: java.lang.Throwable -> L52 java.lang.Exception -> L54
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r2     // Catch: java.lang.Throwable -> L52 java.lang.Exception -> L54
            android.database.Cursor r1 = r2.rawQuery(r4, r1)     // Catch: java.lang.Throwable -> L52 java.lang.Exception -> L54
            if (r1 == 0) goto L4f
            int r4 = r1.getCount()     // Catch: java.lang.Throwable -> L52 java.lang.Exception -> L54
            if (r4 <= 0) goto L4f
            boolean r4 = r1.moveToFirst()     // Catch: java.lang.Throwable -> L52 java.lang.Exception -> L54
            if (r4 == 0) goto L4f
        L20:
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r4 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType0     // Catch: java.lang.Exception -> L43 java.lang.Throwable -> L52
            java.lang.Integer r4 = r4.value()     // Catch: java.lang.Exception -> L43 java.lang.Throwable -> L52
            int r4 = r4.intValue()     // Catch: java.lang.Exception -> L43 java.lang.Throwable -> L52
            java.lang.String r4 = r1.getString(r4)     // Catch: java.lang.Exception -> L43 java.lang.Throwable -> L52
            r0.setLatitude(r4)     // Catch: java.lang.Exception -> L43 java.lang.Throwable -> L52
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r4 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType1     // Catch: java.lang.Exception -> L43 java.lang.Throwable -> L52
            java.lang.Integer r4 = r4.value()     // Catch: java.lang.Exception -> L43 java.lang.Throwable -> L52
            int r4 = r4.intValue()     // Catch: java.lang.Exception -> L43 java.lang.Throwable -> L52
            java.lang.String r4 = r1.getString(r4)     // Catch: java.lang.Exception -> L43 java.lang.Throwable -> L52
            r0.setLongitude(r4)     // Catch: java.lang.Exception -> L43 java.lang.Throwable -> L52
            goto L49
        L43:
            r4 = move-exception
            java.lang.String r2 = "GetDataFromDB"
            com.conceptglobal.pmc.utils.PLog.e(r2, r4)     // Catch: java.lang.Throwable -> L52 java.lang.Exception -> L54
        L49:
            boolean r4 = r1.moveToNext()     // Catch: java.lang.Throwable -> L52 java.lang.Exception -> L54
            if (r4 != 0) goto L20
        L4f:
            if (r1 == 0) goto L5f
            goto L5c
        L52:
            r4 = move-exception
            goto L65
        L54:
            r4 = move-exception
            java.lang.String r2 = "Getting Activity Names"
            com.conceptglobal.pmc.utils.PLog.e(r2, r4)     // Catch: java.lang.Throwable -> L52
            if (r1 == 0) goto L5f
        L5c:
            r1.close()
        L5f:
            com.conceptglobal.pmc.database.DataBaseHandler r4 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r4.closeDatabase()
            return r0
        L65:
            if (r1 == 0) goto L6a
            r1.close()
        L6a:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getLatLongInfo(java.lang.String):com.conceptglobal.pmc.model.LatLongDetails");
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x00f9, code lost:
    
        if (r2 != null) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0109, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x010e, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0106, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0104, code lost:
    
        if (r2 == null) goto L27;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.conceptglobal.pmc.model.ResignationDetails> getResignationDetails(java.lang.String r6) {
        /*
            r5 = this;
            java.lang.String r0 = "reviewedbyname"
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            r2 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r3 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> Lfc java.lang.Exception -> Lfe
            android.database.sqlite.SQLiteDatabase r3 = r3.openDatabase()     // Catch: java.lang.Throwable -> Lfc java.lang.Exception -> Lfe
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r3     // Catch: java.lang.Throwable -> Lfc java.lang.Exception -> Lfe
            android.database.Cursor r2 = r3.rawQuery(r6, r2)     // Catch: java.lang.Throwable -> Lfc java.lang.Exception -> Lfe
            if (r2 == 0) goto Lf9
            int r6 = r2.getCount()     // Catch: java.lang.Throwable -> Lfc java.lang.Exception -> Lfe
            if (r6 <= 0) goto Lf9
            boolean r6 = r2.moveToFirst()     // Catch: java.lang.Throwable -> Lfc java.lang.Exception -> Lfe
            if (r6 == 0) goto Lf9
        L22:
            com.conceptglobal.pmc.model.ResignationDetails r6 = new com.conceptglobal.pmc.model.ResignationDetails     // Catch: java.lang.Exception -> Lec java.lang.Throwable -> Lfc
            r6.<init>()     // Catch: java.lang.Exception -> Lec java.lang.Throwable -> Lfc
            java.lang.String r3 = "ID"
            int r3 = r2.getColumnIndex(r3)     // Catch: java.lang.Exception -> Lec java.lang.Throwable -> Lfc
            int r3 = r2.getInt(r3)     // Catch: java.lang.Exception -> Lec java.lang.Throwable -> Lfc
            r6.setID(r3)     // Catch: java.lang.Exception -> Lec java.lang.Throwable -> Lfc
            java.lang.String r3 = "pdaid"
            int r3 = r2.getColumnIndex(r3)     // Catch: java.lang.Exception -> Lec java.lang.Throwable -> Lfc
            java.lang.String r3 = r2.getString(r3)     // Catch: java.lang.Exception -> Lec java.lang.Throwable -> Lfc
            r6.setPdaid(r3)     // Catch: java.lang.Exception -> Lec java.lang.Throwable -> Lfc
            java.lang.String r3 = "applieddate"
            int r3 = r2.getColumnIndex(r3)     // Catch: java.lang.Exception -> Lec java.lang.Throwable -> Lfc
            java.lang.String r3 = r2.getString(r3)     // Catch: java.lang.Exception -> Lec java.lang.Throwable -> Lfc
            r6.setApplieddate(r3)     // Catch: java.lang.Exception -> Lec java.lang.Throwable -> Lfc
            java.lang.String r3 = "reason"
            int r3 = r2.getColumnIndex(r3)     // Catch: java.lang.Exception -> Lec java.lang.Throwable -> Lfc
            java.lang.String r3 = r2.getString(r3)     // Catch: java.lang.Exception -> Lec java.lang.Throwable -> Lfc
            r6.setReason(r3)     // Catch: java.lang.Exception -> Lec java.lang.Throwable -> Lfc
            java.lang.String r3 = "description"
            int r3 = r2.getColumnIndex(r3)     // Catch: java.lang.Exception -> Lec java.lang.Throwable -> Lfc
            java.lang.String r3 = r2.getString(r3)     // Catch: java.lang.Exception -> Lec java.lang.Throwable -> Lfc
            r6.setDescription(r3)     // Catch: java.lang.Exception -> Lec java.lang.Throwable -> Lfc
            java.lang.String r3 = "lastworkingdate"
            int r3 = r2.getColumnIndex(r3)     // Catch: java.lang.Exception -> Lec java.lang.Throwable -> Lfc
            java.lang.String r3 = r2.getString(r3)     // Catch: java.lang.Exception -> Lec java.lang.Throwable -> Lfc
            r6.setLastworkingdate(r3)     // Catch: java.lang.Exception -> Lec java.lang.Throwable -> Lfc
            java.lang.String r3 = "resignationstatus"
            int r3 = r2.getColumnIndex(r3)     // Catch: java.lang.Exception -> Lec java.lang.Throwable -> Lfc
            int r3 = r2.getInt(r3)     // Catch: java.lang.Exception -> Lec java.lang.Throwable -> Lfc
            r6.setResignationstatus(r3)     // Catch: java.lang.Exception -> Lec java.lang.Throwable -> Lfc
            java.lang.String r3 = "reviewedby"
            int r3 = r2.getColumnIndex(r3)     // Catch: java.lang.Exception -> Lec java.lang.Throwable -> Lfc
            int r3 = r2.getInt(r3)     // Catch: java.lang.Exception -> Lec java.lang.Throwable -> Lfc
            r6.setReviewedby(r3)     // Catch: java.lang.Exception -> Lec java.lang.Throwable -> Lfc
            java.lang.String r3 = "reviweddate"
            int r3 = r2.getColumnIndex(r3)     // Catch: java.lang.Exception -> Lec java.lang.Throwable -> Lfc
            java.lang.String r3 = r2.getString(r3)     // Catch: java.lang.Exception -> Lec java.lang.Throwable -> Lfc
            r6.setReviweddate(r3)     // Catch: java.lang.Exception -> Lec java.lang.Throwable -> Lfc
            java.lang.String r3 = "createdby"
            int r3 = r2.getColumnIndex(r3)     // Catch: java.lang.Exception -> Lec java.lang.Throwable -> Lfc
            int r3 = r2.getInt(r3)     // Catch: java.lang.Exception -> Lec java.lang.Throwable -> Lfc
            r6.setCreatedby(r3)     // Catch: java.lang.Exception -> Lec java.lang.Throwable -> Lfc
            java.lang.String r3 = "createddate"
            int r3 = r2.getColumnIndex(r3)     // Catch: java.lang.Exception -> Lec java.lang.Throwable -> Lfc
            java.lang.String r3 = r2.getString(r3)     // Catch: java.lang.Exception -> Lec java.lang.Throwable -> Lfc
            r6.setCreateddate(r3)     // Catch: java.lang.Exception -> Lec java.lang.Throwable -> Lfc
            java.lang.String r3 = "updatedby"
            int r3 = r2.getColumnIndex(r3)     // Catch: java.lang.Exception -> Lec java.lang.Throwable -> Lfc
            int r3 = r2.getInt(r3)     // Catch: java.lang.Exception -> Lec java.lang.Throwable -> Lfc
            r6.setUpdatedby(r3)     // Catch: java.lang.Exception -> Lec java.lang.Throwable -> Lfc
            java.lang.String r3 = "updateddate"
            int r3 = r2.getColumnIndex(r3)     // Catch: java.lang.Exception -> Lec java.lang.Throwable -> Lfc
            java.lang.String r3 = r2.getString(r3)     // Catch: java.lang.Exception -> Lec java.lang.Throwable -> Lfc
            r6.setUpdateddate(r3)     // Catch: java.lang.Exception -> Lec java.lang.Throwable -> Lfc
            int r3 = r2.getColumnIndex(r0)     // Catch: java.lang.Exception -> Lec java.lang.Throwable -> Lfc
            java.lang.String r3 = r2.getString(r3)     // Catch: java.lang.Exception -> Lec java.lang.Throwable -> Lfc
            if (r3 == 0) goto Le3
            int r3 = r2.getColumnIndex(r0)     // Catch: java.lang.Exception -> Lec java.lang.Throwable -> Lfc
            java.lang.String r3 = r2.getString(r3)     // Catch: java.lang.Exception -> Lec java.lang.Throwable -> Lfc
            goto Le5
        Le3:
            java.lang.String r3 = ""
        Le5:
            r6.setReviewedbyname(r3)     // Catch: java.lang.Exception -> Lec java.lang.Throwable -> Lfc
            r1.add(r6)     // Catch: java.lang.Exception -> Lec java.lang.Throwable -> Lfc
            goto Lf3
        Lec:
            r6 = move-exception
            java.lang.String r3 = "FarmerCropMapping"
            r4 = 0
            com.conceptglobal.pmc.utils.PLog.e(r3, r6, r4)     // Catch: java.lang.Throwable -> Lfc java.lang.Exception -> Lfe
        Lf3:
            boolean r6 = r2.moveToNext()     // Catch: java.lang.Throwable -> Lfc java.lang.Exception -> Lfe
            if (r6 != 0) goto L22
        Lf9:
            if (r2 == 0) goto L109
            goto L106
        Lfc:
            r6 = move-exception
            goto L10f
        Lfe:
            r6 = move-exception
            java.lang.String r0 = "Farmer Crop Mapping details"
            com.conceptglobal.pmc.utils.PLog.e(r0, r6)     // Catch: java.lang.Throwable -> Lfc
            if (r2 == 0) goto L109
        L106:
            r2.close()
        L109:
            com.conceptglobal.pmc.database.DataBaseHandler r6 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r6.closeDatabase()
            return r1
        L10f:
            if (r2 == 0) goto L114
            r2.close()
        L114:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getResignationDetails(java.lang.String):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x00f6, code lost:
    
        if (r1 != null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0106, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x010b, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0103, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0101, code lost:
    
        if (r1 == null) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.conceptglobal.pmc.model.ApplyLeaveModel> getApplyLeaveDetails(java.lang.String r5) {
        /*
            r4 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r1 = 0
            com.conceptglobal.pmc.database.DataBaseHandler r2 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance     // Catch: java.lang.Throwable -> Lf9 java.lang.Exception -> Lfb
            android.database.sqlite.SQLiteDatabase r2 = r2.openDatabase()     // Catch: java.lang.Throwable -> Lf9 java.lang.Exception -> Lfb
            com.conceptglobal.pmc.database.GetDataFromDB.sqliteDatabase = r2     // Catch: java.lang.Throwable -> Lf9 java.lang.Exception -> Lfb
            android.database.Cursor r1 = r2.rawQuery(r5, r1)     // Catch: java.lang.Throwable -> Lf9 java.lang.Exception -> Lfb
            if (r1 == 0) goto Lf6
            int r5 = r1.getCount()     // Catch: java.lang.Throwable -> Lf9 java.lang.Exception -> Lfb
            if (r5 <= 0) goto Lf6
            boolean r5 = r1.moveToFirst()     // Catch: java.lang.Throwable -> Lf9 java.lang.Exception -> Lfb
            if (r5 == 0) goto Lf6
        L20:
            com.conceptglobal.pmc.model.ApplyLeaveModel r5 = new com.conceptglobal.pmc.model.ApplyLeaveModel     // Catch: java.lang.Exception -> Le9 java.lang.Throwable -> Lf9
            r5.<init>()     // Catch: java.lang.Exception -> Le9 java.lang.Throwable -> Lf9
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType0     // Catch: java.lang.Exception -> Le9 java.lang.Throwable -> Lf9
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> Le9 java.lang.Throwable -> Lf9
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> Le9 java.lang.Throwable -> Lf9
            int r2 = r1.getInt(r2)     // Catch: java.lang.Exception -> Le9 java.lang.Throwable -> Lf9
            r5.setAttendanceID(r2)     // Catch: java.lang.Exception -> Le9 java.lang.Throwable -> Lf9
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType1     // Catch: java.lang.Exception -> Le9 java.lang.Throwable -> Lf9
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> Le9 java.lang.Throwable -> Lf9
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> Le9 java.lang.Throwable -> Lf9
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> Le9 java.lang.Throwable -> Lf9
            r5.setFromDate(r2)     // Catch: java.lang.Exception -> Le9 java.lang.Throwable -> Lf9
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType2     // Catch: java.lang.Exception -> Le9 java.lang.Throwable -> Lf9
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> Le9 java.lang.Throwable -> Lf9
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> Le9 java.lang.Throwable -> Lf9
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> Le9 java.lang.Throwable -> Lf9
            r5.setToDate(r2)     // Catch: java.lang.Exception -> Le9 java.lang.Throwable -> Lf9
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType3     // Catch: java.lang.Exception -> Le9 java.lang.Throwable -> Lf9
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> Le9 java.lang.Throwable -> Lf9
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> Le9 java.lang.Throwable -> Lf9
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> Le9 java.lang.Throwable -> Lf9
            r5.setLeaveType(r2)     // Catch: java.lang.Exception -> Le9 java.lang.Throwable -> Lf9
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType4     // Catch: java.lang.Exception -> Le9 java.lang.Throwable -> Lf9
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> Le9 java.lang.Throwable -> Lf9
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> Le9 java.lang.Throwable -> Lf9
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> Le9 java.lang.Throwable -> Lf9
            r5.setReasonType(r2)     // Catch: java.lang.Exception -> Le9 java.lang.Throwable -> Lf9
            java.lang.String r2 = "1"
            r5.setNoOfDays(r2)     // Catch: java.lang.Exception -> Le9 java.lang.Throwable -> Lf9
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType6     // Catch: java.lang.Exception -> Le9 java.lang.Throwable -> Lf9
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> Le9 java.lang.Throwable -> Lf9
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> Le9 java.lang.Throwable -> Lf9
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> Le9 java.lang.Throwable -> Lf9
            r5.setRemarks(r2)     // Catch: java.lang.Exception -> Le9 java.lang.Throwable -> Lf9
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType7     // Catch: java.lang.Exception -> Le9 java.lang.Throwable -> Lf9
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> Le9 java.lang.Throwable -> Lf9
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> Le9 java.lang.Throwable -> Lf9
            int r2 = r1.getInt(r2)     // Catch: java.lang.Exception -> Le9 java.lang.Throwable -> Lf9
            r5.setCreatedby(r2)     // Catch: java.lang.Exception -> Le9 java.lang.Throwable -> Lf9
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType8     // Catch: java.lang.Exception -> Le9 java.lang.Throwable -> Lf9
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> Le9 java.lang.Throwable -> Lf9
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> Le9 java.lang.Throwable -> Lf9
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> Le9 java.lang.Throwable -> Lf9
            r5.setCreateddate(r2)     // Catch: java.lang.Exception -> Le9 java.lang.Throwable -> Lf9
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType9     // Catch: java.lang.Exception -> Le9 java.lang.Throwable -> Lf9
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> Le9 java.lang.Throwable -> Lf9
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> Le9 java.lang.Throwable -> Lf9
            int r2 = r1.getInt(r2)     // Catch: java.lang.Exception -> Le9 java.lang.Throwable -> Lf9
            r5.setUpdatedby(r2)     // Catch: java.lang.Exception -> Le9 java.lang.Throwable -> Lf9
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType10     // Catch: java.lang.Exception -> Le9 java.lang.Throwable -> Lf9
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> Le9 java.lang.Throwable -> Lf9
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> Le9 java.lang.Throwable -> Lf9
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> Le9 java.lang.Throwable -> Lf9
            r5.setUpdateddate(r2)     // Catch: java.lang.Exception -> Le9 java.lang.Throwable -> Lf9
            com.conceptglobal.pmc.utils.ConstantDeclarations$Enumaration r2 = com.conceptglobal.pmc.utils.ConstantDeclarations.Enumaration.mRequestType11     // Catch: java.lang.Exception -> Le9 java.lang.Throwable -> Lf9
            java.lang.Integer r2 = r2.value()     // Catch: java.lang.Exception -> Le9 java.lang.Throwable -> Lf9
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> Le9 java.lang.Throwable -> Lf9
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Exception -> Le9 java.lang.Throwable -> Lf9
            r5.setPdaid(r2)     // Catch: java.lang.Exception -> Le9 java.lang.Throwable -> Lf9
            r0.add(r5)     // Catch: java.lang.Exception -> Le9 java.lang.Throwable -> Lf9
            goto Lf0
        Le9:
            r5 = move-exception
            java.lang.String r2 = "FarmerCropMapping"
            r3 = 0
            com.conceptglobal.pmc.utils.PLog.e(r2, r5, r3)     // Catch: java.lang.Throwable -> Lf9 java.lang.Exception -> Lfb
        Lf0:
            boolean r5 = r1.moveToNext()     // Catch: java.lang.Throwable -> Lf9 java.lang.Exception -> Lfb
            if (r5 != 0) goto L20
        Lf6:
            if (r1 == 0) goto L106
            goto L103
        Lf9:
            r5 = move-exception
            goto L10c
        Lfb:
            r5 = move-exception
            java.lang.String r2 = "Farmer Crop Mapping details"
            com.conceptglobal.pmc.utils.PLog.e(r2, r5)     // Catch: java.lang.Throwable -> Lf9
            if (r1 == 0) goto L106
        L103:
            r1.close()
        L106:
            com.conceptglobal.pmc.database.DataBaseHandler r5 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r5.closeDatabase()
            return r0
        L10c:
            if (r1 == 0) goto L111
            r1.close()
        L111:
            com.conceptglobal.pmc.database.DataBaseHandler r0 = com.conceptglobal.pmc.database.GetDataFromDB.dbInstance
            r0.closeDatabase()
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getApplyLeaveDetails(java.lang.String):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x01e1, code lost:
    
        if (r2 != null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x01ef, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x01f4, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x01ec, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x01ea, code lost:
    
        if (r2 == null) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.ArrayList<com.conceptglobal.pmc.model.AssignmentActivityDetailsModel> getFarmerToDODetailsExpenses(java.lang.String r6, java.lang.String r7) {
        /*
            Method dump skipped, instructions count: 512
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getFarmerToDODetailsExpenses(java.lang.String, java.lang.String):java.util.ArrayList");
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0223, code lost:
    
        if (r1 != null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0233, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0238, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0230, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x022e, code lost:
    
        if (r1 == null) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.conceptglobal.pmc.model.ExpensesAssignmentActivityDetailsModel> getpmcExpenseAssignmentActivityDetails(java.lang.String r5) {
        /*
            Method dump skipped, instructions count: 580
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getpmcExpenseAssignmentActivityDetails(java.lang.String):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0124, code lost:
    
        if (r2 != null) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0132, code lost:
    
        com.conceptglobal.pmc.database.GetDataFromDB.dbInstance.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0137, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x012f, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x012d, code lost:
    
        if (r2 == null) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.conceptglobal.pmc.model.ExpensesAssignmentVisitDetails> getExpensesAssignmentVisitDetails(java.lang.String r6) {
        /*
            Method dump skipped, instructions count: 323
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.database.GetDataFromDB.getExpensesAssignmentVisitDetails(java.lang.String):java.util.List");
    }
}

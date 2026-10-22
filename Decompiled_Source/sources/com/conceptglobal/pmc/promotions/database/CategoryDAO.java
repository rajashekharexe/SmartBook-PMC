package com.conceptglobal.pmc.promotions.database;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDiskIOException;
import android.database.sqlite.SQLiteReadOnlyDatabaseException;
import android.util.Log;
import com.conceptglobal.pmc.database.DataBaseHandler;
import com.conceptglobal.pmc.promotions.utils.Constants;
import com.conceptglobal.pmc.promotions.utils.UtilDeclarations;
import java.text.SimpleDateFormat;
import java.util.Calendar;

/* loaded from: classes.dex */
public class CategoryDAO {
    private static final String TAG = "CategoryDAO";
    private int UsageId;
    Context cont;
    int contentId;
    SQLiteDatabase sqLite;
    SimpleDateFormat ft = new SimpleDateFormat("yyyy-MM-dd'T'HH:MM:SS");
    public DataBaseHandler dbHandler = DataBaseHandler.getInstance();

    public CategoryDAO(Context context) {
        this.cont = context;
    }

    public String getContentServerLocation() {
        Cursor rawQuery = this.dbHandler.openDatabase().rawQuery("Select ItemValue from ConfigurablelookupMaster where ItemType='VideoUrl'", null);
        if (rawQuery == null || !rawQuery.moveToFirst()) {
            return null;
        }
        return rawQuery.getString(rawQuery.getColumnIndexOrThrow("ItemValue"));
    }

    public String getSingleValue(String str) {
        String str2 = null;
        try {
            Cursor rawQuery = this.dbHandler.openDatabase().rawQuery(str, null);
            if (rawQuery != null && rawQuery.moveToFirst()) {
                str2 = rawQuery.getString(0);
            }
        } catch (Exception unused) {
        } catch (Throwable th) {
            this.dbHandler.closeDatabase();
            throw th;
        }
        this.dbHandler.closeDatabase();
        return str2;
    }

    public String getBaseUrlForVideos() {
        Cursor rawQuery = this.dbHandler.openDatabase().rawQuery("Select ItemValue from ConfigurablelookupMaster where ItemKey='CMBaseURL'", null);
        if (rawQuery == null || !rawQuery.moveToFirst()) {
            return null;
        }
        return rawQuery.getString(rawQuery.getColumnIndexOrThrow("ItemValue"));
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x00af, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00ac, code lost:
    
        if (r1 != null) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.ArrayList<com.conceptglobal.pmc.promotions.models.CategoryMaster> getCategorySelection(int r5) {
        /*
            r4 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "SELECT cm.*,(select count(*) from CategoryMaster where ParentCategoryID=cm.CategoryId and cm.IsActive=1) as childcount FROM CategoryMaster cm where ParentCategoryID="
            r1.<init>(r2)
            r1.append(r5)
            java.lang.String r5 = " and IsActive=1  order by childcount desc,Sequence asc"
            r1.append(r5)
            java.lang.String r5 = r1.toString()
            com.conceptglobal.pmc.database.DataBaseHandler r1 = r4.dbHandler
            android.database.sqlite.SQLiteDatabase r1 = r1.openDatabase()
            r2 = 0
            android.database.Cursor r2 = r1.rawQuery(r5, r2)     // Catch: java.lang.Throwable -> La1 java.lang.Exception -> La3
            if (r2 == 0) goto L94
            boolean r5 = r2.moveToFirst()     // Catch: java.lang.Throwable -> La1 java.lang.Exception -> La3
            if (r5 == 0) goto L94
        L2b:
            com.conceptglobal.pmc.promotions.models.CategoryMaster r5 = new com.conceptglobal.pmc.promotions.models.CategoryMaster     // Catch: java.lang.Throwable -> La1 java.lang.Exception -> La3
            r5.<init>()     // Catch: java.lang.Throwable -> La1 java.lang.Exception -> La3
            java.lang.String r3 = "CategoryId"
            int r3 = r2.getColumnIndexOrThrow(r3)     // Catch: java.lang.Throwable -> La1 java.lang.Exception -> La3
            int r3 = r2.getInt(r3)     // Catch: java.lang.Throwable -> La1 java.lang.Exception -> La3
            r5.setCategoryId(r3)     // Catch: java.lang.Throwable -> La1 java.lang.Exception -> La3
            java.lang.String r3 = "CategoryName"
            int r3 = r2.getColumnIndexOrThrow(r3)     // Catch: java.lang.Throwable -> La1 java.lang.Exception -> La3
            java.lang.String r3 = r2.getString(r3)     // Catch: java.lang.Throwable -> La1 java.lang.Exception -> La3
            r5.setCategoryName(r3)     // Catch: java.lang.Throwable -> La1 java.lang.Exception -> La3
            java.lang.String r3 = "Description"
            int r3 = r2.getColumnIndexOrThrow(r3)     // Catch: java.lang.Throwable -> La1 java.lang.Exception -> La3
            java.lang.String r3 = r2.getString(r3)     // Catch: java.lang.Throwable -> La1 java.lang.Exception -> La3
            r5.setDescription(r3)     // Catch: java.lang.Throwable -> La1 java.lang.Exception -> La3
            java.lang.String r3 = "ParentCategoryID"
            int r3 = r2.getColumnIndexOrThrow(r3)     // Catch: java.lang.Throwable -> La1 java.lang.Exception -> La3
            int r3 = r2.getInt(r3)     // Catch: java.lang.Throwable -> La1 java.lang.Exception -> La3
            r5.setParentCategoryID(r3)     // Catch: java.lang.Throwable -> La1 java.lang.Exception -> La3
            java.lang.String r3 = "Sequence"
            int r3 = r2.getColumnIndexOrThrow(r3)     // Catch: java.lang.Throwable -> La1 java.lang.Exception -> La3
            int r3 = r2.getInt(r3)     // Catch: java.lang.Throwable -> La1 java.lang.Exception -> La3
            r5.setSequence(r3)     // Catch: java.lang.Throwable -> La1 java.lang.Exception -> La3
            java.lang.String r3 = "childcount"
            int r3 = r2.getColumnIndexOrThrow(r3)     // Catch: java.lang.Throwable -> La1 java.lang.Exception -> La3
            int r3 = r2.getInt(r3)     // Catch: java.lang.Throwable -> La1 java.lang.Exception -> La3
            r5.setChildCount(r3)     // Catch: java.lang.Throwable -> La1 java.lang.Exception -> La3
            java.lang.String r3 = "IsActive"
            int r3 = r2.getColumnIndexOrThrow(r3)     // Catch: java.lang.Throwable -> La1 java.lang.Exception -> La3
            int r3 = r2.getInt(r3)     // Catch: java.lang.Throwable -> La1 java.lang.Exception -> La3
            r5.setIsActive(r3)     // Catch: java.lang.Throwable -> La1 java.lang.Exception -> La3
            r0.add(r5)     // Catch: java.lang.Throwable -> La1 java.lang.Exception -> La3
            boolean r5 = r2.moveToNext()     // Catch: java.lang.Throwable -> La1 java.lang.Exception -> La3
            if (r5 != 0) goto L2b
        L94:
            if (r2 == 0) goto L99
            r2.close()
        L99:
            if (r1 == 0) goto Laf
        L9b:
            com.conceptglobal.pmc.database.DataBaseHandler r5 = r4.dbHandler
            r5.closeDatabase()
            goto Laf
        La1:
            r5 = move-exception
            goto Lb0
        La3:
            r5 = move-exception
            r5.printStackTrace()     // Catch: java.lang.Throwable -> La1
            if (r2 == 0) goto Lac
            r2.close()
        Lac:
            if (r1 == 0) goto Laf
            goto L9b
        Laf:
            return r0
        Lb0:
            if (r2 == 0) goto Lb5
            r2.close()
        Lb5:
            if (r1 == 0) goto Lbc
            com.conceptglobal.pmc.database.DataBaseHandler r0 = r4.dbHandler
            r0.closeDatabase()
        Lbc:
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.promotions.database.CategoryDAO.getCategorySelection(int):java.util.ArrayList");
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x004e, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x004b, code lost:
    
        if (r2 != null) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.ArrayList<java.lang.String> getSuggestionsList() {
        /*
            r5 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            java.lang.String r1 = "select CategoryName from CategoryMaster where parentCategoryID!=0"
            com.conceptglobal.pmc.database.DataBaseHandler r2 = r5.dbHandler
            android.database.sqlite.SQLiteDatabase r2 = r2.openDatabase()
            r3 = 0
            android.database.Cursor r3 = r2.rawQuery(r1, r3)     // Catch: java.lang.Throwable -> L40 java.lang.Exception -> L42
            if (r3 == 0) goto L33
            boolean r1 = r3.moveToFirst()     // Catch: java.lang.Throwable -> L40 java.lang.Exception -> L42
            if (r1 == 0) goto L33
        L1a:
            java.lang.String r1 = "CategoryName"
            int r1 = r3.getColumnIndex(r1)     // Catch: java.lang.Throwable -> L40 java.lang.Exception -> L42
            java.lang.String r1 = r3.getString(r1)     // Catch: java.lang.Throwable -> L40 java.lang.Exception -> L42
            boolean r4 = r0.contains(r1)     // Catch: java.lang.Throwable -> L40 java.lang.Exception -> L42
            if (r4 != 0) goto L2d
            r0.add(r1)     // Catch: java.lang.Throwable -> L40 java.lang.Exception -> L42
        L2d:
            boolean r1 = r3.moveToNext()     // Catch: java.lang.Throwable -> L40 java.lang.Exception -> L42
            if (r1 != 0) goto L1a
        L33:
            if (r3 == 0) goto L38
            r3.close()
        L38:
            if (r2 == 0) goto L4e
        L3a:
            com.conceptglobal.pmc.database.DataBaseHandler r1 = r5.dbHandler
            r1.closeDatabase()
            goto L4e
        L40:
            r0 = move-exception
            goto L4f
        L42:
            r1 = move-exception
            r1.printStackTrace()     // Catch: java.lang.Throwable -> L40
            if (r3 == 0) goto L4b
            r3.close()
        L4b:
            if (r2 == 0) goto L4e
            goto L3a
        L4e:
            return r0
        L4f:
            if (r3 == 0) goto L54
            r3.close()
        L54:
            if (r2 == 0) goto L5b
            com.conceptglobal.pmc.database.DataBaseHandler r1 = r5.dbHandler
            r1.closeDatabase()
        L5b:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.promotions.database.CategoryDAO.getSuggestionsList():java.util.ArrayList");
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x006f, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x006c, code lost:
    
        if (r1 != null) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.ArrayList<java.lang.String> getSearckKeysSuggestionsList(int r7) {
        /*
            r6 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "select SearchKeys from ContentMaster where SearchKeys <> ''   and ContextId = "
            r1.<init>(r2)
            r1.append(r7)
            java.lang.String r7 = r1.toString()
            com.conceptglobal.pmc.database.DataBaseHandler r1 = r6.dbHandler
            android.database.sqlite.SQLiteDatabase r1 = r1.openDatabase()
            r2 = 0
            android.database.Cursor r2 = r1.rawQuery(r7, r2)     // Catch: java.lang.Throwable -> L61 java.lang.Exception -> L63
            if (r2 == 0) goto L54
            boolean r7 = r2.moveToFirst()     // Catch: java.lang.Throwable -> L61 java.lang.Exception -> L63
            if (r7 == 0) goto L54
        L26:
            java.lang.String r7 = "SearchKeys"
            int r7 = r2.getColumnIndex(r7)     // Catch: java.lang.Throwable -> L61 java.lang.Exception -> L63
            java.lang.String r7 = r2.getString(r7)     // Catch: java.lang.Throwable -> L61 java.lang.Exception -> L63
            java.lang.String r3 = "#"
            java.lang.String[] r7 = r7.split(r3)     // Catch: java.lang.Throwable -> L61 java.lang.Exception -> L63
            r3 = 0
        L37:
            int r4 = r7.length     // Catch: java.lang.Throwable -> L61 java.lang.Exception -> L63
            if (r3 >= r4) goto L4e
            r4 = r7[r3]     // Catch: java.lang.Throwable -> L61 java.lang.Exception -> L63
            java.lang.String r5 = ""
            if (r4 == r5) goto L4b
            boolean r4 = r0.contains(r4)     // Catch: java.lang.Throwable -> L61 java.lang.Exception -> L63
            if (r4 != 0) goto L4b
            r4 = r7[r3]     // Catch: java.lang.Throwable -> L61 java.lang.Exception -> L63
            r0.add(r4)     // Catch: java.lang.Throwable -> L61 java.lang.Exception -> L63
        L4b:
            int r3 = r3 + 1
            goto L37
        L4e:
            boolean r7 = r2.moveToNext()     // Catch: java.lang.Throwable -> L61 java.lang.Exception -> L63
            if (r7 != 0) goto L26
        L54:
            if (r2 == 0) goto L59
            r2.close()
        L59:
            if (r1 == 0) goto L6f
        L5b:
            com.conceptglobal.pmc.database.DataBaseHandler r7 = r6.dbHandler
            r7.closeDatabase()
            goto L6f
        L61:
            r7 = move-exception
            goto L70
        L63:
            r7 = move-exception
            r7.printStackTrace()     // Catch: java.lang.Throwable -> L61
            if (r2 == 0) goto L6c
            r2.close()
        L6c:
            if (r1 == 0) goto L6f
            goto L5b
        L6f:
            return r0
        L70:
            if (r2 == 0) goto L75
            r2.close()
        L75:
            if (r1 == 0) goto L7c
            com.conceptglobal.pmc.database.DataBaseHandler r0 = r6.dbHandler
            r0.closeDatabase()
        L7c:
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.promotions.database.CategoryDAO.getSearckKeysSuggestionsList(int):java.util.ArrayList");
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0054, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0051, code lost:
    
        if (r1 != null) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.ArrayList<java.lang.String> getContentNamesSuggestionsList(int r4) {
        /*
            r3 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "select ContentName from ContentMaster where ContextId = "
            r1.<init>(r2)
            r1.append(r4)
            java.lang.String r4 = r1.toString()
            com.conceptglobal.pmc.database.DataBaseHandler r1 = r3.dbHandler
            android.database.sqlite.SQLiteDatabase r1 = r1.openDatabase()
            r2 = 0
            android.database.Cursor r2 = r1.rawQuery(r4, r2)     // Catch: java.lang.Throwable -> L46 java.lang.Exception -> L48
            if (r2 == 0) goto L39
            boolean r4 = r2.moveToFirst()     // Catch: java.lang.Throwable -> L46 java.lang.Exception -> L48
            if (r4 == 0) goto L39
        L26:
            java.lang.String r4 = "ContentName"
            int r4 = r2.getColumnIndex(r4)     // Catch: java.lang.Throwable -> L46 java.lang.Exception -> L48
            java.lang.String r4 = r2.getString(r4)     // Catch: java.lang.Throwable -> L46 java.lang.Exception -> L48
            r0.add(r4)     // Catch: java.lang.Throwable -> L46 java.lang.Exception -> L48
            boolean r4 = r2.moveToNext()     // Catch: java.lang.Throwable -> L46 java.lang.Exception -> L48
            if (r4 != 0) goto L26
        L39:
            if (r2 == 0) goto L3e
            r2.close()
        L3e:
            if (r1 == 0) goto L54
        L40:
            com.conceptglobal.pmc.database.DataBaseHandler r4 = r3.dbHandler
            r4.closeDatabase()
            goto L54
        L46:
            r4 = move-exception
            goto L55
        L48:
            r4 = move-exception
            r4.printStackTrace()     // Catch: java.lang.Throwable -> L46
            if (r2 == 0) goto L51
            r2.close()
        L51:
            if (r1 == 0) goto L54
            goto L40
        L54:
            return r0
        L55:
            if (r2 == 0) goto L5a
            r2.close()
        L5a:
            if (r1 == 0) goto L61
            com.conceptglobal.pmc.database.DataBaseHandler r0 = r3.dbHandler
            r0.closeDatabase()
        L61:
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.promotions.database.CategoryDAO.getContentNamesSuggestionsList(int):java.util.ArrayList");
    }

    /* JADX WARN: Code restructure failed: missing block: B:58:0x02d8, code lost:
    
        if (r6 == null) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x031f, code lost:
    
        if (r12 != null) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x033c, code lost:
    
        return r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0337, code lost:
    
        r11.dbHandler.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0335, code lost:
    
        if (r12 != null) goto L81;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0340  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0345  */
    /* JADX WARN: Type inference failed for: r14v11 */
    /* JADX WARN: Type inference failed for: r14v12 */
    /* JADX WARN: Type inference failed for: r14v13 */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r14v4 */
    /* JADX WARN: Type inference failed for: r14v7, types: [android.database.Cursor] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.ArrayList<com.conceptglobal.pmc.promotions.models.ContentMaster> getAllPromotionContents(java.lang.String r12, java.lang.String r13, int r14, boolean r15) {
        /*
            Method dump skipped, instructions count: 843
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.promotions.database.CategoryDAO.getAllPromotionContents(java.lang.String, java.lang.String, int, boolean):java.util.ArrayList");
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x015e, code lost:
    
        if (r6 == null) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x01d8, code lost:
    
        if (r3 != null) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x01c5, code lost:
    
        if (r3 != null) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x01c7, code lost:
    
        r9.dbHandler.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x01db, code lost:
    
        return r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.ArrayList<com.conceptglobal.pmc.promotions.models.ContentMaster> getAllDownloadsContents(java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 489
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.promotions.database.CategoryDAO.getAllDownloadsContents(java.lang.String):java.util.ArrayList");
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x016b, code lost:
    
        if (r6 == null) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x01cc, code lost:
    
        if (r3 != null) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x01b9, code lost:
    
        if (r3 != null) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x01bb, code lost:
    
        r9.dbHandler.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x01cf, code lost:
    
        return r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.ArrayList<com.conceptglobal.pmc.promotions.models.ContentMaster> getFavouriteContents(java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 477
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.promotions.database.CategoryDAO.getFavouriteContents(java.lang.String):java.util.ArrayList");
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x015e, code lost:
    
        if (r6 == null) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x01d8, code lost:
    
        if (r3 != null) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x01c5, code lost:
    
        if (r3 != null) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x01c7, code lost:
    
        r9.dbHandler.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x01db, code lost:
    
        return r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.ArrayList<com.conceptglobal.pmc.promotions.models.ContentMaster> getCategorywiseDownloadsContents(java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 489
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.promotions.database.CategoryDAO.getCategorywiseDownloadsContents(java.lang.String):java.util.ArrayList");
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x0163, code lost:
    
        if (r6 == null) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x01aa, code lost:
    
        if (r3 != null) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x01c0, code lost:
    
        r9.dbHandler.closeDatabase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x01c5, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x01be, code lost:
    
        if (r3 != null) goto L52;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.ArrayList<com.conceptglobal.pmc.promotions.models.ContentMaster> getContents(java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 467
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.promotions.database.CategoryDAO.getContents(java.lang.String):java.util.ArrayList");
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x006a, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0067, code lost:
    
        if (r2 != null) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.ArrayList<com.conceptglobal.pmc.promotions.models.ContentTypeMaster> getContentTypeMasters() {
        /*
            r5 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            java.lang.String r1 = "select * from ContentTypeMaster where isactive ='true'"
            com.conceptglobal.pmc.database.DataBaseHandler r2 = r5.dbHandler
            android.database.sqlite.SQLiteDatabase r2 = r2.openDatabase()
            r3 = 0
            android.database.Cursor r3 = r2.rawQuery(r1, r3)     // Catch: java.lang.Throwable -> L5c java.lang.Exception -> L5e
            if (r3 == 0) goto L4f
            boolean r1 = r3.moveToFirst()     // Catch: java.lang.Throwable -> L5c java.lang.Exception -> L5e
            if (r1 == 0) goto L4f
        L1a:
            com.conceptglobal.pmc.promotions.models.ContentTypeMaster r1 = new com.conceptglobal.pmc.promotions.models.ContentTypeMaster     // Catch: java.lang.Throwable -> L5c java.lang.Exception -> L5e
            r1.<init>()     // Catch: java.lang.Throwable -> L5c java.lang.Exception -> L5e
            java.lang.String r4 = "ContentTypeId"
            int r4 = r3.getColumnIndexOrThrow(r4)     // Catch: java.lang.Throwable -> L5c java.lang.Exception -> L5e
            int r4 = r3.getInt(r4)     // Catch: java.lang.Throwable -> L5c java.lang.Exception -> L5e
            r1.setContentTypeId(r4)     // Catch: java.lang.Throwable -> L5c java.lang.Exception -> L5e
            java.lang.String r4 = "ContentType"
            int r4 = r3.getColumnIndexOrThrow(r4)     // Catch: java.lang.Throwable -> L5c java.lang.Exception -> L5e
            java.lang.String r4 = r3.getString(r4)     // Catch: java.lang.Throwable -> L5c java.lang.Exception -> L5e
            r1.setContentTypeName(r4)     // Catch: java.lang.Throwable -> L5c java.lang.Exception -> L5e
            java.lang.String r4 = "Description"
            int r4 = r3.getColumnIndexOrThrow(r4)     // Catch: java.lang.Throwable -> L5c java.lang.Exception -> L5e
            java.lang.String r4 = r3.getString(r4)     // Catch: java.lang.Throwable -> L5c java.lang.Exception -> L5e
            r1.setDescription(r4)     // Catch: java.lang.Throwable -> L5c java.lang.Exception -> L5e
            r0.add(r1)     // Catch: java.lang.Throwable -> L5c java.lang.Exception -> L5e
            boolean r1 = r3.moveToNext()     // Catch: java.lang.Throwable -> L5c java.lang.Exception -> L5e
            if (r1 != 0) goto L1a
        L4f:
            if (r3 == 0) goto L54
            r3.close()
        L54:
            if (r2 == 0) goto L6a
        L56:
            com.conceptglobal.pmc.database.DataBaseHandler r1 = r5.dbHandler
            r1.closeDatabase()
            goto L6a
        L5c:
            r0 = move-exception
            goto L6b
        L5e:
            r1 = move-exception
            r1.printStackTrace()     // Catch: java.lang.Throwable -> L5c
            if (r3 == 0) goto L67
            r3.close()
        L67:
            if (r2 == 0) goto L6a
            goto L56
        L6a:
            return r0
        L6b:
            if (r3 == 0) goto L70
            r3.close()
        L70:
            if (r2 == 0) goto L77
            com.conceptglobal.pmc.database.DataBaseHandler r1 = r5.dbHandler
            r1.closeDatabase()
        L77:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.promotions.database.CategoryDAO.getContentTypeMasters():java.util.ArrayList");
    }

    public void updateContent(int i, String str) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("ContentDeviceLocation", str);
        this.dbHandler.openDatabase().update("ContentMaster", contentValues, "ContentId = ?", new String[]{String.valueOf(i)});
        this.dbHandler.closeDatabase();
    }

    public void updateContentMaster(int i, ContentValues contentValues) {
        try {
            try {
                this.dbHandler.openDatabase().update("ContentMaster", contentValues, "ContentId = ?", new String[]{String.valueOf(i)});
            } catch (Exception e) {
                e.printStackTrace();
            }
        } finally {
            this.dbHandler.closeDatabase();
        }
    }

    public void executeQuery(String str) {
        try {
            try {
                this.dbHandler.openDatabase().execSQL(str);
            } catch (Exception e) {
                e.printStackTrace();
            }
        } finally {
            this.dbHandler.closeDatabase();
        }
    }

    public void updateWatchStatus(String str, int i, int i2) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(str, Integer.valueOf(i2));
        this.dbHandler.openDatabase().update("ContentMaster", contentValues, "ContentId = ?", new String[]{String.valueOf(i)});
        this.dbHandler.closeDatabase();
    }

    public void updatFavouriteStatus(String str, int i, int i2) {
        try {
            try {
                ContentValues contentValues = new ContentValues();
                contentValues.put(str, Integer.valueOf(i2));
                contentValues.put("serverUpdatedStatus", "false");
                SQLiteDatabase openDatabase = this.dbHandler.openDatabase();
                Cursor rawQuery = openDatabase.rawQuery("select Count(*) from ContentFaourites where ContentId=" + i, null);
                int i3 = 0;
                if (rawQuery != null && rawQuery.moveToFirst()) {
                    i3 = rawQuery.getInt(0);
                }
                if (i3 > 0) {
                    openDatabase.update("ContentFaourites", contentValues, "ContentId = ?", new String[]{String.valueOf(i)});
                } else {
                    contentValues.put("ContentId", Integer.valueOf(i));
                    openDatabase.insert("ContentFaourites", null, contentValues);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        } finally {
            this.dbHandler.closeDatabase();
        }
    }

    public void InsertDownloadDetails(String str, String str2, int i, int i2) {
        try {
            try {
                ContentValues contentValues = new ContentValues();
                contentValues.put("DownloadID", str);
                contentValues.put("FilePath", str2);
                contentValues.put(Constants.USAGE_ACTION_PRIMARY_COLUMN_NAME, Integer.valueOf(i));
                contentValues.put("Type", Integer.valueOf(i2));
                this.dbHandler.openDatabase().insert("DownLoadFileDetails", null, contentValues);
            } catch (Exception e) {
                e.printStackTrace();
            }
        } finally {
            this.dbHandler.closeDatabase();
        }
    }

    public void insertContentLog(int i, int i2, int i3, int i4, String str, boolean z, boolean z2, int i5, String str2, int i6, int i7, String str3) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("ContentId", Integer.valueOf(i));
        contentValues.put("CategoryID", Integer.valueOf(i2));
        contentValues.put("UserId", Integer.valueOf(i4));
        contentValues.put("PdaId", Integer.valueOf(i3));
        contentValues.put("SyncStatus", (Integer) 0);
        contentValues.put("UsageDateTime", UtilDeclarations.getDateTimeForLogs());
        if (z) {
            contentValues.put("IsAvailableOffline", (Integer) 1);
        } else {
            contentValues.put("IsAvailableOffline", (Integer) 0);
        }
        contentValues.put("CreatedBy", "");
        contentValues.put("CreatedDate", String.valueOf(Calendar.getInstance().getTime()));
        contentValues.put("UpdatedBy", "");
        contentValues.put("UpdatedDate", String.valueOf(Calendar.getInstance().getTime()));
        contentValues.put("ModuleTypeId", Integer.valueOf(i5));
        contentValues.put("Action", str2);
        contentValues.put("ActionValue", Integer.valueOf(i6));
        contentValues.put("PrimaryKeyId", Integer.valueOf(i7));
        contentValues.put("PrimaryKeyCoulmn", str3);
        try {
            Log.d("resulkt", String.valueOf(this.dbHandler.openDatabase().insert("UsageDetails", null, contentValues)));
        } catch (Exception e) {
            e.printStackTrace();
            Log.d("ErrorWHileInserting", String.valueOf(e));
        }
        this.dbHandler.closeDatabase();
    }

    public synchronized void execute_RawQuery_inDB(SQLiteDatabase sQLiteDatabase, String str) throws Exception {
        try {
            try {
                sQLiteDatabase.execSQL(str);
            } catch (Exception e) {
                Log.v(com.google.firebase.messaging.Constants.IPC_BUNDLE_KEY_SEND_ERROR, e.getMessage());
                throw new Exception(e);
            }
        } catch (SQLiteDiskIOException e2) {
            Log.v(com.google.firebase.messaging.Constants.IPC_BUNDLE_KEY_SEND_ERROR, e2.getMessage());
        } catch (SQLiteReadOnlyDatabaseException e3) {
            Log.v(com.google.firebase.messaging.Constants.IPC_BUNDLE_KEY_SEND_ERROR, e3.getMessage());
        }
    }

    public int getUsageIdNumber() {
        Cursor rawQuery = this.dbHandler.openDatabase().rawQuery("SELECT * FROM UsageDetails ORDER BY UsageId DESC LIMIT 1 ", null);
        if (rawQuery != null && rawQuery.moveToFirst()) {
            this.UsageId = rawQuery.getInt(rawQuery.getColumnIndexOrThrow("UsageId"));
        }
        this.dbHandler.closeDatabase();
        return this.UsageId;
    }

    public void updateContentLog(int i, int i2, int i3, int i4, String str, boolean z, boolean z2, int i5) {
        int i6 = i5 / 1000;
        SQLiteDatabase openDatabase = this.dbHandler.openDatabase();
        Cursor rawQuery = openDatabase.rawQuery("SELECT * FROM UsageDetails ORDER BY UsageId DESC LIMIT 1 ", null);
        int i7 = (rawQuery == null || !rawQuery.moveToFirst()) ? 0 : rawQuery.getInt(rawQuery.getColumnIndexOrThrow("UsageId"));
        ContentValues contentValues = new ContentValues();
        contentValues.put("Duration", Integer.valueOf(i6));
        openDatabase.update("UsageDetails", contentValues, "UsageId=" + i7, null);
        this.dbHandler.closeDatabase();
        if (rawQuery != null) {
            rawQuery.close();
        }
    }

    public String getPdaId() {
        String str = null;
        Cursor rawQuery = this.dbHandler.openDatabase().rawQuery("SELECT pdaID FROM pmcUserDetails limit 1", null);
        if (rawQuery != null && rawQuery.moveToFirst()) {
            str = String.valueOf(rawQuery.getInt(rawQuery.getColumnIndexOrThrow("pdaID")));
        }
        this.dbHandler.closeDatabase();
        if (rawQuery != null) {
            rawQuery.close();
        }
        return str;
    }

    public int getUserId() {
        Cursor rawQuery = this.dbHandler.openDatabase().rawQuery("SELECT userId FROM pmcUserDetails limit 1", null);
        int i = (rawQuery == null || !rawQuery.moveToFirst()) ? 0 : rawQuery.getInt(rawQuery.getColumnIndexOrThrow("userId"));
        this.dbHandler.closeDatabase();
        if (rawQuery != null) {
            rawQuery.close();
        }
        return i;
    }
}

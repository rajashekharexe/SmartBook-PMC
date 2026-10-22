package com.evernote.android.job;

import android.content.Context;
import android.database.DatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.util.Pair;
import com.evernote.android.job.util.JobCat;
import java.io.File;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
final class JobStorageDatabaseErrorHandler implements DatabaseErrorHandler {
    private static final JobCat CAT = new JobCat("DatabaseErrorHandler");

    JobStorageDatabaseErrorHandler() {
    }

    @Override // android.database.DatabaseErrorHandler
    public void onCorruption(SQLiteDatabase sQLiteDatabase) {
        CAT.e("Corruption reported by sqlite on database: " + sQLiteDatabase.getPath());
        if (!sQLiteDatabase.isOpen()) {
            deleteDatabaseFile(sQLiteDatabase.getPath());
            return;
        }
        List<Pair<String, String>> list = null;
        try {
            try {
                list = sQLiteDatabase.getAttachedDbs();
            } finally {
                if (list != null) {
                    Iterator<Pair<String, String>> it = list.iterator();
                    while (it.hasNext()) {
                        deleteDatabaseFile((String) it.next().second);
                    }
                } else {
                    deleteDatabaseFile(sQLiteDatabase.getPath());
                }
            }
        } catch (SQLiteException unused) {
        }
        try {
            sQLiteDatabase.close();
        } catch (SQLiteException unused2) {
        }
    }

    void deleteDatabaseFile(String str) {
        if (str.equalsIgnoreCase(":memory:") || str.trim().length() == 0) {
            return;
        }
        CAT.e("deleting the database file: " + str);
        try {
            deleteApi16(new File(str));
        } catch (Exception e) {
            CAT.w(e, "delete failed: " + e.getMessage(), new Object[0]);
        }
    }

    void deleteApi16(File file) {
        SQLiteDatabase.deleteDatabase(file);
    }

    void deleteApi14(Context context, File file) {
        context.deleteDatabase(file.getName());
    }
}

package com.conceptglobal.pmc.database;

import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.util.Log;
import com.conceptglobal.pmc.PMCApplication;
import com.conceptglobal.pmc.utils.ConstantDeclarations;
import com.conceptglobal.pmc.utils.FileUtils;
import java.io.File;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class DataBaseHandler {
    private static DataBaseHandler sDataBaseHandler;
    private SQLiteDatabase mDatabase;
    public static String datapath = FileUtils.getDataDir(PMCApplication.getContext()).getAbsolutePath() + ConstantDeclarations.getInstance().getDatabasePath();
    private static AtomicInteger mOpenCounter = new AtomicInteger();
    public static volatile DataBaseHandler instance = null;

    public static void reset() {
        instance = new DataBaseHandler();
        mOpenCounter.set(0);
    }

    public static synchronized DataBaseHandler getInstance() {
        DataBaseHandler dataBaseHandler;
        synchronized (DataBaseHandler.class) {
            if (sDataBaseHandler == null) {
                sDataBaseHandler = new DataBaseHandler();
            }
            dataBaseHandler = sDataBaseHandler;
        }
        return dataBaseHandler;
    }

    public synchronized SQLiteDatabase openDatabase() {
        if (mOpenCounter.incrementAndGet() == 1) {
            SQLiteDatabase sQLiteDatabase = this.mDatabase;
            if (sQLiteDatabase == null) {
                if (datapath != null && new File(datapath).exists()) {
                    this.mDatabase = SQLiteDatabase.openDatabase(datapath, null, 16);
                }
            } else if (!sQLiteDatabase.isOpen()) {
                this.mDatabase = SQLiteDatabase.openDatabase(datapath, null, 16);
            }
        }
        Log.i("DbCountInstanceOpen", mOpenCounter + "");
        return this.mDatabase;
    }

    public synchronized void closeDatabase() {
        SQLiteDatabase sQLiteDatabase;
        if (mOpenCounter.decrementAndGet() == 0 && (sQLiteDatabase = this.mDatabase) != null) {
            sQLiteDatabase.close();
        }
        Log.i("DbCountInstanceClose", mOpenCounter + "");
    }

    public boolean checkDataBase() {
        SQLiteDatabase sQLiteDatabase = null;
        try {
            sQLiteDatabase = SQLiteDatabase.openDatabase(datapath, null, 17);
            if (sQLiteDatabase != null) {
                sQLiteDatabase.close();
            }
        } catch (SQLiteException e) {
            e.getMessage();
        }
        return sQLiteDatabase != null;
    }

    public boolean isDatabaseOpen() {
        try {
            return this.mDatabase.isOpen();
        } catch (Exception unused) {
            return false;
        }
    }
}

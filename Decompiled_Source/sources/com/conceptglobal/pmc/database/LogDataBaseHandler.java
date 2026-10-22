package com.conceptglobal.pmc.database;

import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import com.conceptglobal.pmc.PMCApplication;
import com.conceptglobal.pmc.utils.ConstantDeclarations;
import com.conceptglobal.pmc.utils.FileUtils;
import java.io.File;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class LogDataBaseHandler {
    private static LogDataBaseHandler sDataBaseHandler;
    private SQLiteDatabase mDatabase;
    public static String datapath = FileUtils.getDataDir(PMCApplication.getContext()).getAbsolutePath() + ConstantDeclarations.getInstance().getDatabasePathLOG();
    private static AtomicInteger mOpenCounter = new AtomicInteger();
    public static volatile LogDataBaseHandler instance = null;

    public static void reset() {
        instance = new LogDataBaseHandler();
        mOpenCounter.set(0);
    }

    public static synchronized LogDataBaseHandler getInstance() {
        LogDataBaseHandler logDataBaseHandler;
        synchronized (LogDataBaseHandler.class) {
            if (sDataBaseHandler == null) {
                sDataBaseHandler = new LogDataBaseHandler();
            }
            logDataBaseHandler = sDataBaseHandler;
        }
        return logDataBaseHandler;
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
        return this.mDatabase;
    }

    public synchronized void closeDatabase() {
        SQLiteDatabase sQLiteDatabase;
        if (mOpenCounter.decrementAndGet() == 0 && (sQLiteDatabase = this.mDatabase) != null) {
            sQLiteDatabase.close();
        }
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
}

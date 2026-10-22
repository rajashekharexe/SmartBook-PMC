package org.android10.gintonic.DatabaseHandler;

import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.util.Log;
import java.io.File;
import java.util.concurrent.atomic.AtomicInteger;
import org.android10.gintonic.ILoggerApplication;

/* loaded from: classes2.dex */
public class DatabaseHandler {
    public static final String DATABASE_FOLDER;
    public static final String DATABASE_NAME = "aop.sqlite";
    public static final String DATABASE_PATH;
    public static final String ROOT_DIR = "PMC";
    public static volatile DatabaseHandler instance;
    private static AtomicInteger mOpenCounter;
    private static DatabaseHandler sDataBaseHandler;
    private SQLiteDatabase db;

    static {
        String str = File.separator + "PMC" + File.separator + "DatabaseDebug";
        DATABASE_FOLDER = str;
        instance = null;
        mOpenCounter = new AtomicInteger();
        DATABASE_PATH = FileUtils.getDataDir(ILoggerApplication.getContext()).getAbsolutePath() + str + File.separator + DATABASE_NAME;
    }

    public static synchronized DatabaseHandler getInstance() {
        DatabaseHandler databaseHandler;
        synchronized (DatabaseHandler.class) {
            checkAndCreateDBFile();
            if (sDataBaseHandler == null) {
                sDataBaseHandler = new DatabaseHandler();
            }
            databaseHandler = sDataBaseHandler;
        }
        return databaseHandler;
    }

    public synchronized SQLiteDatabase openDatabase() {
        if (mOpenCounter.incrementAndGet() == 1) {
            SQLiteDatabase sQLiteDatabase = this.db;
            if (sQLiteDatabase == null) {
                String str = DATABASE_PATH;
                if (new File(str).exists()) {
                    this.db = SQLiteDatabase.openDatabase(str, null, 16);
                }
            } else if (!sQLiteDatabase.isOpen()) {
                this.db = SQLiteDatabase.openDatabase(DATABASE_PATH, null, 16);
            }
        }
        checkAndCreateTable(this.db);
        return this.db;
    }

    public synchronized void closeDatabase() {
        SQLiteDatabase sQLiteDatabase;
        if (mOpenCounter.decrementAndGet() == 0 && (sQLiteDatabase = this.db) != null) {
            sQLiteDatabase.close();
        }
    }

    public void checkAndCreateTable(SQLiteDatabase sQLiteDatabase) {
        try {
            sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS Logger (Id INTEGER PRIMARY KEY  NOT NULL ,ClassName VARCHAR,MethodName VARCHAR,Params TEXT,LogTime DATETIME, MethodResult TEXT, ServerUpdatedStatus INTEGER DEFAULT 0, ExecutionTime TEXT DEFAULT 0,PdaId INTEGER)");
            sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS LogStatus (Id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL ,PdaId TEXT,Status TEXT)");
        } catch (SQLiteException unused) {
        }
    }

    public static void checkAndCreateDBFile() {
        try {
            File file = new File(FileUtils.getDataDir(ILoggerApplication.getContext()).getAbsolutePath() + DATABASE_FOLDER);
            if (file.exists() || !file.mkdirs()) {
                return;
            }
            File file2 = new File(DATABASE_PATH);
            Log.i("db status", file2.exists() + "");
            file2.createNewFile();
        } catch (Exception e) {
            e.getMessage();
        }
    }
}

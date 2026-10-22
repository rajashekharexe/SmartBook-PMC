package com.evernote.android.job;

import android.content.ContentValues;
import android.content.Context;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteCantOpenDatabaseException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.text.TextUtils;
import android.util.LruCache;
import com.evernote.android.job.util.JobCat;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* loaded from: classes.dex */
class JobStorage {
    private static final int CACHE_SIZE = 30;
    private static final JobCat CAT = new JobCat("JobStorage");
    public static final String COLUMN_BACKOFF_MS = "backoffMs";
    public static final String COLUMN_BACKOFF_POLICY = "backoffPolicy";
    public static final String COLUMN_END_MS = "endMs";
    public static final String COLUMN_EXACT = "exact";
    public static final String COLUMN_EXTRAS = "extras";
    public static final String COLUMN_FLEX_MS = "flexMs";
    public static final String COLUMN_FLEX_SUPPORT = "flexSupport";
    public static final String COLUMN_ID = "_id";
    public static final String COLUMN_INTERVAL_MS = "intervalMs";
    public static final String COLUMN_LAST_RUN = "lastRun";
    public static final String COLUMN_NETWORK_TYPE = "networkType";
    public static final String COLUMN_NUM_FAILURES = "numFailures";

    @Deprecated
    private static final String COLUMN_PERSISTED = "persisted";
    public static final String COLUMN_REQUIREMENTS_ENFORCED = "requirementsEnforced";
    public static final String COLUMN_REQUIRES_BATTERY_NOT_LOW = "requiresBatteryNotLow";
    public static final String COLUMN_REQUIRES_CHARGING = "requiresCharging";
    public static final String COLUMN_REQUIRES_DEVICE_IDLE = "requiresDeviceIdle";
    public static final String COLUMN_REQUIRES_STORAGE_NOT_LOW = "requiresStorageNotLow";
    public static final String COLUMN_SCHEDULED_AT = "scheduledAt";
    public static final String COLUMN_STARTED = "started";
    public static final String COLUMN_START_MS = "startMs";
    public static final String COLUMN_TAG = "tag";
    public static final String COLUMN_TRANSIENT = "transient";

    @Deprecated
    private static final String COLUMN_TRANSIENT_OLD = "isTransient";
    public static final String DATABASE_NAME = "evernote_jobs.db";
    public static final int DATABASE_VERSION = 6;
    private static final String FAILED_DELETE_IDS = "FAILED_DELETE_IDS";
    public static final String JOB_ID_COUNTER = "JOB_ID_COUNTER_v2";
    public static final String JOB_TABLE_NAME = "jobs";
    public static final String PREF_FILE_NAME = "evernote_jobs";
    private static final String WHERE_NOT_STARTED = "ifnull(started, 0)<=0";
    private final JobCacheId mCacheId;
    private final JobOpenHelper mDbHelper;
    private final Set<String> mFailedDeleteIds;
    private SQLiteDatabase mInjectedDatabase;
    private AtomicInteger mJobCounter;
    private final ReadWriteLock mLock;
    private final SharedPreferences mPreferences;

    public JobStorage(Context context) {
        this(context, DATABASE_NAME);
    }

    public JobStorage(Context context, String str) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(PREF_FILE_NAME, 0);
        this.mPreferences = sharedPreferences;
        this.mLock = new ReentrantReadWriteLock();
        this.mCacheId = new JobCacheId();
        this.mDbHelper = new JobOpenHelper(context, str);
        Set<String> stringSet = sharedPreferences.getStringSet(FAILED_DELETE_IDS, new HashSet());
        this.mFailedDeleteIds = stringSet;
        if (stringSet.isEmpty()) {
            return;
        }
        tryToCleanupFinishedJobs();
    }

    public void put(JobRequest jobRequest) {
        this.mLock.writeLock().lock();
        try {
            store(jobRequest);
            updateRequestInCache(jobRequest);
        } finally {
            this.mLock.writeLock().unlock();
        }
    }

    public void update(JobRequest jobRequest, ContentValues contentValues) {
        this.mLock.writeLock().lock();
        SQLiteDatabase sQLiteDatabase = null;
        try {
            try {
                updateRequestInCache(jobRequest);
                sQLiteDatabase = getDatabase();
                sQLiteDatabase.update(JOB_TABLE_NAME, contentValues, "_id=?", new String[]{String.valueOf(jobRequest.getJobId())});
            } catch (Exception e) {
                CAT.e(e, "could not update %s", jobRequest);
            }
        } finally {
            closeDatabase(sQLiteDatabase);
            this.mLock.writeLock().unlock();
        }
    }

    private void updateRequestInCache(JobRequest jobRequest) {
        this.mCacheId.put(Integer.valueOf(jobRequest.getJobId()), jobRequest);
    }

    public JobRequest get(int i) {
        this.mLock.readLock().lock();
        try {
            return this.mCacheId.get(Integer.valueOf(i));
        } finally {
            this.mLock.readLock().unlock();
        }
    }

    public Set<JobRequest> getAllJobRequests(String str, boolean z) {
        SQLiteDatabase sQLiteDatabase;
        String[] strArr;
        String concat;
        SQLiteDatabase database;
        HashSet hashSet = new HashSet();
        this.mLock.readLock().lock();
        Cursor cursor = null;
        try {
            if (TextUtils.isEmpty(str)) {
                concat = z ? null : WHERE_NOT_STARTED;
                strArr = null;
            } else {
                strArr = new String[]{str};
                concat = (z ? "" : "ifnull(started, 0)<=0 AND ").concat("tag=?");
            }
            database = getDatabase();
        } catch (Exception e) {
            e = e;
            sQLiteDatabase = null;
        } catch (Throwable th) {
            th = th;
            sQLiteDatabase = null;
        }
        try {
            cursor = database.query(JOB_TABLE_NAME, null, concat, strArr, null, null, null);
            HashMap hashMap = new HashMap(this.mCacheId.snapshot());
            while (cursor != null) {
                if (!cursor.moveToNext()) {
                    break;
                }
                int i = cursor.getInt(cursor.getColumnIndex(COLUMN_ID));
                Integer valueOf = Integer.valueOf(i);
                valueOf.getClass();
                if (!didFailToDelete(i)) {
                    if (hashMap.containsKey(valueOf)) {
                        hashSet.add(hashMap.get(valueOf));
                    } else {
                        hashSet.add(JobRequest.fromCursor(cursor));
                    }
                }
            }
            closeCursor(cursor);
            closeDatabase(database);
        } catch (Exception e2) {
            sQLiteDatabase = database;
            e = e2;
            try {
                CAT.e(e, "could not load all jobs", new Object[0]);
                closeCursor(cursor);
                closeDatabase(sQLiteDatabase);
                this.mLock.readLock().unlock();
                return hashSet;
            } catch (Throwable th2) {
                th = th2;
                closeCursor(cursor);
                closeDatabase(sQLiteDatabase);
                this.mLock.readLock().unlock();
                throw th;
            }
        } catch (Throwable th3) {
            sQLiteDatabase = database;
            th = th3;
            closeCursor(cursor);
            closeDatabase(sQLiteDatabase);
            this.mLock.readLock().unlock();
            throw th;
        }
        this.mLock.readLock().unlock();
        return hashSet;
    }

    public void remove(JobRequest jobRequest) {
        remove(jobRequest, jobRequest.getJobId());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean remove(JobRequest jobRequest, int i) {
        this.mLock.writeLock().lock();
        SQLiteDatabase sQLiteDatabase = null;
        try {
            this.mCacheId.remove(Integer.valueOf(i));
            sQLiteDatabase = getDatabase();
            sQLiteDatabase.delete(JOB_TABLE_NAME, "_id=?", new String[]{String.valueOf(i)});
            return true;
        } catch (Exception e) {
            CAT.e(e, "could not delete %d %s", Integer.valueOf(i), jobRequest);
            addFailedDeleteId(i);
            return false;
        } finally {
            closeDatabase(sQLiteDatabase);
            this.mLock.writeLock().unlock();
        }
    }

    public synchronized int nextJobId() {
        int incrementAndGet;
        if (this.mJobCounter == null) {
            this.mJobCounter = new AtomicInteger(getMaxJobId());
        }
        incrementAndGet = this.mJobCounter.incrementAndGet();
        int jobIdOffset = JobConfig.getJobIdOffset();
        if (incrementAndGet < jobIdOffset || incrementAndGet >= 2147480000) {
            this.mJobCounter.set(jobIdOffset);
            incrementAndGet = this.mJobCounter.incrementAndGet();
        }
        this.mPreferences.edit().putInt(JOB_ID_COUNTER, incrementAndGet).apply();
        return incrementAndGet;
    }

    private void store(JobRequest jobRequest) {
        ContentValues contentValues = jobRequest.toContentValues();
        SQLiteDatabase sQLiteDatabase = null;
        try {
            SQLiteDatabase database = getDatabase();
            try {
                if (database.insertWithOnConflict(JOB_TABLE_NAME, null, contentValues, 5) < 0) {
                    throw new SQLException("Couldn't insert job request into database");
                }
                closeDatabase(database);
            } catch (Throwable th) {
                th = th;
                sQLiteDatabase = database;
                closeDatabase(sQLiteDatabase);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public JobRequest load(int i, boolean z) {
        SQLiteDatabase sQLiteDatabase;
        SQLiteDatabase sQLiteDatabase2;
        Cursor cursor;
        Cursor cursor2 = null;
        if (didFailToDelete(i)) {
            return null;
        }
        try {
            String str = z ? "_id=?" : "_id=? AND started<=0";
            sQLiteDatabase = getDatabase();
            try {
                Cursor query = sQLiteDatabase.query(JOB_TABLE_NAME, null, str, new String[]{String.valueOf(i)}, null, null, null);
                if (query != null) {
                    try {
                        if (query.moveToFirst()) {
                            JobRequest fromCursor = JobRequest.fromCursor(query);
                            closeCursor(query);
                            closeDatabase(sQLiteDatabase);
                            return fromCursor;
                        }
                    } catch (Exception e) {
                        sQLiteDatabase2 = sQLiteDatabase;
                        e = e;
                        cursor = query;
                        try {
                            CAT.e(e, "could not load id %d", Integer.valueOf(i));
                            closeCursor(cursor);
                            closeDatabase(sQLiteDatabase2);
                            return null;
                        } catch (Throwable th) {
                            th = th;
                            sQLiteDatabase = sQLiteDatabase2;
                            cursor2 = cursor;
                            closeCursor(cursor2);
                            closeDatabase(sQLiteDatabase);
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        cursor2 = query;
                        closeCursor(cursor2);
                        closeDatabase(sQLiteDatabase);
                        throw th;
                    }
                }
                closeCursor(query);
                closeDatabase(sQLiteDatabase);
            } catch (Exception e2) {
                cursor = null;
                sQLiteDatabase2 = sQLiteDatabase;
                e = e2;
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Exception e3) {
            e = e3;
            sQLiteDatabase2 = null;
            cursor = null;
        } catch (Throwable th4) {
            th = th4;
            sQLiteDatabase = null;
        }
        return null;
    }

    SQLiteDatabase getDatabase() {
        SQLiteDatabase sQLiteDatabase = this.mInjectedDatabase;
        if (sQLiteDatabase != null) {
            return sQLiteDatabase;
        }
        try {
            return this.mDbHelper.getWritableDatabase();
        } catch (SQLiteCantOpenDatabaseException e) {
            CAT.e(e);
            new JobStorageDatabaseErrorHandler().deleteDatabaseFile(DATABASE_NAME);
            return this.mDbHelper.getWritableDatabase();
        }
    }

    void injectDatabase(SQLiteDatabase sQLiteDatabase) {
        this.mInjectedDatabase = sQLiteDatabase;
    }

    Set<String> getFailedDeleteIds() {
        return this.mFailedDeleteIds;
    }

    int getMaxJobId() {
        SQLiteDatabase sQLiteDatabase;
        int i;
        Cursor cursor = null;
        try {
            try {
                sQLiteDatabase = getDatabase();
                try {
                    cursor = sQLiteDatabase.rawQuery("SELECT MAX(_id) FROM jobs", null);
                    i = (cursor == null || !cursor.moveToFirst()) ? 0 : cursor.getInt(0);
                    closeCursor(cursor);
                    closeDatabase(sQLiteDatabase);
                } catch (Exception e) {
                    e = e;
                    CAT.e(e);
                    closeCursor(cursor);
                    closeDatabase(sQLiteDatabase);
                    i = 0;
                    return Math.max(JobConfig.getJobIdOffset(), Math.max(i, this.mPreferences.getInt(JOB_ID_COUNTER, 0)));
                }
            } catch (Throwable th) {
                th = th;
                closeCursor(null);
                closeDatabase(null);
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
            sQLiteDatabase = null;
        } catch (Throwable th2) {
            th = th2;
            closeCursor(null);
            closeDatabase(null);
            throw th;
        }
        return Math.max(JobConfig.getJobIdOffset(), Math.max(i, this.mPreferences.getInt(JOB_ID_COUNTER, 0)));
    }

    private void addFailedDeleteId(int i) {
        synchronized (this.mFailedDeleteIds) {
            this.mFailedDeleteIds.add(String.valueOf(i));
            this.mPreferences.edit().putStringSet(FAILED_DELETE_IDS, this.mFailedDeleteIds).apply();
        }
    }

    private boolean didFailToDelete(int i) {
        boolean z;
        synchronized (this.mFailedDeleteIds) {
            z = !this.mFailedDeleteIds.isEmpty() && this.mFailedDeleteIds.contains(String.valueOf(i));
        }
        return z;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.evernote.android.job.JobStorage$1] */
    private void tryToCleanupFinishedJobs() {
        new Thread("CleanupFinishedJobsThread") { // from class: com.evernote.android.job.JobStorage.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                HashSet<String> hashSet;
                int i;
                synchronized (JobStorage.this.mFailedDeleteIds) {
                    hashSet = new HashSet(JobStorage.this.mFailedDeleteIds);
                }
                Iterator it = hashSet.iterator();
                while (true) {
                    i = 0;
                    if (!it.hasNext()) {
                        break;
                    }
                    try {
                        int parseInt = Integer.parseInt((String) it.next());
                        if (!JobStorage.this.remove(null, parseInt)) {
                            JobStorage.CAT.e("Couldn't delete job %d which failed to delete earlier", Integer.valueOf(parseInt));
                        } else {
                            it.remove();
                            JobStorage.CAT.i("Deleted job %d which failed to delete earlier", Integer.valueOf(parseInt));
                        }
                    } catch (NumberFormatException unused) {
                        it.remove();
                    }
                }
                synchronized (JobStorage.this.mFailedDeleteIds) {
                    JobStorage.this.mFailedDeleteIds.clear();
                    if (hashSet.size() <= 50) {
                        JobStorage.this.mFailedDeleteIds.addAll(hashSet);
                    } else {
                        for (String str : hashSet) {
                            int i2 = i + 1;
                            if (i > 50) {
                                break;
                            }
                            JobStorage.this.mFailedDeleteIds.add(str);
                            i = i2;
                        }
                    }
                }
            }
        }.start();
    }

    private class JobCacheId extends LruCache<Integer, JobRequest> {
        public JobCacheId() {
            super(30);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.util.LruCache
        public JobRequest create(Integer num) {
            return JobStorage.this.load(num.intValue(), true);
        }
    }

    private static final class JobOpenHelper extends SQLiteOpenHelper {
        private JobOpenHelper(Context context, String str) {
            super(context, str, null, 6, new JobStorageDatabaseErrorHandler());
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            createJobTable(sQLiteDatabase);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            while (i < i2) {
                if (i == 1) {
                    upgradeFrom1To2(sQLiteDatabase);
                } else if (i == 2) {
                    upgradeFrom2To3(sQLiteDatabase);
                } else if (i == 3) {
                    upgradeFrom3To4(sQLiteDatabase);
                } else if (i == 4) {
                    upgradeFrom4To5(sQLiteDatabase);
                } else if (i == 5) {
                    upgradeFrom5To6(sQLiteDatabase);
                } else {
                    throw new IllegalStateException("not implemented");
                }
                i++;
            }
        }

        private void createJobTable(SQLiteDatabase sQLiteDatabase) {
            sQLiteDatabase.execSQL("create table jobs (_id integer primary key, tag text not null, startMs integer, endMs integer, backoffMs integer, backoffPolicy text not null, intervalMs integer, requirementsEnforced integer, requiresCharging integer, requiresDeviceIdle integer, exact integer, networkType text not null, extras text, numFailures integer, scheduledAt integer, started integer, flexMs integer, flexSupport integer, lastRun integer, transient integer, requiresBatteryNotLow integer, requiresStorageNotLow integer);");
        }

        private void upgradeFrom1To2(SQLiteDatabase sQLiteDatabase) {
            sQLiteDatabase.execSQL("alter table jobs add column isTransient integer;");
        }

        private void upgradeFrom2To3(SQLiteDatabase sQLiteDatabase) {
            sQLiteDatabase.execSQL("alter table jobs add column flexMs integer;");
            sQLiteDatabase.execSQL("alter table jobs add column flexSupport integer;");
            ContentValues contentValues = new ContentValues();
            contentValues.put(JobStorage.COLUMN_INTERVAL_MS, Long.valueOf(JobRequest.MIN_INTERVAL));
            sQLiteDatabase.update(JobStorage.JOB_TABLE_NAME, contentValues, "intervalMs>0 AND intervalMs<" + JobRequest.MIN_INTERVAL, new String[0]);
            sQLiteDatabase.execSQL("update jobs set flexMs = intervalMs;");
        }

        private void upgradeFrom3To4(SQLiteDatabase sQLiteDatabase) {
            sQLiteDatabase.execSQL("alter table jobs add column lastRun integer;");
        }

        private void upgradeFrom4To5(SQLiteDatabase sQLiteDatabase) {
            try {
                sQLiteDatabase.beginTransaction();
                sQLiteDatabase.execSQL("create table jobs_new (_id integer primary key, tag text not null, startMs integer, endMs integer, backoffMs integer, backoffPolicy text not null, intervalMs integer, requirementsEnforced integer, requiresCharging integer, requiresDeviceIdle integer, exact integer, networkType text not null, extras text, numFailures integer, scheduledAt integer, started integer, flexMs integer, flexSupport integer, lastRun integer);");
                sQLiteDatabase.execSQL("INSERT INTO jobs_new SELECT _id,tag,startMs,endMs,backoffMs,backoffPolicy,intervalMs,requirementsEnforced,requiresCharging,requiresDeviceIdle,exact,networkType,extras,numFailures,scheduledAt,isTransient,flexMs,flexSupport,lastRun FROM jobs");
                sQLiteDatabase.execSQL("DROP TABLE jobs");
                sQLiteDatabase.execSQL("ALTER TABLE jobs_new RENAME TO jobs");
                sQLiteDatabase.execSQL("alter table jobs add column transient integer;");
                sQLiteDatabase.setTransactionSuccessful();
            } finally {
                sQLiteDatabase.endTransaction();
            }
        }

        private void upgradeFrom5To6(SQLiteDatabase sQLiteDatabase) {
            sQLiteDatabase.execSQL("alter table jobs add column requiresBatteryNotLow integer;");
            sQLiteDatabase.execSQL("alter table jobs add column requiresStorageNotLow integer;");
        }
    }

    private static void closeCursor(Cursor cursor) {
        if (cursor != null) {
            try {
                cursor.close();
            } catch (Exception unused) {
            }
        }
    }

    private static void closeDatabase(SQLiteDatabase sQLiteDatabase) {
        if (sQLiteDatabase == null || !JobConfig.isCloseDatabase()) {
            return;
        }
        try {
            sQLiteDatabase.close();
        } catch (Exception unused) {
        }
    }
}

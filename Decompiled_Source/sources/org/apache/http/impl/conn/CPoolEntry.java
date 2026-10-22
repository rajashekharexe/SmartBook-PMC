package org.apache.http.impl.conn;

import android.util.Log;
import java.io.IOException;
import java.util.Date;
import java.util.concurrent.TimeUnit;
import org.apache.http.conn.ManagedHttpClientConnection;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.pool.PoolEntry;

/* loaded from: classes2.dex */
class CPoolEntry extends PoolEntry<HttpRoute, ManagedHttpClientConnection> {
    private static final String TAG = "HttpClient";
    private volatile boolean routeComplete;

    public CPoolEntry(String str, HttpRoute httpRoute, ManagedHttpClientConnection managedHttpClientConnection, long j, TimeUnit timeUnit) {
        super(str, httpRoute, managedHttpClientConnection, j, timeUnit);
    }

    public void markRouteComplete() {
        this.routeComplete = true;
    }

    public boolean isRouteComplete() {
        return this.routeComplete;
    }

    public void closeConnection() throws IOException {
        getConnection().close();
    }

    public void shutdownConnection() throws IOException {
        getConnection().shutdown();
    }

    @Override // org.apache.http.pool.PoolEntry
    public boolean isExpired(long j) {
        boolean isExpired = super.isExpired(j);
        if (isExpired && Log.isLoggable(TAG, 3)) {
            Log.d(TAG, "Connection " + this + " expired @ " + new Date(getExpiry()));
        }
        return isExpired;
    }

    @Override // org.apache.http.pool.PoolEntry
    public boolean isClosed() {
        return !getConnection().isOpen();
    }

    @Override // org.apache.http.pool.PoolEntry
    public void close() {
        try {
            closeConnection();
        } catch (IOException e) {
            if (Log.isLoggable(TAG, 3)) {
                Log.d(TAG, "I/O error closing connection", e);
            }
        }
    }
}

package com.conceptglobal.pmc.promotions.downloadmanager;

import com.conceptglobal.pmc.promotions.downloadmanager.DownloadRequestQueue;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URLConnection;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.BlockingQueue;
import okhttp3.internal.http.StatusLine;
import org.apache.http.HttpHeaders;

/* loaded from: classes.dex */
public class DownloadDispatcher extends Thread {
    private long mContentLength;
    private long mCurrentBytes;
    private DownloadRequestQueue.CallBackDelivery mDelivery;
    private final BlockingQueue<DownloadRequest> mQueue;
    private Timer mTimer;
    private volatile boolean mQuit = false;
    private final int BUFFER_SIZE = 4096;
    private int mRedirectionCount = 0;
    private final int MAX_REDIRECTS = 5;
    private final int HTTP_REQUESTED_RANGE_NOT_SATISFIABLE = 416;
    private final int HTTP_TEMP_REDIRECT = StatusLine.HTTP_TEMP_REDIRECT;
    private boolean shouldAllowRedirects = true;

    DownloadDispatcher(BlockingQueue<DownloadRequest> blockingQueue, DownloadRequestQueue.CallBackDelivery callBackDelivery) {
        this.mQueue = blockingQueue;
        this.mDelivery = callBackDelivery;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x004d  */
    @Override // java.lang.Thread, java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void run() {
        /*
            r3 = this;
            r0 = 10
            android.os.Process.setThreadPriority(r0)
            java.util.Timer r0 = new java.util.Timer
            r0.<init>()
            r3.mTimer = r0
        Lc:
            r0 = 0
            java.util.concurrent.BlockingQueue<com.conceptglobal.pmc.promotions.downloadmanager.DownloadRequest> r1 = r3.mQueue     // Catch: java.lang.InterruptedException -> L46
            java.lang.Object r1 = r1.take()     // Catch: java.lang.InterruptedException -> L46
            com.conceptglobal.pmc.promotions.downloadmanager.DownloadRequest r1 = (com.conceptglobal.pmc.promotions.downloadmanager.DownloadRequest) r1     // Catch: java.lang.InterruptedException -> L46
            r0 = 0
            r3.mRedirectionCount = r0     // Catch: java.lang.InterruptedException -> L43
            r0 = 1
            r3.shouldAllowRedirects = r0     // Catch: java.lang.InterruptedException -> L43
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.InterruptedException -> L43
            r0.<init>()     // Catch: java.lang.InterruptedException -> L43
            java.lang.String r2 = "Download initiated for "
            r0.append(r2)     // Catch: java.lang.InterruptedException -> L43
            int r2 = r1.getDownloadId()     // Catch: java.lang.InterruptedException -> L43
            r0.append(r2)     // Catch: java.lang.InterruptedException -> L43
            java.lang.String r0 = r0.toString()     // Catch: java.lang.InterruptedException -> L43
            com.conceptglobal.pmc.promotions.downloadmanager.Log.v(r0)     // Catch: java.lang.InterruptedException -> L43
            r0 = 2
            r3.updateDownloadState(r1, r0)     // Catch: java.lang.InterruptedException -> L43
            android.net.Uri r0 = r1.getUri()     // Catch: java.lang.InterruptedException -> L43
            java.lang.String r0 = r0.toString()     // Catch: java.lang.InterruptedException -> L43
            r3.executeDownload(r1, r0)     // Catch: java.lang.InterruptedException -> L43
            goto Lc
        L43:
            r0 = r1
            goto L47
        L46:
        L47:
            boolean r1 = r3.mQuit
            if (r1 == 0) goto Lc
            if (r0 == 0) goto L5f
            r0.finish()
            int r1 = r0.getDownloadState()
            r2 = 16
            if (r1 == r2) goto L5f
            r1 = 1008(0x3f0, float:1.413E-42)
            java.lang.String r2 = "Download cancelled"
            r3.updateDownloadFailed(r0, r1, r2)
        L5f:
            java.util.Timer r0 = r3.mTimer
            r0.cancel()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.promotions.downloadmanager.DownloadDispatcher.run():void");
    }

    void quit() {
        this.mQuit = true;
        interrupt();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:33:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0163  */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v6, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r8v7 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void executeDownload(com.conceptglobal.pmc.promotions.downloadmanager.DownloadRequest r7, java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 378
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.promotions.downloadmanager.DownloadDispatcher.executeDownload(com.conceptglobal.pmc.promotions.downloadmanager.DownloadRequest, java.lang.String):void");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(22:0|1|2|3|5|6|7|(5:9|10|(1:14)|15|(7:17|18|(2:52|53)|20|(2:47|48)|(1:23)|(2:44|45)(1:46)))|60|61|62|63|64|65|(1:67)(1:(1:71)(1:72))|68|(0)|20|(0)|(0)|(0)(0)|(1:(0))) */
    /* JADX WARN: Can't wrap try/catch for region: R(4:(9:(5:9|10|(1:14)|15|(7:17|18|(2:52|53)|20|(2:47|48)|(1:23)|(2:44|45)(1:46)))|65|(1:67)(1:(1:71)(1:72))|68|(0)|20|(0)|(0)|(0)(0))|62|63|64) */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x005a, code lost:
    
        r2 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x005e, code lost:
    
        r2.printStackTrace();
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x005c, code lost:
    
        r2 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x005d, code lost:
    
        r0 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:101:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:102:0x00cb A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:107:0x00c1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0093 A[Catch: all -> 0x008d, IOException -> 0x008f, TRY_LEAVE, TryCatch #4 {IOException -> 0x008f, blocks: (B:48:0x0089, B:23:0x0093), top: B:47:0x0089, outer: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00ad A[Catch: IOException -> 0x00b1, TRY_ENTER, TRY_LEAVE, TryCatch #3 {IOException -> 0x00b1, blocks: (B:44:0x00ad, B:29:0x009c, B:48:0x0089, B:23:0x0093), top: B:20:0x0087, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:46:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0089 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x007f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0066 A[Catch: all -> 0x006c, TRY_ENTER, TryCatch #7 {all -> 0x006c, blocks: (B:67:0x0066, B:71:0x0074, B:72:0x007a), top: B:65:0x0064 }] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x00d5 A[Catch: all -> 0x00cf, IOException -> 0x00d1, TRY_LEAVE, TryCatch #2 {IOException -> 0x00d1, blocks: (B:103:0x00cb, B:79:0x00d5), top: B:102:0x00cb, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x00ef A[Catch: IOException -> 0x00f3, TRY_ENTER, TRY_LEAVE, TryCatch #1 {IOException -> 0x00f3, blocks: (B:99:0x00ef, B:85:0x00de, B:103:0x00cb, B:79:0x00d5), top: B:76:0x00c9, inners: #2 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void transferData(com.conceptglobal.pmc.promotions.downloadmanager.DownloadRequest r8, java.net.HttpURLConnection r9) {
        /*
            Method dump skipped, instructions count: 248
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.promotions.downloadmanager.DownloadDispatcher.transferData(com.conceptglobal.pmc.promotions.downloadmanager.DownloadRequest, java.net.HttpURLConnection):void");
    }

    private void transferData(DownloadRequest downloadRequest, InputStream inputStream, OutputStream outputStream) {
        byte[] bArr = new byte[4096];
        this.mCurrentBytes = 0L;
        downloadRequest.setDownloadState(8);
        Log.v("Content Length: " + this.mContentLength + " for Download Id " + downloadRequest.getDownloadId());
        while (!downloadRequest.isCancelled()) {
            int readFromResponse = readFromResponse(downloadRequest, bArr, inputStream);
            long j = this.mContentLength;
            if (j != -1 && j > 0) {
                long j2 = this.mCurrentBytes;
                updateDownloadProgress(downloadRequest, (int) ((100 * j2) / j), j2);
            }
            if (readFromResponse == -1) {
                updateDownloadComplete(downloadRequest);
                return;
            } else {
                if (readFromResponse == Integer.MIN_VALUE) {
                    return;
                }
                if (writeDataToDestination(downloadRequest, bArr, readFromResponse, outputStream)) {
                    this.mCurrentBytes += readFromResponse;
                } else {
                    downloadRequest.finish();
                    updateDownloadFailed(downloadRequest, 1001, "Failed writing file");
                    return;
                }
            }
        }
        Log.v("Stopping the download as Download Request is cancelled for Downloaded Id " + downloadRequest.getDownloadId());
        downloadRequest.finish();
        updateDownloadFailed(downloadRequest, 1008, "Download cancelled");
    }

    private int readFromResponse(DownloadRequest downloadRequest, byte[] bArr, InputStream inputStream) {
        try {
            return inputStream.read(bArr);
        } catch (IOException e) {
            if ("unexpected end of stream".equals(e.getMessage())) {
                return -1;
            }
            updateDownloadFailed(downloadRequest, 1004, "IOException: Failed reading response");
            return Integer.MIN_VALUE;
        }
    }

    private boolean writeDataToDestination(DownloadRequest downloadRequest, byte[] bArr, int i, OutputStream outputStream) {
        try {
            outputStream.write(bArr, 0, i);
            return true;
        } catch (IOException unused) {
            updateDownloadFailed(downloadRequest, 1001, "IOException when writing download contents to the destination file");
            return false;
        } catch (Exception unused2) {
            updateDownloadFailed(downloadRequest, 1001, "Exception when writing download contents to the destination file");
            return false;
        }
    }

    private int readResponseHeaders(DownloadRequest downloadRequest, HttpURLConnection httpURLConnection) {
        String headerField = httpURLConnection.getHeaderField(HttpHeaders.TRANSFER_ENCODING);
        this.mContentLength = -1L;
        if (headerField == null) {
            this.mContentLength = getHeaderFieldLong(httpURLConnection, "Content-Length", -1L);
        } else {
            Log.v("Ignoring Content-Length since Transfer-Encoding is also defined for Downloaded Id " + downloadRequest.getDownloadId());
        }
        if (this.mContentLength != -1) {
            return 1;
        }
        return (headerField == null || !headerField.equalsIgnoreCase("chunked")) ? -1 : 1;
    }

    private long getHeaderFieldLong(URLConnection uRLConnection, String str, long j) {
        try {
            return Long.parseLong(uRLConnection.getHeaderField(str));
        } catch (NumberFormatException unused) {
            return j;
        }
    }

    private void attemptRetryOnTimeOutException(final DownloadRequest downloadRequest) {
        updateDownloadState(downloadRequest, 128);
        try {
            downloadRequest.getRetryPolicy().retry();
            this.mTimer.schedule(new TimerTask() { // from class: com.conceptglobal.pmc.promotions.downloadmanager.DownloadDispatcher.1
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    DownloadDispatcher downloadDispatcher = DownloadDispatcher.this;
                    DownloadRequest downloadRequest2 = downloadRequest;
                    downloadDispatcher.executeDownload(downloadRequest2, downloadRequest2.getUri().toString());
                }
            }, r0.getCurrentTimeout());
        } catch (RetryError unused) {
            updateDownloadFailed(downloadRequest, 1009, "Connection time out after maximum retires attempted");
        }
    }

    private void cleanupDestination(DownloadRequest downloadRequest) {
        Log.d("cleanupDestination() deleting " + downloadRequest.getDestinationURI().getPath());
        File file = new File(downloadRequest.getDestinationURI().getPath());
        if (file.exists()) {
            file.delete();
        }
    }

    private void updateDownloadState(DownloadRequest downloadRequest, int i) {
        downloadRequest.setDownloadState(i);
    }

    private void updateDownloadComplete(DownloadRequest downloadRequest) {
        this.mDelivery.postDownloadComplete(downloadRequest);
        downloadRequest.setDownloadState(16);
        downloadRequest.finish();
    }

    private void updateDownloadFailed(DownloadRequest downloadRequest, int i, String str) {
        this.shouldAllowRedirects = false;
        downloadRequest.setDownloadState(32);
        if (downloadRequest.getDeleteDestinationFileOnFailure()) {
            cleanupDestination(downloadRequest);
        }
        this.mDelivery.postDownloadFailed(downloadRequest, i, str);
        downloadRequest.finish();
    }

    private void updateDownloadProgress(DownloadRequest downloadRequest, int i, long j) {
        this.mDelivery.postProgressUpdate(downloadRequest, this.mContentLength, j, i);
    }
}

package com.conceptglobal.pmc.promotions.utils;

import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import com.conceptglobal.pmc.PMCApplication;
import com.conceptglobal.pmc.promotions.database.CategoryDAO;
import com.conceptglobal.pmc.promotions.downloadmanager.DefaultRetryPolicy;
import com.conceptglobal.pmc.promotions.downloadmanager.DownloadManager;
import com.conceptglobal.pmc.promotions.downloadmanager.DownloadRequest;
import com.conceptglobal.pmc.promotions.downloadmanager.DownloadStatusListenerV1;
import com.conceptglobal.pmc.promotions.models.ContentMaster;
import java.io.File;

/* loaded from: classes.dex */
public class FileUtils {
    private static final String TAG = "FileUtils";

    public static void createApplicationFolder() {
        new File(com.conceptglobal.pmc.utils.FileUtils.getDataDir(PMCApplication.getContext()).getAbsolutePath(), File.separator + Config.VIDEO_COMPRESSOR_APPLICATION_DIR_NAME).mkdirs();
        new File(com.conceptglobal.pmc.utils.FileUtils.getDataDir(PMCApplication.getContext()).getAbsolutePath(), File.separator + ".VideoCompressor/Compressed Videos/").mkdirs();
        new File(com.conceptglobal.pmc.utils.FileUtils.getDataDir(PMCApplication.getContext()).getAbsolutePath(), File.separator + ".VideoCompressor/Temp/").mkdirs();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0095 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:52:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x008b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r8v0, types: [android.net.Uri] */
    /* JADX WARN: Type inference failed for: r8v15 */
    /* JADX WARN: Type inference failed for: r8v16 */
    /* JADX WARN: Type inference failed for: r8v17 */
    /* JADX WARN: Type inference failed for: r8v18 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v7, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r8v8 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:66:0x005b -> B:18:0x0087). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.io.File saveTempFile(java.lang.String r6, android.content.Context r7, android.net.Uri r8) {
        /*
            java.lang.String r0 = ""
            java.lang.String r1 = "FileUtils"
            java.lang.String r2 = ".VideoCompressor/Temp/"
            android.content.ContentResolver r7 = r7.getContentResolver()
            r3 = 0
            java.io.InputStream r7 = r7.openInputStream(r8)     // Catch: java.lang.Throwable -> L6f java.io.IOException -> L72
            java.io.File r8 = new java.io.File     // Catch: java.lang.Throwable -> L66 java.io.IOException -> L6a
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L66 java.io.IOException -> L6a
            r4.<init>()     // Catch: java.lang.Throwable -> L66 java.io.IOException -> L6a
            android.content.Context r5 = com.conceptglobal.pmc.PMCApplication.getContext()     // Catch: java.lang.Throwable -> L66 java.io.IOException -> L6a
            java.io.File r5 = com.conceptglobal.pmc.utils.FileUtils.getDataDir(r5)     // Catch: java.lang.Throwable -> L66 java.io.IOException -> L6a
            java.lang.String r5 = r5.getAbsolutePath()     // Catch: java.lang.Throwable -> L66 java.io.IOException -> L6a
            r4.append(r5)     // Catch: java.lang.Throwable -> L66 java.io.IOException -> L6a
            java.lang.String r5 = java.io.File.separator     // Catch: java.lang.Throwable -> L66 java.io.IOException -> L6a
            r4.append(r5)     // Catch: java.lang.Throwable -> L66 java.io.IOException -> L6a
            r4.append(r2)     // Catch: java.lang.Throwable -> L66 java.io.IOException -> L6a
            java.lang.String r2 = r4.toString()     // Catch: java.lang.Throwable -> L66 java.io.IOException -> L6a
            r8.<init>(r2, r6)     // Catch: java.lang.Throwable -> L66 java.io.IOException -> L6a
            java.io.FileOutputStream r6 = new java.io.FileOutputStream     // Catch: java.io.IOException -> L63 java.lang.Throwable -> L66
            r2 = 0
            r6.<init>(r8, r2)     // Catch: java.io.IOException -> L63 java.lang.Throwable -> L66
            r3 = 1024(0x400, float:1.435E-42)
            byte[] r3 = new byte[r3]     // Catch: java.lang.Throwable -> L5f java.io.IOException -> L61
        L3e:
            int r4 = r7.read(r3)     // Catch: java.lang.Throwable -> L5f java.io.IOException -> L61
            r5 = -1
            if (r4 == r5) goto L49
            r6.write(r3, r2, r4)     // Catch: java.lang.Throwable -> L5f java.io.IOException -> L61
            goto L3e
        L49:
            r6.flush()     // Catch: java.lang.Throwable -> L5f java.io.IOException -> L61
            if (r7 == 0) goto L56
            r7.close()     // Catch: java.io.IOException -> L52
            goto L56
        L52:
            r7 = move-exception
            android.util.Log.e(r1, r0, r7)
        L56:
            r6.close()     // Catch: java.io.IOException -> L5a
            goto L87
        L5a:
            r6 = move-exception
            android.util.Log.e(r1, r0, r6)
            goto L87
        L5f:
            r8 = move-exception
            goto L68
        L61:
            r2 = move-exception
            goto L6d
        L63:
            r2 = move-exception
            r6 = r3
            goto L6d
        L66:
            r8 = move-exception
            r6 = r3
        L68:
            r3 = r7
            goto L89
        L6a:
            r2 = move-exception
            r6 = r3
            r8 = r6
        L6d:
            r3 = r7
            goto L75
        L6f:
            r8 = move-exception
            r6 = r3
            goto L89
        L72:
            r2 = move-exception
            r6 = r3
            r8 = r6
        L75:
            android.util.Log.e(r1, r0, r2)     // Catch: java.lang.Throwable -> L88
            if (r3 == 0) goto L82
            r3.close()     // Catch: java.io.IOException -> L7e
            goto L82
        L7e:
            r7 = move-exception
            android.util.Log.e(r1, r0, r7)
        L82:
            if (r6 == 0) goto L87
            r6.close()     // Catch: java.io.IOException -> L5a
        L87:
            return r8
        L88:
            r8 = move-exception
        L89:
            if (r3 == 0) goto L93
            r3.close()     // Catch: java.io.IOException -> L8f
            goto L93
        L8f:
            r7 = move-exception
            android.util.Log.e(r1, r0, r7)
        L93:
            if (r6 == 0) goto L9d
            r6.close()     // Catch: java.io.IOException -> L99
            goto L9d
        L99:
            r6 = move-exception
            android.util.Log.e(r1, r0, r6)
        L9d:
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.conceptglobal.pmc.promotions.utils.FileUtils.saveTempFile(java.lang.String, android.content.Context, android.net.Uri):java.io.File");
    }

    public static void downloadThumnail(final Context context, final ContentMaster contentMaster, DownloadManager downloadManager) {
        if (UtilDeclarations.isOnline(context)) {
            Uri parse = Uri.parse(contentMaster.getThumbNail());
            String str = contentMaster.getThumbNail().split("/")[r1.length - 1];
            downloadManager.add(new DownloadRequest(parse).setRetryPolicy(new DefaultRetryPolicy()).setDestinationURI(Uri.parse(UtilDeclarations.getFilesDirectoryPath(context) + UtilDeclarations.thumbnailDir + str)).setPriority(DownloadRequest.Priority.HIGH).setStatusListener(new DownloadStatusListenerV1() { // from class: com.conceptglobal.pmc.promotions.utils.FileUtils.1
                @Override // com.conceptglobal.pmc.promotions.downloadmanager.DownloadStatusListenerV1
                public void onDownloadFailed(DownloadRequest downloadRequest, int i, String str2) {
                }

                @Override // com.conceptglobal.pmc.promotions.downloadmanager.DownloadStatusListenerV1
                public void onProgress(DownloadRequest downloadRequest, long j, long j2, int i) {
                }

                @Override // com.conceptglobal.pmc.promotions.downloadmanager.DownloadStatusListenerV1
                public void onDownloadComplete(DownloadRequest downloadRequest) {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("LocalThumbnail", downloadRequest.getDestinationURI().toString());
                    new CategoryDAO(context).updateContentMaster(contentMaster.getContentId(), contentValues);
                    contentMaster.setContentDeviceLocation(downloadRequest.getDestinationURI().toString());
                }
            }));
        }
    }
}

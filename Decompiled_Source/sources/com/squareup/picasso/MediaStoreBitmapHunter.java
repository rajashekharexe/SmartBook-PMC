package com.squareup.picasso;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.provider.MediaStore;
import java.io.IOException;

/* loaded from: classes2.dex */
class MediaStoreBitmapHunter extends ContentStreamBitmapHunter {
    private static final String[] CONTENT_ORIENTATION = {"orientation"};

    MediaStoreBitmapHunter(Context context, Picasso picasso, Dispatcher dispatcher, Cache cache, Stats stats, Action action) {
        super(context, picasso, dispatcher, cache, stats, action);
    }

    @Override // com.squareup.picasso.ContentStreamBitmapHunter, com.squareup.picasso.BitmapHunter
    Bitmap decode(Request request) throws IOException {
        ContentResolver contentResolver = this.context.getContentResolver();
        setExifRotation(getExitOrientation(contentResolver, request.uri));
        if (request.hasSize()) {
            PicassoKind picassoKind = getPicassoKind(request.targetWidth, request.targetHeight);
            if (picassoKind == PicassoKind.FULL) {
                return super.decode(request);
            }
            long parseId = ContentUris.parseId(request.uri);
            BitmapFactory.Options createBitmapOptions = createBitmapOptions(request);
            createBitmapOptions.inJustDecodeBounds = true;
            calculateInSampleSize(request.targetWidth, request.targetHeight, picassoKind.width, picassoKind.height, createBitmapOptions);
            Bitmap thumbnail = MediaStore.Images.Thumbnails.getThumbnail(contentResolver, parseId, picassoKind.androidKind, createBitmapOptions);
            if (thumbnail != null) {
                return thumbnail;
            }
        }
        return super.decode(request);
    }

    static PicassoKind getPicassoKind(int i, int i2) {
        if (i <= PicassoKind.MICRO.width && i2 <= PicassoKind.MICRO.height) {
            return PicassoKind.MICRO;
        }
        if (i <= PicassoKind.MINI.width && i2 <= PicassoKind.MINI.height) {
            return PicassoKind.MINI;
        }
        return PicassoKind.FULL;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0022, code lost:
    
        r1.close();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static int getExitOrientation(android.content.ContentResolver r8, android.net.Uri r9) {
        /*
            r0 = 0
            r1 = 0
            java.lang.String[] r4 = com.squareup.picasso.MediaStoreBitmapHunter.CONTENT_ORIENTATION     // Catch: java.lang.Throwable -> L26 java.lang.RuntimeException -> L2d
            r6 = 0
            r7 = 0
            r5 = 0
            r2 = r8
            r3 = r9
            android.database.Cursor r1 = r2.query(r3, r4, r5, r6, r7)     // Catch: java.lang.Throwable -> L26 java.lang.RuntimeException -> L2d
            if (r1 == 0) goto L20
            boolean r8 = r1.moveToFirst()     // Catch: java.lang.Throwable -> L26 java.lang.RuntimeException -> L2d
            if (r8 != 0) goto L16
            goto L20
        L16:
            int r8 = r1.getInt(r0)     // Catch: java.lang.Throwable -> L26 java.lang.RuntimeException -> L2d
            if (r1 == 0) goto L1f
            r1.close()
        L1f:
            return r8
        L20:
            if (r1 == 0) goto L25
            r1.close()
        L25:
            return r0
        L26:
            r8 = move-exception
            if (r1 == 0) goto L2c
            r1.close()
        L2c:
            throw r8
        L2d:
            if (r1 == 0) goto L33
            r1.close()
        L33:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.picasso.MediaStoreBitmapHunter.getExitOrientation(android.content.ContentResolver, android.net.Uri):int");
    }

    enum PicassoKind {
        MICRO(3, 96, 96),
        MINI(1, 512, 384),
        FULL(2, -1, -1);

        final int androidKind;
        final int height;
        final int width;

        PicassoKind(int i, int i2, int i3) {
            this.androidKind = i;
            this.width = i2;
            this.height = i3;
        }
    }
}

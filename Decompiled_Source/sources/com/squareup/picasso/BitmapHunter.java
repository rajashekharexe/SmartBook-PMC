package com.squareup.picasso;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.NetworkInfo;
import android.net.Uri;
import android.provider.ContactsContract;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.squareup.picasso.Downloader;
import com.squareup.picasso.Picasso;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Future;

/* loaded from: classes2.dex */
abstract class BitmapHunter implements Runnable {
    private static final Object DECODE_LOCK = new Object();
    final List<Action> actions = new ArrayList(4);
    final Cache cache;
    final Request data;
    final Dispatcher dispatcher;
    Exception exception;
    int exifRotation;
    Future<?> future;
    final String key;
    Picasso.LoadedFrom loadedFrom;
    final Picasso picasso;
    Bitmap result;
    final boolean skipMemoryCache;
    final Stats stats;

    abstract Bitmap decode(Request request) throws IOException;

    boolean shouldRetry(boolean z, NetworkInfo networkInfo) {
        return false;
    }

    BitmapHunter(Picasso picasso, Dispatcher dispatcher, Cache cache, Stats stats, Action action) {
        this.picasso = picasso;
        this.dispatcher = dispatcher;
        this.cache = cache;
        this.stats = stats;
        this.key = action.getKey();
        this.data = action.getData();
        this.skipMemoryCache = action.skipCache;
        attach(action);
    }

    protected void setExifRotation(int i) {
        this.exifRotation = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            try {
                try {
                    try {
                        try {
                            Thread.currentThread().setName("Picasso-" + this.data.getName());
                            Bitmap hunt = hunt();
                            this.result = hunt;
                            if (hunt == null) {
                                this.dispatcher.dispatchFailed(this);
                            } else {
                                this.dispatcher.dispatchComplete(this);
                            }
                        } catch (Downloader.ResponseException e) {
                            this.exception = e;
                            this.dispatcher.dispatchFailed(this);
                        }
                    } catch (IOException e2) {
                        this.exception = e2;
                        this.dispatcher.dispatchRetry(this);
                    }
                } catch (OutOfMemoryError e3) {
                    StringWriter stringWriter = new StringWriter();
                    this.stats.createSnapshot().dump(new PrintWriter(stringWriter));
                    this.exception = new RuntimeException(stringWriter.toString(), e3);
                    this.dispatcher.dispatchFailed(this);
                }
            } catch (Exception e4) {
                this.exception = e4;
                this.dispatcher.dispatchFailed(this);
            }
        } finally {
            Thread.currentThread().setName("Picasso-Idle");
        }
    }

    Bitmap hunt() throws IOException {
        Bitmap bitmap;
        if (!this.skipMemoryCache && (bitmap = this.cache.get(this.key)) != null) {
            this.stats.dispatchCacheHit();
            this.loadedFrom = Picasso.LoadedFrom.MEMORY;
            return bitmap;
        }
        Bitmap decode = decode(this.data);
        if (decode != null) {
            this.stats.dispatchBitmapDecoded(decode);
            if (this.data.needsTransformation() || this.exifRotation != 0) {
                synchronized (DECODE_LOCK) {
                    if (this.data.needsMatrixTransform() || this.exifRotation != 0) {
                        decode = transformResult(this.data, decode, this.exifRotation);
                    }
                    if (this.data.hasCustomTransformations()) {
                        decode = applyCustomTransformations(this.data.transformations, decode);
                    }
                }
                this.stats.dispatchBitmapTransformed(decode);
            }
        }
        return decode;
    }

    void attach(Action action) {
        this.actions.add(action);
    }

    void detach(Action action) {
        this.actions.remove(action);
    }

    boolean cancel() {
        Future<?> future;
        return this.actions.isEmpty() && (future = this.future) != null && future.cancel(false);
    }

    boolean isCancelled() {
        Future<?> future = this.future;
        return future != null && future.isCancelled();
    }

    boolean shouldSkipMemoryCache() {
        return this.skipMemoryCache;
    }

    Bitmap getResult() {
        return this.result;
    }

    String getKey() {
        return this.key;
    }

    Request getData() {
        return this.data;
    }

    List<Action> getActions() {
        return this.actions;
    }

    Exception getException() {
        return this.exception;
    }

    Picasso.LoadedFrom getLoadedFrom() {
        return this.loadedFrom;
    }

    static BitmapHunter forRequest(Context context, Picasso picasso, Dispatcher dispatcher, Cache cache, Stats stats, Action action, Downloader downloader) {
        if (action.getData().resourceId != 0) {
            return new ResourceBitmapHunter(context, picasso, dispatcher, cache, stats, action);
        }
        Uri uri = action.getData().uri;
        String scheme = uri.getScheme();
        if (FirebaseAnalytics.Param.CONTENT.equals(scheme)) {
            if (ContactsContract.Contacts.CONTENT_URI.getHost().equals(uri.getHost()) && !uri.getPathSegments().contains("photo")) {
                return new ContactsPhotoBitmapHunter(context, picasso, dispatcher, cache, stats, action);
            }
            if ("media".equals(uri.getAuthority())) {
                return new MediaStoreBitmapHunter(context, picasso, dispatcher, cache, stats, action);
            }
            return new ContentStreamBitmapHunter(context, picasso, dispatcher, cache, stats, action);
        }
        if ("file".equals(scheme)) {
            if (!uri.getPathSegments().isEmpty() && "android_asset".equals(uri.getPathSegments().get(0))) {
                return new AssetBitmapHunter(context, picasso, dispatcher, cache, stats, action);
            }
            return new FileBitmapHunter(context, picasso, dispatcher, cache, stats, action);
        }
        if ("android.resource".equals(scheme)) {
            return new ResourceBitmapHunter(context, picasso, dispatcher, cache, stats, action);
        }
        return new NetworkBitmapHunter(picasso, dispatcher, cache, stats, action, downloader);
    }

    static BitmapFactory.Options createBitmapOptions(Request request) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        if (request.config != null) {
            options.inPreferredConfig = request.config;
        }
        return options;
    }

    static void calculateInSampleSize(int i, int i2, BitmapFactory.Options options) {
        calculateInSampleSize(i, i2, options.outWidth, options.outHeight, options);
    }

    static void calculateInSampleSize(int i, int i2, int i3, int i4, BitmapFactory.Options options) {
        int round;
        if (i4 > i2 || i3 > i) {
            int round2 = Math.round(i4 / i2);
            round = Math.round(i3 / i);
            if (round2 < round) {
                round = round2;
            }
        } else {
            round = 1;
        }
        options.inSampleSize = round;
        options.inJustDecodeBounds = false;
    }

    static Bitmap applyCustomTransformations(List<Transformation> list, Bitmap bitmap) {
        int size = list.size();
        int i = 0;
        while (i < size) {
            final Transformation transformation = list.get(i);
            Bitmap transform = transformation.transform(bitmap);
            if (transform == null) {
                final StringBuilder sb = new StringBuilder();
                sb.append("Transformation ");
                sb.append(transformation.key());
                sb.append(" returned null after ");
                sb.append(i);
                sb.append(" previous transformation(s).\n\nTransformation list:\n");
                Iterator<Transformation> it = list.iterator();
                while (it.hasNext()) {
                    sb.append(it.next().key());
                    sb.append('\n');
                }
                Picasso.HANDLER.post(new Runnable() { // from class: com.squareup.picasso.BitmapHunter.1
                    @Override // java.lang.Runnable
                    public void run() {
                        throw new NullPointerException(sb.toString());
                    }
                });
                return null;
            }
            if (transform == bitmap && bitmap.isRecycled()) {
                Picasso.HANDLER.post(new Runnable() { // from class: com.squareup.picasso.BitmapHunter.2
                    @Override // java.lang.Runnable
                    public void run() {
                        throw new IllegalStateException("Transformation " + Transformation.this.key() + " returned input Bitmap but recycled it.");
                    }
                });
                return null;
            }
            if (transform != bitmap && !bitmap.isRecycled()) {
                Picasso.HANDLER.post(new Runnable() { // from class: com.squareup.picasso.BitmapHunter.3
                    @Override // java.lang.Runnable
                    public void run() {
                        throw new IllegalStateException("Transformation " + Transformation.this.key() + " mutated input Bitmap but failed to recycle the original.");
                    }
                });
                return null;
            }
            i++;
            bitmap = transform;
        }
        return bitmap;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:22:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static android.graphics.Bitmap transformResult(com.squareup.picasso.Request r10, android.graphics.Bitmap r11, int r12) {
        /*
            int r0 = r11.getWidth()
            int r1 = r11.getHeight()
            android.graphics.Matrix r7 = new android.graphics.Matrix
            r7.<init>()
            boolean r2 = r10.needsMatrixTransform()
            r3 = 0
            if (r2 == 0) goto L88
            int r2 = r10.targetWidth
            int r4 = r10.targetHeight
            float r5 = r10.rotationDegrees
            r6 = 0
            int r6 = (r5 > r6 ? 1 : (r5 == r6 ? 0 : -1))
            if (r6 == 0) goto L2e
            boolean r6 = r10.hasRotationPivot
            if (r6 == 0) goto L2b
            float r6 = r10.rotationPivotX
            float r8 = r10.rotationPivotY
            r7.setRotate(r5, r6, r8)
            goto L2e
        L2b:
            r7.setRotate(r5)
        L2e:
            boolean r5 = r10.centerCrop
            if (r5 == 0) goto L63
            float r10 = (float) r2
            float r2 = (float) r0
            float r10 = r10 / r2
            float r4 = (float) r4
            float r5 = (float) r1
            float r4 = r4 / r5
            int r6 = (r10 > r4 ? 1 : (r10 == r4 ? 0 : -1))
            if (r6 <= 0) goto L4c
            float r4 = r4 / r10
            float r5 = r5 * r4
            double r4 = (double) r5
            double r4 = java.lang.Math.ceil(r4)
            int r2 = (int) r4
            int r1 = r1 - r2
            int r1 = r1 / 2
            r9 = r2
            r2 = r1
            r1 = r9
            goto L5c
        L4c:
            float r10 = r10 / r4
            float r2 = r2 * r10
            double r5 = (double) r2
            double r5 = java.lang.Math.ceil(r5)
            int r10 = (int) r5
            int r0 = r0 - r10
            int r0 = r0 / 2
            r3 = r0
            r2 = 0
            r0 = r10
            r10 = r4
        L5c:
            r7.preScale(r10, r10)
            r5 = r0
            r6 = r1
            r4 = r2
            goto L8b
        L63:
            boolean r10 = r10.centerInside
            if (r10 == 0) goto L77
            float r10 = (float) r2
            float r2 = (float) r0
            float r10 = r10 / r2
            float r2 = (float) r4
            float r4 = (float) r1
            float r2 = r2 / r4
            int r4 = (r10 > r2 ? 1 : (r10 == r2 ? 0 : -1))
            if (r4 >= 0) goto L72
            goto L73
        L72:
            r10 = r2
        L73:
            r7.preScale(r10, r10)
            goto L88
        L77:
            if (r2 == 0) goto L88
            if (r4 == 0) goto L88
            if (r2 != r0) goto L7f
            if (r4 == r1) goto L88
        L7f:
            float r10 = (float) r2
            float r2 = (float) r0
            float r10 = r10 / r2
            float r2 = (float) r4
            float r4 = (float) r1
            float r2 = r2 / r4
            r7.preScale(r10, r2)
        L88:
            r5 = r0
            r6 = r1
            r4 = 0
        L8b:
            if (r12 == 0) goto L91
            float r10 = (float) r12
            r7.preRotate(r10)
        L91:
            r8 = 1
            r2 = r11
            android.graphics.Bitmap r10 = android.graphics.Bitmap.createBitmap(r2, r3, r4, r5, r6, r7, r8)
            if (r10 == r11) goto L9d
            r11.recycle()
            r11 = r10
        L9d:
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.picasso.BitmapHunter.transformResult(com.squareup.picasso.Request, android.graphics.Bitmap, int):android.graphics.Bitmap");
    }
}

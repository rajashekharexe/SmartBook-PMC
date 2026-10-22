package com.squareup.picasso;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import com.squareup.picasso.Picasso;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;

/* loaded from: classes2.dex */
abstract class Action<T> {
    boolean cancelled;
    final Request data;
    final Drawable errorDrawable;
    final int errorResId;
    final String key;
    final boolean noFade;
    final Picasso picasso;
    final boolean skipCache;
    final WeakReference<T> target;

    abstract void complete(Bitmap bitmap, Picasso.LoadedFrom loadedFrom);

    abstract void error();

    static class RequestWeakReference<T> extends WeakReference<T> {
        final Action action;

        public RequestWeakReference(Action action, T t, ReferenceQueue<? super T> referenceQueue) {
            super(t, referenceQueue);
            this.action = action;
        }
    }

    Action(Picasso picasso, T t, Request request, boolean z, boolean z2, int i, Drawable drawable, String str) {
        this.picasso = picasso;
        this.data = request;
        this.target = new RequestWeakReference(this, t, picasso.referenceQueue);
        this.skipCache = z;
        this.noFade = z2;
        this.errorResId = i;
        this.errorDrawable = drawable;
        this.key = str;
    }

    void cancel() {
        this.cancelled = true;
    }

    Request getData() {
        return this.data;
    }

    T getTarget() {
        return this.target.get();
    }

    String getKey() {
        return this.key;
    }

    boolean isCancelled() {
        return this.cancelled;
    }

    Picasso getPicasso() {
        return this.picasso;
    }
}

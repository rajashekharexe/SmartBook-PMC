package com.squareup.picasso;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.widget.ImageView;
import com.squareup.picasso.Picasso;
import com.squareup.picasso.Request;
import java.io.IOException;

/* loaded from: classes2.dex */
public class RequestCreator {
    private final Request.Builder data;
    private boolean deferred;
    private Drawable errorDrawable;
    private int errorResId;
    private boolean noFade;
    private final Picasso picasso;
    private Drawable placeholderDrawable;
    private int placeholderResId;
    private boolean skipMemoryCache;

    RequestCreator(Picasso picasso, Uri uri, int i) {
        if (picasso.shutdown) {
            throw new IllegalStateException("Picasso instance already shut down. Cannot submit new requests.");
        }
        this.picasso = picasso;
        this.data = new Request.Builder(uri, i);
    }

    RequestCreator() {
        this.picasso = null;
        this.data = new Request.Builder((Uri) null, 0);
    }

    public RequestCreator placeholder(int i) {
        if (i == 0) {
            throw new IllegalArgumentException("Placeholder image resource invalid.");
        }
        if (this.placeholderDrawable != null) {
            throw new IllegalStateException("Placeholder image already set.");
        }
        this.placeholderResId = i;
        return this;
    }

    public RequestCreator placeholder(Drawable drawable) {
        if (this.placeholderResId != 0) {
            throw new IllegalStateException("Placeholder image already set.");
        }
        this.placeholderDrawable = drawable;
        return this;
    }

    public RequestCreator error(int i) {
        if (i == 0) {
            throw new IllegalArgumentException("Error image resource invalid.");
        }
        if (this.errorDrawable != null) {
            throw new IllegalStateException("Error image already set.");
        }
        this.errorResId = i;
        return this;
    }

    public RequestCreator error(Drawable drawable) {
        if (drawable == null) {
            throw new IllegalArgumentException("Error image may not be null.");
        }
        if (this.errorResId != 0) {
            throw new IllegalStateException("Error image already set.");
        }
        this.errorDrawable = drawable;
        return this;
    }

    public RequestCreator fit() {
        this.deferred = true;
        return this;
    }

    RequestCreator unfit() {
        this.deferred = false;
        return this;
    }

    public RequestCreator resizeDimen(int i, int i2) {
        Resources resources = this.picasso.context.getResources();
        return resize(resources.getDimensionPixelSize(i), resources.getDimensionPixelSize(i2));
    }

    public RequestCreator resize(int i, int i2) {
        this.data.resize(i, i2);
        return this;
    }

    public RequestCreator centerCrop() {
        this.data.centerCrop();
        return this;
    }

    public RequestCreator centerInside() {
        this.data.centerInside();
        return this;
    }

    public RequestCreator rotate(float f) {
        this.data.rotate(f);
        return this;
    }

    public RequestCreator rotate(float f, float f2, float f3) {
        this.data.rotate(f, f2, f3);
        return this;
    }

    public RequestCreator config(Bitmap.Config config) {
        this.data.config(config);
        return this;
    }

    public RequestCreator transform(Transformation transformation) {
        this.data.transform(transformation);
        return this;
    }

    public RequestCreator skipMemoryCache() {
        this.skipMemoryCache = true;
        return this;
    }

    public RequestCreator noFade() {
        this.noFade = true;
        return this;
    }

    public Bitmap get() throws IOException {
        Utils.checkNotMain();
        if (this.deferred) {
            throw new IllegalStateException("Fit cannot be used with get.");
        }
        if (!this.data.hasImage()) {
            return null;
        }
        Request transformRequest = this.picasso.transformRequest(this.data.build());
        GetAction getAction = new GetAction(this.picasso, transformRequest, this.skipMemoryCache, Utils.createKey(transformRequest, new StringBuilder()));
        Context context = this.picasso.context;
        Picasso picasso = this.picasso;
        return BitmapHunter.forRequest(context, picasso, picasso.dispatcher, this.picasso.cache, this.picasso.stats, getAction, this.picasso.dispatcher.downloader).hunt();
    }

    public void fetch() {
        if (this.deferred) {
            throw new IllegalStateException("Fit cannot be used with fetch.");
        }
        if (this.data.hasImage()) {
            Request transformRequest = this.picasso.transformRequest(this.data.build());
            this.picasso.enqueueAndSubmit(new FetchAction(this.picasso, transformRequest, this.skipMemoryCache, Utils.createKey(transformRequest)));
        }
    }

    public void into(Target target) {
        Bitmap quickMemoryCacheCheck;
        if (target == null) {
            throw new IllegalArgumentException("Target must not be null.");
        }
        if (this.deferred) {
            throw new IllegalStateException("Fit cannot be used with a Target.");
        }
        Drawable drawable = this.placeholderResId != 0 ? this.picasso.context.getResources().getDrawable(this.placeholderResId) : this.placeholderDrawable;
        if (!this.data.hasImage()) {
            this.picasso.cancelRequest(target);
            target.onPrepareLoad(drawable);
            return;
        }
        Request transformRequest = this.picasso.transformRequest(this.data.build());
        String createKey = Utils.createKey(transformRequest);
        if (!this.skipMemoryCache && (quickMemoryCacheCheck = this.picasso.quickMemoryCacheCheck(createKey)) != null) {
            this.picasso.cancelRequest(target);
            target.onBitmapLoaded(quickMemoryCacheCheck, Picasso.LoadedFrom.MEMORY);
        } else {
            target.onPrepareLoad(drawable);
            this.picasso.enqueueAndSubmit(new TargetAction(this.picasso, target, transformRequest, this.skipMemoryCache, createKey));
        }
    }

    public void into(ImageView imageView) {
        into(imageView, null);
    }

    public void into(ImageView imageView, Callback callback) {
        Bitmap quickMemoryCacheCheck;
        if (imageView == null) {
            throw new IllegalArgumentException("Target must not be null.");
        }
        if (!this.data.hasImage()) {
            this.picasso.cancelRequest(imageView);
            PicassoDrawable.setPlaceholder(imageView, this.placeholderResId, this.placeholderDrawable);
            return;
        }
        if (this.deferred) {
            if (this.data.hasSize()) {
                throw new IllegalStateException("Fit cannot be used with resize.");
            }
            int measuredWidth = imageView.getMeasuredWidth();
            int measuredHeight = imageView.getMeasuredHeight();
            if (measuredWidth == 0 || measuredHeight == 0) {
                PicassoDrawable.setPlaceholder(imageView, this.placeholderResId, this.placeholderDrawable);
                this.picasso.defer(imageView, new DeferredRequestCreator(this, imageView, callback));
                return;
            }
            this.data.resize(measuredWidth, measuredHeight);
        }
        Request transformRequest = this.picasso.transformRequest(this.data.build());
        String createKey = Utils.createKey(transformRequest);
        if (!this.skipMemoryCache && (quickMemoryCacheCheck = this.picasso.quickMemoryCacheCheck(createKey)) != null) {
            this.picasso.cancelRequest(imageView);
            PicassoDrawable.setBitmap(imageView, this.picasso.context, quickMemoryCacheCheck, Picasso.LoadedFrom.MEMORY, this.noFade, this.picasso.debugging);
            if (callback != null) {
                callback.onSuccess();
                return;
            }
            return;
        }
        PicassoDrawable.setPlaceholder(imageView, this.placeholderResId, this.placeholderDrawable);
        this.picasso.enqueueAndSubmit(new ImageViewAction(this.picasso, imageView, transformRequest, this.skipMemoryCache, this.noFade, this.errorResId, this.errorDrawable, createKey, callback));
    }
}

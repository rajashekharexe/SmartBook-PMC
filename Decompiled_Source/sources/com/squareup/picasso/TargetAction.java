package com.squareup.picasso;

import android.graphics.Bitmap;
import com.squareup.picasso.Picasso;

/* loaded from: classes2.dex */
final class TargetAction extends Action<Target> {
    TargetAction(Picasso picasso, Target target, Request request, boolean z, String str) {
        super(picasso, target, request, z, false, 0, null, str);
    }

    @Override // com.squareup.picasso.Action
    void complete(Bitmap bitmap, Picasso.LoadedFrom loadedFrom) {
        if (bitmap == null) {
            throw new AssertionError(String.format("Attempted to complete action with no result!\n%s", this));
        }
        Target target = getTarget();
        if (target != null) {
            target.onBitmapLoaded(bitmap, loadedFrom);
            if (bitmap.isRecycled()) {
                throw new IllegalStateException("Target callback must not recycle bitmap!");
            }
        }
    }

    @Override // com.squareup.picasso.Action
    void error() {
        Target target = getTarget();
        if (target != null) {
            target.onBitmapFailed(this.errorDrawable);
        }
    }
}

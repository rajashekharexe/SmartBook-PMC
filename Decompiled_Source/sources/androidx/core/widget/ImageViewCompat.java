package androidx.core.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.widget.ImageView;

/* loaded from: classes.dex */
public class ImageViewCompat {
    public static ColorStateList getImageTintList(ImageView view) {
        return view.getImageTintList();
    }

    public static void setImageTintList(ImageView view, ColorStateList tintList) {
        Drawable drawable;
        view.setImageTintList(tintList);
        if (Build.VERSION.SDK_INT != 21 || (drawable = view.getDrawable()) == null || view.getImageTintList() == null) {
            return;
        }
        if (drawable.isStateful()) {
            drawable.setState(view.getDrawableState());
        }
        view.setImageDrawable(drawable);
    }

    public static PorterDuff.Mode getImageTintMode(ImageView view) {
        return view.getImageTintMode();
    }

    public static void setImageTintMode(ImageView view, PorterDuff.Mode mode) {
        Drawable drawable;
        view.setImageTintMode(mode);
        if (Build.VERSION.SDK_INT != 21 || (drawable = view.getDrawable()) == null || view.getImageTintList() == null) {
            return;
        }
        if (drawable.isStateful()) {
            drawable.setState(view.getDrawableState());
        }
        view.setImageDrawable(drawable);
    }

    private ImageViewCompat() {
    }
}

package com.github.amlcurran.showcaseview;

import android.widget.RelativeLayout;

/* loaded from: classes.dex */
public interface ShowcaseViewApi {
    void hide();

    boolean isShowing();

    void setBlocksTouches(boolean z);

    void setButtonPosition(RelativeLayout.LayoutParams layoutParams);

    void setContentText(CharSequence charSequence);

    void setContentTitle(CharSequence charSequence);

    void setHideOnTouchOutside(boolean z);

    void setStyle(int i);

    void show();
}

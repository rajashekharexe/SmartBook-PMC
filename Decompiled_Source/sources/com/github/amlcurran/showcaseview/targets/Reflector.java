package com.github.amlcurran.showcaseview.targets;

import android.view.View;
import android.view.ViewParent;

/* loaded from: classes.dex */
interface Reflector {

    public enum ActionBarType {
        STANDARD,
        APP_COMPAT,
        ACTIONBAR_SHERLOCK
    }

    ViewParent getActionBarView();

    View getHomeButton();

    void showcaseActionItem(int i);
}

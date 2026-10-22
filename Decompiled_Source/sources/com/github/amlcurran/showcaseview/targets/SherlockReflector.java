package com.github.amlcurran.showcaseview.targets;

import android.R;
import android.app.Activity;
import android.view.View;
import android.view.ViewParent;

/* loaded from: classes.dex */
class SherlockReflector implements Reflector {
    private Activity mActivity;

    @Override // com.github.amlcurran.showcaseview.targets.Reflector
    public void showcaseActionItem(int i) {
    }

    public SherlockReflector(Activity activity) {
        this.mActivity = activity;
    }

    @Override // com.github.amlcurran.showcaseview.targets.Reflector
    public ViewParent getActionBarView() {
        return getHomeButton().getParent().getParent();
    }

    @Override // com.github.amlcurran.showcaseview.targets.Reflector
    public View getHomeButton() {
        View findViewById = this.mActivity.findViewById(R.id.home);
        if (findViewById != null) {
            return findViewById;
        }
        View findViewById2 = this.mActivity.findViewById(this.mActivity.getResources().getIdentifier("abs__home", "id", this.mActivity.getPackageName()));
        if (findViewById2 != null) {
            return findViewById2;
        }
        throw new RuntimeException("insertShowcaseViewWithType cannot be used when the theme has no ActionBar");
    }
}

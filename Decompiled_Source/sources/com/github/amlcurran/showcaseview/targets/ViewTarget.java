package com.github.amlcurran.showcaseview.targets;

import android.app.Activity;
import android.graphics.Point;
import android.view.View;

/* loaded from: classes.dex */
public class ViewTarget implements Target {
    private final View mView;

    public ViewTarget(View view) {
        this.mView = view;
    }

    public ViewTarget(int i, Activity activity) {
        this.mView = activity.findViewById(i);
    }

    @Override // com.github.amlcurran.showcaseview.targets.Target
    public Point getPoint() {
        int[] iArr = new int[2];
        this.mView.getLocationInWindow(iArr);
        return new Point(iArr[0] + (this.mView.getWidth() / 2), iArr[1] + (this.mView.getHeight() / 2));
    }
}

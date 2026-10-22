package com.github.amlcurran.showcaseview.targets;

import android.graphics.Point;

/* loaded from: classes.dex */
public class PointTarget implements Target {
    private final Point mPoint;

    public PointTarget(Point point) {
        this.mPoint = point;
    }

    public PointTarget(int i, int i2) {
        this.mPoint = new Point(i, i2);
    }

    @Override // com.github.amlcurran.showcaseview.targets.Target
    public Point getPoint() {
        return this.mPoint;
    }
}

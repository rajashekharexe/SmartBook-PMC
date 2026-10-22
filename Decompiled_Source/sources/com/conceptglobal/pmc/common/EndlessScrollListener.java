package com.conceptglobal.pmc.common;

import android.widget.AbsListView;

/* loaded from: classes.dex */
public abstract class EndlessScrollListener implements AbsListView.OnScrollListener {
    private int currentPage;
    private boolean loading;
    private int previousTotalItemCount;
    private int startingPageIndex;
    private int visibleThreshold;

    public abstract boolean onLoadMore(int i, int i2);

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i) {
    }

    public EndlessScrollListener() {
        this.visibleThreshold = 5;
        this.currentPage = 0;
        this.previousTotalItemCount = 0;
        this.loading = true;
        this.startingPageIndex = 0;
    }

    public EndlessScrollListener(int i) {
        this.currentPage = 0;
        this.previousTotalItemCount = 0;
        this.loading = true;
        this.startingPageIndex = 0;
        this.visibleThreshold = i;
    }

    public EndlessScrollListener(int i, int i2) {
        this.previousTotalItemCount = 0;
        this.loading = true;
        this.visibleThreshold = i;
        this.startingPageIndex = i2;
        this.currentPage = i2;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        if (i3 < this.previousTotalItemCount) {
            this.currentPage = this.startingPageIndex;
            this.previousTotalItemCount = i3;
            if (i3 == 0) {
                this.loading = true;
            }
        }
        if (this.loading && i3 > this.previousTotalItemCount) {
            this.loading = false;
            this.previousTotalItemCount = i3;
            this.currentPage++;
        }
        if (this.loading || i + i2 + this.visibleThreshold < i3) {
            return;
        }
        this.loading = onLoadMore(this.currentPage + 1, i3);
    }
}

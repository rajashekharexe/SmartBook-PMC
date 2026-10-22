package com.conceptglobal.pmc.common;

import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;

/* loaded from: classes.dex */
public abstract class EndlessRecyclerViewScrollListener extends RecyclerView.OnScrollListener {
    private int currentPage;
    private boolean loading;
    RecyclerView.LayoutManager mLayoutManager;
    private int previousTotalItemCount;
    private int startingPageIndex;
    private int visibleThreshold;

    public abstract void onLoadMore(int i, int i2, RecyclerView recyclerView);

    public EndlessRecyclerViewScrollListener(LinearLayoutManager linearLayoutManager) {
        this.visibleThreshold = 5;
        this.currentPage = 0;
        this.previousTotalItemCount = 0;
        this.loading = true;
        this.startingPageIndex = 0;
        this.mLayoutManager = linearLayoutManager;
    }

    public EndlessRecyclerViewScrollListener(GridLayoutManager gridLayoutManager) {
        this.visibleThreshold = 5;
        this.currentPage = 0;
        this.previousTotalItemCount = 0;
        this.loading = true;
        this.startingPageIndex = 0;
        this.mLayoutManager = gridLayoutManager;
        this.visibleThreshold = 5 * gridLayoutManager.getSpanCount();
    }

    public EndlessRecyclerViewScrollListener(StaggeredGridLayoutManager staggeredGridLayoutManager) {
        this.visibleThreshold = 5;
        this.currentPage = 0;
        this.previousTotalItemCount = 0;
        this.loading = true;
        this.startingPageIndex = 0;
        this.mLayoutManager = staggeredGridLayoutManager;
        this.visibleThreshold = 5 * staggeredGridLayoutManager.getSpanCount();
    }

    public int getLastVisibleItem(int[] iArr) {
        int i = 0;
        for (int i2 = 0; i2 < iArr.length; i2++) {
            if (i2 == 0) {
                i = iArr[i2];
            } else {
                int i3 = iArr[i2];
                if (i3 > i) {
                    i = i3;
                }
            }
        }
        return i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
    public void onScrolled(RecyclerView recyclerView, int i, int i2) {
        int findLastVisibleItemPosition;
        int itemCount = this.mLayoutManager.getItemCount();
        RecyclerView.LayoutManager layoutManager = this.mLayoutManager;
        if (layoutManager instanceof StaggeredGridLayoutManager) {
            findLastVisibleItemPosition = getLastVisibleItem(((StaggeredGridLayoutManager) layoutManager).findLastVisibleItemPositions(null));
        } else if (layoutManager instanceof GridLayoutManager) {
            findLastVisibleItemPosition = ((GridLayoutManager) layoutManager).findLastVisibleItemPosition();
        } else {
            findLastVisibleItemPosition = layoutManager instanceof LinearLayoutManager ? ((LinearLayoutManager) layoutManager).findLastVisibleItemPosition() : 0;
        }
        if (itemCount < this.previousTotalItemCount) {
            this.currentPage = this.startingPageIndex;
            this.previousTotalItemCount = itemCount;
            if (itemCount == 0) {
                this.loading = true;
            }
        }
        if (this.loading && itemCount > this.previousTotalItemCount) {
            this.loading = false;
            this.previousTotalItemCount = itemCount;
        }
        if (this.loading || findLastVisibleItemPosition + this.visibleThreshold <= itemCount) {
            return;
        }
        int i3 = this.currentPage + 1;
        this.currentPage = i3;
        onLoadMore(i3, itemCount, recyclerView);
        this.loading = true;
    }

    public void resetState() {
        this.currentPage = this.startingPageIndex;
        this.previousTotalItemCount = 0;
        this.loading = true;
    }
}

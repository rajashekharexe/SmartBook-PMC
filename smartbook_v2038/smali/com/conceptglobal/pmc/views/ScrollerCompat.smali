.class Lcom/conceptglobal/pmc/views/ScrollerCompat;
.super Ljava/lang/Object;
.source "ScrollerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/views/ScrollerCompat$ScrollerCompatImplIcs;
    }
.end annotation


# instance fields
.field mScroller:Landroid/widget/Scroller;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/views/ScrollerCompat;->mScroller:Landroid/widget/Scroller;

    return-void
.end method

.method public static from(Landroid/content/Context;)Lcom/conceptglobal/pmc/views/ScrollerCompat;
    .locals 1

    .line 45
    new-instance v0, Lcom/conceptglobal/pmc/views/ScrollerCompat$ScrollerCompatImplIcs;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/views/ScrollerCompat$ScrollerCompatImplIcs;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public abortAnimation()V
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/ScrollerCompat;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    return-void
.end method

.method public computeScrollOffset()Z
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/ScrollerCompat;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    return v0
.end method

.method public fling(IIIIIIII)V
    .locals 10

    move-object v0, p0

    .line 170
    iget-object v1, v0, Lcom/conceptglobal/pmc/views/ScrollerCompat;->mScroller:Landroid/widget/Scroller;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    return-void
.end method

.method public getCurrVelocity()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCurrX()I
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/ScrollerCompat;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    return v0
.end method

.method public getCurrY()I
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/ScrollerCompat;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/ScrollerCompat;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getDuration()I

    move-result v0

    return v0
.end method

.method public isFinished()Z
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/ScrollerCompat;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    return v0
.end method

.method public startScroll(IIII)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/ScrollerCompat;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/Scroller;->startScroll(IIII)V

    return-void
.end method

.method public startScroll(IIIII)V
    .locals 6

    .line 146
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/ScrollerCompat;->mScroller:Landroid/widget/Scroller;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    return-void
.end method

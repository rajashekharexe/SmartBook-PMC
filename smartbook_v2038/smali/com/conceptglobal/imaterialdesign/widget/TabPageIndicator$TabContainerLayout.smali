.class Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator$TabContainerLayout;
.super Landroid/widget/FrameLayout;
.source "TabPageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabContainerLayout"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;


# direct methods
.method public constructor <init>(Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;Landroid/content/Context;)V
    .locals 0

    .line 555
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator$TabContainerLayout;->this$0:Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;

    .line 556
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 2

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 632
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator$TabContainerLayout;->this$0:Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;

    invoke-static {p1}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->access$700(Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 633
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator$TabContainerLayout;->getChildCount()I

    move-result p1

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p1, :cond_1

    .line 634
    invoke-virtual {p0, p3}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator$TabContainerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 635
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int v1, p4, v1

    invoke-virtual {v0, v1, p2, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 636
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p4, v0

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 639
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator$TabContainerLayout;->getChildCount()I

    move-result p1

    const/4 p3, 0x0

    const/4 p4, 0x0

    :goto_1
    if-ge p3, p1, :cond_1

    .line 640
    invoke-virtual {p0, p3}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator$TabContainerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 641
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, p4

    invoke-virtual {v0, p4, p2, v1, p5}, Landroid/view/View;->layout(IIII)V

    .line 642
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr p4, v0

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9

    .line 561
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 562
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 567
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator$TabContainerLayout;->this$0:Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;

    invoke-static {v1}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;->access$600(Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator;)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 568
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 569
    :goto_0
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator$TabContainerLayout;->getChildCount()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 570
    invoke-virtual {p0, v0}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator$TabContainerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 571
    invoke-virtual {v5, p1, p2}, Landroid/view/View;->measure(II)V

    .line 572
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v1, v6

    .line 573
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 575
    :cond_0
    invoke-virtual {p0, v1, v4}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator$TabContainerLayout;->setMeasuredDimension(II)V

    goto/16 :goto_9

    :cond_1
    if-eq v0, v2, :cond_8

    .line 579
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 580
    :goto_1
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator$TabContainerLayout;->getChildCount()I

    move-result v7

    if-ge v5, v7, :cond_2

    .line 581
    invoke-virtual {p0, v5}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator$TabContainerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 582
    invoke-virtual {v7, v1, p2}, Landroid/view/View;->measure(II)V

    .line 583
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v6, v8

    .line 584
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_7

    if-ge v6, p1, :cond_3

    goto :goto_5

    .line 590
    :cond_3
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator$TabContainerLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_4

    const/4 v1, 0x0

    goto :goto_2

    .line 591
    :cond_4
    div-int v1, p1, v0

    :goto_2
    const/4 v5, 0x0

    :goto_3
    if-ge v5, v0, :cond_6

    .line 593
    invoke-virtual {p0, v5}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator$TabContainerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    add-int/lit8 v7, v0, -0x1

    if-eq v5, v7, :cond_5

    .line 595
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v6, v7, p2}, Landroid/view/View;->measure(II)V

    goto :goto_4

    :cond_5
    mul-int v7, v7, v1

    sub-int v7, p1, v7

    .line 597
    invoke-static {v7, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v6, v7, p2}, Landroid/view/View;->measure(II)V

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 599
    :cond_6
    invoke-virtual {p0, p1, v4}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator$TabContainerLayout;->setMeasuredDimension(II)V

    goto :goto_9

    .line 588
    :cond_7
    :goto_5
    invoke-virtual {p0, p1, v4}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator$TabContainerLayout;->setMeasuredDimension(II)V

    goto :goto_9

    .line 603
    :cond_8
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator$TabContainerLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_9

    const/4 v1, 0x0

    goto :goto_6

    .line 604
    :cond_9
    div-int v1, p1, v0

    :goto_6
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_7
    if-ge v5, v0, :cond_b

    .line 606
    invoke-virtual {p0, v5}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator$TabContainerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    add-int/lit8 v7, v0, -0x1

    if-eq v5, v7, :cond_a

    .line 608
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v6, v7, p2}, Landroid/view/View;->measure(II)V

    goto :goto_8

    :cond_a
    mul-int v7, v7, v1

    sub-int v7, p1, v7

    .line 610
    invoke-static {v7, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v6, v7, p2}, Landroid/view/View;->measure(II)V

    .line 611
    :goto_8
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 613
    :cond_b
    invoke-virtual {p0, p1, v4}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator$TabContainerLayout;->setMeasuredDimension(II)V

    .line 617
    :goto_9
    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 618
    :goto_a
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator$TabContainerLayout;->getChildCount()I

    move-result p2

    if-ge v3, p2, :cond_d

    .line 619
    invoke-virtual {p0, v3}, Lcom/conceptglobal/imaterialdesign/widget/TabPageIndicator$TabContainerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 620
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-eq v0, v4, :cond_c

    .line 621
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p2, v0, p1}, Landroid/view/View;->measure(II)V

    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_d
    return-void
.end method

.class public Lcom/conceptglobal/pmc/utils/ExpandableHeightGridView;
.super Landroid/widget/GridView;
.source "ExpandableHeightGridView.java"


# instance fields
.field expanded:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/utils/ExpandableHeightGridView;->expanded:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/utils/ExpandableHeightGridView;->expanded:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/utils/ExpandableHeightGridView;->expanded:Z

    return-void
.end method


# virtual methods
.method public isExpanded()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/utils/ExpandableHeightGridView;->expanded:Z

    return v0
.end method

.method public onMeasure(II)V
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/utils/ExpandableHeightGridView;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    const p2, 0xffffff

    const/high16 v0, -0x80000000

    .line 44
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 46
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    .line 48
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/utils/ExpandableHeightGridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 49
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/utils/ExpandableHeightGridView;->getMeasuredHeight()I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 53
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    :goto_0
    return-void
.end method

.method public setExpanded(Z)V
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/utils/ExpandableHeightGridView;->expanded:Z

    return-void
.end method

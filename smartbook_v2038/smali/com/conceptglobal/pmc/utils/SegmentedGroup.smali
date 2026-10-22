.class public Lcom/conceptglobal/pmc/utils/SegmentedGroup;
.super Landroid/widget/RadioGroup;
.source "SegmentedGroup.java"


# instance fields
.field private mCheckedTextColor:I

.field private mTintColor:I

.field private oneDP:I

.field private resources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 29
    invoke-direct {p0, p1}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 26
    iput v0, p0, Lcom/conceptglobal/pmc/utils/SegmentedGroup;->mCheckedTextColor:I

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/utils/SegmentedGroup;->resources:Landroid/content/res/Resources;

    const v0, 0x7f060109

    .line 31
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/conceptglobal/pmc/utils/SegmentedGroup;->mTintColor:I

    .line 33
    iget-object p1, p0, Lcom/conceptglobal/pmc/utils/SegmentedGroup;->resources:Landroid/content/res/Resources;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v0, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/conceptglobal/pmc/utils/SegmentedGroup;->oneDP:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 26
    iput p1, p0, Lcom/conceptglobal/pmc/utils/SegmentedGroup;->mCheckedTextColor:I

    .line 38
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/utils/SegmentedGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/utils/SegmentedGroup;->resources:Landroid/content/res/Resources;

    const p2, 0x7f060109

    .line 39
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/conceptglobal/pmc/utils/SegmentedGroup;->mTintColor:I

    .line 41
    iget-object p1, p0, Lcom/conceptglobal/pmc/utils/SegmentedGroup;->resources:Landroid/content/res/Resources;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 p2, 0x1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p2, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/conceptglobal/pmc/utils/SegmentedGroup;->oneDP:I

    return-void
.end method

.method private updateBackground(Landroid/view/View;II)V
    .locals 7

    .line 87
    new-instance v0, Landroid/content/res/ColorStateList;

    const/4 v1, 0x3

    new-array v1, v1, [[I

    const v2, 0x10100a7

    filled-new-array {v2}, [I

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, -0x10100a7

    const v3, -0x10100a0

    filled-new-array {v2, v3}, [I

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v1, v5

    const v4, 0x10100a0

    filled-new-array {v2, v4}, [I

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    iget v2, p0, Lcom/conceptglobal/pmc/utils/SegmentedGroup;->mTintColor:I

    iget v5, p0, Lcom/conceptglobal/pmc/utils/SegmentedGroup;->mCheckedTextColor:I

    const v6, -0x777778

    filled-new-array {v6, v2, v5}, [I

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 92
    move-object v1, p1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 95
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/SegmentedGroup;->resources:Landroid/content/res/Resources;

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 96
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/SegmentedGroup;->resources:Landroid/content/res/Resources;

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 101
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 102
    filled-new-array {v3}, [I

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 103
    filled-new-array {v4}, [I

    move-result-object p3

    invoke-virtual {v0, p3, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 107
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 0

    .line 46
    invoke-super {p0}, Landroid/widget/RadioGroup;->onFinishInflate()V

    .line 48
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/utils/SegmentedGroup;->updateBackground()V

    return-void
.end method

.method public setTintColor(I)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/conceptglobal/pmc/utils/SegmentedGroup;->mTintColor:I

    .line 53
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/utils/SegmentedGroup;->updateBackground()V

    return-void
.end method

.method public setTintColor(II)V
    .locals 0

    .line 57
    iput p1, p0, Lcom/conceptglobal/pmc/utils/SegmentedGroup;->mTintColor:I

    .line 58
    iput p2, p0, Lcom/conceptglobal/pmc/utils/SegmentedGroup;->mCheckedTextColor:I

    .line 59
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/utils/SegmentedGroup;->updateBackground()V

    return-void
.end method

.method public updateBackground()V
    .locals 9

    .line 63
    invoke-super {p0}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    .line 65
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/utils/SegmentedGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 66
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioGroup$LayoutParams;

    .line 67
    new-instance v5, Landroid/widget/RadioGroup$LayoutParams;

    iget v6, v4, Landroid/widget/RadioGroup$LayoutParams;->width:I

    iget v7, v4, Landroid/widget/RadioGroup$LayoutParams;->height:I

    iget v4, v4, Landroid/widget/RadioGroup$LayoutParams;->weight:F

    invoke-direct {v5, v6, v7, v4}, Landroid/widget/RadioGroup$LayoutParams;-><init>(IIF)V

    .line 68
    iget v4, p0, Lcom/conceptglobal/pmc/utils/SegmentedGroup;->oneDP:I

    neg-int v4, v4

    invoke-virtual {v5, v1, v1, v4, v1}, Landroid/widget/RadioGroup$LayoutParams;->setMargins(IIII)V

    .line 69
    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/utils/SegmentedGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0801dd

    const v5, 0x7f0801e1

    invoke-direct {p0, v3, v4, v5}, Lcom/conceptglobal/pmc/utils/SegmentedGroup;->updateBackground(Landroid/view/View;II)V

    const/4 v3, 0x1

    :goto_0
    add-int/lit8 v4, v0, -0x1

    if-ge v3, v4, :cond_0

    .line 72
    invoke-virtual {p0, v3}, Lcom/conceptglobal/pmc/utils/SegmentedGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0801de

    const v6, 0x7f0801e2

    invoke-direct {p0, v4, v5, v6}, Lcom/conceptglobal/pmc/utils/SegmentedGroup;->updateBackground(Landroid/view/View;II)V

    .line 73
    invoke-virtual {p0, v3}, Lcom/conceptglobal/pmc/utils/SegmentedGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 74
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioGroup$LayoutParams;

    .line 75
    new-instance v6, Landroid/widget/RadioGroup$LayoutParams;

    iget v7, v5, Landroid/widget/RadioGroup$LayoutParams;->width:I

    iget v8, v5, Landroid/widget/RadioGroup$LayoutParams;->height:I

    iget v5, v5, Landroid/widget/RadioGroup$LayoutParams;->weight:F

    invoke-direct {v6, v7, v8, v5}, Landroid/widget/RadioGroup$LayoutParams;-><init>(IIF)V

    .line 76
    iget v5, p0, Lcom/conceptglobal/pmc/utils/SegmentedGroup;->oneDP:I

    neg-int v5, v5

    invoke-virtual {v6, v1, v1, v5, v1}, Landroid/widget/RadioGroup$LayoutParams;->setMargins(IIII)V

    .line 77
    invoke-virtual {v4, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {p0, v4}, Lcom/conceptglobal/pmc/utils/SegmentedGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0801df

    const v2, 0x7f0801e3

    invoke-direct {p0, v0, v1, v2}, Lcom/conceptglobal/pmc/utils/SegmentedGroup;->updateBackground(Landroid/view/View;II)V

    goto :goto_1

    :cond_1
    if-ne v0, v2, :cond_2

    .line 81
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/utils/SegmentedGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0801dc

    const v2, 0x7f0801e0

    invoke-direct {p0, v0, v1, v2}, Lcom/conceptglobal/pmc/utils/SegmentedGroup;->updateBackground(Landroid/view/View;II)V

    :cond_2
    :goto_1
    return-void
.end method

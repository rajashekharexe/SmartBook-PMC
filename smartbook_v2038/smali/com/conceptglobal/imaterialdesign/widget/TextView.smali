.class public Lcom/conceptglobal/imaterialdesign/widget/TextView;
.super Landroid/widget/TextView;
.source "TextView.java"

# interfaces
.implements Lcom/conceptglobal/imaterialdesign/app/ThemeManager$OnThemeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/imaterialdesign/widget/TextView$OnSelectionChangedListener;
    }
.end annotation


# instance fields
.field protected mCurrentStyle:I

.field private mOnSelectionChangedListener:Lcom/conceptglobal/imaterialdesign/widget/TextView$OnSelectionChangedListener;

.field private mRippleManager:Lcom/conceptglobal/imaterialdesign/widget/RippleManager;

.field protected mStyleId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 29
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v0, -0x80000000

    .line 20
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TextView;->mCurrentStyle:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 31
    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, -0x80000000

    .line 20
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TextView;->mCurrentStyle:I

    const/4 v0, 0x0

    .line 37
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, -0x80000000

    .line 20
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TextView;->mCurrentStyle:I

    const/4 v0, 0x0

    .line 43
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/high16 v0, -0x80000000

    .line 20
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TextView;->mCurrentStyle:I

    .line 50
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public applyStyle(I)V
    .locals 3

    .line 61
    invoke-static {p0, p1}, Lcom/conceptglobal/imaterialdesign/util/ViewUtil;->applyStyle(Landroid/view/View;I)V

    .line 62
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->applyStyle(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method protected applyStyle(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6

    .line 66
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->getRippleManager()Lcom/conceptglobal/imaterialdesign/widget/RippleManager;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/conceptglobal/imaterialdesign/widget/RippleManager;->onCreate(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method protected getRippleManager()Lcom/conceptglobal/imaterialdesign/widget/RippleManager;
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TextView;->mRippleManager:Lcom/conceptglobal/imaterialdesign/widget/RippleManager;

    if-nez v0, :cond_1

    .line 116
    const-class v0, Lcom/conceptglobal/imaterialdesign/widget/RippleManager;

    monitor-enter v0

    .line 117
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/widget/TextView;->mRippleManager:Lcom/conceptglobal/imaterialdesign/widget/RippleManager;

    if-nez v1, :cond_0

    .line 118
    new-instance v1, Lcom/conceptglobal/imaterialdesign/widget/RippleManager;

    invoke-direct {v1}, Lcom/conceptglobal/imaterialdesign/widget/RippleManager;-><init>()V

    iput-object v1, p0, Lcom/conceptglobal/imaterialdesign/widget/TextView;->mRippleManager:Lcom/conceptglobal/imaterialdesign/widget/RippleManager;

    .line 119
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 122
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TextView;->mRippleManager:Lcom/conceptglobal/imaterialdesign/widget/RippleManager;

    return-object v0
.end method

.method protected init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 54
    invoke-static {p0, p2, p3, p4}, Lcom/conceptglobal/imaterialdesign/util/ViewUtil;->applyFont(Landroid/widget/TextView;Landroid/util/AttributeSet;II)V

    .line 55
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->applyStyle(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 56
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    invoke-static {p1, p2, p3, p4}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->getStyleId(Landroid/content/Context;Landroid/util/AttributeSet;II)I

    move-result p1

    iput p1, p0, Lcom/conceptglobal/imaterialdesign/widget/TextView;->mStyleId:I

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 90
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 91
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TextView;->mStyleId:I

    if-eqz v0, :cond_0

    .line 92
    invoke-static {}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->getInstance()Lcom/conceptglobal/imaterialdesign/app/ThemeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->registerOnThemeChangedListener(Lcom/conceptglobal/imaterialdesign/app/ThemeManager$OnThemeChangedListener;)V

    const/4 v0, 0x0

    .line 93
    invoke-virtual {p0, v0}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->onThemeChanged(Lcom/conceptglobal/imaterialdesign/app/ThemeManager$OnThemeChangedEvent;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 99
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 100
    invoke-static {p0}, Lcom/conceptglobal/imaterialdesign/widget/RippleManager;->cancelRipple(Landroid/view/View;)V

    .line 101
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TextView;->mStyleId:I

    if-eqz v0, :cond_0

    .line 102
    invoke-static {}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->getInstance()Lcom/conceptglobal/imaterialdesign/app/ThemeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->unregisterOnThemeChangedListener(Lcom/conceptglobal/imaterialdesign/app/ThemeManager$OnThemeChangedListener;)V

    :cond_0
    return-void
.end method

.method protected onSelectionChanged(II)V
    .locals 1

    .line 148
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onSelectionChanged(II)V

    .line 150
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TextView;->mOnSelectionChangedListener:Lcom/conceptglobal/imaterialdesign/widget/TextView$OnSelectionChangedListener;

    if-eqz v0, :cond_0

    .line 151
    invoke-interface {v0, p0, p1, p2}, Lcom/conceptglobal/imaterialdesign/widget/TextView$OnSelectionChangedListener;->onSelectionChanged(Landroid/view/View;II)V

    :cond_0
    return-void
.end method

.method public onThemeChanged(Lcom/conceptglobal/imaterialdesign/app/ThemeManager$OnThemeChangedEvent;)V
    .locals 1

    .line 81
    invoke-static {}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->getInstance()Lcom/conceptglobal/imaterialdesign/app/ThemeManager;

    move-result-object p1

    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TextView;->mStyleId:I

    invoke-virtual {p1, v0}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->getCurrentStyle(I)I

    move-result p1

    .line 82
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/TextView;->mCurrentStyle:I

    if-eq v0, p1, :cond_0

    .line 83
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/widget/TextView;->mCurrentStyle:I

    .line 84
    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->applyStyle(I)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 138
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 139
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->getRippleManager()Lcom/conceptglobal/imaterialdesign/widget/RippleManager;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/conceptglobal/imaterialdesign/widget/RippleManager;->onTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 107
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 108
    instance-of v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;

    if-eqz v1, :cond_0

    instance-of v1, p1, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;

    if-nez v1, :cond_0

    .line 109
    check-cast v0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 111
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 127
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->getRippleManager()Lcom/conceptglobal/imaterialdesign/widget/RippleManager;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 129
    invoke-super {p0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/RippleManager;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    invoke-virtual {p0, v0}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method public setOnSelectionChangedListener(Lcom/conceptglobal/imaterialdesign/widget/TextView$OnSelectionChangedListener;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/TextView;->mOnSelectionChangedListener:Lcom/conceptglobal/imaterialdesign/widget/TextView$OnSelectionChangedListener;

    return-void
.end method

.method public setTextAppearance(I)V
    .locals 0

    .line 71
    invoke-static {p0, p1}, Lcom/conceptglobal/imaterialdesign/util/ViewUtil;->applyTextAppearance(Landroid/widget/TextView;I)V

    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 0

    .line 76
    invoke-static {p0, p2}, Lcom/conceptglobal/imaterialdesign/util/ViewUtil;->applyTextAppearance(Landroid/widget/TextView;I)V

    return-void
.end method

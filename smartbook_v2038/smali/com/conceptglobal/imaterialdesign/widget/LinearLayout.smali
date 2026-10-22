.class public Lcom/conceptglobal/imaterialdesign/widget/LinearLayout;
.super Landroid/widget/LinearLayout;
.source "LinearLayout.java"

# interfaces
.implements Lcom/conceptglobal/imaterialdesign/app/ThemeManager$OnThemeChangedListener;


# instance fields
.field protected mCurrentStyle:I

.field private mRippleManager:Lcom/conceptglobal/imaterialdesign/widget/RippleManager;

.field protected mStyleId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 23
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/high16 v0, -0x80000000

    .line 20
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/widget/LinearLayout;->mCurrentStyle:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 25
    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/conceptglobal/imaterialdesign/widget/LinearLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, -0x80000000

    .line 20
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/widget/LinearLayout;->mCurrentStyle:I

    const/4 v0, 0x0

    .line 31
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/conceptglobal/imaterialdesign/widget/LinearLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, -0x80000000

    .line 20
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/widget/LinearLayout;->mCurrentStyle:I

    const/4 v0, 0x0

    .line 38
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/conceptglobal/imaterialdesign/widget/LinearLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/high16 v0, -0x80000000

    .line 20
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/widget/LinearLayout;->mCurrentStyle:I

    .line 45
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/conceptglobal/imaterialdesign/widget/LinearLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public applyStyle(I)V
    .locals 3

    .line 55
    invoke-static {p0, p1}, Lcom/conceptglobal/imaterialdesign/util/ViewUtil;->applyStyle(Landroid/view/View;I)V

    .line 56
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/conceptglobal/imaterialdesign/widget/LinearLayout;->applyStyle(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method protected applyStyle(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6

    .line 60
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/LinearLayout;->getRippleManager()Lcom/conceptglobal/imaterialdesign/widget/RippleManager;

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

    .line 99
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/LinearLayout;->mRippleManager:Lcom/conceptglobal/imaterialdesign/widget/RippleManager;

    if-nez v0, :cond_1

    .line 100
    const-class v0, Lcom/conceptglobal/imaterialdesign/widget/RippleManager;

    monitor-enter v0

    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/widget/LinearLayout;->mRippleManager:Lcom/conceptglobal/imaterialdesign/widget/RippleManager;

    if-nez v1, :cond_0

    .line 102
    new-instance v1, Lcom/conceptglobal/imaterialdesign/widget/RippleManager;

    invoke-direct {v1}, Lcom/conceptglobal/imaterialdesign/widget/RippleManager;-><init>()V

    iput-object v1, p0, Lcom/conceptglobal/imaterialdesign/widget/LinearLayout;->mRippleManager:Lcom/conceptglobal/imaterialdesign/widget/RippleManager;

    .line 103
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 106
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/LinearLayout;->mRippleManager:Lcom/conceptglobal/imaterialdesign/widget/RippleManager;

    return-object v0
.end method

.method protected init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 49
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/conceptglobal/imaterialdesign/widget/LinearLayout;->applyStyle(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 50
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/LinearLayout;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    invoke-static {p1, p2, p3, p4}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->getStyleId(Landroid/content/Context;Landroid/util/AttributeSet;II)I

    move-result p1

    iput p1, p0, Lcom/conceptglobal/imaterialdesign/widget/LinearLayout;->mStyleId:I

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 74
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 75
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/LinearLayout;->mStyleId:I

    if-eqz v0, :cond_0

    .line 76
    invoke-static {}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->getInstance()Lcom/conceptglobal/imaterialdesign/app/ThemeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->registerOnThemeChangedListener(Lcom/conceptglobal/imaterialdesign/app/ThemeManager$OnThemeChangedListener;)V

    const/4 v0, 0x0

    .line 77
    invoke-virtual {p0, v0}, Lcom/conceptglobal/imaterialdesign/widget/LinearLayout;->onThemeChanged(Lcom/conceptglobal/imaterialdesign/app/ThemeManager$OnThemeChangedEvent;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 83
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 84
    invoke-static {p0}, Lcom/conceptglobal/imaterialdesign/widget/RippleManager;->cancelRipple(Landroid/view/View;)V

    .line 85
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/LinearLayout;->mStyleId:I

    if-eqz v0, :cond_0

    .line 86
    invoke-static {}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->getInstance()Lcom/conceptglobal/imaterialdesign/app/ThemeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->unregisterOnThemeChangedListener(Lcom/conceptglobal/imaterialdesign/app/ThemeManager$OnThemeChangedListener;)V

    :cond_0
    return-void
.end method

.method public onThemeChanged(Lcom/conceptglobal/imaterialdesign/app/ThemeManager$OnThemeChangedEvent;)V
    .locals 1

    .line 65
    invoke-static {}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->getInstance()Lcom/conceptglobal/imaterialdesign/app/ThemeManager;

    move-result-object p1

    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/LinearLayout;->mStyleId:I

    invoke-virtual {p1, v0}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->getCurrentStyle(I)I

    move-result p1

    .line 66
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/LinearLayout;->mCurrentStyle:I

    if-eq v0, p1, :cond_0

    .line 67
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/widget/LinearLayout;->mCurrentStyle:I

    .line 68
    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/widget/LinearLayout;->applyStyle(I)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 122
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 123
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/LinearLayout;->getRippleManager()Lcom/conceptglobal/imaterialdesign/widget/RippleManager;

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

    .line 91
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 92
    instance-of v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;

    if-eqz v1, :cond_0

    instance-of v1, p1, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;

    if-nez v1, :cond_0

    .line 93
    check-cast v0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 95
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 111
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/LinearLayout;->getRippleManager()Lcom/conceptglobal/imaterialdesign/widget/RippleManager;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 113
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/RippleManager;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/conceptglobal/imaterialdesign/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

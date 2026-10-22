.class public Lcom/conceptglobal/imaterialdesign/widget/ImageButton;
.super Landroid/widget/ImageButton;
.source "ImageButton.java"

# interfaces
.implements Lcom/conceptglobal/imaterialdesign/app/ThemeManager$OnThemeChangedListener;


# instance fields
.field protected mCurrentStyle:I

.field private mRippleManager:Lcom/conceptglobal/imaterialdesign/widget/RippleManager;

.field protected mStyleId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 22
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    const/high16 v0, -0x80000000

    .line 19
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/widget/ImageButton;->mCurrentStyle:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 24
    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/conceptglobal/imaterialdesign/widget/ImageButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, -0x80000000

    .line 19
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/widget/ImageButton;->mCurrentStyle:I

    const/4 v0, 0x0

    .line 30
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/conceptglobal/imaterialdesign/widget/ImageButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, -0x80000000

    .line 19
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/widget/ImageButton;->mCurrentStyle:I

    const/4 v0, 0x0

    .line 36
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/conceptglobal/imaterialdesign/widget/ImageButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/high16 v0, -0x80000000

    .line 19
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/widget/ImageButton;->mCurrentStyle:I

    .line 43
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/conceptglobal/imaterialdesign/widget/ImageButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public applyStyle(I)V
    .locals 3

    .line 53
    invoke-static {p0, p1}, Lcom/conceptglobal/imaterialdesign/util/ViewUtil;->applyStyle(Landroid/view/View;I)V

    .line 54
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/conceptglobal/imaterialdesign/widget/ImageButton;->applyStyle(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method protected applyStyle(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6

    .line 58
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/ImageButton;->getRippleManager()Lcom/conceptglobal/imaterialdesign/widget/RippleManager;

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

    .line 97
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/ImageButton;->mRippleManager:Lcom/conceptglobal/imaterialdesign/widget/RippleManager;

    if-nez v0, :cond_1

    .line 98
    const-class v0, Lcom/conceptglobal/imaterialdesign/widget/RippleManager;

    monitor-enter v0

    .line 99
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/widget/ImageButton;->mRippleManager:Lcom/conceptglobal/imaterialdesign/widget/RippleManager;

    if-nez v1, :cond_0

    .line 100
    new-instance v1, Lcom/conceptglobal/imaterialdesign/widget/RippleManager;

    invoke-direct {v1}, Lcom/conceptglobal/imaterialdesign/widget/RippleManager;-><init>()V

    iput-object v1, p0, Lcom/conceptglobal/imaterialdesign/widget/ImageButton;->mRippleManager:Lcom/conceptglobal/imaterialdesign/widget/RippleManager;

    .line 101
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 104
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/ImageButton;->mRippleManager:Lcom/conceptglobal/imaterialdesign/widget/RippleManager;

    return-object v0
.end method

.method protected init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 47
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/conceptglobal/imaterialdesign/widget/ImageButton;->applyStyle(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 48
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/ImageButton;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    invoke-static {p1, p2, p3, p4}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->getStyleId(Landroid/content/Context;Landroid/util/AttributeSet;II)I

    move-result p1

    iput p1, p0, Lcom/conceptglobal/imaterialdesign/widget/ImageButton;->mStyleId:I

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 72
    invoke-super {p0}, Landroid/widget/ImageButton;->onAttachedToWindow()V

    .line 73
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/ImageButton;->mStyleId:I

    if-eqz v0, :cond_0

    .line 74
    invoke-static {}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->getInstance()Lcom/conceptglobal/imaterialdesign/app/ThemeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->registerOnThemeChangedListener(Lcom/conceptglobal/imaterialdesign/app/ThemeManager$OnThemeChangedListener;)V

    const/4 v0, 0x0

    .line 75
    invoke-virtual {p0, v0}, Lcom/conceptglobal/imaterialdesign/widget/ImageButton;->onThemeChanged(Lcom/conceptglobal/imaterialdesign/app/ThemeManager$OnThemeChangedEvent;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 81
    invoke-super {p0}, Landroid/widget/ImageButton;->onDetachedFromWindow()V

    .line 82
    invoke-static {p0}, Lcom/conceptglobal/imaterialdesign/widget/RippleManager;->cancelRipple(Landroid/view/View;)V

    .line 83
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/ImageButton;->mStyleId:I

    if-eqz v0, :cond_0

    .line 84
    invoke-static {}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->getInstance()Lcom/conceptglobal/imaterialdesign/app/ThemeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->unregisterOnThemeChangedListener(Lcom/conceptglobal/imaterialdesign/app/ThemeManager$OnThemeChangedListener;)V

    :cond_0
    return-void
.end method

.method public onThemeChanged(Lcom/conceptglobal/imaterialdesign/app/ThemeManager$OnThemeChangedEvent;)V
    .locals 1

    .line 63
    invoke-static {}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->getInstance()Lcom/conceptglobal/imaterialdesign/app/ThemeManager;

    move-result-object p1

    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/ImageButton;->mStyleId:I

    invoke-virtual {p1, v0}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->getCurrentStyle(I)I

    move-result p1

    .line 64
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/ImageButton;->mCurrentStyle:I

    if-eq v0, p1, :cond_0

    .line 65
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/widget/ImageButton;->mCurrentStyle:I

    .line 66
    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/widget/ImageButton;->applyStyle(I)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 120
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 121
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/ImageButton;->getRippleManager()Lcom/conceptglobal/imaterialdesign/widget/RippleManager;

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

    .line 89
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 90
    instance-of v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;

    if-eqz v1, :cond_0

    instance-of v1, p1, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;

    if-nez v1, :cond_0

    .line 91
    check-cast v0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 93
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 109
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/ImageButton;->getRippleManager()Lcom/conceptglobal/imaterialdesign/widget/RippleManager;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 111
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 113
    :cond_0
    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/RippleManager;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    invoke-virtual {p0, v0}, Lcom/conceptglobal/imaterialdesign/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

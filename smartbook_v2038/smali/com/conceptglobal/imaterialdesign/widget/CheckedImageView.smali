.class public Lcom/conceptglobal/imaterialdesign/widget/CheckedImageView;
.super Landroid/widget/ImageView;
.source "CheckedImageView.java"

# interfaces
.implements Landroid/widget/Checkable;
.implements Lcom/conceptglobal/imaterialdesign/app/ThemeManager$OnThemeChangedListener;


# instance fields
.field private mChecked:Z

.field protected mCurrentStyle:I

.field private mRippleManager:Lcom/conceptglobal/imaterialdesign/widget/RippleManager;

.field protected mStyleId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 28
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/high16 v0, -0x80000000

    .line 23
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/widget/CheckedImageView;->mCurrentStyle:I

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/widget/CheckedImageView;->mChecked:Z

    const/4 v1, 0x0

    .line 30
    invoke-virtual {p0, p1, v1, v0, v0}, Lcom/conceptglobal/imaterialdesign/widget/CheckedImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, -0x80000000

    .line 23
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/widget/CheckedImageView;->mCurrentStyle:I

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/widget/CheckedImageView;->mChecked:Z

    .line 36
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/conceptglobal/imaterialdesign/widget/CheckedImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, -0x80000000

    .line 23
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/widget/CheckedImageView;->mCurrentStyle:I

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/widget/CheckedImageView;->mChecked:Z

    .line 42
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/conceptglobal/imaterialdesign/widget/CheckedImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/high16 v0, -0x80000000

    .line 23
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/widget/CheckedImageView;->mCurrentStyle:I

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/widget/CheckedImageView;->mChecked:Z

    .line 49
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/conceptglobal/imaterialdesign/widget/CheckedImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public applyStyle(I)V
    .locals 3

    .line 59
    invoke-static {p0, p1}, Lcom/conceptglobal/imaterialdesign/util/ViewUtil;->applyStyle(Landroid/view/View;I)V

    .line 60
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/CheckedImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/conceptglobal/imaterialdesign/widget/CheckedImageView;->applyStyle(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method protected applyStyle(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6

    .line 64
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/CheckedImageView;->getRippleManager()Lcom/conceptglobal/imaterialdesign/widget/RippleManager;

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

    .line 103
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/CheckedImageView;->mRippleManager:Lcom/conceptglobal/imaterialdesign/widget/RippleManager;

    if-nez v0, :cond_1

    .line 104
    const-class v0, Lcom/conceptglobal/imaterialdesign/widget/RippleManager;

    monitor-enter v0

    .line 105
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/widget/CheckedImageView;->mRippleManager:Lcom/conceptglobal/imaterialdesign/widget/RippleManager;

    if-nez v1, :cond_0

    .line 106
    new-instance v1, Lcom/conceptglobal/imaterialdesign/widget/RippleManager;

    invoke-direct {v1}, Lcom/conceptglobal/imaterialdesign/widget/RippleManager;-><init>()V

    iput-object v1, p0, Lcom/conceptglobal/imaterialdesign/widget/CheckedImageView;->mRippleManager:Lcom/conceptglobal/imaterialdesign/widget/RippleManager;

    .line 107
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 110
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/CheckedImageView;->mRippleManager:Lcom/conceptglobal/imaterialdesign/widget/RippleManager;

    return-object v0
.end method

.method protected init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 53
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/conceptglobal/imaterialdesign/widget/CheckedImageView;->applyStyle(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 54
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/CheckedImageView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    invoke-static {p1, p2, p3, p4}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->getStyleId(Landroid/content/Context;Landroid/util/AttributeSet;II)I

    move-result p1

    iput p1, p0, Lcom/conceptglobal/imaterialdesign/widget/CheckedImageView;->mStyleId:I

    :cond_0
    return-void
.end method

.method public isChecked()Z
    .locals 1

    .line 139
    iget-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/widget/CheckedImageView;->mChecked:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 78
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 79
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/CheckedImageView;->mStyleId:I

    if-eqz v0, :cond_0

    .line 80
    invoke-static {}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->getInstance()Lcom/conceptglobal/imaterialdesign/app/ThemeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->registerOnThemeChangedListener(Lcom/conceptglobal/imaterialdesign/app/ThemeManager$OnThemeChangedListener;)V

    const/4 v0, 0x0

    .line 81
    invoke-virtual {p0, v0}, Lcom/conceptglobal/imaterialdesign/widget/CheckedImageView;->onThemeChanged(Lcom/conceptglobal/imaterialdesign/app/ThemeManager$OnThemeChangedEvent;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 87
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 88
    invoke-static {p0}, Lcom/conceptglobal/imaterialdesign/widget/RippleManager;->cancelRipple(Landroid/view/View;)V

    .line 89
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/CheckedImageView;->mStyleId:I

    if-eqz v0, :cond_0

    .line 90
    invoke-static {}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->getInstance()Lcom/conceptglobal/imaterialdesign/app/ThemeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->unregisterOnThemeChangedListener(Lcom/conceptglobal/imaterialdesign/app/ThemeManager$OnThemeChangedListener;)V

    :cond_0
    return-void
.end method

.method public onThemeChanged(Lcom/conceptglobal/imaterialdesign/app/ThemeManager$OnThemeChangedEvent;)V
    .locals 1

    .line 69
    invoke-static {}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->getInstance()Lcom/conceptglobal/imaterialdesign/app/ThemeManager;

    move-result-object p1

    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/CheckedImageView;->mStyleId:I

    invoke-virtual {p1, v0}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->getCurrentStyle(I)I

    move-result p1

    .line 70
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/CheckedImageView;->mCurrentStyle:I

    if-eq v0, p1, :cond_0

    .line 71
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/widget/CheckedImageView;->mCurrentStyle:I

    .line 72
    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/widget/CheckedImageView;->applyStyle(I)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 126
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 127
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/CheckedImageView;->getRippleManager()Lcom/conceptglobal/imaterialdesign/widget/RippleManager;

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

    .line 95
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/CheckedImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 96
    instance-of v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;

    if-eqz v1, :cond_0

    instance-of v1, p1, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;

    if-nez v1, :cond_0

    .line 97
    check-cast v0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 99
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 132
    iget-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/widget/CheckedImageView;->mChecked:Z

    if-eq v0, p1, :cond_0

    .line 133
    iput-boolean p1, p0, Lcom/conceptglobal/imaterialdesign/widget/CheckedImageView;->mChecked:Z

    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 115
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/CheckedImageView;->getRippleManager()Lcom/conceptglobal/imaterialdesign/widget/RippleManager;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 117
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/RippleManager;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    invoke-virtual {p0, v0}, Lcom/conceptglobal/imaterialdesign/widget/CheckedImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method public toggle()V
    .locals 1

    .line 144
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/CheckedImageView;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/conceptglobal/imaterialdesign/widget/CheckedImageView;->setChecked(Z)V

    return-void
.end method

.class public Lcom/conceptglobal/imaterialdesign/widget/ProgressView;
.super Landroid/view/View;
.source "ProgressView.java"

# interfaces
.implements Lcom/conceptglobal/imaterialdesign/app/ThemeManager$OnThemeChangedListener;


# static fields
.field public static final MODE_BUFFER:I = 0x2

.field public static final MODE_DETERMINATE:I = 0x0

.field public static final MODE_INDETERMINATE:I = 0x1

.field public static final MODE_QUERY:I = 0x3


# instance fields
.field private mAutostart:Z

.field private mCircular:Z

.field protected mCurrentStyle:I

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mProgressId:I

.field protected mStyleId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 37
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 v0, -0x80000000

    .line 22
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/widget/ProgressView;->mCurrentStyle:I

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/widget/ProgressView;->mAutostart:Z

    const/4 v1, 0x1

    .line 25
    iput-boolean v1, p0, Lcom/conceptglobal/imaterialdesign/widget/ProgressView;->mCircular:Z

    const/4 v1, 0x0

    .line 39
    invoke-virtual {p0, p1, v1, v0, v0}, Lcom/conceptglobal/imaterialdesign/widget/ProgressView;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, -0x80000000

    .line 22
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/widget/ProgressView;->mCurrentStyle:I

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/widget/ProgressView;->mAutostart:Z

    const/4 v1, 0x1

    .line 25
    iput-boolean v1, p0, Lcom/conceptglobal/imaterialdesign/widget/ProgressView;->mCircular:Z

    .line 45
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/conceptglobal/imaterialdesign/widget/ProgressView;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, -0x80000000

    .line 22
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/widget/ProgressView;->mCurrentStyle:I

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/widget/ProgressView;->mAutostart:Z

    const/4 v1, 0x1

    .line 25
    iput-boolean v1, p0, Lcom/conceptglobal/imaterialdesign/widget/ProgressView;->mCircular:Z

    .line 51
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/conceptglobal/imaterialdesign/widget/ProgressView;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/high16 v0, -0x80000000

    .line 22
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/widget/ProgressView;->mCurrentStyle:I

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/widget/ProgressView;->mAutostart:Z

    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/widget/ProgressView;->mCircular:Z

    .line 58
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/conceptglobal/imaterialdesign/widget/ProgressView;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private needCreateProgress(Z)Z
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/ProgressView;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    .line 77
    instance-of p1, v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;

    xor-int/2addr p1, v1

    return p1

    .line 79
    :cond_1
    instance-of p1, v0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;

    xor-int/2addr p1, v1

    return p1
.end method


# virtual methods
.method public applyStyle(I)V
    .locals 3

    .line 68
    invoke-static {p0, p1}, Lcom/conceptglobal/imaterialdesign/util/ViewUtil;->applyStyle(Landroid/view/View;I)V

    .line 69
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/ProgressView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/conceptglobal/imaterialdesign/widget/ProgressView;->applyStyle(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method protected applyStyle(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9

    .line 83
    sget-object v0, Lcom/conceptglobal/imaterialdesign/R$styleable;->ProgressView:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 90
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p3

    const/4 p4, 0x0

    const/4 v0, -0x1

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ge v3, p3, :cond_6

    .line 91
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v7

    .line 93
    sget v8, Lcom/conceptglobal/imaterialdesign/R$styleable;->ProgressView_pv_autostart:I

    if-ne v7, v8, :cond_0

    .line 94
    invoke-virtual {p2, v7, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/conceptglobal/imaterialdesign/widget/ProgressView;->mAutostart:Z

    goto :goto_1

    .line 95
    :cond_0
    sget v8, Lcom/conceptglobal/imaterialdesign/R$styleable;->ProgressView_pv_circular:I

    if-ne v7, v8, :cond_1

    .line 96
    invoke-virtual {p2, v7, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/conceptglobal/imaterialdesign/widget/ProgressView;->mCircular:Z

    goto :goto_1

    .line 97
    :cond_1
    sget v5, Lcom/conceptglobal/imaterialdesign/R$styleable;->ProgressView_pv_progressStyle:I

    if-ne v7, v5, :cond_2

    .line 98
    invoke-virtual {p2, v7, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    goto :goto_1

    .line 99
    :cond_2
    sget v5, Lcom/conceptglobal/imaterialdesign/R$styleable;->ProgressView_pv_progressMode:I

    if-ne v7, v5, :cond_3

    .line 100
    invoke-virtual {p2, v7, p4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    goto :goto_1

    .line 101
    :cond_3
    sget v5, Lcom/conceptglobal/imaterialdesign/R$styleable;->ProgressView_pv_progress:I

    if-ne v7, v5, :cond_4

    .line 102
    invoke-virtual {p2, v7, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    goto :goto_1

    .line 103
    :cond_4
    sget v5, Lcom/conceptglobal/imaterialdesign/R$styleable;->ProgressView_pv_secondaryProgress:I

    if-ne v7, v5, :cond_5

    .line 104
    invoke-virtual {p2, v7, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    :cond_5
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 107
    :cond_6
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 111
    iget-boolean p2, p0, Lcom/conceptglobal/imaterialdesign/widget/ProgressView;->mCircular:Z

    invoke-direct {p0, p2}, Lcom/conceptglobal/imaterialdesign/widget/ProgressView;->needCreateProgress(Z)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 112
    iput v4, p0, Lcom/conceptglobal/imaterialdesign/widget/ProgressView;->mProgressId:I

    if-nez v4, :cond_8

    .line 114
    iget-boolean p2, p0, Lcom/conceptglobal/imaterialdesign/widget/ProgressView;->mCircular:Z

    if-eqz p2, :cond_7

    sget p2, Lcom/conceptglobal/imaterialdesign/R$style;->Material_Drawable_CircularProgress:I

    goto :goto_2

    :cond_7
    sget p2, Lcom/conceptglobal/imaterialdesign/R$style;->Material_Drawable_LinearProgress:I

    :goto_2
    iput p2, p0, Lcom/conceptglobal/imaterialdesign/widget/ProgressView;->mProgressId:I

    .line 116
    :cond_8
    iget-object p2, p0, Lcom/conceptglobal/imaterialdesign/widget/ProgressView;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_9

    check-cast p2, Landroid/graphics/drawable/Animatable;

    invoke-interface {p2}, Landroid/graphics/drawable/Animatable;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_9

    const/4 p4, 0x1

    .line 117
    :cond_9
    iget-boolean p2, p0, Lcom/conceptglobal/imaterialdesign/widget/ProgressView;->mCircular:Z

    if-eqz p2, :cond_a

    new-instance p2, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;

    iget p3, p0, Lcom/conceptglobal/imaterialdesign/widget/ProgressView;->mProgressId:I

    invoke-direct {p2, p1, p3}, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p2}, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable$Builder;->build()Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;

    move-result-object p1

    goto :goto_3

    :cond_a
    new-instance p2, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;

    iget p3, p0, Lcom/conceptglobal/imaterialdesign/widget/ProgressView;->mProgressId:I

    invoke-direct {p2, p1, p3}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p2}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable$Builder;->build()Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;

    move-result-object p1

    :goto_3
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/ProgressView;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 118
    invoke-static {p0, p1}, Lcom/conceptglobal/imaterialdesign/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 120
    :cond_b
    iget p2, p0, Lcom/conceptglobal/imaterialdesign/widget/ProgressView;->mProgressId:I

    if-eq p2, v4, :cond_d

    .line 121
    iput v4, p0, Lcom/conceptglobal/imaterialdesign/widget/ProgressView;->mProgressId:I

    .line 122
    iget-object p2, p0, Lcom/conceptglobal/imaterialdesign/widget/ProgressView;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    instance-of p3, p2, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;

    if-eqz p3, :cond_c

    .line 123
    check-cast p2, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;

    invoke-virtual {p2, p1, v4}, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->applyStyle(Landroid/content/Context;I)V

    goto :goto_4

    .line 125
    :cond_c
    check-cast p2, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;

    invoke-virtual {p2, p1, v4}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->applyStyle(Landroid/content/Context;I)V

    :cond_d
    :goto_4
    if-ltz v0, :cond_f

    .line 129
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/ProgressView;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    instance-of p2, p1, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;

    if-eqz p2, :cond_e

    .line 130
    check-cast p1, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->setProgressMode(I)V

    goto :goto_5

    .line 132
    :cond_e
    check-cast p1, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->setProgressMode(I)V

    :cond_f
    :goto_5
    cmpl-float p1, v1, v6

    if-ltz p1, :cond_10

    .line 136
    invoke-virtual {p0, v1}, Lcom/conceptglobal/imaterialdesign/widget/ProgressView;->setProgress(F)V

    :cond_10
    cmpl-float p1, v2, v6

    if-ltz p1, :cond_11

    .line 139
    invoke-virtual {p0, v2}, Lcom/conceptglobal/imaterialdesign/widget/ProgressView;->setSecondaryProgress(F)V

    :cond_11
    if-eqz p4, :cond_12

    .line 142
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/ProgressView;->start()V

    :cond_12
    return-void
.end method

.method public getProgress()F
    .locals 1

    .line 201
    iget-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/widget/ProgressView;->mCircular:Z

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/ProgressView;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->getProgress()F

    move-result v0

    return v0

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/ProgressView;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->getProgress()F

    move-result v0

    return v0
.end method

.method public getProgressMode()I
    .locals 1

    .line 191
    iget-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/widget/ProgressView;->mCircular:Z

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/ProgressView;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->getProgressMode()I

    move-result v0

    return v0

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/ProgressView;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->getProgressMode()I

    move-result v0

    return v0
.end method

.method public getSecondaryProgress()F
    .locals 1

    .line 211
    iget-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/widget/ProgressView;->mCircular:Z

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/ProgressView;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->getSecondaryProgress()F

    move-result v0

    return v0

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/ProgressView;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->getSecondaryProgress()F

    move-result v0

    return v0
.end method

.method protected init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 62
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/conceptglobal/imaterialdesign/widget/ProgressView;->applyStyle(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 63
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/ProgressView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    invoke-static {p1, p2, p3, p4}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->getStyleId(Landroid/content/Context;Landroid/util/AttributeSet;II)I

    move-result p1

    iput p1, p0, Lcom/conceptglobal/imaterialdesign/widget/ProgressView;->mStyleId:I

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 171
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 172
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/ProgressView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/widget/ProgressView;->mAutostart:Z

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/ProgressView;->start()V

    .line 174
    :cond_0
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/ProgressView;->mStyleId:I

    if-eqz v0, :cond_1

    .line 175
    invoke-static {}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->getInstance()Lcom/conceptglobal/imaterialdesign/app/ThemeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->registerOnThemeChangedListener(Lcom/conceptglobal/imaterialdesign/app/ThemeManager$OnThemeChangedListener;)V

    const/4 v0, 0x0

    .line 176
    invoke-virtual {p0, v0}, Lcom/conceptglobal/imaterialdesign/widget/ProgressView;->onThemeChanged(Lcom/conceptglobal/imaterialdesign/app/ThemeManager$OnThemeChangedEvent;)V

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 182
    iget-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/widget/ProgressView;->mAutostart:Z

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/ProgressView;->stop()V

    .line 185
    :cond_0
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 186
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/ProgressView;->mStyleId:I

    if-eqz v0, :cond_1

    .line 187
    invoke-static {}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->getInstance()Lcom/conceptglobal/imaterialdesign/app/ThemeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->unregisterOnThemeChangedListener(Lcom/conceptglobal/imaterialdesign/app/ThemeManager$OnThemeChangedListener;)V

    :cond_1
    return-void
.end method

.method public onThemeChanged(Lcom/conceptglobal/imaterialdesign/app/ThemeManager$OnThemeChangedEvent;)V
    .locals 1

    .line 147
    invoke-static {}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->getInstance()Lcom/conceptglobal/imaterialdesign/app/ThemeManager;

    move-result-object p1

    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/ProgressView;->mStyleId:I

    invoke-virtual {p1, v0}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->getCurrentStyle(I)I

    move-result p1

    .line 148
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/ProgressView;->mCurrentStyle:I

    if-eq v0, p1, :cond_0

    .line 149
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/widget/ProgressView;->mCurrentStyle:I

    .line 150
    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/widget/ProgressView;->applyStyle(I)V

    :cond_0
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 156
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    if-eq p1, p0, :cond_0

    return-void

    .line 161
    :cond_0
    iget-boolean p1, p0, Lcom/conceptglobal/imaterialdesign/widget/ProgressView;->mAutostart:Z

    if-eqz p1, :cond_3

    const/16 p1, 0x8

    if-eq p2, p1, :cond_2

    const/4 p1, 0x4

    if-ne p2, p1, :cond_1

    goto :goto_0

    .line 165
    :cond_1
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/ProgressView;->start()V

    goto :goto_1

    .line 163
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/ProgressView;->stop()V

    :cond_3
    :goto_1
    return-void
.end method

.method public setProgress(F)V
    .locals 1

    .line 222
    iget-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/widget/ProgressView;->mCircular:Z

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/ProgressView;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->setProgress(F)V

    goto :goto_0

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/ProgressView;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->setProgress(F)V

    :goto_0
    return-void
.end method

.method public setSecondaryProgress(F)V
    .locals 1

    .line 233
    iget-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/widget/ProgressView;->mCircular:Z

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/ProgressView;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/drawable/CircularProgressDrawable;->setSecondaryProgress(F)V

    goto :goto_0

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/ProgressView;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/drawable/LinearProgressDrawable;->setSecondaryProgress(F)V

    :goto_0
    return-void
.end method

.method public start()V
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/ProgressView;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 244
    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/ProgressView;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 252
    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    :cond_0
    return-void
.end method

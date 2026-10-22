.class public Lcom/conceptglobal/imaterialdesign/widget/CompoundButton;
.super Landroid/widget/CompoundButton;
.source "CompoundButton.java"

# interfaces
.implements Lcom/conceptglobal/imaterialdesign/app/ThemeManager$OnThemeChangedListener;


# instance fields
.field protected mCurrentStyle:I

.field private mIsRtl:Z

.field private volatile mPaddingDrawable:Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;

.field private mRippleManager:Lcom/conceptglobal/imaterialdesign/widget/RippleManager;

.field protected mStyleId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 27
    invoke-direct {p0, p1}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/widget/CompoundButton;->mIsRtl:Z

    const/high16 v1, -0x80000000

    .line 24
    iput v1, p0, Lcom/conceptglobal/imaterialdesign/widget/CompoundButton;->mCurrentStyle:I

    const/4 v1, 0x0

    .line 29
    invoke-virtual {p0, p1, v1, v0, v0}, Lcom/conceptglobal/imaterialdesign/widget/CompoundButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/widget/CompoundButton;->mIsRtl:Z

    const/high16 v1, -0x80000000

    .line 24
    iput v1, p0, Lcom/conceptglobal/imaterialdesign/widget/CompoundButton;->mCurrentStyle:I

    .line 35
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/conceptglobal/imaterialdesign/widget/CompoundButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/widget/CompoundButton;->mIsRtl:Z

    const/high16 v1, -0x80000000

    .line 24
    iput v1, p0, Lcom/conceptglobal/imaterialdesign/widget/CompoundButton;->mCurrentStyle:I

    .line 41
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/conceptglobal/imaterialdesign/widget/CompoundButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/widget/CompoundButton;->mIsRtl:Z

    const/high16 v0, -0x80000000

    .line 24
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/widget/CompoundButton;->mCurrentStyle:I

    .line 48
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/conceptglobal/imaterialdesign/widget/CompoundButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private applyPadding(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x7

    .line 74
    new-array v1, v1, [I

    fill-array-data v1, :array_0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 89
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    const/4 v3, -0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, -0x1

    const/high16 v14, -0x80000000

    const/high16 v15, -0x80000000

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_0
    if-ge v6, v2, :cond_9

    .line 90
    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v5

    const/4 v4, 0x1

    if-nez v5, :cond_0

    .line 92
    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    const/high16 v4, -0x80000000

    const/4 v8, 0x1

    :goto_1
    const/4 v9, 0x1

    goto :goto_3

    :cond_0
    if-ne v5, v4, :cond_1

    .line 97
    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    const/high16 v4, -0x80000000

    const/4 v8, 0x1

    goto :goto_3

    :cond_1
    const/4 v4, 0x2

    if-ne v5, v4, :cond_2

    .line 101
    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    :goto_2
    const/high16 v4, -0x80000000

    goto :goto_3

    :cond_2
    const/4 v4, 0x3

    if-ne v5, v4, :cond_3

    .line 103
    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    const/high16 v4, -0x80000000

    goto :goto_1

    :cond_3
    const/4 v4, 0x4

    if-ne v5, v4, :cond_4

    .line 107
    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v13

    goto :goto_2

    :cond_4
    const/4 v4, 0x5

    if-ne v5, v4, :cond_6

    const/high16 v4, -0x80000000

    .line 110
    invoke-virtual {v1, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    if-eq v14, v4, :cond_5

    const/16 v16, 0x1

    goto :goto_3

    :cond_5
    const/16 v16, 0x0

    goto :goto_3

    :cond_6
    const/high16 v4, -0x80000000

    const/4 v3, 0x6

    if-ne v5, v3, :cond_8

    .line 116
    invoke-virtual {v1, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v15

    if-eq v15, v4, :cond_7

    const/16 v17, 0x1

    goto :goto_3

    :cond_7
    const/16 v17, 0x0

    :cond_8
    :goto_3
    add-int/lit8 v6, v6, 0x1

    const/4 v3, -0x1

    goto :goto_0

    .line 122
    :cond_9
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    if-ltz v7, :cond_a

    .line 125
    invoke-virtual {v0, v7, v7, v7, v7}, Lcom/conceptglobal/imaterialdesign/widget/CompoundButton;->setPadding(IIII)V

    goto :goto_c

    :cond_a
    if-nez v8, :cond_b

    if-eqz v9, :cond_10

    :cond_b
    if-eqz v8, :cond_c

    goto :goto_4

    .line 128
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/imaterialdesign/widget/CompoundButton;->getPaddingLeft()I

    move-result v10

    :goto_4
    if-ltz v11, :cond_d

    move v1, v11

    goto :goto_5

    .line 129
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/imaterialdesign/widget/CompoundButton;->getPaddingTop()I

    move-result v1

    :goto_5
    if-eqz v9, :cond_e

    goto :goto_6

    .line 130
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/imaterialdesign/widget/CompoundButton;->getPaddingRight()I

    move-result v12

    :goto_6
    if-ltz v13, :cond_f

    move v2, v13

    goto :goto_7

    .line 131
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/imaterialdesign/widget/CompoundButton;->getPaddingBottom()I

    move-result v2

    .line 128
    :goto_7
    invoke-virtual {v0, v10, v1, v12, v2}, Lcom/conceptglobal/imaterialdesign/widget/CompoundButton;->setPadding(IIII)V

    :cond_10
    if-nez v16, :cond_11

    if-eqz v17, :cond_16

    :cond_11
    if-eqz v16, :cond_12

    goto :goto_8

    .line 134
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/imaterialdesign/widget/CompoundButton;->getPaddingStart()I

    move-result v14

    :goto_8
    if-ltz v11, :cond_13

    goto :goto_9

    .line 135
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/imaterialdesign/widget/CompoundButton;->getPaddingTop()I

    move-result v11

    :goto_9
    if-eqz v17, :cond_14

    goto :goto_a

    .line 136
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/imaterialdesign/widget/CompoundButton;->getPaddingEnd()I

    move-result v15

    :goto_a
    if-ltz v13, :cond_15

    goto :goto_b

    .line 137
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/imaterialdesign/widget/CompoundButton;->getPaddingBottom()I

    move-result v13

    .line 134
    :goto_b
    invoke-virtual {v0, v14, v11, v15, v13}, Lcom/conceptglobal/imaterialdesign/widget/CompoundButton;->setPaddingRelative(IIII)V

    :cond_16
    :goto_c
    return-void

    :array_0
    .array-data 4
        0x10100d5
        0x10100d6
        0x10100d7
        0x10100d8
        0x10100d9
        0x10103b3
        0x10103b4
    .end array-data
.end method

.method private getPaddingDrawable()Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/CompoundButton;->mPaddingDrawable:Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;

    if-nez v0, :cond_1

    .line 143
    monitor-enter p0

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/CompoundButton;->mPaddingDrawable:Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;

    if-nez v0, :cond_0

    .line 145
    new-instance v0, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/CompoundButton;->mPaddingDrawable:Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;

    .line 146
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 149
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/CompoundButton;->mPaddingDrawable:Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;

    return-object v0
.end method


# virtual methods
.method public applyStyle(I)V
    .locals 3

    .line 64
    invoke-static {p0, p1}, Lcom/conceptglobal/imaterialdesign/util/ViewUtil;->applyStyle(Landroid/view/View;I)V

    .line 65
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/conceptglobal/imaterialdesign/widget/CompoundButton;->applyStyle(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method protected applyStyle(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6

    .line 69
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/CompoundButton;->getRippleManager()Lcom/conceptglobal/imaterialdesign/widget/RippleManager;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/conceptglobal/imaterialdesign/widget/RippleManager;->onCreate(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public getButtonDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 251
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/widget/CompoundButton;->getPaddingDrawable()Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->getWrappedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getCompoundPaddingLeft()I
    .locals 1

    .line 289
    iget-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/widget/CompoundButton;->mIsRtl:Z

    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/CompoundButton;->getPaddingLeft()I

    move-result v0

    return v0

    .line 292
    :cond_0
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/widget/CompoundButton;->getPaddingDrawable()Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;

    move-result-object v0

    .line 293
    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getCompoundPaddingRight()I
    .locals 1

    .line 299
    iget-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/widget/CompoundButton;->mIsRtl:Z

    if-nez v0, :cond_0

    .line 300
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/CompoundButton;->getPaddingRight()I

    move-result v0

    return v0

    .line 302
    :cond_0
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/widget/CompoundButton;->getPaddingDrawable()Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;

    move-result-object v0

    .line 303
    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method protected getRippleManager()Lcom/conceptglobal/imaterialdesign/widget/RippleManager;
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/CompoundButton;->mRippleManager:Lcom/conceptglobal/imaterialdesign/widget/RippleManager;

    if-nez v0, :cond_1

    .line 216
    const-class v0, Lcom/conceptglobal/imaterialdesign/widget/RippleManager;

    monitor-enter v0

    .line 217
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/widget/CompoundButton;->mRippleManager:Lcom/conceptglobal/imaterialdesign/widget/RippleManager;

    if-nez v1, :cond_0

    .line 218
    new-instance v1, Lcom/conceptglobal/imaterialdesign/widget/RippleManager;

    invoke-direct {v1}, Lcom/conceptglobal/imaterialdesign/widget/RippleManager;-><init>()V

    iput-object v1, p0, Lcom/conceptglobal/imaterialdesign/widget/CompoundButton;->mRippleManager:Lcom/conceptglobal/imaterialdesign/widget/RippleManager;

    .line 219
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 222
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/CompoundButton;->mRippleManager:Lcom/conceptglobal/imaterialdesign/widget/RippleManager;

    return-object v0
.end method

.method protected init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/conceptglobal/imaterialdesign/widget/CompoundButton;->applyPadding(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x1

    .line 55
    invoke-virtual {p0, v0}, Lcom/conceptglobal/imaterialdesign/widget/CompoundButton;->setClickable(Z)V

    .line 56
    invoke-static {p0, p2, p3, p4}, Lcom/conceptglobal/imaterialdesign/util/ViewUtil;->applyFont(Landroid/widget/TextView;Landroid/util/AttributeSet;II)V

    .line 57
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/conceptglobal/imaterialdesign/widget/CompoundButton;->applyStyle(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 59
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/CompoundButton;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    invoke-static {p1, p2, p3, p4}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->getStyleId(Landroid/content/Context;Landroid/util/AttributeSet;II)I

    move-result p1

    iput p1, p0, Lcom/conceptglobal/imaterialdesign/widget/CompoundButton;->mStyleId:I

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 173
    invoke-super {p0}, Landroid/widget/CompoundButton;->onAttachedToWindow()V

    .line 174
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/CompoundButton;->mStyleId:I

    if-eqz v0, :cond_0

    .line 175
    invoke-static {}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->getInstance()Lcom/conceptglobal/imaterialdesign/app/ThemeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->registerOnThemeChangedListener(Lcom/conceptglobal/imaterialdesign/app/ThemeManager$OnThemeChangedListener;)V

    const/4 v0, 0x0

    .line 176
    invoke-virtual {p0, v0}, Lcom/conceptglobal/imaterialdesign/widget/CompoundButton;->onThemeChanged(Lcom/conceptglobal/imaterialdesign/app/ThemeManager$OnThemeChangedEvent;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 182
    invoke-super {p0}, Landroid/widget/CompoundButton;->onDetachedFromWindow()V

    .line 183
    invoke-static {p0}, Lcom/conceptglobal/imaterialdesign/widget/RippleManager;->cancelRipple(Landroid/view/View;)V

    .line 184
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/CompoundButton;->mStyleId:I

    if-eqz v0, :cond_0

    .line 185
    invoke-static {}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->getInstance()Lcom/conceptglobal/imaterialdesign/app/ThemeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->unregisterOnThemeChangedListener(Lcom/conceptglobal/imaterialdesign/app/ThemeManager$OnThemeChangedListener;)V

    :cond_0
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 192
    :goto_0
    iget-boolean p1, p0, Lcom/conceptglobal/imaterialdesign/widget/CompoundButton;->mIsRtl:Z

    if-eq p1, v0, :cond_1

    .line 193
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/widget/CompoundButton;->mIsRtl:Z

    .line 196
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/CompoundButton;->getPaddingStart()I

    move-result p1

    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/CompoundButton;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/CompoundButton;->getPaddingEnd()I

    move-result v1

    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/CompoundButton;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/conceptglobal/imaterialdesign/widget/CompoundButton;->setPaddingRelative(IIII)V

    .line 200
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/CompoundButton;->getCompoundDrawablePadding()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/widget/CompoundButton;->setCompoundDrawablePadding(I)V

    .line 201
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/CompoundButton;->invalidate()V

    :cond_1
    return-void
.end method

.method public onThemeChanged(Lcom/conceptglobal/imaterialdesign/app/ThemeManager$OnThemeChangedEvent;)V
    .locals 1

    .line 164
    invoke-static {}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->getInstance()Lcom/conceptglobal/imaterialdesign/app/ThemeManager;

    move-result-object p1

    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/CompoundButton;->mStyleId:I

    invoke-virtual {p1, v0}, Lcom/conceptglobal/imaterialdesign/app/ThemeManager;->getCurrentStyle(I)I

    move-result p1

    .line 165
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/CompoundButton;->mCurrentStyle:I

    if-eq v0, p1, :cond_0

    .line 166
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/widget/CompoundButton;->mCurrentStyle:I

    .line 167
    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/widget/CompoundButton;->applyStyle(I)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 238
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 239
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/CompoundButton;->getRippleManager()Lcom/conceptglobal/imaterialdesign/widget/RippleManager;

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

    .line 207
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/CompoundButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 208
    instance-of v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;

    if-eqz v1, :cond_0

    instance-of v1, p1, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;

    if-nez v1, :cond_0

    .line 209
    check-cast v0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 211
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    .line 244
    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 245
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/widget/CompoundButton;->getPaddingDrawable()Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->setWrappedDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 246
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/widget/CompoundButton;->getPaddingDrawable()Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCompoundDrawablePadding(I)V
    .locals 4

    .line 278
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/widget/CompoundButton;->getPaddingDrawable()Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;

    move-result-object v0

    .line 279
    iget-boolean v1, p0, Lcom/conceptglobal/imaterialdesign/widget/CompoundButton;->mIsRtl:Z

    if-eqz v1, :cond_0

    .line 280
    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->getPaddingTop()I

    move-result v1

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->getPaddingRight()I

    move-result v2

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->setPadding(IIII)V

    goto :goto_0

    .line 282
    :cond_0
    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->getPaddingTop()I

    move-result v2

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->setPadding(IIII)V

    .line 284
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setCompoundDrawablePadding(I)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 227
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/CompoundButton;->getRippleManager()Lcom/conceptglobal/imaterialdesign/widget/RippleManager;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 229
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 231
    :cond_0
    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/RippleManager;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    invoke-virtual {p0, v0}, Lcom/conceptglobal/imaterialdesign/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method public setPadding(IIII)V
    .locals 2

    .line 256
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/widget/CompoundButton;->getPaddingDrawable()Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;

    move-result-object v0

    .line 257
    iget-boolean v1, p0, Lcom/conceptglobal/imaterialdesign/widget/CompoundButton;->mIsRtl:Z

    if-eqz v1, :cond_0

    .line 258
    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->setPadding(IIII)V

    goto :goto_0

    .line 260
    :cond_0
    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->getPaddingRight()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1, p4}, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->setPadding(IIII)V

    .line 262
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/CompoundButton;->setPadding(IIII)V

    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 2

    .line 267
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/widget/CompoundButton;->getPaddingDrawable()Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;

    move-result-object v0

    .line 268
    iget-boolean v1, p0, Lcom/conceptglobal/imaterialdesign/widget/CompoundButton;->mIsRtl:Z

    if-eqz v1, :cond_0

    .line 269
    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0, v1, p2, p1, p4}, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->setPadding(IIII)V

    goto :goto_0

    .line 271
    :cond_0
    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->getPaddingRight()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1, p4}, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->setPadding(IIII)V

    .line 273
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/CompoundButton;->setPaddingRelative(IIII)V

    return-void
.end method

.method public setTextAppearance(I)V
    .locals 0

    .line 154
    invoke-static {p0, p1}, Lcom/conceptglobal/imaterialdesign/util/ViewUtil;->applyTextAppearance(Landroid/widget/TextView;I)V

    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 0

    .line 159
    invoke-static {p0, p2}, Lcom/conceptglobal/imaterialdesign/util/ViewUtil;->applyTextAppearance(Landroid/widget/TextView;I)V

    return-void
.end method

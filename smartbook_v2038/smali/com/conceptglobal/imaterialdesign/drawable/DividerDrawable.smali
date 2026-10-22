.class public Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "DividerDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# instance fields
.field private mAnimDuration:I

.field private mAnimEnable:Z

.field private mAnimProgress:F

.field private mColorStateList:Landroid/content/res/ColorStateList;

.field private mCurColor:I

.field private mEnable:Z

.field private mHeight:I

.field private mInEditMode:Z

.field private mPaddingLeft:I

.field private mPaddingRight:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mPathEffect:Landroid/graphics/PathEffect;

.field private mPrevColor:I

.field private mRunning:Z

.field private mStartTime:J

.field private final mUpdater:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(IIILandroid/content/res/ColorStateList;I)V
    .locals 3

    .line 45
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mRunning:Z

    const/4 v1, 0x1

    .line 31
    iput-boolean v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mEnable:Z

    .line 35
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mInEditMode:Z

    .line 36
    iput-boolean v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mAnimEnable:Z

    .line 231
    new-instance v2, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable$1;

    invoke-direct {v2, p0}, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable$1;-><init>(Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;)V

    iput-object v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mUpdater:Ljava/lang/Runnable;

    .line 46
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mHeight:I

    .line 47
    iput p2, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mPaddingLeft:I

    .line 48
    iput p3, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mPaddingRight:I

    .line 49
    iput p5, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mAnimDuration:I

    .line 51
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mPaint:Landroid/graphics/Paint;

    .line 52
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 53
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 54
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mHeight:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 55
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 56
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 58
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mPath:Landroid/graphics/Path;

    .line 60
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mAnimEnable:Z

    .line 61
    invoke-virtual {p0, p4}, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 62
    iput-boolean v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mAnimEnable:Z

    return-void
.end method

.method public constructor <init>(ILandroid/content/res/ColorStateList;I)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v4, p2

    move v5, p3

    .line 42
    invoke-direct/range {v0 .. v5}, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;-><init>(IIILandroid/content/res/ColorStateList;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->update()V

    return-void
.end method

.method private getPathEffect()Landroid/graphics/PathEffect;
    .locals 5

    .line 111
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mPathEffect:Landroid/graphics/PathEffect;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Landroid/graphics/DashPathEffect;

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mHeight:I

    const/4 v2, 0x2

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    new-array v2, v2, [F

    const v3, 0x3e4ccccd    # 0.2f

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iput-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mPathEffect:Landroid/graphics/PathEffect;

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mPathEffect:Landroid/graphics/PathEffect;

    return-object v0
.end method

.method private resetAnimation()V
    .locals 2

    .line 202
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mStartTime:J

    const/4 v0, 0x0

    .line 203
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mAnimProgress:F

    return-void
.end method

.method private update()V
    .locals 5

    .line 241
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 242
    iget-wide v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mAnimDuration:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mAnimProgress:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 245
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mRunning:Z

    .line 247
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mUpdater:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 250
    :cond_1
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 119
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mHeight:I

    if-nez v0, :cond_0

    return-void

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 123
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mHeight:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 125
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->isRunning()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 126
    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 127
    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mPath:Landroid/graphics/Path;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mPaddingLeft:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v4, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 128
    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mPath:Landroid/graphics/Path;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mPaddingRight:I

    sub-int/2addr v0, v4

    int-to-float v0, v0

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 129
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mPaint:Landroid/graphics/Paint;

    iget-boolean v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mEnable:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->getPathEffect()Landroid/graphics/PathEffect;

    move-result-object v3

    :goto_0
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 130
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mCurColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 131
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 134
    :cond_2
    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v4

    iget v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mPaddingRight:I

    sub-int/2addr v2, v4

    iget v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mPaddingLeft:I

    add-int/2addr v2, v4

    int-to-float v2, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    .line 135
    iget v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mAnimProgress:F

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v4, v5, v4

    mul-float v4, v4, v2

    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mPaddingLeft:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mAnimProgress:F

    mul-float v6, v6, v7

    add-float/2addr v4, v6

    sub-float v6, v5, v7

    mul-float v2, v2, v6

    .line 136
    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget v7, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mPaddingRight:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mAnimProgress:F

    mul-float v6, v6, v7

    add-float/2addr v2, v6

    .line 138
    iget-object v6, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 140
    iget v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mAnimProgress:F

    cmpg-float v3, v3, v5

    if-gez v3, :cond_3

    .line 141
    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mPrevColor:I

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 142
    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 143
    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mPath:Landroid/graphics/Path;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget v6, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mPaddingLeft:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v3, v5, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 144
    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v3, v4, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 145
    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mPath:Landroid/graphics/Path;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v5, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mPaddingRight:I

    sub-int/2addr v0, v5

    int-to-float v0, v0

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 146
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 147
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 150
    :cond_3
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mCurColor:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 151
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 152
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, v4, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 153
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 154
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_1
    return-void
.end method

.method public getDividerHeight()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mHeight:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public getPaddingLeft()I
    .locals 1

    .line 86
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mPaddingLeft:I

    return v0
.end method

.method public getPaddingRight()I
    .locals 1

    .line 90
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mPaddingRight:I

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 222
    iget-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mRunning:Z

    return v0
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 2

    const v0, 0x101009e

    .line 180
    invoke-static {p1, v0}, Lcom/conceptglobal/imaterialdesign/util/ViewUtil;->hasState([II)Z

    move-result v0

    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mEnable:Z

    .line 181
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mColorStateList:Landroid/content/res/ColorStateList;

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mCurColor:I

    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    .line 183
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mCurColor:I

    if-eq v0, p1, :cond_2

    .line 184
    iget-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mInEditMode:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mAnimEnable:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mEnable:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mAnimDuration:I

    if-lez v0, :cond_1

    .line 185
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mPrevColor:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mCurColor:I

    :goto_0
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mPrevColor:I

    .line 186
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mCurColor:I

    .line 187
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->start()V

    goto :goto_1

    .line 190
    :cond_1
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mPrevColor:I

    .line 191
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mCurColor:I

    :goto_1
    const/4 p1, 0x1

    return p1

    .line 195
    :cond_2
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_3

    .line 196
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mPrevColor:I

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
    .locals 1

    const/4 v0, 0x1

    .line 227
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mRunning:Z

    .line 228
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setAnimEnable(Z)V
    .locals 0

    .line 98
    iput-boolean p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mAnimEnable:Z

    return-void
.end method

.method public setAnimationDuration(I)V
    .locals 0

    .line 107
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mAnimDuration:I

    return-void
.end method

.method public setColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mColorStateList:Landroid/content/res/ColorStateList;

    .line 103
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->onStateChange([I)Z

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setDividerHeight(I)V
    .locals 1

    .line 66
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mHeight:I

    if-eq v0, p1, :cond_0

    .line 67
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mHeight:I

    .line 68
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mPaint:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 69
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setInEditMode(Z)V
    .locals 0

    .line 94
    iput-boolean p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mInEditMode:Z

    return-void
.end method

.method public setPadding(II)V
    .locals 1

    .line 78
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mPaddingLeft:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mPaddingRight:I

    if-eq v0, p2, :cond_1

    .line 79
    :cond_0
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mPaddingLeft:I

    .line 80
    iput p2, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mPaddingRight:I

    .line 81
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public start()V
    .locals 5

    .line 208
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->resetAnimation()V

    .line 209
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mUpdater:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 210
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->invalidateSelf()V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 215
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mRunning:Z

    .line 216
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->mUpdater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 217
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->invalidateSelf()V

    return-void
.end method

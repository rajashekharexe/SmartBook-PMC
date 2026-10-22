.class public Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "RadioButtonDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable$Builder;
    }
.end annotation


# instance fields
.field private mAnimDuration:I

.field private mAnimEnable:Z

.field private mAnimProgress:F

.field private mChecked:Z

.field private mCurColor:I

.field private mHeight:I

.field private mInEditMode:Z

.field private mInnerRadius:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPrevColor:I

.field private mRadius:I

.field private mRunning:Z

.field private mStartTime:J

.field private mStrokeColor:Landroid/content/res/ColorStateList;

.field private mStrokeSize:I

.field private final mUpdater:Ljava/lang/Runnable;

.field private mWidth:I


# direct methods
.method private constructor <init>(IIILandroid/content/res/ColorStateList;III)V
    .locals 2

    .line 42
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mRunning:Z

    .line 37
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mChecked:Z

    .line 39
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mInEditMode:Z

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mAnimEnable:Z

    .line 255
    new-instance v1, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable$1;-><init>(Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;)V

    iput-object v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mUpdater:Ljava/lang/Runnable;

    .line 43
    iput p7, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mAnimDuration:I

    .line 44
    iput p3, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mStrokeSize:I

    .line 45
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mWidth:I

    .line 46
    iput p2, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mHeight:I

    .line 47
    iput p5, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mRadius:I

    .line 48
    iput p6, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mInnerRadius:I

    .line 49
    iput-object p4, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mStrokeColor:Landroid/content/res/ColorStateList;

    .line 51
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mPaint:Landroid/graphics/Paint;

    .line 52
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method synthetic constructor <init>(IIILandroid/content/res/ColorStateList;IIILcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable$1;)V
    .locals 0

    .line 20
    invoke-direct/range {p0 .. p7}, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;-><init>(IIILandroid/content/res/ColorStateList;III)V

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->update()V

    return-void
.end method

.method private drawChecked(Landroid/graphics/Canvas;)V
    .locals 11

    .line 101
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    .line 102
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    .line 104
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 105
    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mStrokeSize:I

    int-to-float v3, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 106
    iget v5, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mRadius:I

    int-to-float v6, v5

    sub-float/2addr v6, v3

    int-to-float v7, v5

    sub-float/2addr v7, v3

    int-to-float v8, v5

    add-float/2addr v7, v8

    int-to-float v8, v2

    sub-float/2addr v7, v8

    iget v8, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mInnerRadius:I

    int-to-float v9, v8

    sub-float/2addr v7, v9

    div-float/2addr v6, v7

    .line 108
    iget v7, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mAnimProgress:F

    const/high16 v9, 0x3f800000    # 1.0f

    cmpg-float v10, v7, v6

    if-gez v10, :cond_0

    div-float/2addr v7, v6

    int-to-float v2, v5

    sub-float/2addr v9, v7

    mul-float v6, v3, v9

    add-float/2addr v2, v6

    int-to-float v5, v5

    sub-float/2addr v5, v3

    mul-float v5, v5, v9

    .line 113
    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mPrevColor:I

    iget v8, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mCurColor:I

    invoke-static {v6, v8, v7}, Lcom/conceptglobal/imaterialdesign/util/ColorUtil;->getMiddleColor(IIF)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 114
    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mPaint:Landroid/graphics/Paint;

    sub-float v6, v2, v5

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 115
    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    add-float/2addr v2, v5

    div-float/2addr v2, v4

    .line 116
    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    sub-float/2addr v7, v6

    sub-float v4, v9, v6

    div-float/2addr v7, v4

    sub-int/2addr v5, v2

    int-to-float v2, v5

    sub-float/2addr v9, v7

    mul-float v2, v2, v9

    int-to-float v4, v8

    mul-float v4, v4, v7

    add-float/2addr v2, v4

    .line 122
    iget-object v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mCurColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 123
    iget-object v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 124
    iget-object v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 126
    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mRadius:I

    int-to-float v2, v2

    mul-float v7, v7, v3

    add-float/2addr v2, v7

    .line 127
    iget-object v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mStrokeSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 128
    iget-object v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sub-float/2addr v2, v3

    .line 129
    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 133
    :cond_1
    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mCurColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 134
    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mStrokeSize:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 135
    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 136
    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 138
    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 139
    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mInnerRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method private drawUnchecked(Landroid/graphics/Canvas;)V
    .locals 11

    .line 144
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    .line 145
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    .line 147
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 148
    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mStrokeSize:I

    int-to-float v3, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 149
    iget v5, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mRadius:I

    sub-int v6, v5, v2

    iget v7, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mInnerRadius:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    int-to-float v8, v5

    sub-float/2addr v8, v3

    int-to-float v9, v5

    add-float/2addr v8, v9

    int-to-float v9, v2

    sub-float/2addr v8, v9

    int-to-float v9, v7

    sub-float/2addr v8, v9

    div-float/2addr v6, v8

    .line 151
    iget v8, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mAnimProgress:F

    const/high16 v9, 0x3f800000    # 1.0f

    cmpg-float v10, v8, v6

    if-gez v10, :cond_0

    div-float/2addr v8, v6

    sub-int/2addr v5, v2

    int-to-float v2, v5

    mul-float v2, v2, v8

    int-to-float v4, v7

    sub-float/2addr v9, v8

    mul-float v4, v4, v9

    add-float/2addr v2, v4

    .line 155
    iget-object v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mPrevColor:I

    iget v6, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mCurColor:I

    invoke-static {v5, v6, v8}, Lcom/conceptglobal/imaterialdesign/util/ColorUtil;->getMiddleColor(IIF)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 156
    iget-object v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 157
    iget-object v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 159
    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mRadius:I

    int-to-float v2, v2

    mul-float v9, v9, v3

    add-float/2addr v2, v9

    .line 160
    iget-object v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mStrokeSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 161
    iget-object v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sub-float/2addr v2, v3

    .line 162
    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    sub-float/2addr v8, v6

    sub-float/2addr v9, v6

    div-float/2addr v8, v9

    int-to-float v2, v5

    mul-float v6, v3, v8

    add-float/2addr v2, v6

    int-to-float v5, v5

    sub-float/2addr v5, v3

    mul-float v5, v5, v8

    .line 169
    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mCurColor:I

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 170
    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mPaint:Landroid/graphics/Paint;

    sub-float v6, v2, v5

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 171
    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    add-float/2addr v2, v5

    div-float/2addr v2, v4

    .line 172
    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 176
    :cond_1
    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mCurColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 177
    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mStrokeSize:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 178
    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 179
    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method private resetAnimation()V
    .locals 2

    .line 225
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mStartTime:J

    const/4 v0, 0x0

    .line 226
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mAnimProgress:F

    return-void
.end method

.method private update()V
    .locals 5

    .line 265
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 266
    iget-wide v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mAnimDuration:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mAnimProgress:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 269
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mRunning:Z

    .line 271
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mUpdater:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 274
    :cond_1
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 94
    iget-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mChecked:Z

    if-eqz v0, :cond_0

    .line 95
    invoke-direct {p0, p1}, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->drawChecked(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 97
    :cond_0
    invoke-direct {p0, p1}, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->drawUnchecked(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mWidth:I

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mHeight:I

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public isAnimEnable()Z
    .locals 1

    .line 64
    iget-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mAnimEnable:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 246
    iget-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mRunning:Z

    return v0
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 3

    const v0, 0x10100a0

    .line 185
    invoke-static {p1, v0}, Lcom/conceptglobal/imaterialdesign/util/ViewUtil;->hasState([II)Z

    move-result v0

    .line 186
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mStrokeColor:Landroid/content/res/ColorStateList;

    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mCurColor:I

    invoke-virtual {v1, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    .line 189
    iget-boolean v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mChecked:Z

    const/4 v2, 0x1

    if-eq v1, v0, :cond_1

    .line 190
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mChecked:Z

    .line 192
    iget-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mInEditMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mAnimEnable:Z

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->start()V

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 196
    :goto_0
    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mCurColor:I

    if-eq v1, p1, :cond_3

    .line 197
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mCurColor:I

    goto :goto_1

    :cond_2
    move v0, p1

    :goto_1
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mPrevColor:I

    .line 198
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mCurColor:I

    goto :goto_2

    .line 201
    :cond_3
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->isRunning()Z

    move-result v1

    if-nez v1, :cond_4

    .line 202
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mPrevColor:I

    :cond_4
    move v2, v0

    :goto_2
    return v2
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
    .locals 1

    const/4 v0, 0x1

    .line 251
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mRunning:Z

    .line 252
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setAnimEnable(Z)V
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mAnimEnable:Z

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setInEditMode(Z)V
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mInEditMode:Z

    return-void
.end method

.method public start()V
    .locals 5

    .line 231
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->resetAnimation()V

    .line 233
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mUpdater:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 234
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->invalidateSelf()V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 239
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mRunning:Z

    .line 240
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->mUpdater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 241
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->invalidateSelf()V

    return-void
.end method

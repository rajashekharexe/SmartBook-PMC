.class public Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CheckBoxDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable$Builder;
    }
.end annotation


# static fields
.field private static final FILL_TIME:F = 0.4f

.field private static final TICK_DATA:[F


# instance fields
.field private mAnimDuration:I

.field private mAnimEnable:Z

.field private mAnimProgress:F

.field private mBoxRect:Landroid/graphics/RectF;

.field private mBoxSize:I

.field private mChecked:Z

.field private mCornerRadius:I

.field private mCurColor:I

.field private mHeight:I

.field private mInEditMode:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mPrevColor:I

.field private mRunning:Z

.field private mStartTime:J

.field private mStrokeColor:Landroid/content/res/ColorStateList;

.field private mStrokeSize:I

.field private mTickColor:I

.field private mTickPath:Landroid/graphics/Path;

.field private mTickPathProgress:F

.field private final mUpdater:Ljava/lang/Runnable;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    .line 49
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->TICK_DATA:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3ef22d0e    # 0.473f
        0x3ebbe76d    # 0.367f
        0x3f56c8b4    # 0.839f
        0x3f800000    # 1.0f
        0x3e53f7cf    # 0.207f
    .end array-data
.end method

.method private constructor <init>(IIIIILandroid/content/res/ColorStateList;II)V
    .locals 2

    .line 52
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mRunning:Z

    const/high16 v1, -0x40800000    # -1.0f

    .line 43
    iput v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mTickPathProgress:F

    .line 44
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mChecked:Z

    .line 46
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mInEditMode:Z

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mAnimEnable:Z

    .line 332
    new-instance v1, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable$1;-><init>(Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;)V

    iput-object v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mUpdater:Ljava/lang/Runnable;

    .line 53
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mWidth:I

    .line 54
    iput p2, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mHeight:I

    .line 55
    iput p3, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mBoxSize:I

    .line 56
    iput p4, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mCornerRadius:I

    .line 57
    iput p5, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mStrokeSize:I

    .line 58
    iput-object p6, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mStrokeColor:Landroid/content/res/ColorStateList;

    .line 59
    iput p7, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mTickColor:I

    .line 60
    iput p8, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mAnimDuration:I

    .line 62
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mPaint:Landroid/graphics/Paint;

    .line 63
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 65
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mBoxRect:Landroid/graphics/RectF;

    .line 66
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mTickPath:Landroid/graphics/Path;

    return-void
.end method

.method synthetic constructor <init>(IIIIILandroid/content/res/ColorStateList;IILcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable$1;)V
    .locals 0

    .line 23
    invoke-direct/range {p0 .. p8}, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;-><init>(IIIIILandroid/content/res/ColorStateList;II)V

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->update()V

    return-void
.end method

.method private drawChecked(Landroid/graphics/Canvas;)V
    .locals 9

    .line 169
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mBoxSize:I

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mStrokeSize:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v5, v0

    .line 170
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mBoxRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mStrokeSize:I

    int-to-float v1, v1

    add-float v3, v0, v1

    .line 171
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mBoxRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mStrokeSize:I

    int-to-float v1, v1

    add-float v4, v0, v1

    .line 173
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mAnimProgress:F

    const v1, 0x3ecccccd    # 0.4f

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    div-float/2addr v0, v1

    .line 176
    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mBoxSize:I

    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mStrokeSize:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    mul-float v1, v1, v0

    int-to-float v2, v2

    div-float/2addr v2, v3

    div-float v3, v1, v3

    add-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    sub-float/2addr v2, v3

    .line 179
    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mPrevColor:I

    iget v5, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mCurColor:I

    invoke-static {v4, v5, v0}, Lcom/conceptglobal/imaterialdesign/util/ColorUtil;->getMiddleColor(IIF)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 180
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 181
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 182
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mBoxRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    add-float v4, v0, v2

    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mBoxRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    add-float v5, v0, v2

    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mBoxRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    sub-float v6, v0, v2

    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mBoxRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float v7, v0, v2

    iget-object v8, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 184
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mStrokeSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 185
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mBoxRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mCornerRadius:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_0
    sub-float/2addr v0, v1

    const v1, 0x3f19999a    # 0.6f

    div-float v6, v0, v1

    .line 190
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mCurColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 191
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mStrokeSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 192
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 193
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mBoxRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mCornerRadius:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v7, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 195
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 196
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 197
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 198
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mTickColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 200
    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mTickPath:Landroid/graphics/Path;

    const/4 v7, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->getTickPath(Landroid/graphics/Path;FFFFZ)Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mCurColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 205
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mStrokeSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 206
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 207
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mBoxRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mCornerRadius:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v6, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 209
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 210
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 211
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 212
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mTickColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 214
    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mTickPath:Landroid/graphics/Path;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->getTickPath(Landroid/graphics/Path;FFFFZ)Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method private drawUnchecked(Landroid/graphics/Canvas;)V
    .locals 9

    .line 219
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mAnimProgress:F

    const v1, 0x3f19999a    # 0.6f

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    .line 221
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mBoxSize:I

    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mStrokeSize:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    int-to-float v6, v0

    .line 222
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mBoxRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mStrokeSize:I

    int-to-float v2, v2

    add-float v4, v0, v2

    .line 223
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mBoxRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mStrokeSize:I

    int-to-float v2, v2

    add-float v5, v0, v2

    .line 224
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mAnimProgress:F

    div-float v7, v0, v1

    .line 226
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mPrevColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 227
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mStrokeSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 228
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 229
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mBoxRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mCornerRadius:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 231
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 232
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 233
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 234
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mTickColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 236
    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mTickPath:Landroid/graphics/Path;

    const/4 v8, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->getTickPath(Landroid/graphics/Path;FFFFZ)Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_0
    const v1, 0x3ecccccd    # 0.4f

    add-float/2addr v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v0, v2

    div-float/2addr v0, v1

    .line 240
    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mBoxSize:I

    iget v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mStrokeSize:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    sub-float/2addr v2, v0

    mul-float v1, v1, v2

    int-to-float v2, v3

    div-float/2addr v2, v4

    div-float v3, v1, v4

    add-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    sub-float/2addr v2, v3

    .line 243
    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mPrevColor:I

    iget v5, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mCurColor:I

    invoke-static {v4, v5, v0}, Lcom/conceptglobal/imaterialdesign/util/ColorUtil;->getMiddleColor(IIF)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 244
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 245
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 246
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mBoxRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    add-float v4, v0, v2

    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mBoxRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    add-float v5, v0, v2

    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mBoxRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    sub-float v6, v0, v2

    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mBoxRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float v7, v0, v2

    iget-object v8, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 248
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mStrokeSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 249
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mBoxRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mCornerRadius:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mCurColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 254
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mStrokeSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 255
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 256
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mBoxRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mCornerRadius:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method private getTickPath(Landroid/graphics/Path;FFFFZ)Landroid/graphics/Path;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p5

    .line 120
    iget v3, v0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mTickPathProgress:F

    cmpl-float v3, v3, v2

    if-nez v3, :cond_0

    return-object v1

    .line 123
    :cond_0
    iput v2, v0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mTickPathProgress:F

    .line 125
    sget-object v3, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->TICK_DATA:[F

    const/4 v4, 0x0

    aget v4, v3, v4

    mul-float v4, v4, p4

    add-float v4, p2, v4

    const/4 v5, 0x1

    .line 126
    aget v5, v3, v5

    mul-float v5, v5, p4

    add-float v5, p3, v5

    const/4 v6, 0x2

    .line 127
    aget v6, v3, v6

    mul-float v6, v6, p4

    add-float v6, p2, v6

    const/4 v7, 0x3

    .line 128
    aget v7, v3, v7

    mul-float v7, v7, p4

    add-float v7, p3, v7

    const/4 v8, 0x4

    .line 129
    aget v8, v3, v8

    mul-float v8, v8, p4

    add-float v8, p2, v8

    const/4 v9, 0x5

    .line 130
    aget v3, v3, v9

    mul-float v3, v3, p4

    add-float v3, p3, v3

    sub-float v9, v4, v6

    float-to-double v9, v9

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    .line 132
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    sub-float v15, v5, v7

    move/from16 v16, v7

    move/from16 p2, v8

    float-to-double v7, v15

    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v17

    add-double v13, v13, v17

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    double-to-float v13, v13

    .line 133
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    add-double/2addr v9, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v7, v7

    add-float/2addr v7, v13

    div-float/2addr v13, v7

    .line 136
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Path;->reset()V

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz p6, :cond_2

    .line 139
    invoke-virtual {v1, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    cmpg-float v8, v2, v13

    if-gez v8, :cond_1

    div-float/2addr v2, v13

    sub-float/2addr v7, v2

    mul-float v4, v4, v7

    mul-float v6, v6, v2

    add-float/2addr v4, v6

    mul-float v5, v5, v7

    mul-float v7, v16, v2

    add-float/2addr v5, v7

    .line 143
    invoke-virtual {v1, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    :cond_1
    sub-float/2addr v2, v13

    sub-float v4, v7, v13

    div-float/2addr v2, v4

    move/from16 v8, v16

    .line 147
    invoke-virtual {v1, v6, v8}, Landroid/graphics/Path;->lineTo(FF)V

    sub-float/2addr v7, v2

    mul-float v6, v6, v7

    mul-float v4, p2, v2

    add-float/2addr v6, v4

    mul-float v7, v7, v8

    mul-float v3, v3, v2

    add-float/2addr v7, v3

    .line 148
    invoke-virtual {v1, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    :cond_2
    move/from16 v9, p2

    move/from16 v8, v16

    .line 152
    invoke-virtual {v1, v9, v3}, Landroid/graphics/Path;->moveTo(FF)V

    cmpg-float v10, v2, v13

    if-gez v10, :cond_3

    div-float/2addr v2, v13

    .line 156
    invoke-virtual {v1, v6, v8}, Landroid/graphics/Path;->lineTo(FF)V

    sub-float/2addr v7, v2

    mul-float v4, v4, v7

    mul-float v6, v6, v2

    add-float/2addr v4, v6

    mul-float v5, v5, v7

    mul-float v7, v8, v2

    add-float/2addr v5, v7

    .line 157
    invoke-virtual {v1, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    :cond_3
    sub-float/2addr v2, v13

    sub-float v4, v7, v13

    div-float/2addr v2, v4

    sub-float/2addr v7, v2

    mul-float v6, v6, v7

    mul-float v4, v9, v2

    add-float/2addr v6, v4

    mul-float v7, v7, v8

    mul-float v3, v3, v2

    add-float/2addr v7, v3

    .line 161
    invoke-virtual {v1, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_0
    return-object v1
.end method

.method private resetAnimation()V
    .locals 2

    .line 302
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mStartTime:J

    const/4 v0, 0x0

    .line 303
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mAnimProgress:F

    return-void
.end method

.method private update()V
    .locals 5

    .line 342
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 343
    iget-wide v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mAnimDuration:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mAnimProgress:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 346
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mRunning:Z

    .line 348
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 349
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mUpdater:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 351
    :cond_1
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 113
    iget-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mChecked:Z

    if-eqz v0, :cond_0

    .line 114
    invoke-direct {p0, p1}, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->drawChecked(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 116
    :cond_0
    invoke-direct {p0, p1}, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->drawUnchecked(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 88
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 83
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mWidth:I

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .line 98
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mHeight:I

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .line 93
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public isAnimEnable()Z
    .locals 1

    .line 78
    iget-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mAnimEnable:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 323
    iget-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mRunning:Z

    return v0
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 5

    .line 108
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mBoxRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mBoxSize:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    iget v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mBoxSize:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    iget v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mBoxSize:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result p1

    iget v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mBoxSize:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr p1, v4

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method protected onStateChange([I)Z
    .locals 3

    const v0, 0x10100a0

    .line 262
    invoke-static {p1, v0}, Lcom/conceptglobal/imaterialdesign/util/ViewUtil;->hasState([II)Z

    move-result v0

    .line 263
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mStrokeColor:Landroid/content/res/ColorStateList;

    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mCurColor:I

    invoke-virtual {v1, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    .line 266
    iget-boolean v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mChecked:Z

    const/4 v2, 0x1

    if-eq v1, v0, :cond_1

    .line 267
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mChecked:Z

    .line 269
    iget-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mInEditMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mAnimEnable:Z

    if-eqz v0, :cond_0

    .line 270
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->start()V

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 273
    :goto_0
    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mCurColor:I

    if-eq v1, p1, :cond_3

    .line 274
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mCurColor:I

    goto :goto_1

    :cond_2
    move v0, p1

    :goto_1
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mPrevColor:I

    .line 275
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mCurColor:I

    goto :goto_2

    .line 278
    :cond_3
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->isRunning()Z

    move-result v1

    if-nez v1, :cond_4

    .line 279
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mPrevColor:I

    :cond_4
    move v2, v0

    :goto_2
    return v2
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
    .locals 1

    const/4 v0, 0x1

    .line 328
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mRunning:Z

    .line 329
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setAnimEnable(Z)V
    .locals 0

    .line 74
    iput-boolean p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mAnimEnable:Z

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setInEditMode(Z)V
    .locals 0

    .line 70
    iput-boolean p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mInEditMode:Z

    return-void
.end method

.method public start()V
    .locals 5

    .line 308
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->resetAnimation()V

    .line 310
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mUpdater:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 311
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->invalidateSelf()V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 316
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mRunning:Z

    .line 317
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->mUpdater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 318
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->invalidateSelf()V

    return-void
.end method

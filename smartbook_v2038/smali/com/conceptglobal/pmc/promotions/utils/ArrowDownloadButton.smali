.class public Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;
.super Landroid/view/View;
.source "ArrowDownloadButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;
    }
.end annotation


# static fields
.field private static final ANGLE:I = 0x168

.field private static final ARC_WIDTH:F = 20.0f

.field private static final ARC_WIDTH_I:Ljava/lang/String; = "arc_width"

.field private static final ARROW_WIDTH:F = 10.0f

.field private static final ARROW_WIDTH_I:Ljava/lang/String; = "arrow_width"

.field private static final BEZIER_I:Ljava/lang/String; = "bezier"

.field private static final BLUE_ONE:I

.field private static final COMPLETE_DURATION:I = 0x14

.field private static final COUNT_I:Ljava/lang/String; = "count"

.field private static final CURRENT_TIME_I:Ljava/lang/String; = "current_time"

.field private static final DOWN_STEP:F = 7.5f

.field private static final DOWN_STEP_I:Ljava/lang/String; = "down_step"

.field private static final DURATION:I = 0x14

.field private static final ELASTICITY_STEP:F = 10.0f

.field private static final ELASTICITY_STEP_I:Ljava/lang/String; = "elasticity_step"

.field private static final HOOK_COUNT:F = 4.0f

.field private static final HOOK_COUNT_I:Ljava/lang/String; = "hook_count"

.field private static final HOOK_STEP_Y:F = 15.0f

.field private static final HOOK_STEP_Y_I:Ljava/lang/String; = "hook_step"

.field private static final INSTANCE_STATE:Ljava/lang/String; = "instance_state"

.field private static final IS_ANIMATING_I:Ljava/lang/String; = "is_animating"

.field private static final IS_COMPLETED_I:Ljava/lang/String; = "is_completed"

.field private static final IS_END_I:Ljava/lang/String; = "is_end"

.field private static final IS_FIRST_I:Ljava/lang/String; = "is_first"

.field private static final IS_LOADING_I:Ljava/lang/String; = "is_loading"

.field private static final JUMP_STEP:F = 45.0f

.field private static final JUMP_STEP_I:Ljava/lang/String; = "jump_step"

.field private static final LENGTH_I:Ljava/lang/String; = "length"

.field private static final LENGTH_X_I:Ljava/lang/String; = "length_x"

.field private static final LENGTH_Y_I:Ljava/lang/String; = "length_y"

.field private static final LITTLE_STEP:F = 8.0f

.field private static final LITTLE_STEP_I:Ljava/lang/String; = "little_step"

.field private static final LOADING_WIDTH:F = 10.0f

.field private static final LOADING_WIDTH_I:Ljava/lang/String; = "loading_width"

.field private static final MAX_WAVE_HEIGHT:F = 10.0f

.field private static final MAX_WAVE_HEIGHT_I:Ljava/lang/String; = "max_wave_height"

.field private static final MIN_WAVE_HEIGHT:F = 5.0f

.field private static final MIN_WAVE_HEIGHT_I:Ljava/lang/String; = "min_wave_height"

.field private static final OFFSET:F = 10.0f

.field private static final PROGRESS:I = 0x64

.field private static final PROGRESS_I:Ljava/lang/String; = "progress"

.field private static final RADIUS:F = 180.0f

.field private static final RADIUS_I:Ljava/lang/String; = "radius"

.field private static final ROPE_HEAD_STEP_Y:F = 17.0f

.field private static final ROPE_HEAD_STEP_Y_I:Ljava/lang/String; = "rope_head_step_y"

.field private static final ROPE_STEP_X:F = 30.0f

.field private static final ROPE_STEP_X_I:Ljava/lang/String; = "rope_step_x"

.field private static final ROPE_STEP_Y:F = 32.0f

.field private static final ROPE_STEP_Y_I:Ljava/lang/String; = "rope_step_y"

.field private static final SMALL_RADIUS:F = 5.0f

.field private static final SMALL_RADIUS_I:Ljava/lang/String; = "small_radius"

.field private static final STEP:F = 2.0f

.field private static final STEP_I:Ljava/lang/String; = "step"

.field private static final TEXT_SIZE:F = 40.0f

.field private static final TEXT_SIZE_I:Ljava/lang/String; = "text_size"

.field private static final TEXT_Y:F = 67.5f

.field private static final TEXT_Y_I:Ljava/lang/String; = "text_y"

.field private static final TIME_STEP:F = 20.0f

.field private static final TRI_POINT_NUMBER:I = 0x11

.field private static final TRI_STEP:F = 16.875f

.field private static final TRI_STEP_I:Ljava/lang/String; = "tri_step"

.field private static final TRI_WIDTH:F = 10.0f

.field private static final TRI_WIDTH_I:Ljava/lang/String; = "tri_width"

.field private static final WAVE_HEIGHT_I:Ljava/lang/String; = "wave_height"

.field private static final WHILE:I

.field private static final X_I:Ljava/lang/String; = "x"

.field private static final Y_I:Ljava/lang/String; = "y"


# instance fields
.field private a:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

.field private arcPaint:Landroid/graphics/Paint;

.field private arcWidth:F

.field private arrowPaint:Landroid/graphics/Paint;

.field private arrowPath:Landroid/graphics/Path;

.field private arrowWidth:F

.field private b:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

.field private bezier:Z

.field private c:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

.field private count:I

.field private currentTime:I

.field private d:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

.field private downStep:F

.field private e:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

.field private elasticityStep:F

.field private hookCount:I

.field private hookStepY:F

.field private isAnimating:Z

.field private isCompleted:Z

.field private isEnd:Z

.field private isFirst:Z

.field private isLoading:Z

.field private jumpPoint:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

.field private jumpStep:F

.field private length:F

.field lengthX:F

.field lengthY:F

.field private littleStep:F

.field private loadingPaint:Landroid/graphics/Paint;

.field private loadingWidth:F

.field private maxWaveHeight:F

.field private minWaveHeight:F

.field private oval:Landroid/graphics/RectF;

.field private progress:F

.field private radius:F

.field private ropeHeadStepY:F

.field private ropeStepX:F

.field private ropeStepY:F

.field private smallPaint:Landroid/graphics/Paint;

.field private smallRadius:F

.field private step:F

.field private textPaint:Landroid/graphics/Paint;

.field private textPath:Landroid/graphics/Path;

.field private textSize:F

.field private textY:F

.field private triPaint:Landroid/graphics/Paint;

.field private triPath:Landroid/graphics/Path;

.field private triPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;",
            ">;"
        }
    .end annotation
.end field

.field private triStep:F

.field private triWidth:F

.field private waveHeight:F

.field private x:F

.field private y:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xff

    .line 22
    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->BLUE_ONE:I

    const/16 v0, 0xa4

    const/16 v1, 0xf2

    const/16 v2, 0x2e

    .line 23
    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->WHILE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 177
    invoke-direct {p0, p1, v0}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 181
    invoke-direct {p0, p1, p2, v0}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 185
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p1, 0x44098000    # 550.0f

    .line 99
    iput p1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->x:F

    .line 100
    iput p1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->y:F

    const/high16 p1, 0x43340000    # 180.0f

    .line 101
    iput p1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->radius:F

    const/high16 p1, 0x41200000    # 10.0f

    .line 102
    iput p1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->maxWaveHeight:F

    const/high16 p2, 0x40a00000    # 5.0f

    .line 103
    iput p2, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->minWaveHeight:F

    const/high16 p3, 0x42870000    # 67.5f

    .line 104
    iput p3, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->textY:F

    const/high16 p3, 0x40000000    # 2.0f

    .line 105
    iput p3, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->step:F

    .line 106
    iput p1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->elasticityStep:F

    const/high16 p3, 0x41f00000    # 30.0f

    .line 107
    iput p3, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->ropeStepX:F

    const/high16 p3, 0x42000000    # 32.0f

    .line 108
    iput p3, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->ropeStepY:F

    const/high16 p3, 0x41880000    # 17.0f

    .line 109
    iput p3, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->ropeHeadStepY:F

    const/high16 p3, 0x42340000    # 45.0f

    .line 110
    iput p3, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->jumpStep:F

    const/high16 p3, 0x40f00000    # 7.5f

    .line 111
    iput p3, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->downStep:F

    const/high16 p3, 0x41870000    # 16.875f

    .line 112
    iput p3, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->triStep:F

    const/high16 p3, 0x41700000    # 15.0f

    .line 113
    iput p3, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->hookStepY:F

    const/high16 p3, 0x41000000    # 8.0f

    .line 114
    iput p3, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->littleStep:F

    .line 115
    iput p2, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->smallRadius:F

    const/high16 p3, 0x42200000    # 40.0f

    .line 116
    iput p3, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->textSize:F

    const/high16 p3, 0x41a00000    # 20.0f

    .line 117
    iput p3, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->arcWidth:F

    .line 118
    iput p1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->arrowWidth:F

    .line 119
    iput p1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->triWidth:F

    .line 120
    iput p1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->loadingWidth:F

    .line 142
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->triPoints:Ljava/util/List;

    const/4 p1, 0x1

    .line 144
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->isFirst:Z

    const/4 p1, 0x0

    .line 145
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->isAnimating:Z

    .line 146
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->bezier:Z

    .line 147
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->isLoading:Z

    .line 148
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->isCompleted:Z

    .line 149
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->isEnd:Z

    .line 150
    iput p1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->count:I

    .line 152
    iput p1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->currentTime:I

    .line 153
    iput p2, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->waveHeight:F

    const/4 p2, 0x0

    .line 154
    iput p2, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->progress:F

    .line 155
    iput p1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->hookCount:I

    .line 156
    iget p1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->radius:F

    const/high16 p2, 0x40400000    # 3.0f

    mul-float p3, p1, p2

    const/high16 v0, 0x40800000    # 4.0f

    div-float/2addr p3, v0

    iput p3, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->lengthX:F

    mul-float p1, p1, p2

    div-float/2addr p1, v0

    .line 157
    iput p1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->lengthY:F

    .line 186
    invoke-direct {p0}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->init()V

    return-void
.end method

.method private afterCompleted(Landroid/graphics/Canvas;)V
    .locals 6

    .line 449
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->x:F

    iget v1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->y:F

    iget v2, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->radius:F

    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->loadingPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 450
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->hookCount:I

    int-to-float v0, v0

    const/4 v1, 0x1

    const/high16 v2, 0x40400000    # 3.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->e:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

    iget v2, v0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->y:F

    iget v3, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->littleStep:F

    add-float/2addr v2, v3

    iput v2, v0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->y:F

    .line 452
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->c:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

    iget v2, v0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->x:F

    iget v3, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->littleStep:F

    sub-float/2addr v2, v3

    iput v2, v0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->x:F

    .line 453
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->d:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

    iget v2, v0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->x:F

    iget v3, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->littleStep:F

    add-float/2addr v2, v3

    iput v2, v0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->x:F

    .line 454
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->d:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

    iget v2, v0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->y:F

    iget v3, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->littleStep:F

    sub-float/2addr v2, v3

    iput v2, v0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->y:F

    const/4 v0, 0x0

    .line 455
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->isCompleted:Z

    .line 456
    iput-boolean v1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->isEnd:Z

    goto :goto_0

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->e:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

    iget v3, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->x:F

    iput v3, v0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->x:F

    .line 459
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->e:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

    iget v3, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->y:F

    iget v4, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->hookStepY:F

    iget v5, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->hookCount:I

    add-int/2addr v5, v1

    int-to-float v5, v5

    mul-float v4, v4, v5

    add-float/2addr v3, v4

    iput v3, v0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->y:F

    .line 460
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->lengthX:F

    mul-float v0, v0, v2

    const/high16 v3, 0x40800000    # 4.0f

    div-float/2addr v0, v3

    iput v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->lengthX:F

    .line 461
    iget-object v4, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->c:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

    iget v5, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->x:F

    mul-float v0, v0, v2

    div-float/2addr v0, v3

    sub-float/2addr v5, v0

    iput v5, v4, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->x:F

    .line 462
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->c:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

    iget v2, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->y:F

    iput v2, v0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->y:F

    .line 463
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->d:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

    iget v2, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->x:F

    iget v3, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->lengthY:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->radius:F

    const/high16 v4, 0x41000000    # 8.0f

    div-float/2addr v3, v4

    iget v4, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->hookCount:I

    add-int/2addr v4, v1

    int-to-float v4, v4

    mul-float v3, v3, v4

    sub-float/2addr v2, v3

    iput v2, v0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->x:F

    .line 464
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->d:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

    iget v2, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->y:F

    iget v3, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->hookStepY:F

    iget v4, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->hookCount:I

    add-int/2addr v4, v1

    int-to-float v4, v4

    mul-float v3, v3, v4

    sub-float/2addr v2, v3

    iput v2, v0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->y:F

    .line 465
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->hookCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->hookCount:I

    .line 467
    :goto_0
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->drawArrowOrHook(Landroid/graphics/Canvas;)V

    const-wide/16 v0, 0x14

    .line 468
    invoke-virtual {p0, v0, v1}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->postInvalidateDelayed(J)V

    return-void
.end method

.method private calculateTri(FF)F
    .locals 4

    .line 534
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->progress:F

    const/high16 v1, 0x42040000    # 33.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    const/high16 v0, 0x40a00000    # 5.0f

    .line 535
    iput v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->waveHeight:F

    goto :goto_0

    :cond_0
    const/high16 v1, 0x42840000    # 66.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 537
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->maxWaveHeight:F

    iput v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->waveHeight:F

    goto :goto_0

    .line 539
    :cond_1
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->minWaveHeight:F

    iput v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->waveHeight:F

    .line 541
    :goto_0
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->waveHeight:F

    float-to-double v0, v0

    add-float/2addr p1, p2

    float-to-double p1, p1

    const-wide v2, 0x3fa41b2f769cf0e0L    # 0.039269908169872414

    mul-double p1, p1, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    mul-double v0, v0, p1

    double-to-float p1, v0

    return p1
.end method

.method private convert(F)F
    .locals 1

    .line 545
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->radius:F

    mul-float v0, v0, p1

    const/high16 p1, 0x43340000    # 180.0f

    div-float/2addr v0, p1

    return v0
.end method

.method private drawArrowOrHook(Landroid/graphics/Canvas;)V
    .locals 4

    .line 429
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->arrowPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 430
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->arrowPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->e:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

    iget v1, v1, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->x:F

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->e:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

    iget v2, v2, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 431
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->arrowPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->c:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

    iget v1, v1, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->x:F

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->c:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

    iget v2, v2, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 432
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->arrowPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->arrowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 433
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->arrowPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 434
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->arrowPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->e:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

    iget v1, v1, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->x:F

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->e:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

    iget v2, v2, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 435
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->arrowPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->d:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

    iget v1, v1, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->x:F

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->d:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

    iget v2, v2, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 436
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->arrowPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->arrowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 438
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->c:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

    iget v0, v0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->x:F

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->c:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

    iget v1, v1, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->y:F

    iget v2, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->smallRadius:F

    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->smallPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 439
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->d:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

    iget v0, v0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->x:F

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->d:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

    iget v1, v1, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->y:F

    iget v2, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->smallRadius:F

    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->smallPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 440
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->e:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

    iget v0, v0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->x:F

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->e:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

    iget v1, v1, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->y:F

    iget v2, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->smallRadius:F

    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->smallPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private init()V
    .locals 5

    .line 235
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->getWidth()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->getHeight()I

    move-result v0

    :goto_0
    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    const/high16 v1, 0x41200000    # 10.0f

    mul-float v2, v0, v1

    const/high16 v3, 0x43340000    # 180.0f

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    sub-float/2addr v0, v2

    const/high16 v2, 0x40c00000    # 6.0f

    sub-float/2addr v0, v2

    .line 236
    iput v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->radius:F

    .line 237
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    int-to-float v0, v0

    iput v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->x:F

    .line 238
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    int-to-float v0, v0

    iput v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->y:F

    .line 239
    invoke-direct {p0, v1}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->convert(F)F

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->maxWaveHeight:F

    const/high16 v0, 0x40a00000    # 5.0f

    .line 240
    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->convert(F)F

    move-result v2

    iput v2, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->minWaveHeight:F

    const/high16 v2, 0x42870000    # 67.5f

    .line 241
    invoke-direct {p0, v2}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->convert(F)F

    move-result v2

    iput v2, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->textY:F

    const/high16 v2, 0x40000000    # 2.0f

    .line 242
    invoke-direct {p0, v2}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->convert(F)F

    move-result v3

    iput v3, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->step:F

    .line 243
    invoke-direct {p0, v1}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->convert(F)F

    move-result v3

    iput v3, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->elasticityStep:F

    const/high16 v3, 0x41f00000    # 30.0f

    .line 244
    invoke-direct {p0, v3}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->convert(F)F

    move-result v3

    iput v3, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->ropeStepX:F

    const/high16 v3, 0x42000000    # 32.0f

    .line 245
    invoke-direct {p0, v3}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->convert(F)F

    move-result v3

    iput v3, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->ropeStepY:F

    const/high16 v3, 0x41880000    # 17.0f

    .line 246
    invoke-direct {p0, v3}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->convert(F)F

    move-result v3

    iput v3, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->ropeHeadStepY:F

    const/high16 v3, 0x42340000    # 45.0f

    .line 247
    invoke-direct {p0, v3}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->convert(F)F

    move-result v3

    iput v3, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->jumpStep:F

    const/high16 v3, 0x40f00000    # 7.5f

    .line 248
    invoke-direct {p0, v3}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->convert(F)F

    move-result v3

    iput v3, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->downStep:F

    const/high16 v3, 0x41870000    # 16.875f

    .line 249
    invoke-direct {p0, v3}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->convert(F)F

    move-result v3

    iput v3, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->triStep:F

    const/high16 v3, 0x41700000    # 15.0f

    .line 250
    invoke-direct {p0, v3}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->convert(F)F

    move-result v3

    iput v3, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->hookStepY:F

    const/high16 v3, 0x41000000    # 8.0f

    .line 251
    invoke-direct {p0, v3}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->convert(F)F

    move-result v3

    iput v3, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->littleStep:F

    .line 252
    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->convert(F)F

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->smallRadius:F

    const/high16 v0, 0x42200000    # 40.0f

    .line 253
    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->convert(F)F

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->textSize:F

    const/high16 v0, 0x41a00000    # 20.0f

    .line 254
    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->convert(F)F

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->arcWidth:F

    .line 255
    invoke-direct {p0, v1}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->convert(F)F

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->arrowWidth:F

    .line 256
    invoke-direct {p0, v1}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->convert(F)F

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->triWidth:F

    .line 257
    invoke-direct {p0, v1}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->convert(F)F

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->loadingWidth:F

    .line 258
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->radius:F

    const/high16 v1, 0x40400000    # 3.0f

    mul-float v3, v0, v1

    const/high16 v4, 0x40800000    # 4.0f

    div-float/2addr v3, v4

    iput v3, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->lengthX:F

    mul-float v0, v0, v1

    div-float/2addr v0, v4

    .line 259
    iput v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->lengthY:F

    .line 261
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->arrowPath:Landroid/graphics/Path;

    .line 262
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->triPath:Landroid/graphics/Path;

    .line 263
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->textPath:Landroid/graphics/Path;

    .line 264
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->oval:Landroid/graphics/RectF;

    .line 265
    iget v1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->x:F

    iget v3, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->radius:F

    sub-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 266
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->oval:Landroid/graphics/RectF;

    iget v1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->y:F

    iget v3, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->radius:F

    sub-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 267
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->oval:Landroid/graphics/RectF;

    iget v1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->x:F

    iget v3, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->radius:F

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 268
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->oval:Landroid/graphics/RectF;

    iget v1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->y:F

    iget v3, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->radius:F

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 269
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->radius:F

    div-float/2addr v0, v2

    iput v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->length:F

    .line 270
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->initializePaints()V

    .line 271
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->initializePoints()V

    return-void
.end method

.method private loading(Landroid/graphics/Canvas;)V
    .locals 9

    .line 363
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->triPoints:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

    :goto_0
    const/high16 v2, 0x41a00000    # 20.0f

    const/16 v3, 0x11

    if-ge v1, v3, :cond_0

    .line 366
    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->triPoints:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

    .line 367
    iget v4, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->x:F

    const/high16 v5, 0x40400000    # 3.0f

    iget v6, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->radius:F

    mul-float v6, v6, v5

    const/high16 v5, 0x40800000    # 4.0f

    div-float/2addr v6, v5

    sub-float/2addr v4, v6

    iget v5, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->triStep:F

    int-to-float v6, v1

    mul-float v5, v5, v6

    add-float/2addr v4, v5

    iput v4, v3, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->x:F

    .line 368
    iget v4, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->y:F

    mul-float v6, v6, v2

    iget v2, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->currentTime:I

    int-to-float v2, v2

    invoke-direct {p0, v6, v2}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->calculateTri(FF)F

    move-result v2

    add-float/2addr v4, v2

    iput v4, v3, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->y:F

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_1
    if-ge v1, v3, :cond_1

    .line 371
    iget-object v4, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->triPoints:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

    .line 372
    iget-object v5, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->triPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 373
    iget-object v5, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->triPath:Landroid/graphics/Path;

    iget v6, v0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->x:F

    iget v0, v0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->y:F

    invoke-virtual {v5, v6, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 374
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->triPath:Landroid/graphics/Path;

    iget v5, v4, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->x:F

    iget v6, v4, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->y:F

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 375
    iget v0, v4, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->x:F

    iget v5, v4, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->y:F

    iget v6, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->smallRadius:F

    iget-object v7, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->smallPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 376
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->triPath:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->triPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    move-object v0, v4

    goto :goto_1

    .line 379
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->textPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->x:F

    iget v3, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->textSize:F

    sub-float/2addr v1, v3

    iget v3, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->y:F

    iget v4, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->textY:F

    add-float/2addr v3, v4

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 380
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->textPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->x:F

    iget v3, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->textSize:F

    add-float/2addr v1, v3

    iget v3, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->y:F

    iget v4, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->textY:F

    add-float/2addr v3, v4

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->progress:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->textPath:Landroid/graphics/Path;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->textPaint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    .line 382
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->currentTime:I

    int-to-float v0, v0

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->currentTime:I

    .line 383
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->progress:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float v0, v0, v1

    .line 384
    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->oval:Landroid/graphics/RectF;

    const/4 v1, 0x0

    sub-float v4, v1, v0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->loadingPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x43870000    # 270.0f

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    const-wide/16 v0, 0x14

    .line 385
    invoke-virtual {p0, v0, v1}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->postInvalidateDelayed(J)V

    return-void
.end method

.method private measure(IZ)I
    .locals 3

    .line 196
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 197
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    if-eqz p2, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->getPaddingRight()I

    move-result v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->getPaddingBottom()I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_1

    goto :goto_2

    :cond_1
    if-eqz p2, :cond_2

    .line 202
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->getSuggestedMinimumWidth()I

    move-result v2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->getSuggestedMinimumHeight()I

    move-result v2

    :goto_1
    add-int/2addr v2, v1

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_4

    if-eqz p2, :cond_3

    .line 206
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_2

    .line 208
    :cond_3
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_2

    :cond_4
    move p1, v2

    :goto_2
    return p1
.end method


# virtual methods
.method public animating()V
    .locals 7

    .line 312
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->count:I

    const/16 v1, 0x13

    const/4 v2, 0x1

    if-ge v0, v1, :cond_4

    .line 313
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->length:F

    const/high16 v1, 0x40400000    # 3.0f

    mul-float v0, v0, v1

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->length:F

    .line 314
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->a:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

    iget v3, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->y:F

    add-float/2addr v3, v0

    iput v3, v1, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->y:F

    .line 315
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->b:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

    iget v1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->y:F

    iget v3, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->length:F

    sub-float/2addr v1, v3

    iput v1, v0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->y:F

    .line 317
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->count:I

    add-int/lit8 v1, v0, 0x1

    rem-int/lit8 v1, v1, 0x3

    if-nez v1, :cond_0

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 318
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->e:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

    iget v1, v0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->y:F

    iget v3, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->step:F

    add-float/2addr v1, v3

    iput v1, v0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->y:F

    .line 319
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->c:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

    iget v1, v0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->y:F

    iget v3, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->step:F

    add-float/2addr v1, v3

    iput v1, v0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->y:F

    .line 320
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->d:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

    iget v1, v0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->y:F

    iget v3, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->step:F

    add-float/2addr v1, v3

    iput v1, v0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->y:F

    .line 322
    :cond_0
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->count:I

    const/16 v1, 0xc

    const/16 v3, 0x8

    if-le v0, v3, :cond_1

    if-ge v0, v1, :cond_1

    .line 323
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->jumpPoint:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

    iget v4, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->x:F

    iput v4, v0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->x:F

    .line 324
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->jumpPoint:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

    iget v4, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->y:F

    iget v5, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->jumpStep:F

    iget v6, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->count:I

    sub-int/2addr v6, v3

    int-to-float v3, v6

    mul-float v5, v5, v3

    sub-float/2addr v4, v5

    iput v4, v0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->y:F

    .line 325
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->c:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

    iget v3, v0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->x:F

    iget v4, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->ropeStepX:F

    sub-float/2addr v3, v4

    iput v3, v0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->x:F

    .line 326
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->c:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

    iget v3, v0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->y:F

    iget v4, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->ropeHeadStepY:F

    sub-float/2addr v3, v4

    iput v3, v0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->y:F

    .line 327
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->d:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

    iget v3, v0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->x:F

    iget v4, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->ropeStepX:F

    add-float/2addr v3, v4

    iput v3, v0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->x:F

    .line 328
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->d:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

    iget v3, v0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->y:F

    iget v4, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->ropeHeadStepY:F

    sub-float/2addr v3, v4

    iput v3, v0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->y:F

    .line 329
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->e:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

    iget v3, v0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->y:F

    iget v4, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->ropeStepY:F

    sub-float/2addr v3, v4

    iput v3, v0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->y:F

    .line 331
    :cond_1
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->count:I

    const/16 v3, 0xb

    if-le v0, v3, :cond_3

    .line 332
    iput-boolean v2, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->bezier:Z

    if-ne v0, v1, :cond_2

    .line 334
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->jumpPoint:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

    iget v1, v0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->y:F

    iget v3, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->jumpStep:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v3, v3, v4

    sub-float/2addr v1, v3

    iput v1, v0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->y:F

    goto :goto_0

    .line 336
    :cond_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->jumpPoint:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

    iget v1, v0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->y:F

    iget v3, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->downStep:F

    add-float/2addr v1, v3

    iput v1, v0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->y:F

    .line 337
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->count:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_3

    rsub-int/lit8 v0, v0, 0xf

    .line 339
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->e:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

    iget v3, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->y:F

    int-to-float v0, v0

    iget v4, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->elasticityStep:F

    mul-float v0, v0, v4

    add-float/2addr v3, v0

    iput v3, v1, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->y:F

    .line 343
    :cond_3
    :goto_0
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->count:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->count:I

    const-wide/16 v0, 0x14

    .line 344
    invoke-virtual {p0, v0, v1}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->postInvalidateDelayed(J)V

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    .line 346
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->isAnimating:Z

    .line 347
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->bezier:Z

    .line 348
    iget v1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->progress:F

    const/high16 v3, 0x42c80000    # 100.0f

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_5

    .line 349
    iput-boolean v2, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->isLoading:Z

    goto :goto_1

    .line 351
    :cond_5
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->isLoading:Z

    .line 352
    iput-boolean v2, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->isCompleted:Z

    :goto_1
    return-void
.end method

.method protected drawArrow(Landroid/graphics/Canvas;)V
    .locals 5

    .line 396
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->jumpPoint:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

    iget v0, v0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->x:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->jumpPoint:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

    iget v0, v0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->x:F

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->jumpPoint:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

    iget v1, v1, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->y:F

    iget v2, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->smallRadius:F

    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->smallPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 399
    :cond_0
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->bezier:Z

    if-eqz v0, :cond_1

    .line 400
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->arrowPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 401
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->arrowPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->c:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

    iget v1, v1, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->x:F

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->c:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

    iget v2, v2, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 402
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->arrowPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->e:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

    iget v1, v1, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->x:F

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->e:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

    iget v2, v2, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->y:F

    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->d:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

    iget v3, v3, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->x:F

    iget-object v4, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->d:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

    iget v4, v4, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->y:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 403
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->arrowPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->arrowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 404
    :cond_1
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->isLoading:Z

    if-eqz v0, :cond_2

    goto :goto_0

    .line 405
    :cond_2
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->isCompleted:Z

    if-eqz v0, :cond_3

    goto :goto_0

    .line 406
    :cond_3
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->isEnd:Z

    if-eqz v0, :cond_4

    .line 407
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->x:F

    iget v1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->y:F

    iget v2, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->radius:F

    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->loadingPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 408
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->drawArrowOrHook(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 410
    :cond_4
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->arrowPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 411
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->arrowPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->a:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

    iget v1, v1, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->x:F

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->a:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

    iget v2, v2, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 412
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->arrowPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->b:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

    iget v1, v1, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->x:F

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->b:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

    iget v2, v2, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 413
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->arrowPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->arrowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 415
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->a:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

    iget v0, v0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->x:F

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->a:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

    iget v1, v1, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->y:F

    iget v2, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->smallRadius:F

    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->smallPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 416
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->b:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

    iget v0, v0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->x:F

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->b:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

    iget v1, v1, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->y:F

    iget v2, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->smallRadius:F

    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->smallPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 418
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->drawArrowOrHook(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public getProgress()F
    .locals 1

    .line 160
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->progress:F

    return v0
.end method

.method protected initializePaints()V
    .locals 4

    .line 473
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->arcPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 474
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 475
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->arcPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 476
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->arcPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->arcWidth:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 477
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->arcPaint:Landroid/graphics/Paint;

    sget v2, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->BLUE_ONE:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 479
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->arrowPaint:Landroid/graphics/Paint;

    .line 480
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 481
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->arrowPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 482
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->arrowPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->arrowWidth:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 483
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->arrowPaint:Landroid/graphics/Paint;

    sget v2, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->WHILE:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 485
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->smallPaint:Landroid/graphics/Paint;

    .line 486
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 487
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->smallPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 488
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->smallPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 490
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->triPaint:Landroid/graphics/Paint;

    .line 491
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 492
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->triPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 493
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->triPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->triWidth:F

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 494
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->triPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 496
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->loadingPaint:Landroid/graphics/Paint;

    .line 497
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 498
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->loadingPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 499
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->loadingPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->loadingWidth:F

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 500
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->loadingPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 502
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->textPaint:Landroid/graphics/Paint;

    .line 503
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 504
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->textPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 505
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->textPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 506
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 507
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->textPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->textSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method protected initializePoints()V
    .locals 6

    .line 511
    new-instance v0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

    iget v1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->x:F

    iget v2, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->y:F

    iget v3, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->radius:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;-><init>(FF)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->a:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

    .line 512
    new-instance v0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

    iget v1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->x:F

    iget v2, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->y:F

    iget v3, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->radius:F

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;-><init>(FF)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->b:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

    .line 513
    new-instance v0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

    iget v1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->x:F

    iget v2, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->radius:F

    const/high16 v3, 0x40800000    # 4.0f

    div-float v5, v2, v3

    sub-float/2addr v1, v5

    iget v5, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->y:F

    div-float/2addr v2, v3

    add-float/2addr v5, v2

    invoke-direct {v0, v1, v5}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;-><init>(FF)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->c:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

    .line 514
    new-instance v0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

    iget v1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->x:F

    iget v2, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->radius:F

    div-float v5, v2, v3

    add-float/2addr v1, v5

    iget v5, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->y:F

    div-float/2addr v2, v3

    add-float/2addr v5, v2

    invoke-direct {v0, v1, v5}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;-><init>(FF)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->d:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

    .line 515
    new-instance v0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

    iget v1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->x:F

    iget v2, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->y:F

    iget v5, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->radius:F

    div-float/2addr v5, v4

    add-float/2addr v2, v5

    invoke-direct {v0, v1, v2}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;-><init>(FF)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->e:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

    .line 516
    new-instance v0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->jumpPoint:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    .line 519
    new-instance v1, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

    invoke-direct {v1}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;-><init>()V

    .line 520
    iget v2, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->x:F

    const/high16 v4, 0x40400000    # 3.0f

    iget v5, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->radius:F

    mul-float v5, v5, v4

    div-float/2addr v5, v3

    sub-float/2addr v2, v5

    iget v4, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->triStep:F

    int-to-float v5, v0

    mul-float v4, v4, v5

    add-float/2addr v2, v4

    iput v2, v1, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->x:F

    .line 521
    iget v2, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->y:F

    const/high16 v4, 0x41a00000    # 20.0f

    mul-float v5, v5, v4

    const/4 v4, 0x0

    invoke-direct {p0, v5, v4}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->calculateTri(FF)F

    move-result v4

    add-float/2addr v2, v4

    iput v2, v1, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->y:F

    .line 522
    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->triPoints:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 217
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->isFirst:Z

    if-eqz v0, :cond_0

    .line 218
    invoke-direct {p0}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->init()V

    const/4 v0, 0x0

    .line 219
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->isFirst:Z

    .line 221
    :cond_0
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->x:F

    iget v1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->y:F

    iget v2, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->radius:F

    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->arcPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 222
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->drawArrow(Landroid/graphics/Canvas;)V

    .line 223
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->isAnimating:Z

    if-eqz v0, :cond_1

    .line 224
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->animating()V

    .line 226
    :cond_1
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->isLoading:Z

    if-eqz v0, :cond_2

    .line 227
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->loading(Landroid/graphics/Canvas;)V

    .line 229
    :cond_2
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->isCompleted:Z

    if-eqz v0, :cond_3

    .line 230
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->afterCompleted(Landroid/graphics/Canvas;)V

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    const/4 v0, 0x1

    .line 191
    invoke-direct {p0, p1, v0}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->measure(IZ)I

    move-result p1

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->measure(IZ)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 593
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 594
    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .line 595
    const-string v1, "x"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->x:F

    .line 596
    const-string v1, "y"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->y:F

    .line 597
    const-string v1, "radius"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->radius:F

    .line 598
    const-string v1, "max_wave_height"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->maxWaveHeight:F

    .line 599
    const-string v1, "min_wave_height"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->minWaveHeight:F

    .line 600
    const-string v1, "text_y"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->textY:F

    .line 601
    const-string v1, "step"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->step:F

    .line 602
    const-string v1, "elasticity_step"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->elasticityStep:F

    .line 603
    const-string v1, "rope_step_x"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->ropeStepX:F

    .line 604
    const-string v1, "rope_step_y"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->ropeStepY:F

    .line 605
    const-string v1, "rope_head_step_y"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->ropeHeadStepY:F

    .line 606
    const-string v1, "jump_step"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->jumpStep:F

    .line 607
    const-string v1, "down_step"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->downStep:F

    .line 608
    const-string v1, "tri_step"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->triStep:F

    .line 609
    const-string v1, "hook_step"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->hookStepY:F

    .line 610
    const-string v1, "little_step"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->littleStep:F

    .line 611
    const-string v1, "small_radius"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->smallRadius:F

    .line 612
    const-string v1, "text_size"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->textSize:F

    .line 613
    const-string v1, "arc_width"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->arcWidth:F

    .line 614
    const-string v1, "arrow_width"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->arrowWidth:F

    .line 615
    const-string v1, "tri_width"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->triWidth:F

    .line 616
    const-string v1, "loading_width"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->loadingWidth:F

    .line 617
    const-string v1, "is_first"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->isFirst:Z

    .line 618
    const-string v1, "is_animating"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->isAnimating:Z

    .line 619
    const-string v1, "bezier"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->bezier:Z

    .line 620
    const-string v1, "is_loading"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->isLoading:Z

    .line 621
    const-string v1, "is_completed"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->isCompleted:Z

    .line 622
    const-string v1, "is_end"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->isEnd:Z

    .line 623
    const-string v1, "count"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->count:I

    .line 624
    const-string v1, "length"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->length:F

    .line 625
    const-string v1, "current_time"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->currentTime:I

    .line 626
    const-string v1, "wave_height"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->waveHeight:F

    .line 627
    const-string v1, "progress"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->progress:F

    .line 628
    const-string v1, "hook_count"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->hookCount:I

    .line 629
    const-string v1, "length_x"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->lengthX:F

    .line 630
    const-string v1, "length_y"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->lengthY:F

    .line 632
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 550
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 551
    const-string v1, "instance_state"

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 552
    const-string v1, "x"

    iget v2, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->x:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 553
    const-string v1, "y"

    iget v2, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 554
    const-string v1, "radius"

    iget v2, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->radius:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 555
    const-string v1, "max_wave_height"

    iget v2, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->maxWaveHeight:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 556
    const-string v1, "min_wave_height"

    iget v2, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->minWaveHeight:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 557
    const-string v1, "text_y"

    iget v2, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->textY:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 558
    const-string v1, "step"

    iget v2, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->step:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 559
    const-string v1, "elasticity_step"

    iget v2, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->elasticityStep:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 560
    const-string v1, "rope_step_x"

    iget v2, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->ropeStepX:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 561
    const-string v1, "rope_step_y"

    iget v2, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->ropeStepY:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 562
    const-string v1, "rope_head_step_y"

    iget v2, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->ropeHeadStepY:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 563
    const-string v1, "jump_step"

    iget v2, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->jumpStep:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 564
    const-string v1, "down_step"

    iget v2, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->downStep:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 565
    const-string v1, "tri_step"

    iget v2, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->triStep:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 566
    const-string v1, "hook_step"

    iget v2, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->hookStepY:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 567
    const-string v1, "little_step"

    iget v2, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->littleStep:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 568
    const-string v1, "small_radius"

    iget v2, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->smallRadius:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 569
    const-string v1, "text_size"

    iget v2, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->textSize:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 570
    const-string v1, "arc_width"

    iget v2, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->arcWidth:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 571
    const-string v1, "arrow_width"

    iget v2, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->arrowWidth:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 572
    const-string v1, "tri_width"

    iget v2, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->triWidth:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 573
    const-string v1, "loading_width"

    iget v2, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->loadingWidth:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 574
    const-string v1, "is_first"

    iget-boolean v2, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->isFirst:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 575
    const-string v1, "is_animating"

    iget-boolean v2, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->isAnimating:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 576
    const-string v1, "bezier"

    iget-boolean v2, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->bezier:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 577
    const-string v1, "is_loading"

    iget-boolean v2, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->isLoading:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 578
    const-string v1, "is_completed"

    iget-boolean v2, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->isCompleted:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 579
    const-string v1, "is_end"

    iget-boolean v2, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->isEnd:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 580
    const-string v1, "count"

    iget v2, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->count:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 581
    const-string v1, "length"

    iget v2, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->length:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 582
    const-string v1, "current_time"

    iget v2, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->currentTime:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 583
    const-string v1, "wave_height"

    iget v2, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->waveHeight:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 584
    const-string v1, "progress"

    iget v2, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->progress:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 585
    const-string v1, "hook_count"

    iget v2, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->hookCount:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 586
    const-string v1, "length_x"

    iget v2, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->lengthX:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 587
    const-string v1, "length_y"

    iget v2, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->lengthY:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-object v0
.end method

.method public reset()V
    .locals 5

    const/4 v0, 0x0

    .line 286
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->isAnimating:Z

    .line 287
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->isLoading:Z

    .line 288
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->bezier:Z

    .line 289
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->isCompleted:Z

    .line 290
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->isEnd:Z

    .line 291
    iget v1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->radius:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->length:F

    .line 292
    iput v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->count:I

    .line 293
    iput v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->hookCount:I

    .line 294
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->jumpPoint:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, v0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->x:F

    const/4 v0, 0x0

    .line 295
    iput v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->progress:F

    .line 296
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->radius:F

    const/high16 v1, 0x40400000    # 3.0f

    mul-float v3, v0, v1

    const/high16 v4, 0x40800000    # 4.0f

    div-float/2addr v3, v4

    iput v3, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->lengthX:F

    mul-float v0, v0, v1

    div-float/2addr v0, v4

    .line 297
    iput v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->lengthY:F

    .line 298
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->a:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

    iget v1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->y:F

    iget v3, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->length:F

    add-float/2addr v1, v3

    iput v1, v0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->y:F

    .line 299
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->b:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

    iget v1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->y:F

    iget v3, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->length:F

    sub-float/2addr v1, v3

    iput v1, v0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->y:F

    .line 300
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->e:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

    iget v1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->y:F

    iget v3, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->length:F

    add-float/2addr v1, v3

    iput v1, v0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->y:F

    .line 301
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->c:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

    iget v1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->x:F

    iget v3, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->length:F

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    iput v1, v0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->x:F

    .line 302
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->c:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

    iget v1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->y:F

    iget v3, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->length:F

    div-float/2addr v3, v2

    add-float/2addr v1, v3

    iput v1, v0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->y:F

    .line 303
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->d:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

    iget v1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->x:F

    iget v3, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->length:F

    div-float/2addr v3, v2

    add-float/2addr v1, v3

    iput v1, v0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->x:F

    .line 304
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->d:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;

    iget v1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->y:F

    iget v3, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->length:F

    div-float/2addr v3, v2

    add-float/2addr v1, v3

    iput v1, v0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->y:F

    .line 305
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->invalidate()V

    return-void
.end method

.method public setProgress(F)V
    .locals 2

    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    .line 165
    iput v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->progress:F

    goto :goto_0

    .line 167
    :cond_0
    iput p1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->progress:F

    :goto_0
    if-nez v1, :cond_1

    const/4 p1, 0x0

    .line 171
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->isLoading:Z

    const/4 p1, 0x1

    .line 172
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->isCompleted:Z

    :cond_1
    return-void
.end method

.method public startAnimating()V
    .locals 1

    const/4 v0, 0x1

    .line 278
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->isAnimating:Z

    .line 279
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->invalidate()V

    return-void
.end method

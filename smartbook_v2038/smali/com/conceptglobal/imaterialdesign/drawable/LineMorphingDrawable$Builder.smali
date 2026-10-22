.class public Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;
.super Ljava/lang/Object;
.source "LineMorphingDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final TAG_ITEM:Ljava/lang/String; = "item"

.field private static final TAG_LINKS:Ljava/lang/String; = "links"

.field private static final TAG_POINTS:Ljava/lang/String; = "points"

.field private static final TAG_STATE:Ljava/lang/String; = "state"

.field private static final TAG_STATE_LIST:Ljava/lang/String; = "state-list"


# instance fields
.field private mAnimDuration:I

.field private mClockwise:Z

.field private mCurState:I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsRtl:Z

.field private mPaddingBottom:I

.field private mPaddingLeft:I

.field private mPaddingRight:I

.field private mPaddingTop:I

.field private mStates:[Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$State;

.field private mStrokeCap:Landroid/graphics/Paint$Cap;

.field private mStrokeColor:I

.field private mStrokeJoin:Landroid/graphics/Paint$Join;

.field private mStrokeSize:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 415
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 419
    sget-object v0, Lcom/conceptglobal/imaterialdesign/R$styleable;->LineMorphingDrawable:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 422
    sget p3, Lcom/conceptglobal/imaterialdesign/R$styleable;->LineMorphingDrawable_lmd_state:I

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    if-eqz p3, :cond_0

    .line 423
    invoke-direct {p0, p1, p3}, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;->readStates(Landroid/content/Context;I)[Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$State;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;->states([Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$State;)Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;

    .line 424
    :cond_0
    sget p3, Lcom/conceptglobal/imaterialdesign/R$styleable;->LineMorphingDrawable_lmd_curState:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;->curState(I)Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;

    .line 425
    sget p3, Lcom/conceptglobal/imaterialdesign/R$styleable;->LineMorphingDrawable_lmd_padding:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;->padding(I)Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;

    .line 426
    sget p3, Lcom/conceptglobal/imaterialdesign/R$styleable;->LineMorphingDrawable_lmd_paddingLeft:I

    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;->mPaddingLeft:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;->paddingLeft(I)Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;

    .line 427
    sget p3, Lcom/conceptglobal/imaterialdesign/R$styleable;->LineMorphingDrawable_lmd_paddingTop:I

    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;->mPaddingTop:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;->paddingTop(I)Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;

    .line 428
    sget p3, Lcom/conceptglobal/imaterialdesign/R$styleable;->LineMorphingDrawable_lmd_paddingRight:I

    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;->mPaddingRight:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;->paddingRight(I)Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;

    .line 429
    sget p3, Lcom/conceptglobal/imaterialdesign/R$styleable;->LineMorphingDrawable_lmd_paddingBottom:I

    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;->mPaddingBottom:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;->paddingBottom(I)Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;

    .line 430
    sget p3, Lcom/conceptglobal/imaterialdesign/R$styleable;->LineMorphingDrawable_lmd_animDuration:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;->animDuration(I)Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;

    .line 431
    sget p3, Lcom/conceptglobal/imaterialdesign/R$styleable;->LineMorphingDrawable_lmd_interpolator:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    if-eqz p3, :cond_1

    .line 432
    invoke-static {p1, p3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;->interpolator(Landroid/view/animation/Interpolator;)Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;

    .line 433
    :cond_1
    sget p3, Lcom/conceptglobal/imaterialdesign/R$styleable;->LineMorphingDrawable_lmd_strokeSize:I

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/conceptglobal/imaterialdesign/util/ThemeUtil;->dpToPx(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;->strokeSize(I)Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;

    .line 434
    sget p1, Lcom/conceptglobal/imaterialdesign/R$styleable;->LineMorphingDrawable_lmd_strokeColor:I

    const/4 p3, -0x1

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;->strokeColor(I)Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;

    .line 435
    sget p1, Lcom/conceptglobal/imaterialdesign/R$styleable;->LineMorphingDrawable_lmd_strokeCap:I

    invoke-virtual {p2, p1, p4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    const/4 p3, 0x1

    if-nez p1, :cond_2

    .line 437
    sget-object p1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;->strokeCap(Landroid/graphics/Paint$Cap;)Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;

    goto :goto_0

    :cond_2
    if-ne p1, p3, :cond_3

    .line 439
    sget-object p1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;->strokeCap(Landroid/graphics/Paint$Cap;)Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;

    goto :goto_0

    .line 441
    :cond_3
    sget-object p1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;->strokeCap(Landroid/graphics/Paint$Cap;)Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;

    .line 442
    :goto_0
    sget p1, Lcom/conceptglobal/imaterialdesign/R$styleable;->LineMorphingDrawable_lmd_strokeJoin:I

    invoke-virtual {p2, p1, p4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    if-nez p1, :cond_4

    .line 444
    sget-object p1, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;->strokeJoin(Landroid/graphics/Paint$Join;)Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;

    goto :goto_1

    :cond_4
    if-ne p1, p3, :cond_5

    .line 446
    sget-object p1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;->strokeJoin(Landroid/graphics/Paint$Join;)Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;

    goto :goto_1

    .line 448
    :cond_5
    sget-object p1, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;->strokeJoin(Landroid/graphics/Paint$Join;)Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;

    .line 449
    :goto_1
    sget p1, Lcom/conceptglobal/imaterialdesign/R$styleable;->LineMorphingDrawable_lmd_clockwise:I

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;->clockwise(Z)Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;

    .line 451
    sget p1, Lcom/conceptglobal/imaterialdesign/R$styleable;->LineMorphingDrawable_lmd_layoutDirection:I

    invoke-virtual {p2, p1, p4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    if-ne p1, v0, :cond_7

    .line 453
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/text/TextUtilsCompat;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result p1

    if-ne p1, p3, :cond_6

    const/4 p4, 0x1

    :cond_6
    invoke-virtual {p0, p4}, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;->rtl(Z)Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;

    goto :goto_2

    :cond_7
    if-ne p1, p3, :cond_8

    const/4 p4, 0x1

    .line 455
    :cond_8
    invoke-virtual {p0, p4}, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;->rtl(Z)Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;

    .line 457
    :goto_2
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private readStates(Landroid/content/Context;I)[Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$State;
    .locals 18

    .line 462
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 465
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move/from16 v3, p2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 467
    :try_start_1
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 474
    :cond_0
    const-string v4, "state-list"

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne v3, v5, :cond_2

    .line 475
    :try_start_2
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 476
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 477
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    goto :goto_0

    .line 480
    :cond_1
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expecting menu, got "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 482
    :cond_2
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    if-ne v3, v6, :cond_0

    .line 487
    :goto_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 488
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_1
    if-nez v10, :cond_15

    if-eq v3, v6, :cond_14

    .line 491
    const-string v14, "state"

    const-string v15, "links"

    const-string v1, "item"

    const-string v9, "points"

    const/16 v16, -0x1

    const/4 v6, 0x3

    if-eq v3, v5, :cond_c

    const/4 v5, 0x4

    if-eq v3, v6, :cond_4

    if-eq v3, v5, :cond_3

    goto/16 :goto_6

    .line 548
    :cond_3
    :try_start_3
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 516
    :cond_4
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v11, :cond_5

    .line 518
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 523
    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v17

    sparse-switch v17, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_3

    :sswitch_1
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x3

    goto :goto_3

    :sswitch_2
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x4

    goto :goto_3

    :sswitch_3
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    goto :goto_3

    :sswitch_4
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x2

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v1, -0x1

    :goto_3
    if-eqz v1, :cond_b

    const/4 v3, 0x1

    if-eq v1, v3, :cond_a

    const/4 v3, 0x2

    if-eq v1, v3, :cond_9

    if-eq v1, v6, :cond_8

    if-eq v1, v5, :cond_7

    goto :goto_6

    .line 541
    :cond_7
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 536
    :cond_8
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, v13, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$State;->links:[I

    const/4 v1, 0x0

    .line 537
    :goto_4
    iget-object v3, v13, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$State;->links:[I

    array-length v3, v3

    if-ge v1, v3, :cond_d

    .line 538
    iget-object v3, v13, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$State;->links:[I

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 531
    :cond_9
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [F

    iput-object v1, v13, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$State;->points:[F

    const/4 v1, 0x0

    .line 532
    :goto_5
    iget-object v3, v13, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$State;->points:[F

    array-length v3, v3

    if-ge v1, v3, :cond_d

    .line 533
    iget-object v3, v13, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$State;->points:[F

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    aput v5, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 528
    :cond_a
    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_b
    const/4 v10, 0x1

    goto :goto_6

    :cond_c
    if-eqz v11, :cond_e

    :cond_d
    :goto_6
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v9, 0x2

    goto :goto_a

    .line 496
    :cond_e
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 497
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_1

    goto :goto_7

    :sswitch_5
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x0

    goto :goto_8

    :sswitch_6
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x2

    goto :goto_8

    :sswitch_7
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x3

    goto :goto_8

    :sswitch_8
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    goto :goto_8

    :cond_f
    :goto_7
    const/4 v1, -0x1

    :goto_8
    if-eqz v1, :cond_13

    const/4 v5, 0x1

    if-eq v1, v5, :cond_12

    const/4 v9, 0x2

    if-eq v1, v9, :cond_11

    if-eq v1, v6, :cond_10

    move-object v12, v3

    const/4 v3, 0x0

    const/4 v11, 0x1

    goto :goto_a

    .line 506
    :cond_10
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v8, v3, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_11
    const/4 v3, 0x0

    goto :goto_9

    :cond_12
    const/4 v3, 0x0

    const/4 v9, 0x2

    .line 503
    :goto_9
    invoke-interface {v7}, Ljava/util/List;->clear()V

    goto :goto_a

    :cond_13
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v9, 0x2

    .line 499
    new-instance v13, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$State;

    invoke-direct {v13}, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$State;-><init>()V

    goto :goto_a

    :cond_14
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v9, 0x2

    const/4 v10, 0x1

    .line 556
    :goto_a
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v3, v1

    const/4 v5, 0x2

    const/4 v6, 0x1

    goto/16 :goto_1

    :cond_15
    if-eqz v2, :cond_17

    goto :goto_d

    :catchall_0
    move-exception v0

    move-object v1, v2

    goto :goto_b

    :catch_0
    nop

    goto :goto_c

    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    :goto_b
    if-eqz v1, :cond_16

    .line 563
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 564
    :cond_16
    throw v0

    :catch_1
    nop

    const/4 v2, 0x0

    :goto_c
    if-eqz v2, :cond_17

    .line 563
    :goto_d
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    .line 566
    :cond_17
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v1, 0x0

    return-object v1

    .line 569
    :cond_18
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$State;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$State;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x3a93a31d -> :sswitch_4
        -0x1054bfa6 -> :sswitch_3
        0x317b13 -> :sswitch_2
        0x6234fb9 -> :sswitch_1
        0x68ac491 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x3a93a31d -> :sswitch_8
        0x317b13 -> :sswitch_7
        0x6234fb9 -> :sswitch_6
        0x68ac491 -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public animDuration(I)Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;
    .locals 0

    .line 624
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;->mAnimDuration:I

    return-object p0
.end method

.method public build()Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;
    .locals 18

    move-object/from16 v0, p0

    .line 573
    iget-object v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;->mStrokeCap:Landroid/graphics/Paint$Cap;

    if-nez v1, :cond_0

    .line 574
    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;->mStrokeCap:Landroid/graphics/Paint$Cap;

    .line 576
    :cond_0
    iget-object v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;->mStrokeJoin:Landroid/graphics/Paint$Join;

    if-nez v1, :cond_1

    .line 577
    sget-object v1, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;->mStrokeJoin:Landroid/graphics/Paint$Join;

    .line 579
    :cond_1
    iget-object v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v1, :cond_2

    .line 580
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 582
    :cond_2
    new-instance v1, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;

    iget-object v3, v0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;->mStates:[Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$State;

    iget v4, v0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;->mCurState:I

    iget v5, v0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;->mPaddingLeft:I

    iget v6, v0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;->mPaddingTop:I

    iget v7, v0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;->mPaddingRight:I

    iget v8, v0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;->mPaddingBottom:I

    iget v9, v0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;->mAnimDuration:I

    iget-object v10, v0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;->mInterpolator:Landroid/view/animation/Interpolator;

    iget v11, v0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;->mStrokeSize:I

    iget v12, v0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;->mStrokeColor:I

    iget-object v13, v0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;->mStrokeCap:Landroid/graphics/Paint$Cap;

    iget-object v14, v0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;->mStrokeJoin:Landroid/graphics/Paint$Join;

    iget-boolean v15, v0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;->mClockwise:Z

    iget-boolean v2, v0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;->mIsRtl:Z

    const/16 v17, 0x0

    move/from16 v16, v2

    move-object v2, v1

    invoke-direct/range {v2 .. v17}, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;-><init>([Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$State;IIIIIILandroid/view/animation/Interpolator;IILandroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;ZZLcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$1;)V

    return-object v1
.end method

.method public clockwise(Z)Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;
    .locals 0

    .line 654
    iput-boolean p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;->mClockwise:Z

    return-object p0
.end method

.method public curState(I)Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;
    .locals 0

    .line 591
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;->mCurState:I

    return-object p0
.end method

.method public interpolator(Landroid/view/animation/Interpolator;)Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;
    .locals 0

    .line 629
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public padding(I)Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;
    .locals 0

    .line 596
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;->mPaddingLeft:I

    .line 597
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;->mPaddingTop:I

    .line 598
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;->mPaddingRight:I

    .line 599
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;->mPaddingBottom:I

    return-object p0
.end method

.method public paddingBottom(I)Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;
    .locals 0

    .line 619
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;->mPaddingBottom:I

    return-object p0
.end method

.method public paddingLeft(I)Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;
    .locals 0

    .line 604
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;->mPaddingLeft:I

    return-object p0
.end method

.method public paddingRight(I)Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;
    .locals 0

    .line 614
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;->mPaddingRight:I

    return-object p0
.end method

.method public paddingTop(I)Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;
    .locals 0

    .line 609
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;->mPaddingTop:I

    return-object p0
.end method

.method public rtl(Z)Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;
    .locals 0

    .line 659
    iput-boolean p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;->mIsRtl:Z

    return-object p0
.end method

.method public varargs states([Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$State;)Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;
    .locals 0

    .line 586
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;->mStates:[Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$State;

    return-object p0
.end method

.method public strokeCap(Landroid/graphics/Paint$Cap;)Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;
    .locals 0

    .line 644
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;->mStrokeCap:Landroid/graphics/Paint$Cap;

    return-object p0
.end method

.method public strokeColor(I)Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;
    .locals 0

    .line 639
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;->mStrokeColor:I

    return-object p0
.end method

.method public strokeJoin(Landroid/graphics/Paint$Join;)Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;
    .locals 0

    .line 649
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;->mStrokeJoin:Landroid/graphics/Paint$Join;

    return-object p0
.end method

.method public strokeSize(I)Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;
    .locals 0

    .line 634
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$Builder;->mStrokeSize:I

    return-object p0
.end method

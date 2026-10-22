.class public Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable$Builder;
.super Ljava/lang/Object;
.source "CheckBoxDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAnimDuration:I

.field private mBoxSize:I

.field private mCornerRadius:I

.field private mHeight:I

.field private mStrokeColor:Landroid/content/res/ColorStateList;

.field private mStrokeSize:I

.field private mTickColor:I

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x190

    .line 356
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable$Builder;->mAnimDuration:I

    const/4 v0, 0x4

    .line 357
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable$Builder;->mStrokeSize:I

    const/16 v0, 0x40

    .line 358
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable$Builder;->mWidth:I

    .line 359
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable$Builder;->mHeight:I

    const/16 v0, 0x8

    .line 361
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable$Builder;->mCornerRadius:I

    const/16 v0, 0x20

    .line 362
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable$Builder;->mBoxSize:I

    const/4 v0, -0x1

    .line 363
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable$Builder;->mTickColor:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 368
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable$Builder;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x190

    .line 356
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable$Builder;->mAnimDuration:I

    const/4 v0, 0x4

    .line 357
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable$Builder;->mStrokeSize:I

    const/16 v0, 0x40

    .line 358
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable$Builder;->mWidth:I

    .line 359
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable$Builder;->mHeight:I

    const/16 v0, 0x8

    .line 361
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable$Builder;->mCornerRadius:I

    const/16 v0, 0x20

    .line 362
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable$Builder;->mBoxSize:I

    const/4 v1, -0x1

    .line 363
    iput v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable$Builder;->mTickColor:I

    .line 372
    sget-object v2, Lcom/conceptglobal/imaterialdesign/R$styleable;->CheckBoxDrawable:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 374
    sget p3, Lcom/conceptglobal/imaterialdesign/R$styleable;->CheckBoxDrawable_cbd_width:I

    invoke-static {p1, v0}, Lcom/conceptglobal/imaterialdesign/util/ThemeUtil;->dpToPx(Landroid/content/Context;I)I

    move-result p4

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable$Builder;->width(I)Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable$Builder;

    .line 375
    sget p3, Lcom/conceptglobal/imaterialdesign/R$styleable;->CheckBoxDrawable_cbd_height:I

    invoke-static {p1, v0}, Lcom/conceptglobal/imaterialdesign/util/ThemeUtil;->dpToPx(Landroid/content/Context;I)I

    move-result p4

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable$Builder;->height(I)Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable$Builder;

    .line 376
    sget p3, Lcom/conceptglobal/imaterialdesign/R$styleable;->CheckBoxDrawable_cbd_boxSize:I

    const/16 p4, 0x12

    invoke-static {p1, p4}, Lcom/conceptglobal/imaterialdesign/util/ThemeUtil;->dpToPx(Landroid/content/Context;I)I

    move-result p4

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable$Builder;->boxSize(I)Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable$Builder;

    .line 377
    sget p3, Lcom/conceptglobal/imaterialdesign/R$styleable;->CheckBoxDrawable_cbd_cornerRadius:I

    const/4 p4, 0x2

    invoke-static {p1, p4}, Lcom/conceptglobal/imaterialdesign/util/ThemeUtil;->dpToPx(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable$Builder;->cornerRadius(I)Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable$Builder;

    .line 378
    sget p3, Lcom/conceptglobal/imaterialdesign/R$styleable;->CheckBoxDrawable_cbd_strokeSize:I

    invoke-static {p1, p4}, Lcom/conceptglobal/imaterialdesign/util/ThemeUtil;->dpToPx(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable$Builder;->strokeSize(I)Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable$Builder;

    .line 379
    sget p3, Lcom/conceptglobal/imaterialdesign/R$styleable;->CheckBoxDrawable_cbd_strokeColor:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable$Builder;->strokeColor(Landroid/content/res/ColorStateList;)Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable$Builder;

    .line 380
    sget p3, Lcom/conceptglobal/imaterialdesign/R$styleable;->CheckBoxDrawable_cbd_tickColor:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable$Builder;->tickColor(I)Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable$Builder;

    .line 381
    sget p3, Lcom/conceptglobal/imaterialdesign/R$styleable;->CheckBoxDrawable_cbd_animDuration:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable$Builder;->animDuration(I)Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable$Builder;

    .line 383
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 385
    iget-object p2, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable$Builder;->mStrokeColor:Landroid/content/res/ColorStateList;

    if-nez p2, :cond_0

    .line 386
    new-array p2, p4, [[I

    const p3, -0x10100a0

    filled-new-array {p3}, [I

    move-result-object p3

    const/4 p4, 0x0

    aput-object p3, p2, p4

    const p3, 0x10100a0

    filled-new-array {p3}, [I

    move-result-object p3

    const/4 p4, 0x1

    aput-object p3, p2, p4

    const/high16 p3, -0x1000000

    .line 391
    invoke-static {p1, p3}, Lcom/conceptglobal/imaterialdesign/util/ThemeUtil;->colorControlNormal(Landroid/content/Context;I)I

    move-result p4

    .line 392
    invoke-static {p1, p3}, Lcom/conceptglobal/imaterialdesign/util/ThemeUtil;->colorControlActivated(Landroid/content/Context;I)I

    move-result p1

    filled-new-array {p4, p1}, [I

    move-result-object p1

    .line 394
    new-instance p3, Landroid/content/res/ColorStateList;

    invoke-direct {p3, p2, p1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p0, p3}, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable$Builder;->strokeColor(Landroid/content/res/ColorStateList;)Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable$Builder;

    :cond_0
    return-void
.end method


# virtual methods
.method public animDuration(I)Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable$Builder;
    .locals 0

    .line 446
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable$Builder;->mAnimDuration:I

    return-object p0
.end method

.method public boxSize(I)Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable$Builder;
    .locals 0

    .line 441
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable$Builder;->mBoxSize:I

    return-object p0
.end method

.method public build()Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;
    .locals 11

    .line 399
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable$Builder;->mStrokeColor:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    const/high16 v0, -0x1000000

    .line 400
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable$Builder;->mStrokeColor:Landroid/content/res/ColorStateList;

    .line 402
    :cond_0
    new-instance v0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;

    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable$Builder;->mWidth:I

    iget v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable$Builder;->mHeight:I

    iget v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable$Builder;->mBoxSize:I

    iget v5, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable$Builder;->mCornerRadius:I

    iget v6, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable$Builder;->mStrokeSize:I

    iget-object v7, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable$Builder;->mStrokeColor:Landroid/content/res/ColorStateList;

    iget v8, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable$Builder;->mTickColor:I

    iget v9, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable$Builder;->mAnimDuration:I

    const/4 v10, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;-><init>(IIIIILandroid/content/res/ColorStateList;IILcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable$1;)V

    return-object v0
.end method

.method public cornerRadius(I)Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable$Builder;
    .locals 0

    .line 436
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable$Builder;->mCornerRadius:I

    return-object p0
.end method

.method public height(I)Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable$Builder;
    .locals 0

    .line 411
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable$Builder;->mHeight:I

    return-object p0
.end method

.method public strokeColor(I)Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable$Builder;
    .locals 0

    .line 421
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable$Builder;->mStrokeColor:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public strokeColor(Landroid/content/res/ColorStateList;)Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable$Builder;
    .locals 0

    .line 426
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable$Builder;->mStrokeColor:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public strokeSize(I)Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable$Builder;
    .locals 0

    .line 416
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable$Builder;->mStrokeSize:I

    return-object p0
.end method

.method public tickColor(I)Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable$Builder;
    .locals 0

    .line 431
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable$Builder;->mTickColor:I

    return-object p0
.end method

.method public width(I)Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable$Builder;
    .locals 0

    .line 406
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable$Builder;->mWidth:I

    return-object p0
.end method

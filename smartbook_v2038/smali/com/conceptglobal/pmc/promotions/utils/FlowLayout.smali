.class public Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;
.super Landroid/view/ViewGroup;
.source "FlowLayout.java"


# static fields
.field private static final DEFAULT_CHILD_SPACING:I = 0x0

.field private static final DEFAULT_CHILD_SPACING_FOR_LAST_ROW:I = -0x10002

.field private static final DEFAULT_FLOW:Z = true

.field private static final DEFAULT_MAX_ROWS:I = 0x7fffffff

.field private static final DEFAULT_ROW_SPACING:F = 0.0f

.field private static final DEFAULT_RTL:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "FlowLayout"

.field public static final SPACING_ALIGN:I = -0x10001

.field public static final SPACING_AUTO:I = -0x10000

.field private static final SPACING_UNDEFINED:I = -0x10002


# instance fields
.field private mAdjustedRowSpacing:F

.field private mChildNumForRow:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mChildSpacing:I

.field private mChildSpacingForLastRow:I

.field private mFlow:Z

.field private mHeightForRow:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHorizontalSpacingForRow:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxRows:I

.field private mRowSpacing:F

.field private mRtl:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, v0}, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->mFlow:Z

    const/4 v1, 0x0

    .line 48
    iput v1, p0, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->mChildSpacing:I

    const v2, -0x10002

    .line 49
    iput v2, p0, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->mChildSpacingForLastRow:I

    const/4 v3, 0x0

    .line 50
    iput v3, p0, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->mRowSpacing:F

    .line 51
    iput v3, p0, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->mAdjustedRowSpacing:F

    .line 52
    iput-boolean v1, p0, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->mRtl:Z

    const v4, 0x7fffffff

    .line 53
    iput v4, p0, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->mMaxRows:I

    .line 55
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->mHorizontalSpacingForRow:Ljava/util/List;

    .line 56
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->mHeightForRow:Ljava/util/List;

    .line 57
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->mChildNumForRow:Ljava/util/List;

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v5, Lcom/icsssd0328/promotions/R$styleable;->FlowLayout:[I

    invoke-virtual {p1, p2, v5, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x2

    .line 69
    :try_start_0
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->mFlow:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :try_start_1
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->mChildSpacing:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 73
    :catch_0
    :try_start_2
    invoke-direct {p0, v3}, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->dpToPx(F)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->mChildSpacing:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    :goto_0
    :try_start_3
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->mChildSpacingForLastRow:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 78
    :catch_1
    :try_start_4
    invoke-direct {p0, v3}, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->dpToPx(F)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->mChildSpacingForLastRow:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    const/4 p2, 0x4

    .line 81
    :try_start_5
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->mRowSpacing:F
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 83
    :catch_2
    :try_start_6
    invoke-direct {p0, v3}, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->dpToPx(F)F

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->mRowSpacing:F

    :goto_2
    const/4 p2, 0x3

    .line 85
    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->mMaxRows:I

    const/4 p2, 0x5

    .line 86
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->mRtl:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 88
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 89
    throw p2
.end method

.method private dpToPx(F)F
    .locals 2

    .line 389
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    .line 388
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    return p1
.end method

.method private getSpacingForRow(IIII)F
    .locals 1

    const/high16 v0, -0x10000

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    if-le p4, p1, :cond_0

    sub-int/2addr p2, p3

    sub-int/2addr p4, p1

    .line 377
    div-int/2addr p2, p4

    int-to-float p1, p2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    int-to-float p1, p1

    :goto_0
    return p1
.end method


# virtual methods
.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 270
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 265
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getChildSpacing()I
    .locals 1

    .line 298
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->mChildSpacing:I

    return v0
.end method

.method public getChildSpacingForLastRow()I
    .locals 1

    .line 319
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->mChildSpacingForLastRow:I

    return v0
.end method

.method public getMaxRows()I
    .locals 1

    .line 360
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->mMaxRows:I

    return v0
.end method

.method public getRowSpacing()F
    .locals 1

    .line 339
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->mRowSpacing:F

    return v0
.end method

.method public isFlow()Z
    .locals 1

    .line 279
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->mFlow:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 17

    move-object/from16 v0, p0

    .line 218
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->getPaddingLeft()I

    move-result v1

    .line 219
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->getPaddingRight()I

    move-result v2

    .line 220
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->getPaddingTop()I

    move-result v3

    .line 221
    iget-boolean v4, v0, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->mRtl:Z

    if-eqz v4, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->getWidth()I

    move-result v4

    sub-int/2addr v4, v2

    goto :goto_0

    :cond_0
    move v4, v1

    .line 224
    :goto_0
    iget-object v5, v0, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->mChildNumForRow:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    if-ge v7, v5, :cond_6

    .line 226
    iget-object v9, v0, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->mChildNumForRow:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 227
    iget-object v10, v0, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->mHeightForRow:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 228
    iget-object v11, v0, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->mHorizontalSpacingForRow:Ljava/util/List;

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v9, :cond_4

    .line 229
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->getChildCount()I

    move-result v13

    if-ge v8, v13, :cond_4

    add-int/lit8 v13, v8, 0x1

    .line 230
    invoke-virtual {v0, v8}, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 231
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v14

    const/16 v15, 0x8

    if-ne v14, v15, :cond_1

    :goto_3
    move v8, v13

    goto :goto_2

    :cond_1
    add-int/lit8 v12, v12, 0x1

    .line 237
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    .line 239
    instance-of v15, v14, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v15, :cond_2

    .line 240
    check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 241
    iget v15, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 242
    iget v6, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 243
    iget v14, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 p2, v1

    goto :goto_4

    :cond_2
    move/from16 p2, v1

    const/4 v6, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 246
    :goto_4
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 247
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    move/from16 p3, v5

    .line 248
    iget-boolean v5, v0, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->mRtl:Z

    if-eqz v5, :cond_3

    sub-int v5, v4, v6

    move/from16 p4, v9

    sub-int v9, v5, v1

    add-int/2addr v14, v3

    move/from16 p5, v12

    add-int v12, v14, v16

    .line 249
    invoke-virtual {v8, v9, v14, v5, v12}, Landroid/view/View;->layout(IIII)V

    int-to-float v4, v4

    int-to-float v1, v1

    add-float/2addr v1, v11

    int-to-float v5, v15

    add-float/2addr v1, v5

    int-to-float v5, v6

    add-float/2addr v1, v5

    sub-float/2addr v4, v1

    goto :goto_5

    :cond_3
    move/from16 p4, v9

    move/from16 p5, v12

    add-int v5, v4, v15

    add-int/2addr v14, v3

    add-int v9, v5, v1

    add-int v12, v14, v16

    .line 253
    invoke-virtual {v8, v5, v14, v9, v12}, Landroid/view/View;->layout(IIII)V

    int-to-float v4, v4

    int-to-float v1, v1

    add-float/2addr v1, v11

    int-to-float v5, v15

    add-float/2addr v1, v5

    int-to-float v5, v6

    add-float/2addr v1, v5

    add-float/2addr v4, v1

    :goto_5
    float-to-int v1, v4

    move v4, v1

    move/from16 v1, p2

    move/from16 v5, p3

    move/from16 v9, p4

    move/from16 v12, p5

    goto :goto_3

    :cond_4
    move/from16 p2, v1

    move/from16 p3, v5

    .line 258
    iget-boolean v1, v0, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->mRtl:Z

    if-eqz v1, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->getWidth()I

    move-result v1

    sub-int/2addr v1, v2

    move v4, v1

    goto :goto_6

    :cond_5
    move/from16 v4, p2

    :goto_6
    int-to-float v1, v3

    int-to-float v3, v10

    .line 259
    iget v5, v0, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->mAdjustedRowSpacing:F

    add-float/2addr v3, v5

    add-float/2addr v1, v3

    float-to-int v3, v1

    add-int/lit8 v7, v7, 0x1

    move/from16 v1, p2

    move/from16 v5, p3

    goto/16 :goto_1

    :cond_6
    return-void
.end method

.method protected onMeasure(II)V
    .locals 25

    move-object/from16 v6, p0

    .line 94
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 96
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 97
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 98
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 99
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 101
    iget-object v0, v6, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->mHorizontalSpacingForRow:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 102
    iget-object v0, v6, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->mChildNumForRow:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 103
    iget-object v0, v6, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->mHeightForRow:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 105
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->getChildCount()I

    move-result v11

    .line 107
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->getPaddingLeft()I

    move-result v0

    sub-int v0, v7, v0

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->getPaddingRight()I

    move-result v1

    sub-int v12, v0, v1

    if-eqz v8, :cond_0

    .line 108
    iget-boolean v0, v6, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->mFlow:Z

    if-eqz v0, :cond_0

    const/4 v15, 0x1

    goto :goto_0

    :cond_0
    const/4 v15, 0x0

    .line 109
    :goto_0
    iget v0, v6, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->mChildSpacing:I

    const/high16 v5, -0x10000

    if-ne v0, v5, :cond_1

    if-nez v8, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    move v4, v0

    :goto_1
    if-ne v4, v5, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    int-to-float v0, v4

    move v2, v0

    :goto_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_3
    if-ge v1, v11, :cond_7

    .line 114
    invoke-virtual {v6, v1}, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 115
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    move/from16 v20, v0

    const/16 v0, 0x8

    if-ne v5, v0, :cond_3

    move/from16 v0, p1

    move v5, v4

    move/from16 v21, v7

    move/from16 v23, v9

    move/from16 v18, v10

    move/from16 v22, v11

    move/from16 v3, v20

    const/high16 v7, -0x10000

    move/from16 v20, v1

    move v9, v2

    move/from16 v1, p2

    goto/16 :goto_5

    .line 119
    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 121
    instance-of v0, v5, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_4

    const/16 v21, 0x0

    move/from16 v22, v11

    move/from16 v11, v20

    move-object/from16 v0, p0

    move/from16 v20, v1

    move-object v1, v3

    move/from16 v23, v9

    move v9, v2

    move/from16 v2, p1

    move/from16 v18, v10

    move-object v10, v3

    move/from16 v3, v21

    move/from16 v24, v4

    move/from16 v4, p2

    move-object/from16 v19, v5

    move/from16 v21, v7

    const/high16 v7, -0x10000

    move/from16 v5, v16

    .line 122
    invoke-virtual/range {v0 .. v5}, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 123
    move-object/from16 v5, v19

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 124
    iget v0, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v1, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    .line 125
    iget v1, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    move v2, v0

    move v3, v1

    move/from16 v0, p1

    move/from16 v1, p2

    goto :goto_4

    :cond_4
    move/from16 v0, p1

    move/from16 v24, v4

    move/from16 v21, v7

    move/from16 v23, v9

    move/from16 v18, v10

    move/from16 v22, v11

    move/from16 v11, v20

    const/high16 v7, -0x10000

    move/from16 v20, v1

    move v9, v2

    move-object v10, v3

    move/from16 v1, p2

    .line 127
    invoke-virtual {v6, v10, v0, v1}, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->measureChild(Landroid/view/View;II)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 130
    :goto_4
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v2

    .line 131
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v3

    if-eqz v15, :cond_6

    add-int v3, v11, v4

    if-le v3, v12, :cond_6

    .line 134
    iget-object v3, v6, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->mHorizontalSpacingForRow:Ljava/util/List;

    move/from16 v5, v24

    .line 135
    invoke-direct {v6, v5, v12, v11, v14}, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->getSpacingForRow(IIII)F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    .line 134
    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v3, v6, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->mChildNumForRow:Ljava/util/List;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object v3, v6, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->mHeightForRow:Ljava/util/List;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v3, v6, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->mHorizontalSpacingForRow:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget v10, v6, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->mMaxRows:I

    if-gt v3, v10, :cond_5

    move/from16 v3, v17

    add-int v16, v16, v3

    .line 141
    :cond_5
    invoke-static {v13, v11}, Ljava/lang/Math;->max(II)I

    move-result v13

    float-to-int v3, v9

    add-int/2addr v3, v4

    move/from16 v17, v2

    const/4 v14, 0x1

    goto :goto_5

    :cond_6
    move/from16 v3, v17

    move/from16 v5, v24

    add-int/lit8 v14, v14, 0x1

    int-to-float v10, v11

    int-to-float v4, v4

    add-float/2addr v4, v9

    add-float/2addr v10, v4

    float-to-int v4, v10

    .line 150
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v17

    move v3, v4

    :goto_5
    add-int/lit8 v2, v20, 0x1

    move v1, v2

    move v0, v3

    move v4, v5

    move v2, v9

    move/from16 v10, v18

    move/from16 v7, v21

    move/from16 v11, v22

    move/from16 v9, v23

    const/high16 v5, -0x10000

    goto/16 :goto_3

    :cond_7
    move v11, v0

    move v5, v4

    move/from16 v21, v7

    move/from16 v23, v9

    move/from16 v18, v10

    move/from16 v3, v17

    const/high16 v7, -0x10000

    .line 155
    iget v0, v6, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->mChildSpacingForLastRow:I

    const v1, -0x10001

    if-ne v0, v1, :cond_9

    .line 158
    iget-object v0, v6, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->mHorizontalSpacingForRow:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_8

    .line 159
    iget-object v0, v6, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->mHorizontalSpacingForRow:Ljava/util/List;

    .line 160
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    .line 159
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 162
    :cond_8
    iget-object v0, v6, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->mHorizontalSpacingForRow:Ljava/util/List;

    .line 163
    invoke-direct {v6, v5, v12, v11, v14}, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->getSpacingForRow(IIII)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 162
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_9
    const v1, -0x10002

    if-eq v0, v1, :cond_a

    .line 167
    iget-object v1, v6, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->mHorizontalSpacingForRow:Ljava/util/List;

    .line 168
    invoke-direct {v6, v0, v12, v11, v14}, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->getSpacingForRow(IIII)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 167
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 171
    :cond_a
    iget-object v0, v6, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->mHorizontalSpacingForRow:Ljava/util/List;

    .line 172
    invoke-direct {v6, v5, v12, v11, v14}, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->getSpacingForRow(IIII)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 171
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    :goto_6
    iget-object v0, v6, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->mChildNumForRow:Ljava/util/List;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    iget-object v0, v6, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->mHeightForRow:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    iget-object v0, v6, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->mHorizontalSpacingForRow:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, v6, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->mMaxRows:I

    if-gt v0, v1, :cond_b

    add-int v16, v16, v3

    .line 180
    :cond_b
    invoke-static {v13, v11}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-ne v5, v7, :cond_c

    move/from16 v0, v21

    move v1, v0

    goto :goto_7

    :cond_c
    if-nez v8, :cond_d

    .line 185
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    move/from16 v1, v21

    goto :goto_7

    .line 187
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 190
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    add-int v2, v16, v2

    .line 191
    iget-object v3, v6, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->mHorizontalSpacingForRow:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget v4, v6, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->mMaxRows:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 192
    iget v4, v6, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->mRowSpacing:F

    const/high16 v5, -0x38800000    # -65536.0f

    cmpl-float v7, v4, v5

    if-nez v7, :cond_e

    if-nez v18, :cond_e

    const/4 v4, 0x0

    :cond_e
    cmpl-float v5, v4, v5

    if-nez v5, :cond_10

    const/4 v5, 0x1

    if-le v3, v5, :cond_f

    sub-int v9, v23, v2

    sub-int/2addr v3, v5

    .line 196
    div-int/2addr v9, v3

    int-to-float v2, v9

    iput v2, v6, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->mAdjustedRowSpacing:F

    goto :goto_8

    :cond_f
    const/4 v2, 0x0

    .line 198
    iput v2, v6, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->mAdjustedRowSpacing:F

    :goto_8
    move/from16 v2, v23

    move v3, v2

    goto :goto_a

    :cond_10
    const/4 v5, 0x1

    .line 202
    iput v4, v6, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->mAdjustedRowSpacing:F

    if-le v3, v5, :cond_12

    if-nez v18, :cond_11

    int-to-float v2, v2

    sub-int/2addr v3, v5

    int-to-float v3, v3

    mul-float v4, v4, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    goto :goto_9

    :cond_11
    int-to-float v2, v2

    sub-int/2addr v3, v5

    int-to-float v3, v3

    mul-float v4, v4, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    move/from16 v3, v23

    .line 206
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_a

    :cond_12
    :goto_9
    move/from16 v3, v23

    :goto_a
    const/high16 v4, 0x40000000    # 2.0f

    if-ne v8, v4, :cond_13

    move v7, v1

    goto :goto_b

    :cond_13
    move v7, v0

    :goto_b
    move/from16 v0, v18

    if-ne v0, v4, :cond_14

    move v9, v3

    goto :goto_c

    :cond_14
    move v9, v2

    .line 213
    :goto_c
    invoke-virtual {v6, v7, v9}, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public setChildSpacing(I)V
    .locals 0

    .line 308
    iput p1, p0, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->mChildSpacing:I

    .line 309
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->requestLayout()V

    return-void
.end method

.method public setChildSpacingForLastRow(I)V
    .locals 0

    .line 329
    iput p1, p0, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->mChildSpacingForLastRow:I

    .line 330
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->requestLayout()V

    return-void
.end method

.method public setFlow(Z)V
    .locals 0

    .line 288
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->mFlow:Z

    .line 289
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->requestLayout()V

    return-void
.end method

.method public setMaxRows(I)V
    .locals 0

    .line 369
    iput p1, p0, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->mMaxRows:I

    .line 370
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->requestLayout()V

    return-void
.end method

.method public setRowSpacing(F)V
    .locals 0

    .line 350
    iput p1, p0, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->mRowSpacing:F

    .line 351
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->requestLayout()V

    return-void
.end method

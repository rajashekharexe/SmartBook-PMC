.class Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;
.super Landroidx/cardview/widget/CardView;
.source "Dialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/imaterialdesign/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogCardView"
.end annotation


# instance fields
.field private mContentMarginBottom:I

.field private mContentMarginLeft:I

.field private mContentMarginRight:I

.field private mContentMarginTop:I

.field private mDividerPaint:Landroid/graphics/Paint;

.field private mDividerPos:F

.field private mIsRtl:Z

.field private mShowDivider:Z

.field final synthetic this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;


# direct methods
.method public constructor <init>(Lcom/conceptglobal/imaterialdesign/app/Dialog;Landroid/content/Context;)V
    .locals 1

    .line 1150
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    .line 1151
    invoke-direct {p0, p2}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;)V

    const/high16 p1, -0x40800000    # -1.0f

    .line 1140
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->mDividerPos:F

    const/4 p1, 0x0

    .line 1141
    iput-boolean p1, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->mShowDivider:Z

    .line 1148
    iput-boolean p1, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->mIsRtl:Z

    .line 1153
    new-instance p2, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->mDividerPaint:Landroid/graphics/Paint;

    .line 1154
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1155
    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1413
    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->draw(Landroid/graphics/Canvas;)V

    .line 1415
    iget-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->mShowDivider:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget-object v0, v0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mPositiveAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/widget/Button;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget-object v0, v0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mNegativeAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/widget/Button;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget-object v0, v0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mNeutralAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1416
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->getPaddingLeft()I

    move-result v0

    int-to-float v2, v0

    iget v3, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->mDividerPos:F

    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v4, v0

    iget v5, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->mDividerPos:F

    iget-object v6, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->mDividerPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 1332
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->getPaddingLeft()I

    move-result p1

    .line 1333
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->getPaddingTop()I

    move-result p2

    .line 1334
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->getPaddingRight()I

    move-result p3

    sub-int/2addr p4, p3

    .line 1335
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p5, p3

    .line 1337
    iget-object p3, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget-object p3, p3, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mTitle:Lcom/conceptglobal/imaterialdesign/widget/TextView;

    invoke-virtual {p3}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->getVisibility()I

    move-result p3

    if-nez p3, :cond_1

    .line 1338
    iget-boolean p3, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->mIsRtl:Z

    if-eqz p3, :cond_0

    .line 1339
    iget-object p3, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget-object p3, p3, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mTitle:Lcom/conceptglobal/imaterialdesign/widget/TextView;

    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget-object v0, v0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mTitle:Lcom/conceptglobal/imaterialdesign/widget/TextView;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->getMeasuredWidth()I

    move-result v0

    sub-int v0, p4, v0

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget-object v1, v1, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mTitle:Lcom/conceptglobal/imaterialdesign/widget/TextView;

    invoke-virtual {v1}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p3, v0, p2, p4, v1}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->layout(IIII)V

    goto :goto_0

    .line 1341
    :cond_0
    iget-object p3, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget-object p3, p3, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mTitle:Lcom/conceptglobal/imaterialdesign/widget/TextView;

    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget-object v0, v0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mTitle:Lcom/conceptglobal/imaterialdesign/widget/TextView;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget-object v1, v1, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mTitle:Lcom/conceptglobal/imaterialdesign/widget/TextView;

    invoke-virtual {v1}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->layout(IIII)V

    .line 1342
    :goto_0
    iget-object p3, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget-object p3, p3, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mTitle:Lcom/conceptglobal/imaterialdesign/widget/TextView;

    invoke-virtual {p3}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->getMeasuredHeight()I

    move-result p3

    add-int/2addr p2, p3

    .line 1345
    :cond_1
    iget-object p3, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget-object p3, p3, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mNeutralAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-virtual {p3}, Lcom/conceptglobal/imaterialdesign/widget/Button;->getVisibility()I

    move-result p3

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget-object p3, p3, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mNegativeAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-virtual {p3}, Lcom/conceptglobal/imaterialdesign/widget/Button;->getVisibility()I

    move-result p3

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget-object p3, p3, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mPositiveAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-virtual {p3}, Lcom/conceptglobal/imaterialdesign/widget/Button;->getVisibility()I

    move-result p3

    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p3, 0x1

    :goto_2
    if-eqz p3, :cond_4

    .line 1347
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget v0, v0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mActionPadding:I

    sub-int/2addr p5, v0

    .line 1349
    :cond_4
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget v0, v0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mActionOuterHeight:I

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget v1, v1, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mActionHeight:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    if-eqz p3, :cond_e

    .line 1352
    iget-object p3, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    invoke-static {p3}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->access$1100(Lcom/conceptglobal/imaterialdesign/app/Dialog;)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 1353
    iget-object p3, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget-object p3, p3, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mNeutralAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-virtual {p3}, Lcom/conceptglobal/imaterialdesign/widget/Button;->getVisibility()I

    move-result p3

    if-nez p3, :cond_5

    .line 1354
    iget-object p3, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget-object p3, p3, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mNeutralAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget v1, v1, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mActionOuterPadding:I

    sub-int v1, p4, v1

    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget-object v2, v2, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mNeutralAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-virtual {v2}, Lcom/conceptglobal/imaterialdesign/widget/Button;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget v2, v2, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mActionOuterHeight:I

    sub-int v2, p5, v2

    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget v3, v3, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mActionOuterPadding:I

    sub-int v3, p4, v3

    sub-int v4, p5, v0

    invoke-virtual {p3, v1, v2, v3, v4}, Lcom/conceptglobal/imaterialdesign/widget/Button;->layout(IIII)V

    .line 1355
    iget-object p3, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget p3, p3, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mActionOuterHeight:I

    sub-int/2addr p5, p3

    .line 1358
    :cond_5
    iget-object p3, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget-object p3, p3, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mNegativeAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-virtual {p3}, Lcom/conceptglobal/imaterialdesign/widget/Button;->getVisibility()I

    move-result p3

    if-nez p3, :cond_6

    .line 1359
    iget-object p3, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget-object p3, p3, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mNegativeAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget v1, v1, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mActionOuterPadding:I

    sub-int v1, p4, v1

    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget-object v2, v2, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mNegativeAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-virtual {v2}, Lcom/conceptglobal/imaterialdesign/widget/Button;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget v2, v2, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mActionOuterHeight:I

    sub-int v2, p5, v2

    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget v3, v3, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mActionOuterPadding:I

    sub-int v3, p4, v3

    sub-int v4, p5, v0

    invoke-virtual {p3, v1, v2, v3, v4}, Lcom/conceptglobal/imaterialdesign/widget/Button;->layout(IIII)V

    .line 1360
    iget-object p3, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget p3, p3, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mActionOuterHeight:I

    sub-int/2addr p5, p3

    .line 1363
    :cond_6
    iget-object p3, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget-object p3, p3, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mPositiveAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-virtual {p3}, Lcom/conceptglobal/imaterialdesign/widget/Button;->getVisibility()I

    move-result p3

    if-nez p3, :cond_e

    .line 1364
    iget-object p3, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget-object p3, p3, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mPositiveAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget v1, v1, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mActionOuterPadding:I

    sub-int v1, p4, v1

    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget-object v2, v2, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mPositiveAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-virtual {v2}, Lcom/conceptglobal/imaterialdesign/widget/Button;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget v2, v2, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mActionOuterHeight:I

    sub-int v2, p5, v2

    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget v3, v3, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mActionOuterPadding:I

    sub-int v3, p4, v3

    sub-int v0, p5, v0

    invoke-virtual {p3, v1, v2, v3, v0}, Lcom/conceptglobal/imaterialdesign/widget/Button;->layout(IIII)V

    .line 1365
    iget-object p3, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget p3, p3, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mActionOuterHeight:I

    :goto_3
    sub-int/2addr p5, p3

    goto/16 :goto_5

    .line 1369
    :cond_7
    iget-object p3, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget p3, p3, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mActionOuterPadding:I

    add-int/2addr p3, p1

    .line 1370
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget v1, v1, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mActionOuterPadding:I

    sub-int v1, p4, v1

    .line 1371
    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget v2, v2, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mActionOuterHeight:I

    sub-int v2, p5, v2

    add-int/2addr v2, v0

    sub-int v0, p5, v0

    .line 1374
    iget-boolean v3, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->mIsRtl:Z

    if-eqz v3, :cond_a

    .line 1375
    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget-object v3, v3, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mPositiveAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-virtual {v3}, Lcom/conceptglobal/imaterialdesign/widget/Button;->getVisibility()I

    move-result v3

    if-nez v3, :cond_8

    .line 1376
    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget-object v3, v3, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mPositiveAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    iget-object v4, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget-object v4, v4, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mPositiveAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-virtual {v4}, Lcom/conceptglobal/imaterialdesign/widget/Button;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, p3

    invoke-virtual {v3, p3, v2, v4, v0}, Lcom/conceptglobal/imaterialdesign/widget/Button;->layout(IIII)V

    .line 1377
    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget-object v3, v3, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mPositiveAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-virtual {v3}, Lcom/conceptglobal/imaterialdesign/widget/Button;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget v4, v4, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mActionPadding:I

    add-int/2addr v3, v4

    add-int/2addr p3, v3

    .line 1380
    :cond_8
    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget-object v3, v3, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mNegativeAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-virtual {v3}, Lcom/conceptglobal/imaterialdesign/widget/Button;->getVisibility()I

    move-result v3

    if-nez v3, :cond_9

    .line 1381
    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget-object v3, v3, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mNegativeAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    iget-object v4, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget-object v4, v4, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mNegativeAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-virtual {v4}, Lcom/conceptglobal/imaterialdesign/widget/Button;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, p3

    invoke-virtual {v3, p3, v2, v4, v0}, Lcom/conceptglobal/imaterialdesign/widget/Button;->layout(IIII)V

    .line 1384
    :cond_9
    iget-object p3, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget-object p3, p3, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mNeutralAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-virtual {p3}, Lcom/conceptglobal/imaterialdesign/widget/Button;->getVisibility()I

    move-result p3

    if-nez p3, :cond_d

    .line 1385
    iget-object p3, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget-object p3, p3, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mNeutralAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget-object v3, v3, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mNeutralAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-virtual {v3}, Lcom/conceptglobal/imaterialdesign/widget/Button;->getMeasuredWidth()I

    move-result v3

    sub-int v3, v1, v3

    invoke-virtual {p3, v3, v2, v1, v0}, Lcom/conceptglobal/imaterialdesign/widget/Button;->layout(IIII)V

    goto :goto_4

    .line 1389
    :cond_a
    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget-object v3, v3, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mPositiveAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-virtual {v3}, Lcom/conceptglobal/imaterialdesign/widget/Button;->getVisibility()I

    move-result v3

    if-nez v3, :cond_b

    .line 1390
    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget-object v3, v3, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mPositiveAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    iget-object v4, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget-object v4, v4, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mPositiveAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-virtual {v4}, Lcom/conceptglobal/imaterialdesign/widget/Button;->getMeasuredWidth()I

    move-result v4

    sub-int v4, v1, v4

    invoke-virtual {v3, v4, v2, v1, v0}, Lcom/conceptglobal/imaterialdesign/widget/Button;->layout(IIII)V

    .line 1391
    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget-object v3, v3, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mPositiveAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-virtual {v3}, Lcom/conceptglobal/imaterialdesign/widget/Button;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget v4, v4, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mActionPadding:I

    add-int/2addr v3, v4

    sub-int/2addr v1, v3

    .line 1394
    :cond_b
    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget-object v3, v3, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mNegativeAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-virtual {v3}, Lcom/conceptglobal/imaterialdesign/widget/Button;->getVisibility()I

    move-result v3

    if-nez v3, :cond_c

    .line 1395
    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget-object v3, v3, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mNegativeAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    iget-object v4, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget-object v4, v4, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mNegativeAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-virtual {v4}, Lcom/conceptglobal/imaterialdesign/widget/Button;->getMeasuredWidth()I

    move-result v4

    sub-int v4, v1, v4

    invoke-virtual {v3, v4, v2, v1, v0}, Lcom/conceptglobal/imaterialdesign/widget/Button;->layout(IIII)V

    .line 1397
    :cond_c
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget-object v1, v1, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mNeutralAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-virtual {v1}, Lcom/conceptglobal/imaterialdesign/widget/Button;->getVisibility()I

    move-result v1

    if-nez v1, :cond_d

    .line 1398
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget-object v1, v1, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mNeutralAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget-object v3, v3, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mNeutralAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-virtual {v3}, Lcom/conceptglobal/imaterialdesign/widget/Button;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, p3

    invoke-virtual {v1, p3, v2, v3, v0}, Lcom/conceptglobal/imaterialdesign/widget/Button;->layout(IIII)V

    .line 1401
    :cond_d
    :goto_4
    iget-object p3, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget p3, p3, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mActionOuterHeight:I

    goto/16 :goto_3

    :cond_e
    :goto_5
    int-to-float p3, p5

    .line 1405
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->mDividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float/2addr p3, v0

    iput p3, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->mDividerPos:F

    .line 1407
    iget-object p3, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    invoke-static {p3}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->access$1000(Lcom/conceptglobal/imaterialdesign/app/Dialog;)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_f

    .line 1408
    iget-object p3, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    invoke-static {p3}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->access$1000(Lcom/conceptglobal/imaterialdesign/app/Dialog;)Landroid/view/View;

    move-result-object p3

    iget v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->mContentMarginLeft:I

    add-int/2addr p1, v0

    iget v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->mContentMarginTop:I

    add-int/2addr p2, v0

    iget v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->mContentMarginRight:I

    sub-int/2addr p4, v0

    iget v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->mContentMarginBottom:I

    sub-int/2addr p5, v0

    invoke-virtual {p3, p1, p2, p4, p5}, Landroid/view/View;->layout(IIII)V

    :cond_f
    return-void
.end method

.method protected onMeasure(II)V
    .locals 16

    move-object/from16 v0, p0

    .line 1208
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1209
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 1211
    iget-object v3, v0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget v3, v3, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mDialogHorizontalPadding:I

    iget-object v4, v0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    invoke-static {v4}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->access$100(Lcom/conceptglobal/imaterialdesign/app/Dialog;)Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->getPaddingLeft()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1212
    iget-object v4, v0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget v4, v4, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mDialogHorizontalPadding:I

    iget-object v5, v0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    invoke-static {v5}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->access$100(Lcom/conceptglobal/imaterialdesign/app/Dialog;)Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->getPaddingRight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1213
    iget-object v5, v0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget v5, v5, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mDialogVerticalPadding:I

    iget-object v6, v0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    invoke-static {v6}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->access$100(Lcom/conceptglobal/imaterialdesign/app/Dialog;)Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->getPaddingTop()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1214
    iget-object v6, v0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget v6, v6, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mDialogVerticalPadding:I

    iget-object v7, v0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    invoke-static {v7}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->access$100(Lcom/conceptglobal/imaterialdesign/app/Dialog;)Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->getPaddingBottom()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    sub-int/2addr v1, v3

    sub-int/2addr v1, v4

    .line 1217
    iget-object v3, v0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    invoke-static {v3}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->access$600(Lcom/conceptglobal/imaterialdesign/app/Dialog;)I

    move-result v3

    if-lez v3, :cond_0

    .line 1218
    iget-object v3, v0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    invoke-static {v3}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->access$600(Lcom/conceptglobal/imaterialdesign/app/Dialog;)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_0
    sub-int/2addr v2, v5

    sub-int/2addr v2, v6

    .line 1220
    iget-object v3, v0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    invoke-static {v3}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->access$700(Lcom/conceptglobal/imaterialdesign/app/Dialog;)I

    move-result v3

    if-lez v3, :cond_1

    .line 1221
    iget-object v3, v0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    invoke-static {v3}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->access$700(Lcom/conceptglobal/imaterialdesign/app/Dialog;)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1223
    :cond_1
    iget-object v3, v0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    invoke-static {v3}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->access$800(Lcom/conceptglobal/imaterialdesign/app/Dialog;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    move v3, v1

    goto :goto_0

    :cond_2
    iget-object v3, v0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    invoke-static {v3}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->access$800(Lcom/conceptglobal/imaterialdesign/app/Dialog;)I

    move-result v3

    .line 1224
    :goto_0
    iget-object v5, v0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    invoke-static {v5}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->access$900(Lcom/conceptglobal/imaterialdesign/app/Dialog;)I

    move-result v5

    if-ne v5, v4, :cond_3

    move v4, v2

    goto :goto_1

    :cond_3
    iget-object v4, v0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    invoke-static {v4}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->access$900(Lcom/conceptglobal/imaterialdesign/app/Dialog;)I

    move-result v4

    .line 1232
    :goto_1
    iget-object v5, v0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget-object v5, v5, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mTitle:Lcom/conceptglobal/imaterialdesign/widget/TextView;

    invoke-virtual {v5}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->getVisibility()I

    move-result v5

    const/high16 v6, -0x80000000

    const/4 v7, -0x2

    const/4 v8, 0x0

    if-nez v5, :cond_5

    if-ne v3, v7, :cond_4

    move v5, v1

    goto :goto_2

    :cond_4
    move v5, v3

    .line 1233
    :goto_2
    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 1234
    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 1235
    iget-object v10, v0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget-object v10, v10, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mTitle:Lcom/conceptglobal/imaterialdesign/widget/TextView;

    invoke-virtual {v10, v5, v9}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->measure(II)V

    .line 1236
    iget-object v5, v0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget-object v5, v5, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mTitle:Lcom/conceptglobal/imaterialdesign/widget/TextView;

    invoke-virtual {v5}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->getMeasuredWidth()I

    move-result v5

    .line 1237
    iget-object v9, v0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget-object v9, v9, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mTitle:Lcom/conceptglobal/imaterialdesign/widget/TextView;

    invoke-virtual {v9}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->getMeasuredHeight()I

    move-result v9

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 1243
    :goto_3
    iget-object v10, v0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    invoke-static {v10}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->access$1000(Lcom/conceptglobal/imaterialdesign/app/Dialog;)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_7

    if-ne v3, v7, :cond_6

    move v10, v1

    goto :goto_4

    :cond_6
    move v10, v3

    .line 1244
    :goto_4
    iget v11, v0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->mContentMarginLeft:I

    sub-int/2addr v10, v11

    iget v11, v0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->mContentMarginRight:I

    sub-int/2addr v10, v11

    invoke-static {v10, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 1245
    iget v11, v0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->mContentMarginTop:I

    sub-int v11, v2, v11

    iget v12, v0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->mContentMarginBottom:I

    sub-int/2addr v11, v12

    invoke-static {v11, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 1246
    iget-object v11, v0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    invoke-static {v11}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->access$1000(Lcom/conceptglobal/imaterialdesign/app/Dialog;)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11, v10, v6}, Landroid/view/View;->measure(II)V

    .line 1247
    iget-object v6, v0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    invoke-static {v6}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->access$1000(Lcom/conceptglobal/imaterialdesign/app/Dialog;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 1248
    iget-object v10, v0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    invoke-static {v10}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->access$1000(Lcom/conceptglobal/imaterialdesign/app/Dialog;)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    goto :goto_5

    :cond_7
    const/4 v6, 0x0

    const/4 v10, 0x0

    .line 1254
    :goto_5
    iget-object v11, v0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget-object v11, v11, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mPositiveAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-virtual {v11}, Lcom/conceptglobal/imaterialdesign/widget/Button;->getVisibility()I

    move-result v11

    const/high16 v13, 0x40000000    # 2.0f

    if-nez v11, :cond_9

    .line 1255
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 1256
    iget-object v14, v0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget v14, v14, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mActionHeight:I

    invoke-static {v14, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 1257
    iget-object v15, v0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget-object v15, v15, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mPositiveAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-virtual {v15, v11, v14}, Lcom/conceptglobal/imaterialdesign/widget/Button;->measure(II)V

    .line 1259
    iget-object v11, v0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget-object v11, v11, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mPositiveAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-virtual {v11}, Lcom/conceptglobal/imaterialdesign/widget/Button;->getMeasuredWidth()I

    move-result v11

    .line 1261
    iget-object v15, v0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget v15, v15, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mActionMinWidth:I

    if-ge v11, v15, :cond_8

    .line 1262
    iget-object v11, v0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget-object v11, v11, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mPositiveAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    iget-object v15, v0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget v15, v15, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mActionMinWidth:I

    invoke-static {v15, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    invoke-virtual {v11, v15, v14}, Lcom/conceptglobal/imaterialdesign/widget/Button;->measure(II)V

    .line 1263
    iget-object v11, v0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget v11, v11, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mActionMinWidth:I

    :cond_8
    const/4 v14, 0x1

    goto :goto_6

    :cond_9
    const/4 v11, 0x0

    const/4 v14, 0x0

    .line 1271
    :goto_6
    iget-object v15, v0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget-object v15, v15, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mNegativeAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-virtual {v15}, Lcom/conceptglobal/imaterialdesign/widget/Button;->getVisibility()I

    move-result v15

    if-nez v15, :cond_b

    .line 1272
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 1273
    iget-object v12, v0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget v12, v12, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mActionHeight:I

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 1274
    iget-object v7, v0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget-object v7, v7, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mNegativeAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-virtual {v7, v15, v12}, Lcom/conceptglobal/imaterialdesign/widget/Button;->measure(II)V

    .line 1276
    iget-object v7, v0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget-object v7, v7, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mNegativeAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-virtual {v7}, Lcom/conceptglobal/imaterialdesign/widget/Button;->getMeasuredWidth()I

    move-result v7

    .line 1278
    iget-object v15, v0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget v15, v15, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mActionMinWidth:I

    if-ge v7, v15, :cond_a

    .line 1279
    iget-object v7, v0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget-object v7, v7, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mNegativeAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    iget-object v15, v0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget v15, v15, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mActionMinWidth:I

    invoke-static {v15, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    invoke-virtual {v7, v15, v12}, Lcom/conceptglobal/imaterialdesign/widget/Button;->measure(II)V

    .line 1280
    iget-object v7, v0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget v7, v7, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mActionMinWidth:I

    :cond_a
    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    :cond_b
    const/4 v7, 0x0

    .line 1288
    :goto_7
    iget-object v12, v0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget-object v12, v12, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mNeutralAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-virtual {v12}, Lcom/conceptglobal/imaterialdesign/widget/Button;->getVisibility()I

    move-result v12

    if-nez v12, :cond_d

    .line 1289
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 1290
    iget-object v15, v0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget v15, v15, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mActionHeight:I

    invoke-static {v15, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 1291
    iget-object v8, v0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget-object v8, v8, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mNeutralAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-virtual {v8, v12, v15}, Lcom/conceptglobal/imaterialdesign/widget/Button;->measure(II)V

    .line 1293
    iget-object v8, v0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget-object v8, v8, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mNeutralAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-virtual {v8}, Lcom/conceptglobal/imaterialdesign/widget/Button;->getMeasuredWidth()I

    move-result v8

    .line 1295
    iget-object v12, v0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget v12, v12, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mActionMinWidth:I

    if-ge v8, v12, :cond_c

    .line 1296
    iget-object v8, v0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget-object v8, v8, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mNeutralAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    iget-object v12, v0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget v12, v12, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mActionMinWidth:I

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    invoke-virtual {v8, v12, v15}, Lcom/conceptglobal/imaterialdesign/widget/Button;->measure(II)V

    .line 1297
    iget-object v8, v0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget v8, v8, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mActionMinWidth:I

    :cond_c
    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    :cond_d
    const/4 v8, 0x0

    :goto_8
    add-int/2addr v11, v7

    add-int/2addr v11, v8

    .line 1303
    iget-object v7, v0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget v7, v7, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mActionOuterPadding:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v11, v7

    iget-object v7, v0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget v7, v7, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mActionPadding:I

    add-int/lit8 v8, v14, -0x1

    const/4 v12, 0x0

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    mul-int v7, v7, v8

    add-int/2addr v11, v7

    const/4 v7, -0x2

    if-ne v3, v7, :cond_e

    .line 1306
    iget v3, v0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->mContentMarginLeft:I

    add-int/2addr v6, v3

    iget v3, v0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->mContentMarginRight:I

    add-int/2addr v6, v3

    invoke-static {v6, v11}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1308
    :cond_e
    iget-object v1, v0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    if-le v11, v3, :cond_f

    const/4 v5, 0x1

    goto :goto_9

    :cond_f
    const/4 v5, 0x0

    :goto_9
    invoke-static {v1, v5}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->access$1102(Lcom/conceptglobal/imaterialdesign/app/Dialog;Z)Z

    if-lez v14, :cond_10

    .line 1310
    iget-object v1, v0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget v1, v1, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mActionPadding:I

    goto :goto_a

    :cond_10
    const/4 v1, 0x0

    :goto_a
    add-int/2addr v9, v1

    iget v1, v0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->mContentMarginTop:I

    add-int/2addr v9, v1

    iget v1, v0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->mContentMarginBottom:I

    add-int/2addr v9, v1

    .line 1311
    iget-object v1, v0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    invoke-static {v1}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->access$1100(Lcom/conceptglobal/imaterialdesign/app/Dialog;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1312
    iget-object v1, v0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget v1, v1, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mActionOuterHeight:I

    mul-int v1, v1, v14

    add-int/2addr v9, v1

    :goto_b
    const/4 v1, -0x2

    goto :goto_d

    :cond_11
    if-lez v14, :cond_12

    .line 1314
    iget-object v1, v0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget v8, v1, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mActionOuterHeight:I

    goto :goto_c

    :cond_12
    const/4 v8, 0x0

    :goto_c
    add-int/2addr v9, v8

    goto :goto_b

    :goto_d
    if-ne v4, v1, :cond_13

    add-int/2addr v10, v9

    .line 1317
    invoke-static {v2, v10}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1319
    :cond_13
    iget-object v1, v0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    invoke-static {v1}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->access$1000(Lcom/conceptglobal/imaterialdesign/app/Dialog;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 1320
    iget-object v1, v0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    invoke-static {v1}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->access$1000(Lcom/conceptglobal/imaterialdesign/app/Dialog;)Landroid/view/View;

    move-result-object v1

    iget v2, v0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->mContentMarginLeft:I

    sub-int v2, v3, v2

    iget v5, v0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->mContentMarginRight:I

    sub-int/2addr v2, v5

    invoke-static {v2, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    sub-int v5, v4, v9

    invoke-static {v5, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v1, v2, v5}, Landroid/view/View;->measure(II)V

    .line 1322
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v3, v1

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->getPaddingRight()I

    move-result v1

    add-int/2addr v3, v1

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->getPaddingTop()I

    move-result v1

    add-int/2addr v4, v1

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v4, v1

    invoke-virtual {v0, v3, v4}, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1190
    :goto_0
    iget-boolean p1, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->mIsRtl:Z

    if-eq p1, v0, :cond_2

    .line 1191
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->mIsRtl:Z

    .line 1194
    iget-boolean p1, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->mIsRtl:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x4

    goto :goto_1

    :cond_1
    const/4 p1, 0x3

    .line 1196
    :goto_1
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget-object v0, v0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mTitle:Lcom/conceptglobal/imaterialdesign/widget/TextView;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setTextDirection(I)V

    .line 1197
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget-object v0, v0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mPositiveAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/Button;->setTextDirection(I)V

    .line 1198
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget-object v0, v0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mNegativeAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/Button;->setTextDirection(I)V

    .line 1199
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    iget-object v0, v0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mNeutralAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/Button;->setTextDirection(I)V

    .line 1202
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->requestLayout()V

    :cond_2
    return-void
.end method

.method public setContentMargin(I)V
    .locals 0

    .line 1159
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->setContentMargin(IIII)V

    return-void
.end method

.method public setContentMargin(IIII)V
    .locals 0

    .line 1163
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->mContentMarginLeft:I

    .line 1164
    iput p2, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->mContentMarginTop:I

    .line 1165
    iput p3, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->mContentMarginRight:I

    .line 1166
    iput p4, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->mContentMarginBottom:I

    return-void
.end method

.method public setDividerColor(I)V
    .locals 1

    .line 1170
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->mDividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1171
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->invalidate()V

    return-void
.end method

.method public setDividerHeight(I)V
    .locals 1

    .line 1175
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->mDividerPaint:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1176
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->invalidate()V

    return-void
.end method

.method public setShowDivider(Z)V
    .locals 1

    .line 1180
    iget-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->mShowDivider:Z

    if-eq v0, p1, :cond_0

    .line 1181
    iput-boolean p1, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->mShowDivider:Z

    .line 1182
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->invalidate()V

    :cond_0
    return-void
.end method

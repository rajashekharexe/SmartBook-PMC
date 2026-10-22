.class Lcom/conceptglobal/imaterialdesign/app/Dialog$ContainerFrameLayout;
.super Landroid/widget/FrameLayout;
.source "Dialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/imaterialdesign/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContainerFrameLayout"
.end annotation


# instance fields
.field private mClickOutside:Z

.field final synthetic this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;


# direct methods
.method public constructor <init>(Lcom/conceptglobal/imaterialdesign/app/Dialog;Landroid/content/Context;)V
    .locals 0

    .line 1076
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$ContainerFrameLayout;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    .line 1077
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 1074
    iput-boolean p1, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$ContainerFrameLayout;->mClickOutside:Z

    return-void
.end method

.method private isOutsideDialog(FF)Z
    .locals 2

    .line 1100
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$ContainerFrameLayout;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    invoke-static {v0}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->access$100(Lcom/conceptglobal/imaterialdesign/app/Dialog;)Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$ContainerFrameLayout;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    invoke-static {v1}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->access$100(Lcom/conceptglobal/imaterialdesign/app/Dialog;)Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$ContainerFrameLayout;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    invoke-static {v0}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->access$100(Lcom/conceptglobal/imaterialdesign/app/Dialog;)Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->getRight()I

    move-result v0

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$ContainerFrameLayout;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    invoke-static {v1}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->access$100(Lcom/conceptglobal/imaterialdesign/app/Dialog;)Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-gtz p1, :cond_1

    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$ContainerFrameLayout;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    invoke-static {p1}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->access$100(Lcom/conceptglobal/imaterialdesign/app/Dialog;)Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->getTop()I

    move-result p1

    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$ContainerFrameLayout;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    invoke-static {v0}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->access$100(Lcom/conceptglobal/imaterialdesign/app/Dialog;)Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->getPaddingTop()I

    move-result v0

    add-int/2addr p1, v0

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-ltz p1, :cond_1

    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$ContainerFrameLayout;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    invoke-static {p1}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->access$100(Lcom/conceptglobal/imaterialdesign/app/Dialog;)Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->getBottom()I

    move-result p1

    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$ContainerFrameLayout;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    invoke-static {v0}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->access$100(Lcom/conceptglobal/imaterialdesign/app/Dialog;)Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_0

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


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    sub-int/2addr p4, p2

    .line 1091
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$ContainerFrameLayout;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    invoke-static {p1}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->access$100(Lcom/conceptglobal/imaterialdesign/app/Dialog;)Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr p4, p1

    div-int/lit8 p4, p4, 0x2

    sub-int/2addr p5, p3

    .line 1092
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$ContainerFrameLayout;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    invoke-static {p1}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->access$100(Lcom/conceptglobal/imaterialdesign/app/Dialog;)Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr p5, p1

    div-int/lit8 p5, p5, 0x2

    .line 1093
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$ContainerFrameLayout;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    invoke-static {p1}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->access$100(Lcom/conceptglobal/imaterialdesign/app/Dialog;)Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->getMeasuredWidth()I

    move-result p1

    add-int/2addr p1, p4

    .line 1094
    iget-object p2, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$ContainerFrameLayout;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    invoke-static {p2}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->access$100(Lcom/conceptglobal/imaterialdesign/app/Dialog;)Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->getMeasuredHeight()I

    move-result p2

    add-int/2addr p2, p5

    .line 1096
    iget-object p3, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$ContainerFrameLayout;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    invoke-static {p3}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->access$100(Lcom/conceptglobal/imaterialdesign/app/Dialog;)Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;

    move-result-object p3

    invoke-virtual {p3, p4, p5, p1, p2}, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 1082
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1083
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1085
    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$ContainerFrameLayout;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    invoke-static {v2}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->access$100(Lcom/conceptglobal/imaterialdesign/app/Dialog;)Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->measure(II)V

    .line 1086
    invoke-virtual {p0, v0, v1}, Lcom/conceptglobal/imaterialdesign/app/Dialog$ContainerFrameLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1105
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1110
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    if-eq v0, v1, :cond_3

    const/4 p1, 0x2

    if-eq v0, p1, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    return v2

    .line 1120
    :cond_1
    iput-boolean v2, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$ContainerFrameLayout;->mClickOutside:Z

    return v2

    .line 1118
    :cond_2
    iget-boolean p1, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$ContainerFrameLayout;->mClickOutside:Z

    return p1

    .line 1123
    :cond_3
    iget-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$ContainerFrameLayout;->mClickOutside:Z

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/conceptglobal/imaterialdesign/app/Dialog$ContainerFrameLayout;->isOutsideDialog(FF)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1124
    iput-boolean v2, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$ContainerFrameLayout;->mClickOutside:Z

    .line 1125
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$ContainerFrameLayout;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    invoke-static {p1}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->access$400(Lcom/conceptglobal/imaterialdesign/app/Dialog;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$ContainerFrameLayout;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    invoke-static {p1}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->access$500(Lcom/conceptglobal/imaterialdesign/app/Dialog;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1126
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$ContainerFrameLayout;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    invoke-virtual {p1}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->dismiss()V

    :cond_4
    return v1

    :cond_5
    return v2

    .line 1112
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/conceptglobal/imaterialdesign/app/Dialog$ContainerFrameLayout;->isOutsideDialog(FF)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1113
    iput-boolean v1, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$ContainerFrameLayout;->mClickOutside:Z

    return v1

    :cond_7
    return v2
.end method

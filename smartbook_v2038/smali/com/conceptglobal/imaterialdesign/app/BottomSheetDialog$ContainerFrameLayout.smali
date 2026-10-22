.class Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout;
.super Landroid/widget/FrameLayout;
.source "BottomSheetDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContainerFrameLayout"
.end annotation


# instance fields
.field private mChildTop:I

.field private mClickOutside:Z

.field final synthetic this$0:Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;


# direct methods
.method public constructor <init>(Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;Landroid/content/Context;)V
    .locals 0

    .line 384
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout;->this$0:Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;

    .line 385
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 381
    iput-boolean p1, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout;->mClickOutside:Z

    const/4 p1, -0x1

    .line 382
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout;->mChildTop:I

    return-void
.end method

.method private isOutsideDialog(FF)Z
    .locals 3

    .line 464
    iget p1, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout;->mChildTop:I

    int-to-float p1, p1

    const/4 v0, 0x1

    cmpg-float p1, p2, p1

    if-gez p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    .line 467
    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 468
    iget v2, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout;->mChildTop:I

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v2, v1

    int-to-float v1, v2

    cmpl-float p2, p2, v1

    if-lez p2, :cond_1

    return v0

    :cond_1
    return p1
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 476
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout;->this$0:Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;

    invoke-static {v0}, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->access$1000(Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;)Landroid/view/GestureDetector;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout;->this$0:Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;

    invoke-static {v0}, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->access$1000(Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    const/4 p1, 0x0

    .line 419
    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 422
    iget p4, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout;->mChildTop:I

    if-gez p4, :cond_0

    sub-int p4, p5, p3

    .line 423
    iput p4, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout;->mChildTop:I

    .line 425
    :cond_0
    iget p4, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout;->mChildTop:I

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p5, p3

    iget p3, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout;->mChildTop:I

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr p3, v1

    invoke-static {p5, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    invoke-virtual {p2, p1, p4, v0, p3}, Landroid/view/View;->layout(IIII)V

    .line 427
    iget-object p3, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout;->this$0:Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;

    invoke-static {p3}, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->access$600(Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 428
    iget-object p3, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout;->this$0:Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;

    invoke-static {p3, p1}, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->access$602(Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;Z)Z

    .line 430
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout;->this$0:Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;

    invoke-static {p1}, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->access$200(Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;)Landroid/view/animation/Animation;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 431
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout;->this$0:Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;

    invoke-static {p1}, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->access$200(Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;)Landroid/view/animation/Animation;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/animation/Animation;->cancel()V

    .line 432
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout;->this$0:Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;

    const/4 p3, 0x0

    invoke-static {p1, p3}, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->access$202(Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;

    .line 435
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout;->this$0:Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;

    invoke-static {p1}, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->access$700(Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 436
    iget p1, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout;->mChildTop:I

    if-gez p1, :cond_2

    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout;->getHeight()I

    move-result p1

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p1

    .line 437
    :goto_0
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout;->getMeasuredHeight()I

    move-result p2

    iget-object p3, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout;->this$0:Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;

    invoke-static {p3}, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->access$700(Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    sub-int/2addr p2, p3

    if-eq p1, p2, :cond_3

    .line 439
    iget-object p3, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout;->this$0:Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;

    new-instance p4, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$SlideAnimation;

    iget-object p5, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout;->this$0:Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;

    invoke-direct {p4, p5, p1, p2}, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$SlideAnimation;-><init>(Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;II)V

    invoke-static {p3, p4}, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->access$202(Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;

    .line 440
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout;->this$0:Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;

    invoke-static {p1}, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->access$200(Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;)Landroid/view/animation/Animation;

    move-result-object p1

    iget-object p2, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout;->this$0:Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;

    invoke-static {p2}, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->access$800(Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;)I

    move-result p2

    int-to-long p2, p2

    invoke-virtual {p1, p2, p3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 441
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout;->this$0:Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;

    invoke-static {p1}, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->access$200(Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;)Landroid/view/animation/Animation;

    move-result-object p1

    iget-object p2, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout;->this$0:Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;

    invoke-static {p2}, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->access$900(Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;)Landroid/view/animation/Interpolator;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 442
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout;->this$0:Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;

    invoke-static {p1}, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->access$200(Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;)Landroid/view/animation/Animation;

    move-result-object p1

    new-instance p2, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout$1;

    invoke-direct {p2, p0}, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout$1;-><init>(Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout;)V

    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 456
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout;->this$0:Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;

    invoke-static {p1}, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->access$700(Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout;->this$0:Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;

    invoke-static {p2}, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->access$200(Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;)Landroid/view/animation/Animation;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 397
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 398
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/4 v0, 0x0

    .line 400
    invoke-virtual {p0, v0}, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 402
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout;->this$0:Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;

    invoke-static {v1}, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->access$500(Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;)I

    move-result v1

    const/4 v2, -0x2

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 410
    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout;->this$0:Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;

    invoke-static {v2}, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->access$500(Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;)I

    move-result v2

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    goto :goto_0

    .line 407
    :cond_0
    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    goto :goto_0

    .line 404
    :cond_1
    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    const/high16 v2, -0x80000000

    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 414
    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 483
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 488
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

    .line 498
    :cond_1
    iput-boolean v2, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout;->mClickOutside:Z

    return v2

    .line 496
    :cond_2
    iget-boolean p1, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout;->mClickOutside:Z

    return p1

    .line 501
    :cond_3
    iget-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout;->mClickOutside:Z

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout;->isOutsideDialog(FF)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 502
    iput-boolean v2, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout;->mClickOutside:Z

    .line 503
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout;->this$0:Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;

    invoke-static {p1}, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->access$1100(Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout;->this$0:Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;

    invoke-static {p1}, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->access$1200(Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 504
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout;->this$0:Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;

    invoke-virtual {p1}, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog;->dismiss()V

    :cond_4
    return v1

    :cond_5
    return v2

    .line 490
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout;->isOutsideDialog(FF)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 491
    iput-boolean v1, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout;->mClickOutside:Z

    return v1

    :cond_7
    return v2
.end method

.method public setChildTop(I)V
    .locals 2

    .line 389
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout;->mChildTop:I

    const/4 p1, 0x0

    .line 390
    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 392
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/app/BottomSheetDialog$ContainerFrameLayout;->mChildTop:I

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_0
    return-void
.end method

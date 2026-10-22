.class Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbStrokeAnimator;
.super Ljava/lang/Object;
.source "Slider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/imaterialdesign/widget/Slider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ThumbStrokeAnimator"
.end annotation


# instance fields
.field mFillPercent:I

.field mRunning:Z

.field mStartFillPercent:F

.field mStartTime:J

.field final synthetic this$0:Lcom/conceptglobal/imaterialdesign/widget/Slider;


# direct methods
.method constructor <init>(Lcom/conceptglobal/imaterialdesign/widget/Slider;)V
    .locals 0

    .line 1017
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbStrokeAnimator;->this$0:Lcom/conceptglobal/imaterialdesign/widget/Slider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1019
    iput-boolean p1, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbStrokeAnimator;->mRunning:Z

    return-void
.end method


# virtual methods
.method public resetAnimation()V
    .locals 2

    .line 1025
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbStrokeAnimator;->mStartTime:J

    .line 1026
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbStrokeAnimator;->this$0:Lcom/conceptglobal/imaterialdesign/widget/Slider;

    invoke-static {v0}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->access$300(Lcom/conceptglobal/imaterialdesign/widget/Slider;)F

    move-result v0

    iput v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbStrokeAnimator;->mStartFillPercent:F

    return-void
.end method

.method public run()V
    .locals 6

    .line 1059
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1060
    iget-wide v2, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbStrokeAnimator;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbStrokeAnimator;->this$0:Lcom/conceptglobal/imaterialdesign/widget/Slider;

    invoke-static {v1}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->access$100(Lcom/conceptglobal/imaterialdesign/widget/Slider;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1061
    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbStrokeAnimator;->this$0:Lcom/conceptglobal/imaterialdesign/widget/Slider;

    invoke-static {v2}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->access$200(Lcom/conceptglobal/imaterialdesign/widget/Slider;)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .line 1063
    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbStrokeAnimator;->this$0:Lcom/conceptglobal/imaterialdesign/widget/Slider;

    invoke-static {v3}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->access$400(Lcom/conceptglobal/imaterialdesign/widget/Slider;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbStrokeAnimator;->mFillPercent:I

    int-to-float v4, v4

    iget v5, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbStrokeAnimator;->mStartFillPercent:F

    sub-float/2addr v4, v5

    mul-float v4, v4, v2

    add-float/2addr v4, v5

    :goto_0
    invoke-static {v3, v4}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->access$302(Lcom/conceptglobal/imaterialdesign/widget/Slider;F)F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 1066
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbStrokeAnimator;->stopAnimation()V

    .line 1068
    :cond_1
    iget-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbStrokeAnimator;->mRunning:Z

    if-eqz v0, :cond_3

    .line 1069
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbStrokeAnimator;->this$0:Lcom/conceptglobal/imaterialdesign/widget/Slider;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1070
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbStrokeAnimator;->this$0:Lcom/conceptglobal/imaterialdesign/widget/Slider;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 1072
    :cond_2
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbStrokeAnimator;->stopAnimation()V

    .line 1075
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbStrokeAnimator;->this$0:Lcom/conceptglobal/imaterialdesign/widget/Slider;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->invalidate()V

    return-void
.end method

.method public startAnimation(I)Z
    .locals 5

    .line 1030
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbStrokeAnimator;->this$0:Lcom/conceptglobal/imaterialdesign/widget/Slider;

    invoke-static {v0}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->access$300(Lcom/conceptglobal/imaterialdesign/widget/Slider;)F

    move-result v0

    int-to-float v1, p1

    const/4 v2, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    return v2

    .line 1033
    :cond_0
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbStrokeAnimator;->mFillPercent:I

    .line 1035
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbStrokeAnimator;->this$0:Lcom/conceptglobal/imaterialdesign/widget/Slider;

    invoke-virtual {p1}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1036
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbStrokeAnimator;->resetAnimation()V

    const/4 p1, 0x1

    .line 1037
    iput-boolean p1, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbStrokeAnimator;->mRunning:Z

    .line 1038
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbStrokeAnimator;->this$0:Lcom/conceptglobal/imaterialdesign/widget/Slider;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 1039
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbStrokeAnimator;->this$0:Lcom/conceptglobal/imaterialdesign/widget/Slider;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->invalidate()V

    return p1

    .line 1043
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbStrokeAnimator;->this$0:Lcom/conceptglobal/imaterialdesign/widget/Slider;

    invoke-static {p1}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->access$400(Lcom/conceptglobal/imaterialdesign/widget/Slider;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbStrokeAnimator;->mFillPercent:I

    int-to-float v0, v0

    :goto_0
    invoke-static {p1, v0}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->access$302(Lcom/conceptglobal/imaterialdesign/widget/Slider;F)F

    .line 1044
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbStrokeAnimator;->this$0:Lcom/conceptglobal/imaterialdesign/widget/Slider;

    invoke-virtual {p1}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->invalidate()V

    return v2
.end method

.method public stopAnimation()V
    .locals 2

    const/4 v0, 0x0

    .line 1050
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbStrokeAnimator;->mRunning:Z

    .line 1051
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbStrokeAnimator;->this$0:Lcom/conceptglobal/imaterialdesign/widget/Slider;

    invoke-static {v0}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->access$400(Lcom/conceptglobal/imaterialdesign/widget/Slider;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbStrokeAnimator;->mFillPercent:I

    int-to-float v1, v1

    :goto_0
    invoke-static {v0, v1}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->access$302(Lcom/conceptglobal/imaterialdesign/widget/Slider;F)F

    .line 1052
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbStrokeAnimator;->this$0:Lcom/conceptglobal/imaterialdesign/widget/Slider;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1053
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbStrokeAnimator;->this$0:Lcom/conceptglobal/imaterialdesign/widget/Slider;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1054
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbStrokeAnimator;->this$0:Lcom/conceptglobal/imaterialdesign/widget/Slider;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->invalidate()V

    return-void
.end method

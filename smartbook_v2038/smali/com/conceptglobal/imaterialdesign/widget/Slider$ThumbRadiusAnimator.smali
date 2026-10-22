.class Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbRadiusAnimator;
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
    name = "ThumbRadiusAnimator"
.end annotation


# instance fields
.field mRadius:I

.field mRunning:Z

.field mStartRadius:F

.field mStartTime:J

.field final synthetic this$0:Lcom/conceptglobal/imaterialdesign/widget/Slider;


# direct methods
.method constructor <init>(Lcom/conceptglobal/imaterialdesign/widget/Slider;)V
    .locals 0

    .line 954
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbRadiusAnimator;->this$0:Lcom/conceptglobal/imaterialdesign/widget/Slider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 956
    iput-boolean p1, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbRadiusAnimator;->mRunning:Z

    return-void
.end method


# virtual methods
.method public resetAnimation()V
    .locals 2

    .line 962
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbRadiusAnimator;->mStartTime:J

    .line 963
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbRadiusAnimator;->this$0:Lcom/conceptglobal/imaterialdesign/widget/Slider;

    invoke-static {v0}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->access$000(Lcom/conceptglobal/imaterialdesign/widget/Slider;)F

    move-result v0

    iput v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbRadiusAnimator;->mStartRadius:F

    return-void
.end method

.method public run()V
    .locals 6

    .line 996
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 997
    iget-wide v2, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbRadiusAnimator;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbRadiusAnimator;->this$0:Lcom/conceptglobal/imaterialdesign/widget/Slider;

    invoke-static {v1}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->access$100(Lcom/conceptglobal/imaterialdesign/widget/Slider;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 998
    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbRadiusAnimator;->this$0:Lcom/conceptglobal/imaterialdesign/widget/Slider;

    invoke-static {v2}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->access$200(Lcom/conceptglobal/imaterialdesign/widget/Slider;)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .line 1000
    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbRadiusAnimator;->this$0:Lcom/conceptglobal/imaterialdesign/widget/Slider;

    iget v4, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbRadiusAnimator;->mRadius:I

    int-to-float v4, v4

    iget v5, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbRadiusAnimator;->mStartRadius:F

    sub-float/2addr v4, v5

    mul-float v4, v4, v2

    add-float/2addr v4, v5

    invoke-static {v3, v4}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->access$002(Lcom/conceptglobal/imaterialdesign/widget/Slider;F)F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 1003
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbRadiusAnimator;->stopAnimation()V

    .line 1005
    :cond_0
    iget-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbRadiusAnimator;->mRunning:Z

    if-eqz v0, :cond_2

    .line 1006
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbRadiusAnimator;->this$0:Lcom/conceptglobal/imaterialdesign/widget/Slider;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1007
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbRadiusAnimator;->this$0:Lcom/conceptglobal/imaterialdesign/widget/Slider;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1009
    :cond_1
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbRadiusAnimator;->stopAnimation()V

    .line 1012
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbRadiusAnimator;->this$0:Lcom/conceptglobal/imaterialdesign/widget/Slider;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->invalidate()V

    return-void
.end method

.method public startAnimation(I)Z
    .locals 5

    .line 967
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbRadiusAnimator;->this$0:Lcom/conceptglobal/imaterialdesign/widget/Slider;

    invoke-static {v0}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->access$000(Lcom/conceptglobal/imaterialdesign/widget/Slider;)F

    move-result v0

    int-to-float v1, p1

    const/4 v2, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    return v2

    .line 970
    :cond_0
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbRadiusAnimator;->mRadius:I

    .line 972
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbRadiusAnimator;->this$0:Lcom/conceptglobal/imaterialdesign/widget/Slider;

    invoke-virtual {p1}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 973
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbRadiusAnimator;->resetAnimation()V

    const/4 p1, 0x1

    .line 974
    iput-boolean p1, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbRadiusAnimator;->mRunning:Z

    .line 975
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbRadiusAnimator;->this$0:Lcom/conceptglobal/imaterialdesign/widget/Slider;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 976
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbRadiusAnimator;->this$0:Lcom/conceptglobal/imaterialdesign/widget/Slider;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->invalidate()V

    return p1

    .line 980
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbRadiusAnimator;->this$0:Lcom/conceptglobal/imaterialdesign/widget/Slider;

    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbRadiusAnimator;->mRadius:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->access$002(Lcom/conceptglobal/imaterialdesign/widget/Slider;F)F

    .line 981
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbRadiusAnimator;->this$0:Lcom/conceptglobal/imaterialdesign/widget/Slider;

    invoke-virtual {p1}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->invalidate()V

    return v2
.end method

.method public stopAnimation()V
    .locals 2

    const/4 v0, 0x0

    .line 987
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbRadiusAnimator;->mRunning:Z

    .line 988
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbRadiusAnimator;->this$0:Lcom/conceptglobal/imaterialdesign/widget/Slider;

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbRadiusAnimator;->mRadius:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->access$002(Lcom/conceptglobal/imaterialdesign/widget/Slider;F)F

    .line 989
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbRadiusAnimator;->this$0:Lcom/conceptglobal/imaterialdesign/widget/Slider;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 990
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbRadiusAnimator;->this$0:Lcom/conceptglobal/imaterialdesign/widget/Slider;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 991
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbRadiusAnimator;->this$0:Lcom/conceptglobal/imaterialdesign/widget/Slider;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->invalidate()V

    return-void
.end method

.class Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbMoveAnimator;
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
    name = "ThumbMoveAnimator"
.end annotation


# instance fields
.field mDuration:I

.field mFillPercent:F

.field mPosition:F

.field mRunning:Z

.field mStartFillPercent:F

.field mStartPosition:F

.field mStartRadius:F

.field mStartTime:J

.field final synthetic this$0:Lcom/conceptglobal/imaterialdesign/widget/Slider;


# direct methods
.method constructor <init>(Lcom/conceptglobal/imaterialdesign/widget/Slider;)V
    .locals 0

    .line 1080
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbMoveAnimator;->this$0:Lcom/conceptglobal/imaterialdesign/widget/Slider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1082
    iput-boolean p1, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbMoveAnimator;->mRunning:Z

    return-void
.end method


# virtual methods
.method public getPosition()F
    .locals 1

    .line 1096
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbMoveAnimator;->mPosition:F

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 1092
    iget-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbMoveAnimator;->mRunning:Z

    return v0
.end method

.method public resetAnimation()V
    .locals 2

    .line 1100
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbMoveAnimator;->mStartTime:J

    .line 1101
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbMoveAnimator;->this$0:Lcom/conceptglobal/imaterialdesign/widget/Slider;

    invoke-static {v0}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->access$500(Lcom/conceptglobal/imaterialdesign/widget/Slider;)F

    move-result v0

    iput v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbMoveAnimator;->mStartPosition:F

    .line 1102
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbMoveAnimator;->this$0:Lcom/conceptglobal/imaterialdesign/widget/Slider;

    invoke-static {v0}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->access$300(Lcom/conceptglobal/imaterialdesign/widget/Slider;)F

    move-result v0

    iput v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbMoveAnimator;->mStartFillPercent:F

    .line 1103
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbMoveAnimator;->this$0:Lcom/conceptglobal/imaterialdesign/widget/Slider;

    invoke-static {v0}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->access$000(Lcom/conceptglobal/imaterialdesign/widget/Slider;)F

    move-result v0

    iput v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbMoveAnimator;->mStartRadius:F

    .line 1104
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbMoveAnimator;->mPosition:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    iput v1, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbMoveAnimator;->mFillPercent:F

    .line 1105
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbMoveAnimator;->this$0:Lcom/conceptglobal/imaterialdesign/widget/Slider;

    invoke-static {v0}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->access$600(Lcom/conceptglobal/imaterialdesign/widget/Slider;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbMoveAnimator;->this$0:Lcom/conceptglobal/imaterialdesign/widget/Slider;

    invoke-static {v0}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->access$700(Lcom/conceptglobal/imaterialdesign/widget/Slider;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbMoveAnimator;->this$0:Lcom/conceptglobal/imaterialdesign/widget/Slider;

    invoke-static {v0}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->access$100(Lcom/conceptglobal/imaterialdesign/widget/Slider;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbMoveAnimator;->this$0:Lcom/conceptglobal/imaterialdesign/widget/Slider;

    invoke-static {v1}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->access$800(Lcom/conceptglobal/imaterialdesign/widget/Slider;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbMoveAnimator;->this$0:Lcom/conceptglobal/imaterialdesign/widget/Slider;

    invoke-static {v0}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->access$800(Lcom/conceptglobal/imaterialdesign/widget/Slider;)I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbMoveAnimator;->mDuration:I

    return-void
.end method

.method public run()V
    .locals 8

    .line 1140
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1141
    iget-wide v2, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbMoveAnimator;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbMoveAnimator;->mDuration:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1142
    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbMoveAnimator;->this$0:Lcom/conceptglobal/imaterialdesign/widget/Slider;

    invoke-static {v2}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->access$200(Lcom/conceptglobal/imaterialdesign/widget/Slider;)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .line 1144
    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbMoveAnimator;->this$0:Lcom/conceptglobal/imaterialdesign/widget/Slider;

    invoke-static {v3}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->access$600(Lcom/conceptglobal/imaterialdesign/widget/Slider;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1145
    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbMoveAnimator;->this$0:Lcom/conceptglobal/imaterialdesign/widget/Slider;

    invoke-static {v3}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->access$700(Lcom/conceptglobal/imaterialdesign/widget/Slider;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1146
    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbMoveAnimator;->this$0:Lcom/conceptglobal/imaterialdesign/widget/Slider;

    iget v4, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbMoveAnimator;->mPosition:F

    iget v5, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbMoveAnimator;->mStartPosition:F

    sub-float/2addr v4, v5

    mul-float v4, v4, v2

    add-float/2addr v4, v5

    invoke-static {v3, v4}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->access$502(Lcom/conceptglobal/imaterialdesign/widget/Slider;F)F

    .line 1147
    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbMoveAnimator;->this$0:Lcom/conceptglobal/imaterialdesign/widget/Slider;

    invoke-static {v3}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->access$400(Lcom/conceptglobal/imaterialdesign/widget/Slider;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbMoveAnimator;->mFillPercent:F

    iget v5, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbMoveAnimator;->mStartFillPercent:F

    sub-float/2addr v4, v5

    mul-float v4, v4, v2

    add-float/2addr v4, v5

    :goto_0
    invoke-static {v3, v4}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->access$302(Lcom/conceptglobal/imaterialdesign/widget/Slider;F)F

    goto/16 :goto_3

    .line 1150
    :cond_1
    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbMoveAnimator;->this$0:Lcom/conceptglobal/imaterialdesign/widget/Slider;

    invoke-static {v2}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->access$800(Lcom/conceptglobal/imaterialdesign/widget/Slider;)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbMoveAnimator;->mDuration:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 1151
    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbMoveAnimator;->this$0:Lcom/conceptglobal/imaterialdesign/widget/Slider;

    invoke-static {v3}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->access$800(Lcom/conceptglobal/imaterialdesign/widget/Slider;)I

    move-result v3

    iget-object v4, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbMoveAnimator;->this$0:Lcom/conceptglobal/imaterialdesign/widget/Slider;

    invoke-static {v4}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->access$100(Lcom/conceptglobal/imaterialdesign/widget/Slider;)I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbMoveAnimator;->mDuration:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    cmpg-float v4, v0, v2

    if-gez v4, :cond_3

    .line 1153
    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbMoveAnimator;->this$0:Lcom/conceptglobal/imaterialdesign/widget/Slider;

    invoke-static {v3}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->access$200(Lcom/conceptglobal/imaterialdesign/widget/Slider;)Landroid/view/animation/Interpolator;

    move-result-object v3

    div-float v2, v0, v2

    invoke-interface {v3, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .line 1154
    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbMoveAnimator;->this$0:Lcom/conceptglobal/imaterialdesign/widget/Slider;

    iget v4, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbMoveAnimator;->mStartRadius:F

    sub-float v5, v1, v2

    mul-float v4, v4, v5

    invoke-static {v3, v4}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->access$002(Lcom/conceptglobal/imaterialdesign/widget/Slider;F)F

    .line 1155
    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbMoveAnimator;->this$0:Lcom/conceptglobal/imaterialdesign/widget/Slider;

    iget v4, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbMoveAnimator;->mPosition:F

    iget v5, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbMoveAnimator;->mStartPosition:F

    sub-float/2addr v4, v5

    mul-float v4, v4, v2

    add-float/2addr v4, v5

    invoke-static {v3, v4}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->access$502(Lcom/conceptglobal/imaterialdesign/widget/Slider;F)F

    .line 1156
    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbMoveAnimator;->this$0:Lcom/conceptglobal/imaterialdesign/widget/Slider;

    invoke-static {v3}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->access$400(Lcom/conceptglobal/imaterialdesign/widget/Slider;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    iget v4, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbMoveAnimator;->mFillPercent:F

    iget v5, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbMoveAnimator;->mStartFillPercent:F

    sub-float/2addr v4, v5

    mul-float v4, v4, v2

    add-float/2addr v4, v5

    :goto_1
    invoke-static {v3, v4}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->access$302(Lcom/conceptglobal/imaterialdesign/widget/Slider;F)F

    goto/16 :goto_3

    :cond_3
    cmpl-float v2, v0, v3

    if-lez v2, :cond_7

    .line 1159
    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbMoveAnimator;->this$0:Lcom/conceptglobal/imaterialdesign/widget/Slider;

    invoke-static {v2}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->access$900(Lcom/conceptglobal/imaterialdesign/widget/Slider;)I

    move-result v4

    int-to-float v4, v4

    sub-float v5, v0, v3

    mul-float v4, v4, v5

    sub-float v3, v1, v3

    div-float/2addr v4, v3

    invoke-static {v2, v4}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->access$002(Lcom/conceptglobal/imaterialdesign/widget/Slider;F)F

    goto :goto_3

    .line 1164
    :cond_4
    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbMoveAnimator;->this$0:Lcom/conceptglobal/imaterialdesign/widget/Slider;

    iget v4, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbMoveAnimator;->mPosition:F

    iget v5, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbMoveAnimator;->mStartPosition:F

    sub-float/2addr v4, v5

    mul-float v4, v4, v2

    add-float/2addr v4, v5

    invoke-static {v3, v4}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->access$502(Lcom/conceptglobal/imaterialdesign/widget/Slider;F)F

    .line 1165
    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbMoveAnimator;->this$0:Lcom/conceptglobal/imaterialdesign/widget/Slider;

    invoke-static {v3}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->access$400(Lcom/conceptglobal/imaterialdesign/widget/Slider;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_5
    iget v4, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbMoveAnimator;->mFillPercent:F

    iget v5, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbMoveAnimator;->mStartFillPercent:F

    sub-float/2addr v4, v5

    mul-float v4, v4, v2

    add-float/2addr v4, v5

    :goto_2
    invoke-static {v3, v4}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->access$302(Lcom/conceptglobal/imaterialdesign/widget/Slider;F)F

    float-to-double v2, v0

    const-wide v4, 0x3fc999999999999aL    # 0.2

    const/high16 v6, 0x40a00000    # 5.0f

    cmpg-double v7, v2, v4

    if-gez v7, :cond_6

    .line 1168
    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbMoveAnimator;->this$0:Lcom/conceptglobal/imaterialdesign/widget/Slider;

    invoke-static {v2}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->access$900(Lcom/conceptglobal/imaterialdesign/widget/Slider;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbMoveAnimator;->this$0:Lcom/conceptglobal/imaterialdesign/widget/Slider;

    invoke-static {v4}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->access$1000(Lcom/conceptglobal/imaterialdesign/widget/Slider;)I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v0

    mul-float v4, v4, v6

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbMoveAnimator;->this$0:Lcom/conceptglobal/imaterialdesign/widget/Slider;

    invoke-static {v4}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->access$000(Lcom/conceptglobal/imaterialdesign/widget/Slider;)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v2, v3}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->access$002(Lcom/conceptglobal/imaterialdesign/widget/Slider;F)F

    goto :goto_3

    :cond_6
    const-wide v4, 0x3fe999999999999aL    # 0.8

    cmpl-double v7, v2, v4

    if-ltz v7, :cond_7

    .line 1170
    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbMoveAnimator;->this$0:Lcom/conceptglobal/imaterialdesign/widget/Slider;

    invoke-static {v2}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->access$900(Lcom/conceptglobal/imaterialdesign/widget/Slider;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbMoveAnimator;->this$0:Lcom/conceptglobal/imaterialdesign/widget/Slider;

    invoke-static {v4}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->access$1000(Lcom/conceptglobal/imaterialdesign/widget/Slider;)I

    move-result v4

    int-to-float v4, v4

    mul-float v5, v0, v6

    sub-float/2addr v6, v5

    mul-float v4, v4, v6

    add-float/2addr v3, v4

    invoke-static {v2, v3}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->access$002(Lcom/conceptglobal/imaterialdesign/widget/Slider;F)F

    :cond_7
    :goto_3
    cmpl-float v0, v0, v1

    if-nez v0, :cond_8

    .line 1175
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbMoveAnimator;->stopAnimation()V

    .line 1177
    :cond_8
    iget-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbMoveAnimator;->mRunning:Z

    if-eqz v0, :cond_a

    .line 1178
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbMoveAnimator;->this$0:Lcom/conceptglobal/imaterialdesign/widget/Slider;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 1179
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbMoveAnimator;->this$0:Lcom/conceptglobal/imaterialdesign/widget/Slider;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_4

    .line 1181
    :cond_9
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbMoveAnimator;->stopAnimation()V

    .line 1184
    :cond_a
    :goto_4
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbMoveAnimator;->this$0:Lcom/conceptglobal/imaterialdesign/widget/Slider;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->invalidate()V

    return-void
.end method

.method public startAnimation(F)Z
    .locals 5

    .line 1109
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbMoveAnimator;->this$0:Lcom/conceptglobal/imaterialdesign/widget/Slider;

    invoke-static {v0}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->access$500(Lcom/conceptglobal/imaterialdesign/widget/Slider;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return v1

    .line 1112
    :cond_0
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbMoveAnimator;->mPosition:F

    .line 1114
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbMoveAnimator;->this$0:Lcom/conceptglobal/imaterialdesign/widget/Slider;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1115
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbMoveAnimator;->resetAnimation()V

    const/4 p1, 0x1

    .line 1116
    iput-boolean p1, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbMoveAnimator;->mRunning:Z

    .line 1117
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbMoveAnimator;->this$0:Lcom/conceptglobal/imaterialdesign/widget/Slider;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 1118
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbMoveAnimator;->this$0:Lcom/conceptglobal/imaterialdesign/widget/Slider;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->invalidate()V

    return p1

    .line 1122
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbMoveAnimator;->this$0:Lcom/conceptglobal/imaterialdesign/widget/Slider;

    invoke-static {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->access$502(Lcom/conceptglobal/imaterialdesign/widget/Slider;F)F

    .line 1123
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbMoveAnimator;->this$0:Lcom/conceptglobal/imaterialdesign/widget/Slider;

    invoke-virtual {p1}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->invalidate()V

    return v1
.end method

.method public stopAnimation()V
    .locals 2

    const/4 v0, 0x0

    .line 1129
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbMoveAnimator;->mRunning:Z

    .line 1130
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbMoveAnimator;->this$0:Lcom/conceptglobal/imaterialdesign/widget/Slider;

    invoke-static {v0}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->access$600(Lcom/conceptglobal/imaterialdesign/widget/Slider;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbMoveAnimator;->this$0:Lcom/conceptglobal/imaterialdesign/widget/Slider;

    invoke-static {v1}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->access$700(Lcom/conceptglobal/imaterialdesign/widget/Slider;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbMoveAnimator;->this$0:Lcom/conceptglobal/imaterialdesign/widget/Slider;

    invoke-static {v1}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->access$900(Lcom/conceptglobal/imaterialdesign/widget/Slider;)I

    move-result v1

    int-to-float v1, v1

    :goto_0
    invoke-static {v0, v1}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->access$002(Lcom/conceptglobal/imaterialdesign/widget/Slider;F)F

    .line 1131
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbMoveAnimator;->this$0:Lcom/conceptglobal/imaterialdesign/widget/Slider;

    invoke-static {v0}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->access$400(Lcom/conceptglobal/imaterialdesign/widget/Slider;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbMoveAnimator;->mFillPercent:F

    :goto_1
    invoke-static {v0, v1}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->access$302(Lcom/conceptglobal/imaterialdesign/widget/Slider;F)F

    .line 1132
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbMoveAnimator;->this$0:Lcom/conceptglobal/imaterialdesign/widget/Slider;

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbMoveAnimator;->mPosition:F

    invoke-static {v0, v1}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->access$502(Lcom/conceptglobal/imaterialdesign/widget/Slider;F)F

    .line 1133
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbMoveAnimator;->this$0:Lcom/conceptglobal/imaterialdesign/widget/Slider;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1134
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbMoveAnimator;->this$0:Lcom/conceptglobal/imaterialdesign/widget/Slider;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1135
    :cond_2
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/Slider$ThumbMoveAnimator;->this$0:Lcom/conceptglobal/imaterialdesign/widget/Slider;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/widget/Slider;->invalidate()V

    return-void
.end method

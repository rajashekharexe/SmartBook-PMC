.class Lcom/conceptglobal/pmc/camera2/ScalingTextureView$1;
.super Ljava/lang/Object;
.source "ScalingTextureView.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/camera2/ScalingTextureView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/camera2/ScalingTextureView;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/camera2/ScalingTextureView;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/conceptglobal/pmc/camera2/ScalingTextureView$1;->this$0:Lcom/conceptglobal/pmc/camera2/ScalingTextureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    return-void
.end method

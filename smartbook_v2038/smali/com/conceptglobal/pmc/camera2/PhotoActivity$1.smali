.class Lcom/conceptglobal/pmc/camera2/PhotoActivity$1;
.super Ljava/lang/Object;
.source "PhotoActivity.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/camera2/PhotoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/camera2/PhotoActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/camera2/PhotoActivity;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity$1;->this$0:Lcom/conceptglobal/pmc/camera2/PhotoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 84
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity$1;->this$0:Lcom/conceptglobal/pmc/camera2/PhotoActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->access$000(Lcom/conceptglobal/pmc/camera2/PhotoActivity;)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

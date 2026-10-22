.class Lcom/conceptglobal/pmc/camera2/CameraActivity$44;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/camera2/CameraActivity;->displayCapturedImage([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$mByteArrayImage:[B


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/camera2/CameraActivity;Landroid/app/Activity;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2615
    iput-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$44;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    iput-object p2, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$44;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$44;->val$mByteArrayImage:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2619
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 2620
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    const/4 v1, 0x1

    .line 2621
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 2623
    iget-object v1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$44;->val$activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 2624
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->setDefaultRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$44;->val$mByteArrayImage:[B

    .line 2625
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load([B)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$44;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    .line 2626
    invoke-static {v1}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$400(Lcom/conceptglobal/pmc/camera2/CameraActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 2627
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity$44;->this$0:Lcom/conceptglobal/pmc/camera2/CameraActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->access$3300(Lcom/conceptglobal/pmc/camera2/CameraActivity;)V

    return-void
.end method

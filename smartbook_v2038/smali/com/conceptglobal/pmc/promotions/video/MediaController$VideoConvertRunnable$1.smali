.class Lcom/conceptglobal/pmc/promotions/video/MediaController$VideoConvertRunnable$1;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/video/MediaController$VideoConvertRunnable;->runConversion(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$videoPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 99
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/video/MediaController$VideoConvertRunnable$1;->val$videoPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 103
    :try_start_0
    new-instance v0, Lcom/conceptglobal/pmc/promotions/video/MediaController$VideoConvertRunnable;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/video/MediaController$VideoConvertRunnable$1;->val$videoPath:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/conceptglobal/pmc/promotions/video/MediaController$VideoConvertRunnable;-><init>(Ljava/lang/String;Lcom/conceptglobal/pmc/promotions/video/MediaController$1;)V

    .line 104
    new-instance v1, Ljava/lang/Thread;

    const-string v2, "VideoConvertRunnable"

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 105
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 106
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 108
    const-string v1, "tmessages"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

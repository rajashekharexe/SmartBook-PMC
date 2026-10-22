.class Lcom/conceptglobal/pmc/camera2/PhotoSaveActivity$2;
.super Ljava/lang/Object;
.source "PhotoSaveActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/camera2/PhotoSaveActivity;->setListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/camera2/PhotoSaveActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/camera2/PhotoSaveActivity;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/conceptglobal/pmc/camera2/PhotoSaveActivity$2;->this$0:Lcom/conceptglobal/pmc/camera2/PhotoSaveActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 112
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/PhotoSaveActivity$2;->this$0:Lcom/conceptglobal/pmc/camera2/PhotoSaveActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/camera2/PhotoSaveActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "imagePath"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 122
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/PhotoSaveActivity$2;->this$0:Lcom/conceptglobal/pmc/camera2/PhotoSaveActivity;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/camera2/PhotoSaveActivity;->compressImage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "File Saved ::::::::::::: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "test"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 125
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 127
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/PhotoSaveActivity$2;->this$0:Lcom/conceptglobal/pmc/camera2/PhotoSaveActivity;

    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0}, Lcom/conceptglobal/pmc/camera2/PhotoSaveActivity;->setResult(ILandroid/content/Intent;)V

    .line 128
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/PhotoSaveActivity$2;->this$0:Lcom/conceptglobal/pmc/camera2/PhotoSaveActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/camera2/PhotoSaveActivity;->finish()V

    return-void
.end method

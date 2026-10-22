.class Lcom/conceptglobal/pmc/fo/PictureReporting$GalleryLongClick;
.super Ljava/lang/Object;
.source "PictureReporting.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;

# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/PictureReporting;->Initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GalleryLongClick"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/PictureReporting;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/PictureReporting;)V
    .locals 0

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting$GalleryLongClick;->this$0:Lcom/conceptglobal/pmc/fo/PictureReporting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    :try_start_0
    new-instance v0, Lcom/conceptglobal/pmc/utils/CompressHelper;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/utils/CompressHelper;-><init>()V

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting$GalleryLongClick;->this$0:Lcom/conceptglobal/pmc/fo/PictureReporting;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fo/PictureReporting;->access$400(Lcom/conceptglobal/pmc/fo/PictureReporting;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/utils/CompressHelper;->getCompressLoaction(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getImageFiledate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".JPEG"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/PictureReporting$GalleryLongClick;->this$0:Lcom/conceptglobal/pmc/fo/PictureReporting;

    invoke-static {v2, v1}, Lcom/conceptglobal/pmc/fo/PictureReporting;->access$502(Lcom/conceptglobal/pmc/fo/PictureReporting;Ljava/io/File;)Ljava/io/File;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/PictureReporting$GalleryLongClick;->this$0:Lcom/conceptglobal/pmc/fo/PictureReporting;

    invoke-static {v2, v0}, Lcom/conceptglobal/pmc/fo/PictureReporting;->access$602(Lcom/conceptglobal/pmc/fo/PictureReporting;Ljava/lang/String;)Ljava/lang/String;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.category.OPENABLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReporting$GalleryLongClick;->this$0:Lcom/conceptglobal/pmc/fo/PictureReporting;

    const/16 v2, 0x2720

    invoke-virtual {v0, v1, v2}, Lcom/conceptglobal/pmc/fo/PictureReporting;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "PictureReporting"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.class Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$GalleryLongClick;
.super Ljava/lang/Object;
.source "PictureReporting_Expenses.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;

# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->Initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GalleryLongClick"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;)V
    .locals 0

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$GalleryLongClick;->this$0:Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    :try_start_0
    # Get the outer class reference
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$GalleryLongClick;->this$0:Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;

    # Create file path for the gallery image (same as camera does)
    # Step 1: Get compress location
    new-instance v1, Lcom/conceptglobal/pmc/utils/CompressHelper;

    invoke-direct {v1}, Lcom/conceptglobal/pmc/utils/CompressHelper;-><init>()V

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$GalleryLongClick;->this$0:Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->access$400(Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/utils/CompressHelper;->getCompressLoaction(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    # Step 2: Build file name
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getImageFiledate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".JPEG"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # Step 3: Create File object and set imageFile
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$GalleryLongClick;->this$0:Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;

    invoke-static {v3, v2}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->access$502(Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;Ljava/io/File;)Ljava/io/File;

    # Step 4: Set imagePath = imageFile.getAbsolutePath()
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$GalleryLongClick;->this$0:Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->access$602(Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;Ljava/lang/String;)Ljava/lang/String;

    # Step 5: Create gallery intent ACTION_PICK
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.PICK"

    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    # Step 6: startActivityForResult with request code 10003 (0x2713)
    const/16 v3, 0x2713

    invoke-virtual {v0, v2, v3}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->startActivityForResult(Landroid/content/Intent;I)V

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

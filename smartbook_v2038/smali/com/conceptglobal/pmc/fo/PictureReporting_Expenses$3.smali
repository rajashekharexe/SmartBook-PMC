.class Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$3;
.super Ljava/lang/Object;
.source "PictureReporting_Expenses.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->Initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$3;->this$0:Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 295
    const-string p1, "android.media.action.IMAGE_CAPTURE"

    const-string v0, "PictureReporting"

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$3;->this$0:Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->access$300(Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    .line 296
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$3;->this$0:Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "Maximum limit reached"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_0
    :try_start_0
    new-instance v0, Lcom/conceptglobal/pmc/utils/CompressHelper;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/utils/CompressHelper;-><init>()V

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$3;->this$0:Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->access$400(Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;)Landroid/content/Context;

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

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$3;->this$0:Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;

    invoke-static {v2, v1}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->access$502(Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;Ljava/io/File;)Ljava/io/File;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$3;->this$0:Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;

    invoke-static {v2, v0}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->access$602(Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$3;->this$0:Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;

    const-string v2, "com.conceptglobal.pmcdeepakfertilizers.provider"

    invoke-static {v0, v2, v1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "output"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, ""

    invoke-static {v2, v0}, Landroid/content/ClipData;->newRawUri(Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$3;->this$0:Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;

    const/16 v2, 0x2712

    invoke-virtual {v0, v1, v2}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "PictureReporting"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

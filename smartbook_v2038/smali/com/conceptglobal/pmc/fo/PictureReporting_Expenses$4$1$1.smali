.class Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$4$1$1;
.super Ljava/lang/Object;
.source "PictureReporting_Expenses.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$4$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$4$1;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$4$1;)V
    .locals 0

    .line 395
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$4$1$1;->this$2:Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$4$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 399
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$4$1$1;->this$2:Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$4$1;

    iget-object v0, v0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$4$1;->this$1:Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$4;

    iget-object v0, v0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$4;->this$0:Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->hideLoader()V

    .line 400
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$4$1$1;->this$2:Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$4$1;

    iget-object v0, v0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$4$1;->this$1:Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$4;

    iget-object v0, v0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$4;->this$0:Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->access$1200(Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;)[B

    move-result-object v0

    if-nez v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$4$1$1;->this$2:Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$4$1;

    iget-object v0, v0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$4$1;->this$1:Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$4;

    iget-object v0, v0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$4;->this$0:Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_plsCaptureImageProperly()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 403
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 404
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$4$1$1;->this$2:Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$4$1;

    iget-object v1, v1, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$4$1;->this$1:Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$4;

    iget-object v1, v1, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$4;->this$0:Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->access$600(Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImagePath"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 405
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$4$1$1;->this$2:Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$4$1;

    iget-object v1, v1, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$4$1;->this$1:Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$4;

    iget-object v1, v1, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$4;->this$0:Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;

    const/16 v2, 0x65

    invoke-virtual {v1, v2, v0}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->setResult(ILandroid/content/Intent;)V

    .line 406
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$4$1$1;->this$2:Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$4$1;

    iget-object v0, v0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$4$1;->this$1:Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$4;

    iget-object v0, v0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$4;->this$0:Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->onBackPressed()V

    return-void
.end method

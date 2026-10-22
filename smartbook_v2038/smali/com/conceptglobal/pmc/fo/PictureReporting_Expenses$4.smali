.class Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$4;
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

    .line 362
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$4;->this$0:Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 367
    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Navigation"

    const-string v1, "save click"

    const-string v2, "PictureReporting"

    invoke-static {v0, v1, v2, p1}, Lcom/conceptglobal/pmc/utils/PLog;->location(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$4;->this$0:Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->access$200(Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$4;->this$0:Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->access$200(Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_1

    .line 372
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$4;->this$0:Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->access$800(Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v3, 0x2

    if-ne p1, v3, :cond_2

    .line 373
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$4;->this$0:Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->access$1000(Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$4;->this$0:Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->access$900(Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;)Lcom/conceptglobal/pmc/model/ImageDetails;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/ImageDetails;->getSubject()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$4;->this$0:Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->access$1100(Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$4;->this$0:Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->access$900(Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;)Lcom/conceptglobal/pmc/model/ImageDetails;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/ImageDetails;->getComments()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$4;->this$0:Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->access$600(Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;)Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$4;->this$0:Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->access$900(Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;)Lcom/conceptglobal/pmc/model/ImageDetails;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/ImageDetails;->getPicturePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$4;->this$0:Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->access$200(Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$4;->this$0:Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->access$900(Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;)Lcom/conceptglobal/pmc/model/ImageDetails;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/ImageDetails;->getEventTypeId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 374
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$4;->this$0:Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_noChangesToUpdate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 377
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$4;->this$0:Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->checkinsertdata()V

    .line 378
    const-string p1, "ImageUpdated "

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, p1, v2, v3}, Lcom/conceptglobal/pmc/utils/PLog;->location(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$4;->this$0:Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_updateSuccesToast()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 380
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 381
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$4;->this$0:Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->access$600(Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImagePath"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$4;->this$0:Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;

    const/16 v1, 0x65

    invoke-virtual {v0, v1, p1}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->setResult(ILandroid/content/Intent;)V

    .line 383
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$4;->this$0:Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->onBackPressed()V

    goto :goto_0

    .line 386
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$4;->this$0:Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->access$1200(Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;)[B

    move-result-object p1

    if-nez p1, :cond_3

    .line 387
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$4;->this$0:Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_plsCaptureImage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->alertdialogbox(Ljava/lang/String;)V

    goto :goto_0

    .line 390
    :cond_3
    :try_start_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$4;->this$0:Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_pleaseWaitDialog()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->showLoader(Ljava/lang/String;)V

    .line 391
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$4$1;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$4$1;-><init>(Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$4;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 411
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 413
    invoke-static {v2, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 414
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    .line 369
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$4;->this$0:Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;

    const-string v0, "Please select event type."

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

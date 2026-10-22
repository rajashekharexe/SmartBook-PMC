.class Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$3;
.super Ljava/lang/Object;
.source "VideoCapureActivityCopy2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->Initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;)V
    .locals 0

    .line 360
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 364
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->access$000(Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->access$000(Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_1

    .line 368
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->access$400(Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 369
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->access$600(Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->access$500(Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;)Lcom/conceptglobal/pmc/model/ImageDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/ImageDetails;->getSubject()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->access$700(Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->access$500(Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;)Lcom/conceptglobal/pmc/model/ImageDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/ImageDetails;->getComments()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->access$800(Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->access$500(Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;)Lcom/conceptglobal/pmc/model/ImageDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/ImageDetails;->getPicturePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->access$000(Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->access$500(Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;)Lcom/conceptglobal/pmc/model/ImageDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/ImageDetails;->getEventTypeId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 370
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->getApplicationContext()Landroid/content/Context;

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

    .line 374
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->checkinsertdata()V

    .line 375
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_updateSuccesToast()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 376
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->onBackPressed()V

    goto :goto_0

    .line 382
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->access$900(Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;)Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_3

    .line 386
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;

    const-string v0, "Please Capture video"

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->alertdialogbox(Ljava/lang/String;)V

    goto :goto_0

    .line 390
    :cond_3
    :try_start_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_pleaseWaitDialog()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->showLoader(Ljava/lang/String;)V

    .line 391
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$3$1;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$3$1;-><init>(Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$3;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 438
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 440
    const-string v0, "VideoCapureActivityCopy2"

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 441
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    .line 365
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;

    const-string v1, "Please select event type."

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

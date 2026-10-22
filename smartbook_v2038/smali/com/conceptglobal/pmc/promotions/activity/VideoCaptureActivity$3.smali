.class Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$3;
.super Ljava/lang/Object;
.source "VideoCaptureActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->Initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 243
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->access$100(Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->access$100(Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;)Landroid/widget/TextView;

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

    .line 247
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->access$300(Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 248
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->access$500(Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->access$400(Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;)Lcom/conceptglobal/pmc/model/ImageDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/ImageDetails;->getSubject()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->access$600(Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->access$400(Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;)Lcom/conceptglobal/pmc/model/ImageDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/ImageDetails;->getComments()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->access$700(Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->access$400(Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;)Lcom/conceptglobal/pmc/model/ImageDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/ImageDetails;->getPicturePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->access$100(Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->access$400(Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;)Lcom/conceptglobal/pmc/model/ImageDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/ImageDetails;->getEventTypeId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 249
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->getApplicationContext()Landroid/content/Context;

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

    .line 252
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->checkinsertdata()V

    .line 253
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->getApplicationContext()Landroid/content/Context;

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

    .line 254
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 255
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->access$700(Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImagePath"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;

    const/16 v1, 0x65

    invoke-virtual {v0, v1, p1}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->setResult(ILandroid/content/Intent;)V

    .line 257
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->onBackPressed()V

    goto :goto_0

    .line 260
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;

    iget-object p1, p1, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->compressedFile:Ljava/io/File;

    if-nez p1, :cond_3

    .line 262
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;

    const-string v0, "Please select/capture video"

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->alertdialogbox(Ljava/lang/String;)V

    goto :goto_0

    .line 265
    :cond_3
    :try_start_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_pleaseWaitDialog()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->showLoader(Ljava/lang/String;)V

    .line 266
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$3$1;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$3$1;-><init>(Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$3;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 285
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 287
    const-string v0, "VideoCaptureActivity"

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 288
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    .line 244
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;

    const-string v1, "Please select event type."

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.class Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$25;
.super Ljava/lang/Object;
.source "SAAttributeActivity_FBF.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->showRemarkSelectionAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)V
    .locals 0

    .line 2476
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$25;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13

    .line 2481
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$25;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;

    iget-object p1, p1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->d_remarks:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 2483
    :try_start_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$25;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->access$2800(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)V

    .line 2484
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$25;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->access$2900(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_0

    .line 2485
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$25;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->access$3000(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$25;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->access$800(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)I

    move-result v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$25;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->access$3100(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->deleteFarmerDetailsActivitySelfAssign(Ljava/lang/String;IJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V

    .line 2487
    :cond_0
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$25$1;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$25$1;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$25;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2497
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 2499
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$25;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->access$800(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)I

    move-result v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$25;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->access$3000(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$25;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->access$3100(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$25;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;

    invoke-static {v5}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->access$3200(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/conceptglobal/pmc/common/Queries;->updateNotDoneForSelfActivities(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V

    .line 2501
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$25;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->access$3300(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object p2

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$25;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->access$3100(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/conceptglobal/pmc/common/Queries;->updateDraftForAssignmentvisit(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIFContains(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 2502
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$25;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->access$3000(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$25;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->access$3400(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$25;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->access$1400(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$25;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->access$1500(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$25;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->access$3100(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)J

    move-result-wide v6

    const-string v8, "false"

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$25;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->access$3500(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)Ljava/lang/String;

    move-result-object v9

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$25;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->access$3600(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    const-string v12, ""

    const/4 v0, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v12}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->UpdateAssignmentVisistDetails(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2504
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$25;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->access$3000(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$25;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->access$3400(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$25;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->access$1400(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$25;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->access$1500(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$25;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->access$3100(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)J

    move-result-wide v6

    const-string v8, "false"

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$25;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->access$3500(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)Ljava/lang/String;

    move-result-object v9

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$25;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->access$3600(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    const-string v12, ""

    const/4 v0, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v12}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertAssignmentVisistDetails(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    .line 2506
    :goto_1
    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$25;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;

    invoke-static {p2}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->access$000(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_2

    .line 2507
    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$25;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;

    invoke-static {p2}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->access$000(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/model/ImageDetails;->getImageId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->UpdateImageServerStatus(J)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 2512
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$25;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const/4 v0, -0x1

    invoke-virtual {p1, v0, p2}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->setResult(ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2514
    :try_start_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$25;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->getParent()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;

    .line 2515
    const-string p2, "1"

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;->onComplete(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 2517
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2518
    const-string p2, "SAAttributeActivity_FBF"

    invoke-static {p2, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 2522
    const-string p2, "FarmerFormActivity"

    invoke-static {p2, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2524
    :goto_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF$25;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF;->finish()V

    return-void
.end method

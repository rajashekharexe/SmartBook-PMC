.class Lcom/conceptglobal/pmc/fo/FarmerFormActivity$32;
.super Ljava/lang/Object;
.source "FarmerFormActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->showRemarkSelectionAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)V
    .locals 0

    .line 3638
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$32;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 20

    move-object/from16 v1, p0

    .line 3643
    const-string v2, "FarmerFormActivity"

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$32;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    iget-object v0, v0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->d_remarks:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3645
    :try_start_0
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$32;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$4400(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)V

    .line 3646
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$32;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$4500(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3647
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    iget-object v4, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$32;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$2500(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$32;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v5}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$1800(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)I

    move-result v5

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$32;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$4600(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/conceptglobal/pmc/common/Queries;->deleteFarmerDetailsActivity(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V

    .line 3649
    :cond_0
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$32;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$4500(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Ljava/util/List;

    move-result-object v3

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$32;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$2500(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$32;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$1800(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)I

    move-result v5

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$32;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$4700(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)I

    move-result v8

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$32;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$1100(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)I

    move-result v9

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$32;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$4600(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)I

    move-result v13

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$32;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$4800(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    move-result-object v14

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$32;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$4900(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)I

    move-result v15

    const/4 v6, 0x1

    const/4 v7, 0x1

    const-wide/16 v10, 0x0

    const/4 v12, 0x1

    invoke-static/range {v3 .. v15}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertFarmerActivityDetailsUpdate(Ljava/util/List;Ljava/lang/String;IIIIIJIILcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;I)V

    .line 3650
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    iget-object v4, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$32;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$1800(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)I

    move-result v4

    iget-object v5, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$32;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v5}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$2500(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$32;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$4700(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)I

    move-result v6

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$32;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v7}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$5000(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, p2

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/conceptglobal/pmc/common/Queries;->updateNotDoneForActivities(ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 3652
    :try_start_1
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$32;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$3900(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 3653
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$32;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    const-string v3, ","

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$3900(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$$ExternalSyntheticBackport0;->m(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$5102(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3656
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3658
    :cond_1
    :goto_0
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$32;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$2600(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    iget-object v4, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$32;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$4600(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->updateDraftForAssignmentvisit(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIFContains(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 3659
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$32;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$4700(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)I

    move-result v3

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$32;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$2500(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$32;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$5200(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$32;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$400(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$32;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$500(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$32;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$4600(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)I

    move-result v8

    const-string v11, "false"

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$32;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$5300(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Ljava/lang/String;

    move-result-object v12

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$32;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$5400(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Ljava/lang/String;

    move-result-object v13

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$32;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$5500(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Lcom/conceptglobal/pmc/model/TimeDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/TimeDetails;->getMobileStartTime()Ljava/lang/String;

    move-result-object v14

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$32;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$5500(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Lcom/conceptglobal/pmc/model/TimeDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/TimeDetails;->getMobileEndTime()Ljava/lang/String;

    move-result-object v15

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$32;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$5500(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Lcom/conceptglobal/pmc/model/TimeDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/TimeDetails;->getGPSStartTime()Ljava/lang/String;

    move-result-object v16

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$32;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$5500(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Lcom/conceptglobal/pmc/model/TimeDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/TimeDetails;->getGPSEndTime()Ljava/lang/String;

    move-result-object v17

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$32;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$5100(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Ljava/lang/String;

    move-result-object v18

    const-string v19, ""

    const-wide/16 v9, 0x0

    invoke-static/range {v3 .. v19}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->UpdateAssignmentVisistDetails(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3661
    :cond_2
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$32;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$4700(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)I

    move-result v3

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$32;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$2500(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$32;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$5200(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$32;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$400(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$32;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$500(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$32;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$4600(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)I

    move-result v8

    const-string v11, "false"

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$32;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$5300(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Ljava/lang/String;

    move-result-object v12

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$32;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$5400(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Ljava/lang/String;

    move-result-object v13

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$32;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$5500(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Lcom/conceptglobal/pmc/model/TimeDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/TimeDetails;->getMobileStartTime()Ljava/lang/String;

    move-result-object v14

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$32;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$5500(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Lcom/conceptglobal/pmc/model/TimeDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/TimeDetails;->getMobileEndTime()Ljava/lang/String;

    move-result-object v15

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$32;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$5500(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Lcom/conceptglobal/pmc/model/TimeDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/TimeDetails;->getGPSStartTime()Ljava/lang/String;

    move-result-object v16

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$32;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$5500(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Lcom/conceptglobal/pmc/model/TimeDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/TimeDetails;->getGPSEndTime()Ljava/lang/String;

    move-result-object v17

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$32;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$5100(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Ljava/lang/String;

    move-result-object v18

    const-string v19, ""

    const-wide/16 v9, 0x0

    invoke-static/range {v3 .. v19}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertAssignmentVisistDetails(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/4 v0, 0x0

    .line 3663
    :goto_2
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$32;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$000(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 3664
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$32;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$000(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/ImageDetails;->getImageId()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->UpdateImageServerStatus(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3668
    :cond_3
    :try_start_3
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$32;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$1100(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)I

    move-result v3

    iget-object v4, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$32;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$2500(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->getUpdateLastVisitedDate(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3669
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 3670
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 3673
    :catch_1
    :cond_4
    :try_start_4
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$32;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/4 v4, -0x1

    invoke-virtual {v0, v4, v3}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->setResult(ILandroid/content/Intent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 3675
    :try_start_5
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$32;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;

    .line 3676
    const-string v3, "1"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;->onComplete(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    .line 3678
    :try_start_6
    invoke-static {v2, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3679
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3681
    :goto_3
    sget-object v0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3683
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$32;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v3, Lcom/conceptglobal/pmc/service/SyncDataService;

    invoke-static {v0, v3}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isServiceRunning(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 3684
    new-instance v0, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$32;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-direct {v0, v3}, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;-><init>(Landroid/content/Context;)V

    .line 3685
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;->startService()V

    goto :goto_4

    .line 3688
    :cond_5
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$32;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    new-instance v3, Landroid/content/Intent;

    sget-object v4, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->context:Landroid/content/Context;

    const-class v5, Lcom/conceptglobal/pmc/fo/ToDoActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->startActivity(Landroid/content/Intent;)V

    .line 3690
    :cond_6
    :goto_4
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$32;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->finish()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    .line 3692
    invoke-static {v2, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5
    return-void
.end method

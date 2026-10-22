.class Lcom/conceptglobal/pmc/fo/SAAttributeActivity$25;
.super Ljava/lang/Object;
.source "SAAttributeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->showRemarkSelectionAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)V
    .locals 0

    .line 2894
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$25;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 19

    move-object/from16 v1, p0

    .line 2899
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$25;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    iget-object v0, v0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->d_remarks:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2901
    :try_start_0
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$25;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$3500(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)V

    .line 2902
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$25;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$3600(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2903
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$25;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$3700(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$25;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$800(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)I

    move-result v4

    iget-object v5, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$25;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {v5}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$3800(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)J

    move-result-wide v5

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/conceptglobal/pmc/common/Queries;->deleteFarmerDetailsActivitySelfAssign(Ljava/lang/String;IJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V

    .line 2905
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$25$1;

    invoke-direct {v2, v1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$25$1;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity$25;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2915
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2917
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$25;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$800(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)I

    move-result v3

    iget-object v4, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$25;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$3700(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$25;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {v5}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$3800(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)J

    move-result-wide v5

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$25;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {v7}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$3900(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/conceptglobal/pmc/common/Queries;->updateNotDoneForSelfActivities(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 2920
    :try_start_1
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$25;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$2900(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2921
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$25;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    const-string v2, ","

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$2900(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$$ExternalSyntheticBackport0;->m(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$4002(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2924
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2926
    :cond_1
    :goto_0
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$25;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$1600(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$25;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$3800(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->updateDraftForAssignmentvisit(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIFContains(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 2927
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$25;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$3700(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$25;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$4100(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$25;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$1800(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$25;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$1900(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$25;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$3800(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)J

    move-result-wide v8

    const-string v10, "false"

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$25;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$4200(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Ljava/lang/String;

    move-result-object v11

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$25;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$4300(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Ljava/lang/String;

    move-result-object v12

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$25;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$4400(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Lcom/conceptglobal/pmc/model/TimeDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/TimeDetails;->getMobileStartTime()Ljava/lang/String;

    move-result-object v13

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$25;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$4400(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Lcom/conceptglobal/pmc/model/TimeDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/TimeDetails;->getMobileEndTime()Ljava/lang/String;

    move-result-object v14

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$25;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$4400(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Lcom/conceptglobal/pmc/model/TimeDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/TimeDetails;->getGPSStartTime()Ljava/lang/String;

    move-result-object v15

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$25;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$4400(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Lcom/conceptglobal/pmc/model/TimeDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/TimeDetails;->getGPSEndTime()Ljava/lang/String;

    move-result-object v16

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$25;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$4000(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Ljava/lang/String;

    move-result-object v17

    const-string v18, ""

    const/4 v2, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v18}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->UpdateAssignmentVisistDetails(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2929
    :cond_2
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$25;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$3700(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$25;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$4100(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$25;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$1800(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$25;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$1900(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$25;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$3800(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)J

    move-result-wide v8

    const-string v10, "false"

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$25;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$4200(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Ljava/lang/String;

    move-result-object v11

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$25;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$4300(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Ljava/lang/String;

    move-result-object v12

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$25;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$4400(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Lcom/conceptglobal/pmc/model/TimeDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/TimeDetails;->getMobileStartTime()Ljava/lang/String;

    move-result-object v13

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$25;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$4400(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Lcom/conceptglobal/pmc/model/TimeDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/TimeDetails;->getMobileEndTime()Ljava/lang/String;

    move-result-object v14

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$25;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$4400(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Lcom/conceptglobal/pmc/model/TimeDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/TimeDetails;->getGPSStartTime()Ljava/lang/String;

    move-result-object v15

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$25;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$4400(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Lcom/conceptglobal/pmc/model/TimeDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/TimeDetails;->getGPSEndTime()Ljava/lang/String;

    move-result-object v16

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$25;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$4000(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Ljava/lang/String;

    move-result-object v17

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$25;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$4500(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    const/4 v2, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v18}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertAssignmentVisistDetails(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/4 v0, 0x0

    .line 2931
    :goto_2
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$25;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$000(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 2932
    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$25;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$000(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/ImageDetails;->getImageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->UpdateImageServerStatus(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2936
    :cond_3
    :try_start_3
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iget-object v2, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$25;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$1300(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)I

    move-result v2

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$25;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$3700(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->getUpdateLastVisitedDate(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2937
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2938
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 2943
    :catch_1
    :cond_4
    :try_start_4
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$25;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/4 v3, -0x1

    invoke-virtual {v0, v3, v2}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->setResult(ILandroid/content/Intent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 2945
    :try_start_5
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$25;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;

    .line 2946
    const-string v2, "1"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;->onComplete(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    .line 2948
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2949
    const-string v2, "SAAttributeActivity"

    invoke-static {v2, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 2953
    const-string v2, "FarmerFormActivity"

    invoke-static {v2, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2955
    :goto_3
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$25;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->finish()V

    return-void
.end method

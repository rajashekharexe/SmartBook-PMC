.class Lcom/conceptglobal/pmc/fo/SurveyActivity$31;
.super Ljava/lang/Object;
.source "SurveyActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/SurveyActivity;->showRemarkSelectionAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/SurveyActivity;)V
    .locals 0

    .line 3174
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SurveyActivity$31;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 16

    move-object/from16 v1, p0

    .line 3179
    const-string v2, "SurveyActivity"

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity$31;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    iget-object v0, v0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->d_remarks:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3181
    :try_start_0
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity$31;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->access$3600(Lcom/conceptglobal/pmc/fo/SurveyActivity;)V

    .line 3182
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity$31;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->access$3700(Lcom/conceptglobal/pmc/fo/SurveyActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3183
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    iget-object v4, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity$31;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->access$2000(Lcom/conceptglobal/pmc/fo/SurveyActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity$31;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-static {v5}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->access$3800(Lcom/conceptglobal/pmc/fo/SurveyActivity;)I

    move-result v5

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity$31;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->access$3900(Lcom/conceptglobal/pmc/fo/SurveyActivity;)I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/conceptglobal/pmc/common/Queries;->deleteFarmerDetailsActivity(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V

    .line 3185
    :cond_0
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity$31;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->access$3700(Lcom/conceptglobal/pmc/fo/SurveyActivity;)Ljava/util/List;

    move-result-object v3

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity$31;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->access$2000(Lcom/conceptglobal/pmc/fo/SurveyActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity$31;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->access$3800(Lcom/conceptglobal/pmc/fo/SurveyActivity;)I

    move-result v5

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity$31;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->access$4000(Lcom/conceptglobal/pmc/fo/SurveyActivity;)I

    move-result v8

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity$31;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->access$4100(Lcom/conceptglobal/pmc/fo/SurveyActivity;)I

    move-result v9

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity$31;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->access$3900(Lcom/conceptglobal/pmc/fo/SurveyActivity;)I

    move-result v13

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity$31;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->access$4200(Lcom/conceptglobal/pmc/fo/SurveyActivity;)Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    move-result-object v14

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity$31;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->access$4300(Lcom/conceptglobal/pmc/fo/SurveyActivity;)I

    move-result v15

    const/4 v6, 0x1

    const/4 v7, 0x1

    const-wide/16 v10, 0x0

    const/4 v12, 0x1

    invoke-static/range {v3 .. v15}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertFarmerActivityDetailsUpdate(Ljava/util/List;Ljava/lang/String;IIIIIJIILcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;I)V

    .line 3186
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    iget-object v4, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity$31;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->access$3800(Lcom/conceptglobal/pmc/fo/SurveyActivity;)I

    move-result v4

    iget-object v5, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity$31;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-static {v5}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->access$2000(Lcom/conceptglobal/pmc/fo/SurveyActivity;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity$31;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->access$4000(Lcom/conceptglobal/pmc/fo/SurveyActivity;)I

    move-result v6

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity$31;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-static {v7}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->access$4400(Lcom/conceptglobal/pmc/fo/SurveyActivity;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, p2

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/conceptglobal/pmc/common/Queries;->updateNotDoneForActivities(ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V

    .line 3187
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity$31;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->access$2100(Lcom/conceptglobal/pmc/fo/SurveyActivity;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    iget-object v4, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity$31;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->access$3900(Lcom/conceptglobal/pmc/fo/SurveyActivity;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->updateDraftForAssignmentvisit(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIFContains(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 3188
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity$31;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->access$4000(Lcom/conceptglobal/pmc/fo/SurveyActivity;)I

    move-result v3

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity$31;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->access$2000(Lcom/conceptglobal/pmc/fo/SurveyActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity$31;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->access$4500(Lcom/conceptglobal/pmc/fo/SurveyActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity$31;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->access$400(Lcom/conceptglobal/pmc/fo/SurveyActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity$31;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->access$500(Lcom/conceptglobal/pmc/fo/SurveyActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity$31;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->access$3900(Lcom/conceptglobal/pmc/fo/SurveyActivity;)I

    move-result v8

    const-string v11, "false"

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity$31;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->access$4600(Lcom/conceptglobal/pmc/fo/SurveyActivity;)Ljava/lang/String;

    move-result-object v12

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity$31;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->access$4700(Lcom/conceptglobal/pmc/fo/SurveyActivity;)Ljava/lang/String;

    move-result-object v13

    const-string v14, ""

    const-string v15, ""

    const-wide/16 v9, 0x0

    invoke-static/range {v3 .. v15}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->UpdateAssignmentVisistDetails(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3190
    :cond_1
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity$31;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->access$4000(Lcom/conceptglobal/pmc/fo/SurveyActivity;)I

    move-result v3

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity$31;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->access$2000(Lcom/conceptglobal/pmc/fo/SurveyActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity$31;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->access$4500(Lcom/conceptglobal/pmc/fo/SurveyActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity$31;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->access$400(Lcom/conceptglobal/pmc/fo/SurveyActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity$31;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->access$500(Lcom/conceptglobal/pmc/fo/SurveyActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity$31;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->access$3900(Lcom/conceptglobal/pmc/fo/SurveyActivity;)I

    move-result v8

    const-string v11, "false"

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity$31;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->access$4600(Lcom/conceptglobal/pmc/fo/SurveyActivity;)Ljava/lang/String;

    move-result-object v12

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity$31;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->access$4700(Lcom/conceptglobal/pmc/fo/SurveyActivity;)Ljava/lang/String;

    move-result-object v13

    const-string v14, ""

    const-string v15, ""

    const-wide/16 v9, 0x0

    invoke-static/range {v3 .. v15}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertAssignmentVisistDetails(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    .line 3192
    :goto_1
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity$31;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->access$000(Lcom/conceptglobal/pmc/fo/SurveyActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 3193
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity$31;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->access$000(Lcom/conceptglobal/pmc/fo/SurveyActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/ImageDetails;->getImageId()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->UpdateImageServerStatus(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3196
    :cond_2
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity$31;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/4 v4, -0x1

    invoke-virtual {v0, v4, v3}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->setResult(ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3198
    :try_start_1
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity$31;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;

    .line 3199
    const-string v3, "1"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;->onComplete(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 3201
    :try_start_2
    invoke-static {v2, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3202
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3204
    :goto_2
    sget-object v0, Lcom/conceptglobal/pmc/fo/SurveyActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3206
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity$31;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v3, Lcom/conceptglobal/pmc/service/SyncDataService;

    invoke-static {v0, v3}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isServiceRunning(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3207
    new-instance v0, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity$31;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-direct {v0, v3}, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;-><init>(Landroid/content/Context;)V

    .line 3208
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;->startService()V

    goto :goto_3

    .line 3211
    :cond_3
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity$31;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    new-instance v3, Landroid/content/Intent;

    sget-object v4, Lcom/conceptglobal/pmc/fo/SurveyActivity;->context:Landroid/content/Context;

    const-class v5, Lcom/conceptglobal/pmc/fo/ToDoActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->startActivity(Landroid/content/Intent;)V

    .line 3213
    :cond_4
    :goto_3
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/SurveyActivity$31;->this$0:Lcom/conceptglobal/pmc/fo/SurveyActivity;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fo/SurveyActivity;->finish()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    .line 3215
    invoke-static {v2, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    return-void
.end method

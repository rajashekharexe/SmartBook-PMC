.class Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$30;
.super Ljava/lang/Object;
.source "FarmerFormActivity_Expenses.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->showRemarkSelectionAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)V
    .locals 0

    .line 3256
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$30;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 20

    move-object/from16 v1, p0

    .line 3261
    const-string v2, "FarmerFormActivity"

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$30;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

    iget-object v0, v0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->d_remarks:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3263
    :try_start_0
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$30;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->access$4200(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)V

    .line 3264
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$30;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->access$4300(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3265
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    iget-object v4, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$30;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->access$4400(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->deleteExpensesFarmerDetailsActivity(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V

    .line 3267
    :cond_0
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$30;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->access$4300(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)Ljava/util/List;

    move-result-object v3

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$30;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->access$2700(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$30;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->access$1900(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)I

    move-result v5

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$30;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->access$1400(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)I

    move-result v9

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$30;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->access$4400(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)J

    move-result-wide v10

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$30;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->access$4500(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    move-result-object v14

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$30;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->access$4600(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)I

    move-result v15

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$30;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->access$4700(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)Ljava/lang/String;

    move-result-object v16

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$30;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->access$4800(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)I

    move-result v17

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$30;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->access$4900(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)J

    move-result-wide v18

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-static/range {v3 .. v19}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertExpensesFarmerActivityDetailsUpdate(Ljava/util/List;Ljava/lang/String;IIIIIJIILcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;ILjava/lang/String;IJ)V

    .line 3268
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    iget-object v4, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$30;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->access$1900(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)I

    move-result v4

    iget-object v5, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$30;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

    invoke-static {v5}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->access$2700(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$30;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->access$5000(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)I

    move-result v6

    iget-object v7, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$30;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

    invoke-static {v7}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->access$5100(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, p2

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/conceptglobal/pmc/common/Queries;->updateNotDoneForActivities(ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V

    .line 3269
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$30;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->access$2800(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    iget-object v4, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$30;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->access$4800(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->updateExpenseDraftForAssignmentvisit(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIFContains(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 3270
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$30;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->access$5000(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)I

    move-result v3

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$30;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->access$2700(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$30;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->access$5200(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$30;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->access$400(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$30;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->access$500(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$30;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->access$4800(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)I

    move-result v8

    const-string v11, "false"

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$30;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->access$5300(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)Ljava/lang/String;

    move-result-object v12

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$30;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->access$5400(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)Ljava/lang/String;

    move-result-object v13

    const-wide/16 v9, 0x0

    invoke-static/range {v3 .. v13}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->UpdateExpenseAssignmentVisistDetails(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3272
    :cond_1
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$30;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->access$5000(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)I

    move-result v3

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$30;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->access$2700(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$30;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->access$5200(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$30;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->access$400(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$30;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->access$500(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$30;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->access$4800(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)I

    move-result v8

    const-string v11, "false"

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$30;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->access$5300(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)Ljava/lang/String;

    move-result-object v12

    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$30;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->access$5400(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)Ljava/lang/String;

    move-result-object v13

    const-wide/16 v9, 0x0

    invoke-static/range {v3 .. v13}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertExpenseAssignmentVisistDetails(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    .line 3274
    :goto_1
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$30;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->access$000(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 3275
    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$30;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->access$000(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/ImageDetails;->getImageId()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->UpdateImageServerStatus(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3278
    :cond_2
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$30;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/4 v4, -0x1

    invoke-virtual {v0, v4, v3}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->setResult(ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3280
    :try_start_1
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$30;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;

    .line 3281
    const-string v3, "1"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;->onComplete(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 3283
    :try_start_2
    invoke-static {v2, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3284
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3286
    :goto_2
    sget-object v0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3288
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$30;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v3, Lcom/conceptglobal/pmc/service/SyncDataService;

    invoke-static {v0, v3}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isServiceRunning(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3289
    new-instance v0, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;

    iget-object v3, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$30;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

    invoke-direct {v0, v3}, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;-><init>(Landroid/content/Context;)V

    .line 3290
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;->startService()V

    goto :goto_3

    .line 3293
    :cond_3
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$30;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

    new-instance v3, Landroid/content/Intent;

    sget-object v4, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->context:Landroid/content/Context;

    const-class v5, Lcom/conceptglobal/pmc/fo/ToDoActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->startActivity(Landroid/content/Intent;)V

    .line 3295
    :cond_4
    :goto_3
    iget-object v0, v1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$30;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->finish()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    .line 3297
    invoke-static {v2, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    return-void
.end method

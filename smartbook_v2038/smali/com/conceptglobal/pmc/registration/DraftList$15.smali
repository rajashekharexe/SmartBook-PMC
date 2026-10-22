.class Lcom/conceptglobal/pmc/registration/DraftList$15;
.super Ljava/lang/Object;
.source "DraftList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/registration/DraftList;->showRetailerDetailsDialog(Lcom/conceptglobal/pmc/model/TerritotyDealerMaster;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/registration/DraftList;

.field final synthetic val$dialogLand:Landroid/app/Dialog;

.field final synthetic val$territoryDealerMaster:Ljava/lang/String;

.field final synthetic val$territotyDealerMaster:Lcom/conceptglobal/pmc/model/TerritotyDealerMaster;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/registration/DraftList;Ljava/lang/String;Lcom/conceptglobal/pmc/model/TerritotyDealerMaster;Landroid/app/Dialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1143
    iput-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList$15;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    iput-object p2, p0, Lcom/conceptglobal/pmc/registration/DraftList$15;->val$territoryDealerMaster:Ljava/lang/String;

    iput-object p3, p0, Lcom/conceptglobal/pmc/registration/DraftList$15;->val$territotyDealerMaster:Lcom/conceptglobal/pmc/model/TerritotyDealerMaster;

    iput-object p4, p0, Lcom/conceptglobal/pmc/registration/DraftList$15;->val$dialogLand:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const-string p1, "select CustomertypeID from DealerMaster where ContactId = \'"

    .line 1146
    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList$15;->val$territoryDealerMaster:Ljava/lang/String;

    const-string v1, "DealerMaster"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    .line 1149
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList$15;->val$territotyDealerMaster:Lcom/conceptglobal/pmc/model/TerritotyDealerMaster;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/TerritotyDealerMaster;->getContactId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1151
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x2

    .line 1153
    :goto_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/conceptglobal/pmc/registration/DraftList$15;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    invoke-static {v2}, Lcom/conceptglobal/pmc/registration/DraftList;->access$2400(Lcom/conceptglobal/pmc/registration/DraftList;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1154
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1155
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/conceptglobal/pmc/registration/DraftList$15;->val$territotyDealerMaster:Lcom/conceptglobal/pmc/model/TerritotyDealerMaster;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/TerritotyDealerMaster;->getContactId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "farmerId"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    const-string v3, "farmerType"

    if-ne p1, v0, :cond_0

    .line 1157
    const-string p1, "Retailer"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 1159
    const-string p1, "Distributor"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1160
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList$15;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    iget-boolean p1, p1, Lcom/conceptglobal/pmc/registration/DraftList;->isFromSurvey:Z

    if-eqz p1, :cond_2

    .line 1161
    iget-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList$15;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    iget-boolean p1, p1, Lcom/conceptglobal/pmc/registration/DraftList;->isFromSurvey:Z

    const-string v0, "isFromSurvey"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1163
    :cond_2
    const-string p1, "isFraom"

    const-string v0, "ALL"

    invoke-virtual {v2, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1164
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1165
    iget-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList$15;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    iget-boolean p1, p1, Lcom/conceptglobal/pmc/registration/DraftList;->isFromSurvey:Z

    if-eqz p1, :cond_3

    .line 1166
    iget-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList$15;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    const/16 v0, 0x65

    invoke-virtual {p1, v1, v0}, Lcom/conceptglobal/pmc/registration/DraftList;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    .line 1169
    :cond_3
    iget-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList$15;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    invoke-static {p1}, Lcom/conceptglobal/pmc/registration/DraftList;->access$2400(Lcom/conceptglobal/pmc/registration/DraftList;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1170
    iget-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList$15;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/registration/DraftList;->finish()V

    .line 1172
    :goto_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList$15;->val$dialogLand:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 1174
    :cond_4
    iget-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList$15;->val$dialogLand:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

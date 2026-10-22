.class Lcom/conceptglobal/pmc/registration/DraftList$9;
.super Ljava/lang/Object;
.source "DraftList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/registration/DraftList;->showDetailsDialog(Lcom/conceptglobal/pmc/model/TerritotyFarmerMaster;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/registration/DraftList;

.field final synthetic val$dialogLand:Landroid/app/Dialog;

.field final synthetic val$farmerMobileDetails:Lcom/conceptglobal/pmc/model/TerritotyFarmerMaster;

.field final synthetic val$territoryFarmerMaster:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/registration/DraftList;Ljava/lang/String;Lcom/conceptglobal/pmc/model/TerritotyFarmerMaster;Landroid/app/Dialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 871
    iput-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList$9;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    iput-object p2, p0, Lcom/conceptglobal/pmc/registration/DraftList$9;->val$territoryFarmerMaster:Ljava/lang/String;

    iput-object p3, p0, Lcom/conceptglobal/pmc/registration/DraftList$9;->val$farmerMobileDetails:Lcom/conceptglobal/pmc/model/TerritotyFarmerMaster;

    iput-object p4, p0, Lcom/conceptglobal/pmc/registration/DraftList$9;->val$dialogLand:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 874
    iget-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList$9;->val$territoryFarmerMaster:Ljava/lang/String;

    const-string v0, "FarmerMaster"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 875
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList$9;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    invoke-static {v0}, Lcom/conceptglobal/pmc/registration/DraftList;->access$2400(Lcom/conceptglobal/pmc/registration/DraftList;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 876
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 877
    iget-object v1, p0, Lcom/conceptglobal/pmc/registration/DraftList$9;->val$farmerMobileDetails:Lcom/conceptglobal/pmc/model/TerritotyFarmerMaster;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/TerritotyFarmerMaster;->getRespondentNo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "farmerId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    const-string v1, "farmerType"

    const-string v2, "Farmer"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    const-string v1, "isFraom"

    const-string v2, "ALL"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    iget-object v1, p0, Lcom/conceptglobal/pmc/registration/DraftList$9;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    iget-boolean v1, v1, Lcom/conceptglobal/pmc/registration/DraftList;->isFromSurvey:Z

    if-eqz v1, :cond_0

    .line 881
    iget-object v1, p0, Lcom/conceptglobal/pmc/registration/DraftList$9;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    iget-boolean v1, v1, Lcom/conceptglobal/pmc/registration/DraftList;->isFromSurvey:Z

    const-string v2, "isFromSurvey"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 883
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 884
    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList$9;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    iget-boolean v0, v0, Lcom/conceptglobal/pmc/registration/DraftList;->isFromSurvey:Z

    if-eqz v0, :cond_1

    .line 885
    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList$9;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    const/16 v1, 0x65

    invoke-virtual {v0, p1, v1}, Lcom/conceptglobal/pmc/registration/DraftList;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 888
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/registration/DraftList$9;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    invoke-static {v0}, Lcom/conceptglobal/pmc/registration/DraftList;->access$2400(Lcom/conceptglobal/pmc/registration/DraftList;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 889
    iget-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList$9;->this$0:Lcom/conceptglobal/pmc/registration/DraftList;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/registration/DraftList;->finish()V

    .line 891
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/registration/DraftList$9;->val$dialogLand:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_2
    return-void
.end method

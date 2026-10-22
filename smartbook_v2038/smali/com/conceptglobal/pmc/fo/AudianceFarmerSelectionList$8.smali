.class Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$8;
.super Ljava/lang/Object;
.source "AudianceFarmerSelectionList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->showDetailsDialog(Lcom/conceptglobal/pmc/model/TerritotyFarmerMaster;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;

.field final synthetic val$dialogLand:Landroid/app/Dialog;

.field final synthetic val$farmerMobileDetails:Lcom/conceptglobal/pmc/model/TerritotyFarmerMaster;

.field final synthetic val$territoryFarmerMaster:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;Ljava/lang/String;Lcom/conceptglobal/pmc/model/TerritotyFarmerMaster;Landroid/app/Dialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 737
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$8;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;

    iput-object p2, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$8;->val$territoryFarmerMaster:Ljava/lang/String;

    iput-object p3, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$8;->val$farmerMobileDetails:Lcom/conceptglobal/pmc/model/TerritotyFarmerMaster;

    iput-object p4, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$8;->val$dialogLand:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 740
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$8;->val$territoryFarmerMaster:Ljava/lang/String;

    const-string v0, "FarmerMaster"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 741
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$8;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->access$1100(Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 742
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 743
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$8;->val$farmerMobileDetails:Lcom/conceptglobal/pmc/model/TerritotyFarmerMaster;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/TerritotyFarmerMaster;->getRespondentNo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "farmerId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    const-string v1, "farmerType"

    const-string v2, "Farmer"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    const-string v1, "isFraom"

    const-string v2, "ALL"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 747
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$8;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->access$1100(Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 748
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$8;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->finish()V

    .line 749
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$8;->val$dialogLand:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

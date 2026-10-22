.class Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$6;
.super Ljava/lang/Object;
.source "AudianceFarmerSelectionList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->showNoDataAvailableDialog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;

.field final synthetic val$mobile:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 683
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$6;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;

    iput-object p2, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$6;->val$mobile:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 686
    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$6;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->access$1100(Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 687
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 688
    const-string v1, "MobileNumber"

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$6;->val$mobile:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    const-string v1, "farmerType"

    const-string v2, "Farmer"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    invoke-virtual {p2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 691
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$6;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->access$1100(Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 692
    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$6;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->finish()V

    .line 693
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.class Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$13;
.super Ljava/lang/Object;
.source "AddFarmerDraftListAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->showMandatoryDataEmptyMsgFarmer(Landroid/content/Context;Lcom/conceptglobal/pmc/model/DashboardListModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

.field final synthetic val$dashModel:Lcom/conceptglobal/pmc/model/DashboardListModel;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;Lcom/conceptglobal/pmc/model/DashboardListModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1432
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$13;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    iput-object p2, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$13;->val$dashModel:Lcom/conceptglobal/pmc/model/DashboardListModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1434
    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$13;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$000(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1435
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1436
    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$13;->val$dashModel:Lcom/conceptglobal/pmc/model/DashboardListModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getDraftId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "farmerId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1437
    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$13;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {v1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$100(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "farmerType"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1438
    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$13;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {v1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$2500(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "isFraom"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1439
    const-string v1, "farmerUpdate"

    const-string v2, "MandatoryFrm"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1440
    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$13;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {v1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$1300(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)I

    move-result v1

    const-string v2, "SegmentId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1441
    invoke-virtual {p2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1442
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$13;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$000(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1443
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

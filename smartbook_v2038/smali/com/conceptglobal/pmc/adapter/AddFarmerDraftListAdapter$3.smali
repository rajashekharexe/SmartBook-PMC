.class Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$3;
.super Ljava/lang/Object;
.source "AddFarmerDraftListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
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

    .line 588
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$3;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    iput-object p2, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$3;->val$dashModel:Lcom/conceptglobal/pmc/model/DashboardListModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 591
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$3;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$300(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    move-result-object p1

    instance-of p1, p1, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    if-eqz p1, :cond_0

    .line 592
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$3;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$300(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$3;->val$dashModel:Lcom/conceptglobal/pmc/model/DashboardListModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getSaarthieFarmerID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->loadFelloFarmerData(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

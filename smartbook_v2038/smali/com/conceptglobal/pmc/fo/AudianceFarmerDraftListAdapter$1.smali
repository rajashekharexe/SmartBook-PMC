.class Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter$1;
.super Ljava/lang/Object;
.source "AudianceFarmerDraftListAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;

.field final synthetic val$i:I


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 232
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter$1;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;

    iput p2, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter$1;->val$i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    if-eqz p2, :cond_0

    .line 236
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter$1;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;->access$100(Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;)Ljava/util/HashMap;

    move-result-object p1

    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter$1;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;

    invoke-static {p2}, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;->access$000(Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;)Ljava/util/List;

    move-result-object p2

    iget v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter$1;->val$i:I

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/conceptglobal/pmc/model/DashboardListModel;

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getDraftId()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter$1;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;->access$000(Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter$1;->val$i:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DashboardListModel;

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 239
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter$1;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;->access$100(Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;)Ljava/util/HashMap;

    move-result-object p1

    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter$1;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;

    invoke-static {p2}, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;->access$000(Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;)Ljava/util/List;

    move-result-object p2

    iget v0, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter$1;->val$i:I

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/conceptglobal/pmc/model/DashboardListModel;

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getDraftId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter$1;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;->access$200(Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;)Lcom/conceptglobal/pmc/fo/IUpdateFarmersCount;

    move-result-object p1

    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter$1;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;

    invoke-static {p2}, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;->access$100(Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;)Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/conceptglobal/pmc/fo/IUpdateFarmersCount;->setDisplay(I)V

    return-void
.end method

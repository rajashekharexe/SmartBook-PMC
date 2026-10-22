.class Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$8;
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

.field final synthetic val$i:I


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 744
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$8;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    iput p2, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$8;->val$i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 747
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$8;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    iget v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$8;->val$i:I

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$502(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;I)I

    .line 748
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$8;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$200(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$8;->val$i:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DashboardListModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getData()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$602(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 749
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$8;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$200(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$8;->val$i:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DashboardListModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getData()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$702(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 750
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$8;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$200(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$8;->val$i:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DashboardListModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getDraftId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$802(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 751
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$8;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$000(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 752
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$8;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$900(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)V

    .line 753
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$8;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    new-instance v6, Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$8;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$000(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$8;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    .line 754
    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$700(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$8;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$600(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$8;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {v4}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$100(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/conceptglobal/pmc/interfaces/OnVerifyOTPListener;Ljava/lang/String;)V

    .line 753
    invoke-static {p1, v6}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$1002(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;)Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;

    .line 755
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$8;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$1000(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/utils/OTPVerificationDialog;->showDialog()V

    goto :goto_0

    .line 757
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$8;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$000(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$1100(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;Landroid/content/Context;)V

    :goto_0
    return-void
.end method

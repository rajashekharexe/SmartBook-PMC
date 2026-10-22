.class Lcom/conceptglobal/pmc/fragments/DraftFragment$3;
.super Landroid/content/BroadcastReceiver;
.source "DraftFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fragments/DraftFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/DraftFragment;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/DraftFragment;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment$3;->this$0:Lcom/conceptglobal/pmc/fragments/DraftFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    .line 256
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment$3;->this$0:Lcom/conceptglobal/pmc/fragments/DraftFragment;

    const-string v0, "FarmerList"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    iput-object p2, p1, Lcom/conceptglobal/pmc/fragments/DraftFragment;->listOfStrings:Ljava/util/ArrayList;

    .line 257
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment$3;->this$0:Lcom/conceptglobal/pmc/fragments/DraftFragment;

    new-instance p2, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment$3;->this$0:Lcom/conceptglobal/pmc/fragments/DraftFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/DraftFragment;->access$000(Lcom/conceptglobal/pmc/fragments/DraftFragment;)Landroid/app/Activity;

    move-result-object v1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment$3;->this$0:Lcom/conceptglobal/pmc/fragments/DraftFragment;

    iget-object v2, v0, Lcom/conceptglobal/pmc/fragments/DraftFragment;->listOfStrings:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment$3;->this$0:Lcom/conceptglobal/pmc/fragments/DraftFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/DraftFragment;->access$100(Lcom/conceptglobal/pmc/fragments/DraftFragment;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment$3;->this$0:Lcom/conceptglobal/pmc/fragments/DraftFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/DraftFragment;->access$200(Lcom/conceptglobal/pmc/fragments/DraftFragment;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment$3;->this$0:Lcom/conceptglobal/pmc/fragments/DraftFragment;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fragments/DraftFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/registration/DraftList;

    iget v6, v0, Lcom/conceptglobal/pmc/registration/DraftList;->segmentId:I

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment$3;->this$0:Lcom/conceptglobal/pmc/fragments/DraftFragment;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fragments/DraftFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/registration/DraftList;

    iget-boolean v7, v0, Lcom/conceptglobal/pmc/registration/DraftList;->isFromSelfAssignment:Z

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment$3;->this$0:Lcom/conceptglobal/pmc/fragments/DraftFragment;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fragments/DraftFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/registration/DraftList;

    iget-boolean v8, v0, Lcom/conceptglobal/pmc/registration/DraftList;->isFromTestmonial:Z

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment$3;->this$0:Lcom/conceptglobal/pmc/fragments/DraftFragment;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fragments/DraftFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/registration/DraftList;

    iget-boolean v9, v0, Lcom/conceptglobal/pmc/registration/DraftList;->isFromFeedBack:Z

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment$3;->this$0:Lcom/conceptglobal/pmc/fragments/DraftFragment;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fragments/DraftFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/registration/DraftList;

    iget-boolean v10, v0, Lcom/conceptglobal/pmc/registration/DraftList;->isFromSurvey:Z

    const-string v4, "0"

    move-object v0, p2

    invoke-direct/range {v0 .. v10}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZZ)V

    iput-object p2, p1, Lcom/conceptglobal/pmc/fragments/DraftFragment;->mAdapter:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    .line 258
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment$3;->this$0:Lcom/conceptglobal/pmc/fragments/DraftFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/DraftFragment;->access$300(Lcom/conceptglobal/pmc/fragments/DraftFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/DraftFragment$3;->this$0:Lcom/conceptglobal/pmc/fragments/DraftFragment;

    iget-object p2, p2, Lcom/conceptglobal/pmc/fragments/DraftFragment;->mAdapter:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

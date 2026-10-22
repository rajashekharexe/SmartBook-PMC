.class Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;
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

.field final synthetic val$draftListViewHolder:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;

.field final synthetic val$i:I


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;Lcom/conceptglobal/pmc/model/DashboardListModel;ILcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 763
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    iput-object p2, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->val$dashModel:Lcom/conceptglobal/pmc/model/DashboardListModel;

    iput p3, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->val$i:I

    iput-object p4, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->val$draftListViewHolder:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 768
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$1200(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)I

    move-result v0

    const/4 v1, -0x1

    const-string v2, "FarmerId"

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 770
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 772
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->val$dashModel:Lcom/conceptglobal/pmc/model/DashboardListModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getDraftId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 773
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$1300(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)I

    move-result v0

    const-string v2, "SegmentId"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 775
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->val$dashModel:Lcom/conceptglobal/pmc/model/DashboardListModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getData()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 776
    const-string v2, "FarmerName"

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 782
    :catch_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$000(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 783
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$000(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    .line 787
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$1400(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Z

    move-result v0

    const/4 v4, 0x2

    if-eqz v0, :cond_d

    .line 788
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$1300(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)I

    move-result p1

    if-ne p1, v4, :cond_1

    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$1500(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 789
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {v1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$1500(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->val$dashModel:Lcom/conceptglobal/pmc/model/DashboardListModel;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getDraftId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Lcom/conceptglobal/pmc/common/Queries;->getDealerDataQry(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getAllMandatoryFieldsInformation(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 791
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$000(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->val$dashModel:Lcom/conceptglobal/pmc/model/DashboardListModel;

    invoke-static {p1, v0, v1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$1600(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;Landroid/content/Context;Lcom/conceptglobal/pmc/model/DashboardListModel;)V

    return-void

    .line 795
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$1300(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)I

    move-result p1

    if-ne p1, v3, :cond_2

    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$1500(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 796
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {v1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$1500(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->val$dashModel:Lcom/conceptglobal/pmc/model/DashboardListModel;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getDraftId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Lcom/conceptglobal/pmc/common/Queries;->getFarmerDataQry(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getAllMandatoryFieldsInformation(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 798
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$000(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->val$dashModel:Lcom/conceptglobal/pmc/model/DashboardListModel;

    invoke-static {p1, v0, v1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$1700(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;Landroid/content/Context;Lcom/conceptglobal/pmc/model/DashboardListModel;)V

    return-void

    .line 802
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$1300(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v4, :cond_3

    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$1300(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)I

    move-result p1

    if-ne p1, v0, :cond_7

    .line 805
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v5, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->val$dashModel:Lcom/conceptglobal/pmc/model/DashboardListModel;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getDraftId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/common/Queries;->getLocationApproveStatusQry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v4, :cond_7

    if-nez p1, :cond_4

    .line 808
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_geo_not_update_Text()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->val$dashModel:Lcom/conceptglobal/pmc/model/DashboardListModel;

    invoke-static {p1, v0, v1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$1800(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;Ljava/lang/String;Lcom/conceptglobal/pmc/model/DashboardListModel;)V

    goto :goto_0

    :cond_4
    if-ne p1, v3, :cond_5

    .line 810
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_geo_approval_pending_Text()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$1900(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    if-ne p1, v0, :cond_6

    .line 812
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_geo_rejected_Text()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->val$dashModel:Lcom/conceptglobal/pmc/model/DashboardListModel;

    invoke-static {p1, v0, v1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$1800(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;Ljava/lang/String;Lcom/conceptglobal/pmc/model/DashboardListModel;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_6
    :goto_0
    return-void

    :catch_1
    move-exception p1

    .line 817
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 839
    :cond_7
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$1300(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_b

    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$1400(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 841
    :try_start_2
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v3, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->val$dashModel:Lcom/conceptglobal/pmc/model/DashboardListModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getDraftId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/conceptglobal/pmc/common/Queries;->getVillagePrifileUpdatedDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 842
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 843
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->val$dashModel:Lcom/conceptglobal/pmc/model/DashboardListModel;

    invoke-static {p1, v1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$2000(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;Lcom/conceptglobal/pmc/model/DashboardListModel;)V

    return-void

    .line 846
    :cond_8
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    const-string v5, "VillageProfileUpdateDuration"

    invoke-virtual {v3, v5}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLookupValue(Ljava/lang/String;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-nez v1, :cond_9

    const-wide/16 v5, 0x3c

    .line 849
    :cond_9
    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->findDifference(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v7

    cmp-long p1, v7, v5

    if-lez p1, :cond_a

    .line 851
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->val$dashModel:Lcom/conceptglobal/pmc/model/DashboardListModel;

    invoke-static {p1, v1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$2000(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;Lcom/conceptglobal/pmc/model/DashboardListModel;)V

    return-void

    .line 855
    :cond_a
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$200(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Ljava/util/List;

    move-result-object p1

    iget v1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->val$i:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/model/DashboardListModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getLastVisitedDate()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$1400(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    .line 859
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 862
    :cond_b
    :goto_1
    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {v1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$000(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Landroid/content/Context;

    move-result-object v1

    const-class v3, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;

    invoke-direct {p1, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 863
    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->val$dashModel:Lcom/conceptglobal/pmc/model/DashboardListModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getDraftId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 864
    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {v1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$1300(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)I

    move-result v1

    if-ne v1, v0, :cond_c

    .line 866
    :try_start_3
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v3, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->val$dashModel:Lcom/conceptglobal/pmc/model/DashboardListModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getDraftId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/conceptglobal/pmc/common/Queries;->getVillageIdFromRespondenrNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 867
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    .line 869
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 872
    :cond_c
    :goto_2
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYSELECTIONQUERY()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {v2}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$1300(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getActivtiesListBySegment(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 873
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$000(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p1, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_3

    .line 875
    :cond_d
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$2100(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Z

    move-result v0

    const-string v3, "SEGMENTID"

    if-eqz v0, :cond_e

    .line 876
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$000(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 877
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->val$dashModel:Lcom/conceptglobal/pmc/model/DashboardListModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getDraftId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 878
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$1300(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)I

    move-result v0

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 880
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYSELECTIONQUERY()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {v2}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$1300(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getActivtiesListBySegment(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 881
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$000(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p1, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_3

    .line 884
    :cond_e
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$2200(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 885
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 887
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYFARMERID()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->val$dashModel:Lcom/conceptglobal/pmc/model/DashboardListModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getDraftId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 888
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$1300(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)I

    move-result v0

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 889
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$2200(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Z

    move-result v0

    const-string v2, "isfrom"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 890
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$000(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 891
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$000(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto/16 :goto_3

    .line 904
    :cond_f
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$2300(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 905
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$000(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/conceptglobal/pmc/fo/ListSelectionActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 908
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->val$dashModel:Lcom/conceptglobal/pmc/model/DashboardListModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getDraftId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 909
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$1300(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)I

    move-result v0

    const-string v1, "segmentId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 910
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$2300(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Z

    move-result v0

    const-string v1, "isFrom"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 911
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYSELECTIONQUERY()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {v2}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$1300(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getFBFActivtiesListBySegment(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 912
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$000(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p1, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_3

    .line 916
    :cond_10
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;

    .line 917
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->val$draftListViewHolder:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;

    iget-object v1, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->value:Ljava/lang/String;

    .line 919
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$2400(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const-string v1, "isFraom"

    const-string v2, "farmerType"

    const-string v3, "farmerId"

    if-nez p1, :cond_11

    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$2400(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "5"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_13

    :cond_11
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$100(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "Farmer"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 921
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$000(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Landroid/content/Context;

    move-result-object v0

    const-class v4, Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-direct {p1, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 922
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 923
    iget-object v4, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    iget-object v4, v4, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->value:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_12

    iget-object v4, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    iget-object v4, v4, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->value:Ljava/lang/String;

    if-eqz v4, :cond_12

    .line 924
    iget-object v4, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    iget-object v4, v4, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->value:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    iget-object v3, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {v3}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$100(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {v2}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$2500(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 929
    :cond_12
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$000(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 933
    :cond_13
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$2400(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$100(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "Planter"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 934
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$000(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 935
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 936
    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    iget-object v1, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    iget-object v1, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->value:Ljava/lang/String;

    if-eqz v1, :cond_14

    .line 937
    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    iget-object v1, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->value:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {v1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$100(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 941
    :cond_14
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$000(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 942
    :cond_15
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$2400(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$100(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "Village"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 973
    :try_start_4
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$000(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 974
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 975
    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    iget-object v1, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    iget-object v1, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->value:Ljava/lang/String;

    if-eqz v1, :cond_16

    .line 976
    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    iget-object v1, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->value:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {v1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$100(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 980
    :cond_16
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$000(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_3

    :catch_4
    move-exception p1

    .line 984
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 988
    :cond_17
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$2400(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1a

    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$100(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "Retailer"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 989
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    iget-boolean p1, p1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->isEligibletoUpdate:Z

    if-nez p1, :cond_18

    .line 990
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$2600(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)V

    return-void

    .line 993
    :cond_18
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$000(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Landroid/content/Context;

    move-result-object v0

    const-class v4, Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-direct {p1, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 994
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 995
    iget-object v4, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    iget-object v4, v4, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->value:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_19

    iget-object v4, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    iget-object v4, v4, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->value:Ljava/lang/String;

    if-eqz v4, :cond_19

    .line 996
    iget-object v4, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    iget-object v4, v4, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->value:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    iget-object v3, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {v3}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$100(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {v2}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$2500(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1002
    :cond_19
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$000(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 1003
    :cond_1a
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$2400(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1d

    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$100(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Distributor"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 1004
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    iget-boolean p1, p1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->isDistributerEligibletoUpdate:Z

    if-nez p1, :cond_1b

    .line 1005
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$2600(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)V

    return-void

    .line 1008
    :cond_1b
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$000(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1009
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1010
    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    iget-object v1, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    iget-object v1, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->value:Ljava/lang/String;

    if-eqz v1, :cond_1c

    .line 1011
    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    iget-object v1, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->value:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {v1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$100(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1016
    :cond_1c
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$000(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 1017
    :cond_1d
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$2400(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1f

    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$100(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "ValueChain"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 1018
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$000(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1019
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1020
    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    iget-object v1, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    iget-object v1, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->value:Ljava/lang/String;

    if-eqz v1, :cond_1e

    .line 1021
    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    iget-object v1, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->value:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {v1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$100(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1026
    :cond_1e
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$000(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 1027
    :cond_1f
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$2400(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_21

    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$100(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "CropExpert"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 1028
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$000(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1029
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1030
    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    iget-object v1, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    iget-object v1, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->value:Ljava/lang/String;

    if-eqz v1, :cond_20

    .line 1031
    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    iget-object v1, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->value:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {v1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$100(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1036
    :cond_20
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$9;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$000(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_21
    :goto_3
    return-void
.end method

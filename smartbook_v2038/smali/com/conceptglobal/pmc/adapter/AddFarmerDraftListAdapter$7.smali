.class Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$7;
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
.method constructor <init>(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;ILcom/conceptglobal/pmc/model/DashboardListModel;Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 645
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$7;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    iput p2, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$7;->val$i:I

    iput-object p3, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$7;->val$dashModel:Lcom/conceptglobal/pmc/model/DashboardListModel;

    iput-object p4, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$7;->val$draftListViewHolder:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 19

    move-object/from16 v1, p0

    .line 648
    const-string v0, "RespondentNo"

    const-string v2, "ContactId"

    iget-object v3, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$7;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {v3}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$100(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Farmer"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v6, "UpdatedDate"

    const-string v7, "UpdatedBy"

    const-string v8, "CreatedDate"

    const-string v9, "CreatedBy"

    const-string v10, "RoleId"

    const-string v11, "UserId"

    const-string v12, "PdaId"

    const-string v13, "false"

    const-string v14, "ServerUpdatedStatus"

    const-string v15, "IsFavourite"

    const/4 v5, 0x0

    .line 663
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v16, v2

    .line 668
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v3, :cond_1

    .line 650
    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 651
    iget-object v5, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$7;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {v5}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$200(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Ljava/util/List;

    move-result-object v5

    move-object/from16 v17, v2

    iget v2, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$7;->val$i:I

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/DashboardListModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getDraftId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    invoke-virtual {v3, v14, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/common/Queries;->geetingPdaid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v12, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v11, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/common/Queries;->getRoleQuery()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v10, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 657
    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 659
    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    iget-object v2, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$7;->val$dashModel:Lcom/conceptglobal/pmc/model/DashboardListModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getFavouriteStatus()I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_0

    .line 661
    iget-object v2, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$7;->val$dashModel:Lcom/conceptglobal/pmc/model/DashboardListModel;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/conceptglobal/pmc/model/DashboardListModel;->setFavouriteStatus(I)V

    .line 662
    iget-object v2, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$7;->val$draftListViewHolder:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;

    iget-object v2, v2, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->ivFavourite:Landroid/widget/ImageView;

    iget-object v5, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$7;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {v5}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$000(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08008a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 663
    invoke-virtual {v3, v15, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 664
    iget-object v2, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$7;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {v2}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$000(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Landroid/content/Context;

    move-result-object v2

    const-string v4, "Farmer unmarked as favourite."

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 666
    :cond_0
    iget-object v2, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$7;->val$draftListViewHolder:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;

    iget-object v2, v2, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->ivFavourite:Landroid/widget/ImageView;

    iget-object v4, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$7;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {v4}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$000(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08008b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 667
    iget-object v2, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$7;->val$dashModel:Lcom/conceptglobal/pmc/model/DashboardListModel;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/conceptglobal/pmc/model/DashboardListModel;->setFavouriteStatus(I)V

    move-object/from16 v2, v17

    .line 668
    invoke-virtual {v3, v15, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 669
    iget-object v2, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$7;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {v2}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$000(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Landroid/content/Context;

    move-result-object v2

    const-string v5, "Farmer marked as favourite."

    invoke-static {v2, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 680
    :goto_0
    iget-object v2, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$7;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {v2}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$200(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Ljava/util/List;

    move-result-object v2

    iget v4, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$7;->val$i:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/DashboardListModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getDraftId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v0, v2}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->UpdateFarmerFavouriteDetails(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    .line 682
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 684
    :cond_1
    iget-object v0, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$7;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$100(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Retailer"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 686
    :try_start_1
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    const-string v5, "RRORoleID"

    invoke-virtual {v3, v5}, Lcom/conceptglobal/pmc/common/Queries;->getItemValueFromConfigurableLookup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 687
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/common/Queries;->getRoleQuery()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_2

    .line 688
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 689
    iget-object v5, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$7;->val$dashModel:Lcom/conceptglobal/pmc/model/DashboardListModel;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getFavouriteStatus()I

    move-result v5

    move-object/from16 v17, v2

    const/4 v2, 0x1

    if-ne v5, v2, :cond_3

    .line 690
    iget-object v0, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$7;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$000(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Landroid/content/Context;

    move-result-object v0

    const-string v3, "You Can\'t mark as UnFavourite."

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_2
    move-object/from16 v17, v2

    .line 694
    :cond_3
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 695
    iget-object v5, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$7;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {v5}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$200(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Ljava/util/List;

    move-result-object v5

    move-object/from16 v18, v3

    iget v3, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$7;->val$i:I

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/DashboardListModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getDraftId()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v5, v16

    invoke-virtual {v2, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    invoke-virtual {v2, v14, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v13

    invoke-virtual {v13}, Lcom/conceptglobal/pmc/common/Queries;->geetingPdaid()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v12, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v11, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v11

    invoke-virtual {v11}, Lcom/conceptglobal/pmc/common/Queries;->getRoleQuery()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v10, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 701
    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 703
    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    iget-object v3, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$7;->val$dashModel:Lcom/conceptglobal/pmc/model/DashboardListModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getFavouriteStatus()I

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v6, "IsROP"

    const/4 v7, 0x1

    if-ne v3, v7, :cond_4

    .line 705
    :try_start_2
    iget-object v3, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$7;->val$dashModel:Lcom/conceptglobal/pmc/model/DashboardListModel;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Lcom/conceptglobal/pmc/model/DashboardListModel;->setFavouriteStatus(I)V

    .line 706
    invoke-virtual {v2, v15, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 707
    iget-object v3, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$7;->val$draftListViewHolder:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;

    iget-object v3, v3, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->ivFavourite:Landroid/widget/ImageView;

    iget-object v7, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$7;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {v7}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$000(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f08008a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 708
    iget-object v3, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$7;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {v3}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$000(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Landroid/content/Context;

    move-result-object v3

    const-string v7, "Retailer unmarked as favourite."

    const/4 v8, 0x1

    invoke-static {v3, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    if-eqz v0, :cond_5

    move-object/from16 v3, v18

    .line 709
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 710
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 711
    iget-object v3, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$7;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {v3}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$200(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Ljava/util/List;

    move-result-object v3

    iget v7, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$7;->val$i:I

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/DashboardListModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getDraftId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    invoke-virtual {v0, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 714
    iget-object v0, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$7;->val$draftListViewHolder:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->cardview:Landroidx/cardview/widget/CardView;

    iget-object v3, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$7;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {v3}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$000(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060138

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    .line 716
    iget-object v0, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$7;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->notifyDataSetChanged()V

    goto :goto_1

    :cond_4
    move-object/from16 v3, v18

    .line 719
    iget-object v4, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$7;->val$dashModel:Lcom/conceptglobal/pmc/model/DashboardListModel;

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Lcom/conceptglobal/pmc/model/DashboardListModel;->setFavouriteStatus(I)V

    move-object/from16 v4, v17

    .line 720
    invoke-virtual {v2, v15, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 721
    iget-object v7, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$7;->val$draftListViewHolder:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;

    iget-object v7, v7, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->ivFavourite:Landroid/widget/ImageView;

    iget-object v8, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$7;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {v8}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$000(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f08008b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 722
    iget-object v7, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$7;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {v7}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$000(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Landroid/content/Context;

    move-result-object v7

    const-string v8, "Retailer marked as favourite."

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    if-eqz v0, :cond_5

    .line 723
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 724
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 725
    iget-object v3, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$7;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {v3}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$200(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Ljava/util/List;

    move-result-object v3

    iget v7, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$7;->val$i:I

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/DashboardListModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getDraftId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    invoke-virtual {v0, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 728
    iget-object v0, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$7;->val$draftListViewHolder:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;

    iget-object v0, v0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$DraftListViewHolder;->cardview:Landroidx/cardview/widget/CardView;

    iget-object v3, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$7;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {v3}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$000(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060112

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    .line 731
    iget-object v0, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$7;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->notifyDataSetChanged()V

    .line 734
    :cond_5
    :goto_1
    iget-object v0, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$7;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$200(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Ljava/util/List;

    move-result-object v0

    iget v3, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$7;->val$i:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DashboardListModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getDraftId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v5, v0}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->UpdateRetailerFavouriteDetails(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 736
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 739
    :cond_6
    :goto_2
    iget-object v0, v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$7;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$400(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)V

    return-void
.end method

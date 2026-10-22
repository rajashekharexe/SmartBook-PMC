.class Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$10;
.super Landroid/widget/Filter;
.source "AddFarmerDraftListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->getFilter()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)V
    .locals 0

    .line 1071
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$10;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 8

    .line 1090
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 1092
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_5

    .line 1094
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_2

    .line 1099
    :cond_0
    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$10;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {v2}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$2700(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 1100
    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$10;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$2802(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;Ljava/lang/String;)Ljava/lang/String;

    const/4 p1, 0x0

    const/4 v2, 0x0

    .line 1101
    :goto_0
    iget-object v3, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$10;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {v3}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$2700(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 1103
    iget-object v3, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$10;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {v3}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$2700(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/DashboardListModel;

    .line 1104
    iget-object v4, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$10;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getData()Ljava/util/List;

    move-result-object v5

    iput-object v5, v4, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->model:Ljava/util/List;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1106
    :goto_1
    iget-object v6, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$10;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    iget-object v6, v6, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->model:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_2

    .line 1107
    iget-object v6, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$10;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    iget-object v6, v6, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->model:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 1109
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$10;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {v7}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$2800(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    if-eqz v5, :cond_3

    .line 1115
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1119
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 1120
    iput-object v1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    goto :goto_3

    .line 1095
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$10;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$2700(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 1096
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$10;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    const-string v1, ""

    invoke-static {p1, v1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$2802(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 1097
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$10;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$2700(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    :goto_3
    return-object v0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 0

    .line 1076
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$10;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    iget-object p2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast p2, Ljava/util/ArrayList;

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$202(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;Ljava/util/List;)Ljava/util/List;

    .line 1085
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$10;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.class Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter$2;
.super Landroid/widget/Filter;
.source "AudianceFarmerDraftListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;->getFilter()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;)V
    .locals 0

    .line 427
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter$2;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 8

    .line 446
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 448
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_5

    .line 450
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_2

    .line 455
    :cond_0
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter$2;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;->access$300(Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 456
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter$2;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;->access$402(Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;Ljava/lang/String;)Ljava/lang/String;

    const/4 p1, 0x0

    const/4 v2, 0x0

    .line 457
    :goto_0
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter$2;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;->access$300(Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 459
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter$2;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;->access$300(Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/DashboardListModel;

    .line 460
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter$2;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/DashboardListModel;->getData()Ljava/util/List;

    move-result-object v5

    iput-object v5, v4, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;->model:Ljava/util/List;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 462
    :goto_1
    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter$2;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;

    iget-object v6, v6, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;->model:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_2

    .line 463
    iget-object v6, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter$2;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;

    iget-object v6, v6, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;->model:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 465
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter$2;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;

    invoke-static {v7}, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;->access$400(Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;)Ljava/lang/String;

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

    .line 471
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 475
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 476
    iput-object v1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    goto :goto_3

    .line 451
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter$2;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;->access$300(Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 452
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter$2;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;

    const-string v1, ""

    invoke-static {p1, v1}, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;->access$402(Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 453
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter$2;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;->access$300(Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    :goto_3
    return-object v0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 0

    .line 432
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter$2;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;

    iget-object p2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast p2, Ljava/util/ArrayList;

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;->access$002(Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;Ljava/util/List;)Ljava/util/List;

    .line 441
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter$2;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fo/AudianceFarmerDraftListAdapter;->notifyDataSetChanged()V

    return-void
.end method

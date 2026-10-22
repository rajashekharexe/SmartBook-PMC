.class Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter$1;
.super Landroid/widget/Filter;
.source "FarmerSelectionRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;->getFilter()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 6

    .line 105
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 106
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 107
    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;

    invoke-static {v2}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;->access$000(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;

    invoke-static {v2}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;->access$000(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;

    invoke-static {v3}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;->access$100(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 109
    :cond_0
    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;

    invoke-static {v2}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;->access$100(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;->access$002(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;Ljava/util/List;)Ljava/util/List;

    :cond_1
    if-eqz p1, :cond_7

    .line 111
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_2

    .line 116
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    .line 117
    :goto_0
    iget-object v3, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;

    invoke-static {v3}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;->access$000(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 118
    iget-object v3, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;->access$202(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 119
    iget-object v3, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;

    invoke-static {v3}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;->access$000(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    .line 120
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getPerson1()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 121
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 122
    :cond_3
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getContactNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 123
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 124
    :cond_4
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v4

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityMasterId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getActiviyName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 125
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 128
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 129
    iput-object v1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    goto :goto_3

    .line 112
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;->access$000(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 113
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;

    const-string v1, ""

    invoke-static {p1, v1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;->access$202(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 114
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;->access$000(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    :goto_3
    return-object v0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 0

    .line 99
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;

    iget-object p2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast p2, Ljava/util/ArrayList;

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;->access$002(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;Ljava/util/List;)Ljava/util/List;

    .line 100
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerAdapter;->notifyDataSetChanged()V

    return-void
.end method

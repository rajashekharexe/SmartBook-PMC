.class Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter$1;
.super Landroid/widget/Filter;
.source "StatusVillagesDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter;->getFilter()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 6

    .line 108
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 109
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 110
    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter;

    invoke-static {v2}, Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter;->access$600(Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    .line 111
    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter;

    invoke-static {v4}, Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter;->access$500(Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2, v3}, Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter;->access$602(Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter;Ljava/util/List;)Ljava/util/List;

    :cond_0
    if-eqz p1, :cond_7

    .line 113
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_2

    .line 118
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    .line 119
    :goto_0
    iget-object v3, p0, Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter;

    invoke-static {v3}, Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter;->access$600(Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 120
    iget-object v3, p0, Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter;->access$702(Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 121
    iget-object v3, p0, Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter;

    invoke-static {v3}, Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter;->access$600(Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/StatusVillagesActivityModel;

    .line 122
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/StatusVillagesActivityModel;->getMarketname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 123
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 124
    :cond_2
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/StatusVillagesActivityModel;->getActivityname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 125
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 126
    :cond_3
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/StatusVillagesActivityModel;->getFopendingcount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 127
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 129
    :cond_4
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/StatusVillagesActivityModel;->getApprovedcount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 130
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 133
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 134
    iput-object v1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    goto :goto_3

    .line 114
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter;->access$600(Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 115
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter;

    const-string v1, ""

    invoke-static {p1, v1}, Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter;->access$702(Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 116
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter;->access$600(Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    :goto_3
    return-object v0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 0

    .line 102
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter;

    iget-object p2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast p2, Ljava/util/ArrayList;

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter;->access$502(Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter;Ljava/util/List;)Ljava/util/List;

    .line 103
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/adapter/StatusVillagesDisplayAdapter;->notifyDataSetChanged()V

    return-void
.end method

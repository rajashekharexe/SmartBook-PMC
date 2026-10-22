.class Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter$1;
.super Landroid/widget/Filter;
.source "VillageDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;->getFilter()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 6

    .line 133
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 134
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 135
    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;

    invoke-static {v2}, Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;->access$500(Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    .line 136
    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;

    invoke-static {v4}, Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;->access$400(Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2, v3}, Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;->access$502(Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;Ljava/util/List;)Ljava/util/List;

    :cond_0
    if-eqz p1, :cond_5

    .line 138
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_2

    .line 143
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    .line 144
    :goto_0
    iget-object v3, p0, Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;

    invoke-static {v3}, Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;->access$500(Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 145
    iget-object v3, p0, Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;->access$602(Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 146
    iget-object v3, p0, Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;

    invoke-static {v3}, Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;->access$500(Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 147
    const-string v4, "VillageName"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 148
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 149
    :cond_2
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 150
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 153
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 154
    iput-object v1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    goto :goto_3

    .line 139
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;->access$500(Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 140
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;

    const-string v1, ""

    invoke-static {p1, v1}, Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;->access$602(Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 141
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;->access$500(Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    :goto_3
    return-object v0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 0

    .line 127
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;

    iget-object p2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast p2, Ljava/util/ArrayList;

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;->access$402(Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;Ljava/util/List;)Ljava/util/List;

    .line 128
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;->notifyDataSetChanged()V

    return-void
.end method

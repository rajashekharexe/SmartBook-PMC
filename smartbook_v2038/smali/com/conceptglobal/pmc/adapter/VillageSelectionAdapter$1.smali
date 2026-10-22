.class Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$1;
.super Landroid/widget/Filter;
.source "VillageSelectionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->getFilter()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 7

    .line 183
    const-string v0, ""

    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 185
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 186
    iget-object v3, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;

    invoke-static {v3}, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->access$900(Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_0

    .line 187
    iget-object v3, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;

    invoke-static {v5}, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->access$800(Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v3, v4}, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->access$902(Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;Ljava/util/List;)Ljava/util/List;

    :cond_0
    if-eqz p1, :cond_9

    .line 189
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_2

    .line 194
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    .line 195
    :goto_0
    iget-object v4, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;

    invoke-static {v4}, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->access$900(Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_8

    .line 196
    iget-object v4, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->access$1002(Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 197
    iget-object v4, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;

    invoke-static {v4}, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->access$900(Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/VillageDetails;

    .line 198
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/VillageDetails;->getVillageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 199
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 200
    :cond_2
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/VillageDetails;->getMandalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 201
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 202
    :cond_3
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/VillageDetails;->getDistrictName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 203
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 204
    :cond_4
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/VillageDetails;->getTbv()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 205
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 206
    :cond_5
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/VillageDetails;->getPd()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 207
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 208
    :cond_6
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/VillageDetails;->getVc()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 209
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 212
    :cond_8
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    iput p1, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 213
    iput-object v2, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    goto :goto_3

    .line 190
    :cond_9
    :goto_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->access$900(Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 191
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->access$1002(Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 192
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->access$900(Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    return-object v1

    :catch_0
    move-exception p1

    .line 217
    const-string v2, "VillageSelAdapter"

    invoke-static {v2, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 218
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->access$900(Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 219
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->access$1002(Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 220
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->access$900(Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    return-object v1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 0

    .line 177
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;

    iget-object p2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast p2, Ljava/util/ArrayList;

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->access$802(Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;Ljava/util/List;)Ljava/util/List;

    .line 178
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/adapter/VillageSelectionAdapter;->notifyDataSetChanged()V

    return-void
.end method

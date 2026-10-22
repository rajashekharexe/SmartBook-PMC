.class Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$1;
.super Landroid/widget/Filter;
.source "FeedBackDraftAdapterCopy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->getFilter()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$1;->this$0:Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 7

    .line 188
    const-string v0, ""

    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 190
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 191
    iget-object v3, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$1;->this$0:Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;

    invoke-static {v3}, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->access$900(Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_0

    .line 192
    iget-object v3, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$1;->this$0:Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$1;->this$0:Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;

    invoke-static {v5}, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->access$800(Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v3, v4}, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->access$902(Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;Ljava/util/List;)Ljava/util/List;

    :cond_0
    if-eqz p1, :cond_9

    .line 194
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_2

    .line 199
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    .line 200
    :goto_0
    iget-object v4, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$1;->this$0:Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;

    invoke-static {v4}, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->access$900(Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_8

    .line 201
    iget-object v4, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$1;->this$0:Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->access$1002(Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;Ljava/lang/String;)Ljava/lang/String;

    .line 202
    iget-object v4, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$1;->this$0:Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;

    invoke-static {v4}, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->access$900(Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/VillageDetails;

    .line 203
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/VillageDetails;->getVillageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 204
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 205
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

    .line 206
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 207
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

    .line 208
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 209
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

    .line 210
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 211
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

    .line 212
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 213
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

    .line 214
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 217
    :cond_8
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    iput p1, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 218
    iput-object v2, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    goto :goto_3

    .line 195
    :cond_9
    :goto_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$1;->this$0:Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->access$900(Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 196
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$1;->this$0:Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->access$1002(Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;Ljava/lang/String;)Ljava/lang/String;

    .line 197
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$1;->this$0:Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->access$900(Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    return-object v1

    :catch_0
    move-exception p1

    .line 222
    const-string v2, "VillageSelAdapter"

    invoke-static {v2, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 223
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$1;->this$0:Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->access$900(Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 224
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$1;->this$0:Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->access$1002(Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;Ljava/lang/String;)Ljava/lang/String;

    .line 225
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$1;->this$0:Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->access$900(Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    return-object v1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 0

    .line 182
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$1;->this$0:Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;

    iget-object p2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast p2, Ljava/util/ArrayList;

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->access$802(Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;Ljava/util/List;)Ljava/util/List;

    .line 183
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy$1;->this$0:Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/adapter/FeedBackDraftAdapterCopy;->notifyDataSetChanged()V

    return-void
.end method

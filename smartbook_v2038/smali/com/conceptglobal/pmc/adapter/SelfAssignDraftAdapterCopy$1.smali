.class Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy$1;
.super Landroid/widget/Filter;
.source "SelfAssignDraftAdapterCopy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy;->getFilter()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy$1;->this$0:Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 7

    .line 187
    const-string v0, ""

    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 189
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 190
    iget-object v3, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy$1;->this$0:Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy;

    invoke-static {v3}, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy;->access$1200(Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy$1;->this$0:Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy;

    invoke-static {v3}, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy;->access$1200(Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy$1;->this$0:Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy;

    invoke-static {v4}, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy;->access$1300(Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 191
    :cond_0
    iget-object v3, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy$1;->this$0:Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy;

    invoke-static {v3}, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy;->access$1300(Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy;)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy;->access$1202(Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy;Ljava/util/List;)Ljava/util/List;

    :cond_1
    if-eqz p1, :cond_a

    .line 194
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_2

    .line 199
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    .line 200
    :goto_0
    iget-object v4, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy$1;->this$0:Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy;

    invoke-static {v4}, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy;->access$1200(Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_9

    .line 201
    iget-object v4, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy$1;->this$0:Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy;->access$1402(Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy;Ljava/lang/String;)Ljava/lang/String;

    .line 202
    iget-object v4, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy$1;->this$0:Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy;

    invoke-static {v4}, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy;->access$1200(Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    .line 203
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getPerson1()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 204
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getPerson1()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 205
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 207
    :cond_3
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getContactNumber()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 208
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getContactNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getContactNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 209
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 211
    :cond_4
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v5

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityMasterId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getActiviyName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 212
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 213
    :cond_5
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getPerson2()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 214
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getPerson2()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getPerson2()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 215
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 217
    :cond_6
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getLocation1()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 218
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getLocation1()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getLocation1()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 219
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 221
    :cond_7
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getLocation2()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 222
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getLocation2()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getLocation2()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 223
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 227
    :cond_9
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    iput p1, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 228
    iput-object v2, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    goto :goto_3

    .line 195
    :cond_a
    :goto_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy$1;->this$0:Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy;->access$1200(Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 196
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy$1;->this$0:Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy;

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy;->access$1402(Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy;Ljava/lang/String;)Ljava/lang/String;

    .line 197
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy$1;->this$0:Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy;->access$1200(Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    return-object v1

    :catch_0
    move-exception p1

    .line 232
    const-string v2, "Filter"

    invoke-static {v2, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 233
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy$1;->this$0:Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy;->access$1200(Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 234
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy$1;->this$0:Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy;

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy;->access$1402(Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy;Ljava/lang/String;)Ljava/lang/String;

    .line 235
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy$1;->this$0:Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy;->access$1200(Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    return-object v1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 0

    .line 181
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy$1;->this$0:Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy;

    iget-object p2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast p2, Ljava/util/ArrayList;

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy;->access$1202(Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy;Ljava/util/List;)Ljava/util/List;

    .line 182
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy$1;->this$0:Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy;->notifyDataSetChanged()V

    return-void
.end method

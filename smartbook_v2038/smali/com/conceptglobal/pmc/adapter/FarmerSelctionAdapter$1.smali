.class Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter$1;
.super Landroid/widget/Filter;
.source "FarmerSelctionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;->getFilter()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 6

    .line 199
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 200
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 201
    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;

    invoke-static {v2}, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;->access$600(Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;

    invoke-static {v2}, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;->access$600(Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;

    invoke-static {v3}, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;->access$700(Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 203
    :cond_0
    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;

    invoke-static {v2}, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;->access$700(Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;->access$602(Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;Ljava/util/List;)Ljava/util/List;

    :cond_1
    if-eqz p1, :cond_7

    .line 205
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_2

    .line 210
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    .line 211
    :goto_0
    iget-object v3, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;

    invoke-static {v3}, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;->access$600(Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 212
    iget-object v3, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;->access$802(Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 213
    iget-object v3, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;

    invoke-static {v3}, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;->access$600(Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    .line 214
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getPerson1()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 215
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 216
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

    .line 217
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 218
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

    .line 219
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 222
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 223
    iput-object v1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    goto :goto_3

    .line 206
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;->access$600(Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 207
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;

    const-string v1, ""

    invoke-static {p1, v1}, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;->access$802(Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 208
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;->access$600(Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    :goto_3
    return-object v0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 0

    .line 193
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;

    iget-object p2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast p2, Ljava/util/ArrayList;

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;->access$602(Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;Ljava/util/List;)Ljava/util/List;

    .line 194
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelctionAdapter;->notifyDataSetChanged()V

    return-void
.end method

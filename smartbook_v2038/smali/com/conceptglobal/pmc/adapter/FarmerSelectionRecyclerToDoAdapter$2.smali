.class Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$2;
.super Landroid/widget/Filter;
.source "FarmerSelectionRecyclerToDoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->getFilter()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$2;->this$0:Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 7

    .line 288
    const-string v0, ""

    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 290
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 291
    iget-object v3, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$2;->this$0:Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;

    invoke-static {v3}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->access$1300(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$2;->this$0:Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;

    invoke-static {v3}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->access$1300(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$2;->this$0:Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;

    invoke-static {v4}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->access$1400(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 292
    :cond_0
    iget-object v3, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$2;->this$0:Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;

    invoke-static {v3}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->access$1400(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->access$1302(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;Ljava/util/List;)Ljava/util/List;

    :cond_1
    if-eqz p1, :cond_a

    .line 295
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_2

    .line 300
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    .line 301
    :goto_0
    iget-object v4, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$2;->this$0:Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;

    invoke-static {v4}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->access$1300(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_9

    .line 302
    iget-object v4, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$2;->this$0:Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->access$1502(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 303
    iget-object v4, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$2;->this$0:Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;

    invoke-static {v4}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->access$1300(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;

    .line 305
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getPerson1()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getPerson1()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$2;->this$0:Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;

    invoke-static {v6}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->access$1500(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 306
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 307
    :cond_3
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getContactNumber()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getContactNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$2;->this$0:Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;

    invoke-static {v6}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->access$1500(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 308
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 309
    :cond_4
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v5

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getActivityMasterId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getActiviyName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$2;->this$0:Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;

    invoke-static {v6}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->access$1500(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 310
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 311
    :cond_5
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getPerson2()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getPerson2()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$2;->this$0:Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;

    invoke-static {v6}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->access$1500(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 312
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 313
    :cond_6
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getLocation1()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getLocation1()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$2;->this$0:Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;

    invoke-static {v6}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->access$1500(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 314
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 315
    :cond_7
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getLocation2()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;->getLocation2()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$2;->this$0:Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;

    invoke-static {v6}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->access$1500(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 316
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 319
    :cond_9
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    iput p1, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 320
    iput-object v2, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    goto :goto_3

    .line 296
    :cond_a
    :goto_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$2;->this$0:Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->access$1300(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 297
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$2;->this$0:Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->access$1502(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 298
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$2;->this$0:Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->access$1300(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    return-object v1

    :catch_0
    move-exception p1

    .line 324
    const-string v2, "Filter"

    invoke-static {v2, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 325
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$2;->this$0:Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->access$1300(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 326
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$2;->this$0:Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->access$1502(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 327
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$2;->this$0:Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->access$1300(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    return-object v1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 0

    .line 282
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$2;->this$0:Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;

    iget-object p2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast p2, Ljava/util/ArrayList;

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->access$1302(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;Ljava/util/List;)Ljava/util/List;

    .line 283
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter$2;->this$0:Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter;->notifyDataSetChanged()V

    return-void
.end method

.class Lcom/conceptglobal/pmc/adapter/CustomerListAdapter$2;
.super Landroid/widget/Filter;
.source "CustomerListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->getFilter()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;)V
    .locals 0

    .line 336
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter$2;->this$0:Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 10

    .line 346
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 347
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 349
    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter$2;->this$0:Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;

    invoke-static {v2}, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->access$700(Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    .line 350
    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter$2;->this$0:Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter$2;->this$0:Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;

    invoke-static {v4}, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->access$100(Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2, v3}, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->access$702(Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;Ljava/util/List;)Ljava/util/List;

    :cond_0
    if-eqz p1, :cond_8

    .line 352
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_3

    .line 357
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 358
    :goto_0
    iget-object v4, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter$2;->this$0:Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;

    invoke-static {v4}, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->access$700(Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_7

    .line 359
    iget-object v4, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter$2;->this$0:Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->access$802(Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 360
    iget-object v4, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter$2;->this$0:Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;

    invoke-static {v4}, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->access$700(Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/conceptglobal/pmc/model/CustomListDisplayModel;

    .line 361
    iget-object v5, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter$2;->this$0:Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;

    invoke-static {v5}, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->access$900(Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;)I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_3

    .line 362
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/CustomListDisplayModel;->getTypeName()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter$2;->this$0:Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;

    invoke-static {v6}, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->access$800(Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 363
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    :cond_2
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/CustomListDisplayModel;->getField1()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/CustomListDisplayModel;->getField1()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter$2;->this$0:Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;

    invoke-static {v6}, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->access$800(Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 366
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 369
    :cond_3
    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/CustomListDisplayModel;->getData()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 371
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_5

    .line 372
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-eqz v8, :cond_4

    .line 374
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter$2;->this$0:Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;

    invoke-static {v9}, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->access$800(Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v7, 0x1

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    if-eqz v7, :cond_6

    .line 380
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 384
    :cond_7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 385
    iput-object v1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    goto :goto_4

    .line 353
    :cond_8
    :goto_3
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter$2;->this$0:Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->access$700(Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 354
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter$2;->this$0:Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;

    const-string v1, ""

    invoke-static {p1, v1}, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->access$802(Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 355
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter$2;->this$0:Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->access$700(Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    :goto_4
    return-object v0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 0

    .line 340
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter$2;->this$0:Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;

    iget-object p2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast p2, Ljava/util/ArrayList;

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->access$102(Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;Ljava/util/List;)Ljava/util/List;

    .line 341
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter$2;->this$0:Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/adapter/CustomerListAdapter;->notifyDataSetChanged()V

    return-void
.end method

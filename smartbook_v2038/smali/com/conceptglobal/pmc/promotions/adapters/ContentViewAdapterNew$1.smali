.class Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$1;
.super Landroid/widget/Filter;
.source "ContentViewAdapterNew.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->getFilter()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;)V
    .locals 0

    .line 335
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$1;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 5

    .line 345
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 347
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_3

    .line 349
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 353
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    .line 354
    :goto_0
    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$1;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;

    invoke-static {v3}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->access$2300(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 355
    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$1;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;

    invoke-static {v3}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->access$2300(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentName()Ljava/lang/String;

    move-result-object v3

    .line 357
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 358
    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$1;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;

    invoke-static {v3}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->access$2300(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 362
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 363
    iput-object v1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    goto :goto_2

    .line 350
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$1;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->access$2300(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 351
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$1;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->access$2300(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    :goto_2
    return-object v0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 0

    .line 339
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$1;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;

    iget-object p2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast p2, Ljava/util/ArrayList;

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->access$2202(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;Ljava/util/List;)Ljava/util/List;

    .line 340
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$1;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->notifyDataSetChanged()V

    return-void
.end method

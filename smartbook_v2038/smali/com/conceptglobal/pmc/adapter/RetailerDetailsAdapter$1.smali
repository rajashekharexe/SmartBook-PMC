.class Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter$1;
.super Landroid/widget/Filter;
.source "RetailerDetailsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter;->getFilter()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 6

    .line 88
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 89
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 90
    sget-object v2, Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter;->mOriginalNames:Ljava/util/List;

    if-nez v2, :cond_0

    .line 91
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter;

    invoke-static {v3}, Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter;->access$200(Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v2, Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter;->mOriginalNames:Ljava/util/List;

    :cond_0
    if-eqz p1, :cond_4

    .line 93
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 98
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    .line 99
    :goto_0
    sget-object v3, Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter;->mOriginalNames:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 100
    iget-object v3, p0, Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter;->access$302(Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    sget-object v3, Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter;->mOriginalNames:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/PmcRetailersModel;

    .line 102
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/PmcRetailersModel;->getContactName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 103
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 106
    :cond_3
    sput-object v1, Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter;->mDuplicate:Ljava/util/List;

    .line 107
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 108
    iput-object v1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    goto :goto_2

    .line 94
    :cond_4
    :goto_1
    sget-object p1, Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter;->mOriginalNames:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 95
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter;

    const-string v1, ""

    invoke-static {p1, v1}, Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter;->access$302(Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    sget-object p1, Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter;->mOriginalNames:Ljava/util/List;

    iput-object p1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    :goto_2
    return-object v0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 0

    .line 82
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter;

    iget-object p2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast p2, Ljava/util/ArrayList;

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter;->access$202(Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter;Ljava/util/List;)Ljava/util/List;

    .line 83
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter;->notifyDataSetChanged()V

    return-void
.end method

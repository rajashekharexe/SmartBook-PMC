.class Lcom/conceptglobal/pmc/adapter/ListSelectionAdapter$1;
.super Landroid/widget/Filter;
.source "ListSelectionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/adapter/ListSelectionAdapter;->getFilter()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/adapter/ListSelectionAdapter;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/adapter/ListSelectionAdapter;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/ListSelectionAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/ListSelectionAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 5

    .line 116
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 117
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 118
    sget-object v2, Lcom/conceptglobal/pmc/adapter/ListSelectionAdapter;->mOriginalNames:Ljava/util/List;

    if-nez v2, :cond_0

    .line 119
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/conceptglobal/pmc/adapter/ListSelectionAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/ListSelectionAdapter;

    invoke-static {v3}, Lcom/conceptglobal/pmc/adapter/ListSelectionAdapter;->access$000(Lcom/conceptglobal/pmc/adapter/ListSelectionAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v2, Lcom/conceptglobal/pmc/adapter/ListSelectionAdapter;->mOriginalNames:Ljava/util/List;

    :cond_0
    if-eqz p1, :cond_4

    .line 121
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 126
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    .line 127
    :goto_0
    sget-object v3, Lcom/conceptglobal/pmc/adapter/ListSelectionAdapter;->mOriginalNames:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 129
    iget-object v3, p0, Lcom/conceptglobal/pmc/adapter/ListSelectionAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/ListSelectionAdapter;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/conceptglobal/pmc/adapter/ListSelectionAdapter;->access$102(Lcom/conceptglobal/pmc/adapter/ListSelectionAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 130
    sget-object v3, Lcom/conceptglobal/pmc/adapter/ListSelectionAdapter;->mOriginalNames:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/FieldTypes;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/FieldTypes;->getName()Ljava/lang/String;

    move-result-object v3

    .line 131
    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 132
    sget-object v3, Lcom/conceptglobal/pmc/adapter/ListSelectionAdapter;->mOriginalNames:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/FieldTypes;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 135
    :cond_3
    sput-object v1, Lcom/conceptglobal/pmc/adapter/ListSelectionAdapter;->mDuplicate:Ljava/util/List;

    .line 136
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 137
    iput-object v1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    goto :goto_2

    .line 122
    :cond_4
    :goto_1
    sget-object p1, Lcom/conceptglobal/pmc/adapter/ListSelectionAdapter;->mOriginalNames:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 123
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/ListSelectionAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/ListSelectionAdapter;

    const-string v1, ""

    invoke-static {p1, v1}, Lcom/conceptglobal/pmc/adapter/ListSelectionAdapter;->access$102(Lcom/conceptglobal/pmc/adapter/ListSelectionAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 124
    sget-object p1, Lcom/conceptglobal/pmc/adapter/ListSelectionAdapter;->mOriginalNames:Ljava/util/List;

    iput-object p1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    :goto_2
    return-object v0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 0

    .line 110
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/ListSelectionAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/ListSelectionAdapter;

    iget-object p2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast p2, Ljava/util/ArrayList;

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/adapter/ListSelectionAdapter;->access$002(Lcom/conceptglobal/pmc/adapter/ListSelectionAdapter;Ljava/util/List;)Ljava/util/List;

    .line 111
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/ListSelectionAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/ListSelectionAdapter;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/adapter/ListSelectionAdapter;->notifyDataSetChanged()V

    return-void
.end method

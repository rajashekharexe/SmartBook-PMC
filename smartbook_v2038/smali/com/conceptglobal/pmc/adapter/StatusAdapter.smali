.class public Lcom/conceptglobal/pmc/adapter/StatusAdapter;
.super Landroid/widget/BaseAdapter;
.source "StatusAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/Filterable;


# static fields
.field public static final TYPE_SECTION_HEADER:I


# instance fields
.field public final headers:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final sections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/widget/Adapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 24
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 20
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/StatusAdapter;->sections:Ljava/util/Map;

    .line 25
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x7f0c012b

    invoke-direct {v0, p1, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/StatusAdapter;->headers:Landroid/widget/ArrayAdapter;

    return-void
.end method


# virtual methods
.method public addSection(Ljava/lang/String;Landroid/widget/Adapter;)V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/StatusAdapter;->headers:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 30
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/StatusAdapter;->sections:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public areAllItemsSelectable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 3

    .line 51
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/StatusAdapter;->sections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/Adapter;

    .line 52
    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 4

    .line 34
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/StatusAdapter;->sections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 35
    iget-object v2, p0, Lcom/conceptglobal/pmc/adapter/StatusAdapter;->sections:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/Adapter;

    .line 36
    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    if-ge p1, v3, :cond_1

    add-int/lit8 p1, p1, -0x1

    .line 41
    invoke-interface {v2, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    sub-int/2addr p1, v3

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 5

    .line 66
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/StatusAdapter;->sections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 67
    iget-object v4, p0, Lcom/conceptglobal/pmc/adapter/StatusAdapter;->sections:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/Adapter;

    .line 68
    invoke-interface {v3}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    add-int/2addr v4, v1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-ge p1, v4, :cond_1

    sub-int/2addr p1, v1

    .line 73
    invoke-interface {v3, p1}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result p1

    add-int/2addr v2, p1

    return v2

    :cond_1
    sub-int/2addr p1, v4

    .line 76
    invoke-interface {v3}, Landroid/widget/Adapter;->getViewTypeCount()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 92
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/StatusAdapter;->sections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 93
    iget-object v3, p0, Lcom/conceptglobal/pmc/adapter/StatusAdapter;->sections:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/Adapter;

    .line 94
    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-nez p1, :cond_0

    .line 97
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/StatusAdapter;->headers:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1, v1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    if-ge p1, v3, :cond_1

    add-int/lit8 p1, p1, -0x1

    .line 99
    invoke-interface {v2, p1, p2, p3}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_1
    sub-int/2addr p1, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getViewTypeCount()I
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/StatusAdapter;->sections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/Adapter;

    .line 60
    invoke-interface {v2}, Landroid/widget/Adapter;->getViewTypeCount()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public isEnabled(I)Z
    .locals 0

    .line 86
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/adapter/StatusAdapter;->getItemViewType(I)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.class public Lcom/conceptglobal/pmc/adapter/NavigationDrawerAdapter;
.super Landroid/widget/BaseAdapter;
.source "NavigationDrawerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/adapter/NavigationDrawerAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private holder:Lcom/conceptglobal/pmc/adapter/NavigationDrawerAdapter$ViewHolder;

.field private listImages_selected:[Ljava/lang/Integer;

.field private listNames:[Ljava/lang/String;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    .line 20
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/NavigationDrawerAdapter;->context:Landroid/content/Context;

    .line 22
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/NavigationDrawerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10013f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100200

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100124

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10024c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100157

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f10014f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v2, 0x0

    filled-new-array/range {v2 .. v9}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/NavigationDrawerAdapter;->listNames:[Ljava/lang/String;

    const p1, 0x7f080111

    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const v0, 0x7f080106

    .line 30
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f08010f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f080102

    .line 31
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f080093

    .line 32
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/Integer;

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 p1, 0x2

    aput-object v0, v4, p1

    const/4 p1, 0x3

    aput-object v1, v4, p1

    const/4 p1, 0x4

    aput-object v2, v4, p1

    const/4 p1, 0x5

    aput-object v0, v4, p1

    const/4 p1, 0x6

    aput-object v0, v4, p1

    const/4 p1, 0x7

    aput-object v3, v4, p1

    iput-object v4, p0, Lcom/conceptglobal/pmc/adapter/NavigationDrawerAdapter;->listImages_selected:[Ljava/lang/Integer;

    return-void
.end method

.method private init(Landroid/view/View;I)V
    .locals 1

    .line 63
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/NavigationDrawerAdapter;->holder:Lcom/conceptglobal/pmc/adapter/NavigationDrawerAdapter$ViewHolder;

    const v0, 0x7f090544

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p2, p1}, Lcom/conceptglobal/pmc/adapter/NavigationDrawerAdapter$ViewHolder;->access$102(Lcom/conceptglobal/pmc/adapter/NavigationDrawerAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/NavigationDrawerAdapter;->listNames:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 73
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 43
    new-instance p2, Lcom/conceptglobal/pmc/adapter/NavigationDrawerAdapter$ViewHolder;

    const/4 v1, 0x0

    invoke-direct {p2, p0, v1}, Lcom/conceptglobal/pmc/adapter/NavigationDrawerAdapter$ViewHolder;-><init>(Lcom/conceptglobal/pmc/adapter/NavigationDrawerAdapter;Lcom/conceptglobal/pmc/adapter/NavigationDrawerAdapter$1;)V

    iput-object p2, p0, Lcom/conceptglobal/pmc/adapter/NavigationDrawerAdapter;->holder:Lcom/conceptglobal/pmc/adapter/NavigationDrawerAdapter$ViewHolder;

    .line 44
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/NavigationDrawerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c013f

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 45
    invoke-direct {p0, p2, p1}, Lcom/conceptglobal/pmc/adapter/NavigationDrawerAdapter;->init(Landroid/view/View;I)V

    .line 46
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/NavigationDrawerAdapter;->holder:Lcom/conceptglobal/pmc/adapter/NavigationDrawerAdapter$ViewHolder;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/conceptglobal/pmc/adapter/NavigationDrawerAdapter$ViewHolder;

    iput-object p3, p0, Lcom/conceptglobal/pmc/adapter/NavigationDrawerAdapter;->holder:Lcom/conceptglobal/pmc/adapter/NavigationDrawerAdapter$ViewHolder;

    .line 51
    :goto_0
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/NavigationDrawerAdapter;->holder:Lcom/conceptglobal/pmc/adapter/NavigationDrawerAdapter$ViewHolder;

    invoke-static {p3}, Lcom/conceptglobal/pmc/adapter/NavigationDrawerAdapter$ViewHolder;->access$100(Lcom/conceptglobal/pmc/adapter/NavigationDrawerAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/NavigationDrawerAdapter;->listNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/NavigationDrawerAdapter;->holder:Lcom/conceptglobal/pmc/adapter/NavigationDrawerAdapter$ViewHolder;

    invoke-static {p3}, Lcom/conceptglobal/pmc/adapter/NavigationDrawerAdapter$ViewHolder;->access$100(Lcom/conceptglobal/pmc/adapter/NavigationDrawerAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/NavigationDrawerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060031

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 53
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/NavigationDrawerAdapter;->listImages_selected:[Ljava/lang/Integer;

    aget-object p3, p3, p1

    if-eqz p3, :cond_1

    .line 54
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/NavigationDrawerAdapter;->holder:Lcom/conceptglobal/pmc/adapter/NavigationDrawerAdapter$ViewHolder;

    invoke-static {p3}, Lcom/conceptglobal/pmc/adapter/NavigationDrawerAdapter$ViewHolder;->access$100(Lcom/conceptglobal/pmc/adapter/NavigationDrawerAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/NavigationDrawerAdapter;->listImages_selected:[Ljava/lang/Integer;

    aget-object p1, v1, p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p3, p1, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1

    .line 56
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/NavigationDrawerAdapter;->holder:Lcom/conceptglobal/pmc/adapter/NavigationDrawerAdapter$ViewHolder;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/NavigationDrawerAdapter$ViewHolder;->access$100(Lcom/conceptglobal/pmc/adapter/NavigationDrawerAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-object p2
.end method

.class public Lcom/conceptglobal/pmc/adapter/PhoneNumbersDialogListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "PhoneNumbersDialogListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/adapter/PhoneNumbersDialogListAdapter$PhoneNumbersListViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/conceptglobal/pmc/adapter/PhoneNumbersDialogListAdapter$PhoneNumbersListViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PhoneNumbersDialogListAdapter"


# instance fields
.field private callOrSms:I

.field private final context:Landroid/content/Context;

.field private lastPosition:I

.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, -0x1

    .line 28
    iput v0, p0, Lcom/conceptglobal/pmc/adapter/PhoneNumbersDialogListAdapter;->lastPosition:I

    .line 32
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/PhoneNumbersDialogListAdapter;->context:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/conceptglobal/pmc/adapter/PhoneNumbersDialogListAdapter;->list:Ljava/util/List;

    .line 34
    iput p3, p0, Lcom/conceptglobal/pmc/adapter/PhoneNumbersDialogListAdapter;->callOrSms:I

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/adapter/PhoneNumbersDialogListAdapter;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/conceptglobal/pmc/adapter/PhoneNumbersDialogListAdapter;->callOrSms:I

    return p0
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/adapter/PhoneNumbersDialogListAdapter;)Landroid/content/Context;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/PhoneNumbersDialogListAdapter;->context:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/PhoneNumbersDialogListAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 22
    check-cast p1, Lcom/conceptglobal/pmc/adapter/PhoneNumbersDialogListAdapter$PhoneNumbersListViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/conceptglobal/pmc/adapter/PhoneNumbersDialogListAdapter;->onBindViewHolder(Lcom/conceptglobal/pmc/adapter/PhoneNumbersDialogListAdapter$PhoneNumbersListViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/conceptglobal/pmc/adapter/PhoneNumbersDialogListAdapter$PhoneNumbersListViewHolder;I)V
    .locals 3

    .line 44
    iget-object v0, p1, Lcom/conceptglobal/pmc/adapter/PhoneNumbersDialogListAdapter$PhoneNumbersListViewHolder;->item:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/PhoneNumbersDialogListAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget v0, p0, Lcom/conceptglobal/pmc/adapter/PhoneNumbersDialogListAdapter;->callOrSms:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 46
    iget-object v0, p1, Lcom/conceptglobal/pmc/adapter/PhoneNumbersDialogListAdapter$PhoneNumbersListViewHolder;->item:Landroid/widget/TextView;

    const v1, 0x7f080124

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 48
    iget-object v0, p1, Lcom/conceptglobal/pmc/adapter/PhoneNumbersDialogListAdapter$PhoneNumbersListViewHolder;->item:Landroid/widget/TextView;

    const v1, 0x7f08012c

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 51
    :cond_1
    :goto_0
    iget-object p1, p1, Lcom/conceptglobal/pmc/adapter/PhoneNumbersDialogListAdapter$PhoneNumbersListViewHolder;->item:Landroid/widget/TextView;

    new-instance v0, Lcom/conceptglobal/pmc/adapter/PhoneNumbersDialogListAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/conceptglobal/pmc/adapter/PhoneNumbersDialogListAdapter$1;-><init>(Lcom/conceptglobal/pmc/adapter/PhoneNumbersDialogListAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/conceptglobal/pmc/adapter/PhoneNumbersDialogListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/conceptglobal/pmc/adapter/PhoneNumbersDialogListAdapter$PhoneNumbersListViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/conceptglobal/pmc/adapter/PhoneNumbersDialogListAdapter$PhoneNumbersListViewHolder;
    .locals 3

    .line 78
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0082

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 79
    iput p2, p0, Lcom/conceptglobal/pmc/adapter/PhoneNumbersDialogListAdapter;->lastPosition:I

    .line 80
    new-instance p2, Lcom/conceptglobal/pmc/adapter/PhoneNumbersDialogListAdapter$PhoneNumbersListViewHolder;

    invoke-direct {p2, p1}, Lcom/conceptglobal/pmc/adapter/PhoneNumbersDialogListAdapter$PhoneNumbersListViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

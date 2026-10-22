.class Lcom/conceptglobal/pmc/adapter/NavDrawerAdapter$MyViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "NavDrawerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/adapter/NavDrawerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyViewHolder"
.end annotation


# instance fields
.field icon:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/conceptglobal/pmc/adapter/NavDrawerAdapter;

.field title:Lcom/conceptglobal/imaterialdesign/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/conceptglobal/pmc/adapter/NavDrawerAdapter;Landroid/view/View;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/NavDrawerAdapter$MyViewHolder;->this$0:Lcom/conceptglobal/pmc/adapter/NavDrawerAdapter;

    .line 72
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090457

    .line 73
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/imaterialdesign/widget/TextView;

    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/NavDrawerAdapter$MyViewHolder;->title:Lcom/conceptglobal/imaterialdesign/widget/TextView;

    const p1, 0x7f09022d

    .line 74
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/NavDrawerAdapter$MyViewHolder;->icon:Landroid/widget/ImageView;

    return-void
.end method

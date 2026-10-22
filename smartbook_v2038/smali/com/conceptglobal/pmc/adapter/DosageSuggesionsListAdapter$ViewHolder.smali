.class public Lcom/conceptglobal/pmc/adapter/DosageSuggesionsListAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "DosageSuggesionsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/adapter/DosageSuggesionsListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field tvAttrName:Landroid/widget/TextView;

.field tvAttrName2:Landroid/widget/TextView;

.field tvAttrValue:Landroid/widget/TextView;

.field tvAttrValue2:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 70
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f090476

    .line 71
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/DosageSuggesionsListAdapter$ViewHolder;->tvAttrName:Landroid/widget/TextView;

    const v0, 0x7f090478

    .line 72
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/DosageSuggesionsListAdapter$ViewHolder;->tvAttrValue:Landroid/widget/TextView;

    const v0, 0x7f090477

    .line 73
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/DosageSuggesionsListAdapter$ViewHolder;->tvAttrName2:Landroid/widget/TextView;

    const v0, 0x7f090479

    .line 74
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/DosageSuggesionsListAdapter$ViewHolder;->tvAttrValue2:Landroid/widget/TextView;

    return-void
.end method

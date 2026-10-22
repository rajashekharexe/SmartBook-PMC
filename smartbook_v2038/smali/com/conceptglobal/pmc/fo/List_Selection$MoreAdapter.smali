.class Lcom/conceptglobal/pmc/fo/List_Selection$MoreAdapter;
.super Landroid/widget/BaseAdapter;
.source "List_Selection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fo/List_Selection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MoreAdapter"
.end annotation


# instance fields
.field private holder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private inflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/List_Selection;


# direct methods
.method public constructor <init>(Lcom/conceptglobal/pmc/fo/List_Selection;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 143
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/List_Selection$MoreAdapter;->this$0:Lcom/conceptglobal/pmc/fo/List_Selection;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 144
    iput-object p3, p0, Lcom/conceptglobal/pmc/fo/List_Selection$MoreAdapter;->holder:Ljava/util/List;

    .line 145
    const-string p1, "layout_inflater"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/List_Selection$MoreAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/List_Selection$MoreAdapter;->holder:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/List_Selection$MoreAdapter;->holder:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-nez p2, :cond_0

    .line 167
    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/List_Selection$MoreAdapter;->inflater:Landroid/view/LayoutInflater;

    const p3, 0x7f0c00ca

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 169
    :cond_0
    new-instance p3, Lcom/conceptglobal/pmc/fo/List_Selection$ViewHolder;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/List_Selection$MoreAdapter;->this$0:Lcom/conceptglobal/pmc/fo/List_Selection;

    invoke-direct {p3, v0}, Lcom/conceptglobal/pmc/fo/List_Selection$ViewHolder;-><init>(Lcom/conceptglobal/pmc/fo/List_Selection;)V

    const v0, 0x7f090252

    .line 170
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/conceptglobal/pmc/fo/List_Selection$ViewHolder;->name:Landroid/widget/TextView;

    .line 171
    iget-object p3, p3, Lcom/conceptglobal/pmc/fo/List_Selection$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/List_Selection$MoreAdapter;->holder:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

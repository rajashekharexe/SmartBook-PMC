.class public Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter;
.super Landroid/widget/BaseAdapter;
.source "FarmerSelectionForTodoAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private customerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;",
            ">;"
        }
    .end annotation
.end field

.field private holder:Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;

.field private isCalendarView:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private searchString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;",
            ">;Z)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter;->searchString:Ljava/lang/String;

    .line 30
    new-instance v0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;-><init>(Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter;Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$1;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter;->holder:Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;

    .line 34
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter;->context:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter;->customerList:Ljava/util/List;

    .line 36
    iput-boolean p3, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter;->isCalendarView:Z

    .line 37
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private init(Landroid/view/View;I)V
    .locals 1

    .line 93
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter;->holder:Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;

    const v0, 0x7f09027a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {p2, v0}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;->access$802(Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 94
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter;->holder:Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;

    const v0, 0x7f090008

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-static {p2, v0}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;->access$902(Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    .line 95
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter;->holder:Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;

    const v0, 0x7f090451

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2, v0}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;->access$102(Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 96
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter;->holder:Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;

    const v0, 0x7f09043b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2, v0}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;->access$202(Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 97
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter;->holder:Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;

    const v0, 0x7f090438

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2, v0}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;->access$302(Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 98
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter;->holder:Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;

    const v0, 0x7f09023c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {p2, v0}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;->access$1002(Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 99
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter;->holder:Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;

    const v0, 0x7f09043a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2, v0}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;->access$402(Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 100
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter;->holder:Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;

    const v0, 0x7f090442

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2, v0}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;->access$702(Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 101
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter;->holder:Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;

    const v0, 0x7f09043d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2, v0}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;->access$502(Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 102
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter;->holder:Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;

    const v0, 0x7f090441

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p2, p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;->access$602(Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter;->customerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter;->customerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 59
    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0162

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 60
    new-instance p3, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;

    const/4 v1, 0x0

    invoke-direct {p3, p0, v1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;-><init>(Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter;Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$1;)V

    iput-object p3, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter;->holder:Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;

    .line 61
    invoke-direct {p0, p2, p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter;->init(Landroid/view/View;I)V

    .line 62
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter;->holder:Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;

    iput-object p3, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter;->holder:Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;

    .line 67
    :goto_0
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter;->holder:Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;

    invoke-static {p3}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;->access$100(Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter;->searchString:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Farmer Name "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter;->holder:Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;

    invoke-static {p3}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;->access$200(Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter;->searchString:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "901234322"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter;->holder:Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;

    invoke-static {p3}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;->access$300(Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter;->searchString:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Demo Activity"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter;->holder:Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;

    invoke-static {p3}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;->access$400(Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter;->searchString:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Village"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter;->holder:Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;

    invoke-static {p3}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;->access$500(Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter;->searchString:Ljava/lang/String;

    const-string v2, "From: 13/12/2015"

    invoke-static {v1, v2}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter;->holder:Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;

    invoke-static {p3}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;->access$600(Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter;->searchString:Ljava/lang/String;

    const-string v2, "From: 17/01/2016"

    invoke-static {v1, v2}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter;->holder:Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;

    invoke-static {p3}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;->access$700(Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter;->searchString:Ljava/lang/String;

    const-string v2, "6 Days Remaining"

    invoke-static {v1, v2}, Lcom/conceptglobal/pmc/utils/Search;->getString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-boolean p3, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter;->isCalendarView:Z

    const/16 v1, 0x8

    if-nez p3, :cond_1

    .line 76
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter;->holder:Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;

    invoke-static {p3}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;->access$700(Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 80
    :cond_1
    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter;->holder:Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;

    invoke-static {p3}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;->access$700(Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 82
    :goto_1
    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_2

    .line 84
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter;->holder:Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;->access$800(Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 87
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter;->holder:Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;->access$900(Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 121
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 122
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    return-void
.end method

.method public setIsCalenderView(ZLjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList<",
            "Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;",
            ">;)V"
        }
    .end annotation

    .line 145
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter;->isCalendarView:Z

    .line 146
    iput-object p2, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter;->customerList:Ljava/util/List;

    .line 147
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public swapItems(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;",
            ">;)V"
        }
    .end annotation

    .line 151
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter;->customerList:Ljava/util/List;

    return-void
.end method

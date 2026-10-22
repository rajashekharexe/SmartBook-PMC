.class public Lcom/conceptglobal/pmc/adapter/WeatherRecyclerViewAdapter$WeatherTodoHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "WeatherRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/adapter/WeatherRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WeatherTodoHolder"
.end annotation


# instance fields
.field private cityText:Landroid/widget/TextView;

.field private condDescr:Landroid/widget/TextView;

.field private hum:Landroid/widget/TextView;

.field private imgView:Landroid/widget/ImageView;

.field private minmaxtext:Landroid/widget/TextView;

.field private temp:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/conceptglobal/pmc/adapter/WeatherRecyclerViewAdapter;

.field private windSpeed:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/conceptglobal/pmc/adapter/WeatherRecyclerViewAdapter;Landroid/view/View;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/WeatherRecyclerViewAdapter$WeatherTodoHolder;->this$0:Lcom/conceptglobal/pmc/adapter/WeatherRecyclerViewAdapter;

    .line 118
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f09011c

    .line 120
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/WeatherRecyclerViewAdapter$WeatherTodoHolder;->cityText:Landroid/widget/TextView;

    const p1, 0x7f090009

    .line 121
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/WeatherRecyclerViewAdapter$WeatherTodoHolder;->condDescr:Landroid/widget/TextView;

    const p1, 0x7f090433

    .line 122
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/WeatherRecyclerViewAdapter$WeatherTodoHolder;->temp:Landroid/widget/TextView;

    const p1, 0x7f09022c

    .line 123
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/WeatherRecyclerViewAdapter$WeatherTodoHolder;->hum:Landroid/widget/TextView;

    const p1, 0x7f0902fb

    .line 124
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/WeatherRecyclerViewAdapter$WeatherTodoHolder;->minmaxtext:Landroid/widget/TextView;

    const p1, 0x7f090603

    .line 125
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/WeatherRecyclerViewAdapter$WeatherTodoHolder;->windSpeed:Landroid/widget/TextView;

    const p1, 0x7f090607

    .line 126
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/WeatherRecyclerViewAdapter$WeatherTodoHolder;->imgView:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/adapter/WeatherRecyclerViewAdapter$WeatherTodoHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/WeatherRecyclerViewAdapter$WeatherTodoHolder;->imgView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/adapter/WeatherRecyclerViewAdapter$WeatherTodoHolder;)Landroid/widget/TextView;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/WeatherRecyclerViewAdapter$WeatherTodoHolder;->cityText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/adapter/WeatherRecyclerViewAdapter$WeatherTodoHolder;)Landroid/widget/TextView;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/WeatherRecyclerViewAdapter$WeatherTodoHolder;->condDescr:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/adapter/WeatherRecyclerViewAdapter$WeatherTodoHolder;)Landroid/widget/TextView;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/WeatherRecyclerViewAdapter$WeatherTodoHolder;->temp:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/adapter/WeatherRecyclerViewAdapter$WeatherTodoHolder;)Landroid/widget/TextView;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/WeatherRecyclerViewAdapter$WeatherTodoHolder;->hum:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/conceptglobal/pmc/adapter/WeatherRecyclerViewAdapter$WeatherTodoHolder;)Landroid/widget/TextView;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/WeatherRecyclerViewAdapter$WeatherTodoHolder;->minmaxtext:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/conceptglobal/pmc/adapter/WeatherRecyclerViewAdapter$WeatherTodoHolder;)Landroid/widget/TextView;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/WeatherRecyclerViewAdapter$WeatherTodoHolder;->windSpeed:Landroid/widget/TextView;

    return-object p0
.end method

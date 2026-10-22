.class public Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "FeedBackRecyclerToDoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SelectionTODOHolder"
.end annotation


# instance fields
.field btnResloutionView:Landroid/widget/Button;

.field btn_forward:Landroid/widget/Button;

.field protected cardview:Landroidx/cardview/widget/CardView;

.field protected id:Ljava/lang/String;

.field private ivSave:Landroid/widget/ImageView;

.field private ivSegmentType:Landroid/widget/ImageView;

.field private llView:Landroid/widget/RelativeLayout;

.field private mapView:Landroid/widget/ImageView;

.field private tvActvityAssigned:Landroid/widget/TextView;

.field private tvDaysRemaining:Landroid/widget/TextView;

.field private tvFarmerName:Landroid/widget/TextView;

.field private tvFarmerNumber:Landroid/widget/TextView;

.field private tvFromDate:Landroid/widget/TextView;

.field private tvParentSegmentValue:Landroid/widget/TextView;

.field private tvToDate:Landroid/widget/TextView;

.field private tvassignmentId:Landroid/widget/TextView;

.field private txtResolutionstatus:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 672
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0900e2

    .line 673
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;->cardview:Landroidx/cardview/widget/CardView;

    const v0, 0x7f09027a

    .line 674
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;->ivSave:Landroid/widget/ImageView;

    const v0, 0x7f090008

    .line 675
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;->llView:Landroid/widget/RelativeLayout;

    const v0, 0x7f090451

    .line 676
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;->tvFarmerName:Landroid/widget/TextView;

    const v0, 0x7f09043b

    .line 677
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;->tvFarmerNumber:Landroid/widget/TextView;

    const v0, 0x7f090438

    .line 678
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;->tvActvityAssigned:Landroid/widget/TextView;

    const v0, 0x7f09023c

    .line 679
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;->ivSegmentType:Landroid/widget/ImageView;

    const v0, 0x7f09043a

    .line 680
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;->tvParentSegmentValue:Landroid/widget/TextView;

    const v0, 0x7f090442

    .line 681
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;->tvDaysRemaining:Landroid/widget/TextView;

    const v0, 0x7f09043d

    .line 682
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;->tvFromDate:Landroid/widget/TextView;

    const v0, 0x7f090441

    .line 683
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;->tvToDate:Landroid/widget/TextView;

    const v0, 0x7f090439

    .line 684
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;->tvassignmentId:Landroid/widget/TextView;

    const v0, 0x7f090282

    .line 685
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;->mapView:Landroid/widget/ImageView;

    const v0, 0x7f0905bc

    .line 686
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;->txtResolutionstatus:Landroid/widget/TextView;

    const v0, 0x7f0900ae

    .line 687
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;->btnResloutionView:Landroid/widget/Button;

    const v0, 0x7f09009d

    .line 688
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;->btn_forward:Landroid/widget/Button;

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;
    .locals 0

    .line 660
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;->tvFarmerName:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;
    .locals 0

    .line 660
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;->tvassignmentId:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 660
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;->llView:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 660
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;->ivSegmentType:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;
    .locals 0

    .line 660
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;->txtResolutionstatus:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;
    .locals 0

    .line 660
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;->tvFarmerNumber:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;
    .locals 0

    .line 660
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;->tvActvityAssigned:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;
    .locals 0

    .line 660
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;->tvParentSegmentValue:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;
    .locals 0

    .line 660
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;->tvToDate:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/TextView;
    .locals 0

    .line 660
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;->tvDaysRemaining:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 660
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;->mapView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 660
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/FeedBackRecyclerToDoAdapter$SelectionTODOHolder;->ivSave:Landroid/widget/ImageView;

    return-object p0
.end method

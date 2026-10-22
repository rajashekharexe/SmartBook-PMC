.class public Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "FarmerSelectionRecyclerToDoAdapter_Expenses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SelectionTODOHolder"
.end annotation


# instance fields
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

.field private tv_actAssignId:Landroid/widget/TextView;

.field private tvassignmentId:Landroid/widget/TextView;

.field private txtID:Landroid/widget/TextView;

.field private txtNoDaysLeft:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 688
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0900e2

    .line 689
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->cardview:Landroidx/cardview/widget/CardView;

    const v0, 0x7f09027a

    .line 690
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->ivSave:Landroid/widget/ImageView;

    const v0, 0x7f090008

    .line 691
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->llView:Landroid/widget/RelativeLayout;

    const v0, 0x7f090451

    .line 692
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->tvFarmerName:Landroid/widget/TextView;

    const v0, 0x7f0905b8

    .line 693
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->txtNoDaysLeft:Landroid/widget/TextView;

    const v0, 0x7f09043b

    .line 694
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->tvFarmerNumber:Landroid/widget/TextView;

    const v0, 0x7f090438

    .line 695
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->tvActvityAssigned:Landroid/widget/TextView;

    const v0, 0x7f09023c

    .line 696
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->ivSegmentType:Landroid/widget/ImageView;

    const v0, 0x7f09043a

    .line 697
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->tvParentSegmentValue:Landroid/widget/TextView;

    const v0, 0x7f090442

    .line 698
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->tvDaysRemaining:Landroid/widget/TextView;

    const v0, 0x7f09043d

    .line 699
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->tvFromDate:Landroid/widget/TextView;

    const v0, 0x7f090441

    .line 700
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->tvToDate:Landroid/widget/TextView;

    const v0, 0x7f090439

    .line 701
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->tvassignmentId:Landroid/widget/TextView;

    const v0, 0x7f090282

    .line 702
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->mapView:Landroid/widget/ImageView;

    const v0, 0x7f0905b4

    .line 703
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->txtID:Landroid/widget/TextView;

    const v0, 0x7f0904f5

    .line 704
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->tv_actAssignId:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/TextView;
    .locals 0

    .line 677
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->tvFarmerName:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/TextView;
    .locals 0

    .line 677
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->txtID:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 677
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->llView:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 677
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->ivSave:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/TextView;
    .locals 0

    .line 677
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->tv_actAssignId:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 677
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->ivSegmentType:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/TextView;
    .locals 0

    .line 677
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->tvassignmentId:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/TextView;
    .locals 0

    .line 677
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->tvFarmerNumber:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/TextView;
    .locals 0

    .line 677
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->tvActvityAssigned:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/TextView;
    .locals 0

    .line 677
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->tvParentSegmentValue:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/TextView;
    .locals 0

    .line 677
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->tvFromDate:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/TextView;
    .locals 0

    .line 677
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->tvToDate:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/TextView;
    .locals 0

    .line 677
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->tvDaysRemaining:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 677
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionRecyclerToDoAdapter_Expenses$SelectionTODOHolder;->mapView:Landroid/widget/ImageView;

    return-object p0
.end method

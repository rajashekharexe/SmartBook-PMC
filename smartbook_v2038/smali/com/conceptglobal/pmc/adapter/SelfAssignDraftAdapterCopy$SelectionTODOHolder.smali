.class public Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy$SelectionTODOHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SelfAssignDraftAdapterCopy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy;
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

.field private iv_deleteDraft:Landroid/widget/ImageView;

.field private llView:Landroid/widget/RelativeLayout;

.field private tvActvityAssigned:Landroid/widget/TextView;

.field private tvDaysRemaining:Landroid/widget/TextView;

.field private tvFarmerName:Landroid/widget/TextView;

.field private tvFarmerNumber:Landroid/widget/TextView;

.field private tvFromDate:Landroid/widget/TextView;

.field private tvParentSegmentValue:Landroid/widget/TextView;

.field private tvToDate:Landroid/widget/TextView;

.field private tvassignmentId:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 326
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0900e2

    .line 327
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy$SelectionTODOHolder;->cardview:Landroidx/cardview/widget/CardView;

    const v0, 0x7f09027a

    .line 328
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy$SelectionTODOHolder;->ivSave:Landroid/widget/ImageView;

    const v0, 0x7f090008

    .line 329
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy$SelectionTODOHolder;->llView:Landroid/widget/RelativeLayout;

    const v0, 0x7f090451

    .line 330
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy$SelectionTODOHolder;->tvFarmerName:Landroid/widget/TextView;

    const v0, 0x7f09043b

    .line 331
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy$SelectionTODOHolder;->tvFarmerNumber:Landroid/widget/TextView;

    const v0, 0x7f090438

    .line 332
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy$SelectionTODOHolder;->tvActvityAssigned:Landroid/widget/TextView;

    const v0, 0x7f09023c

    .line 333
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy$SelectionTODOHolder;->ivSegmentType:Landroid/widget/ImageView;

    const v0, 0x7f09026e

    .line 334
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy$SelectionTODOHolder;->iv_deleteDraft:Landroid/widget/ImageView;

    const v0, 0x7f09043a

    .line 335
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy$SelectionTODOHolder;->tvParentSegmentValue:Landroid/widget/TextView;

    const v0, 0x7f090442

    .line 336
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy$SelectionTODOHolder;->tvDaysRemaining:Landroid/widget/TextView;

    const v0, 0x7f09043d

    .line 337
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy$SelectionTODOHolder;->tvFromDate:Landroid/widget/TextView;

    const v0, 0x7f090441

    .line 338
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy$SelectionTODOHolder;->tvToDate:Landroid/widget/TextView;

    const v0, 0x7f090439

    .line 339
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy$SelectionTODOHolder;->tvassignmentId:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy$SelectionTODOHolder;)Landroid/widget/TextView;
    .locals 0

    .line 317
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy$SelectionTODOHolder;->tvFarmerName:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy$SelectionTODOHolder;)Landroid/widget/TextView;
    .locals 0

    .line 317
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy$SelectionTODOHolder;->tvassignmentId:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy$SelectionTODOHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 317
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy$SelectionTODOHolder;->iv_deleteDraft:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy$SelectionTODOHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 317
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy$SelectionTODOHolder;->ivSegmentType:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy$SelectionTODOHolder;)Landroid/widget/TextView;
    .locals 0

    .line 317
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy$SelectionTODOHolder;->tvFarmerNumber:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy$SelectionTODOHolder;)Landroid/widget/TextView;
    .locals 0

    .line 317
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy$SelectionTODOHolder;->tvActvityAssigned:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy$SelectionTODOHolder;)Landroid/widget/TextView;
    .locals 0

    .line 317
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy$SelectionTODOHolder;->tvParentSegmentValue:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy$SelectionTODOHolder;)Landroid/widget/TextView;
    .locals 0

    .line 317
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy$SelectionTODOHolder;->tvFromDate:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy$SelectionTODOHolder;)Landroid/widget/TextView;
    .locals 0

    .line 317
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy$SelectionTODOHolder;->tvToDate:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy$SelectionTODOHolder;)Landroid/widget/TextView;
    .locals 0

    .line 317
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy$SelectionTODOHolder;->tvDaysRemaining:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy$SelectionTODOHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 317
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy$SelectionTODOHolder;->ivSave:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy$SelectionTODOHolder;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 317
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/SelfAssignDraftAdapterCopy$SelectionTODOHolder;->llView:Landroid/widget/RelativeLayout;

    return-object p0
.end method

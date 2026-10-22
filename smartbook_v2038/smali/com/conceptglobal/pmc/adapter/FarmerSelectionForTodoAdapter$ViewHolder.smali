.class Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "FarmerSelectionForTodoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field private ivSave:Landroid/widget/ImageView;

.field private ivSegmentType:Landroid/widget/ImageView;

.field private llView:Landroid/widget/RelativeLayout;

.field final synthetic this$0:Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter;

.field private tvActvityAssigned:Landroid/widget/TextView;

.field private tvDaysRemaining:Landroid/widget/TextView;

.field private tvFarmerName:Landroid/widget/TextView;

.field private tvFarmerNumber:Landroid/widget/TextView;

.field private tvFromDate:Landroid/widget/TextView;

.field private tvParentSegmentValue:Landroid/widget/TextView;

.field private tvToDate:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;->this$0:Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter;Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$1;)V
    .locals 0

    .line 110
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;-><init>(Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter;)V

    return-void
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;->tvFarmerName:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;->ivSegmentType:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$102(Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;->tvFarmerName:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;->tvFarmerNumber:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$202(Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;->tvFarmerNumber:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;->tvActvityAssigned:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$302(Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;->tvActvityAssigned:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;->tvParentSegmentValue:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$402(Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;->tvParentSegmentValue:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$500(Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;->tvFromDate:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$502(Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;->tvFromDate:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$600(Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;->tvToDate:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$602(Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;->tvToDate:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$700(Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;->tvDaysRemaining:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$702(Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;->tvDaysRemaining:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$800(Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;->ivSave:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$802(Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;->ivSave:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$900(Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;->llView:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$902(Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerSelectionForTodoAdapter$ViewHolder;->llView:Landroid/widget/RelativeLayout;

    return-object p1
.end method

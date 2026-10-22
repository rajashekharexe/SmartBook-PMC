.class Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ActivityDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field private ivActitivityAssigned:Landroid/widget/ImageView;

.field private ivActivityDelete:Landroid/widget/ImageView;

.field private llActivity:Landroid/widget/LinearLayout;

.field final synthetic this$0:Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;

.field private tvActivityName:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$ViewHolder;->this$0:Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$1;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$ViewHolder;-><init>(Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter;)V

    return-void
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$ViewHolder;->tvActivityName:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$102(Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$ViewHolder;->tvActivityName:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$ViewHolder;->ivActitivityAssigned:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$202(Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$ViewHolder;->ivActitivityAssigned:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$ViewHolder;->ivActivityDelete:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$302(Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$ViewHolder;->ivActivityDelete:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$ViewHolder;)Landroid/widget/LinearLayout;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$ViewHolder;->llActivity:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$402(Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$ViewHolder;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/ActivityDisplayAdapter$ViewHolder;->llActivity:Landroid/widget/LinearLayout;

    return-object p1
.end method

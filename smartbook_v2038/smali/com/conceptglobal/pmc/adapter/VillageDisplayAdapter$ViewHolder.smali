.class Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "VillageDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field private llView:Landroid/widget/LinearLayout;

.field private tLayout:Landroid/widget/TableLayout;

.field final synthetic this$0:Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;

.field private tvVillageName:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter$ViewHolder;->this$0:Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter$1;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter$ViewHolder;-><init>(Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter;)V

    return-void
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter$ViewHolder;->tvVillageName:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$102(Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter$ViewHolder;->tvVillageName:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter$ViewHolder;)Landroid/widget/TableLayout;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter$ViewHolder;->tLayout:Landroid/widget/TableLayout;

    return-object p0
.end method

.method static synthetic access$202(Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter$ViewHolder;Landroid/widget/TableLayout;)Landroid/widget/TableLayout;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter$ViewHolder;->tLayout:Landroid/widget/TableLayout;

    return-object p1
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter$ViewHolder;)Landroid/widget/LinearLayout;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter$ViewHolder;->llView:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$302(Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter$ViewHolder;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/VillageDisplayAdapter$ViewHolder;->llView:Landroid/widget/LinearLayout;

    return-object p1
.end method

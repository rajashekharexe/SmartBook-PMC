.class Lcom/conceptglobal/pmc/adapter/VillageDisplayDetailsAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "VillageDisplayDetailsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/adapter/VillageDisplayDetailsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/adapter/VillageDisplayDetailsAdapter;

.field private tvCount:Landroid/widget/TextView;

.field private tvName:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/adapter/VillageDisplayDetailsAdapter;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/VillageDisplayDetailsAdapter$ViewHolder;->this$0:Lcom/conceptglobal/pmc/adapter/VillageDisplayDetailsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/conceptglobal/pmc/adapter/VillageDisplayDetailsAdapter;Lcom/conceptglobal/pmc/adapter/VillageDisplayDetailsAdapter$1;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/adapter/VillageDisplayDetailsAdapter$ViewHolder;-><init>(Lcom/conceptglobal/pmc/adapter/VillageDisplayDetailsAdapter;)V

    return-void
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/adapter/VillageDisplayDetailsAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/VillageDisplayDetailsAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$102(Lcom/conceptglobal/pmc/adapter/VillageDisplayDetailsAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/VillageDisplayDetailsAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/adapter/VillageDisplayDetailsAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/VillageDisplayDetailsAdapter$ViewHolder;->tvCount:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$202(Lcom/conceptglobal/pmc/adapter/VillageDisplayDetailsAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/VillageDisplayDetailsAdapter$ViewHolder;->tvCount:Landroid/widget/TextView;

    return-object p1
.end method

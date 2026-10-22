.class Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "CompanyDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field private ivDelete:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter;

.field private tvCompanyName:Landroid/widget/TextView;

.field private tvCompanySales:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter$ViewHolder;->this$0:Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter;Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter$1;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter$ViewHolder;-><init>(Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter;)V

    return-void
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter$ViewHolder;->tvCompanyName:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$102(Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter$ViewHolder;->tvCompanyName:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter$ViewHolder;->tvCompanySales:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$202(Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter$ViewHolder;->tvCompanySales:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter$ViewHolder;->ivDelete:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$302(Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/CompanyDisplayAdapter$ViewHolder;->ivDelete:Landroid/widget/ImageView;

    return-object p1
.end method

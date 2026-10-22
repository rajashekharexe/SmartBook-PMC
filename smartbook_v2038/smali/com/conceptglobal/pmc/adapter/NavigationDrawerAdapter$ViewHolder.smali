.class Lcom/conceptglobal/pmc/adapter/NavigationDrawerAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "NavigationDrawerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/adapter/NavigationDrawerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/adapter/NavigationDrawerAdapter;

.field private tvText:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/adapter/NavigationDrawerAdapter;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/NavigationDrawerAdapter$ViewHolder;->this$0:Lcom/conceptglobal/pmc/adapter/NavigationDrawerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/conceptglobal/pmc/adapter/NavigationDrawerAdapter;Lcom/conceptglobal/pmc/adapter/NavigationDrawerAdapter$1;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/adapter/NavigationDrawerAdapter$ViewHolder;-><init>(Lcom/conceptglobal/pmc/adapter/NavigationDrawerAdapter;)V

    return-void
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/adapter/NavigationDrawerAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/conceptglobal/pmc/adapter/NavigationDrawerAdapter$ViewHolder;->tvText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$102(Lcom/conceptglobal/pmc/adapter/NavigationDrawerAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/NavigationDrawerAdapter$ViewHolder;->tvText:Landroid/widget/TextView;

    return-object p1
.end method

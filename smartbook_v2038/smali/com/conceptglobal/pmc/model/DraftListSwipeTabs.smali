.class public Lcom/conceptglobal/pmc/model/DraftListSwipeTabs;
.super Ljava/lang/Object;
.source "DraftListSwipeTabs.java"


# instance fields
.field private tab:Ljava/lang/String;

.field private tabName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/DraftListSwipeTabs;->tab:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/conceptglobal/pmc/model/DraftListSwipeTabs;->tabName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTab()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/DraftListSwipeTabs;->tab:Ljava/lang/String;

    return-object v0
.end method

.method public getTabName()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/DraftListSwipeTabs;->tabName:Ljava/lang/String;

    return-object v0
.end method

.method public setTab(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/DraftListSwipeTabs;->tab:Ljava/lang/String;

    return-void
.end method

.method public setTabName(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/DraftListSwipeTabs;->tabName:Ljava/lang/String;

    return-void
.end method

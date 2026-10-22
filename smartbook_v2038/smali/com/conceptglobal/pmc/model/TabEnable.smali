.class public Lcom/conceptglobal/pmc/model/TabEnable;
.super Ljava/lang/Object;
.source "TabEnable.java"


# instance fields
.field private tabName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTabName()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/TabEnable;->tabName:Ljava/lang/String;

    return-object v0
.end method

.method public setTabName(Ljava/lang/String;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/TabEnable;->tabName:Ljava/lang/String;

    return-void
.end method

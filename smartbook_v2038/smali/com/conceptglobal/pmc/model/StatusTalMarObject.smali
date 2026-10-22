.class public Lcom/conceptglobal/pmc/model/StatusTalMarObject;
.super Ljava/lang/Object;
.source "StatusTalMarObject.java"


# instance fields
.field private marketname:Ljava/lang/String;

.field private talukaname:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMarketname()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/StatusTalMarObject;->marketname:Ljava/lang/String;

    return-object v0
.end method

.method public getTalukaname()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/StatusTalMarObject;->talukaname:Ljava/lang/String;

    return-object v0
.end method

.method public setMarketname(Ljava/lang/String;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/StatusTalMarObject;->marketname:Ljava/lang/String;

    return-void
.end method

.method public setTalukaname(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/StatusTalMarObject;->talukaname:Ljava/lang/String;

    return-void
.end method

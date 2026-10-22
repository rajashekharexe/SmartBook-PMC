.class public Lcom/conceptglobal/pmc/model/SendAckList;
.super Ljava/lang/Object;
.source "SendAckList.java"


# instance fields
.field private PDAID:Ljava/lang/String;

.field private ackList:Lcom/conceptglobal/pmc/model/SendAcknowledge;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Lcom/conceptglobal/pmc/model/SendAcknowledge;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/SendAcknowledge;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/SendAckList;->ackList:Lcom/conceptglobal/pmc/model/SendAcknowledge;

    return-void
.end method


# virtual methods
.method public getAckList()Lcom/conceptglobal/pmc/model/SendAcknowledge;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/SendAckList;->ackList:Lcom/conceptglobal/pmc/model/SendAcknowledge;

    return-object v0
.end method

.method public getPDAID()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/SendAckList;->PDAID:Ljava/lang/String;

    return-object v0
.end method

.method public setAckList(Lcom/conceptglobal/pmc/model/SendAcknowledge;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/SendAckList;->ackList:Lcom/conceptglobal/pmc/model/SendAcknowledge;

    return-void
.end method

.method public setPDAID(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/SendAckList;->PDAID:Ljava/lang/String;

    return-void
.end method

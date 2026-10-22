.class public Lcom/conceptglobal/pmc/model/SendAckListSV;
.super Ljava/lang/Object;
.source "SendAckListSV.java"


# instance fields
.field private PDAID:Ljava/lang/String;

.field private ackList:Lcom/conceptglobal/pmc/model/SendAcknowledgeSV;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Lcom/conceptglobal/pmc/model/SendAcknowledgeSV;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/SendAcknowledgeSV;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/SendAckListSV;->ackList:Lcom/conceptglobal/pmc/model/SendAcknowledgeSV;

    return-void
.end method


# virtual methods
.method public getAckList()Lcom/conceptglobal/pmc/model/SendAcknowledgeSV;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/SendAckListSV;->ackList:Lcom/conceptglobal/pmc/model/SendAcknowledgeSV;

    return-object v0
.end method

.method public getPDAID()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/SendAckListSV;->PDAID:Ljava/lang/String;

    return-object v0
.end method

.method public setAckList(Lcom/conceptglobal/pmc/model/SendAcknowledgeSV;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/SendAckListSV;->ackList:Lcom/conceptglobal/pmc/model/SendAcknowledgeSV;

    return-void
.end method

.method public setPDAID(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/SendAckListSV;->PDAID:Ljava/lang/String;

    return-void
.end method

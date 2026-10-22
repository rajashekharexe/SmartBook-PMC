.class public Lcom/conceptglobal/pmc/model/SendAckSdtv;
.super Ljava/lang/Object;
.source "SendAckSdtv.java"


# instance fields
.field private PDAID:Ljava/lang/String;

.field private ackList:Lcom/conceptglobal/pmc/model/SendAcknowledgeSDTV;

.field private failedAckList:Lcom/conceptglobal/pmc/model/SendFailedAcknowledgeSDTV;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Lcom/conceptglobal/pmc/model/SendAcknowledgeSDTV;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/SendAcknowledgeSDTV;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/SendAckSdtv;->ackList:Lcom/conceptglobal/pmc/model/SendAcknowledgeSDTV;

    .line 9
    new-instance v0, Lcom/conceptglobal/pmc/model/SendFailedAcknowledgeSDTV;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/SendFailedAcknowledgeSDTV;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/SendAckSdtv;->failedAckList:Lcom/conceptglobal/pmc/model/SendFailedAcknowledgeSDTV;

    return-void
.end method


# virtual methods
.method public getAckList()Lcom/conceptglobal/pmc/model/SendAcknowledgeSDTV;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/SendAckSdtv;->ackList:Lcom/conceptglobal/pmc/model/SendAcknowledgeSDTV;

    return-object v0
.end method

.method public getFailedAckList()Lcom/conceptglobal/pmc/model/SendFailedAcknowledgeSDTV;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/SendAckSdtv;->failedAckList:Lcom/conceptglobal/pmc/model/SendFailedAcknowledgeSDTV;

    return-object v0
.end method

.method public getPDAID()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/SendAckSdtv;->PDAID:Ljava/lang/String;

    return-object v0
.end method

.method public setAckList(Lcom/conceptglobal/pmc/model/SendAcknowledgeSDTV;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/SendAckSdtv;->ackList:Lcom/conceptglobal/pmc/model/SendAcknowledgeSDTV;

    return-void
.end method

.method public setFailedAckList(Lcom/conceptglobal/pmc/model/SendFailedAcknowledgeSDTV;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/SendAckSdtv;->failedAckList:Lcom/conceptglobal/pmc/model/SendFailedAcknowledgeSDTV;

    return-void
.end method

.method public setPDAID(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/SendAckSdtv;->PDAID:Ljava/lang/String;

    return-void
.end method

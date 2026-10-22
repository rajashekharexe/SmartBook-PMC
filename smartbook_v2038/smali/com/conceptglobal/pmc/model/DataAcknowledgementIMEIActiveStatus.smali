.class public Lcom/conceptglobal/pmc/model/DataAcknowledgementIMEIActiveStatus;
.super Ljava/lang/Object;
.source "DataAcknowledgementIMEIActiveStatus.java"


# instance fields
.field private IMEINumber:Ljava/lang/String;

.field private PdaId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIMEINumber()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/DataAcknowledgementIMEIActiveStatus;->IMEINumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPdaId()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/DataAcknowledgementIMEIActiveStatus;->PdaId:Ljava/lang/String;

    return-object v0
.end method

.method public setIMEINumber(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/DataAcknowledgementIMEIActiveStatus;->IMEINumber:Ljava/lang/String;

    return-void
.end method

.method public setPdaId(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/DataAcknowledgementIMEIActiveStatus;->PdaId:Ljava/lang/String;

    return-void
.end method

.class public Lcom/conceptglobal/pmc/fotracker/model/ErrorLogger;
.super Ljava/lang/Object;
.source "ErrorLogger.java"


# instance fields
.field private CreatedDate:Ljava/lang/String;

.field private ErrorMessage:Ljava/lang/String;

.field private Id:I

.field private PDAID:I

.field private ServerStatus:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCreatedDate()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/model/ErrorLogger;->CreatedDate:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/model/ErrorLogger;->ErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/conceptglobal/pmc/fotracker/model/ErrorLogger;->Id:I

    return v0
.end method

.method public getPDAID()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/conceptglobal/pmc/fotracker/model/ErrorLogger;->PDAID:I

    return v0
.end method

.method public getServerStatus()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/conceptglobal/pmc/fotracker/model/ErrorLogger;->ServerStatus:I

    return v0
.end method

.method public setCreatedDate(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/model/ErrorLogger;->CreatedDate:Ljava/lang/String;

    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/model/ErrorLogger;->ErrorMessage:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 16
    iput p1, p0, Lcom/conceptglobal/pmc/fotracker/model/ErrorLogger;->Id:I

    return-void
.end method

.method public setPDAID(I)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/conceptglobal/pmc/fotracker/model/ErrorLogger;->PDAID:I

    return-void
.end method

.method public setServerStatus(I)V
    .locals 0

    .line 48
    iput p1, p0, Lcom/conceptglobal/pmc/fotracker/model/ErrorLogger;->ServerStatus:I

    return-void
.end method

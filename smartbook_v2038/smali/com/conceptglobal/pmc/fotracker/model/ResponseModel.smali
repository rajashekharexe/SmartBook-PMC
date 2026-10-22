.class public Lcom/conceptglobal/pmc/fotracker/model/ResponseModel;
.super Ljava/lang/Object;
.source "ResponseModel.java"


# instance fields
.field private data:Ljava/lang/Object;

.field private status:Ljava/lang/String;

.field private statusMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/model/ResponseModel;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/model/ResponseModel;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusMessage()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/model/ResponseModel;->statusMessage:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/model/ResponseModel;->data:Ljava/lang/Object;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/model/ResponseModel;->status:Ljava/lang/String;

    return-void
.end method

.method public setStatusMessage(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/model/ResponseModel;->statusMessage:Ljava/lang/String;

    return-void
.end method

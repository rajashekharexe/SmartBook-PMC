.class public Lcom/conceptglobal/pmc/model/otp/GetOTPResponse;
.super Ljava/lang/Object;
.source "GetOTPResponse.java"


# instance fields
.field private data:Lcom/conceptglobal/pmc/model/otp/Data;

.field private status:Ljava/lang/String;

.field private statusMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/conceptglobal/pmc/model/otp/Data;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/otp/GetOTPResponse;->data:Lcom/conceptglobal/pmc/model/otp/Data;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/otp/GetOTPResponse;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusMessage()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/otp/GetOTPResponse;->statusMessage:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Lcom/conceptglobal/pmc/model/otp/Data;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/otp/GetOTPResponse;->data:Lcom/conceptglobal/pmc/model/otp/Data;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/otp/GetOTPResponse;->status:Ljava/lang/String;

    return-void
.end method

.method public setStatusMessage(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/otp/GetOTPResponse;->statusMessage:Ljava/lang/String;

    return-void
.end method

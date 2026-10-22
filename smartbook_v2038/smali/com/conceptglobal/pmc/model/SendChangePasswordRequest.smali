.class public Lcom/conceptglobal/pmc/model/SendChangePasswordRequest;
.super Ljava/lang/Object;
.source "SendChangePasswordRequest.java"


# instance fields
.field private PdaId:I

.field private currentPassword:Ljava/lang/String;

.field private newPassword:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNewPassword()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/SendChangePasswordRequest;->newPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getOldPassword()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/SendChangePasswordRequest;->currentPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getPdaid()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/conceptglobal/pmc/model/SendChangePasswordRequest;->PdaId:I

    return v0
.end method

.method public setNewPassword(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/SendChangePasswordRequest;->newPassword:Ljava/lang/String;

    return-void
.end method

.method public setOldPassword(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/SendChangePasswordRequest;->currentPassword:Ljava/lang/String;

    return-void
.end method

.method public setPdaid(I)V
    .locals 0

    .line 22
    iput p1, p0, Lcom/conceptglobal/pmc/model/SendChangePasswordRequest;->PdaId:I

    return-void
.end method

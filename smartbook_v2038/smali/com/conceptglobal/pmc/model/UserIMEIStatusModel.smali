.class public Lcom/conceptglobal/pmc/model/UserIMEIStatusModel;
.super Ljava/lang/Object;
.source "UserIMEIStatusModel.java"


# instance fields
.field private AndroidOS:Ljava/lang/String;

.field private IMEINumber:Ljava/lang/String;

.field private Mobile:Ljava/lang/String;

.field private PdaId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAndroidOS()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/UserIMEIStatusModel;->AndroidOS:Ljava/lang/String;

    return-object v0
.end method

.method public getIMEINumber()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/UserIMEIStatusModel;->IMEINumber:Ljava/lang/String;

    return-object v0
.end method

.method public getMobile()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/UserIMEIStatusModel;->Mobile:Ljava/lang/String;

    return-object v0
.end method

.method public getPdaId()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/UserIMEIStatusModel;->PdaId:Ljava/lang/String;

    return-object v0
.end method

.method public setAndroidOS(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/UserIMEIStatusModel;->AndroidOS:Ljava/lang/String;

    return-void
.end method

.method public setIMEINumber(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/UserIMEIStatusModel;->IMEINumber:Ljava/lang/String;

    return-void
.end method

.method public setMobile(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/UserIMEIStatusModel;->Mobile:Ljava/lang/String;

    return-void
.end method

.method public setPdaId(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/UserIMEIStatusModel;->PdaId:Ljava/lang/String;

    return-void
.end method

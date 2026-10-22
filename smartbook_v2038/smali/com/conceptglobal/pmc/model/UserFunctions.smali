.class public Lcom/conceptglobal/pmc/model/UserFunctions;
.super Ljava/lang/Object;
.source "UserFunctions.java"


# instance fields
.field private Pdafunction:Ljava/lang/String;

.field private functionId:I

.field private functionName:Ljava/lang/String;

.field private navigationUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFunctionId()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/conceptglobal/pmc/model/UserFunctions;->functionId:I

    return v0
.end method

.method public getFunctionName()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/UserFunctions;->functionName:Ljava/lang/String;

    return-object v0
.end method

.method public getNavigationUrl()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/UserFunctions;->navigationUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPdafunction()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/UserFunctions;->Pdafunction:Ljava/lang/String;

    return-object v0
.end method

.method public setFunctionId(I)V
    .locals 0

    .line 39
    iput p1, p0, Lcom/conceptglobal/pmc/model/UserFunctions;->functionId:I

    return-void
.end method

.method public setFunctionName(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/UserFunctions;->functionName:Ljava/lang/String;

    return-void
.end method

.method public setNavigationUrl(Ljava/lang/String;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/UserFunctions;->navigationUrl:Ljava/lang/String;

    return-void
.end method

.method public setPdafunction(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/UserFunctions;->Pdafunction:Ljava/lang/String;

    return-void
.end method

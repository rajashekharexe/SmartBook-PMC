.class public Lcom/conceptglobal/pmc/model/States;
.super Ljava/lang/Object;
.source "States.java"


# instance fields
.field private ETLCode:Ljava/lang/String;

.field private IsActive:Ljava/lang/String;

.field private StateId:I

.field private StateName:Ljava/lang/String;

.field private StateShortCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getETLCode()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/States;->ETLCode:Ljava/lang/String;

    return-object v0
.end method

.method public getIsActive()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/States;->IsActive:Ljava/lang/String;

    return-object v0
.end method

.method public getStateId()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/conceptglobal/pmc/model/States;->StateId:I

    return v0
.end method

.method public getStateName()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/States;->StateName:Ljava/lang/String;

    return-object v0
.end method

.method public getStateShortCode()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/States;->StateShortCode:Ljava/lang/String;

    return-object v0
.end method

.method public setETLCode(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/States;->ETLCode:Ljava/lang/String;

    return-void
.end method

.method public setIsActive(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/States;->IsActive:Ljava/lang/String;

    return-void
.end method

.method public setStateId(I)V
    .locals 0

    .line 23
    iput p1, p0, Lcom/conceptglobal/pmc/model/States;->StateId:I

    return-void
.end method

.method public setStateName(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/States;->StateName:Ljava/lang/String;

    return-void
.end method

.method public setStateShortCode(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/States;->StateShortCode:Ljava/lang/String;

    return-void
.end method

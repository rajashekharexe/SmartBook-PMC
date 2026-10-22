.class public Lcom/conceptglobal/pmc/promotions/models/TargetVsActialDetailsModel;
.super Ljava/lang/Object;
.source "TargetVsActialDetailsModel.java"


# instance fields
.field private Actual:I

.field private Plan:I

.field private Target:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActual()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/models/TargetVsActialDetailsModel;->Actual:I

    return v0
.end method

.method public getPlan()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/models/TargetVsActialDetailsModel;->Plan:I

    return v0
.end method

.method public getTarget()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/models/TargetVsActialDetailsModel;->Target:I

    return v0
.end method

.method public setActual(I)V
    .locals 0

    .line 30
    iput p1, p0, Lcom/conceptglobal/pmc/promotions/models/TargetVsActialDetailsModel;->Actual:I

    return-void
.end method

.method public setPlan(I)V
    .locals 0

    .line 22
    iput p1, p0, Lcom/conceptglobal/pmc/promotions/models/TargetVsActialDetailsModel;->Plan:I

    return-void
.end method

.method public setTarget(I)V
    .locals 0

    .line 13
    iput p1, p0, Lcom/conceptglobal/pmc/promotions/models/TargetVsActialDetailsModel;->Target:I

    return-void
.end method

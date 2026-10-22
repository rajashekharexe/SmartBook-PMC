.class public Lcom/conceptglobal/pmc/model/FOPendingStatus;
.super Ljava/lang/Object;
.source "FOPendingStatus.java"


# instance fields
.field public ActivityPendingCount:I

.field public FOPDAID:I

.field public FarmerPendingCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivityPendingCount()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/conceptglobal/pmc/model/FOPendingStatus;->ActivityPendingCount:I

    return v0
.end method

.method public getFOPDAID()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/conceptglobal/pmc/model/FOPendingStatus;->FOPDAID:I

    return v0
.end method

.method public getFarmerPendingCount()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/conceptglobal/pmc/model/FOPendingStatus;->FarmerPendingCount:I

    return v0
.end method

.method public setActivityPendingCount(I)V
    .locals 0

    .line 32
    iput p1, p0, Lcom/conceptglobal/pmc/model/FOPendingStatus;->ActivityPendingCount:I

    return-void
.end method

.method public setFOPDAID(I)V
    .locals 0

    .line 16
    iput p1, p0, Lcom/conceptglobal/pmc/model/FOPendingStatus;->FOPDAID:I

    return-void
.end method

.method public setFarmerPendingCount(I)V
    .locals 0

    .line 24
    iput p1, p0, Lcom/conceptglobal/pmc/model/FOPendingStatus;->FarmerPendingCount:I

    return-void
.end method

.class public Lcom/conceptglobal/pmc/model/GetGeography;
.super Ljava/lang/Object;
.source "GetGeography.java"


# instance fields
.field private PDAID:I

.field private districtId:I

.field private stateId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDistrictId()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/conceptglobal/pmc/model/GetGeography;->districtId:I

    return v0
.end method

.method public getPDAID()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/conceptglobal/pmc/model/GetGeography;->PDAID:I

    return v0
.end method

.method public getStateId()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/conceptglobal/pmc/model/GetGeography;->stateId:I

    return v0
.end method

.method public setDistrictId(I)V
    .locals 0

    .line 24
    iput p1, p0, Lcom/conceptglobal/pmc/model/GetGeography;->districtId:I

    return-void
.end method

.method public setPDAID(I)V
    .locals 0

    .line 32
    iput p1, p0, Lcom/conceptglobal/pmc/model/GetGeography;->PDAID:I

    return-void
.end method

.method public setStateId(I)V
    .locals 0

    .line 16
    iput p1, p0, Lcom/conceptglobal/pmc/model/GetGeography;->stateId:I

    return-void
.end method

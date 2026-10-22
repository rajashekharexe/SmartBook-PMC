.class public Lcom/conceptglobal/pmc/model/LocationInfoModel;
.super Ljava/lang/Object;
.source "LocationInfoModel.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private latitude:D

.field private longitude:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLatitude()D
    .locals 2

    .line 21
    iget-wide v0, p0, Lcom/conceptglobal/pmc/model/LocationInfoModel;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .line 36
    iget-wide v0, p0, Lcom/conceptglobal/pmc/model/LocationInfoModel;->longitude:D

    return-wide v0
.end method

.method public setLatitude(D)V
    .locals 0

    .line 29
    iput-wide p1, p0, Lcom/conceptglobal/pmc/model/LocationInfoModel;->latitude:D

    return-void
.end method

.method public setLongitude(D)V
    .locals 0

    .line 44
    iput-wide p1, p0, Lcom/conceptglobal/pmc/model/LocationInfoModel;->longitude:D

    return-void
.end method

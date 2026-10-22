.class public Lcom/conceptglobal/pmc/model/ResignationStatus;
.super Ljava/lang/Object;
.source "ResignationStatus.java"


# instance fields
.field private PDAID:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPDAID()I
    .locals 1

    .line 11
    iget v0, p0, Lcom/conceptglobal/pmc/model/ResignationStatus;->PDAID:I

    return v0
.end method

.method public setPDAID(I)V
    .locals 0

    .line 15
    iput p1, p0, Lcom/conceptglobal/pmc/model/ResignationStatus;->PDAID:I

    return-void
.end method

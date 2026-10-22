.class public Lcom/conceptglobal/pmc/promotions/models/ContentUserMapping;
.super Ljava/lang/Object;
.source "ContentUserMapping.java"


# instance fields
.field private CUMapping:I

.field private ContentId:I

.field private IsActive:I

.field private UserId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCUMapping()I
    .locals 1

    .line 14
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/models/ContentUserMapping;->CUMapping:I

    return v0
.end method

.method public getContentId()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/models/ContentUserMapping;->ContentId:I

    return v0
.end method

.method public getIsActive()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/models/ContentUserMapping;->IsActive:I

    return v0
.end method

.method public getUserId()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/models/ContentUserMapping;->UserId:I

    return v0
.end method

.method public setCUMapping(I)V
    .locals 0

    .line 18
    iput p1, p0, Lcom/conceptglobal/pmc/promotions/models/ContentUserMapping;->CUMapping:I

    return-void
.end method

.method public setContentId(I)V
    .locals 0

    .line 26
    iput p1, p0, Lcom/conceptglobal/pmc/promotions/models/ContentUserMapping;->ContentId:I

    return-void
.end method

.method public setIsActive(I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/conceptglobal/pmc/promotions/models/ContentUserMapping;->IsActive:I

    return-void
.end method

.method public setUserId(I)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/conceptglobal/pmc/promotions/models/ContentUserMapping;->UserId:I

    return-void
.end method

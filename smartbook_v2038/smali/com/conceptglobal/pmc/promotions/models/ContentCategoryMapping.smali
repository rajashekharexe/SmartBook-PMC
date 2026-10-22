.class public Lcom/conceptglobal/pmc/promotions/models/ContentCategoryMapping;
.super Ljava/lang/Object;
.source "ContentCategoryMapping.java"


# instance fields
.field private CCMapping:I

.field private CategoryId:I

.field private ContentId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCCMapping()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/models/ContentCategoryMapping;->CCMapping:I

    return v0
.end method

.method public getCategoryId()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/models/ContentCategoryMapping;->CategoryId:I

    return v0
.end method

.method public getContentId()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/models/ContentCategoryMapping;->ContentId:I

    return v0
.end method

.method public setCCMapping(I)V
    .locals 0

    .line 17
    iput p1, p0, Lcom/conceptglobal/pmc/promotions/models/ContentCategoryMapping;->CCMapping:I

    return-void
.end method

.method public setCategoryId(I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/conceptglobal/pmc/promotions/models/ContentCategoryMapping;->CategoryId:I

    return-void
.end method

.method public setContentId(I)V
    .locals 0

    .line 25
    iput p1, p0, Lcom/conceptglobal/pmc/promotions/models/ContentCategoryMapping;->ContentId:I

    return-void
.end method

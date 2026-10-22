.class public Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;
.super Ljava/lang/Object;
.source "CategoryMaster.java"


# instance fields
.field private CategoryId:I

.field private CategoryName:Ljava/lang/String;

.field private Description:Ljava/lang/String;

.field private IsActive:I

.field private ParentCategoryID:I

.field private Sequence:I

.field private childCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCategoryId()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;->CategoryId:I

    return v0
.end method

.method public getCategoryName()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;->CategoryName:Ljava/lang/String;

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;->childCount:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;->Description:Ljava/lang/String;

    return-object v0
.end method

.method public getIsActive()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;->IsActive:I

    return v0
.end method

.method public getParentCategoryID()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;->ParentCategoryID:I

    return v0
.end method

.method public getSequence()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;->Sequence:I

    return v0
.end method

.method public setCategoryId(I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;->CategoryId:I

    return-void
.end method

.method public setCategoryName(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;->CategoryName:Ljava/lang/String;

    return-void
.end method

.method public setChildCount(I)V
    .locals 0

    .line 25
    iput p1, p0, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;->childCount:I

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;->Description:Ljava/lang/String;

    return-void
.end method

.method public setIsActive(I)V
    .locals 0

    .line 73
    iput p1, p0, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;->IsActive:I

    return-void
.end method

.method public setParentCategoryID(I)V
    .locals 0

    .line 57
    iput p1, p0, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;->ParentCategoryID:I

    return-void
.end method

.method public setSequence(I)V
    .locals 0

    .line 65
    iput p1, p0, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;->Sequence:I

    return-void
.end method

.class public Lcom/conceptglobal/pmc/promotions/models/LangauageUserMapping;
.super Ljava/lang/Object;
.source "LangauageUserMapping.java"


# instance fields
.field private LUMappingId:I

.field private LanguageId:I

.field private UserId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLUMappingId()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/models/LangauageUserMapping;->LUMappingId:I

    return v0
.end method

.method public getLanguageId()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/models/LangauageUserMapping;->LanguageId:I

    return v0
.end method

.method public getUserId()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/models/LangauageUserMapping;->UserId:I

    return v0
.end method

.method public setLUMappingId(I)V
    .locals 0

    .line 17
    iput p1, p0, Lcom/conceptglobal/pmc/promotions/models/LangauageUserMapping;->LUMappingId:I

    return-void
.end method

.method public setLanguageId(I)V
    .locals 0

    .line 25
    iput p1, p0, Lcom/conceptglobal/pmc/promotions/models/LangauageUserMapping;->LanguageId:I

    return-void
.end method

.method public setUserId(I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/conceptglobal/pmc/promotions/models/LangauageUserMapping;->UserId:I

    return-void
.end method

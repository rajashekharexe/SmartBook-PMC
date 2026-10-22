.class public Lcom/conceptglobal/pmc/model/FavouriteFarmer;
.super Ljava/lang/Object;
.source "FavouriteFarmer.java"


# instance fields
.field private CreatedBy:I

.field private CreatedDate:Ljava/lang/String;

.field private FavouriteStatus:I

.field private IsFavourite:I

.field private PDAID:Ljava/lang/String;

.field private RespondentNo:Ljava/lang/String;

.field private UpdatedBy:I

.field private UpdatedDate:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCreatedBy()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/conceptglobal/pmc/model/FavouriteFarmer;->CreatedBy:I

    return v0
.end method

.method public getCreatedDate()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FavouriteFarmer;->CreatedDate:Ljava/lang/String;

    return-object v0
.end method

.method public getIsFavourite()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/conceptglobal/pmc/model/FavouriteFarmer;->IsFavourite:I

    return v0
.end method

.method public getPDAID()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FavouriteFarmer;->PDAID:Ljava/lang/String;

    return-object v0
.end method

.method public getRespondentNo()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FavouriteFarmer;->RespondentNo:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedBy()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/conceptglobal/pmc/model/FavouriteFarmer;->UpdatedBy:I

    return v0
.end method

.method public getUpdatedDate()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FavouriteFarmer;->UpdatedDate:Ljava/lang/String;

    return-object v0
.end method

.method public setCreatedBy(I)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/conceptglobal/pmc/model/FavouriteFarmer;->CreatedBy:I

    return-void
.end method

.method public setCreatedDate(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FavouriteFarmer;->CreatedDate:Ljava/lang/String;

    return-void
.end method

.method public setIsFavourite(I)V
    .locals 0

    .line 27
    iput p1, p0, Lcom/conceptglobal/pmc/model/FavouriteFarmer;->IsFavourite:I

    return-void
.end method

.method public setPDAID(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FavouriteFarmer;->PDAID:Ljava/lang/String;

    return-void
.end method

.method public setRespondentNo(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FavouriteFarmer;->RespondentNo:Ljava/lang/String;

    return-void
.end method

.method public setUpdatedBy(I)V
    .locals 0

    .line 59
    iput p1, p0, Lcom/conceptglobal/pmc/model/FavouriteFarmer;->UpdatedBy:I

    return-void
.end method

.method public setUpdatedDate(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FavouriteFarmer;->UpdatedDate:Ljava/lang/String;

    return-void
.end method

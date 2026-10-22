.class public Lcom/conceptglobal/pmc/promotions/models/ContentFaourites;
.super Ljava/lang/Object;
.source "ContentFaourites.java"


# instance fields
.field private ContentID:I

.field private FavouriteId:I

.field private ISFavourite:I

.field private PdaID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentID()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/models/ContentFaourites;->ContentID:I

    return v0
.end method

.method public getFavouriteId()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/models/ContentFaourites;->FavouriteId:I

    return v0
.end method

.method public getISFavourite()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/models/ContentFaourites;->ISFavourite:I

    return v0
.end method

.method public getPdaID()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/models/ContentFaourites;->PdaID:Ljava/lang/String;

    return-object v0
.end method

.method public setContentID(I)V
    .locals 0

    .line 22
    iput p1, p0, Lcom/conceptglobal/pmc/promotions/models/ContentFaourites;->ContentID:I

    return-void
.end method

.method public setFavouriteId(I)V
    .locals 0

    .line 14
    iput p1, p0, Lcom/conceptglobal/pmc/promotions/models/ContentFaourites;->FavouriteId:I

    return-void
.end method

.method public setISFavourite(I)V
    .locals 0

    .line 30
    iput p1, p0, Lcom/conceptglobal/pmc/promotions/models/ContentFaourites;->ISFavourite:I

    return-void
.end method

.method public setPdaID(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/models/ContentFaourites;->PdaID:Ljava/lang/String;

    return-void
.end method

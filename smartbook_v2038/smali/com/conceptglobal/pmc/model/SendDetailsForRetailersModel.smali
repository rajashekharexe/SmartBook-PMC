.class public Lcom/conceptglobal/pmc/model/SendDetailsForRetailersModel;
.super Ljava/lang/Object;
.source "SendDetailsForRetailersModel.java"


# instance fields
.field private PDAID:Ljava/lang/String;

.field private QueryIDs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private TerritoryId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/SendDetailsForRetailersModel;->QueryIDs:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getPDAID()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/SendDetailsForRetailersModel;->PDAID:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryIDs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/SendDetailsForRetailersModel;->QueryIDs:Ljava/util/List;

    return-object v0
.end method

.method public getTerritoryId()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/SendDetailsForRetailersModel;->TerritoryId:Ljava/lang/String;

    return-object v0
.end method

.method public setPDAID(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/SendDetailsForRetailersModel;->PDAID:Ljava/lang/String;

    return-void
.end method

.method public setQueryIDs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/SendDetailsForRetailersModel;->QueryIDs:Ljava/util/List;

    return-void
.end method

.method public setTerritoryId(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/SendDetailsForRetailersModel;->TerritoryId:Ljava/lang/String;

    return-void
.end method

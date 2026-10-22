.class public Lcom/conceptglobal/pmc/model/SDTV;
.super Ljava/lang/Object;
.source "SDTV.java"


# instance fields
.field private districtList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/Districts;",
            ">;"
        }
    .end annotation
.end field

.field private mandalList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/Mandals;",
            ">;"
        }
    .end annotation
.end field

.field private stateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/States;",
            ">;"
        }
    .end annotation
.end field

.field private villageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/Villages;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDistrictList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/Districts;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/SDTV;->districtList:Ljava/util/List;

    return-object v0
.end method

.method public getMandalList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/Mandals;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/SDTV;->mandalList:Ljava/util/List;

    return-object v0
.end method

.method public getStateList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/States;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/SDTV;->stateList:Ljava/util/List;

    return-object v0
.end method

.method public getVillageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/Villages;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/SDTV;->villageList:Ljava/util/List;

    return-object v0
.end method

.method public setDistrictList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/Districts;",
            ">;)V"
        }
    .end annotation

    .line 28
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/SDTV;->districtList:Ljava/util/List;

    return-void
.end method

.method public setMandalList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/Mandals;",
            ">;)V"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/SDTV;->mandalList:Ljava/util/List;

    return-void
.end method

.method public setStateList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/States;",
            ">;)V"
        }
    .end annotation

    .line 20
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/SDTV;->stateList:Ljava/util/List;

    return-void
.end method

.method public setVillageList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/Villages;",
            ">;)V"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/SDTV;->villageList:Ljava/util/List;

    return-void
.end method

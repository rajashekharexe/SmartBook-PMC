.class public Lcom/conceptglobal/pmc/model/DashboardListModel;
.super Ljava/lang/Object;
.source "DashboardListModel.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private Balance_Points:D

.field private FavouriteStatus:I

.field private IsCropHero:Ljava/lang/String;

.field private IsFellowFarmer:Ljava/lang/String;

.field private IsSaarthie:Ljava/lang/String;

.field private LastVisitedDate:Ljava/lang/String;

.field private OutStandingValue:D

.field private SaarthieFarmerID:Ljava/lang/String;

.field private Sanitized:I

.field private SegmentationValue:I

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private draftId:Ljava/lang/String;

.field private field3:Ljava/lang/String;

.field private isRisingStar:Z

.field private langitude:Ljava/lang/String;

.field private latitude:Ljava/lang/String;

.field private updatedDate:Ljava/lang/String;

.field private villageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/DashboardListModel;->draftId:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/conceptglobal/pmc/model/DashboardListModel;->data:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getBalance_Points()D
    .locals 2

    .line 182
    iget-wide v0, p0, Lcom/conceptglobal/pmc/model/DashboardListModel;->Balance_Points:D

    return-wide v0
.end method

.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/DashboardListModel;->data:Ljava/util/List;

    return-object v0
.end method

.method public getDraftId()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/DashboardListModel;->draftId:Ljava/lang/String;

    return-object v0
.end method

.method public getFavouriteStatus()I
    .locals 1

    .line 102
    iget v0, p0, Lcom/conceptglobal/pmc/model/DashboardListModel;->FavouriteStatus:I

    return v0
.end method

.method public getField3()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/DashboardListModel;->field3:Ljava/lang/String;

    return-object v0
.end method

.method public getIsCropHero()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/DashboardListModel;->IsCropHero:Ljava/lang/String;

    return-object v0
.end method

.method public getIsFellowFarmer()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/DashboardListModel;->IsFellowFarmer:Ljava/lang/String;

    return-object v0
.end method

.method public getIsSaarthie()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/DashboardListModel;->IsSaarthie:Ljava/lang/String;

    return-object v0
.end method

.method public getLangitude()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/DashboardListModel;->langitude:Ljava/lang/String;

    return-object v0
.end method

.method public getLastVisitedDate()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/DashboardListModel;->LastVisitedDate:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/DashboardListModel;->latitude:Ljava/lang/String;

    return-object v0
.end method

.method public getOutStandingValue()D
    .locals 2

    .line 174
    iget-wide v0, p0, Lcom/conceptglobal/pmc/model/DashboardListModel;->OutStandingValue:D

    return-wide v0
.end method

.method public getSaarthieFarmerID()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/DashboardListModel;->SaarthieFarmerID:Ljava/lang/String;

    return-object v0
.end method

.method public getSegmentationValue()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/conceptglobal/pmc/model/DashboardListModel;->SegmentationValue:I

    return v0
.end method

.method public getUpdatedDate()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/DashboardListModel;->updatedDate:Ljava/lang/String;

    return-object v0
.end method

.method public getVillageName()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/DashboardListModel;->villageName:Ljava/lang/String;

    return-object v0
.end method

.method public isRisingStar()Z
    .locals 1

    .line 191
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/model/DashboardListModel;->isRisingStar:Z

    return v0
.end method

.method public isSanitized()I
    .locals 1

    .line 110
    iget v0, p0, Lcom/conceptglobal/pmc/model/DashboardListModel;->Sanitized:I

    return v0
.end method

.method public setBalance_Points(D)V
    .locals 0

    .line 186
    iput-wide p1, p0, Lcom/conceptglobal/pmc/model/DashboardListModel;->Balance_Points:D

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 147
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/DashboardListModel;->data:Ljava/util/List;

    return-void
.end method

.method public setDraftId(Ljava/lang/String;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/DashboardListModel;->draftId:Ljava/lang/String;

    return-void
.end method

.method public setFavouriteStatus(I)V
    .locals 0

    .line 106
    iput p1, p0, Lcom/conceptglobal/pmc/model/DashboardListModel;->FavouriteStatus:I

    return-void
.end method

.method public setField3(Ljava/lang/String;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/DashboardListModel;->field3:Ljava/lang/String;

    return-void
.end method

.method public setIsCropHero(Ljava/lang/String;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/DashboardListModel;->IsCropHero:Ljava/lang/String;

    return-void
.end method

.method public setIsFellowFarmer(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/DashboardListModel;->IsFellowFarmer:Ljava/lang/String;

    return-void
.end method

.method public setIsSaarthie(Ljava/lang/String;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/DashboardListModel;->IsSaarthie:Ljava/lang/String;

    return-void
.end method

.method public setLangitude(Ljava/lang/String;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/DashboardListModel;->langitude:Ljava/lang/String;

    return-void
.end method

.method public setLastVisitedDate(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/DashboardListModel;->LastVisitedDate:Ljava/lang/String;

    return-void
.end method

.method public setLatitude(Ljava/lang/String;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/DashboardListModel;->latitude:Ljava/lang/String;

    return-void
.end method

.method public setOutStandingValue(D)V
    .locals 0

    .line 178
    iput-wide p1, p0, Lcom/conceptglobal/pmc/model/DashboardListModel;->OutStandingValue:D

    return-void
.end method

.method public setRisingStar(Z)V
    .locals 0

    .line 195
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/model/DashboardListModel;->isRisingStar:Z

    return-void
.end method

.method public setSaarthieFarmerID(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/DashboardListModel;->SaarthieFarmerID:Ljava/lang/String;

    return-void
.end method

.method public setSanitized(I)V
    .locals 0

    .line 114
    iput p1, p0, Lcom/conceptglobal/pmc/model/DashboardListModel;->Sanitized:I

    return-void
.end method

.method public setSegmentationValue(I)V
    .locals 0

    .line 48
    iput p1, p0, Lcom/conceptglobal/pmc/model/DashboardListModel;->SegmentationValue:I

    return-void
.end method

.method public setUpdatedDate(Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/DashboardListModel;->updatedDate:Ljava/lang/String;

    return-void
.end method

.method public setVillageName(Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/DashboardListModel;->villageName:Ljava/lang/String;

    return-void
.end method

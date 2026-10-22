.class public Lcom/conceptglobal/pmc/promotions/models/ContentMaster;
.super Ljava/lang/Object;
.source "ContentMaster.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private ActiveEndDate:Ljava/util/Date;

.field private ActiveStartDate:Ljava/util/Date;

.field private ContentData:Ljava/lang/String;

.field private ContentDeviceLocation:Ljava/lang/String;

.field private ContentId:I

.field private ContentName:Ljava/lang/String;

.field private ContentServerLocation:Ljava/lang/String;

.field private ContentType:I

.field private CreatedBy:I

.field private CreatedDate:Ljava/lang/String;

.field private Description:Ljava/lang/String;

.field private IsActive:Ljava/lang/String;

.field private IsBanner:Ljava/lang/String;

.field private IsDeleted:I

.field private IsDownloadable:Ljava/lang/String;

.field private IsSharable:Ljava/lang/String;

.field private LanguageId:I

.field private MasterSyncLineId:I

.field private SearchKeys:Ljava/lang/String;

.field private TestStatus:I

.field private ThumbNail:Ljava/lang/String;

.field private UpdatedBy:I

.field private UpdatedDate:Ljava/lang/String;

.field private WatchStatus:I

.field private categoryDetails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private favouriteStatus:I

.field private localThumbnail:Ljava/lang/String;

.field private parentCatId:I

.field private serachKeywords:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->categoryDetails:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getActiveEndDate()Ljava/util/Date;
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->ActiveEndDate:Ljava/util/Date;

    return-object v0
.end method

.method public getActiveStartDate()Ljava/util/Date;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->ActiveStartDate:Ljava/util/Date;

    return-object v0
.end method

.method public getCategoryDetails()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->categoryDetails:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getContentData()Ljava/lang/String;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->ContentData:Ljava/lang/String;

    return-object v0
.end method

.method public getContentDeviceLocation()Ljava/lang/String;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->ContentDeviceLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getContentId()I
    .locals 1

    .line 161
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->ContentId:I

    return v0
.end method

.method public getContentName()Ljava/lang/String;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->ContentName:Ljava/lang/String;

    return-object v0
.end method

.method public getContentServerLocation()Ljava/lang/String;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->ContentServerLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()I
    .locals 1

    .line 194
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->ContentType:I

    return v0
.end method

.method public getCreatedBy()I
    .locals 1

    .line 118
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->CreatedBy:I

    return v0
.end method

.method public getCreatedDate()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->CreatedDate:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->Description:Ljava/lang/String;

    return-object v0
.end method

.method public getFavouriteStatus()I
    .locals 1

    .line 94
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->favouriteStatus:I

    return v0
.end method

.method public getIsActive()Ljava/lang/String;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->IsActive:Ljava/lang/String;

    return-object v0
.end method

.method public getIsBanner()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->IsBanner:Ljava/lang/String;

    return-object v0
.end method

.method public getIsDeleted()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->IsDeleted:I

    return v0
.end method

.method public getIsDownloadable()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->IsDownloadable:Ljava/lang/String;

    return-object v0
.end method

.method public getIsSharable()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->IsSharable:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguageId()I
    .locals 1

    .line 185
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->LanguageId:I

    return v0
.end method

.method public getLocalThumbnail()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->localThumbnail:Ljava/lang/String;

    return-object v0
.end method

.method public getMasterSyncLineId()I
    .locals 1

    .line 275
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->MasterSyncLineId:I

    return v0
.end method

.method public getParentCatId()I
    .locals 1

    .line 266
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->parentCatId:I

    return v0
.end method

.method public getSearchKeys()Ljava/lang/String;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->SearchKeys:Ljava/lang/String;

    return-object v0
.end method

.method public getSerachKeywords()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->serachKeywords:Ljava/lang/String;

    return-object v0
.end method

.method public getTestStatus()I
    .locals 1

    .line 102
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->TestStatus:I

    return v0
.end method

.method public getThumbNail()Ljava/lang/String;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->ThumbNail:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedBy()I
    .locals 1

    .line 126
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->UpdatedBy:I

    return v0
.end method

.method public getUpdatedDate()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->UpdatedDate:Ljava/lang/String;

    return-object v0
.end method

.method public getWatchStatus()I
    .locals 1

    .line 110
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->WatchStatus:I

    return v0
.end method

.method public setActiveEndDate(Ljava/util/Date;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->ActiveEndDate:Ljava/util/Date;

    return-void
.end method

.method public setActiveStartDate(Ljava/util/Date;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->ActiveStartDate:Ljava/util/Date;

    return-void
.end method

.method public setCategoryDetails(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 157
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->categoryDetails:Ljava/util/ArrayList;

    return-void
.end method

.method public setContentData(Ljava/lang/String;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->ContentData:Ljava/lang/String;

    return-void
.end method

.method public setContentDeviceLocation(Ljava/lang/String;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->ContentDeviceLocation:Ljava/lang/String;

    return-void
.end method

.method public setContentId(I)V
    .locals 0

    .line 165
    iput p1, p0, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->ContentId:I

    return-void
.end method

.method public setContentName(Ljava/lang/String;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->ContentName:Ljava/lang/String;

    return-void
.end method

.method public setContentServerLocation(Ljava/lang/String;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->ContentServerLocation:Ljava/lang/String;

    return-void
.end method

.method public setContentType(I)V
    .locals 0

    .line 198
    iput p1, p0, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->ContentType:I

    return-void
.end method

.method public setCreatedBy(I)V
    .locals 0

    .line 122
    iput p1, p0, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->CreatedBy:I

    return-void
.end method

.method public setCreatedDate(Ljava/lang/String;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->CreatedDate:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->Description:Ljava/lang/String;

    return-void
.end method

.method public setFavouriteStatus(I)V
    .locals 0

    .line 98
    iput p1, p0, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->favouriteStatus:I

    return-void
.end method

.method public setIsActive(Ljava/lang/String;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->IsActive:Ljava/lang/String;

    return-void
.end method

.method public setIsBanner(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->IsBanner:Ljava/lang/String;

    return-void
.end method

.method public setIsDeleted(I)V
    .locals 0

    .line 66
    iput p1, p0, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->IsDeleted:I

    return-void
.end method

.method public setIsDownloadable(Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->IsDownloadable:Ljava/lang/String;

    return-void
.end method

.method public setIsSharable(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->IsSharable:Ljava/lang/String;

    return-void
.end method

.method public setLanguageId(I)V
    .locals 0

    .line 189
    iput p1, p0, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->LanguageId:I

    return-void
.end method

.method public setLocalThumbnail(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->localThumbnail:Ljava/lang/String;

    return-void
.end method

.method public setMasterSyncLineId(I)V
    .locals 0

    .line 279
    iput p1, p0, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->MasterSyncLineId:I

    return-void
.end method

.method public setParentCatId(I)V
    .locals 0

    .line 270
    iput p1, p0, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->parentCatId:I

    return-void
.end method

.method public setSearchKeys(Ljava/lang/String;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->SearchKeys:Ljava/lang/String;

    return-void
.end method

.method public setSerachKeywords(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->serachKeywords:Ljava/lang/String;

    return-void
.end method

.method public setTestStatus(I)V
    .locals 0

    .line 106
    iput p1, p0, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->TestStatus:I

    return-void
.end method

.method public setThumbNail(Ljava/lang/String;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->ThumbNail:Ljava/lang/String;

    return-void
.end method

.method public setUpdatedBy(I)V
    .locals 0

    .line 130
    iput p1, p0, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->UpdatedBy:I

    return-void
.end method

.method public setUpdatedDate(Ljava/lang/String;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->UpdatedDate:Ljava/lang/String;

    return-void
.end method

.method public setWatchStatus(I)V
    .locals 0

    .line 114
    iput p1, p0, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->WatchStatus:I

    return-void
.end method

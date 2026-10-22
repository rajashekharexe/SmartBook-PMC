.class public Lcom/conceptglobal/pmc/packageofpractice/models/CropCategoryModal;
.super Ljava/lang/Object;
.source "CropCategoryModal.java"


# instance fields
.field private cropCategory:Ljava/lang/String;

.field private deviceVersionNo:I

.field private individualCropItemModalArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;",
            ">;"
        }
    .end annotation
.end field

.field private isExpanded:Z

.field private localThumnailpath:Ljava/lang/String;

.field private popID:I

.field private thumbnailURL:Ljava/lang/String;

.field private versionNo:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/ArrayList<",
            "Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/conceptglobal/pmc/packageofpractice/models/CropCategoryModal;->popID:I

    .line 20
    iput-object p2, p0, Lcom/conceptglobal/pmc/packageofpractice/models/CropCategoryModal;->cropCategory:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/conceptglobal/pmc/packageofpractice/models/CropCategoryModal;->thumbnailURL:Ljava/lang/String;

    .line 22
    iput-object p4, p0, Lcom/conceptglobal/pmc/packageofpractice/models/CropCategoryModal;->localThumnailpath:Ljava/lang/String;

    .line 23
    iput p5, p0, Lcom/conceptglobal/pmc/packageofpractice/models/CropCategoryModal;->versionNo:I

    .line 24
    iput p6, p0, Lcom/conceptglobal/pmc/packageofpractice/models/CropCategoryModal;->deviceVersionNo:I

    .line 25
    iput-object p7, p0, Lcom/conceptglobal/pmc/packageofpractice/models/CropCategoryModal;->individualCropItemModalArrayList:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/packageofpractice/models/CropCategoryModal;->isExpanded:Z

    return-void
.end method


# virtual methods
.method public getCropCategory()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/models/CropCategoryModal;->cropCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceVersionNo()I
    .locals 1

    .line 89
    iget v0, p0, Lcom/conceptglobal/pmc/packageofpractice/models/CropCategoryModal;->deviceVersionNo:I

    return v0
.end method

.method public getIndividualCropItemModalArrayList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/models/CropCategoryModal;->individualCropItemModalArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLocalThumnailpath()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/models/CropCategoryModal;->localThumnailpath:Ljava/lang/String;

    return-object v0
.end method

.method public getPopID()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/conceptglobal/pmc/packageofpractice/models/CropCategoryModal;->popID:I

    return v0
.end method

.method public getThumbnailURL()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/models/CropCategoryModal;->thumbnailURL:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionNo()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/conceptglobal/pmc/packageofpractice/models/CropCategoryModal;->versionNo:I

    return v0
.end method

.method public isExpanded()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/packageofpractice/models/CropCategoryModal;->isExpanded:Z

    return v0
.end method

.method public setCropCategory(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/conceptglobal/pmc/packageofpractice/models/CropCategoryModal;->cropCategory:Ljava/lang/String;

    return-void
.end method

.method public setDeviceVersionNo(I)V
    .locals 0

    .line 93
    iput p1, p0, Lcom/conceptglobal/pmc/packageofpractice/models/CropCategoryModal;->deviceVersionNo:I

    return-void
.end method

.method public setExpanded(Z)V
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/packageofpractice/models/CropCategoryModal;->isExpanded:Z

    return-void
.end method

.method public setIndividualCropItemModalArrayList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;",
            ">;)V"
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lcom/conceptglobal/pmc/packageofpractice/models/CropCategoryModal;->individualCropItemModalArrayList:Ljava/util/ArrayList;

    return-void
.end method

.method public setLocalThumnailpath(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/conceptglobal/pmc/packageofpractice/models/CropCategoryModal;->localThumnailpath:Ljava/lang/String;

    return-void
.end method

.method public setPopID(I)V
    .locals 0

    .line 69
    iput p1, p0, Lcom/conceptglobal/pmc/packageofpractice/models/CropCategoryModal;->popID:I

    return-void
.end method

.method public setThumbnailURL(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/conceptglobal/pmc/packageofpractice/models/CropCategoryModal;->thumbnailURL:Ljava/lang/String;

    return-void
.end method

.method public setVersionNo(I)V
    .locals 0

    .line 85
    iput p1, p0, Lcom/conceptglobal/pmc/packageofpractice/models/CropCategoryModal;->versionNo:I

    return-void
.end method

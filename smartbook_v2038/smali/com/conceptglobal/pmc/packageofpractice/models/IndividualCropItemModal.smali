.class public Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;
.super Ljava/lang/Object;
.source "IndividualCropItemModal.java"


# instance fields
.field private cropName:Ljava/lang/String;

.field private deviceVersionNo:I

.field private htmlStartPage:Ljava/lang/String;

.field private htmlZipURL:Ljava/lang/String;

.field private localHTMLZIPURL:Ljava/lang/String;

.field private localThumnailpath:Ljava/lang/String;

.field private popID:I

.field private thumbnailURL:Ljava/lang/String;

.field private versionNo:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;->popID:I

    .line 23
    iput-object p2, p0, Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;->cropName:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;->thumbnailURL:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;->htmlZipURL:Ljava/lang/String;

    .line 26
    iput-object p5, p0, Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;->localThumnailpath:Ljava/lang/String;

    .line 27
    iput-object p6, p0, Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;->localHTMLZIPURL:Ljava/lang/String;

    .line 28
    iput-object p7, p0, Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;->htmlStartPage:Ljava/lang/String;

    .line 29
    iput p8, p0, Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;->versionNo:I

    .line 30
    iput p9, p0, Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;->deviceVersionNo:I

    return-void
.end method


# virtual methods
.method public getCropName()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;->cropName:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceVersionNo()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;->deviceVersionNo:I

    return v0
.end method

.method public getHtmlStartPage()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;->htmlStartPage:Ljava/lang/String;

    return-object v0
.end method

.method public getHtmlZipURL()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;->htmlZipURL:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalHTMLZIPURL()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;->localHTMLZIPURL:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalThumnailpath()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;->localThumnailpath:Ljava/lang/String;

    return-object v0
.end method

.method public getPopID()I
    .locals 1

    .line 99
    iget v0, p0, Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;->popID:I

    return v0
.end method

.method public getThumbnailURL()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;->thumbnailURL:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionNo()I
    .locals 1

    .line 83
    iget v0, p0, Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;->versionNo:I

    return v0
.end method

.method public setCropName(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;->cropName:Ljava/lang/String;

    return-void
.end method

.method public setDeviceVersionNo(I)V
    .locals 0

    .line 95
    iput p1, p0, Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;->deviceVersionNo:I

    return-void
.end method

.method public setHtmlStartPage(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;->htmlStartPage:Ljava/lang/String;

    return-void
.end method

.method public setHtmlZipURL(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;->htmlZipURL:Ljava/lang/String;

    return-void
.end method

.method public setLocalHTMLZIPURL(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;->localHTMLZIPURL:Ljava/lang/String;

    return-void
.end method

.method public setLocalThumnailpath(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;->localThumnailpath:Ljava/lang/String;

    return-void
.end method

.method public setPopID(I)V
    .locals 0

    .line 103
    iput p1, p0, Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;->popID:I

    return-void
.end method

.method public setThumbnailURL(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;->thumbnailURL:Ljava/lang/String;

    return-void
.end method

.method public setVersionNo(I)V
    .locals 0

    .line 87
    iput p1, p0, Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;->versionNo:I

    return-void
.end method

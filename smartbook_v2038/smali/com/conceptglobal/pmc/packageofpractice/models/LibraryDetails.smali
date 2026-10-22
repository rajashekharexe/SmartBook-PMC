.class public Lcom/conceptglobal/pmc/packageofpractice/models/LibraryDetails;
.super Ljava/lang/Object;
.source "LibraryDetails.java"


# instance fields
.field private DeviceVersionNo:I

.field private HTMLZIPURL:Ljava/lang/String;

.field private LocalHTMLZIPURL:Ljava/lang/String;

.field private POPID:I

.field private VersionNo:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/conceptglobal/pmc/packageofpractice/models/LibraryDetails;->POPID:I

    .line 16
    iput-object p2, p0, Lcom/conceptglobal/pmc/packageofpractice/models/LibraryDetails;->HTMLZIPURL:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/conceptglobal/pmc/packageofpractice/models/LibraryDetails;->LocalHTMLZIPURL:Ljava/lang/String;

    .line 18
    iput p4, p0, Lcom/conceptglobal/pmc/packageofpractice/models/LibraryDetails;->VersionNo:I

    .line 19
    iput p5, p0, Lcom/conceptglobal/pmc/packageofpractice/models/LibraryDetails;->DeviceVersionNo:I

    return-void
.end method


# virtual methods
.method public getDeviceVersionNo()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/conceptglobal/pmc/packageofpractice/models/LibraryDetails;->DeviceVersionNo:I

    return v0
.end method

.method public getHTMLZIPURL()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/models/LibraryDetails;->HTMLZIPURL:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalHTMLZIPURL()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/models/LibraryDetails;->LocalHTMLZIPURL:Ljava/lang/String;

    return-object v0
.end method

.method public getPOPID()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/conceptglobal/pmc/packageofpractice/models/LibraryDetails;->POPID:I

    return v0
.end method

.method public getVersionNo()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/conceptglobal/pmc/packageofpractice/models/LibraryDetails;->VersionNo:I

    return v0
.end method

.method public setDeviceVersionNo(I)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/conceptglobal/pmc/packageofpractice/models/LibraryDetails;->DeviceVersionNo:I

    return-void
.end method

.method public setHTMLZIPURL(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/conceptglobal/pmc/packageofpractice/models/LibraryDetails;->HTMLZIPURL:Ljava/lang/String;

    return-void
.end method

.method public setLocalHTMLZIPURL(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/conceptglobal/pmc/packageofpractice/models/LibraryDetails;->LocalHTMLZIPURL:Ljava/lang/String;

    return-void
.end method

.method public setPOPID(I)V
    .locals 0

    .line 51
    iput p1, p0, Lcom/conceptglobal/pmc/packageofpractice/models/LibraryDetails;->POPID:I

    return-void
.end method

.method public setVersionNo(I)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/conceptglobal/pmc/packageofpractice/models/LibraryDetails;->VersionNo:I

    return-void
.end method

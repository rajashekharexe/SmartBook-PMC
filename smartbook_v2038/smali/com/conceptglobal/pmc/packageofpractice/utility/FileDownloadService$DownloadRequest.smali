.class public Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$DownloadRequest;
.super Ljava/lang/Object;
.source "FileDownloadService.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadRequest"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$DownloadRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private deleteZipAfterExtract:Z

.field private localFilePath:Ljava/lang/String;

.field private requiresUnzip:Z

.field private serverFilePath:Ljava/lang/String;

.field private tag:Ljava/lang/String;

.field private unzipAtFilePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 400
    new-instance v0, Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$DownloadRequest$1;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$DownloadRequest$1;-><init>()V

    sput-object v0, Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$DownloadRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 363
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$DownloadRequest;->deleteZipAfterExtract:Z

    .line 376
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$DownloadRequest;->requiresUnzip:Z

    .line 377
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$DownloadRequest;->serverFilePath:Ljava/lang/String;

    .line 378
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$DownloadRequest;->localFilePath:Ljava/lang/String;

    .line 379
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$DownloadRequest;->unzipAtFilePath:Ljava/lang/String;

    .line 380
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$DownloadRequest;->deleteZipAfterExtract:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 363
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$DownloadRequest;->deleteZipAfterExtract:Z

    .line 367
    iput-object p1, p0, Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$DownloadRequest;->serverFilePath:Ljava/lang/String;

    .line 369
    iput-object p2, p0, Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$DownloadRequest;->localFilePath:Ljava/lang/String;

    .line 371
    iget-boolean p1, p0, Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$DownloadRequest;->requiresUnzip:Z

    iput-boolean p1, p0, Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$DownloadRequest;->requiresUnzip:Z

    return-void
.end method

.method public static getCreator()Landroid/os/Parcelable$Creator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/Parcelable$Creator<",
            "Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$DownloadRequest;",
            ">;"
        }
    .end annotation

    .line 447
    sget-object v0, Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$DownloadRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLocalFilePath()Ljava/lang/String;
    .locals 1

    .line 437
    iget-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$DownloadRequest;->localFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getServerFilePath()Ljava/lang/String;
    .locals 1

    .line 427
    iget-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$DownloadRequest;->serverFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$DownloadRequest;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getUnzipAtFilePath()Ljava/lang/String;
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$DownloadRequest;->unzipAtFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public isDeleteZipAfterExtract()Z
    .locals 1

    .line 467
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$DownloadRequest;->deleteZipAfterExtract:Z

    return v0
.end method

.method public isRequiresUnzip()Z
    .locals 1

    .line 417
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$DownloadRequest;->requiresUnzip:Z

    return v0
.end method

.method public setDeleteZipAfterExtract(Z)V
    .locals 0

    .line 471
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$DownloadRequest;->deleteZipAfterExtract:Z

    return-void
.end method

.method public setLocalFilePath(Ljava/lang/String;)V
    .locals 0

    .line 442
    iput-object p1, p0, Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$DownloadRequest;->localFilePath:Ljava/lang/String;

    return-void
.end method

.method public setRequiresUnzip(Z)V
    .locals 0

    .line 422
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$DownloadRequest;->requiresUnzip:Z

    return-void
.end method

.method public setServerFilePath(Ljava/lang/String;)V
    .locals 0

    .line 432
    iput-object p1, p0, Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$DownloadRequest;->serverFilePath:Ljava/lang/String;

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    .line 463
    iput-object p1, p0, Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$DownloadRequest;->tag:Ljava/lang/String;

    return-void
.end method

.method public setUnzipAtFilePath(Ljava/lang/String;)V
    .locals 0

    .line 455
    iput-object p1, p0, Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$DownloadRequest;->unzipAtFilePath:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 392
    iget-boolean p2, p0, Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$DownloadRequest;->requiresUnzip:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 393
    iget-object p2, p0, Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$DownloadRequest;->serverFilePath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 394
    iget-object p2, p0, Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$DownloadRequest;->localFilePath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 395
    iget-object p2, p0, Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$DownloadRequest;->unzipAtFilePath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 396
    iget-boolean p2, p0, Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$DownloadRequest;->deleteZipAfterExtract:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method

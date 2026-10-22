.class public Lcom/conceptglobal/pmc/utils/CompressHelper;
.super Ljava/lang/Object;
.source "CompressHelper.java"


# instance fields
.field public dir:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 4

    .line 14
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 15
    iget p1, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-gt v0, p3, :cond_1

    if-le p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    int-to-float v1, v0

    int-to-float v2, p3

    div-float/2addr v1, v2

    .line 19
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v2, p1

    int-to-float v3, p2

    div-float/2addr v2, v3

    .line 20
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    if-ge v1, v2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    mul-int p1, p1, v0

    int-to-float p1, p1

    mul-int p2, p2, p3

    mul-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    :goto_2
    mul-int p3, v1, v1

    int-to-float p3, p3

    div-float p3, p1, p3

    cmpl-float p3, p3, p2

    if-lez p3, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return v1
.end method

.method public createBaseFormLocation(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 34
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    new-instance p2, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getPmcRootFolder()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/conceptglobal/pmc/utils/CompressHelper;->dir:Ljava/io/File;

    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/utils/CompressHelper;->dir:Ljava/io/File;

    .line 38
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/utils/CompressHelper;->dir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    .line 39
    iget-object p1, p0, Lcom/conceptglobal/pmc/utils/CompressHelper;->dir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 40
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/utils/CompressHelper;->dir:Ljava/io/File;

    return-object p1
.end method

.method public getCompressLoaction(Landroid/content/Context;)Ljava/io/File;
    .locals 1

    .line 50
    new-instance p1, Ljava/io/File;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getPicStoragePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/conceptglobal/pmc/utils/CompressHelper;->dir:Ljava/io/File;

    .line 53
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 54
    iget-object p1, p0, Lcom/conceptglobal/pmc/utils/CompressHelper;->dir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 55
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/utils/CompressHelper;->dir:Ljava/io/File;

    return-object p1
.end method

.method public getInwardImageLoaction(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 59
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    new-instance p1, Ljava/io/File;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getTempPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/conceptglobal/pmc/utils/CompressHelper;->dir:Ljava/io/File;

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/utils/CompressHelper;->dir:Ljava/io/File;

    .line 63
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/utils/CompressHelper;->dir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    .line 64
    iget-object p1, p0, Lcom/conceptglobal/pmc/utils/CompressHelper;->dir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 65
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/utils/CompressHelper;->dir:Ljava/io/File;

    return-object p1
.end method

.method public getOriginalImageDir(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 68
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    new-instance p1, Ljava/io/File;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getTempPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/conceptglobal/pmc/utils/CompressHelper;->dir:Ljava/io/File;

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/utils/CompressHelper;->dir:Ljava/io/File;

    .line 72
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/utils/CompressHelper;->dir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    .line 73
    iget-object p1, p0, Lcom/conceptglobal/pmc/utils/CompressHelper;->dir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 74
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/utils/CompressHelper;->dir:Ljava/io/File;

    return-object p1
.end method

.method public getVideoLocation(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 85
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    new-instance p1, Ljava/io/File;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getVideoStoragePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/conceptglobal/pmc/utils/CompressHelper;->dir:Ljava/io/File;

    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/utils/CompressHelper;->dir:Ljava/io/File;

    .line 89
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/utils/CompressHelper;->dir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    .line 90
    iget-object p1, p0, Lcom/conceptglobal/pmc/utils/CompressHelper;->dir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 91
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/utils/CompressHelper;->dir:Ljava/io/File;

    return-object p1
.end method

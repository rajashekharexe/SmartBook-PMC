.class public Lcom/conceptglobal/pmc/utils/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDataDir(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 17
    sget v0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->DatabaseLocation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 19
    :cond_0
    sget v0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->DatabaseLocation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 20
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 21
    :cond_1
    sget v0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->DatabaseLocation:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getExternalMediaDirs()[Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    .line 28
    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_3

    .line 30
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_3
    return-object v0
.end method

.method public static getDataDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .line 37
    sget v0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->DatabaseLocation:I

    const/4 v1, 0x1

    const-string v2, "/"

    if-ne v0, v1, :cond_0

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 39
    :cond_0
    sget v0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->DatabaseLocation:I

    const/4 v1, 0x2

    const-string v3, ""

    if-ne v0, v1, :cond_1

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 41
    :cond_1
    sget p1, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->DatabaseLocation:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getExternalMediaDirs()[Ljava/io/File;

    move-result-object p0

    const/4 p1, 0x0

    aget-object p0, p0, p1

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    move-object p0, v3

    .line 48
    :goto_0
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_3

    .line 52
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    :cond_3
    return-object p1
.end method

.method public static getPDFlocationsDir(Landroid/content/Context;)Ljava/io/File;
    .locals 1

    .line 97
    invoke-virtual {p0}, Landroid/content/Context;->getExternalMediaDirs()[Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 99
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    .line 101
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-object v0
.end method

.method public static getPicDataDir(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 62
    sget v0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->MediaLocation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 64
    :cond_0
    sget v0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->MediaLocation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 65
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 66
    :cond_1
    sget v0, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->MediaLocation:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getExternalMediaDirs()[Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    .line 72
    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_3

    .line 76
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_3
    return-object v0
.end method

.class public Lcom/conceptglobal/pmc/utils/FileZipping;
.super Ljava/lang/Object;
.source "FileZipping.java"


# instance fields
.field private BUFFER:I

.field private activity:Landroid/app/Activity;

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x800

    .line 44
    iput v0, p0, Lcom/conceptglobal/pmc/utils/FileZipping;->BUFFER:I

    .line 55
    iput-object p1, p0, Lcom/conceptglobal/pmc/utils/FileZipping;->context:Landroid/content/Context;

    return-void
.end method

.method public static getIMEIFromFile()Ljava/lang/String;
    .locals 4

    .line 138
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->imeiFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 147
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 150
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 153
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 156
    :goto_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public zip([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 71
    const-string v0, "Zipping Done"

    const-string v1, "Done"

    .line 72
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 73
    new-instance v3, Ljava/util/zip/ZipOutputStream;

    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v4}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 74
    iget v2, p0, Lcom/conceptglobal/pmc/utils/FileZipping;->BUFFER:I

    new-array v2, v2, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 76
    :goto_0
    array-length v6, p1

    if-ge v5, v6, :cond_2

    .line 78
    aget-object v6, p1, v5

    if-nez v6, :cond_0

    goto :goto_2

    .line 81
    :cond_0
    new-instance v6, Ljava/io/FileInputStream;

    aget-object v7, p1, v5

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 82
    new-instance v7, Ljava/io/BufferedInputStream;

    iget v8, p0, Lcom/conceptglobal/pmc/utils/FileZipping;->BUFFER:I

    invoke-direct {v7, v6, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 83
    new-instance v6, Ljava/util/zip/ZipEntry;

    aget-object v8, p1, v5

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v3, v6}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 87
    :goto_1
    iget v6, p0, Lcom/conceptglobal/pmc/utils/FileZipping;->BUFFER:I

    invoke-virtual {v7, v2, v4, v6}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v6

    const/4 v8, -0x1

    if-eq v6, v8, :cond_1

    .line 88
    invoke-virtual {v3, v2, v4, v6}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_1

    .line 90
    :cond_1
    invoke-virtual {v7}, Ljava/io/BufferedInputStream;->close()V

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 93
    :cond_2
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 96
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    :goto_3
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    throw p1
.end method

.method public zip_File(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 106
    const-string v0, "Zipping Done"

    const-string v1, "Done"

    .line 107
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 108
    new-instance v3, Ljava/util/zip/ZipOutputStream;

    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v4}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 109
    iget v2, p0, Lcom/conceptglobal/pmc/utils/FileZipping;->BUFFER:I

    new-array v2, v2, [B

    if-nez p1, :cond_0

    goto :goto_1

    .line 115
    :cond_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 116
    new-instance v5, Ljava/io/BufferedInputStream;

    iget v6, p0, Lcom/conceptglobal/pmc/utils/FileZipping;->BUFFER:I

    invoke-direct {v5, v4, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 117
    new-instance v4, Ljava/util/zip/ZipEntry;

    const-string v6, "/"

    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v3, v4}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 121
    :goto_0
    iget p1, p0, Lcom/conceptglobal/pmc/utils/FileZipping;->BUFFER:I

    const/4 v4, 0x0

    invoke-virtual {v5, v2, v4, p1}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result p1

    const/4 v6, -0x1

    if-eq p1, v6, :cond_1

    .line 122
    invoke-virtual {v3, v2, v4, p1}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_0

    .line 124
    :cond_1
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    .line 126
    :goto_1
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 129
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    :goto_2
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    throw p1
.end method

.class Lcom/facebook/network/connectionclass/LineBufferReader;
.super Ljava/lang/Object;
.source "LineBufferReader.java"


# instance fields
.field private mBytesInBuffer:I

.field private mFileBufIndex:I

.field private mFileBuffer:[B

.field private mInputStream:Ljava/io/FileInputStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x200

    .line 28
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/facebook/network/connectionclass/LineBufferReader;->mFileBuffer:[B

    return-void
.end method


# virtual methods
.method public readLine([B)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    iget v0, p0, Lcom/facebook/network/connectionclass/LineBufferReader;->mFileBufIndex:I

    iget v1, p0, Lcom/facebook/network/connectionclass/LineBufferReader;->mBytesInBuffer:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 48
    iget-object v0, p0, Lcom/facebook/network/connectionclass/LineBufferReader;->mInputStream:Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/facebook/network/connectionclass/LineBufferReader;->mFileBuffer:[B

    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    iput v0, p0, Lcom/facebook/network/connectionclass/LineBufferReader;->mBytesInBuffer:I

    .line 49
    iput v2, p0, Lcom/facebook/network/connectionclass/LineBufferReader;->mFileBufIndex:I

    :cond_0
    const/4 v0, 0x0

    .line 53
    :goto_0
    iget v1, p0, Lcom/facebook/network/connectionclass/LineBufferReader;->mBytesInBuffer:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    array-length v4, p1

    if-ge v0, v4, :cond_2

    iget-object v4, p0, Lcom/facebook/network/connectionclass/LineBufferReader;->mFileBuffer:[B

    iget v5, p0, Lcom/facebook/network/connectionclass/LineBufferReader;->mFileBufIndex:I

    aget-byte v6, v4, v5

    const/16 v7, 0xa

    if-eq v6, v7, :cond_2

    .line 54
    aput-byte v6, p1, v0

    add-int/lit8 v5, v5, 0x1

    .line 55
    iput v5, p0, Lcom/facebook/network/connectionclass/LineBufferReader;->mFileBufIndex:I

    if-lt v5, v1, :cond_1

    .line 57
    iget-object v1, p0, Lcom/facebook/network/connectionclass/LineBufferReader;->mInputStream:Ljava/io/FileInputStream;

    invoke-virtual {v1, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    iput v1, p0, Lcom/facebook/network/connectionclass/LineBufferReader;->mBytesInBuffer:I

    .line 58
    iput v2, p0, Lcom/facebook/network/connectionclass/LineBufferReader;->mFileBufIndex:I

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    :cond_2
    iget p1, p0, Lcom/facebook/network/connectionclass/LineBufferReader;->mFileBufIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/facebook/network/connectionclass/LineBufferReader;->mFileBufIndex:I

    if-ne v1, v3, :cond_3

    return v3

    :cond_3
    return v0
.end method

.method public setFileStream(Ljava/io/FileInputStream;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/facebook/network/connectionclass/LineBufferReader;->mInputStream:Ljava/io/FileInputStream;

    const/4 p1, 0x0

    .line 37
    iput p1, p0, Lcom/facebook/network/connectionclass/LineBufferReader;->mBytesInBuffer:I

    .line 38
    iput p1, p0, Lcom/facebook/network/connectionclass/LineBufferReader;->mFileBufIndex:I

    return-void
.end method

.method public skipLine()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    iget v0, p0, Lcom/facebook/network/connectionclass/LineBufferReader;->mFileBufIndex:I

    iget v1, p0, Lcom/facebook/network/connectionclass/LineBufferReader;->mBytesInBuffer:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/facebook/network/connectionclass/LineBufferReader;->mInputStream:Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/facebook/network/connectionclass/LineBufferReader;->mFileBuffer:[B

    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    iput v0, p0, Lcom/facebook/network/connectionclass/LineBufferReader;->mBytesInBuffer:I

    .line 78
    iput v2, p0, Lcom/facebook/network/connectionclass/LineBufferReader;->mFileBufIndex:I

    .line 80
    :cond_0
    :goto_0
    iget v0, p0, Lcom/facebook/network/connectionclass/LineBufferReader;->mBytesInBuffer:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/facebook/network/connectionclass/LineBufferReader;->mFileBuffer:[B

    iget v3, p0, Lcom/facebook/network/connectionclass/LineBufferReader;->mFileBufIndex:I

    aget-byte v4, v1, v3

    const/16 v5, 0xa

    if-eq v4, v5, :cond_1

    add-int/lit8 v3, v3, 0x1

    .line 81
    iput v3, p0, Lcom/facebook/network/connectionclass/LineBufferReader;->mFileBufIndex:I

    if-lt v3, v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/facebook/network/connectionclass/LineBufferReader;->mInputStream:Ljava/io/FileInputStream;

    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    iput v0, p0, Lcom/facebook/network/connectionclass/LineBufferReader;->mBytesInBuffer:I

    .line 84
    iput v2, p0, Lcom/facebook/network/connectionclass/LineBufferReader;->mFileBufIndex:I

    goto :goto_0

    .line 88
    :cond_1
    iget v0, p0, Lcom/facebook/network/connectionclass/LineBufferReader;->mFileBufIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/network/connectionclass/LineBufferReader;->mFileBufIndex:I

    return-void
.end method

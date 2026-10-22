.class Lcom/conceptglobal/pmc/promotions/video/MP4Builder$InterleaveChunkMdat;
.super Ljava/lang/Object;
.source "MP4Builder.java"

# interfaces
.implements Lcom/coremedia/iso/boxes/Box;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/promotions/video/MP4Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InterleaveChunkMdat"
.end annotation


# instance fields
.field private contentSize:J

.field private dataOffset:J

.field private parent:Lcom/coremedia/iso/boxes/Container;

.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/video/MP4Builder;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/promotions/video/MP4Builder;)V
    .locals 2

    .line 167
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/video/MP4Builder$InterleaveChunkMdat;->this$0:Lcom/conceptglobal/pmc/promotions/video/MP4Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x40000000

    .line 169
    iput-wide v0, p0, Lcom/conceptglobal/pmc/promotions/video/MP4Builder$InterleaveChunkMdat;->contentSize:J

    const-wide/16 v0, 0x0

    .line 170
    iput-wide v0, p0, Lcom/conceptglobal/pmc/promotions/video/MP4Builder$InterleaveChunkMdat;->dataOffset:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/conceptglobal/pmc/promotions/video/MP4Builder;Lcom/conceptglobal/pmc/promotions/video/MP4Builder$1;)V
    .locals 0

    .line 167
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/promotions/video/MP4Builder$InterleaveChunkMdat;-><init>(Lcom/conceptglobal/pmc/promotions/video/MP4Builder;)V

    return-void
.end method

.method private isSmallBox(J)Z
    .locals 3

    const-wide/16 v0, 0x8

    add-long/2addr p1, v0

    const-wide v0, 0x100000000L

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public getBox(Ljava/nio/channels/WritableByteChannel;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x10

    .line 214
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 215
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/video/MP4Builder$InterleaveChunkMdat;->getSize()J

    move-result-wide v1

    .line 216
    invoke-direct {p0, v1, v2}, Lcom/conceptglobal/pmc/promotions/video/MP4Builder$InterleaveChunkMdat;->isSmallBox(J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 217
    invoke-static {v0, v1, v2}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x1

    .line 219
    invoke-static {v0, v3, v4}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 221
    :goto_0
    const-string v3, "mdat"

    invoke-static {v3}, Lcom/coremedia/iso/IsoFile;->fourCCtoBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 222
    invoke-direct {p0, v1, v2}, Lcom/conceptglobal/pmc/promotions/video/MP4Builder$InterleaveChunkMdat;->isSmallBox(J)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v1, 0x8

    .line 223
    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 225
    :cond_1
    invoke-static {v0, v1, v2}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt64(Ljava/nio/ByteBuffer;J)V

    .line 227
    :goto_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 228
    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method public getContentSize()J
    .locals 2

    .line 193
    iget-wide v0, p0, Lcom/conceptglobal/pmc/promotions/video/MP4Builder$InterleaveChunkMdat;->contentSize:J

    return-wide v0
.end method

.method public getOffset()J
    .locals 2

    .line 177
    iget-wide v0, p0, Lcom/conceptglobal/pmc/promotions/video/MP4Builder$InterleaveChunkMdat;->dataOffset:J

    return-wide v0
.end method

.method public getParent()Lcom/coremedia/iso/boxes/Container;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/video/MP4Builder$InterleaveChunkMdat;->parent:Lcom/coremedia/iso/boxes/Container;

    return-object v0
.end method

.method public getSize()J
    .locals 4

    const-wide/16 v0, 0x10

    .line 201
    iget-wide v2, p0, Lcom/conceptglobal/pmc/promotions/video/MP4Builder$InterleaveChunkMdat;->contentSize:J

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 197
    const-string v0, "mdat"

    return-object v0
.end method

.method public parse(Lcom/googlecode/mp4parser/DataSource;Ljava/nio/ByteBuffer;JLcom/coremedia/iso/BoxParser;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public setContentSize(J)V
    .locals 0

    .line 189
    iput-wide p1, p0, Lcom/conceptglobal/pmc/promotions/video/MP4Builder$InterleaveChunkMdat;->contentSize:J

    return-void
.end method

.method public setDataOffset(J)V
    .locals 0

    .line 181
    iput-wide p1, p0, Lcom/conceptglobal/pmc/promotions/video/MP4Builder$InterleaveChunkMdat;->dataOffset:J

    return-void
.end method

.method public setParent(Lcom/coremedia/iso/boxes/Container;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/video/MP4Builder$InterleaveChunkMdat;->parent:Lcom/coremedia/iso/boxes/Container;

    return-void
.end method

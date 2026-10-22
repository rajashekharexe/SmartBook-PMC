.class public Lcom/conceptglobal/pmc/promotions/video/MediaController;
.super Ljava/lang/Object;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/promotions/video/MediaController$VideoConvertRunnable;
    }
.end annotation


# static fields
.field private static volatile Instance:Lcom/conceptglobal/pmc/promotions/video/MediaController; = null

.field public static final MIME_TYPE:Ljava/lang/String; = "video/avc"

.field private static final PROCESSOR_TYPE_INTEL:I = 0x2

.field private static final PROCESSOR_TYPE_MTK:I = 0x3

.field private static final PROCESSOR_TYPE_OTHER:I = 0x0

.field private static final PROCESSOR_TYPE_QCOM:I = 0x1

.field private static final PROCESSOR_TYPE_SEC:I = 0x4

.field private static final PROCESSOR_TYPE_TI:I = 0x5


# instance fields
.field private videoConvertFirstWrite:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/promotions/video/MediaController;->videoConvertFirstWrite:Z

    return-void
.end method

.method public static native convertVideoFrame(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIII)I
.end method

.method private didWriteData(ZZ)V
    .locals 0

    .line 84
    iget-boolean p1, p0, Lcom/conceptglobal/pmc/promotions/video/MediaController;->videoConvertFirstWrite:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 86
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/promotions/video/MediaController;->videoConvertFirstWrite:Z

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/conceptglobal/pmc/promotions/video/MediaController;
    .locals 2

    .line 40
    sget-object v0, Lcom/conceptglobal/pmc/promotions/video/MediaController;->Instance:Lcom/conceptglobal/pmc/promotions/video/MediaController;

    if-nez v0, :cond_1

    .line 42
    const-class v1, Lcom/conceptglobal/pmc/promotions/video/MediaController;

    monitor-enter v1

    .line 43
    :try_start_0
    sget-object v0, Lcom/conceptglobal/pmc/promotions/video/MediaController;->Instance:Lcom/conceptglobal/pmc/promotions/video/MediaController;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/conceptglobal/pmc/promotions/video/MediaController;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/promotions/video/MediaController;-><init>()V

    sput-object v0, Lcom/conceptglobal/pmc/promotions/video/MediaController;->Instance:Lcom/conceptglobal/pmc/promotions/video/MediaController;

    .line 47
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private static isRecognizedFormat(I)Z
    .locals 1

    const/16 v0, 0x27

    if-eq p0, v0, :cond_0

    const v0, 0x7f000100

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :cond_0
    :pswitch_0
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private readAndWriteTrack(Landroid/media/MediaExtractor;Lcom/conceptglobal/pmc/promotions/video/MP4Builder;Landroid/media/MediaCodec$BufferInfo;JJLjava/io/File;Z)J
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-wide/from16 v3, p4

    move-object/from16 v5, p0

    move/from16 v6, p9

    .line 153
    invoke-direct {v5, v0, v6}, Lcom/conceptglobal/pmc/promotions/video/MediaController;->selectTrack(Landroid/media/MediaExtractor;Z)I

    move-result v7

    const-wide/16 v8, -0x1

    if-ltz v7, :cond_9

    .line 155
    invoke-virtual {v0, v7}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 156
    invoke-virtual {v0, v7}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v10

    .line 157
    invoke-virtual {v1, v10, v6}, Lcom/conceptglobal/pmc/promotions/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v11

    .line 158
    const-string v12, "max-input-size"

    invoke-virtual {v10, v12}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v10

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    cmp-long v15, v3, v12

    if-lez v15, :cond_0

    .line 161
    invoke-virtual {v0, v3, v4, v14}, Landroid/media/MediaExtractor;->seekTo(JI)V

    goto :goto_0

    .line 163
    :cond_0
    invoke-virtual {v0, v12, v13, v14}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 165
    :goto_0
    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    move-wide/from16 v16, v8

    const/4 v4, 0x0

    :goto_1
    if-nez v4, :cond_8

    .line 171
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v10

    const/16 v18, 0x1

    if-ne v10, v7, :cond_4

    .line 173
    invoke-virtual {v0, v3, v14}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v10

    iput v10, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 175
    iget v10, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-gez v10, :cond_1

    .line 176
    iput v14, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto :goto_2

    .line 179
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v12

    iput-wide v12, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    if-lez v15, :cond_2

    cmp-long v10, v16, v8

    if-nez v10, :cond_2

    .line 181
    iget-wide v12, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-wide/from16 v16, v12

    :cond_2
    const-wide/16 v12, 0x0

    cmp-long v10, p6, v12

    if-ltz v10, :cond_3

    .line 183
    iget-wide v12, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v10, v12, p6

    if-gez v10, :cond_5

    .line 184
    :cond_3
    iput v14, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 185
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v10

    iput v10, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 186
    invoke-virtual {v1, v11, v3, v2, v6}, Lcom/conceptglobal/pmc/promotions/video/MP4Builder;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)Z

    .line 189
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_3

    :cond_4
    const/4 v12, -0x1

    if-ne v10, v12, :cond_6

    :cond_5
    :goto_2
    const/4 v10, 0x1

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v10, 0x0

    :goto_4
    if-eqz v10, :cond_7

    const/4 v4, 0x1

    :cond_7
    const-wide/16 v12, 0x0

    goto :goto_1

    .line 202
    :cond_8
    invoke-virtual {v0, v7}, Landroid/media/MediaExtractor;->unselectTrack(I)V

    return-wide v16

    :cond_9
    return-wide v8
.end method

.method public static selectCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .locals 9

    .line 121
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_5

    .line 124
    invoke-static {v3}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v4

    .line 125
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_2

    .line 128
    :cond_0
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v5

    .line 129
    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_4

    aget-object v8, v5, v7

    .line 130
    invoke-virtual {v8, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 132
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v8, "OMX.SEC.avc.enc"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v4

    .line 134
    :cond_1
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v8, "OMX.SEC.AVC.Encoder"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v4

    :cond_2
    move-object v1, v4

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return-object v1
.end method

.method public static selectColorFormat(Landroid/media/MediaCodecInfo;Ljava/lang/String;)I
    .locals 4

    .line 54
    invoke-virtual {p0, p1}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 56
    :goto_0
    iget-object v2, p1, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 57
    iget-object v2, p1, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    aget v2, v2, v0

    .line 58
    invoke-static {v2}, Lcom/conceptglobal/pmc/promotions/video/MediaController;->isRecognizedFormat(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 60
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "OMX.SEC.AVC.Encoder"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x13

    if-eq v2, v1, :cond_0

    goto :goto_1

    :cond_0
    move v1, v2

    goto :goto_2

    :cond_1
    :goto_1
    return v2

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method private selectTrack(Landroid/media/MediaExtractor;Z)I
    .locals 4

    .line 210
    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 212
    invoke-virtual {p1, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    .line 213
    const-string v3, "mime"

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_0

    .line 215
    const-string v3, "audio/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    .line 219
    :cond_0
    const-string v3, "video/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x5

    return p1
.end method

.method private startVideoConvertFromQueue(Ljava/lang/String;)V
    .locals 0

    .line 148
    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/video/MediaController$VideoConvertRunnable;->runConversion(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public convertVideo(Ljava/lang/String;)Z
    .locals 37

    move-object/from16 v11, p0

    move-object/from16 v0, p1

    .line 678
    const-string v1, "video/avc"

    const-string v12, "time = "

    const-string v13, "tmessages"

    .line 0
    const-string v2, "colorFormat = "

    .line 678
    new-instance v3, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v3}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 679
    invoke-virtual {v3, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 v4, 0x13

    .line 680
    invoke-virtual {v3, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x12

    .line 681
    invoke-virtual {v3, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x18

    .line 682
    invoke-virtual {v3, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    .line 690
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 691
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 692
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 697
    new-instance v14, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 699
    invoke-static {}, Lcom/conceptglobal/pmc/PMCApplication;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/conceptglobal/pmc/utils/FileUtils;->getDataDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".VideoCompressor/Compressed Videos/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "VIDEO_"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v9, "yyyyMMdd_HHmmss"

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v8, v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    .line 703
    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".mp4"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v14, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x5a

    const/4 v15, 0x0

    const/16 v7, 0x280

    const/16 v8, 0x168

    if-ne v3, v6, :cond_0

    :goto_0
    const/4 v3, 0x0

    const/16 v7, 0x168

    const/16 v8, 0x280

    goto :goto_1

    :cond_0
    const/16 v6, 0xb4

    if-ne v3, v6, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    const/16 v6, 0x10e

    if-ne v3, v6, :cond_2

    goto :goto_0

    .line 731
    :cond_2
    :goto_1
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 732
    invoke-virtual {v10}, Ljava/io/File;->canRead()Z

    move-result v0

    const/4 v9, 0x1

    if-nez v0, :cond_3

    .line 733
    invoke-direct {v11, v9, v9}, Lcom/conceptglobal/pmc/promotions/video/MediaController;->didWriteData(ZZ)V

    return v15

    .line 737
    :cond_3
    iput-boolean v9, v11, Lcom/conceptglobal/pmc/promotions/video/MediaController;->videoConvertFirstWrite:Z

    .line 741
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    if-eqz v7, :cond_2f

    if-eqz v8, :cond_2f

    .line 748
    :try_start_0
    new-instance v15, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v15}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 749
    new-instance v0, Lcom/conceptglobal/pmc/promotions/video/Mp4Movie;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/promotions/video/Mp4Movie;-><init>()V

    .line 750
    invoke-virtual {v0, v14}, Lcom/conceptglobal/pmc/promotions/video/Mp4Movie;->setCacheFile(Ljava/io/File;)V

    .line 751
    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/promotions/video/Mp4Movie;->setRotation(I)V

    .line 752
    invoke-virtual {v0, v7, v8}, Lcom/conceptglobal/pmc/promotions/video/Mp4Movie;->setSize(II)V

    .line 753
    new-instance v3, Lcom/conceptglobal/pmc/promotions/video/MP4Builder;

    invoke-direct {v3}, Lcom/conceptglobal/pmc/promotions/video/MP4Builder;-><init>()V

    invoke-virtual {v3, v0}, Lcom/conceptglobal/pmc/promotions/video/MP4Builder;->createMovie(Lcom/conceptglobal/pmc/promotions/video/Mp4Movie;)Lcom/conceptglobal/pmc/promotions/video/MP4Builder;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_19
    .catchall {:try_start_0 .. :try_end_0} :catchall_11

    .line 754
    :try_start_1
    new-instance v6, Landroid/media/MediaExtractor;

    invoke-direct {v6}, Landroid/media/MediaExtractor;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_18
    .catchall {:try_start_1 .. :try_end_1} :catchall_10

    .line 755
    :try_start_2
    invoke-virtual {v10}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_17
    .catchall {:try_start_2 .. :try_end_2} :catchall_f

    const-wide/16 v18, -0x1

    const-wide/16 v20, -0x1

    if-ne v7, v4, :cond_6

    if-eq v8, v5, :cond_4

    move-object/from16 v24, v3

    move-object/from16 v27, v10

    const/4 v3, 0x0

    move-object v10, v6

    goto/16 :goto_3

    :cond_4
    const/4 v0, 0x0

    const-wide/16 v22, -0x1

    move-object/from16 v1, p0

    move-object v2, v6

    move-object v7, v3

    move-object v4, v15

    move-object v8, v6

    move-wide/from16 v5, v22

    move-object/from16 v24, v7

    move-object/from16 v25, v8

    move-wide/from16 v7, v20

    move-object v9, v14

    move-object/from16 v27, v10

    move v10, v0

    .line 1090
    :try_start_3
    invoke-direct/range {v1 .. v10}, Lcom/conceptglobal/pmc/promotions/video/MediaController;->readAndWriteTrack(Landroid/media/MediaExtractor;Lcom/conceptglobal/pmc/promotions/video/MP4Builder;Landroid/media/MediaCodec$BufferInfo;JJLjava/io/File;Z)J

    move-result-wide v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    cmp-long v2, v0, v18

    if-eqz v2, :cond_5

    move-wide v5, v0

    move-object/from16 v23, v12

    move-object v9, v13

    move-object/from16 v10, v24

    move-object/from16 v11, v25

    const/4 v12, 0x0

    move-object/from16 v25, v14

    goto/16 :goto_31

    :cond_5
    move-object v9, v13

    move-wide/from16 v5, v22

    move-object/from16 v10, v24

    move-object/from16 v11, v25

    move-object/from16 v23, v12

    move-object/from16 v25, v14

    const/4 v12, 0x0

    goto/16 :goto_31

    :catchall_0
    move-exception v0

    move-object v3, v0

    move-object v2, v11

    move-object v1, v12

    move-object/from16 v10, v24

    move-object/from16 v6, v25

    goto/16 :goto_3a

    :catch_0
    move-exception v0

    move-object v1, v12

    move-object/from16 v10, v24

    move-object/from16 v6, v25

    :goto_2
    const/4 v14, 0x1

    goto/16 :goto_37

    :cond_6
    move-object/from16 v24, v3

    move-object/from16 v27, v10

    move-object v10, v6

    const/4 v3, 0x0

    .line 760
    :goto_3
    :try_start_4
    invoke-direct {v11, v10, v3}, Lcom/conceptglobal/pmc/promotions/video/MediaController;->selectTrack(Landroid/media/MediaExtractor;Z)I

    move-result v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_16
    .catchall {:try_start_4 .. :try_end_4} :catchall_e

    if-ltz v4, :cond_27

    .line 778
    :try_start_5
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 807
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v2, 0x7f000789

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    mul-int v0, v7, v8

    const/4 v3, 0x3

    mul-int/lit8 v0, v0, 0x3

    .line 811
    div-int/lit8 v0, v0, 0x2

    .line 813
    rem-int/lit8 v0, v8, 0x10
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_11
    .catchall {:try_start_5 .. :try_end_5} :catchall_a

    if-eqz v0, :cond_7

    .line 814
    :try_start_6
    rem-int/lit8 v0, v8, 0x10

    rsub-int/lit8 v0, v0, 0x10

    add-int/2addr v0, v8

    sub-int/2addr v0, v8

    mul-int v0, v0, v7

    mul-int/lit8 v0, v0, 0x5

    .line 816
    div-int/lit8 v0, v0, 0x4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v3, v0

    move-object v6, v10

    move-object v2, v11

    move-object v1, v12

    move-object/from16 v10, v24

    goto/16 :goto_3a

    :catch_1
    move-exception v0

    move-object v1, v0

    move/from16 v33, v4

    move-object/from16 v28, v10

    move-object/from16 v23, v12

    move-object v9, v13

    move-object/from16 v25, v14

    move-object/from16 v10, v24

    goto/16 :goto_29

    .line 838
    :cond_7
    :goto_4
    :try_start_7
    invoke-virtual {v10, v4}, Landroid/media/MediaExtractor;->selectTrack(I)V

    const-wide/16 v5, 0x0

    const/4 v9, 0x0

    .line 842
    invoke-virtual {v10, v5, v6, v9}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 844
    invoke-virtual {v10, v4}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    .line 846
    invoke-static {v1, v7, v8}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v5

    .line 847
    const-string v6, "color-format"

    invoke-virtual {v5, v6, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 848
    const-string v2, "bitrate"

    const v6, 0x6ddd0

    invoke-virtual {v5, v2, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 849
    const-string v2, "frame-rate"

    const/16 v6, 0x19

    invoke-virtual {v5, v2, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 850
    const-string v2, "i-frame-interval"

    const/16 v6, 0xa

    invoke-virtual {v5, v2, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 856
    invoke-static {v1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_11
    .catchall {:try_start_7 .. :try_end_7} :catchall_a

    const/4 v6, 0x0

    const/4 v9, 0x1

    .line 857
    :try_start_8
    invoke-virtual {v2, v5, v6, v6, v9}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 859
    new-instance v5, Lcom/conceptglobal/pmc/promotions/video/InputSurface;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/conceptglobal/pmc/promotions/video/InputSurface;-><init>(Landroid/view/Surface;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_10
    .catchall {:try_start_8 .. :try_end_8} :catchall_a

    .line 860
    :try_start_9
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/promotions/video/InputSurface;->makeCurrent()V

    .line 862
    invoke-virtual {v2}, Landroid/media/MediaCodec;->start()V

    .line 864
    const-string v6, "mime"

    invoke-virtual {v0, v6}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v6
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_f
    .catchall {:try_start_9 .. :try_end_9} :catchall_a

    .line 866
    :try_start_a
    new-instance v3, Lcom/conceptglobal/pmc/promotions/video/OutputSurface;

    invoke-direct {v3}, Lcom/conceptglobal/pmc/promotions/video/OutputSurface;-><init>()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_e
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    .line 870
    :try_start_b
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/promotions/video/OutputSurface;->getSurface()Landroid/view/Surface;

    move-result-object v9
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_d
    .catchall {:try_start_b .. :try_end_b} :catchall_a

    move-object/from16 v23, v12

    move-object/from16 v25, v14

    const/4 v12, 0x0

    const/4 v14, 0x0

    :try_start_c
    invoke-virtual {v6, v0, v9, v12, v14}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 871
    invoke-virtual {v6}, Landroid/media/MediaCodec;->start()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    const/4 v0, 0x0

    const/4 v14, 0x0

    const/16 v35, -0x5

    :goto_5
    if-nez v14, :cond_23

    move-object/from16 v36, v13

    const-wide/16 v12, 0x9c4

    if-nez v0, :cond_c

    .line 888
    :try_start_d
    invoke-virtual {v10}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v9

    if-ne v9, v4, :cond_a

    .line 890
    invoke-virtual {v6, v12, v13}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v9

    if-ltz v9, :cond_9

    .line 896
    invoke-virtual {v6, v9}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v12

    const/4 v13, 0x0

    .line 898
    invoke-virtual {v10, v12, v13}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v31

    if-gez v31, :cond_8

    const-wide/16 v32, 0x0

    const/16 v34, 0x4

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v28, v6

    move/from16 v29, v9

    .line 900
    invoke-virtual/range {v28 .. v34}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    const/4 v9, 0x1

    goto :goto_6

    .line 903
    :cond_8
    invoke-virtual {v10}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v32

    const/16 v34, 0x0

    const/16 v30, 0x0

    move-object/from16 v28, v6

    move/from16 v29, v9

    invoke-virtual/range {v28 .. v34}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 904
    invoke-virtual {v10}, Landroid/media/MediaExtractor;->advance()Z

    :cond_9
    move v9, v0

    :goto_6
    move v0, v9

    goto :goto_7

    :cond_a
    const/4 v12, -0x1

    if-ne v9, v12, :cond_b

    const/4 v9, 0x1

    goto :goto_8

    :cond_b
    :goto_7
    const/4 v9, 0x0

    :goto_8
    if-eqz v9, :cond_c

    const-wide/16 v12, 0x9c4

    .line 911
    invoke-virtual {v6, v12, v13}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v29

    if-ltz v29, :cond_c

    const-wide/16 v32, 0x0

    const/16 v34, 0x4

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v28, v6

    .line 913
    invoke-virtual/range {v28 .. v34}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    const/4 v9, 0x1

    goto :goto_b

    :catchall_2
    move-exception v0

    move-object v3, v0

    move-object v6, v10

    move-object v2, v11

    move-object/from16 v1, v23

    move-object/from16 v10, v24

    :goto_9
    move-object/from16 v13, v36

    goto/16 :goto_3a

    :catch_2
    move-exception v0

    move-object v1, v0

    move/from16 v33, v4

    move-object v0, v6

    move-object/from16 v28, v10

    move-object/from16 v10, v24

    :goto_a
    move-object/from16 v9, v36

    goto/16 :goto_26

    :cond_c
    move v9, v0

    :goto_b
    move/from16 v13, v35

    const/4 v0, 0x1

    const/4 v12, 0x1

    :goto_c
    if-nez v12, :cond_e

    if-eqz v0, :cond_d

    goto :goto_d

    :cond_d
    move v0, v9

    move/from16 v35, v13

    move-object/from16 v13, v36

    const/4 v12, 0x0

    goto/16 :goto_5

    :cond_e
    :goto_d
    move/from16 v30, v0

    move/from16 v29, v9

    move-object/from16 v28, v10

    const-wide/16 v9, 0x9c4

    .line 922
    :try_start_e
    invoke-virtual {v2, v15, v9, v10}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_b
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    const/4 v10, -0x3

    const/4 v9, -0x1

    if-ne v0, v9, :cond_f

    move/from16 v33, v4

    move-object/from16 v10, v24

    const/4 v4, -0x1

    const/16 v30, 0x0

    :goto_e
    move/from16 v24, v12

    goto/16 :goto_1b

    :cond_f
    if-ne v0, v10, :cond_10

    move/from16 v33, v4

    move-object/from16 v10, v24

    const/4 v4, -0x1

    goto :goto_e

    :cond_10
    const/4 v9, -0x2

    if-ne v0, v9, :cond_12

    .line 930
    :try_start_f
    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v9
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    const/4 v10, -0x5

    if-ne v13, v10, :cond_11

    move-object/from16 v10, v24

    move/from16 v24, v12

    const/4 v12, 0x0

    .line 932
    :try_start_10
    invoke-virtual {v10, v9, v12}, Lcom/conceptglobal/pmc/promotions/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v13
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    goto :goto_f

    :catchall_3
    move-exception v0

    goto :goto_11

    :catch_3
    move-exception v0

    goto :goto_13

    :cond_11
    move-object/from16 v10, v24

    move/from16 v24, v12

    :goto_f
    move/from16 v33, v4

    :goto_10
    const/4 v4, -0x1

    goto/16 :goto_1b

    :catchall_4
    move-exception v0

    move-object/from16 v10, v24

    :goto_11
    move-object v3, v0

    move-object v2, v11

    :goto_12
    move-object/from16 v1, v23

    move-object/from16 v6, v28

    goto :goto_9

    :catch_4
    move-exception v0

    move-object/from16 v10, v24

    :goto_13
    move-object v1, v0

    move/from16 v33, v4

    :goto_14
    move-object v0, v6

    goto :goto_a

    :cond_12
    move-object/from16 v10, v24

    move/from16 v24, v12

    if-ltz v0, :cond_22

    .line 941
    :try_start_11
    invoke-virtual {v2, v0}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    if-eqz v9, :cond_21

    .line 946
    iget v12, v15, Landroid/media/MediaCodec$BufferInfo;->size:I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_9
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    const/4 v14, 0x1

    if-le v12, v14, :cond_17

    .line 947
    :try_start_12
    iget v12, v15, Landroid/media/MediaCodec$BufferInfo;->flags:I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_6
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    and-int/lit8 v12, v12, 0x2

    if-nez v12, :cond_13

    const/4 v12, 0x0

    .line 948
    :try_start_13
    invoke-virtual {v10, v13, v9, v15, v12}, Lcom/conceptglobal/pmc/promotions/video/MP4Builder;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 949
    invoke-direct {v11, v12, v12}, Lcom/conceptglobal/pmc/promotions/video/MediaController;->didWriteData(ZZ)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_3
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    goto/16 :goto_18

    :cond_13
    const/4 v12, -0x5

    if-ne v13, v12, :cond_17

    .line 952
    :try_start_14
    iget v13, v15, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v13, v13, [B

    .line 953
    iget v14, v15, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v12, v15, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v14, v12

    invoke-virtual {v9, v14}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 954
    iget v12, v15, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v9, v12}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 955
    invoke-virtual {v9, v13}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 958
    iget v9, v15, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v12, 0x1

    sub-int/2addr v9, v12

    :goto_15
    if-ltz v9, :cond_15

    const/4 v14, 0x3

    if-le v9, v14, :cond_15

    .line 960
    aget-byte v14, v13, v9

    if-ne v14, v12, :cond_14

    add-int/lit8 v14, v9, -0x1

    aget-byte v14, v13, v14

    if-nez v14, :cond_14

    add-int/lit8 v14, v9, -0x2

    aget-byte v14, v13, v14

    if-nez v14, :cond_14

    add-int/lit8 v14, v9, -0x3

    aget-byte v26, v13, v14

    if-nez v26, :cond_14

    .line 961
    invoke-static {v14}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 962
    iget v12, v15, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr v12, v14

    invoke-static {v12}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v12
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_6
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    move/from16 v33, v4

    const/4 v11, 0x0

    .line 963
    :try_start_15
    invoke-virtual {v9, v13, v11, v14}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 964
    iget v4, v15, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr v4, v14

    invoke-virtual {v12, v13, v14, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_16

    :cond_14
    move/from16 v33, v4

    add-int/lit8 v9, v9, -0x1

    move-object/from16 v11, p0

    move/from16 v4, v33

    const/4 v12, 0x1

    goto :goto_15

    :cond_15
    move/from16 v33, v4

    const/4 v9, 0x0

    const/4 v12, 0x0

    .line 972
    :goto_16
    invoke-static {v1, v7, v8}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v4

    if-eqz v9, :cond_16

    if-eqz v12, :cond_16

    .line 974
    const-string v11, "csd-0"

    invoke-virtual {v4, v11, v9}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 975
    const-string v9, "csd-1"

    invoke-virtual {v4, v9, v12}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    :cond_16
    const/4 v9, 0x0

    .line 977
    invoke-virtual {v10, v4, v9}, Lcom/conceptglobal/pmc/promotions/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v13
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_5
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    goto :goto_19

    :catch_5
    move-exception v0

    goto :goto_17

    :catchall_5
    move-exception v0

    move-object/from16 v2, p0

    move-object v3, v0

    goto/16 :goto_12

    :catch_6
    move-exception v0

    move/from16 v33, v4

    :goto_17
    move-object v1, v0

    goto/16 :goto_14

    :cond_17
    :goto_18
    move/from16 v33, v4

    .line 980
    :goto_19
    :try_start_16
    iget v4, v15, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_18

    const/4 v4, 0x0

    const/4 v9, 0x1

    goto :goto_1a

    :cond_18
    const/4 v4, 0x0

    const/4 v9, 0x0

    .line 981
    :goto_1a
    invoke-virtual {v2, v0, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    move v14, v9

    goto/16 :goto_10

    :goto_1b
    if-eq v0, v4, :cond_19

    move-object/from16 v11, p0

    move/from16 v12, v24

    move/from16 v9, v29

    move/from16 v0, v30

    move/from16 v4, v33

    move-object/from16 v24, v10

    move-object/from16 v10, v28

    goto/16 :goto_c

    :cond_19
    const-wide/16 v11, 0x9c4

    .line 988
    invoke-virtual {v6, v15, v11, v12}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    if-ne v0, v4, :cond_1a

    move-object/from16 v9, v36

    :goto_1c
    const/4 v12, 0x0

    goto :goto_20

    :cond_1a
    const/4 v9, -0x3

    if-ne v0, v9, :cond_1b

    move-object/from16 v9, v36

    goto :goto_1d

    :cond_1b
    const/4 v9, -0x2

    if-ne v0, v9, :cond_1d

    .line 994
    invoke-virtual {v6}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    .line 995
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "newFormat = "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_8
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    move-object/from16 v9, v36

    :try_start_17
    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    :goto_1d
    move/from16 v12, v24

    goto :goto_20

    :cond_1d
    move-object/from16 v9, v36

    if-ltz v0, :cond_20

    .line 1001
    iget v4, v15, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v4, :cond_1e

    const/4 v4, 0x1

    goto :goto_1e

    :cond_1e
    const/4 v4, 0x0

    .line 1019
    :goto_1e
    invoke-virtual {v6, v0, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_a
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    if-eqz v4, :cond_1f

    .line 1023
    :try_start_18
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/promotions/video/OutputSurface;->awaitNewImage()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_7
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    const/4 v4, 0x0

    .line 1030
    :try_start_19
    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/promotions/video/OutputSurface;->drawImage(Z)V

    .line 1031
    iget-wide v11, v15, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v31, 0x3e8

    mul-long v11, v11, v31

    invoke-virtual {v5, v11, v12}, Lcom/conceptglobal/pmc/promotions/video/InputSurface;->setPresentationTime(J)V

    .line 1032
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/promotions/video/InputSurface;->swapBuffers()Z

    goto :goto_1f

    :catch_7
    move-exception v0

    move-object v4, v0

    .line 1026
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    :cond_1f
    :goto_1f
    iget v0, v15, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1c

    .line 1050
    const-string v0, "decoder stream end"

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    invoke-virtual {v2}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    goto :goto_1c

    :goto_20
    move-object/from16 v11, p0

    move-object/from16 v36, v9

    move-object/from16 v24, v10

    move-object/from16 v10, v28

    move/from16 v9, v29

    move/from16 v0, v30

    move/from16 v4, v33

    goto/16 :goto_c

    .line 997
    :cond_20
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unexpected result from decoder.dequeueOutputBuffer: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_6
    move-exception v0

    goto :goto_21

    :catch_8
    move-exception v0

    goto :goto_23

    :cond_21
    move/from16 v33, v4

    move-object/from16 v9, v36

    .line 944
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "encoderOutputBuffer "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " was null"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_9
    move-exception v0

    move/from16 v33, v4

    goto :goto_23

    :cond_22
    move/from16 v33, v4

    move-object/from16 v9, v36

    .line 935
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unexpected result from encoder.dequeueOutputBuffer: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_a
    .catchall {:try_start_19 .. :try_end_19} :catchall_7

    :catchall_7
    move-exception v0

    goto :goto_22

    :catch_a
    move-exception v0

    goto :goto_25

    :catchall_8
    move-exception v0

    move-object/from16 v10, v24

    :goto_21
    move-object/from16 v9, v36

    :goto_22
    move-object/from16 v2, p0

    move-object v3, v0

    move-object v13, v9

    goto/16 :goto_28

    :catch_b
    move-exception v0

    move/from16 v33, v4

    move-object/from16 v10, v24

    :goto_23
    move-object/from16 v9, v36

    goto :goto_25

    :cond_23
    move-object/from16 v28, v10

    move-object v9, v13

    move-object/from16 v10, v24

    move v1, v4

    move-object/from16 v11, v28

    const/4 v0, 0x0

    goto/16 :goto_2d

    :catchall_9
    move-exception v0

    move-object/from16 v28, v10

    goto/16 :goto_27

    :catch_c
    move-exception v0

    move/from16 v33, v4

    move-object/from16 v28, v10

    move-object v9, v13

    goto :goto_24

    :catch_d
    move-exception v0

    move/from16 v33, v4

    move-object/from16 v28, v10

    move-object/from16 v23, v12

    move-object v9, v13

    move-object/from16 v25, v14

    :goto_24
    move-object/from16 v10, v24

    :goto_25
    move-object v1, v0

    move-object v0, v6

    :goto_26
    move-object v6, v3

    goto/16 :goto_2c

    :catch_e
    move-exception v0

    move/from16 v33, v4

    move-object/from16 v28, v10

    move-object/from16 v23, v12

    move-object v9, v13

    move-object/from16 v25, v14

    move-object/from16 v10, v24

    move-object v1, v0

    move-object v0, v6

    goto :goto_2b

    :catch_f
    move-exception v0

    move/from16 v33, v4

    move-object/from16 v28, v10

    move-object/from16 v23, v12

    move-object v9, v13

    move-object/from16 v25, v14

    move-object/from16 v10, v24

    move-object v1, v0

    const/4 v0, 0x0

    goto :goto_2b

    :catch_10
    move-exception v0

    move/from16 v33, v4

    move-object/from16 v28, v10

    move-object/from16 v23, v12

    move-object v9, v13

    move-object/from16 v25, v14

    move-object/from16 v10, v24

    move-object v1, v0

    const/4 v0, 0x0

    goto :goto_2a

    :catchall_a
    move-exception v0

    move-object/from16 v28, v10

    move-object/from16 v23, v12

    :goto_27
    move-object v9, v13

    move-object/from16 v10, v24

    move-object/from16 v2, p0

    move-object v3, v0

    :goto_28
    move-object/from16 v1, v23

    move-object/from16 v6, v28

    goto/16 :goto_3a

    :catch_11
    move-exception v0

    move/from16 v33, v4

    move-object/from16 v28, v10

    move-object/from16 v23, v12

    move-object v9, v13

    move-object/from16 v25, v14

    move-object/from16 v10, v24

    move-object v1, v0

    :goto_29
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_2a
    const/4 v5, 0x0

    :goto_2b
    const/4 v6, 0x0

    .line 1068
    :goto_2c
    :try_start_1a
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_13
    .catchall {:try_start_1a .. :try_end_1a} :catchall_c

    move-object v3, v6

    move-object/from16 v11, v28

    move/from16 v1, v33

    move-object v6, v0

    const/4 v0, 0x1

    .line 1072
    :goto_2d
    :try_start_1b
    invoke-virtual {v11, v1}, Landroid/media/MediaExtractor;->unselectTrack(I)V

    if-eqz v3, :cond_24

    .line 1075
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/promotions/video/OutputSurface;->release()V

    :cond_24
    if-eqz v5, :cond_25

    .line 1078
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/promotions/video/InputSurface;->release()V

    :cond_25
    if-eqz v6, :cond_26

    .line 1081
    invoke-virtual {v6}, Landroid/media/MediaCodec;->stop()V

    .line 1082
    invoke-virtual {v6}, Landroid/media/MediaCodec;->release()V

    :cond_26
    if-eqz v2, :cond_28

    .line 1085
    invoke-virtual {v2}, Landroid/media/MediaCodec;->stop()V

    .line 1086
    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_12
    .catchall {:try_start_1b .. :try_end_1b} :catchall_b

    goto :goto_30

    :catchall_b
    move-exception v0

    goto :goto_2e

    :catch_12
    move-exception v0

    goto :goto_2f

    :catchall_c
    move-exception v0

    move-object/from16 v11, v28

    :goto_2e
    move-object/from16 v2, p0

    move-object v3, v0

    move-object v13, v9

    move-object v6, v11

    goto :goto_32

    :catch_13
    move-exception v0

    move-object/from16 v11, v28

    :goto_2f
    move-object v13, v9

    move-object v6, v11

    move-object/from16 v1, v23

    goto/16 :goto_2

    :cond_27
    move-object v11, v10

    move-object/from16 v23, v12

    move-object v9, v13

    move-object/from16 v25, v14

    move-object/from16 v10, v24

    const/4 v0, 0x0

    :cond_28
    :goto_30
    move v12, v0

    move-wide/from16 v5, v18

    :goto_31
    if-nez v12, :cond_29

    const/4 v0, 0x1

    move-object/from16 v1, p0

    move-object v2, v11

    move-object v3, v10

    move-object v4, v15

    move-wide/from16 v7, v20

    move-object v13, v9

    const/4 v14, 0x1

    move-object/from16 v9, v25

    move-object v15, v11

    move-object v11, v10

    move v10, v0

    .line 1096
    :try_start_1c
    invoke-direct/range {v1 .. v10}, Lcom/conceptglobal/pmc/promotions/video/MediaController;->readAndWriteTrack(Landroid/media/MediaExtractor;Lcom/conceptglobal/pmc/promotions/video/MP4Builder;Landroid/media/MediaCodec$BufferInfo;JJLjava/io/File;Z)J
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_14
    .catchall {:try_start_1c .. :try_end_1c} :catchall_d

    goto :goto_33

    :catchall_d
    move-exception v0

    move-object/from16 v2, p0

    move-object v3, v0

    move-object v10, v11

    move-object v6, v15

    :goto_32
    move-object/from16 v1, v23

    goto/16 :goto_3a

    :catch_14
    move-exception v0

    move-object v10, v11

    move-object v6, v15

    move-object/from16 v1, v23

    goto/16 :goto_37

    :cond_29
    move-object v13, v9

    move-object v15, v11

    const/4 v14, 0x1

    move-object v11, v10

    .line 1103
    :goto_33
    invoke-virtual {v15}, Landroid/media/MediaExtractor;->release()V

    if-eqz v11, :cond_2a

    const/4 v1, 0x0

    .line 1107
    :try_start_1d
    invoke-virtual {v11, v1}, Lcom/conceptglobal/pmc/promotions/video/MP4Builder;->finishMovie(Z)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_15

    goto :goto_34

    :catch_15
    move-exception v0

    move-object v1, v0

    .line 1109
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    :cond_2a
    :goto_34
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v1, v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v2, p0

    move v9, v12

    goto/16 :goto_39

    :catchall_e
    move-exception v0

    move-object v15, v10

    move-object v1, v12

    move-object/from16 v11, v24

    move-object/from16 v2, p0

    move-object v3, v0

    move-object v10, v11

    move-object v6, v15

    goto/16 :goto_3a

    :catch_16
    move-exception v0

    move-object v15, v10

    move-object v1, v12

    move-object/from16 v11, v24

    const/4 v14, 0x1

    move-object v10, v11

    move-object v6, v15

    goto :goto_37

    :catchall_f
    move-exception v0

    move-object v11, v3

    move-object v15, v6

    move-object v1, v12

    goto :goto_35

    :catch_17
    move-exception v0

    move-object v11, v3

    move-object v15, v6

    move-object/from16 v27, v10

    move-object v1, v12

    const/4 v14, 0x1

    move-object v10, v11

    goto :goto_37

    :catchall_10
    move-exception v0

    move-object v11, v3

    move-object v1, v12

    const/4 v6, 0x0

    :goto_35
    move-object/from16 v2, p0

    move-object v3, v0

    move-object v10, v11

    goto :goto_3a

    :catch_18
    move-exception v0

    move-object v11, v3

    move-object/from16 v27, v10

    move-object v1, v12

    const/4 v14, 0x1

    move-object v10, v11

    const/4 v6, 0x0

    goto :goto_37

    :catchall_11
    move-exception v0

    move-object v1, v12

    const/4 v6, 0x0

    const/4 v10, 0x0

    :goto_36
    move-object/from16 v2, p0

    move-object v3, v0

    goto :goto_3a

    :catch_19
    move-exception v0

    move-object/from16 v27, v10

    move-object v1, v12

    const/4 v14, 0x1

    const/4 v6, 0x0

    const/4 v10, 0x0

    .line 1100
    :goto_37
    :try_start_1e
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_12

    if-eqz v6, :cond_2b

    .line 1103
    invoke-virtual {v6}, Landroid/media/MediaExtractor;->release()V

    :cond_2b
    if-eqz v10, :cond_2c

    const/4 v2, 0x0

    .line 1107
    :try_start_1f
    invoke-virtual {v10, v2}, Lcom/conceptglobal/pmc/promotions/video/MP4Builder;->finishMovie(Z)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_1a

    goto :goto_38

    :catch_1a
    move-exception v0

    move-object v2, v0

    .line 1109
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    :cond_2c
    :goto_38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v1, v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x1

    move-object/from16 v2, p0

    .line 1118
    :goto_39
    invoke-direct {v2, v14, v9}, Lcom/conceptglobal/pmc/promotions/video/MediaController;->didWriteData(ZZ)V

    .line 1120
    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->delete()Z

    return v14

    :catchall_12
    move-exception v0

    goto :goto_36

    :goto_3a
    if-eqz v6, :cond_2d

    .line 1103
    invoke-virtual {v6}, Landroid/media/MediaExtractor;->release()V

    :cond_2d
    if-eqz v10, :cond_2e

    const/4 v4, 0x0

    .line 1107
    :try_start_20
    invoke-virtual {v10, v4}, Lcom/conceptglobal/pmc/promotions/video/MP4Builder;->finishMovie(Z)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_1b

    goto :goto_3b

    :catch_1b
    move-exception v0

    move-object v4, v0

    .line 1109
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    :cond_2e
    :goto_3b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v16

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    throw v3

    :cond_2f
    move-object v2, v11

    const/4 v14, 0x1

    .line 1115
    invoke-direct {v2, v14, v14}, Lcom/conceptglobal/pmc/promotions/video/MediaController;->didWriteData(ZZ)V

    const/4 v1, 0x0

    return v1
.end method

.method public convertVideo(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 37

    move-object/from16 v11, p0

    move-object/from16 v0, p1

    .line 230
    const-string v1, "video/avc"

    const-string v12, "time = "

    const-string v13, "tmessages"

    .line 0
    const-string v2, "colorFormat = "

    .line 230
    new-instance v3, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v3}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 231
    invoke-virtual {v3, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 v4, 0x13

    .line 232
    invoke-virtual {v3, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x12

    .line 233
    invoke-virtual {v3, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x18

    .line 234
    invoke-virtual {v3, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    .line 242
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 243
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 244
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 249
    new-instance v14, Ljava/io/File;

    move-object/from16 v6, p2

    invoke-direct {v14, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x5a

    const/4 v15, 0x0

    const/16 v7, 0x280

    const/16 v8, 0x168

    if-ne v3, v6, :cond_0

    :goto_0
    const/4 v3, 0x0

    const/16 v7, 0x168

    const/16 v8, 0x280

    goto :goto_1

    :cond_0
    const/16 v6, 0xb4

    if-ne v3, v6, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    const/16 v6, 0x10e

    if-ne v3, v6, :cond_2

    goto :goto_0

    .line 283
    :cond_2
    :goto_1
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 284
    invoke-virtual {v10}, Ljava/io/File;->canRead()Z

    move-result v0

    const/4 v9, 0x1

    if-nez v0, :cond_3

    .line 285
    invoke-direct {v11, v9, v9}, Lcom/conceptglobal/pmc/promotions/video/MediaController;->didWriteData(ZZ)V

    return v15

    .line 289
    :cond_3
    iput-boolean v9, v11, Lcom/conceptglobal/pmc/promotions/video/MediaController;->videoConvertFirstWrite:Z

    .line 293
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    if-eqz v7, :cond_2f

    if-eqz v8, :cond_2f

    .line 300
    :try_start_0
    new-instance v15, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v15}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 301
    new-instance v0, Lcom/conceptglobal/pmc/promotions/video/Mp4Movie;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/promotions/video/Mp4Movie;-><init>()V

    .line 302
    invoke-virtual {v0, v14}, Lcom/conceptglobal/pmc/promotions/video/Mp4Movie;->setCacheFile(Ljava/io/File;)V

    .line 303
    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/promotions/video/Mp4Movie;->setRotation(I)V

    .line 304
    invoke-virtual {v0, v7, v8}, Lcom/conceptglobal/pmc/promotions/video/Mp4Movie;->setSize(II)V

    .line 305
    new-instance v3, Lcom/conceptglobal/pmc/promotions/video/MP4Builder;

    invoke-direct {v3}, Lcom/conceptglobal/pmc/promotions/video/MP4Builder;-><init>()V

    invoke-virtual {v3, v0}, Lcom/conceptglobal/pmc/promotions/video/MP4Builder;->createMovie(Lcom/conceptglobal/pmc/promotions/video/Mp4Movie;)Lcom/conceptglobal/pmc/promotions/video/MP4Builder;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1a
    .catchall {:try_start_0 .. :try_end_0} :catchall_11

    .line 306
    :try_start_1
    new-instance v6, Landroid/media/MediaExtractor;

    invoke-direct {v6}, Landroid/media/MediaExtractor;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_19
    .catchall {:try_start_1 .. :try_end_1} :catchall_10

    .line 307
    :try_start_2
    invoke-virtual {v10}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_18
    .catchall {:try_start_2 .. :try_end_2} :catchall_f

    const-wide/16 v18, -0x1

    const-wide/16 v20, -0x1

    if-ne v7, v4, :cond_6

    if-eq v8, v5, :cond_4

    move-object/from16 v24, v3

    move-object/from16 v27, v10

    const/4 v3, 0x0

    move-object v10, v6

    goto/16 :goto_3

    :cond_4
    const/4 v0, 0x0

    const-wide/16 v22, -0x1

    move-object/from16 v1, p0

    move-object v2, v6

    move-object v7, v3

    move-object v4, v15

    move-object v8, v6

    move-wide/from16 v5, v22

    move-object/from16 v24, v7

    move-object/from16 v25, v8

    move-wide/from16 v7, v20

    move-object v9, v14

    move-object/from16 v27, v10

    move v10, v0

    .line 642
    :try_start_3
    invoke-direct/range {v1 .. v10}, Lcom/conceptglobal/pmc/promotions/video/MediaController;->readAndWriteTrack(Landroid/media/MediaExtractor;Lcom/conceptglobal/pmc/promotions/video/MP4Builder;Landroid/media/MediaCodec$BufferInfo;JJLjava/io/File;Z)J

    move-result-wide v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    cmp-long v2, v0, v18

    if-eqz v2, :cond_5

    move-wide/from16 v18, v0

    move-object/from16 v23, v12

    move-object v5, v13

    move-object/from16 v10, v24

    move-object/from16 v11, v25

    const/4 v12, 0x0

    move-object/from16 v25, v14

    goto/16 :goto_31

    :cond_5
    move-object v5, v13

    move-wide/from16 v18, v22

    move-object/from16 v10, v24

    move-object/from16 v11, v25

    move-object/from16 v23, v12

    move-object/from16 v25, v14

    const/4 v12, 0x0

    goto/16 :goto_31

    :catchall_0
    move-exception v0

    move-object v3, v0

    move-object v2, v11

    move-object v1, v12

    move-object/from16 v10, v24

    move-object/from16 v6, v25

    goto/16 :goto_3a

    :catch_0
    move-exception v0

    move-object v1, v12

    move-object/from16 v10, v24

    move-object/from16 v6, v25

    :goto_2
    const/4 v14, 0x1

    goto/16 :goto_37

    :cond_6
    move-object/from16 v24, v3

    move-object/from16 v27, v10

    move-object v10, v6

    const/4 v3, 0x0

    .line 312
    :goto_3
    :try_start_4
    invoke-direct {v11, v10, v3}, Lcom/conceptglobal/pmc/promotions/video/MediaController;->selectTrack(Landroid/media/MediaExtractor;Z)I

    move-result v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_17
    .catchall {:try_start_4 .. :try_end_4} :catchall_e

    if-ltz v4, :cond_27

    .line 330
    :try_start_5
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v2, 0x7f000789

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    mul-int v0, v7, v8

    const/4 v3, 0x3

    mul-int/lit8 v0, v0, 0x3

    .line 363
    div-int/lit8 v0, v0, 0x2

    .line 365
    rem-int/lit8 v0, v8, 0x10
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_12
    .catchall {:try_start_5 .. :try_end_5} :catchall_a

    if-eqz v0, :cond_7

    .line 366
    :try_start_6
    rem-int/lit8 v0, v8, 0x10

    rsub-int/lit8 v0, v0, 0x10

    add-int/2addr v0, v8

    sub-int/2addr v0, v8

    mul-int v0, v0, v7

    mul-int/lit8 v0, v0, 0x5

    .line 368
    div-int/lit8 v0, v0, 0x4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v3, v0

    move-object v6, v10

    move-object v2, v11

    move-object v1, v12

    move-object/from16 v10, v24

    goto/16 :goto_3a

    :catch_1
    move-exception v0

    move-object v1, v0

    move/from16 v33, v4

    move-object/from16 v28, v10

    move-object/from16 v23, v12

    move-object v5, v13

    move-object/from16 v25, v14

    move-object/from16 v10, v24

    goto/16 :goto_2a

    .line 390
    :cond_7
    :goto_4
    :try_start_7
    invoke-virtual {v10, v4}, Landroid/media/MediaExtractor;->selectTrack(I)V

    const-wide/16 v5, 0x0

    const/4 v9, 0x0

    .line 394
    invoke-virtual {v10, v5, v6, v9}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 396
    invoke-virtual {v10, v4}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    .line 398
    invoke-static {v1, v7, v8}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v5

    .line 399
    const-string v6, "color-format"

    invoke-virtual {v5, v6, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 400
    const-string v2, "bitrate"

    const v6, 0x6ddd0

    invoke-virtual {v5, v2, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 401
    const-string v2, "frame-rate"

    const/16 v6, 0x19

    invoke-virtual {v5, v2, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 402
    const-string v2, "i-frame-interval"

    const/16 v6, 0xa

    invoke-virtual {v5, v2, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 408
    invoke-static {v1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_12
    .catchall {:try_start_7 .. :try_end_7} :catchall_a

    const/4 v6, 0x0

    const/4 v9, 0x1

    .line 409
    :try_start_8
    invoke-virtual {v2, v5, v6, v6, v9}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 411
    new-instance v5, Lcom/conceptglobal/pmc/promotions/video/InputSurface;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/conceptglobal/pmc/promotions/video/InputSurface;-><init>(Landroid/view/Surface;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_11
    .catchall {:try_start_8 .. :try_end_8} :catchall_a

    .line 412
    :try_start_9
    invoke-virtual {v5}, Lcom/conceptglobal/pmc/promotions/video/InputSurface;->makeCurrent()V

    .line 414
    invoke-virtual {v2}, Landroid/media/MediaCodec;->start()V

    .line 416
    const-string v6, "mime"

    invoke-virtual {v0, v6}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v6
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_10
    .catchall {:try_start_9 .. :try_end_9} :catchall_a

    .line 418
    :try_start_a
    new-instance v3, Lcom/conceptglobal/pmc/promotions/video/OutputSurface;

    invoke-direct {v3}, Lcom/conceptglobal/pmc/promotions/video/OutputSurface;-><init>()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_f
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    .line 422
    :try_start_b
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/promotions/video/OutputSurface;->getSurface()Landroid/view/Surface;

    move-result-object v9
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_e
    .catchall {:try_start_b .. :try_end_b} :catchall_a

    move-object/from16 v23, v12

    move-object/from16 v25, v14

    const/4 v12, 0x0

    const/4 v14, 0x0

    :try_start_c
    invoke-virtual {v6, v0, v9, v12, v14}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 423
    invoke-virtual {v6}, Landroid/media/MediaCodec;->start()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_d
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    const/4 v0, 0x0

    const/4 v14, 0x0

    const/16 v35, -0x5

    :goto_5
    if-nez v0, :cond_23

    move-object/from16 v36, v13

    const-wide/16 v12, 0x9c4

    if-nez v14, :cond_c

    .line 440
    :try_start_d
    invoke-virtual {v10}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v9

    if-ne v9, v4, :cond_a

    .line 442
    invoke-virtual {v6, v12, v13}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v9

    if-ltz v9, :cond_9

    .line 448
    invoke-virtual {v6, v9}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v12

    const/4 v13, 0x0

    .line 450
    invoke-virtual {v10, v12, v13}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v31

    if-gez v31, :cond_8

    const-wide/16 v32, 0x0

    const/16 v34, 0x4

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v28, v6

    move/from16 v29, v9

    .line 452
    invoke-virtual/range {v28 .. v34}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    const/4 v9, 0x1

    goto :goto_6

    .line 455
    :cond_8
    invoke-virtual {v10}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v32

    const/16 v34, 0x0

    const/16 v30, 0x0

    move-object/from16 v28, v6

    move/from16 v29, v9

    invoke-virtual/range {v28 .. v34}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 456
    invoke-virtual {v10}, Landroid/media/MediaExtractor;->advance()Z

    :cond_9
    move v9, v14

    :goto_6
    move v14, v9

    goto :goto_7

    :cond_a
    const/4 v12, -0x1

    if-ne v9, v12, :cond_b

    const/4 v9, 0x1

    goto :goto_8

    :cond_b
    :goto_7
    const/4 v9, 0x0

    :goto_8
    if-eqz v9, :cond_c

    const-wide/16 v12, 0x9c4

    .line 463
    invoke-virtual {v6, v12, v13}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v29

    if-ltz v29, :cond_c

    const-wide/16 v32, 0x0

    const/16 v34, 0x4

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v28, v6

    .line 465
    invoke-virtual/range {v28 .. v34}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    const/4 v14, 0x1

    goto :goto_b

    :catchall_2
    move-exception v0

    move-object v3, v0

    move-object v6, v10

    move-object v2, v11

    move-object/from16 v1, v23

    move-object/from16 v10, v24

    :goto_9
    move-object/from16 v13, v36

    goto/16 :goto_3a

    :catch_2
    move-exception v0

    move-object v1, v0

    move/from16 v33, v4

    move-object v0, v6

    move-object/from16 v28, v10

    move-object/from16 v10, v24

    :goto_a
    move-object v6, v5

    move-object/from16 v5, v36

    goto/16 :goto_2c

    :cond_c
    :goto_b
    move/from16 v13, v35

    const/4 v9, 0x1

    const/4 v12, 0x1

    :goto_c
    if-nez v9, :cond_e

    if-eqz v12, :cond_d

    goto :goto_d

    :cond_d
    move/from16 v35, v13

    move-object/from16 v13, v36

    const/4 v12, 0x0

    goto/16 :goto_5

    :cond_e
    :goto_d
    move/from16 v30, v0

    move/from16 v29, v9

    move-object/from16 v28, v10

    const-wide/16 v9, 0x9c4

    .line 474
    :try_start_e
    invoke-virtual {v2, v15, v9, v10}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_c
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    const/4 v10, -0x3

    const/4 v9, -0x1

    if-ne v0, v9, :cond_f

    move/from16 v33, v4

    move-object/from16 v10, v24

    move/from16 v9, v30

    const/4 v4, -0x1

    const/4 v12, 0x0

    :goto_e
    move/from16 v30, v14

    goto/16 :goto_1b

    :cond_f
    if-ne v0, v10, :cond_10

    move/from16 v33, v4

    move-object/from16 v10, v24

    :goto_f
    move/from16 v9, v30

    const/4 v4, -0x1

    goto :goto_e

    :cond_10
    const/4 v9, -0x2

    if-ne v0, v9, :cond_12

    .line 482
    :try_start_f
    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v9
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    const/4 v10, -0x5

    if-ne v13, v10, :cond_11

    move-object/from16 v10, v24

    move/from16 v24, v12

    const/4 v12, 0x0

    .line 484
    :try_start_10
    invoke-virtual {v10, v9, v12}, Lcom/conceptglobal/pmc/promotions/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v13
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    goto :goto_10

    :catchall_3
    move-exception v0

    goto :goto_11

    :catch_3
    move-exception v0

    goto :goto_13

    :cond_11
    move-object/from16 v10, v24

    move/from16 v24, v12

    :goto_10
    move/from16 v33, v4

    move/from16 v12, v24

    goto :goto_f

    :catchall_4
    move-exception v0

    move-object/from16 v10, v24

    :goto_11
    move-object v3, v0

    move-object v2, v11

    :goto_12
    move-object/from16 v1, v23

    move-object/from16 v6, v28

    goto :goto_9

    :catch_4
    move-exception v0

    move-object/from16 v10, v24

    :goto_13
    move-object v1, v0

    move/from16 v33, v4

    :goto_14
    move-object v0, v6

    goto :goto_a

    :cond_12
    move-object/from16 v10, v24

    move/from16 v24, v12

    if-ltz v0, :cond_22

    .line 493
    :try_start_11
    invoke-virtual {v2, v0}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    if-eqz v9, :cond_21

    .line 498
    iget v12, v15, Landroid/media/MediaCodec$BufferInfo;->size:I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_a
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    move/from16 v30, v14

    const/4 v14, 0x1

    if-le v12, v14, :cond_17

    .line 499
    :try_start_12
    iget v12, v15, Landroid/media/MediaCodec$BufferInfo;->flags:I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_6
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    and-int/lit8 v12, v12, 0x2

    if-nez v12, :cond_13

    const/4 v12, 0x0

    .line 500
    :try_start_13
    invoke-virtual {v10, v13, v9, v15, v12}, Lcom/conceptglobal/pmc/promotions/video/MP4Builder;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 501
    invoke-direct {v11, v12, v12}, Lcom/conceptglobal/pmc/promotions/video/MediaController;->didWriteData(ZZ)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_3
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    goto/16 :goto_18

    :cond_13
    const/4 v12, -0x5

    if-ne v13, v12, :cond_17

    .line 504
    :try_start_14
    iget v13, v15, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v13, v13, [B

    .line 505
    iget v14, v15, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v12, v15, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v14, v12

    invoke-virtual {v9, v14}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 506
    iget v12, v15, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v9, v12}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 507
    invoke-virtual {v9, v13}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 510
    iget v9, v15, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v12, 0x1

    sub-int/2addr v9, v12

    :goto_15
    if-ltz v9, :cond_15

    const/4 v14, 0x3

    if-le v9, v14, :cond_15

    .line 512
    aget-byte v14, v13, v9

    if-ne v14, v12, :cond_14

    add-int/lit8 v14, v9, -0x1

    aget-byte v14, v13, v14

    if-nez v14, :cond_14

    add-int/lit8 v14, v9, -0x2

    aget-byte v14, v13, v14

    if-nez v14, :cond_14

    add-int/lit8 v14, v9, -0x3

    aget-byte v26, v13, v14

    if-nez v26, :cond_14

    .line 513
    invoke-static {v14}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 514
    iget v12, v15, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr v12, v14

    invoke-static {v12}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v12
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_6
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    move/from16 v33, v4

    const/4 v11, 0x0

    .line 515
    :try_start_15
    invoke-virtual {v9, v13, v11, v14}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 516
    iget v4, v15, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr v4, v14

    invoke-virtual {v12, v13, v14, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_16

    :cond_14
    move/from16 v33, v4

    add-int/lit8 v9, v9, -0x1

    move-object/from16 v11, p0

    move/from16 v4, v33

    const/4 v12, 0x1

    goto :goto_15

    :cond_15
    move/from16 v33, v4

    const/4 v9, 0x0

    const/4 v12, 0x0

    .line 524
    :goto_16
    invoke-static {v1, v7, v8}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v4

    if-eqz v9, :cond_16

    if-eqz v12, :cond_16

    .line 526
    const-string v11, "csd-0"

    invoke-virtual {v4, v11, v9}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 527
    const-string v9, "csd-1"

    invoke-virtual {v4, v9, v12}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    :cond_16
    const/4 v9, 0x0

    .line 529
    invoke-virtual {v10, v4, v9}, Lcom/conceptglobal/pmc/promotions/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v13
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_5
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    goto :goto_19

    :catch_5
    move-exception v0

    goto :goto_17

    :catchall_5
    move-exception v0

    move-object/from16 v2, p0

    move-object v3, v0

    goto/16 :goto_12

    :catch_6
    move-exception v0

    move/from16 v33, v4

    :goto_17
    move-object v1, v0

    goto/16 :goto_14

    :cond_17
    :goto_18
    move/from16 v33, v4

    .line 532
    :goto_19
    :try_start_16
    iget v4, v15, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_18

    const/4 v4, 0x0

    const/4 v9, 0x1

    goto :goto_1a

    :cond_18
    const/4 v4, 0x0

    const/4 v9, 0x0

    .line 533
    :goto_1a
    invoke-virtual {v2, v0, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_9
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    move/from16 v12, v24

    const/4 v4, -0x1

    :goto_1b
    if-eq v0, v4, :cond_19

    move-object/from16 v11, p0

    move v0, v9

    move-object/from16 v24, v10

    move-object/from16 v10, v28

    move/from16 v9, v29

    move/from16 v14, v30

    move/from16 v4, v33

    goto/16 :goto_c

    :cond_19
    move-object v11, v5

    const-wide/16 v4, 0x9c4

    .line 540
    :try_start_17
    invoke-virtual {v6, v15, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    const/4 v14, -0x1

    if-ne v0, v14, :cond_1a

    move-object v4, v1

    move-object/from16 v5, v36

    :goto_1c
    const/16 v29, 0x0

    goto/16 :goto_20

    :cond_1a
    const/4 v4, -0x3

    if-ne v0, v4, :cond_1b

    move-object/from16 v5, v36

    goto :goto_1d

    :cond_1b
    const/4 v4, -0x2

    if-ne v0, v4, :cond_1c

    .line 546
    invoke-virtual {v6}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    .line 547
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "newFormat = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_8
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    move-object/from16 v5, v36

    :try_start_18
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1d
    move-object v4, v1

    goto :goto_20

    :cond_1c
    move-object/from16 v5, v36

    if-ltz v0, :cond_20

    .line 553
    iget v4, v15, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v4, :cond_1d

    const/4 v4, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v4, 0x0

    .line 571
    :goto_1e
    invoke-virtual {v6, v0, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_b
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    if-eqz v4, :cond_1e

    .line 575
    :try_start_19
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/promotions/video/OutputSurface;->awaitNewImage()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_7
    .catchall {:try_start_19 .. :try_end_19} :catchall_7

    const/4 v4, 0x0

    .line 582
    :try_start_1a
    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/promotions/video/OutputSurface;->drawImage(Z)V

    move-object v4, v1

    .line 583
    iget-wide v0, v15, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v31, 0x3e8

    mul-long v0, v0, v31

    invoke-virtual {v11, v0, v1}, Lcom/conceptglobal/pmc/promotions/video/InputSurface;->setPresentationTime(J)V

    .line 584
    invoke-virtual {v11}, Lcom/conceptglobal/pmc/promotions/video/InputSurface;->swapBuffers()Z

    goto :goto_1f

    :catch_7
    move-exception v0

    move-object v4, v1

    move-object v1, v0

    .line 578
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    :cond_1e
    move-object v4, v1

    .line 600
    :goto_1f
    iget v0, v15, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1f

    .line 602
    const-string v0, "decoder stream end"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    invoke-virtual {v2}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    goto :goto_1c

    :cond_1f
    :goto_20
    move-object v1, v4

    move-object/from16 v36, v5

    move v0, v9

    move-object/from16 v24, v10

    move-object v5, v11

    move-object/from16 v10, v28

    move/from16 v9, v29

    move/from16 v14, v30

    move/from16 v4, v33

    move-object/from16 v11, p0

    goto/16 :goto_c

    .line 549
    :cond_20
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unexpected result from decoder.dequeueOutputBuffer: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_6
    move-exception v0

    goto :goto_22

    :catch_8
    move-exception v0

    goto :goto_24

    :catch_9
    move-exception v0

    goto :goto_21

    :cond_21
    move/from16 v33, v4

    move-object v11, v5

    move-object/from16 v5, v36

    .line 496
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "encoderOutputBuffer "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " was null"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_a
    move-exception v0

    move/from16 v33, v4

    :goto_21
    move-object v11, v5

    goto :goto_24

    :cond_22
    move/from16 v33, v4

    move-object v11, v5

    move-object/from16 v5, v36

    .line 487
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unexpected result from encoder.dequeueOutputBuffer: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_b
    .catchall {:try_start_1a .. :try_end_1a} :catchall_7

    :catchall_7
    move-exception v0

    goto :goto_23

    :catch_b
    move-exception v0

    goto :goto_26

    :catchall_8
    move-exception v0

    move-object/from16 v10, v24

    :goto_22
    move-object/from16 v5, v36

    :goto_23
    move-object/from16 v2, p0

    move-object v3, v0

    move-object v13, v5

    goto/16 :goto_29

    :catch_c
    move-exception v0

    move/from16 v33, v4

    move-object v11, v5

    move-object/from16 v10, v24

    :goto_24
    move-object/from16 v5, v36

    goto :goto_26

    :cond_23
    move-object v11, v5

    move-object/from16 v28, v10

    move-object v5, v13

    move-object/from16 v10, v24

    move v1, v4

    move-object v0, v6

    move-object v6, v11

    move-object/from16 v11, v28

    const/4 v9, 0x0

    goto/16 :goto_2d

    :catchall_9
    move-exception v0

    move-object/from16 v28, v10

    goto/16 :goto_28

    :catch_d
    move-exception v0

    move/from16 v33, v4

    move-object v11, v5

    move-object/from16 v28, v10

    move-object v5, v13

    goto :goto_25

    :catch_e
    move-exception v0

    move/from16 v33, v4

    move-object v11, v5

    move-object/from16 v28, v10

    move-object/from16 v23, v12

    move-object v5, v13

    move-object/from16 v25, v14

    :goto_25
    move-object/from16 v10, v24

    :goto_26
    move-object v1, v0

    move-object v0, v6

    move-object v6, v11

    goto/16 :goto_2c

    :catch_f
    move-exception v0

    move/from16 v33, v4

    move-object v11, v5

    move-object/from16 v28, v10

    move-object/from16 v23, v12

    move-object v5, v13

    move-object/from16 v25, v14

    move-object/from16 v10, v24

    move-object v1, v0

    move-object v0, v6

    move-object v6, v11

    goto :goto_27

    :catch_10
    move-exception v0

    move/from16 v33, v4

    move-object v11, v5

    move-object/from16 v28, v10

    move-object/from16 v23, v12

    move-object v5, v13

    move-object/from16 v25, v14

    move-object/from16 v10, v24

    move-object v1, v0

    move-object v6, v11

    const/4 v0, 0x0

    :goto_27
    const/4 v3, 0x0

    goto :goto_2c

    :catch_11
    move-exception v0

    move/from16 v33, v4

    move-object/from16 v28, v10

    move-object/from16 v23, v12

    move-object v5, v13

    move-object/from16 v25, v14

    move-object/from16 v10, v24

    move-object v1, v0

    const/4 v0, 0x0

    goto :goto_2b

    :catchall_a
    move-exception v0

    move-object/from16 v28, v10

    move-object/from16 v23, v12

    :goto_28
    move-object v5, v13

    move-object/from16 v10, v24

    move-object/from16 v2, p0

    move-object v3, v0

    :goto_29
    move-object/from16 v1, v23

    move-object/from16 v6, v28

    goto/16 :goto_3a

    :catch_12
    move-exception v0

    move/from16 v33, v4

    move-object/from16 v28, v10

    move-object/from16 v23, v12

    move-object v5, v13

    move-object/from16 v25, v14

    move-object/from16 v10, v24

    move-object v1, v0

    :goto_2a
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_2b
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 620
    :goto_2c
    :try_start_1b
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_14
    .catchall {:try_start_1b .. :try_end_1b} :catchall_c

    move-object/from16 v11, v28

    move/from16 v1, v33

    const/4 v9, 0x1

    .line 624
    :goto_2d
    :try_start_1c
    invoke-virtual {v11, v1}, Landroid/media/MediaExtractor;->unselectTrack(I)V

    if-eqz v3, :cond_24

    .line 627
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/promotions/video/OutputSurface;->release()V

    :cond_24
    if-eqz v6, :cond_25

    .line 630
    invoke-virtual {v6}, Lcom/conceptglobal/pmc/promotions/video/InputSurface;->release()V

    :cond_25
    if-eqz v0, :cond_26

    .line 633
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 634
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    :cond_26
    if-eqz v2, :cond_28

    .line 637
    invoke-virtual {v2}, Landroid/media/MediaCodec;->stop()V

    .line 638
    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_13
    .catchall {:try_start_1c .. :try_end_1c} :catchall_b

    goto :goto_30

    :catchall_b
    move-exception v0

    goto :goto_2e

    :catch_13
    move-exception v0

    goto :goto_2f

    :catchall_c
    move-exception v0

    move-object/from16 v11, v28

    :goto_2e
    move-object/from16 v2, p0

    move-object v3, v0

    move-object v13, v5

    move-object v6, v11

    goto :goto_32

    :catch_14
    move-exception v0

    move-object/from16 v11, v28

    :goto_2f
    move-object v13, v5

    move-object v6, v11

    move-object/from16 v1, v23

    goto/16 :goto_2

    :cond_27
    move-object v11, v10

    move-object/from16 v23, v12

    move-object v5, v13

    move-object/from16 v25, v14

    move-object/from16 v10, v24

    const/4 v9, 0x0

    :cond_28
    :goto_30
    move v12, v9

    :goto_31
    if-nez v12, :cond_29

    const/4 v0, 0x1

    move-object/from16 v1, p0

    move-object v2, v11

    move-object v3, v10

    move-object v4, v15

    move-object v13, v5

    move-wide/from16 v5, v18

    move-wide/from16 v7, v20

    const/4 v14, 0x1

    move-object/from16 v9, v25

    move-object v15, v11

    move-object v11, v10

    move v10, v0

    .line 648
    :try_start_1d
    invoke-direct/range {v1 .. v10}, Lcom/conceptglobal/pmc/promotions/video/MediaController;->readAndWriteTrack(Landroid/media/MediaExtractor;Lcom/conceptglobal/pmc/promotions/video/MP4Builder;Landroid/media/MediaCodec$BufferInfo;JJLjava/io/File;Z)J
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_15
    .catchall {:try_start_1d .. :try_end_1d} :catchall_d

    goto :goto_33

    :catchall_d
    move-exception v0

    move-object/from16 v2, p0

    move-object v3, v0

    move-object v10, v11

    move-object v6, v15

    :goto_32
    move-object/from16 v1, v23

    goto/16 :goto_3a

    :catch_15
    move-exception v0

    move-object v10, v11

    move-object v6, v15

    move-object/from16 v1, v23

    goto/16 :goto_37

    :cond_29
    move-object v13, v5

    move-object v15, v11

    const/4 v14, 0x1

    move-object v11, v10

    .line 655
    :goto_33
    invoke-virtual {v15}, Landroid/media/MediaExtractor;->release()V

    if-eqz v11, :cond_2a

    const/4 v1, 0x0

    .line 659
    :try_start_1e
    invoke-virtual {v11, v1}, Lcom/conceptglobal/pmc/promotions/video/MP4Builder;->finishMovie(Z)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_16

    goto :goto_34

    :catch_16
    move-exception v0

    move-object v1, v0

    .line 661
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    :cond_2a
    :goto_34
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v1, v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v2, p0

    move v9, v12

    goto/16 :goto_39

    :catchall_e
    move-exception v0

    move-object v15, v10

    move-object v1, v12

    move-object/from16 v11, v24

    move-object/from16 v2, p0

    move-object v3, v0

    move-object v10, v11

    move-object v6, v15

    goto/16 :goto_3a

    :catch_17
    move-exception v0

    move-object v15, v10

    move-object v1, v12

    move-object/from16 v11, v24

    const/4 v14, 0x1

    move-object v10, v11

    move-object v6, v15

    goto :goto_37

    :catchall_f
    move-exception v0

    move-object v11, v3

    move-object v15, v6

    move-object v1, v12

    goto :goto_35

    :catch_18
    move-exception v0

    move-object v11, v3

    move-object v15, v6

    move-object/from16 v27, v10

    move-object v1, v12

    const/4 v14, 0x1

    move-object v10, v11

    goto :goto_37

    :catchall_10
    move-exception v0

    move-object v11, v3

    move-object v1, v12

    const/4 v6, 0x0

    :goto_35
    move-object/from16 v2, p0

    move-object v3, v0

    move-object v10, v11

    goto :goto_3a

    :catch_19
    move-exception v0

    move-object v11, v3

    move-object/from16 v27, v10

    move-object v1, v12

    const/4 v14, 0x1

    move-object v10, v11

    const/4 v6, 0x0

    goto :goto_37

    :catchall_11
    move-exception v0

    move-object v1, v12

    const/4 v6, 0x0

    const/4 v10, 0x0

    :goto_36
    move-object/from16 v2, p0

    move-object v3, v0

    goto :goto_3a

    :catch_1a
    move-exception v0

    move-object/from16 v27, v10

    move-object v1, v12

    const/4 v14, 0x1

    const/4 v6, 0x0

    const/4 v10, 0x0

    .line 652
    :goto_37
    :try_start_1f
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_12

    if-eqz v6, :cond_2b

    .line 655
    invoke-virtual {v6}, Landroid/media/MediaExtractor;->release()V

    :cond_2b
    if-eqz v10, :cond_2c

    const/4 v2, 0x0

    .line 659
    :try_start_20
    invoke-virtual {v10, v2}, Lcom/conceptglobal/pmc/promotions/video/MP4Builder;->finishMovie(Z)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_1b

    goto :goto_38

    :catch_1b
    move-exception v0

    move-object v2, v0

    .line 661
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    :cond_2c
    :goto_38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v1, v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x1

    move-object/from16 v2, p0

    .line 670
    :goto_39
    invoke-direct {v2, v14, v9}, Lcom/conceptglobal/pmc/promotions/video/MediaController;->didWriteData(ZZ)V

    .line 672
    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->delete()Z

    return v14

    :catchall_12
    move-exception v0

    goto :goto_36

    :goto_3a
    if-eqz v6, :cond_2d

    .line 655
    invoke-virtual {v6}, Landroid/media/MediaExtractor;->release()V

    :cond_2d
    if-eqz v10, :cond_2e

    const/4 v4, 0x0

    .line 659
    :try_start_21
    invoke-virtual {v10, v4}, Lcom/conceptglobal/pmc/promotions/video/MP4Builder;->finishMovie(Z)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_1c

    goto :goto_3b

    :catch_1c
    move-exception v0

    move-object v4, v0

    .line 661
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    :cond_2e
    :goto_3b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v16

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    throw v3

    :cond_2f
    move-object v2, v11

    const/4 v14, 0x1

    .line 667
    invoke-direct {v2, v14, v14}, Lcom/conceptglobal/pmc/promotions/video/MediaController;->didWriteData(ZZ)V

    const/4 v1, 0x0

    return v1
.end method

.method public scheduleVideoConvert(Ljava/lang/String;)V
    .locals 0

    .line 144
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/promotions/video/MediaController;->startVideoConvertFromQueue(Ljava/lang/String;)V

    return-void
.end method

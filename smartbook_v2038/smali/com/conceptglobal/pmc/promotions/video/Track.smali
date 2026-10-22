.class public Lcom/conceptglobal/pmc/promotions/video/Track;
.super Ljava/lang/Object;
.source "Track.java"


# static fields
.field private static samplingFrequencyIndexMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private creationTime:Ljava/util/Date;

.field private duration:J

.field private first:Z

.field private handler:Ljava/lang/String;

.field private headerBox:Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;

.field private height:I

.field private isAudio:Z

.field private lastPresentationTimeUs:J

.field private sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

.field private sampleDurations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private samples:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/conceptglobal/pmc/promotions/video/Sample;",
            ">;"
        }
    .end annotation
.end field

.field private syncSamples:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private timeScale:I

.field private trackId:J

.field private volume:F

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/conceptglobal/pmc/promotions/video/Track;->samplingFrequencyIndexMap:Ljava/util/Map;

    const v1, 0x17700

    .line 56
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/conceptglobal/pmc/promotions/video/Track;->samplingFrequencyIndexMap:Ljava/util/Map;

    const v1, 0x15888

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/conceptglobal/pmc/promotions/video/Track;->samplingFrequencyIndexMap:Ljava/util/Map;

    const v1, 0xfa00

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/conceptglobal/pmc/promotions/video/Track;->samplingFrequencyIndexMap:Ljava/util/Map;

    const v1, 0xbb80

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/conceptglobal/pmc/promotions/video/Track;->samplingFrequencyIndexMap:Ljava/util/Map;

    const v1, 0xac44

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/conceptglobal/pmc/promotions/video/Track;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/16 v1, 0x7d00

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/conceptglobal/pmc/promotions/video/Track;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/16 v1, 0x5dc0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/conceptglobal/pmc/promotions/video/Track;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/16 v1, 0x5622

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/conceptglobal/pmc/promotions/video/Track;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/16 v1, 0x3e80

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/conceptglobal/pmc/promotions/video/Track;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/16 v1, 0x2ee0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/conceptglobal/pmc/promotions/video/Track;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/16 v1, 0x2b11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/conceptglobal/pmc/promotions/video/Track;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/16 v1, 0x1f40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(ILandroid/media/MediaFormat;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 37
    iput-wide v0, p0, Lcom/conceptglobal/pmc/promotions/video/Track;->trackId:J

    .line 38
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/conceptglobal/pmc/promotions/video/Track;->samples:Ljava/util/ArrayList;

    .line 39
    iput-wide v0, p0, Lcom/conceptglobal/pmc/promotions/video/Track;->duration:J

    const/4 v2, 0x0

    .line 41
    iput-object v2, p0, Lcom/conceptglobal/pmc/promotions/video/Track;->headerBox:Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;

    .line 42
    iput-object v2, p0, Lcom/conceptglobal/pmc/promotions/video/Track;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    .line 43
    iput-object v2, p0, Lcom/conceptglobal/pmc/promotions/video/Track;->syncSamples:Ljava/util/LinkedList;

    .line 45
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    iput-object v2, p0, Lcom/conceptglobal/pmc/promotions/video/Track;->creationTime:Ljava/util/Date;

    const/4 v2, 0x0

    .line 48
    iput v2, p0, Lcom/conceptglobal/pmc/promotions/video/Track;->volume:F

    .line 49
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/conceptglobal/pmc/promotions/video/Track;->sampleDurations:Ljava/util/ArrayList;

    const/4 v3, 0x0

    .line 50
    iput-boolean v3, p0, Lcom/conceptglobal/pmc/promotions/video/Track;->isAudio:Z

    .line 52
    iput-wide v0, p0, Lcom/conceptglobal/pmc/promotions/video/Track;->lastPresentationTimeUs:J

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/promotions/video/Track;->first:Z

    int-to-long v4, p1

    .line 71
    iput-wide v4, p0, Lcom/conceptglobal/pmc/promotions/video/Track;->trackId:J

    if-nez p3, :cond_2

    const-wide/16 v4, 0xbc7

    .line 73
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    iput-wide v4, p0, Lcom/conceptglobal/pmc/promotions/video/Track;->duration:J

    .line 75
    const-string p1, "width"

    invoke-virtual {p2, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/conceptglobal/pmc/promotions/video/Track;->width:I

    .line 76
    const-string p1, "height"

    invoke-virtual {p2, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/conceptglobal/pmc/promotions/video/Track;->height:I

    const p1, 0x15f90

    .line 77
    iput p1, p0, Lcom/conceptglobal/pmc/promotions/video/Track;->timeScale:I

    .line 78
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/video/Track;->syncSamples:Ljava/util/LinkedList;

    .line 79
    const-string p1, "vide"

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/video/Track;->handler:Ljava/lang/String;

    .line 80
    new-instance p1, Lcom/coremedia/iso/boxes/VideoMediaHeaderBox;

    invoke-direct {p1}, Lcom/coremedia/iso/boxes/VideoMediaHeaderBox;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/video/Track;->headerBox:Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;

    .line 81
    new-instance p1, Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-direct {p1}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/video/Track;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    .line 82
    const-string p1, "mime"

    invoke-virtual {p2, p1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 83
    const-string p3, "video/avc"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/16 v1, 0x18

    const-wide/high16 v4, 0x4052000000000000L    # 72.0

    if-eqz p3, :cond_1

    .line 84
    new-instance p1, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;

    const-string p3, "avc1"

    invoke-direct {p1, p3}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p1, v0}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setDataReferenceIndex(I)V

    .line 86
    invoke-virtual {p1, v1}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setDepth(I)V

    .line 87
    invoke-virtual {p1, v0}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setFrameCount(I)V

    .line 88
    invoke-virtual {p1, v4, v5}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setHorizresolution(D)V

    .line 89
    invoke-virtual {p1, v4, v5}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setVertresolution(D)V

    .line 90
    iget p3, p0, Lcom/conceptglobal/pmc/promotions/video/Track;->width:I

    invoke-virtual {p1, p3}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setWidth(I)V

    .line 91
    iget p3, p0, Lcom/conceptglobal/pmc/promotions/video/Track;->height:I

    invoke-virtual {p1, p3}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setHeight(I)V

    .line 93
    new-instance p3, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;

    invoke-direct {p3}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;-><init>()V

    .line 95
    const-string v1, "csd-0"

    invoke-virtual {p2, v1}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 96
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 97
    invoke-virtual {p2, v1}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v4, 0x4

    .line 98
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 99
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    new-array v5, v5, [B

    .line 100
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 101
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 104
    const-string v5, "csd-1"

    invoke-virtual {p2, v5}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 105
    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 106
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    new-array v4, v4, [B

    .line 107
    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 108
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    invoke-virtual {p3, v2}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setSequenceParameterSets(Ljava/util/List;)V

    .line 110
    invoke-virtual {p3, v1}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setPictureParameterSets(Ljava/util/List;)V

    :cond_0
    const/16 p2, 0xd

    .line 115
    invoke-virtual {p3, p2}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcLevelIndication(I)V

    const/16 p2, 0x64

    .line 116
    invoke-virtual {p3, p2}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcProfileIndication(I)V

    const/4 p2, -0x1

    .line 117
    invoke-virtual {p3, p2}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setBitDepthLumaMinus8(I)V

    .line 118
    invoke-virtual {p3, p2}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setBitDepthChromaMinus8(I)V

    .line 119
    invoke-virtual {p3, p2}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setChromaFormat(I)V

    .line 120
    invoke-virtual {p3, v0}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setConfigurationVersion(I)V

    const/4 p2, 0x3

    .line 121
    invoke-virtual {p3, p2}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setLengthSizeMinusOne(I)V

    .line 122
    invoke-virtual {p3, v3}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setProfileCompatibility(I)V

    .line 124
    invoke-virtual {p1, p3}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 125
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/video/Track;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-virtual {p2, p1}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    goto/16 :goto_0

    .line 126
    :cond_1
    const-string p2, "video/mp4v"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 127
    new-instance p1, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;

    const-string p2, "mp4v"

    invoke-direct {p1, p2}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;-><init>(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p1, v0}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setDataReferenceIndex(I)V

    .line 129
    invoke-virtual {p1, v1}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setDepth(I)V

    .line 130
    invoke-virtual {p1, v0}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setFrameCount(I)V

    .line 131
    invoke-virtual {p1, v4, v5}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setHorizresolution(D)V

    .line 132
    invoke-virtual {p1, v4, v5}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setVertresolution(D)V

    .line 133
    iget p2, p0, Lcom/conceptglobal/pmc/promotions/video/Track;->width:I

    invoke-virtual {p1, p2}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setWidth(I)V

    .line 134
    iget p2, p0, Lcom/conceptglobal/pmc/promotions/video/Track;->height:I

    invoke-virtual {p1, p2}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setHeight(I)V

    .line 136
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/video/Track;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-virtual {p2, p1}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    goto/16 :goto_0

    :cond_2
    const-wide/16 v4, 0x400

    .line 139
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    iput-wide v4, p0, Lcom/conceptglobal/pmc/promotions/video/Track;->duration:J

    const/high16 p1, 0x3f800000    # 1.0f

    .line 142
    iput p1, p0, Lcom/conceptglobal/pmc/promotions/video/Track;->volume:F

    .line 143
    const-string p1, "sample-rate"

    invoke-virtual {p2, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/conceptglobal/pmc/promotions/video/Track;->timeScale:I

    .line 144
    const-string p3, "soun"

    iput-object p3, p0, Lcom/conceptglobal/pmc/promotions/video/Track;->handler:Ljava/lang/String;

    .line 145
    new-instance p3, Lcom/coremedia/iso/boxes/SoundMediaHeaderBox;

    invoke-direct {p3}, Lcom/coremedia/iso/boxes/SoundMediaHeaderBox;-><init>()V

    iput-object p3, p0, Lcom/conceptglobal/pmc/promotions/video/Track;->headerBox:Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;

    .line 146
    new-instance p3, Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-direct {p3}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;-><init>()V

    iput-object p3, p0, Lcom/conceptglobal/pmc/promotions/video/Track;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    .line 147
    new-instance p3, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;

    const-string v1, "mp4a"

    invoke-direct {p3, v1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;-><init>(Ljava/lang/String;)V

    .line 148
    const-string v1, "channel-count"

    invoke-virtual {p2, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p3, v1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setChannelCount(I)V

    .line 149
    invoke-virtual {p2, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    int-to-long p1, p1

    invoke-virtual {p3, p1, p2}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setSampleRate(J)V

    .line 150
    invoke-virtual {p3, v0}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setDataReferenceIndex(I)V

    const/16 p1, 0x10

    .line 151
    invoke-virtual {p3, p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setSampleSize(I)V

    .line 153
    new-instance p1, Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;

    invoke-direct {p1}, Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;-><init>()V

    .line 154
    new-instance p2, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;

    invoke-direct {p2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;-><init>()V

    .line 155
    invoke-virtual {p2, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->setEsId(I)V

    .line 157
    new-instance v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;-><init>()V

    const/4 v1, 0x2

    .line 158
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;->setPredefined(I)V

    .line 159
    invoke-virtual {p2, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->setSlConfigDescriptor(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;)V

    .line 161
    new-instance v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;-><init>()V

    const/16 v2, 0x40

    .line 162
    invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->setObjectTypeIndication(I)V

    const/4 v2, 0x5

    .line 163
    invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->setStreamType(I)V

    const/16 v2, 0x600

    .line 164
    invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->setBufferSizeDB(I)V

    const-wide/32 v2, 0x17700

    .line 165
    invoke-virtual {v0, v2, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->setMaxBitRate(J)V

    .line 166
    invoke-virtual {v0, v2, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->setAvgBitRate(J)V

    .line 168
    new-instance v2, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;

    invoke-direct {v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;-><init>()V

    .line 169
    invoke-virtual {v2, v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->setAudioObjectType(I)V

    .line 170
    sget-object v1, Lcom/conceptglobal/pmc/promotions/video/Track;->samplingFrequencyIndexMap:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSampleRate()J

    move-result-wide v3

    long-to-int v4, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->setSamplingFrequencyIndex(I)V

    .line 171
    invoke-virtual {p3}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getChannelCount()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->setChannelConfiguration(I)V

    .line 172
    invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->setAudioSpecificInfo(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;)V

    .line 174
    invoke-virtual {p2, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->setDecoderConfigDescriptor(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;)V

    .line 176
    invoke-virtual {p2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->serialize()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 177
    invoke-virtual {p1, p2}, Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;->setEsDescriptor(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;)V

    .line 178
    invoke-virtual {p1, v0}, Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;->setData(Ljava/nio/ByteBuffer;)V

    .line 179
    invoke-virtual {p3, p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 180
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/video/Track;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-virtual {p1, p3}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public addSample(JLandroid/media/MediaCodec$BufferInfo;)V
    .locals 7

    .line 189
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/promotions/video/Track;->isAudio:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 190
    :goto_0
    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/video/Track;->samples:Ljava/util/ArrayList;

    new-instance v4, Lcom/conceptglobal/pmc/promotions/video/Sample;

    iget v5, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    int-to-long v5, v5

    invoke-direct {v4, p1, p2, v5, v6}, Lcom/conceptglobal/pmc/promotions/video/Sample;-><init>(JJ)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/video/Track;->syncSamples:Ljava/util/LinkedList;

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 192
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/video/Track;->samples:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 195
    :cond_1
    iget-wide p1, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v3, p0, Lcom/conceptglobal/pmc/promotions/video/Track;->lastPresentationTimeUs:J

    sub-long/2addr p1, v3

    .line 196
    iget-wide v3, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v3, p0, Lcom/conceptglobal/pmc/promotions/video/Track;->lastPresentationTimeUs:J

    .line 197
    iget p3, p0, Lcom/conceptglobal/pmc/promotions/video/Track;->timeScale:I

    int-to-long v3, p3

    mul-long p1, p1, v3

    const-wide/32 v3, 0x7a120

    add-long/2addr p1, v3

    const-wide/32 v3, 0xf4240

    div-long/2addr p1, v3

    .line 198
    iget-boolean p3, p0, Lcom/conceptglobal/pmc/promotions/video/Track;->first:Z

    if-nez p3, :cond_2

    .line 199
    iget-object p3, p0, Lcom/conceptglobal/pmc/promotions/video/Track;->sampleDurations:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p3, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 200
    iget-wide v2, p0, Lcom/conceptglobal/pmc/promotions/video/Track;->duration:J

    add-long/2addr v2, p1

    iput-wide v2, p0, Lcom/conceptglobal/pmc/promotions/video/Track;->duration:J

    .line 202
    :cond_2
    iput-boolean v1, p0, Lcom/conceptglobal/pmc/promotions/video/Track;->first:Z

    return-void
.end method

.method public getCreationTime()Ljava/util/Date;
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/video/Track;->creationTime:Ljava/util/Date;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 210
    iget-wide v0, p0, Lcom/conceptglobal/pmc/promotions/video/Track;->duration:J

    return-wide v0
.end method

.method public getHandler()Ljava/lang/String;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/video/Track;->handler:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 249
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/video/Track;->height:I

    return v0
.end method

.method public getMediaHeaderBox()Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/video/Track;->headerBox:Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;

    return-object v0
.end method

.method public getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/video/Track;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    return-object v0
.end method

.method public getSampleDurations()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/video/Track;->sampleDurations:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSamples()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/conceptglobal/pmc/promotions/video/Sample;",
            ">;"
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/video/Track;->samples:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSyncSamples()[J
    .locals 4

    .line 226
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/video/Track;->syncSamples:Ljava/util/LinkedList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/video/Track;->syncSamples:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    new-array v0, v0, [J

    const/4 v1, 0x0

    .line 230
    :goto_0
    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/video/Track;->syncSamples:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 231
    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/video/Track;->syncSamples:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTimeScale()I
    .locals 1

    .line 237
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/video/Track;->timeScale:I

    return v0
.end method

.method public getTrackId()J
    .locals 2

    .line 185
    iget-wide v0, p0, Lcom/conceptglobal/pmc/promotions/video/Track;->trackId:J

    return-wide v0
.end method

.method public getVolume()F
    .locals 1

    .line 253
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/video/Track;->volume:F

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 245
    iget v0, p0, Lcom/conceptglobal/pmc/promotions/video/Track;->width:I

    return v0
.end method

.method public isAudio()Z
    .locals 1

    .line 261
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/promotions/video/Track;->isAudio:Z

    return v0
.end method

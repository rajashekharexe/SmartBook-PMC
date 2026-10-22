.class public Lcom/conceptglobal/pmc/promotions/video/MediaController$VideoConvertRunnable;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/promotions/video/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoConvertRunnable"
.end annotation


# instance fields
.field private videoPath:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/video/MediaController$VideoConvertRunnable;->videoPath:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/conceptglobal/pmc/promotions/video/MediaController$1;)V
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/promotions/video/MediaController$VideoConvertRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static runConversion(Ljava/lang/String;)V
    .locals 2

    .line 99
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/conceptglobal/pmc/promotions/video/MediaController$VideoConvertRunnable$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/promotions/video/MediaController$VideoConvertRunnable$1;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 111
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 116
    invoke-static {}, Lcom/conceptglobal/pmc/promotions/video/MediaController;->getInstance()Lcom/conceptglobal/pmc/promotions/video/MediaController;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/video/MediaController$VideoConvertRunnable;->videoPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/promotions/video/MediaController;->convertVideo(Ljava/lang/String;)Z

    return-void
.end method

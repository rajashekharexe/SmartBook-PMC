.class public Lcom/conceptglobal/pmc/camera2/ReducePixelImage;
.super Ljava/lang/Object;
.source "ReducePixelImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field mCapturedImage:Landroid/media/Image;

.field mHeight:I

.field mIBitmapConnector:Lcom/conceptglobal/pmc/camera2/IBitmapConnector;

.field mWidth:I


# direct methods
.method public constructor <init>(Landroid/media/Image;IILcom/conceptglobal/pmc/camera2/IBitmapConnector;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p2, p0, Lcom/conceptglobal/pmc/camera2/ReducePixelImage;->mWidth:I

    .line 23
    iput p3, p0, Lcom/conceptglobal/pmc/camera2/ReducePixelImage;->mHeight:I

    .line 25
    iput-object p1, p0, Lcom/conceptglobal/pmc/camera2/ReducePixelImage;->mCapturedImage:Landroid/media/Image;

    .line 27
    iput-object p4, p0, Lcom/conceptglobal/pmc/camera2/ReducePixelImage;->mIBitmapConnector:Lcom/conceptglobal/pmc/camera2/IBitmapConnector;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/ReducePixelImage;->mIBitmapConnector:Lcom/conceptglobal/pmc/camera2/IBitmapConnector;

    iget-object v1, p0, Lcom/conceptglobal/pmc/camera2/ReducePixelImage;->mCapturedImage:Landroid/media/Image;

    invoke-interface {v0, v1}, Lcom/conceptglobal/pmc/camera2/IBitmapConnector;->setReducedBitmap(Landroid/media/Image;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 58
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.class public Lcom/conceptglobal/pmc/camera2/PhotoActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "PhotoActivity.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ORIENTATIONS:Landroid/util/SparseIntArray;

.field private static final TAG:Ljava/lang/String; = "AndroidCameraApi"


# instance fields
.field private cameraCaptureSessions:Landroid/hardware/camera2/CameraCaptureSession;

.field private cameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private cameraId:Ljava/lang/String;

.field private captureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

.field private file:Ljava/io/File;

.field private imageDimension:Landroid/util/Size;

.field private imageReader:Landroid/media/ImageReader;

.field private ivPhoto:Landroid/widget/ImageView;

.field private lytBottom:Landroid/widget/LinearLayout;

.field private mBackgroundHandler:Landroid/os/Handler;

.field private mBackgroundThread:Landroid/os/HandlerThread;

.field private final readerListener:Landroid/media/ImageReader$OnImageAvailableListener;

.field private final stateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field private takePictureButton:Landroid/widget/ImageView;

.field private final textureListener:Landroid/view/TextureView$SurfaceTextureListener;

.field private textureView:Landroid/view/TextureView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 57
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->ORIENTATIONS:Landroid/util/SparseIntArray;

    const/16 v1, 0x5a

    const/4 v2, 0x0

    .line 60
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v1, 0x1

    .line 61
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v1, 0x2

    const/16 v2, 0x10e

    .line 62
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v1, 0x3

    const/16 v2, 0xb4

    .line 63
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 81
    new-instance v0, Lcom/conceptglobal/pmc/camera2/PhotoActivity$1;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/camera2/PhotoActivity$1;-><init>(Lcom/conceptglobal/pmc/camera2/PhotoActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->textureListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 99
    new-instance v0, Lcom/conceptglobal/pmc/camera2/PhotoActivity$2;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/camera2/PhotoActivity$2;-><init>(Lcom/conceptglobal/pmc/camera2/PhotoActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->stateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 133
    new-instance v0, Lcom/conceptglobal/pmc/camera2/PhotoActivity$3;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/camera2/PhotoActivity$3;-><init>(Lcom/conceptglobal/pmc/camera2/PhotoActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->readerListener:Landroid/media/ImageReader$OnImageAvailableListener;

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/camera2/PhotoActivity;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->openCamera()V

    return-void
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/camera2/PhotoActivity;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p0
.end method

.method static synthetic access$102(Lcom/conceptglobal/pmc/camera2/PhotoActivity;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p1
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/camera2/PhotoActivity;)Ljava/io/File;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->file:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$302(Lcom/conceptglobal/pmc/camera2/PhotoActivity;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->cameraCaptureSessions:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p1
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/camera2/PhotoActivity;)Landroid/os/Handler;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->mBackgroundHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private closeCamera()V
    .locals 3

    .line 364
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 365
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 366
    iput-object v1, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->imageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_1

    .line 370
    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 371
    iput-object v1, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->imageReader:Landroid/media/ImageReader;

    .line 373
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->cameraCaptureSessions:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_2

    .line 375
    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    .line 376
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->cameraCaptureSessions:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V

    .line 377
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->cameraCaptureSessions:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 379
    :goto_0
    const-string v2, "AndroidCameraApi closeCamera error"

    invoke-static {v2, v0}, Lcom/conceptglobal/pmc/utils/PLog;->ecam(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 381
    :goto_1
    iput-object v1, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->cameraCaptureSessions:Landroid/hardware/camera2/CameraCaptureSession;

    :cond_2
    return-void
.end method

.method private openCamera()V
    .locals 6

    .line 208
    const-string v0, "android.permission.CAMERA"

    const-string v1, "AndroidCameraApi capturing image logic"

    const-string v2, "camera"

    invoke-virtual {p0, v2}, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraManager;

    .line 210
    :try_start_0
    invoke-virtual {v2}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->cameraId:Ljava/lang/String;

    .line 211
    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v3

    .line 212
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 214
    const-class v5, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v3, v5}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v3

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->imageDimension:Landroid/util/Size;

    .line 216
    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 217
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xc8

    invoke-static {p0, v0, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void

    :cond_0
    const/16 v0, 0x100

    const/4 v3, 0x1

    const/16 v4, 0x280

    const/16 v5, 0x1e0

    .line 221
    invoke-static {v4, v5, v0, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->imageReader:Landroid/media/ImageReader;

    .line 222
    iget-object v3, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->readerListener:Landroid/media/ImageReader$OnImageAvailableListener;

    iget-object v4, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v4}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 224
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->cameraId:Ljava/lang/String;

    iget-object v3, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->stateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 230
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 231
    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->ecam(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 227
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 228
    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->ecam(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private save([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 184
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    .line 183
    :try_start_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method

.method private startBackgroundThread()V
    .locals 2

    .line 344
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CameraBackground"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 345
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 346
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->mBackgroundHandler:Landroid/os/Handler;

    return-void
.end method

.method private stopBackgroundThread()V
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->mBackgroundThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 351
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 353
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V

    const/4 v0, 0x0

    .line 354
    iput-object v0, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 355
    iput-object v0, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->mBackgroundHandler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 357
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method protected createCameraPreview()V
    .locals 4

    .line 237
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-nez v0, :cond_0

    .line 239
    const-string v0, "AndroidCameraApi"

    const-string v1, "SurfaceTexture is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 243
    :cond_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->imageDimension:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->imageDimension:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 244
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 245
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->captureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 246
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 248
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    new-array v2, v2, [Landroid/view/Surface;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/camera2/PhotoActivity$4;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/camera2/PhotoActivity$4;-><init>(Lcom/conceptglobal/pmc/camera2/PhotoActivity;)V

    iget-object v3, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 264
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 265
    const-string v1, "AndroidCameraApi CameraPreview Creation logic"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->ecam(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$onCreate$0$com-conceptglobal-pmc-camera2-PhotoActivity()V
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->takePictureButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method synthetic lambda$onCreate$1$com-conceptglobal-pmc-camera2-PhotoActivity(Landroid/view/View;)V
    .locals 3

    .line 201
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->takePictureButton:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 202
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->takePicture()V

    .line 203
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/conceptglobal/pmc/camera2/PhotoActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/camera2/PhotoActivity$$ExternalSyntheticLambda1;-><init>(Lcom/conceptglobal/pmc/camera2/PhotoActivity;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 420
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x3f1

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 422
    invoke-virtual {p0, p1, p3}, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->setResult(ILandroid/content/Intent;)V

    .line 423
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 190
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0034

    .line 191
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->setContentView(I)V

    const p1, 0x7f090452

    .line 193
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/TextureView;

    iput-object p1, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->textureView:Landroid/view/TextureView;

    const p1, 0x7f0900bd

    .line 194
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->takePictureButton:Landroid/widget/ImageView;

    const p1, 0x7f090261

    .line 195
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->ivPhoto:Landroid/widget/ImageView;

    .line 198
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->textureView:Landroid/view/TextureView;

    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->textureListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 200
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->takePictureButton:Landroid/widget/ImageView;

    new-instance v0, Lcom/conceptglobal/pmc/camera2/PhotoActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/camera2/PhotoActivity$$ExternalSyntheticLambda0;-><init>(Lcom/conceptglobal/pmc/camera2/PhotoActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 402
    const-string v0, "AndroidCameraApi"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    const-string v0, "AndroidCameraApionPause"

    const-string v1, "Pause called"

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/utils/PLog;->eCam(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 405
    invoke-direct {p0}, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->closeCamera()V

    .line 406
    invoke-direct {p0}, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->stopBackgroundThread()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    const/16 p2, 0xc8

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    .line 412
    aget p1, p3, p1

    if-eqz p1, :cond_0

    .line 413
    const-string p1, "Camera permission is required"

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 414
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 388
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 389
    const-string v0, "AndroidCameraApi"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const-string v0, "AndroidCameraApionResume"

    const-string v1, "Resume called"

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/utils/PLog;->eCam(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    invoke-direct {p0}, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->startBackgroundThread()V

    .line 393
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    invoke-direct {p0}, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->openCamera()V

    goto :goto_0

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->textureView:Landroid/view/TextureView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->textureListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    :goto_0
    return-void
.end method

.method protected takePicture()V
    .locals 8

    .line 286
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    const-string v1, "AndroidCameraApi CameraPreview Update logic"

    if-nez v0, :cond_0

    .line 287
    const-string v0, "AndroidCameraApi"

    const-string v2, "CameraDevice is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const-string v0, "updatePreview error"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->eCam(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v2, 0x2

    .line 294
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 295
    iget-object v3, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->imageReader:Landroid/media/ImageReader;

    invoke-virtual {v3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 296
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 298
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    .line 299
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v6, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->ORIENTATIONS:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 301
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v5, "imagePath"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 302
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->file:Ljava/io/File;

    .line 304
    iget-object v3, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    iget-object v5, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->imageReader:Landroid/media/ImageReader;

    invoke-virtual {v5}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v5

    new-instance v6, Landroid/view/Surface;

    iget-object v7, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->textureView:Landroid/view/TextureView;

    invoke-virtual {v7}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    new-array v2, v2, [Landroid/view/Surface;

    const/4 v7, 0x0

    aput-object v5, v2, v7

    aput-object v6, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-instance v4, Lcom/conceptglobal/pmc/camera2/PhotoActivity$5;

    invoke-direct {v4, p0, v0}, Lcom/conceptglobal/pmc/camera2/PhotoActivity$5;-><init>(Lcom/conceptglobal/pmc/camera2/PhotoActivity;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2, v4, v0}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 338
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 339
    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->ecam(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method protected updatePreview()V
    .locals 4

    .line 270
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->cameraCaptureSessions:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 276
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->captureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 277
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->cameraCaptureSessions:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v1, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->captureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/camera2/PhotoActivity;->mBackgroundHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 279
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 280
    const-string v1, "AndroidCameraApi updatePreview error"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->ecam(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 282
    :goto_1
    const-string v0, "AndroidCameraApi CameraPreview Creation logic"

    const-string v1, "Camera Opened"

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/utils/PLog;->eCam(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 271
    :cond_1
    :goto_2
    const-string v0, "AndroidCameraApi updatePreview"

    const-string v1, "cameraDevice or session is null (possibly already closed)"

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/utils/PLog;->eCam(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

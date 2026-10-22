.class public Lcom/conceptglobal/pmc/camera2/CameraActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "CameraActivity.java"

# interfaces
.implements Lcom/conceptglobal/pmc/camera2/ICameraFacing;
.implements Lcom/conceptglobal/pmc/camera2/IBitmapConnector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/camera2/CameraActivity$ImageSaver;,
        Lcom/conceptglobal/pmc/camera2/CameraActivity$VideoSaver;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ORIENTATIONS:Landroid/util/SparseIntArray;

.field private static final REQUEST_CAMERA_PERMISSION:I = 0x1

.field private static final REQUEST_CODE_READ_PERMISSION:I = 0x1

.field public static final REQUEST_CODE_SETTINGS:I = 0x312

.field private static final REQUEST_CODE_VIDEO_PERMISSION:I = 0x312

.field private static final STATE_PICTURE_TAKEN:I = 0x4

.field private static final STATE_PREVIEW:I = 0x0

.field private static final STATE_WAITING_LOCK:I = 0x1

.field private static final STATE_WAITING_NON_PRECAPTURE:I = 0x3

.field private static final STATE_WAITING_PRECAPTURE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Camera2API"

.field private static fileName:Ljava/lang/String;

.field static tempImageUri:Landroid/net/Uri;


# instance fields
.field private ASPECT_RATIO_ERROR_RANGE:F

.field CAMERA_POSITION_BACK:Ljava/lang/String;

.field CAMERA_POSITION_FRONT:Ljava/lang/String;

.field private MAX_PREVIEW_HEIGHT:I

.field private MAX_PREVIEW_WIDTH:I

.field private SCREEN_HEIGHT:I

.field private SCREEN_WIDTH:I

.field private isVideorecording:Z

.field private mAcceptImage:Landroid/widget/ImageButton;

.field private mBackgroundHandler:Landroid/os/Handler;

.field private mBackgroundThread:Landroid/os/HandlerThread;

.field mCamera:Landroid/widget/ImageButton;

.field private mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private mCameraId:Ljava/lang/String;

.field private mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

.field private mCameraOrientation:Ljava/lang/String;

.field mCameraSettingModel:Lcom/conceptglobal/pmc/camera2/CameraSettingModel;

.field private mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field private mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private mCapturedImage:Landroid/media/Image;

.field private mChronometer:Landroid/widget/Chronometer;

.field private mConstraintContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mDiscardImage:Landroid/widget/ImageButton;

.field mHighSpeedVideoresolutions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field private mIBitmapConnector:Lcom/conceptglobal/pmc/camera2/IBitmapConnector;

.field mICameraFacing:Lcom/conceptglobal/pmc/camera2/ICameraFacing;

.field mImageQuality:Ljava/lang/String;

.field private mImageReader:Landroid/media/ImageReader;

.field mImageResolution:Ljava/lang/String;

.field private mInternalMemoryImage:Landroid/widget/ImageView;

.field private mIsImageAvailable:Z

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private final mOnImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

.field private mOrientation:Landroid/widget/ImageButton;

.field mPhotoImagePath:Ljava/lang/String;

.field private mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

.field private mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

.field private mPreviewSize:Landroid/util/Size;

.field private mPrimayContainerImageView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSensorOrientation:I

.field private mSettings:Landroid/widget/ImageButton;

.field private mState:I

.field private final mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field private mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

.field private mTextureView:Lcom/conceptglobal/pmc/camera2/ScalingTextureView;

.field mVideResolution:Ljava/lang/String;

.field private mVideoFileName:Ljava/lang/String;

.field private mVideoFolder:Ljava/io/File;

.field mVideoQuality:Ljava/lang/String;

.field private mVideoRecorder:Landroid/widget/ImageButton;

.field private mVideoSize:Landroid/util/Size;

.field mVideoUpdate:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 251
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->ORIENTATIONS:Landroid/util/SparseIntArray;

    const/16 v1, 0x5a

    const/4 v2, 0x0

    .line 254
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v1, 0x1

    .line 255
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v1, 0x2

    const/16 v2, 0x10e

    .line 256
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v1, 0x3

    const/16 v2, 0xb4

    .line 257
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 92
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 98
    const-string v0, ""

    iput-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mPhotoImagePath:Ljava/lang/String;

    .line 100
    const-string v1, "HIGH"

    iput-object v1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mVideoQuality:Ljava/lang/String;

    .line 101
    const-string v1, "640*480"

    iput-object v1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mVideResolution:Ljava/lang/String;

    .line 102
    const-string v1, "100"

    iput-object v1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mImageQuality:Ljava/lang/String;

    .line 103
    const-string v1, "1920*1080"

    iput-object v1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mImageResolution:Ljava/lang/String;

    .line 117
    const-string v1, "none"

    iput-object v1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mCameraOrientation:Ljava/lang/String;

    .line 122
    iput-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->CAMERA_POSITION_FRONT:Ljava/lang/String;

    .line 123
    iput-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->CAMERA_POSITION_BACK:Ljava/lang/String;

    const/4 v0, 0x0

    .line 138
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mIsImageAvailable:Z

    .line 153
    iput v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mState:I

    .line 160
    new-instance v1, Ljava/util/concurrent/Semaphore;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    const/16 v1, 0x780

    .line 215
    iput v1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->MAX_PREVIEW_WIDTH:I

    const/16 v1, 0x438

    .line 220
    iput v1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->MAX_PREVIEW_HEIGHT:I

    .line 222
    iput v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->SCREEN_WIDTH:I

    .line 225
    iput v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->SCREEN_HEIGHT:I

    const v1, 0x3dcccccd    # 0.1f

    .line 227
    iput v1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->ASPECT_RATIO_ERROR_RANGE:F

    .line 229
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->isVideorecording:Z

    .line 570
    new-instance v0, Lcom/conceptglobal/pmc/camera2/CameraActivity$6;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity$6;-><init>(Lcom/conceptglobal/pmc/camera2/CameraActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 781
    new-instance v0, Lcom/conceptglobal/pmc/camera2/CameraActivity$12;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity$12;-><init>(Lcom/conceptglobal/pmc/camera2/CameraActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1199
    new-instance v0, Lcom/conceptglobal/pmc/camera2/CameraActivity$20;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity$20;-><init>(Lcom/conceptglobal/pmc/camera2/CameraActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 1670
    new-instance v0, Lcom/conceptglobal/pmc/camera2/CameraActivity$29;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity$29;-><init>(Lcom/conceptglobal/pmc/camera2/CameraActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 2237
    new-instance v0, Lcom/conceptglobal/pmc/camera2/CameraActivity$40;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity$40;-><init>(Lcom/conceptglobal/pmc/camera2/CameraActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mOnImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    return-void
.end method

.method private acceptImage()V
    .locals 2

    .line 322
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mAcceptImage:Landroid/widget/ImageButton;

    new-instance v1, Lcom/conceptglobal/pmc/camera2/CameraActivity$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity$1;-><init>(Lcom/conceptglobal/pmc/camera2/CameraActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 92
    sget-object v0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 92
    sput-object p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->fileName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/camera2/CameraActivity;)Ljava/lang/String;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mVideoFileName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/conceptglobal/pmc/camera2/CameraActivity;[B)V
    .locals 0

    .line 92
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->displayCapturedImage([B)V

    return-void
.end method

.method static synthetic access$1100(Lcom/conceptglobal/pmc/camera2/CameraActivity;)Z
    .locals 0

    .line 92
    iget-boolean p0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->isVideorecording:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/conceptglobal/pmc/camera2/CameraActivity;Z)Z
    .locals 0

    .line 92
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->isVideorecording:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/conceptglobal/pmc/camera2/CameraActivity;)Landroid/widget/ImageButton;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mVideoRecorder:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/conceptglobal/pmc/camera2/CameraActivity;I)V
    .locals 0

    .line 92
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->startRecord(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/conceptglobal/pmc/camera2/CameraActivity;)Landroid/media/MediaRecorder;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mMediaRecorder:Landroid/media/MediaRecorder;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/conceptglobal/pmc/camera2/CameraActivity;Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder;
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mMediaRecorder:Landroid/media/MediaRecorder;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/conceptglobal/pmc/camera2/CameraActivity;)Landroid/widget/Chronometer;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mChronometer:Landroid/widget/Chronometer;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/conceptglobal/pmc/camera2/CameraActivity;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->takePicture()V

    return-void
.end method

.method static synthetic access$1700(Lcom/conceptglobal/pmc/camera2/CameraActivity;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->toggleCameraDisplayOrientation()V

    return-void
.end method

.method static synthetic access$1800(Lcom/conceptglobal/pmc/camera2/CameraActivity;)Ljava/util/concurrent/Semaphore;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/conceptglobal/pmc/camera2/CameraActivity;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p0
.end method

.method static synthetic access$1902(Lcom/conceptglobal/pmc/camera2/CameraActivity;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p1
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/camera2/CameraActivity;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->closeCamera()V

    return-void
.end method

.method static synthetic access$2000(Lcom/conceptglobal/pmc/camera2/CameraActivity;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->createCameraPreviewSession()V

    return-void
.end method

.method static synthetic access$2100(Lcom/conceptglobal/pmc/camera2/CameraActivity;)I
    .locals 0

    .line 92
    iget p0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mState:I

    return p0
.end method

.method static synthetic access$2102(Lcom/conceptglobal/pmc/camera2/CameraActivity;I)I
    .locals 0

    .line 92
    iput p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mState:I

    return p1
.end method

.method static synthetic access$2200(Lcom/conceptglobal/pmc/camera2/CameraActivity;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->captureStillPicture()V

    return-void
.end method

.method static synthetic access$2300(Lcom/conceptglobal/pmc/camera2/CameraActivity;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->runPrecaptureSequence()V

    return-void
.end method

.method static synthetic access$2400(Lcom/conceptglobal/pmc/camera2/CameraActivity;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->unlockFocus()V

    return-void
.end method

.method static synthetic access$2500(Lcom/conceptglobal/pmc/camera2/CameraActivity;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p0
.end method

.method static synthetic access$2502(Lcom/conceptglobal/pmc/camera2/CameraActivity;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/conceptglobal/pmc/camera2/CameraActivity;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/conceptglobal/pmc/camera2/CameraActivity;)Landroid/hardware/camera2/CaptureRequest;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

    return-object p0
.end method

.method static synthetic access$2702(Lcom/conceptglobal/pmc/camera2/CameraActivity;Landroid/hardware/camera2/CaptureRequest;)Landroid/hardware/camera2/CaptureRequest;
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/conceptglobal/pmc/camera2/CameraActivity;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/conceptglobal/pmc/camera2/CameraActivity;)Landroid/os/Handler;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mBackgroundHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/camera2/CameraActivity;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->reOpenCamera()V

    return-void
.end method

.method static synthetic access$3000(Lcom/conceptglobal/pmc/camera2/CameraActivity;Ljava/lang/String;I)V
    .locals 0

    .line 92
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->showSnackBar(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$3100(Lcom/conceptglobal/pmc/camera2/CameraActivity;)Landroid/media/Image;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mCapturedImage:Landroid/media/Image;

    return-object p0
.end method

.method static synthetic access$3102(Lcom/conceptglobal/pmc/camera2/CameraActivity;Landroid/media/Image;)Landroid/media/Image;
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mCapturedImage:Landroid/media/Image;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/conceptglobal/pmc/camera2/CameraActivity;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->saveTempImageToStorage()V

    return-void
.end method

.method static synthetic access$3300(Lcom/conceptglobal/pmc/camera2/CameraActivity;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->showStillshotContainer()V

    return-void
.end method

.method static synthetic access$3400(Lcom/conceptglobal/pmc/camera2/CameraActivity;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->videoRecording()V

    return-void
.end method

.method static synthetic access$3500(Lcom/conceptglobal/pmc/camera2/CameraActivity;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->setVideoRecording()V

    return-void
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/camera2/CameraActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mInternalMemoryImage:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/conceptglobal/pmc/camera2/CameraActivity;)Landroid/widget/ImageButton;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mDiscardImage:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$600(Lcom/conceptglobal/pmc/camera2/CameraActivity;)Landroid/widget/ImageButton;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mAcceptImage:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$700(Lcom/conceptglobal/pmc/camera2/CameraActivity;)Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mConstraintContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method

.method static synthetic access$800(Lcom/conceptglobal/pmc/camera2/CameraActivity;)Z
    .locals 0

    .line 92
    iget-boolean p0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mIsImageAvailable:Z

    return p0
.end method

.method static synthetic access$802(Lcom/conceptglobal/pmc/camera2/CameraActivity;Z)Z
    .locals 0

    .line 92
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mIsImageAvailable:Z

    return p1
.end method

.method static synthetic access$900(Lcom/conceptglobal/pmc/camera2/CameraActivity;II)V
    .locals 0

    .line 92
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->openCamera(II)V

    return-void
.end method

.method public static addImageToGallery(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    .line 2317
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2318
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "datetaken"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2319
    const-string v1, "_data"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2320
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void
.end method

.method private askPermission(II)V
    .locals 2

    .line 1180
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->setUpCameraOutputs(II)V

    .line 1181
    const-string p1, "camera"

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraManager;

    .line 1183
    :try_start_0
    iget-object p2, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mCameraId:Ljava/lang/String;

    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    iget-object v1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2, v0, v1}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 1186
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    :goto_1
    return-void
.end method

.method private captureStillPicture()V
    .locals 5

    .line 1862
    const-string v0, "Camera2API"

    const-string v1, "captureStillPicture: capturing picture."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1867
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    .line 1872
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 1875
    iget-object v1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 1878
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x4

    .line 1879
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1878
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1883
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 1884
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0, v1}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->getOrientation(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1889
    new-instance v1, Lcom/conceptglobal/pmc/camera2/CameraActivity$31;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity$31;-><init>(Lcom/conceptglobal/pmc/camera2/CameraActivity;)V

    .line 1900
    iget-object v2, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    .line 1901
    iget-object v2, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V

    .line 1902
    iget-object v2, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1905
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1906
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "PMC POC"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/conceptglobal/pmc/camera2/CameraActivity$32;

    invoke-direct {v3, p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity$32;-><init>(Lcom/conceptglobal/pmc/camera2/CameraActivity;)V

    const-string v4, "ok"

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1913
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1914
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1915
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private closeCamera()V
    .locals 6

    .line 2559
    const-string v0, "ok"

    const-string v1, "PMC POC"

    .line 0
    const-string v2, "Interrupted while trying to lock camera closing.\n"

    .line 2559
    :try_start_0
    iget-object v3, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 2560
    iget-object v3, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 2561
    invoke-virtual {v3}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 2562
    iput-object v4, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 2564
    :cond_0
    iget-object v3, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v3, :cond_1

    .line 2565
    invoke-virtual {v3}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 2568
    iput-object v4, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 2570
    :cond_1
    iget-object v3, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mImageReader:Landroid/media/ImageReader;

    if-eqz v3, :cond_2

    .line 2571
    invoke-virtual {v3}, Landroid/media/ImageReader;->close()V

    .line 2572
    iput-object v4, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mImageReader:Landroid/media/ImageReader;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2590
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 2592
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2593
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/camera2/CameraActivity$43;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity$43;-><init>(Lcom/conceptglobal/pmc/camera2/CameraActivity;)V

    :goto_0
    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2600
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2601
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_1
    move-exception v3

    .line 2575
    :try_start_2
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2576
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/conceptglobal/pmc/camera2/CameraActivity$42;

    invoke-direct {v3, p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity$42;-><init>(Lcom/conceptglobal/pmc/camera2/CameraActivity;)V

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2583
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 2584
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2590
    :try_start_3
    iget-object v2, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v2

    .line 2592
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2593
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/camera2/CameraActivity$43;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity$43;-><init>(Lcom/conceptglobal/pmc/camera2/CameraActivity;)V

    goto :goto_0

    :goto_1
    return-void

    .line 2590
    :goto_2
    :try_start_4
    iget-object v3, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception v3

    .line 2592
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2593
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v3, Lcom/conceptglobal/pmc/camera2/CameraActivity$43;

    invoke-direct {v3, p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity$43;-><init>(Lcom/conceptglobal/pmc/camera2/CameraActivity;)V

    invoke-virtual {v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2600
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2601
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2605
    :goto_3
    throw v2
.end method

.method private createCameraPreviewSession()V
    .locals 6

    .line 1983
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mTextureView:Lcom/conceptglobal/pmc/camera2/ScalingTextureView;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/camera2/ScalingTextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    .line 1987
    iget-object v1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 1991
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 1994
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v2, 0x1

    .line 1995
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 1996
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 2000
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    iget-object v3, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/view/Surface;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    aput-object v3, v4, v2

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/camera2/CameraActivity$34;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity$34;-><init>(Lcom/conceptglobal/pmc/camera2/CameraActivity;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2036
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2037
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v2, "PMC POC"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/conceptglobal/pmc/camera2/CameraActivity$35;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity$35;-><init>(Lcom/conceptglobal/pmc/camera2/CameraActivity;)V

    const-string v3, "ok"

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2044
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2045
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :goto_0
    return-void
.end method

.method private discardImage()V
    .locals 2

    .line 407
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mDiscardImage:Landroid/widget/ImageButton;

    new-instance v1, Lcom/conceptglobal/pmc/camera2/CameraActivity$2;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity$2;-><init>(Lcom/conceptglobal/pmc/camera2/CameraActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private displayCapturedImage([B)V
    .locals 3

    .line 2610
    const-string v0, "Camera2API"

    const-string v1, "displayCaptureImage: displaying stillshot image."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2615
    :try_start_0
    new-instance v0, Lcom/conceptglobal/pmc/camera2/CameraActivity$44;

    invoke-direct {v0, p0, p0, p1}, Lcom/conceptglobal/pmc/camera2/CameraActivity$44;-><init>(Lcom/conceptglobal/pmc/camera2/CameraActivity;Landroid/app/Activity;[B)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2635
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2636
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v1, "PMC POC"

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/conceptglobal/pmc/camera2/CameraActivity$45;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity$45;-><init>(Lcom/conceptglobal/pmc/camera2/CameraActivity;)V

    const-string v2, "ok"

    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2643
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 2644
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :goto_0
    return-void
.end method

.method private findCameraIds()V
    .locals 11

    .line 1558
    const-string v0, "ok"

    const-string v1, "PMC POC"

    .line 0
    const-string v2, "The list of available camera Id\'s are and ignoring the firstas it is front facing"

    .line 1559
    :try_start_0
    const-string v3, "camera"

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CameraManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1568
    :try_start_1
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1569
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1571
    invoke-virtual {v3}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1569
    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1572
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v5, Lcom/conceptglobal/pmc/camera2/CameraActivity$25;

    invoke-direct {v5, p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity$25;-><init>(Lcom/conceptglobal/pmc/camera2/CameraActivity;)V

    invoke-virtual {v2, v0, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1580
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 1581
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto/16 :goto_6

    .line 1584
    :catch_1
    :try_start_2
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1585
    const-string v4, "error printing the resolutions"

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/conceptglobal/pmc/camera2/CameraActivity$26;

    invoke-direct {v5, p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity$26;-><init>(Lcom/conceptglobal/pmc/camera2/CameraActivity;)V

    invoke-virtual {v4, v0, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1593
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 1594
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    :goto_0
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 1598
    :goto_1
    invoke-virtual {v3}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const/16 v6, 0x100

    const-string v7, "setCameraOrientation: CAMERA ID: "

    const-string v8, "Camera2API"

    if-ge v4, v5, :cond_2

    .line 1599
    :try_start_3
    invoke-virtual {v3}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v4

    .line 1600
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v5, :cond_0

    goto :goto_2

    .line 1602
    :cond_0
    invoke-virtual {v3}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v4

    invoke-virtual {v3, v7}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v7

    .line 1603
    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v7, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1605
    sget-object v9, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v7, v9}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/camera2/params/StreamConfigurationMap;

    if-nez v8, :cond_1

    .line 1607
    new-instance v8, Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v8, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1608
    iget-object v6, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mICameraFacing:Lcom/conceptglobal/pmc/camera2/ICameraFacing;

    invoke-interface {v6, v5}, Lcom/conceptglobal/pmc/camera2/ICameraFacing;->setFrontFacingCamera(Ljava/lang/String;)V

    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1618
    :cond_2
    :goto_3
    invoke-virtual {v3}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-ge v2, v4, :cond_5

    .line 1619
    invoke-virtual {v3}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v2

    .line 1620
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_3

    goto :goto_4

    .line 1622
    :cond_3
    invoke-virtual {v3}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v3, v5}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v5

    .line 1623
    sget-object v9, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v5, v9}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1625
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v5, v10}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/camera2/params/StreamConfigurationMap;

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    .line 1627
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1628
    iget-object v2, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mICameraFacing:Lcom/conceptglobal/pmc/camera2/ICameraFacing;

    invoke-interface {v2, v4}, Lcom/conceptglobal/pmc/camera2/ICameraFacing;->setBackFacingCamera(Ljava/lang/String;)V

    goto :goto_5

    :cond_4
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1634
    :cond_5
    :goto_5
    iget-object v2, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mICameraFacing:Lcom/conceptglobal/pmc/camera2/ICameraFacing;

    invoke-interface {v2}, Lcom/conceptglobal/pmc/camera2/ICameraFacing;->setCameraBackFacing()V

    .line 1635
    iget-object v2, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mICameraFacing:Lcom/conceptglobal/pmc/camera2/ICameraFacing;

    invoke-interface {v2}, Lcom/conceptglobal/pmc/camera2/ICameraFacing;->getBackCameraId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mCameraId:Ljava/lang/String;
    :try_end_3
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_7

    .line 1639
    :goto_6
    :try_start_4
    invoke-virtual {v2}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 1640
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1641
    invoke-virtual {v2}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v4, Lcom/conceptglobal/pmc/camera2/CameraActivity$27;

    invoke-direct {v4, p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity$27;-><init>(Lcom/conceptglobal/pmc/camera2/CameraActivity;)V

    invoke-virtual {v2, v0, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1648
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 1649
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_7

    :catch_2
    move-exception v2

    .line 1652
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1653
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/camera2/CameraActivity$28;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity$28;-><init>(Lcom/conceptglobal/pmc/camera2/CameraActivity;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1659
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1660
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :goto_7
    return-void
.end method

.method private getOrientation(I)I
    .locals 1

    .line 1956
    sget-object v0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->ORIENTATIONS:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    iget v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mSensorOrientation:I

    add-int/2addr p1, v0

    add-int/lit16 p1, p1, 0x10e

    rem-int/lit16 p1, p1, 0x168

    return p1
.end method

.method private initIntent()V
    .locals 4

    .line 1068
    :try_start_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "picture"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1070
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "forThreeMinuteVideo"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1072
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "image_path"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mPhotoImagePath:Ljava/lang/String;

    .line 1076
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "fromVideothubnail"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mVideoUpdate:Ljava/lang/String;

    const/16 v3, 0x8

    if-eqz v2, :cond_0

    .line 1081
    iget-object v2, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mOrientation:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_0
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1089
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 1091
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mCamera:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1092
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mVideoRecorder:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 1095
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mVideoRecorder:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1096
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mCamera:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1108
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1109
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v2, "PMC POC"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/conceptglobal/pmc/camera2/CameraActivity$18;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity$18;-><init>(Lcom/conceptglobal/pmc/camera2/CameraActivity;)V

    const-string v3, "ok"

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1116
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1117
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :goto_0
    return-void
.end method

.method private intViews()V
    .locals 2

    const v0, 0x7f09040f

    .line 2859
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mOrientation:Landroid/widget/ImageButton;

    const v0, 0x7f090135

    .line 2861
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mDiscardImage:Landroid/widget/ImageButton;

    const v0, 0x7f090017

    .line 2862
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mAcceptImage:Landroid/widget/ImageButton;

    const v0, 0x7f090376

    .line 2863
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mVideoRecorder:Landroid/widget/ImageButton;

    const v0, 0x7f09023d

    .line 2864
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mConstraintContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0902eb

    .line 2865
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mInternalMemoryImage:Landroid/widget/ImageView;

    const v0, 0x7f090358

    .line 2868
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mPrimayContainerImageView:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f090452

    .line 2870
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/camera2/ScalingTextureView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mTextureView:Lcom/conceptglobal/pmc/camera2/ScalingTextureView;

    const v0, 0x7f0900da

    .line 2871
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mCamera:Landroid/widget/ImageButton;

    const v0, 0x7f0902ec

    .line 2872
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Chronometer;

    iput-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mChronometer:Landroid/widget/Chronometer;

    const v0, 0x7f0903db

    .line 2874
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mSettings:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    .line 2876
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method

.method private lockFocus()V
    .locals 4

    .line 1146
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    .line 1148
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1146
    invoke-virtual {v0, v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1151
    iput v2, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mState:I

    .line 1154
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 1155
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v3, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mBackgroundHandler:Landroid/os/Handler;

    .line 1154
    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1162
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 1164
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1165
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v2, "PMC POC"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/conceptglobal/pmc/camera2/CameraActivity$19;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity$19;-><init>(Lcom/conceptglobal/pmc/camera2/CameraActivity;)V

    const-string v3, "ok"

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1172
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1173
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :goto_0
    return-void
.end method

.method private openCamera(II)V
    .locals 2

    .line 730
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->askPermission(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 732
    new-instance p2, Landroid/app/AlertDialog$Builder;

    invoke-direct {p2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 733
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "PMC POC"

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/conceptglobal/pmc/camera2/CameraActivity$10;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity$10;-><init>(Lcom/conceptglobal/pmc/camera2/CameraActivity;)V

    const-string v1, "ok"

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 740
    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 741
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :goto_0
    return-void
.end method

.method private reOpenCamera()V
    .locals 4

    .line 701
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mTextureView:Lcom/conceptglobal/pmc/camera2/ScalingTextureView;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/camera2/ScalingTextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 702
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mTextureView:Lcom/conceptglobal/pmc/camera2/ScalingTextureView;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/camera2/ScalingTextureView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mTextureView:Lcom/conceptglobal/pmc/camera2/ScalingTextureView;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/camera2/ScalingTextureView;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->openCamera(II)V

    goto :goto_0

    .line 707
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mTextureView:Lcom/conceptglobal/pmc/camera2/ScalingTextureView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/camera2/ScalingTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 712
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 713
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v2, "PMC POC"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/conceptglobal/pmc/camera2/CameraActivity$9;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity$9;-><init>(Lcom/conceptglobal/pmc/camera2/CameraActivity;)V

    const-string v3, "ok"

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 720
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 721
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :goto_0
    return-void
.end method

.method private runPrecaptureSequence()V
    .locals 5

    .line 1836
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    .line 1837
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1836
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 1839
    iput v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mState:I

    .line 1840
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v3, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1844
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1845
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "PMC POC"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/conceptglobal/pmc/camera2/CameraActivity$30;

    invoke-direct {v3, p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity$30;-><init>(Lcom/conceptglobal/pmc/camera2/CameraActivity;)V

    const-string v4, "ok"

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1852
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1853
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1855
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private saveTempImageToStorage()V
    .locals 0

    return-void
.end method

.method private setUpCameraOutputs(II)V
    .locals 20

    move-object/from16 v1, p0

    .line 1323
    const-string v0, ", h: "

    const-string v2, "ok"

    const-string v3, "PMC POC"

    const-string v4, "Camera2API"

    .line 0
    const-string v5, "setUpCameraOutputs: camera id: "

    .line 1329
    const-string v6, "camera"

    invoke-virtual {v1, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/camera2/CameraManager;

    .line 1332
    :try_start_0
    iput-object v1, v1, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mICameraFacing:Lcom/conceptglobal/pmc/camera2/ICameraFacing;

    .line 1334
    invoke-interface/range {p0 .. p0}, Lcom/conceptglobal/pmc/camera2/ICameraFacing;->isCameraBackFacing()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, v1, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mICameraFacing:Lcom/conceptglobal/pmc/camera2/ICameraFacing;

    invoke-interface {v7}, Lcom/conceptglobal/pmc/camera2/ICameraFacing;->isCameraFrontFacing()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1335
    invoke-direct/range {p0 .. p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->findCameraIds()V

    .line 1340
    :cond_0
    iget-object v7, v1, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mCameraId:Ljava/lang/String;

    .line 1341
    invoke-virtual {v6, v7}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v6

    .line 1343
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mCameraId:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v6, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 1349
    invoke-virtual {v5}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighSpeedVideoSizes()[Landroid/util/Size;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    iput-object v7, v1, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mHighSpeedVideoresolutions:Ljava/util/List;

    .line 1361
    iget v7, v1, Lcom/conceptglobal/pmc/camera2/CameraActivity;->SCREEN_WIDTH:I

    int-to-float v7, v7

    iget v8, v1, Lcom/conceptglobal/pmc/camera2/CameraActivity;->SCREEN_HEIGHT:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    .line 1362
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1363
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1369
    new-instance v10, Landroid/app/AlertDialog$Builder;

    invoke-direct {v10, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/16 v11, 0x100

    .line 1370
    invoke-virtual {v5, v11}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v12

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    invoke-virtual {v12, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    new-instance v13, Lcom/conceptglobal/pmc/camera2/CameraActivity$22;

    invoke-direct {v13, v1}, Lcom/conceptglobal/pmc/camera2/CameraActivity$22;-><init>(Lcom/conceptglobal/pmc/camera2/CameraActivity;)V

    invoke-virtual {v12, v2, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1377
    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    .line 1378
    invoke-virtual {v10}, Landroid/app/AlertDialog;->show()V

    .line 1380
    invoke-virtual {v5, v11}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Size;

    .line 1381
    invoke-virtual {v12}, Landroid/util/Size;->getWidth()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v12}, Landroid/util/Size;->getHeight()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v13, v14

    .line 1382
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "setUpCameraOutputs: temp: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v4, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "setUpCameraOutputs: w: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Landroid/util/Size;->getWidth()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Landroid/util/Size;->getHeight()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v4, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1386
    iget v14, v1, Lcom/conceptglobal/pmc/camera2/CameraActivity;->ASPECT_RATIO_ERROR_RANGE:F

    mul-float v15, v7, v14

    sub-float v15, v7, v15

    cmpl-float v15, v13, v15

    if-lez v15, :cond_1

    mul-float v14, v14, v7

    add-float/2addr v14, v7

    cmpg-float v13, v13, v14

    if-gez v13, :cond_1

    .line 1388
    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1392
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "setUpCameraOutputs: found a valid size: w: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Landroid/util/Size;->getWidth()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Landroid/util/Size;->getHeight()I

    move-result v12

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1396
    :cond_2
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "setUpCameraOutputs: largest width: "

    const-string v9, "[*]+"

    const/4 v10, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-nez v0, :cond_3

    .line 1397
    :try_start_1
    new-instance v0, Lcom/conceptglobal/pmc/camera2/Utility$CompareSizesByArea;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/camera2/Utility$CompareSizesByArea;-><init>()V

    invoke-static {v8, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    .line 1401
    iget-object v8, v1, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mImageResolution:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1402
    aget-object v14, v8, v12

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 1403
    aget-object v8, v8, v13

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 1405
    invoke-static {v14, v8, v11, v10}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v8

    iput-object v8, v1, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mImageReader:Landroid/media/ImageReader;

    .line 1408
    iget-object v11, v1, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mOnImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    iget-object v14, v1, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v8, v11, v14}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 1409
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setUpCameraOutputs: largest height: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1413
    :cond_3
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 1414
    new-instance v0, Lcom/conceptglobal/pmc/camera2/Utility$CompareSizesByArea;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/camera2/Utility$CompareSizesByArea;-><init>()V

    invoke-static {v8, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    .line 1417
    iget-object v8, v1, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mImageResolution:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1418
    aget-object v14, v8, v12

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 1419
    aget-object v8, v8, v13

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 1421
    invoke-static {v14, v8, v11, v10}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v8

    iput-object v8, v1, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mImageReader:Landroid/media/ImageReader;

    .line 1425
    iget-object v11, v1, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mOnImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    iget-object v14, v1, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v8, v11, v14}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 1426
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setUpCameraOut   puts: largest height: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    .line 1433
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Display;->getRotation()I

    move-result v7

    .line 1435
    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v6, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v1, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mSensorOrientation:I

    if-eqz v7, :cond_6

    if-eq v7, v13, :cond_5

    if-eq v7, v10, :cond_6

    const/4 v8, 0x3

    if-eq v7, v8, :cond_5

    .line 1451
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Display rotation is invalid: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    if-eqz v6, :cond_8

    const/16 v7, 0xb4

    if-ne v6, v7, :cond_7

    goto :goto_3

    :cond_6
    const/16 v7, 0x5a

    if-eq v6, v7, :cond_8

    const/16 v7, 0x10e

    if-ne v6, v7, :cond_7

    goto :goto_3

    :cond_7
    :goto_2
    const/4 v6, 0x0

    goto :goto_4

    :cond_8
    :goto_3
    const/4 v6, 0x1

    .line 1454
    :goto_4
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    .line 1455
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1458
    iget v8, v7, Landroid/graphics/Point;->x:I

    .line 1459
    iget v11, v7, Landroid/graphics/Point;->y:I

    if-eqz v6, :cond_9

    .line 1464
    iget v8, v7, Landroid/graphics/Point;->y:I

    .line 1465
    iget v11, v7, Landroid/graphics/Point;->x:I

    move/from16 v7, p1

    move/from16 v6, p2

    goto :goto_5

    :cond_9
    move/from16 v6, p1

    move/from16 v7, p2

    .line 1468
    :goto_5
    iget v14, v1, Lcom/conceptglobal/pmc/camera2/CameraActivity;->MAX_PREVIEW_WIDTH:I

    if-le v8, v14, :cond_a

    move v8, v14

    .line 1472
    :cond_a
    iget v14, v1, Lcom/conceptglobal/pmc/camera2/CameraActivity;->MAX_PREVIEW_HEIGHT:I

    if-le v11, v14, :cond_b

    move v11, v14

    .line 1476
    :cond_b
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "setUpCameraOutputs: max preview width: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v4, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "setUpCameraOutputs: max preview height: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v4, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_c

    .line 1482
    const-class v14, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v5, v14}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v14

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v11

    move-object/from16 v19, v0

    invoke-static/range {v14 .. v19}, Lcom/conceptglobal/pmc/camera2/Utility;->chooseOptimalSize([Landroid/util/Size;IIIILandroid/util/Size;)Landroid/util/Size;

    move-result-object v14

    iput-object v14, v1, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mPreviewSize:Landroid/util/Size;

    .line 1486
    const-class v14, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v5, v14}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v14

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v11

    move-object/from16 v19, v0

    invoke-static/range {v14 .. v19}, Lcom/conceptglobal/pmc/camera2/Utility;->chooseOptimalSize([Landroid/util/Size;IIIILandroid/util/Size;)Landroid/util/Size;

    move-result-object v0

    iput-object v0, v1, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mVideoSize:Landroid/util/Size;

    .line 1490
    iget-object v0, v1, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mVideResolution:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1492
    aget-object v6, v0, v12

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1494
    aget-object v0, v0, v13

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1497
    invoke-virtual {v5}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighSpeedVideoSizes()[Landroid/util/Size;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1503
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setUpCameraOutputs: preview width: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setUpCameraOutputs: preview height: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v10, :cond_d

    .line 1509
    iget-object v0, v1, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mTextureView:Lcom/conceptglobal/pmc/camera2/ScalingTextureView;

    iget-object v5, v1, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mPreviewSize:Landroid/util/Size;

    .line 1510
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    iget-object v6, v1, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v6

    .line 1509
    invoke-virtual {v0, v5, v6}, Lcom/conceptglobal/pmc/camera2/ScalingTextureView;->setAspectRatio(II)V

    goto :goto_6

    .line 1512
    :cond_d
    iget-object v0, v1, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mTextureView:Lcom/conceptglobal/pmc/camera2/ScalingTextureView;

    iget-object v5, v1, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mPreviewSize:Landroid/util/Size;

    .line 1513
    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    iget-object v6, v1, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v6

    .line 1512
    invoke-virtual {v0, v5, v6}, Lcom/conceptglobal/pmc/camera2/ScalingTextureView;->setAspectRatio(II)V

    .line 1517
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setUpCameraOutputs: cameraId: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    .line 1534
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1535
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v3, Lcom/conceptglobal/pmc/camera2/CameraActivity$24;

    invoke-direct {v3, v1}, Lcom/conceptglobal/pmc/camera2/CameraActivity$24;-><init>(Lcom/conceptglobal/pmc/camera2/CameraActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1542
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1543
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_7

    :catch_1
    move-exception v0

    .line 1520
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1521
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v5, Lcom/conceptglobal/pmc/camera2/CameraActivity$23;

    invoke-direct {v5, v1}, Lcom/conceptglobal/pmc/camera2/CameraActivity$23;-><init>(Lcom/conceptglobal/pmc/camera2/CameraActivity;)V

    invoke-virtual {v3, v2, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1528
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 1529
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1532
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :goto_7
    return-void
.end method

.method private setUpMediaRecorder(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "camera resolution"

    .line 2724
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mPhotoImagePath:Ljava/lang/String;

    iput-object v1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mVideoFileName:Ljava/lang/String;

    .line 2725
    iget-object v1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/16 v2, 0x5a

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 2726
    iget-object v1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 2727
    iget-object v1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 2728
    iget-object v1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, p1}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 2744
    invoke-static {v3}, Landroid/media/CamcorderProfile;->hasProfile(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2745
    const-string p1, "apprently"

    const-string v1, "result is"

    invoke-static {p1, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2748
    invoke-static {v3}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object p1

    .line 2749
    iput v2, p1, Landroid/media/CamcorderProfile;->fileFormat:I

    .line 2751
    iget-object v1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mVideResolution:Ljava/lang/String;

    const-string v4, "[*]+"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2753
    iget-object v4, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mCameraId:Ljava/lang/String;

    iget-object v5, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mICameraFacing:Lcom/conceptglobal/pmc/camera2/ICameraFacing;

    invoke-interface {v5}, Lcom/conceptglobal/pmc/camera2/ICameraFacing;->getBackCameraId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2756
    iget-object v4, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mHighSpeedVideoresolutions:Ljava/util/List;

    const/4 v5, 0x0

    aget-object v5, v1, v5

    .line 2757
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2756
    invoke-static {v4, v5, v1}, Lcom/conceptglobal/pmc/camera2/Utility;->getApproriateVideoSize(Ljava/util/List;II)Landroid/util/Size;

    move-result-object v1

    .line 2759
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v4, "resolution of your cam "

    .line 2761
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2762
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "::"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2763
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2762
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2764
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 2765
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2769
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v0

    iput v0, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 2770
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v0

    iput v0, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 2787
    :cond_0
    iput v2, p1, Landroid/media/CamcorderProfile;->videoCodec:I

    const/4 v0, 0x3

    .line 2788
    iput v0, p1, Landroid/media/CamcorderProfile;->audioCodec:I

    .line 2789
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 2826
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mVideoFileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 2827
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mMediaRecorder:Landroid/media/MediaRecorder;

    const v0, 0xf4240

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 2828
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/16 v0, 0x1e

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 2836
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mCameraId:Ljava/lang/String;

    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mICameraFacing:Lcom/conceptglobal/pmc/camera2/ICameraFacing;

    invoke-interface {v0}, Lcom/conceptglobal/pmc/camera2/ICameraFacing;->getFrontCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2837
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/16 v0, 0x10e

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 2839
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p1}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2842
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2843
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v1, "PMC POC"

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/conceptglobal/pmc/camera2/CameraActivity$46;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity$46;-><init>(Lcom/conceptglobal/pmc/camera2/CameraActivity;)V

    const-string v2, "ok"

    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2850
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 2851
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :goto_0
    return-void
.end method

.method private setVideoRecording()V
    .locals 1

    const/4 v0, 0x0

    .line 2948
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->isVideorecording:Z

    return-void
.end method

.method private showSnackBar(Ljava/lang/String;I)V
    .locals 1

    .line 1295
    new-instance v0, Lcom/conceptglobal/pmc/camera2/CameraActivity$21;

    invoke-direct {v0, p0, p0, p1, p2}, Lcom/conceptglobal/pmc/camera2/CameraActivity$21;-><init>(Lcom/conceptglobal/pmc/camera2/CameraActivity;Landroid/app/Activity;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showStillshotContainer()V
    .locals 2

    .line 2541
    invoke-direct {p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->closeCamera()V

    .line 2544
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mConstraintContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    return-void
.end method

.method private startBackGroundProcess()V
    .locals 4

    .line 759
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mBackgroundThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 760
    const-string v0, "backgroundThread"

    const-string v1, "backgroundthreadInstance is created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CameraBackground"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 763
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 764
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mBackgroundHandler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 768
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 769
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v2, "PMC POC"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/conceptglobal/pmc/camera2/CameraActivity$11;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity$11;-><init>(Lcom/conceptglobal/pmc/camera2/CameraActivity;)V

    const-string v3, "ok"

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 776
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 777
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_0
    :goto_0
    return-void
.end method

.method private startRecord(I)V
    .locals 5

    .line 2103
    const-string v0, "ok"

    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mHighSpeedVideoresolutions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mHighSpeedVideoresolutions:Ljava/util/List;

    if-nez v1, :cond_0

    goto :goto_0

    .line 2119
    :cond_0
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->setUpMediaRecorder(I)V

    goto :goto_1

    .line 2105
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->setUpMediaRecorderForLegacy(I)V

    .line 2106
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2107
    iget-object v1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mVideoSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Current Video Resolution is: "

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/camera2/CameraActivity$37;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity$37;-><init>(Lcom/conceptglobal/pmc/camera2/CameraActivity;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2114
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 2115
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 2121
    :goto_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mTextureView:Lcom/conceptglobal/pmc/camera2/ScalingTextureView;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/camera2/ScalingTextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    .line 2125
    iget-object v1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 2129
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 2130
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p1}, Landroid/media/MediaRecorder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    .line 2132
    iget-object v2, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2

    iput-object v2, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 2134
    invoke-virtual {v2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 2135
    iget-object v2, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v2, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 2136
    iget-object v2, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/view/Surface;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object p1, v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    new-instance v1, Lcom/conceptglobal/pmc/camera2/CameraActivity$38;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity$38;-><init>(Lcom/conceptglobal/pmc/camera2/CameraActivity;)V

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v1, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 2155
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2156
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "PMC POC"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/conceptglobal/pmc/camera2/CameraActivity$39;

    invoke-direct {v3, p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity$39;-><init>(Lcom/conceptglobal/pmc/camera2/CameraActivity;)V

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2163
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2164
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2165
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method private stopBackgroundThread()V
    .locals 4

    .line 628
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mBackgroundThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 629
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 632
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V

    const/4 v0, 0x0

    .line 634
    iput-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 635
    iput-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mBackgroundHandler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 637
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 638
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 639
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v2, "PMC POC"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/conceptglobal/pmc/camera2/CameraActivity$7;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity$7;-><init>(Lcom/conceptglobal/pmc/camera2/CameraActivity;)V

    const-string v3, "ok"

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 646
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 647
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_0
    :goto_0
    return-void
.end method

.method private takePicture()V
    .locals 0

    .line 1137
    invoke-direct {p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->lockFocus()V

    return-void
.end method

.method private toggleCameraDisplayOrientation()V
    .locals 4

    .line 1039
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mCameraId:Ljava/lang/String;

    iget-object v1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mICameraFacing:Lcom/conceptglobal/pmc/camera2/ICameraFacing;

    invoke-interface {v1}, Lcom/conceptglobal/pmc/camera2/ICameraFacing;->getBackCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1040
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mICameraFacing:Lcom/conceptglobal/pmc/camera2/ICameraFacing;

    invoke-interface {v0}, Lcom/conceptglobal/pmc/camera2/ICameraFacing;->getFrontCameraId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mCameraId:Ljava/lang/String;

    .line 1041
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mICameraFacing:Lcom/conceptglobal/pmc/camera2/ICameraFacing;

    invoke-interface {v0}, Lcom/conceptglobal/pmc/camera2/ICameraFacing;->setCameraFrontFacing()V

    .line 1042
    invoke-direct {p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->closeCamera()V

    .line 1043
    invoke-direct {p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->reOpenCamera()V

    goto :goto_0

    .line 1045
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mCameraId:Ljava/lang/String;

    iget-object v1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mICameraFacing:Lcom/conceptglobal/pmc/camera2/ICameraFacing;

    invoke-interface {v1}, Lcom/conceptglobal/pmc/camera2/ICameraFacing;->getFrontCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1046
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mICameraFacing:Lcom/conceptglobal/pmc/camera2/ICameraFacing;

    invoke-interface {v0}, Lcom/conceptglobal/pmc/camera2/ICameraFacing;->getBackCameraId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mCameraId:Ljava/lang/String;

    .line 1047
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mICameraFacing:Lcom/conceptglobal/pmc/camera2/ICameraFacing;

    invoke-interface {v0}, Lcom/conceptglobal/pmc/camera2/ICameraFacing;->setCameraBackFacing()V

    .line 1048
    invoke-direct {p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->closeCamera()V

    .line 1049
    invoke-direct {p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->reOpenCamera()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1052
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1053
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v2, "PMC POC"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/conceptglobal/pmc/camera2/CameraActivity$17;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity$17;-><init>(Lcom/conceptglobal/pmc/camera2/CameraActivity;)V

    const-string v3, "ok"

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1060
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1061
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method private unlockFocus()V
    .locals 5

    .line 1922
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x2

    .line 1923
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1922
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1924
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v3, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    const/4 v0, 0x0

    .line 1926
    iput v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mState:I

    .line 1927
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

    iget-object v2, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v3, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1931
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1932
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "PMC POC"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/conceptglobal/pmc/camera2/CameraActivity$33;

    invoke-direct {v3, p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity$33;-><init>(Lcom/conceptglobal/pmc/camera2/CameraActivity;)V

    const-string v4, "ok"

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1939
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1940
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1941
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private videoRecording()V
    .locals 0

    return-void
.end method


# virtual methods
.method public getBackCameraId()Ljava/lang/String;
    .locals 1

    .line 2374
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->CAMERA_POSITION_BACK:Ljava/lang/String;

    return-object v0
.end method

.method public getFrontCameraId()Ljava/lang/String;
    .locals 1

    .line 2379
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->CAMERA_POSITION_FRONT:Ljava/lang/String;

    return-object v0
.end method

.method public isCameraBackFacing()Z
    .locals 2

    .line 2342
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mCameraOrientation:Ljava/lang/String;

    iget-object v1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->CAMERA_POSITION_BACK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isCameraFrontFacing()Z
    .locals 2

    .line 2329
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mCameraOrientation:Ljava/lang/String;

    iget-object v1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->CAMERA_POSITION_FRONT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1021
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 810
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0022

    .line 811
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->setContentView(I)V

    .line 814
    invoke-direct {p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->intViews()V

    .line 815
    invoke-direct {p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->initIntent()V

    .line 816
    invoke-direct {p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->discardImage()V

    .line 817
    invoke-direct {p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->acceptImage()V

    .line 820
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mSettings:Landroid/widget/ImageButton;

    new-instance v0, Lcom/conceptglobal/pmc/camera2/CameraActivity$13;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity$13;-><init>(Lcom/conceptglobal/pmc/camera2/CameraActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 847
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mVideoRecorder:Landroid/widget/ImageButton;

    new-instance v0, Lcom/conceptglobal/pmc/camera2/CameraActivity$14;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity$14;-><init>(Lcom/conceptglobal/pmc/camera2/CameraActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 961
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mCamera:Landroid/widget/ImageButton;

    new-instance v0, Lcom/conceptglobal/pmc/camera2/CameraActivity$15;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity$15;-><init>(Lcom/conceptglobal/pmc/camera2/CameraActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 993
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mOrientation:Landroid/widget/ImageButton;

    new-instance v0, Lcom/conceptglobal/pmc/camera2/CameraActivity$16;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity$16;-><init>(Lcom/conceptglobal/pmc/camera2/CameraActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 562
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 4

    .line 522
    :try_start_0
    invoke-direct {p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->closeCamera()V

    .line 523
    invoke-direct {p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->stopBackgroundThread()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 525
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 526
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v2, "PMC POC"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/conceptglobal/pmc/camera2/CameraActivity$4;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity$4;-><init>(Lcom/conceptglobal/pmc/camera2/CameraActivity;)V

    const-string v3, "ok"

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 533
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 534
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 537
    :goto_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 663
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 666
    :try_start_0
    invoke-direct {p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->startBackGroundProcess()V

    .line 667
    invoke-direct {p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->reOpenCamera()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 669
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 670
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v2, "PMC POC"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/conceptglobal/pmc/camera2/CameraActivity$8;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity$8;-><init>(Lcom/conceptglobal/pmc/camera2/CameraActivity;)V

    const-string v3, "ok"

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 677
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 678
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :goto_0
    return-void
.end method

.method protected onStart()V
    .locals 7

    .line 475
    const-string v0, "\n"

    .line 0
    const-string v1, "image"

    .line 475
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 486
    :try_start_0
    iget-object v2, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mImageQuality:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mImageResolution:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mVideoQuality:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mVideResolution:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 488
    :cond_0
    const-string v2, "100"

    iput-object v2, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mImageQuality:Ljava/lang/String;

    .line 489
    const-string v2, "1920*1080"

    iput-object v2, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mImageResolution:Ljava/lang/String;

    .line 495
    :cond_1
    new-instance v2, Lcom/conceptglobal/pmc/camera2/CameraSettingModel;

    iget-object v3, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mVideoQuality:Ljava/lang/String;

    iget-object v4, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mVideResolution:Ljava/lang/String;

    iget-object v5, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mImageQuality:Ljava/lang/String;

    iget-object v6, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mImageResolution:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/conceptglobal/pmc/camera2/CameraSettingModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mCameraSettingModel:Lcom/conceptglobal/pmc/camera2/CameraSettingModel;

    .line 497
    const-string v2, "video"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mVideoQuality:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mVideResolution:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mImageQuality:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mImageResolution:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 501
    const-string v1, "Custom_Intent"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 503
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 506
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 507
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v2, "PMC POC"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/conceptglobal/pmc/camera2/CameraActivity$3;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity$3;-><init>(Lcom/conceptglobal/pmc/camera2/CameraActivity;)V

    const-string v3, "ok"

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 514
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 515
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :goto_0
    return-void
.end method

.method protected onStop()V
    .locals 4

    .line 543
    :try_start_0
    invoke-direct {p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->closeCamera()V

    .line 544
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 546
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 547
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v2, "PMC POC"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/conceptglobal/pmc/camera2/CameraActivity$5;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity$5;-><init>(Lcom/conceptglobal/pmc/camera2/CameraActivity;)V

    const-string v3, "ok"

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 554
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 555
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 557
    :goto_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    return-void
.end method

.method public setACopy(Ljava/lang/String;)Ljava/io/File;
    .locals 5

    const/4 v0, 0x0

    .line 267
    :try_start_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 268
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "dd-Mhh:mm:ss.SSS"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 270
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "unCompressed.mp4"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 272
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 274
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const/16 p1, 0x400

    .line 277
    new-array p1, p1, [B

    .line 279
    :goto_0
    invoke-virtual {v1, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_0

    const/4 v4, 0x0

    .line 280
    invoke-virtual {v0, p1, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 282
    :cond_0
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 283
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v0, v2

    goto :goto_1

    :catch_1
    move-exception p1

    .line 286
    :goto_1
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v0

    :goto_2
    return-object v2
.end method

.method public setBackFacingCamera(Ljava/lang/String;)V
    .locals 0

    .line 2359
    iput-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->CAMERA_POSITION_BACK:Ljava/lang/String;

    return-void
.end method

.method public setCameraBackFacing()V
    .locals 1

    .line 2369
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->CAMERA_POSITION_BACK:Ljava/lang/String;

    iput-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mCameraOrientation:Ljava/lang/String;

    return-void
.end method

.method public setCameraFrontFacing()V
    .locals 1

    .line 2364
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->CAMERA_POSITION_FRONT:Ljava/lang/String;

    iput-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mCameraOrientation:Ljava/lang/String;

    return-void
.end method

.method public setFrontFacingCamera(Ljava/lang/String;)V
    .locals 0

    .line 2354
    iput-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->CAMERA_POSITION_FRONT:Ljava/lang/String;

    return-void
.end method

.method public setMediaRecorderInit(ZZ)V
    .locals 1

    .line 2884
    new-instance v0, Lcom/conceptglobal/pmc/camera2/CameraActivity$47;

    invoke-direct {v0, p0, p1, p2}, Lcom/conceptglobal/pmc/camera2/CameraActivity$47;-><init>(Lcom/conceptglobal/pmc/camera2/CameraActivity;ZZ)V

    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setReducedBitmap(Landroid/media/Image;)V
    .locals 8

    .line 2387
    iput-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mCapturedImage:Landroid/media/Image;

    .line 2388
    const-string v0, "Camera2API"

    const-string v1, "saveTempImageToStorage: saving temp image to disk."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2389
    new-instance v5, Lcom/conceptglobal/pmc/camera2/CameraActivity$41;

    invoke-direct {v5, p0, p1}, Lcom/conceptglobal/pmc/camera2/CameraActivity$41;-><init>(Lcom/conceptglobal/pmc/camera2/CameraActivity;Landroid/media/Image;)V

    .line 2434
    new-instance v0, Lcom/conceptglobal/pmc/camera2/CameraActivity$ImageSaver;

    iget-object v4, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mPhotoImagePath:Ljava/lang/String;

    iget-object v7, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mImageQuality:Ljava/lang/String;

    move-object v2, v0

    move-object v3, p1

    move-object v6, p0

    invoke-direct/range {v2 .. v7}, Lcom/conceptglobal/pmc/camera2/CameraActivity$ImageSaver;-><init>(Landroid/media/Image;Ljava/lang/String;Lcom/conceptglobal/pmc/camera2/ICallback;Landroid/content/Context;Ljava/lang/String;)V

    .line 2439
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setUpMediaRecorderForLegacy(I)V
    .locals 5

    const-string v0, ".VideoCompressor/UNCompressed Videos/"

    const/4 v1, 0x0

    .line 2050
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/camera2/CameraActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 2052
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 2053
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "dd-M-yyyy hh:mm:ss.SSS"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2054
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 2059
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/PMCApplication;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/conceptglobal/pmc/utils/FileUtils;->getDataDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "temp_video.mp4"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2068
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mVideoFileName:Ljava/lang/String;

    .line 2070
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 2071
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 2072
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 2073
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p1, v1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 2075
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mVideoFileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 2076
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mMediaRecorder:Landroid/media/MediaRecorder;

    const v0, 0xf4240

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 2077
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/16 v0, 0x1e

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 2078
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mVideoSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mVideoSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 2079
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p1, v1}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 2081
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 2083
    iget-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraActivity;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p1}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2085
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2086
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v1, "PMC POC"

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/conceptglobal/pmc/camera2/CameraActivity$36;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/camera2/CameraActivity$36;-><init>(Lcom/conceptglobal/pmc/camera2/CameraActivity;)V

    const-string v2, "ok"

    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2093
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 2094
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :goto_0
    return-void
.end method

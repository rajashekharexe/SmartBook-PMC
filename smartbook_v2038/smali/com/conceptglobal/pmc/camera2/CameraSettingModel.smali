.class public Lcom/conceptglobal/pmc/camera2/CameraSettingModel;
.super Ljava/lang/Object;
.source "CameraSettingModel.java"


# instance fields
.field private mImageQuality:Ljava/lang/String;

.field private mImageResolution:Ljava/lang/String;

.field private mVideoQuality:Ljava/lang/String;

.field private mVideoResolution:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraSettingModel;->mVideoQuality:Ljava/lang/String;

    .line 68
    iput-object p2, p0, Lcom/conceptglobal/pmc/camera2/CameraSettingModel;->mVideoResolution:Ljava/lang/String;

    .line 69
    iput-object p3, p0, Lcom/conceptglobal/pmc/camera2/CameraSettingModel;->mImageQuality:Ljava/lang/String;

    .line 70
    iput-object p4, p0, Lcom/conceptglobal/pmc/camera2/CameraSettingModel;->mImageResolution:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getmImageQuality()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraSettingModel;->mImageQuality:Ljava/lang/String;

    return-object v0
.end method

.method public getmImageResolution()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraSettingModel;->mImageResolution:Ljava/lang/String;

    return-object v0
.end method

.method public getmVideoQuality()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraSettingModel;->mVideoQuality:Ljava/lang/String;

    return-object v0
.end method

.method public getmVideoResolution()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/conceptglobal/pmc/camera2/CameraSettingModel;->mVideoResolution:Ljava/lang/String;

    return-object v0
.end method

.method public setmImageQuality(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraSettingModel;->mImageQuality:Ljava/lang/String;

    return-void
.end method

.method public setmImageResolution(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraSettingModel;->mImageResolution:Ljava/lang/String;

    return-void
.end method

.method public setmVideoQuality(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraSettingModel;->mVideoQuality:Ljava/lang/String;

    return-void
.end method

.method public setmVideoResolution(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/conceptglobal/pmc/camera2/CameraSettingModel;->mVideoResolution:Ljava/lang/String;

    return-void
.end method

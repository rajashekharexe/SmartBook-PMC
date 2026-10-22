.class Lcom/facebook/network/connectionclass/DeviceBandwidthSampler$DeviceBandwidthSamplerHolder;
.super Ljava/lang/Object;
.source "DeviceBandwidthSampler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeviceBandwidthSamplerHolder"
.end annotation


# static fields
.field public static final instance:Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 46
    new-instance v0, Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;

    invoke-static {}, Lcom/facebook/network/connectionclass/ConnectionClassManager;->getInstance()Lcom/facebook/network/connectionclass/ConnectionClassManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;-><init>(Lcom/facebook/network/connectionclass/ConnectionClassManager;Lcom/facebook/network/connectionclass/DeviceBandwidthSampler$1;)V

    sput-object v0, Lcom/facebook/network/connectionclass/DeviceBandwidthSampler$DeviceBandwidthSamplerHolder;->instance:Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class public Lorg/android10/gintonic/internal/DebugLog;
.super Ljava/lang/Object;
.source "DebugLog.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

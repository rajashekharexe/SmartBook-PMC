.class Lcom/conceptglobal/pmc/camera2/Utility$CompareSizesByArea;
.super Ljava/lang/Object;
.source "Utility.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/camera2/Utility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CompareSizesByArea"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/util/Size;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/conceptglobal/pmc/camera2/Utility$CompareSizesByArea;
    .locals 1

    .line 67
    new-instance v0, Lcom/conceptglobal/pmc/camera2/Utility$CompareSizesByArea;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/camera2/Utility$CompareSizesByArea;-><init>()V

    return-object v0
.end method


# virtual methods
.method public compare(Landroid/util/Size;Landroid/util/Size;)I
    .locals 4

    .line 75
    :try_start_0
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    int-to-long v2, p1

    mul-long v0, v0, v2

    .line 76
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p1

    int-to-long v2, p1

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p1

    int-to-long p1, p1

    mul-long v2, v2, p1

    sub-long/2addr v0, v2

    .line 75
    invoke-static {v0, v1}, Ljava/lang/Long;->signum(J)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 79
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    const/4 p1, -0x1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 64
    check-cast p1, Landroid/util/Size;

    check-cast p2, Landroid/util/Size;

    invoke-virtual {p0, p1, p2}, Lcom/conceptglobal/pmc/camera2/Utility$CompareSizesByArea;->compare(Landroid/util/Size;Landroid/util/Size;)I

    move-result p1

    return p1
.end method

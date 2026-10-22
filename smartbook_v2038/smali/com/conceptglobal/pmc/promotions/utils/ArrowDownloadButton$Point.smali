.class Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;
.super Ljava/lang/Object;
.source "ArrowDownloadButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Point"
.end annotation


# instance fields
.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 644
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 645
    iput v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->x:F

    .line 646
    iput v0, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->y:F

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    .line 639
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 640
    iput p1, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->x:F

    .line 641
    iput p2, p0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton$Point;->y:F

    return-void
.end method

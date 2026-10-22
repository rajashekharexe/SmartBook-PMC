.class public Lcom/conceptglobal/pmc/export/FarmerExportHelper$VillageSummaryItem;
.super Ljava/lang/Object;
.source "FarmerExportHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/export/FarmerExportHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VillageSummaryItem"
.end annotation


# instance fields
.field public normalCount:I

.field public saarthieCount:I

.field public totalCount:I

.field public village:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/conceptglobal/pmc/export/FarmerExportHelper$VillageSummaryItem;->village:Ljava/lang/String;

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/conceptglobal/pmc/export/FarmerExportHelper$VillageSummaryItem;->saarthieCount:I

    .line 59
    iput v0, p0, Lcom/conceptglobal/pmc/export/FarmerExportHelper$VillageSummaryItem;->normalCount:I

    .line 60
    iput v0, p0, Lcom/conceptglobal/pmc/export/FarmerExportHelper$VillageSummaryItem;->totalCount:I

    return-void
.end method

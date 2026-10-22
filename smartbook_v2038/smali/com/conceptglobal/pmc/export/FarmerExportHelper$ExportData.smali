.class public Lcom/conceptglobal/pmc/export/FarmerExportHelper$ExportData;
.super Ljava/lang/Object;
.source "FarmerExportHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/export/FarmerExportHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExportData"
.end annotation


# instance fields
.field public normalList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/export/FarmerExportHelper$FarmerItem;",
            ">;"
        }
    .end annotation
.end field

.field public saarthieList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/export/FarmerExportHelper$FarmerItem;",
            ">;"
        }
    .end annotation
.end field

.field public summaryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/export/FarmerExportHelper$VillageSummaryItem;",
            ">;"
        }
    .end annotation
.end field

.field public totalFarmers:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/export/FarmerExportHelper$ExportData;->saarthieList:Ljava/util/List;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/export/FarmerExportHelper$ExportData;->normalList:Ljava/util/List;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/export/FarmerExportHelper$ExportData;->summaryList:Ljava/util/List;

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/conceptglobal/pmc/export/FarmerExportHelper$ExportData;->totalFarmers:I

    return-void
.end method

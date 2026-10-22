.class Lcom/conceptglobal/pmc/export/FarmerExportHelper$3;
.super Ljava/lang/Object;
.source "FarmerExportHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/export/FarmerExportHelper;->loadFarmerData(Landroid/content/Context;)Lcom/conceptglobal/pmc/export/FarmerExportHelper$ExportData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/conceptglobal/pmc/export/FarmerExportHelper$VillageSummaryItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/conceptglobal/pmc/export/FarmerExportHelper$VillageSummaryItem;Lcom/conceptglobal/pmc/export/FarmerExportHelper$VillageSummaryItem;)I
    .registers 3

    .line 524
    iget-object p1, p1, Lcom/conceptglobal/pmc/export/FarmerExportHelper$VillageSummaryItem;->village:Ljava/lang/String;

    iget-object p2, p2, Lcom/conceptglobal/pmc/export/FarmerExportHelper$VillageSummaryItem;->village:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 521
    check-cast p1, Lcom/conceptglobal/pmc/export/FarmerExportHelper$VillageSummaryItem;

    check-cast p2, Lcom/conceptglobal/pmc/export/FarmerExportHelper$VillageSummaryItem;

    invoke-virtual {p0, p1, p2}, Lcom/conceptglobal/pmc/export/FarmerExportHelper$3;->compare(Lcom/conceptglobal/pmc/export/FarmerExportHelper$VillageSummaryItem;Lcom/conceptglobal/pmc/export/FarmerExportHelper$VillageSummaryItem;)I

    move-result p1

    return p1
.end method

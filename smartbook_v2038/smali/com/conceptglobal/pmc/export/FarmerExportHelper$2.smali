.class Lcom/conceptglobal/pmc/export/FarmerExportHelper$2;
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
        "Lcom/conceptglobal/pmc/export/FarmerExportHelper$FarmerItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 509
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/conceptglobal/pmc/export/FarmerExportHelper$FarmerItem;Lcom/conceptglobal/pmc/export/FarmerExportHelper$FarmerItem;)I
    .registers 5

    .line 512
    iget-object v0, p1, Lcom/conceptglobal/pmc/export/FarmerExportHelper$FarmerItem;->village:Ljava/lang/String;

    iget-object v1, p2, Lcom/conceptglobal/pmc/export/FarmerExportHelper$FarmerItem;->village:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 513
    if-eqz v0, :cond_b

    return v0

    .line 514
    :cond_b
    iget-object p1, p1, Lcom/conceptglobal/pmc/export/FarmerExportHelper$FarmerItem;->name:Ljava/lang/String;

    iget-object p2, p2, Lcom/conceptglobal/pmc/export/FarmerExportHelper$FarmerItem;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 509
    check-cast p1, Lcom/conceptglobal/pmc/export/FarmerExportHelper$FarmerItem;

    check-cast p2, Lcom/conceptglobal/pmc/export/FarmerExportHelper$FarmerItem;

    invoke-virtual {p0, p1, p2}, Lcom/conceptglobal/pmc/export/FarmerExportHelper$2;->compare(Lcom/conceptglobal/pmc/export/FarmerExportHelper$FarmerItem;Lcom/conceptglobal/pmc/export/FarmerExportHelper$FarmerItem;)I

    move-result p1

    return p1
.end method

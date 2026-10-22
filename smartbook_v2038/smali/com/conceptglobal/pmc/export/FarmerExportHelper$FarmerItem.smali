.class public Lcom/conceptglobal/pmc/export/FarmerExportHelper$FarmerItem;
.super Ljava/lang/Object;
.source "FarmerExportHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/export/FarmerExportHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FarmerItem"
.end annotation


# instance fields
.field public isSaarthie:Z

.field public mobile:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public village:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/conceptglobal/pmc/export/FarmerExportHelper$FarmerItem;->name:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/conceptglobal/pmc/export/FarmerExportHelper$FarmerItem;->mobile:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/conceptglobal/pmc/export/FarmerExportHelper$FarmerItem;->village:Ljava/lang/String;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/conceptglobal/pmc/export/FarmerExportHelper$FarmerItem;->isSaarthie:Z

    return-void
.end method

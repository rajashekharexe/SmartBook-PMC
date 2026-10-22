.class Lcom/conceptglobal/pmc/export/FarmerExportHelper$1$2;
.super Ljava/lang/Object;
.source "FarmerExportHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/export/FarmerExportHelper$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/export/FarmerExportHelper$1;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/export/FarmerExportHelper$1;)V
    .registers 2

    .line 88
    iput-object p1, p0, Lcom/conceptglobal/pmc/export/FarmerExportHelper$1$2;->this$0:Lcom/conceptglobal/pmc/export/FarmerExportHelper$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 91
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 92
    new-instance p1, Lcom/conceptglobal/pmc/export/FarmerExportHelper$ExportTask;

    iget-object p2, p0, Lcom/conceptglobal/pmc/export/FarmerExportHelper$1$2;->this$0:Lcom/conceptglobal/pmc/export/FarmerExportHelper$1;

    iget-object p2, p2, Lcom/conceptglobal/pmc/export/FarmerExportHelper$1;->val$activity:Landroid/app/Activity;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lcom/conceptglobal/pmc/export/FarmerExportHelper$ExportTask;-><init>(Landroid/app/Activity;Z)V

    new-array p2, v0, [Ljava/lang/Void;

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/export/FarmerExportHelper$ExportTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 93
    return-void
.end method

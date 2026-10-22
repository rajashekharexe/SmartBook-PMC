.class Lcom/conceptglobal/pmc/export/FarmerExportHelper$1;
.super Ljava/lang/Object;
.source "FarmerExportHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/export/FarmerExportHelper;->showExportDialog(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lcom/conceptglobal/pmc/export/FarmerExportHelper$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 76
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/export/FarmerExportHelper$1;->val$activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 77
    const-string v1, "Export Farmer Directory"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 78
    const-string v1, "Select directory export format:\n(Includes Summary, Saarthie & Normal Farmers)"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 80
    new-instance v1, Lcom/conceptglobal/pmc/export/FarmerExportHelper$1$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/export/FarmerExportHelper$1$1;-><init>(Lcom/conceptglobal/pmc/export/FarmerExportHelper$1;)V

    const-string v2, "PDF Document"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 88
    new-instance v1, Lcom/conceptglobal/pmc/export/FarmerExportHelper$1$2;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/export/FarmerExportHelper$1$2;-><init>(Lcom/conceptglobal/pmc/export/FarmerExportHelper$1;)V

    const-string v2, "Excel (.xlsx)"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 96
    new-instance v1, Lcom/conceptglobal/pmc/export/FarmerExportHelper$1$3;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/export/FarmerExportHelper$1$3;-><init>(Lcom/conceptglobal/pmc/export/FarmerExportHelper$1;)V

    const-string v2, "Cancel"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 103
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 104
    return-void
.end method

.class Lcom/conceptglobal/pmc/fo/FarmerFormActivity$33;
.super Ljava/lang/Object;
.source "FarmerFormActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->showRemarkSelectionAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)V
    .locals 0

    .line 3698
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$33;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 3701
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$33;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    iget-object p1, p1, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->d_remarks:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.class Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$3;
.super Ljava/lang/Object;
.source "FarmerSelectionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->enableGPS()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;)V
    .locals 0

    .line 638
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$3;->this$0:Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 640
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.SECURITY_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 641
    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$3;->this$0:Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;

    invoke-virtual {p2, p1}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->startActivity(Landroid/content/Intent;)V

    .line 642
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$3;->this$0:Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->access$300(Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

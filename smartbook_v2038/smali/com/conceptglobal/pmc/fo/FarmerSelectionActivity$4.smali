.class Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$4;
.super Ljava/lang/Object;
.source "FarmerSelectionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->locationNotFound()V
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

    .line 722
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$4;->this$0:Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 724
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$4;->this$0:Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->access$402(Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;Z)Z

    .line 725
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$4;->this$0:Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;

    new-instance v0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$LocationControl;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$4;->this$0:Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$LocationControl;-><init>(Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$1;)V

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->access$1202(Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$LocationControl;)Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$LocationControl;

    .line 726
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$4;->this$0:Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;->access$1200(Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;)Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$LocationControl;

    move-result-object p1

    new-array p2, p2, [Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity$LocationControl;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

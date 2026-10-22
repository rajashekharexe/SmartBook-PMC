.class Lcom/conceptglobal/pmc/SetupPMC$12;
.super Ljava/lang/Object;
.source "SetupPMC.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/SetupPMC;->showAlert(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/SetupPMC;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/SetupPMC;)V
    .locals 0

    .line 908
    iput-object p1, p0, Lcom/conceptglobal/pmc/SetupPMC$12;->this$0:Lcom/conceptglobal/pmc/SetupPMC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 911
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 912
    iget-object p1, p0, Lcom/conceptglobal/pmc/SetupPMC$12;->this$0:Lcom/conceptglobal/pmc/SetupPMC;

    invoke-static {p1}, Lcom/conceptglobal/pmc/SetupPMC;->access$1500(Lcom/conceptglobal/pmc/SetupPMC;)Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;->cancel(Z)Z

    .line 913
    iget-object p1, p0, Lcom/conceptglobal/pmc/SetupPMC$12;->this$0:Lcom/conceptglobal/pmc/SetupPMC;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/SetupPMC;->finish()V

    return-void
.end method

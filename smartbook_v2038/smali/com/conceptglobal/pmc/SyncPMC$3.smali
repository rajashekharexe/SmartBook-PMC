.class Lcom/conceptglobal/pmc/SyncPMC$3;
.super Ljava/lang/Object;
.source "SyncPMC.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/SyncPMC;->showAlert(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/SyncPMC;

.field final synthetic val$event:I


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/SyncPMC;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 388
    iput-object p1, p0, Lcom/conceptglobal/pmc/SyncPMC$3;->this$0:Lcom/conceptglobal/pmc/SyncPMC;

    iput p2, p0, Lcom/conceptglobal/pmc/SyncPMC$3;->val$event:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 391
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 392
    iget p1, p0, Lcom/conceptglobal/pmc/SyncPMC$3;->val$event:I

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 397
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/SyncPMC$3;->this$0:Lcom/conceptglobal/pmc/SyncPMC;

    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/SyncPMC$3;->this$0:Lcom/conceptglobal/pmc/SyncPMC;

    invoke-static {v0}, Lcom/conceptglobal/pmc/SyncPMC;->access$100(Lcom/conceptglobal/pmc/SyncPMC;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/conceptglobal/pmc/SetupPMC;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x4000000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/SyncPMC;->startActivity(Landroid/content/Intent;)V

    .line 398
    iget-object p1, p0, Lcom/conceptglobal/pmc/SyncPMC$3;->this$0:Lcom/conceptglobal/pmc/SyncPMC;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/SyncPMC;->finish()V

    goto :goto_0

    .line 394
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/SyncPMC$3;->this$0:Lcom/conceptglobal/pmc/SyncPMC;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/SyncPMC;->finish()V

    :goto_0
    return-void
.end method

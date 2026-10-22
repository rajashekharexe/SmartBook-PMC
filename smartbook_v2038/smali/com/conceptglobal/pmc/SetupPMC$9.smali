.class Lcom/conceptglobal/pmc/SetupPMC$9;
.super Ljava/lang/Object;
.source "SetupPMC.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/SetupPMC;->showAlert(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/SetupPMC;

.field final synthetic val$event:I


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/SetupPMC;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 850
    iput-object p1, p0, Lcom/conceptglobal/pmc/SetupPMC$9;->this$0:Lcom/conceptglobal/pmc/SetupPMC;

    iput p2, p0, Lcom/conceptglobal/pmc/SetupPMC$9;->val$event:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 854
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 855
    iget-object p1, p0, Lcom/conceptglobal/pmc/SetupPMC$9;->this$0:Lcom/conceptglobal/pmc/SetupPMC;

    invoke-static {p1}, Lcom/conceptglobal/pmc/SetupPMC;->access$1300(Lcom/conceptglobal/pmc/SetupPMC;)V

    .line 856
    iget p1, p0, Lcom/conceptglobal/pmc/SetupPMC$9;->val$event:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    .line 858
    iget-object p1, p0, Lcom/conceptglobal/pmc/SetupPMC$9;->this$0:Lcom/conceptglobal/pmc/SetupPMC;

    invoke-static {p1}, Lcom/conceptglobal/pmc/SetupPMC;->access$1400(Lcom/conceptglobal/pmc/SetupPMC;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x3

    if-ne p1, p2, :cond_1

    .line 861
    iget-object p1, p0, Lcom/conceptglobal/pmc/SetupPMC$9;->this$0:Lcom/conceptglobal/pmc/SetupPMC;

    invoke-static {p1}, Lcom/conceptglobal/pmc/SetupPMC;->access$1400(Lcom/conceptglobal/pmc/SetupPMC;)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x4

    if-ne p1, p2, :cond_2

    .line 864
    iget-object p1, p0, Lcom/conceptglobal/pmc/SetupPMC$9;->this$0:Lcom/conceptglobal/pmc/SetupPMC;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/SetupPMC;->getPMCSVFarmerDetailsFromServer()V

    goto :goto_0

    :cond_2
    const/4 p2, 0x5

    if-ne p1, p2, :cond_3

    .line 867
    iget-object p1, p0, Lcom/conceptglobal/pmc/SetupPMC$9;->this$0:Lcom/conceptglobal/pmc/SetupPMC;

    invoke-static {p1}, Lcom/conceptglobal/pmc/SetupPMC;->access$1000(Lcom/conceptglobal/pmc/SetupPMC;)V

    goto :goto_0

    :cond_3
    const/4 p2, 0x6

    if-ne p1, p2, :cond_4

    .line 870
    iget-object p1, p0, Lcom/conceptglobal/pmc/SetupPMC$9;->this$0:Lcom/conceptglobal/pmc/SetupPMC;

    invoke-static {p1}, Lcom/conceptglobal/pmc/SetupPMC;->access$1200(Lcom/conceptglobal/pmc/SetupPMC;)V

    goto :goto_0

    .line 873
    :cond_4
    iget-object p1, p0, Lcom/conceptglobal/pmc/SetupPMC$9;->this$0:Lcom/conceptglobal/pmc/SetupPMC;

    invoke-static {p1}, Lcom/conceptglobal/pmc/SetupPMC;->access$1400(Lcom/conceptglobal/pmc/SetupPMC;)V

    :goto_0
    return-void
.end method

.class Lcom/conceptglobal/pmc/SetupPMC$10;
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

    .line 812
    iput-object p1, p0, Lcom/conceptglobal/pmc/SetupPMC$10;->this$0:Lcom/conceptglobal/pmc/SetupPMC;

    iput p2, p0, Lcom/conceptglobal/pmc/SetupPMC$10;->val$event:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 815
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 816
    iget p1, p0, Lcom/conceptglobal/pmc/SetupPMC$10;->val$event:I

    if-eqz p1, :cond_7

    const/4 p2, 0x2

    if-eq p1, p2, :cond_4

    const/4 p2, 0x3

    if-eq p1, p2, :cond_3

    const/4 p2, 0x4

    if-eq p1, p2, :cond_2

    const/4 p2, 0x5

    if-eq p1, p2, :cond_1

    const/4 p2, 0x6

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 844
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/SetupPMC$10;->this$0:Lcom/conceptglobal/pmc/SetupPMC;

    invoke-static {p1}, Lcom/conceptglobal/pmc/SetupPMC;->access$900(Lcom/conceptglobal/pmc/SetupPMC;)V

    goto :goto_0

    .line 840
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/SetupPMC$10;->this$0:Lcom/conceptglobal/pmc/SetupPMC;

    invoke-static {p1}, Lcom/conceptglobal/pmc/SetupPMC;->access$1200(Lcom/conceptglobal/pmc/SetupPMC;)V

    goto :goto_0

    .line 837
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/SetupPMC$10;->this$0:Lcom/conceptglobal/pmc/SetupPMC;

    invoke-static {p1}, Lcom/conceptglobal/pmc/SetupPMC;->access$1000(Lcom/conceptglobal/pmc/SetupPMC;)V

    goto :goto_0

    .line 834
    :cond_3
    iget-object p1, p0, Lcom/conceptglobal/pmc/SetupPMC$10;->this$0:Lcom/conceptglobal/pmc/SetupPMC;

    invoke-static {p1}, Lcom/conceptglobal/pmc/SetupPMC;->access$700(Lcom/conceptglobal/pmc/SetupPMC;)V

    goto :goto_0

    .line 823
    :cond_4
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getRoleID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_6

    .line 824
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getRoleID()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-ne p1, p2, :cond_5

    .line 825
    iget-object p1, p0, Lcom/conceptglobal/pmc/SetupPMC$10;->this$0:Lcom/conceptglobal/pmc/SetupPMC;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/SetupPMC;->getPMCSVFarmerDetailsFromServer()V

    goto :goto_0

    .line 827
    :cond_5
    iget-object p1, p0, Lcom/conceptglobal/pmc/SetupPMC$10;->this$0:Lcom/conceptglobal/pmc/SetupPMC;

    invoke-static {p1}, Lcom/conceptglobal/pmc/SetupPMC;->access$900(Lcom/conceptglobal/pmc/SetupPMC;)V

    goto :goto_0

    .line 830
    :cond_6
    iget-object p1, p0, Lcom/conceptglobal/pmc/SetupPMC$10;->this$0:Lcom/conceptglobal/pmc/SetupPMC;

    invoke-static {p1}, Lcom/conceptglobal/pmc/SetupPMC;->access$900(Lcom/conceptglobal/pmc/SetupPMC;)V

    goto :goto_0

    .line 818
    :cond_7
    iget-object p1, p0, Lcom/conceptglobal/pmc/SetupPMC$10;->this$0:Lcom/conceptglobal/pmc/SetupPMC;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/SetupPMC;->finish()V

    :goto_0
    return-void
.end method

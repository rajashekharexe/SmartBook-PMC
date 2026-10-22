.class Lcom/conceptglobal/pmc/SetupPMC$3$1$1;
.super Ljava/lang/Object;
.source "SetupPMC.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/SetupPMC$3$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/conceptglobal/pmc/SetupPMC$3$1;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/SetupPMC$3$1;)V
    .locals 0

    .line 385
    iput-object p1, p0, Lcom/conceptglobal/pmc/SetupPMC$3$1$1;->this$2:Lcom/conceptglobal/pmc/SetupPMC$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 389
    iget-object v0, p0, Lcom/conceptglobal/pmc/SetupPMC$3$1$1;->this$2:Lcom/conceptglobal/pmc/SetupPMC$3$1;

    iget-object v0, v0, Lcom/conceptglobal/pmc/SetupPMC$3$1;->this$1:Lcom/conceptglobal/pmc/SetupPMC$3;

    iget-object v0, v0, Lcom/conceptglobal/pmc/SetupPMC$3;->this$0:Lcom/conceptglobal/pmc/SetupPMC;

    invoke-static {v0}, Lcom/conceptglobal/pmc/SetupPMC;->access$100(Lcom/conceptglobal/pmc/SetupPMC;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/SetupPMC$3$1$1;->this$2:Lcom/conceptglobal/pmc/SetupPMC$3$1;

    iget-object v1, v1, Lcom/conceptglobal/pmc/SetupPMC$3$1;->this$1:Lcom/conceptglobal/pmc/SetupPMC$3;

    iget-object v1, v1, Lcom/conceptglobal/pmc/SetupPMC$3;->this$0:Lcom/conceptglobal/pmc/SetupPMC;

    invoke-static {v1}, Lcom/conceptglobal/pmc/SetupPMC;->access$000(Lcom/conceptglobal/pmc/SetupPMC;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1001c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    iget-object v0, p0, Lcom/conceptglobal/pmc/SetupPMC$3$1$1;->this$2:Lcom/conceptglobal/pmc/SetupPMC$3$1;

    iget-object v0, v0, Lcom/conceptglobal/pmc/SetupPMC$3$1;->this$1:Lcom/conceptglobal/pmc/SetupPMC$3;

    iget-object v0, v0, Lcom/conceptglobal/pmc/SetupPMC$3;->this$0:Lcom/conceptglobal/pmc/SetupPMC;

    invoke-static {v0}, Lcom/conceptglobal/pmc/SetupPMC;->access$200(Lcom/conceptglobal/pmc/SetupPMC;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/SetupPMC$3$1$1;->this$2:Lcom/conceptglobal/pmc/SetupPMC$3$1;

    iget-object v1, v1, Lcom/conceptglobal/pmc/SetupPMC$3$1;->this$1:Lcom/conceptglobal/pmc/SetupPMC$3;

    iget-object v1, v1, Lcom/conceptglobal/pmc/SetupPMC$3;->this$0:Lcom/conceptglobal/pmc/SetupPMC;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/SetupPMC;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060131

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    return-void
.end method

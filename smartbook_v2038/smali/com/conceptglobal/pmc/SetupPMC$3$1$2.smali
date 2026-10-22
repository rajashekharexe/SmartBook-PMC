.class Lcom/conceptglobal/pmc/SetupPMC$3$1$2;
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

    .line 396
    iput-object p1, p0, Lcom/conceptglobal/pmc/SetupPMC$3$1$2;->this$2:Lcom/conceptglobal/pmc/SetupPMC$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/conceptglobal/pmc/SetupPMC$3$1$2;->this$2:Lcom/conceptglobal/pmc/SetupPMC$3$1;

    iget-object v0, v0, Lcom/conceptglobal/pmc/SetupPMC$3$1;->this$1:Lcom/conceptglobal/pmc/SetupPMC$3;

    iget-object v0, v0, Lcom/conceptglobal/pmc/SetupPMC$3;->this$0:Lcom/conceptglobal/pmc/SetupPMC;

    invoke-static {v0}, Lcom/conceptglobal/pmc/SetupPMC;->access$800(Lcom/conceptglobal/pmc/SetupPMC;)V

    return-void
.end method

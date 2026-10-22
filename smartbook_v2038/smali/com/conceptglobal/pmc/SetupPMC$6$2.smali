.class Lcom/conceptglobal/pmc/SetupPMC$6$2;
.super Ljava/lang/Object;
.source "SetupPMC.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/SetupPMC$6;->onComplete(Ljava/lang/String;Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/conceptglobal/pmc/SetupPMC$6;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/SetupPMC$6;)V
    .locals 0

    .line 623
    iput-object p1, p0, Lcom/conceptglobal/pmc/SetupPMC$6$2;->this$1:Lcom/conceptglobal/pmc/SetupPMC$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 627
    iget-object v0, p0, Lcom/conceptglobal/pmc/SetupPMC$6$2;->this$1:Lcom/conceptglobal/pmc/SetupPMC$6;

    iget-object v0, v0, Lcom/conceptglobal/pmc/SetupPMC$6;->this$0:Lcom/conceptglobal/pmc/SetupPMC;

    invoke-static {v0}, Lcom/conceptglobal/pmc/SetupPMC;->access$1100(Lcom/conceptglobal/pmc/SetupPMC;)V

    return-void
.end method

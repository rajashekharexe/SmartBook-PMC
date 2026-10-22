.class Lcom/conceptglobal/pmc/SetupPMC$2$2;
.super Ljava/lang/Object;
.source "SetupPMC.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/SetupPMC$2;->onComplete(Ljava/lang/String;Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/conceptglobal/pmc/SetupPMC$2;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/SetupPMC$2;)V
    .locals 0

    .line 334
    iput-object p1, p0, Lcom/conceptglobal/pmc/SetupPMC$2$2;->this$1:Lcom/conceptglobal/pmc/SetupPMC$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/conceptglobal/pmc/SetupPMC$2$2;->this$1:Lcom/conceptglobal/pmc/SetupPMC$2;

    iget-object v0, v0, Lcom/conceptglobal/pmc/SetupPMC$2;->this$0:Lcom/conceptglobal/pmc/SetupPMC;

    invoke-static {v0}, Lcom/conceptglobal/pmc/SetupPMC;->access$700(Lcom/conceptglobal/pmc/SetupPMC;)V

    return-void
.end method

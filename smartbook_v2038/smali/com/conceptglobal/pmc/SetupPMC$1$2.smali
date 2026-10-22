.class Lcom/conceptglobal/pmc/SetupPMC$1$2;
.super Ljava/lang/Object;
.source "SetupPMC.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/SetupPMC$1;->onComplete(Ljava/lang/String;Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/conceptglobal/pmc/SetupPMC$1;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/SetupPMC$1;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/conceptglobal/pmc/SetupPMC$1$2;->this$1:Lcom/conceptglobal/pmc/SetupPMC$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/conceptglobal/pmc/SetupPMC$1$2;->this$1:Lcom/conceptglobal/pmc/SetupPMC$1;

    iget-object v0, v0, Lcom/conceptglobal/pmc/SetupPMC$1;->this$0:Lcom/conceptglobal/pmc/SetupPMC;

    invoke-static {v0}, Lcom/conceptglobal/pmc/SetupPMC;->access$300(Lcom/conceptglobal/pmc/SetupPMC;)V

    return-void
.end method

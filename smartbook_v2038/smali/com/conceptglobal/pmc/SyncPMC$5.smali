.class Lcom/conceptglobal/pmc/SyncPMC$5;
.super Ljava/lang/Object;
.source "SyncPMC.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/SyncPMC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/SyncPMC;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/SyncPMC;)V
    .locals 0

    .line 482
    iput-object p1, p0, Lcom/conceptglobal/pmc/SyncPMC$5;->this$0:Lcom/conceptglobal/pmc/SyncPMC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 486
    iget-object v0, p0, Lcom/conceptglobal/pmc/SyncPMC$5;->this$0:Lcom/conceptglobal/pmc/SyncPMC;

    invoke-static {v0}, Lcom/conceptglobal/pmc/SyncPMC;->access$500(Lcom/conceptglobal/pmc/SyncPMC;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/SyncPMC;->access$600(Lcom/conceptglobal/pmc/SyncPMC;Ljava/lang/String;)V

    return-void
.end method

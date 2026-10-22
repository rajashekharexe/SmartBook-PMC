.class Lcom/conceptglobal/pmc/SyncPMC$6;
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

    .line 490
    iput-object p1, p0, Lcom/conceptglobal/pmc/SyncPMC$6;->this$0:Lcom/conceptglobal/pmc/SyncPMC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 494
    iget-object v0, p0, Lcom/conceptglobal/pmc/SyncPMC$6;->this$0:Lcom/conceptglobal/pmc/SyncPMC;

    invoke-static {v0}, Lcom/conceptglobal/pmc/SyncPMC;->access$700(Lcom/conceptglobal/pmc/SyncPMC;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/SyncPMC$6;->this$0:Lcom/conceptglobal/pmc/SyncPMC;

    invoke-static {v1}, Lcom/conceptglobal/pmc/SyncPMC;->access$500(Lcom/conceptglobal/pmc/SyncPMC;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

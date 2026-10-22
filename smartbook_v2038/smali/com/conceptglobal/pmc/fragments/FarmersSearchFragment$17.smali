.class Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$17;
.super Landroid/content/BroadcastReceiver;
.source "FarmersSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)V
    .locals 0

    .line 1367
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$17;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1371
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MobileSearch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1372
    const-string p1, "MobileNumber"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1373
    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$17;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {p2, p1}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$2900(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

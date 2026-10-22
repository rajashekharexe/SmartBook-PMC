.class Lcom/conceptglobal/pmc/fragments/HomePageFragment$LocalBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HomePageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fragments/HomePageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/HomePageFragment;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/fragments/HomePageFragment;)V
    .locals 0

    .line 2139
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$LocalBroadcastReceiver;->this$0:Lcom/conceptglobal/pmc/fragments/HomePageFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/conceptglobal/pmc/fragments/HomePageFragment;Lcom/conceptglobal/pmc/fragments/HomePageFragment$1;)V
    .locals 0

    .line 2139
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fragments/HomePageFragment$LocalBroadcastReceiver;-><init>(Lcom/conceptglobal/pmc/fragments/HomePageFragment;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 2143
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.GPSTurnedOnResult"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2144
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$LocalBroadcastReceiver;->this$0:Lcom/conceptglobal/pmc/fragments/HomePageFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->access$2300(Lcom/conceptglobal/pmc/fragments/HomePageFragment;)V

    .line 2147
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "compress_video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2148
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "compressedFilePath"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 2149
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "imageId"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2155
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$LocalBroadcastReceiver;->this$0:Lcom/conceptglobal/pmc/fragments/HomePageFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->access$500(Lcom/conceptglobal/pmc/fragments/HomePageFragment;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2156
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$LocalBroadcastReceiver;->this$0:Lcom/conceptglobal/pmc/fragments/HomePageFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->access$500(Lcom/conceptglobal/pmc/fragments/HomePageFragment;)Landroid/content/Context;

    move-result-object p1

    const-class p2, Lcom/conceptglobal/pmc/service/SyncDataService;

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isServiceRunning(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 2157
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/conceptglobal/pmc/fragments/HomePageFragment$LocalBroadcastReceiver$1;

    invoke-direct {p2, p0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment$LocalBroadcastReceiver$1;-><init>(Lcom/conceptglobal/pmc/fragments/HomePageFragment$LocalBroadcastReceiver;)V

    const-wide/16 v0, 0x1388

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

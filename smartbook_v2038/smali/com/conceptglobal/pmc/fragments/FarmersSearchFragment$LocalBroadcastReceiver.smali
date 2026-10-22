.class Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LocalBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FarmersSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)V
    .locals 0

    .line 1406
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LocalBroadcastReceiver;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$1;)V
    .locals 0

    .line 1406
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LocalBroadcastReceiver;-><init>(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1410
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.FarmerSearchLocationPermissionGranted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1411
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LocalBroadcastReceiver;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$3000(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)V

    goto :goto_0

    .line 1412
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.FarmerSearchLocationPermissionDenied"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1413
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LocalBroadcastReceiver;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$3100(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Lcom/conceptglobal/pmc/utils/LocationUtils;

    move-result-object p1

    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LocalBroadcastReceiver;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-string v0, "PermissionDenied"

    invoke-virtual {p1, p2, v0}, Lcom/conceptglobal/pmc/utils/LocationUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 1414
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.FarmerSearchGPSTurnedOnResult"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1415
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LocalBroadcastReceiver;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$3000(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)V

    goto :goto_0

    .line 1416
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.FarmerSearchGPSNotTurnedOnResult"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1417
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LocalBroadcastReceiver;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$3100(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;)Lcom/conceptglobal/pmc/utils/LocationUtils;

    move-result-object p1

    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$LocalBroadcastReceiver;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-string v0, "GPSNotTurnedOn"

    invoke-virtual {p1, p2, v0}, Lcom/conceptglobal/pmc/utils/LocationUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.class Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocalBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RetailersSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)V
    .locals 0

    .line 1330
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocalBroadcastReceiver;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$1;)V
    .locals 0

    .line 1330
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocalBroadcastReceiver;-><init>(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1334
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.RetailerSearchLocationPermissionGranted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1335
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocalBroadcastReceiver;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$3200(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)V

    goto :goto_0

    .line 1336
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.RetailerSearchLocationPermissionDenied"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1337
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocalBroadcastReceiver;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$3300(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Lcom/conceptglobal/pmc/utils/LocationUtils;

    move-result-object p1

    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocalBroadcastReceiver;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-string v0, "PermissionDenied"

    invoke-virtual {p1, p2, v0}, Lcom/conceptglobal/pmc/utils/LocationUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 1338
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.RetailerSearchGPSTurnedOnResult"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1339
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocalBroadcastReceiver;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$3200(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)V

    goto :goto_0

    .line 1340
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.RetailerSearchGPSNotTurnedOnResult"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1341
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocalBroadcastReceiver;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$3300(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;)Lcom/conceptglobal/pmc/utils/LocationUtils;

    move-result-object p1

    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$LocalBroadcastReceiver;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-string v0, "GPSNotTurnedOn"

    invoke-virtual {p1, p2, v0}, Lcom/conceptglobal/pmc/utils/LocationUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

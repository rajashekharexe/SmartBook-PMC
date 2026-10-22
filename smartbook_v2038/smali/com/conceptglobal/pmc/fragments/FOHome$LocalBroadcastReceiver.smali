.class Lcom/conceptglobal/pmc/fragments/FOHome$LocalBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FOHome.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fragments/FOHome;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/FOHome;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/fragments/FOHome;)V
    .locals 0

    .line 823
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FOHome$LocalBroadcastReceiver;->this$0:Lcom/conceptglobal/pmc/fragments/FOHome;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 827
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.ToDoLocationPermissionGranted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 828
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FOHome$LocalBroadcastReceiver;->this$0:Lcom/conceptglobal/pmc/fragments/FOHome;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/FOHome;->access$800(Lcom/conceptglobal/pmc/fragments/FOHome;)V

    goto :goto_0

    .line 829
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.ToDoLocationPermissionDenied"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 830
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FOHome$LocalBroadcastReceiver;->this$0:Lcom/conceptglobal/pmc/fragments/FOHome;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/FOHome;->access$1000(Lcom/conceptglobal/pmc/fragments/FOHome;)Lcom/conceptglobal/pmc/utils/LocationUtils;

    move-result-object p1

    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/FOHome$LocalBroadcastReceiver;->this$0:Lcom/conceptglobal/pmc/fragments/FOHome;

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/fragments/FOHome;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-string v0, "PermissionDenied"

    invoke-virtual {p1, p2, v0}, Lcom/conceptglobal/pmc/utils/LocationUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 831
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.ToDoGPSTurnedOnResult"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 832
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FOHome$LocalBroadcastReceiver;->this$0:Lcom/conceptglobal/pmc/fragments/FOHome;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/FOHome;->access$800(Lcom/conceptglobal/pmc/fragments/FOHome;)V

    goto :goto_0

    .line 833
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.ToDoGPSNotTurnedOnResult"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 834
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FOHome$LocalBroadcastReceiver;->this$0:Lcom/conceptglobal/pmc/fragments/FOHome;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/FOHome;->access$1000(Lcom/conceptglobal/pmc/fragments/FOHome;)Lcom/conceptglobal/pmc/utils/LocationUtils;

    move-result-object p1

    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/FOHome$LocalBroadcastReceiver;->this$0:Lcom/conceptglobal/pmc/fragments/FOHome;

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/fragments/FOHome;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-string v0, "GPSNotTurnedOn"

    invoke-virtual {p1, p2, v0}, Lcom/conceptglobal/pmc/utils/LocationUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

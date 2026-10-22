.class Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$LocalBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AttributesTableFarmatFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;)V
    .locals 0

    .line 2441
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$LocalBroadcastReceiver;->this$0:Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$1;)V
    .locals 0

    .line 2441
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$LocalBroadcastReceiver;-><init>(Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 2445
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.GPSTurnedOnResult"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2446
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment$LocalBroadcastReceiver;->this$0:Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;->access$1000(Lcom/conceptglobal/pmc/fragments/AttributesTableFarmatFragment;)V

    :cond_0
    return-void
.end method

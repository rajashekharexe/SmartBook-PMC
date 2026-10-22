.class Lcom/conceptglobal/pmc/fragments/HomePageFragment$LocalBroadcastReceiver$1;
.super Ljava/lang/Object;
.source "HomePageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/HomePageFragment$LocalBroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/conceptglobal/pmc/fragments/HomePageFragment$LocalBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/HomePageFragment$LocalBroadcastReceiver;)V
    .locals 0

    .line 2157
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$LocalBroadcastReceiver$1;->this$1:Lcom/conceptglobal/pmc/fragments/HomePageFragment$LocalBroadcastReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2161
    new-instance v0, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$LocalBroadcastReceiver$1;->this$1:Lcom/conceptglobal/pmc/fragments/HomePageFragment$LocalBroadcastReceiver;

    iget-object v1, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment$LocalBroadcastReceiver;->this$0:Lcom/conceptglobal/pmc/fragments/HomePageFragment;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->access$500(Lcom/conceptglobal/pmc/fragments/HomePageFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;-><init>(Landroid/content/Context;)V

    .line 2162
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;->startService()V

    return-void
.end method

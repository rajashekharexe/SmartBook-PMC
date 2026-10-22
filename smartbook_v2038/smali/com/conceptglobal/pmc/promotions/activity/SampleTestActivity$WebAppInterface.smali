.class public Lcom/conceptglobal/pmc/promotions/activity/SampleTestActivity$WebAppInterface;
.super Ljava/lang/Object;
.source "SampleTestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/promotions/activity/SampleTestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebAppInterface"
.end annotation


# instance fields
.field mActivity:Landroid/app/Activity;

.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/activity/SampleTestActivity;


# direct methods
.method public constructor <init>(Lcom/conceptglobal/pmc/promotions/activity/SampleTestActivity;Landroid/content/Context;Landroid/app/Activity;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/SampleTestActivity$WebAppInterface;->this$0:Lcom/conceptglobal/pmc/promotions/activity/SampleTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/activity/SampleTestActivity$WebAppInterface;->mContext:Landroid/content/Context;

    .line 130
    iput-object p3, p0, Lcom/conceptglobal/pmc/promotions/activity/SampleTestActivity$WebAppInterface;->mActivity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public testStatus(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 136
    const-string v0, "TestStatus"

    if-eqz p1, :cond_0

    const-string v1, "PASS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    new-instance v1, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/SampleTestActivity$WebAppInterface;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/SampleTestActivity$WebAppInterface;->this$0:Lcom/conceptglobal/pmc/promotions/activity/SampleTestActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/promotions/activity/SampleTestActivity;->access$000(Lcom/conceptglobal/pmc/promotions/activity/SampleTestActivity;)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->updateWatchStatus(Ljava/lang/String;II)V

    goto :goto_0

    .line 139
    :cond_0
    new-instance v1, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/SampleTestActivity$WebAppInterface;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/SampleTestActivity$WebAppInterface;->this$0:Lcom/conceptglobal/pmc/promotions/activity/SampleTestActivity;

    invoke-static {v2}, Lcom/conceptglobal/pmc/promotions/activity/SampleTestActivity;->access$000(Lcom/conceptglobal/pmc/promotions/activity/SampleTestActivity;)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v1, v0, v2, v3}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->updateWatchStatus(Ljava/lang/String;II)V

    .line 141
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 144
    const-string v0, "Status"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/SampleTestActivity$WebAppInterface;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

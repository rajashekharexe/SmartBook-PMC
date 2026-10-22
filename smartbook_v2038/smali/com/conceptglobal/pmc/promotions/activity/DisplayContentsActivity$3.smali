.class Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "DisplayContentsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 230
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;

    iget-object p1, p1, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->criteria:Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;->setContentIds(Ljava/lang/String;)V

    .line 231
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;

    iget-object p1, p1, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->criteria:Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;->setContentTypes(Ljava/lang/String;)V

    .line 232
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;->access$200(Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity;)V

    return-void
.end method

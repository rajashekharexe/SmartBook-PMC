.class Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2$3;
.super Landroid/content/BroadcastReceiver;
.source "DisplayContentsActivity2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 228
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;

    iget-object p1, p1, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;->criteria:Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;->setContentIds(Ljava/lang/String;)V

    .line 229
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;

    iget-object p1, p1, Lcom/conceptglobal/pmc/promotions/activity/DisplayContentsActivity2;->criteria:Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;->setContentTypes(Ljava/lang/String;)V

    return-void
.end method

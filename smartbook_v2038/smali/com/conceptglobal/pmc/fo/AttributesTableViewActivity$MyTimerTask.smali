.class Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$MyTimerTask;
.super Ljava/util/TimerTask;
.source "AttributesTableViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)V
    .locals 0

    .line 3319
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$MyTimerTask;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 3323
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$MyTimerTask;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    new-instance v1, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$MyTimerTask$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$MyTimerTask$1;-><init>(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$MyTimerTask;)V

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

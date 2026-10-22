.class Lcom/conceptglobal/pmc/fo/AttributesActivity$MyTimerTask;
.super Ljava/util/TimerTask;
.source "AttributesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fo/AttributesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/AttributesActivity;)V
    .locals 0

    .line 4252
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$MyTimerTask;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 4256
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$MyTimerTask;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    new-instance v1, Lcom/conceptglobal/pmc/fo/AttributesActivity$MyTimerTask$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity$MyTimerTask$1;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity$MyTimerTask;)V

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

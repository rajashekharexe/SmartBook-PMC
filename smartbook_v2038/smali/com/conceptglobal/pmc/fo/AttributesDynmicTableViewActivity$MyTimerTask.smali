.class Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$MyTimerTask;
.super Ljava/util/TimerTask;
.source "AttributesDynmicTableViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;)V
    .locals 0

    .line 2517
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$MyTimerTask;->this$0:Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2521
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$MyTimerTask;->this$0:Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;

    new-instance v1, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$MyTimerTask$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$MyTimerTask$1;-><init>(Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity$MyTimerTask;)V

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/fo/AttributesDynmicTableViewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

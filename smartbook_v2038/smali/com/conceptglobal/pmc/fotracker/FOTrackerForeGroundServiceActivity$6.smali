.class Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$6;
.super Ljava/lang/Object;
.source "FOTrackerForeGroundServiceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;)V
    .locals 0

    .line 402
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$6;->this$0:Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$6;->this$0:Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->access$800(Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 407
    iget-object p1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$6;->this$0:Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->access$900(Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;)V

    goto :goto_0

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$6;->this$0:Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->startDay(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.class Lcom/conceptglobal/pmc/fo/SAAttributeActivity$27;
.super Landroid/content/BroadcastReceiver;
.source "SAAttributeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fo/SAAttributeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)V
    .locals 0

    .line 3110
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$27;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 3116
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$27;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    const-string v0, "IsDisplayOthersTab"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$1002(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;Z)Z

    .line 3117
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$27;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$1000(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3118
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$27;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    const/4 p2, 0x2

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$1200(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;I)V

    goto :goto_0

    .line 3121
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$27;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$1200(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;I)V

    :goto_0
    return-void
.end method

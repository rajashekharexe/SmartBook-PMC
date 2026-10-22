.class Lcom/conceptglobal/pmc/MainHomePageActivity$17;
.super Landroid/content/BroadcastReceiver;
.source "MainHomePageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/MainHomePageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/MainHomePageActivity;)V
    .locals 0

    .line 967
    iput-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$17;->this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 971
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Action.Finish"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 972
    iget-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$17;->this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/MainHomePageActivity;->finish()V

    :cond_0
    return-void
.end method

.class Lcom/conceptglobal/pmc/MainHomePageActivity$16;
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

    .line 935
    iput-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$16;->this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 941
    :try_start_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$16;->this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/MainHomePageActivity;->access$600(Lcom/conceptglobal/pmc/MainHomePageActivity;)Lcom/conceptglobal/pmc/fragments/FragmentDrawer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/FragmentDrawer;->setAdapter()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 943
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

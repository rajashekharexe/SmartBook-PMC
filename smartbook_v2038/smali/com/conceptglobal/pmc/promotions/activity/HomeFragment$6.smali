.class Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$6;
.super Ljava/util/TimerTask;
.source "HomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->setBannersAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;

.field final synthetic val$Update:Ljava/lang/Runnable;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    .line 559
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$6;->this$0:Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;

    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$6;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$6;->val$Update:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 562
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$6;->val$handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$6;->val$Update:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.class Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$3$1$1$1;
.super Ljava/lang/Object;
.source "VideoCapureActivityCopy2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$3$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$3$1$1;

.field final synthetic val$mCompressRequest:Landroidx/work/OneTimeWorkRequest;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$3$1$1;Landroidx/work/OneTimeWorkRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 414
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$3$1$1$1;->this$3:Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$3$1$1;

    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$3$1$1$1;->val$mCompressRequest:Landroidx/work/OneTimeWorkRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 417
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$3$1$1$1;->this$3:Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$3$1$1;

    iget-object v0, v0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$3$1$1;->this$2:Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$3$1;

    iget-object v0, v0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$3$1;->this$1:Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$3;

    iget-object v0, v0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$3;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;

    invoke-static {v0}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$3$1$1$1;->val$mCompressRequest:Landroidx/work/OneTimeWorkRequest;

    invoke-virtual {v0, v1}, Landroidx/work/WorkManager;->enqueue(Landroidx/work/WorkRequest;)Landroidx/work/Operation;

    return-void
.end method

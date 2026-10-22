.class Lcom/conceptglobal/pmc/fragments/AddTestimonial$17;
.super Ljava/lang/Object;
.source "AddTestimonial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/AddTestimonial;->hideLoader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/AddTestimonial;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/AddTestimonial;)V
    .locals 0

    .line 4384
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$17;->this$0:Lcom/conceptglobal/pmc/fragments/AddTestimonial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 4387
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$17;->this$0:Lcom/conceptglobal/pmc/fragments/AddTestimonial;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->access$2900(Lcom/conceptglobal/pmc/fragments/AddTestimonial;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$17;->this$0:Lcom/conceptglobal/pmc/fragments/AddTestimonial;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->access$2900(Lcom/conceptglobal/pmc/fragments/AddTestimonial;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4388
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$17;->this$0:Lcom/conceptglobal/pmc/fragments/AddTestimonial;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->access$2900(Lcom/conceptglobal/pmc/fragments/AddTestimonial;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 4389
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$17;->this$0:Lcom/conceptglobal/pmc/fragments/AddTestimonial;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->access$2902(Lcom/conceptglobal/pmc/fragments/AddTestimonial;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4391
    const-string v1, "VideoCaptureActivity"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

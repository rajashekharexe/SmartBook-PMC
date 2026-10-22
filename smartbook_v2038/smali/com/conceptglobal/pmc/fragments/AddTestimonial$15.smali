.class Lcom/conceptglobal/pmc/fragments/AddTestimonial$15;
.super Landroid/content/BroadcastReceiver;
.source "AddTestimonial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fragments/AddTestimonial;
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

    .line 3965
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$15;->this$0:Lcom/conceptglobal/pmc/fragments/AddTestimonial;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 3969
    const-string p1, "deletedImage"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3970
    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$15;->this$0:Lcom/conceptglobal/pmc/fragments/AddTestimonial;

    invoke-static {p2}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->access$2300(Lcom/conceptglobal/pmc/fragments/AddTestimonial;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3971
    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$15;->this$0:Lcom/conceptglobal/pmc/fragments/AddTestimonial;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->access$2402(Lcom/conceptglobal/pmc/fragments/AddTestimonial;Z)Z

    .line 3973
    :try_start_0
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3974
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3975
    invoke-virtual {p2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3978
    const-string p2, "VideoCaptureActivity"

    invoke-static {p2, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

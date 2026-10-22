.class Lcom/conceptglobal/pmc/fragments/AddTestimonial$3;
.super Ljava/lang/Object;
.source "AddTestimonial.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/AddTestimonial;->onCreate(Landroid/os/Bundle;)V
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

    .line 415
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$3;->this$0:Lcom/conceptglobal/pmc/fragments/AddTestimonial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 422
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 423
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$3;->this$0:Lcom/conceptglobal/pmc/fragments/AddTestimonial;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 424
    const-string v0, "android.intent.extra.durationLimit"

    const/16 v1, 0x1e

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 425
    const-string v0, "android.intent.extra.videoQuality"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 426
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddTestimonial$3;->this$0:Lcom/conceptglobal/pmc/fragments/AddTestimonial;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/conceptglobal/pmc/fragments/AddTestimonial;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

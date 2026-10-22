.class Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$2;
.super Ljava/lang/Object;
.source "VideoCaptureActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->Initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$2;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 200
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 201
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$2;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;

    invoke-static {v1, v1, v0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->access$200(Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 203
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 205
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$2;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 206
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    const-string v0, "android.intent.extra.durationLimit"

    const/16 v1, 0x1e

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 208
    const-string v0, "android.intent.extra.videoQuality"

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 209
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$2;->this$0:Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

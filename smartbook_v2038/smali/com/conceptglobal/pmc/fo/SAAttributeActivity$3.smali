.class Lcom/conceptglobal/pmc/fo/SAAttributeActivity$3;
.super Ljava/lang/Object;
.source "SAAttributeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 358
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$3;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 361
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$3;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    const-string v0, "android.permission.CAMERA"

    invoke-static {p1, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 362
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$3;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x65

    invoke-static {p1, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 365
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$3;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$200(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x5

    if-ge p1, v0, :cond_1

    .line 366
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$3;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$300(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;J)V

    goto :goto_0

    .line 368
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$3;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    const-string v0, "only 5 video allowed"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

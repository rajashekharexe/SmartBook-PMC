.class Lcom/conceptglobal/pmc/fotracker/service/SystemAlertDialogService$1;
.super Landroid/widget/FrameLayout;
.source "SystemAlertDialogService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fotracker/service/SystemAlertDialogService;->addOverlayView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fotracker/service/SystemAlertDialogService;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fotracker/service/SystemAlertDialogService;Landroid/content/Context;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/service/SystemAlertDialogService$1;->this$0:Lcom/conceptglobal/pmc/fotracker/service/SystemAlertDialogService;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 76
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 79
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 81
    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/service/SystemAlertDialogService;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BACK Button Pressed"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1

    .line 89
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

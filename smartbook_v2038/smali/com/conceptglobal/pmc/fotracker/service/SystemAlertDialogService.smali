.class public Lcom/conceptglobal/pmc/fotracker/service/SystemAlertDialogService;
.super Landroid/app/Service;
.source "SystemAlertDialogService.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "SystemAlertDialogService"


# instance fields
.field private floatyView:Landroid/view/View;

.field msg:Ljava/lang/String;

.field private windowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/conceptglobal/pmc/fotracker/service/SystemAlertDialogService;->msg:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lcom/conceptglobal/pmc/fotracker/service/SystemAlertDialogService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private addOverlayView()V
    .locals 7

    .line 58
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v4, 0x0

    const/4 v5, -0x3

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/16 v3, 0x7f6

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const v0, 0x800013

    .line 66
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v0, 0x0

    .line 67
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 68
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 70
    new-instance v0, Lcom/conceptglobal/pmc/fotracker/service/SystemAlertDialogService$1;

    invoke-direct {v0, p0, p0}, Lcom/conceptglobal/pmc/fotracker/service/SystemAlertDialogService$1;-><init>(Lcom/conceptglobal/pmc/fotracker/service/SystemAlertDialogService;Landroid/content/Context;)V

    .line 93
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/fotracker/service/SystemAlertDialogService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v2, 0x7f0c00ae

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fotracker/service/SystemAlertDialogService;->floatyView:Landroid/view/View;

    .line 95
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 98
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/service/SystemAlertDialogService;->floatyView:Landroid/view/View;

    const v1, 0x7f09015e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fotracker/service/SystemAlertDialogService;->msg:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Something went wrong, open app"

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fotracker/service/SystemAlertDialogService;->msg:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/service/SystemAlertDialogService;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fotracker/service/SystemAlertDialogService;->floatyView:Landroid/view/View;

    invoke-interface {v0, v1, v6}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    .line 42
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 44
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fotracker/service/SystemAlertDialogService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fotracker/service/SystemAlertDialogService;->windowManager:Landroid/view/WindowManager;

    .line 46
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fotracker/service/SystemAlertDialogService;->addOverlayView()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 106
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 108
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/service/SystemAlertDialogService;->floatyView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 110
    iget-object v1, p0, Lcom/conceptglobal/pmc/fotracker/service/SystemAlertDialogService;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 112
    iput-object v0, p0, Lcom/conceptglobal/pmc/fotracker/service/SystemAlertDialogService;->floatyView:Landroid/view/View;

    .line 113
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fotracker/service/SystemAlertDialogService;->stopSelf()V

    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 51
    const-string p2, "msg"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/service/SystemAlertDialogService;->msg:Ljava/lang/String;

    const/4 p1, 0x2

    return p1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 120
    sget-object p1, Lcom/conceptglobal/pmc/fotracker/service/SystemAlertDialogService;->TAG:Ljava/lang/String;

    const-string p2, "onTouch..."

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fotracker/service/SystemAlertDialogService;->stopSelf()V

    const/4 p1, 0x1

    return p1
.end method

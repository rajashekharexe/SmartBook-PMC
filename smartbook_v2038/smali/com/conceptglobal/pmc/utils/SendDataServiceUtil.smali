.class public Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;
.super Ljava/lang/Object;
.source "SendDataServiceUtil.java"

# interfaces
.implements Lcom/conceptglobal/pmc/interfaces/OnResultReceiver;


# instance fields
.field private mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field private mReceiver:Lcom/conceptglobal/pmc/SyncResultReceiver;

.field mRunnable:Ljava/lang/Runnable;

.field private msg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil$1;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil$1;-><init>(Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;->mRunnable:Ljava/lang/Runnable;

    .line 29
    iput-object p1, p0, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;->mContext:Landroid/content/Context;

    .line 31
    new-instance p1, Lcom/conceptglobal/pmc/SyncResultReceiver;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, v0}, Lcom/conceptglobal/pmc/SyncResultReceiver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;->mReceiver:Lcom/conceptglobal/pmc/SyncResultReceiver;

    .line 32
    invoke-virtual {p1, p0}, Lcom/conceptglobal/pmc/SyncResultReceiver;->setReceiver(Lcom/conceptglobal/pmc/interfaces/OnResultReceiver;)V

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;)Landroid/content/Context;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;)Ljava/lang/String;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;->msg:Ljava/lang/String;

    return-object p0
.end method

.method private notifyUser(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 66
    iget-object p1, p0, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isAppRunningInForeground(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 68
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;->mHandler:Landroid/os/Handler;

    .line 69
    iput-object p2, p0, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;->msg:Ljava/lang/String;

    .line 70
    iget-object p2, p0, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public onReceiveResult(ILandroid/os/Bundle;)V
    .locals 2

    .line 47
    const-string v0, "respMsg"

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 59
    invoke-direct {p0, p2, p1}, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;->notifyUser(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public startService()V
    .locals 3

    .line 36
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;->mContext:Landroid/content/Context;

    const-class v2, Lcom/conceptglobal/pmc/service/SyncDataService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 38
    const-string v1, "receiver"

    iget-object v2, p0, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;->mReceiver:Lcom/conceptglobal/pmc/SyncResultReceiver;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 39
    iget-object v1, p0, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

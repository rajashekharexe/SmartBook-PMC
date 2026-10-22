.class Lcom/conceptglobal/pmc/utils/ExceptionHandler$AlternateMainLooper;
.super Ljava/lang/Thread;
.source "ExceptionHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/utils/ExceptionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlternateMainLooper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/utils/ExceptionHandler;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/utils/ExceptionHandler;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/conceptglobal/pmc/utils/ExceptionHandler$AlternateMainLooper;->this$0:Lcom/conceptglobal/pmc/utils/ExceptionHandler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 325
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "Alternate Main Looper"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 326
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 343
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    const/16 v0, 0xa

    .line 344
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 346
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method

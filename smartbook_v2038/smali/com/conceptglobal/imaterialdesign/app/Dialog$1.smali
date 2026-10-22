.class Lcom/conceptglobal/imaterialdesign/app/Dialog$1;
.super Ljava/lang/Object;
.source "Dialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/imaterialdesign/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;


# direct methods
.method constructor <init>(Lcom/conceptglobal/imaterialdesign/app/Dialog;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$1;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog$1;->this$0:Lcom/conceptglobal/imaterialdesign/app/Dialog;

    invoke-static {v0}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->access$001(Lcom/conceptglobal/imaterialdesign/app/Dialog;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

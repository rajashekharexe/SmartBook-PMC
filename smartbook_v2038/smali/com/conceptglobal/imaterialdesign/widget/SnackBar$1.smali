.class Lcom/conceptglobal/imaterialdesign/widget/SnackBar$1;
.super Ljava/lang/Object;
.source "SnackBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/imaterialdesign/widget/SnackBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/imaterialdesign/widget/SnackBar;


# direct methods
.method constructor <init>(Lcom/conceptglobal/imaterialdesign/widget/SnackBar;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar$1;->this$0:Lcom/conceptglobal/imaterialdesign/widget/SnackBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar$1;->this$0:Lcom/conceptglobal/imaterialdesign/widget/SnackBar;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->dismiss()V

    return-void
.end method

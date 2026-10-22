.class Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$1;
.super Ljava/lang/Object;
.source "ToolbarManager.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;


# direct methods
.method constructor <init>(Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$1;->this$0:Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$1;->this$0:Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;

    invoke-static {v0}, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;->access$000(Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;)V

    return-void
.end method

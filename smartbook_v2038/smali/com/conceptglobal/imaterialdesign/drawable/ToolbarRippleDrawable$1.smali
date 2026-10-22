.class Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable$1;
.super Ljava/lang/Object;
.source "ToolbarRippleDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;


# direct methods
.method constructor <init>(Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;)V
    .locals 0

    .line 339
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable$1;->this$0:Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 343
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable$1;->this$0:Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;

    invoke-static {v0}, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->access$000(Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable$1;->this$0:Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;

    invoke-static {v0}, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->access$200(Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;)V

    goto :goto_0

    .line 346
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable$1;->this$0:Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;

    invoke-static {v0}, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->access$100(Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;)V

    :goto_0
    return-void
.end method

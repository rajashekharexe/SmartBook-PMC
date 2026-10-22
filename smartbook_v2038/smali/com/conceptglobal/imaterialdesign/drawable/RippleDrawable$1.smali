.class Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$1;
.super Ljava/lang/Object;
.source "RippleDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;


# direct methods
.method constructor <init>(Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;)V
    .locals 0

    .line 378
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$1;->this$0:Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 382
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$1;->this$0:Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;

    invoke-static {v0}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->access$000(Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$1;->this$0:Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;

    invoke-static {v0}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->access$200(Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;)V

    goto :goto_0

    .line 385
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$1;->this$0:Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;

    invoke-static {v0}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->access$100(Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;)V

    :goto_0
    return-void
.end method

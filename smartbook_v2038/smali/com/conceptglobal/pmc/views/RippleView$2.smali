.class Lcom/conceptglobal/pmc/views/RippleView$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "RippleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/views/RippleView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/views/RippleView;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/views/RippleView;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/conceptglobal/pmc/views/RippleView$2;->this$0:Lcom/conceptglobal/pmc/views/RippleView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    .line 106
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 107
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/RippleView$2;->this$0:Lcom/conceptglobal/pmc/views/RippleView;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/views/RippleView;->animateRipple(Landroid/view/MotionEvent;)V

    .line 108
    iget-object p1, p0, Lcom/conceptglobal/pmc/views/RippleView$2;->this$0:Lcom/conceptglobal/pmc/views/RippleView;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/views/RippleView;->access$000(Lcom/conceptglobal/pmc/views/RippleView;Ljava/lang/Boolean;)V

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

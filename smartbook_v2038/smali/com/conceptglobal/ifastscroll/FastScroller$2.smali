.class Lcom/conceptglobal/ifastscroll/FastScroller$2;
.super Ljava/lang/Object;
.source "FastScroller.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/ifastscroll/FastScroller;->initHandleMovement()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/ifastscroll/FastScroller;


# direct methods
.method constructor <init>(Lcom/conceptglobal/ifastscroll/FastScroller;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/conceptglobal/ifastscroll/FastScroller$2;->this$0:Lcom/conceptglobal/ifastscroll/FastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 105
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x0

    if-ne p1, v0, :cond_2

    .line 118
    iget-object p1, p0, Lcom/conceptglobal/ifastscroll/FastScroller$2;->this$0:Lcom/conceptglobal/ifastscroll/FastScroller;

    invoke-static {p1, p2}, Lcom/conceptglobal/ifastscroll/FastScroller;->access$402(Lcom/conceptglobal/ifastscroll/FastScroller;Z)Z

    .line 119
    iget-object p1, p0, Lcom/conceptglobal/ifastscroll/FastScroller$2;->this$0:Lcom/conceptglobal/ifastscroll/FastScroller;

    invoke-static {p1}, Lcom/conceptglobal/ifastscroll/FastScroller;->access$200(Lcom/conceptglobal/ifastscroll/FastScroller;)Lcom/conceptglobal/ifastscroll/SectionTitleProvider;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/conceptglobal/ifastscroll/FastScroller$2;->this$0:Lcom/conceptglobal/ifastscroll/FastScroller;

    invoke-static {p1}, Lcom/conceptglobal/ifastscroll/FastScroller;->access$300(Lcom/conceptglobal/ifastscroll/FastScroller;)Lcom/conceptglobal/ifastscroll/FastScrollBubble;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/ifastscroll/FastScrollBubble;->hide()V

    :cond_1
    return v0

    :cond_2
    return p2

    .line 107
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/ifastscroll/FastScroller$2;->this$0:Lcom/conceptglobal/ifastscroll/FastScroller;

    invoke-static {p1}, Lcom/conceptglobal/ifastscroll/FastScroller;->access$200(Lcom/conceptglobal/ifastscroll/FastScroller;)Lcom/conceptglobal/ifastscroll/SectionTitleProvider;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/conceptglobal/ifastscroll/FastScroller$2;->this$0:Lcom/conceptglobal/ifastscroll/FastScroller;

    invoke-static {p1}, Lcom/conceptglobal/ifastscroll/FastScroller;->access$300(Lcom/conceptglobal/ifastscroll/FastScroller;)Lcom/conceptglobal/ifastscroll/FastScrollBubble;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/ifastscroll/FastScrollBubble;->show()V

    .line 108
    :cond_4
    iget-object p1, p0, Lcom/conceptglobal/ifastscroll/FastScroller$2;->this$0:Lcom/conceptglobal/ifastscroll/FastScroller;

    invoke-static {p1, v0}, Lcom/conceptglobal/ifastscroll/FastScroller;->access$402(Lcom/conceptglobal/ifastscroll/FastScroller;Z)Z

    .line 110
    iget-object p1, p0, Lcom/conceptglobal/ifastscroll/FastScroller$2;->this$0:Lcom/conceptglobal/ifastscroll/FastScroller;

    invoke-static {p1, p2}, Lcom/conceptglobal/ifastscroll/FastScroller;->access$500(Lcom/conceptglobal/ifastscroll/FastScroller;Landroid/view/MotionEvent;)F

    move-result p1

    .line 111
    iget-object p2, p0, Lcom/conceptglobal/ifastscroll/FastScroller$2;->this$0:Lcom/conceptglobal/ifastscroll/FastScroller;

    invoke-static {p2, p1}, Lcom/conceptglobal/ifastscroll/FastScroller;->access$600(Lcom/conceptglobal/ifastscroll/FastScroller;F)V

    .line 112
    iget-object p2, p0, Lcom/conceptglobal/ifastscroll/FastScroller$2;->this$0:Lcom/conceptglobal/ifastscroll/FastScroller;

    invoke-static {p2, p1}, Lcom/conceptglobal/ifastscroll/FastScroller;->access$700(Lcom/conceptglobal/ifastscroll/FastScroller;F)V

    return v0
.end method

.class Lcom/conceptglobal/ifastscroll/FastScroller$1;
.super Ljava/lang/Object;
.source "FastScroller.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/ifastscroll/FastScroller;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
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

    .line 63
    iput-object p1, p0, Lcom/conceptglobal/ifastscroll/FastScroller$1;->this$0:Lcom/conceptglobal/ifastscroll/FastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 66
    iget-object p1, p0, Lcom/conceptglobal/ifastscroll/FastScroller$1;->this$0:Lcom/conceptglobal/ifastscroll/FastScroller;

    invoke-static {p1}, Lcom/conceptglobal/ifastscroll/FastScroller;->access$100(Lcom/conceptglobal/ifastscroll/FastScroller;)V

    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 71
    iget-object p1, p0, Lcom/conceptglobal/ifastscroll/FastScroller$1;->this$0:Lcom/conceptglobal/ifastscroll/FastScroller;

    invoke-static {p1}, Lcom/conceptglobal/ifastscroll/FastScroller;->access$100(Lcom/conceptglobal/ifastscroll/FastScroller;)V

    return-void
.end method

.class Lcom/conceptglobal/pmc/fragments/FragmentDrawer$RecyclerTouchListener;
.super Ljava/lang/Object;
.source "FragmentDrawer.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fragments/FragmentDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RecyclerTouchListener"
.end annotation


# instance fields
.field private clickListener:Lcom/conceptglobal/pmc/fragments/FragmentDrawer$ClickListener;

.field private gestureDetector:Landroid/view/GestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Lcom/conceptglobal/pmc/fragments/FragmentDrawer$ClickListener;)V
    .locals 2

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    iput-object p3, p0, Lcom/conceptglobal/pmc/fragments/FragmentDrawer$RecyclerTouchListener;->clickListener:Lcom/conceptglobal/pmc/fragments/FragmentDrawer$ClickListener;

    .line 251
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/conceptglobal/pmc/fragments/FragmentDrawer$RecyclerTouchListener$1;

    invoke-direct {v1, p0, p2, p3}, Lcom/conceptglobal/pmc/fragments/FragmentDrawer$RecyclerTouchListener$1;-><init>(Lcom/conceptglobal/pmc/fragments/FragmentDrawer$RecyclerTouchListener;Landroidx/recyclerview/widget/RecyclerView;Lcom/conceptglobal/pmc/fragments/FragmentDrawer$ClickListener;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FragmentDrawer$RecyclerTouchListener;->gestureDetector:Landroid/view/GestureDetector;

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 270
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/FragmentDrawer$RecyclerTouchListener;->clickListener:Lcom/conceptglobal/pmc/fragments/FragmentDrawer$ClickListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/FragmentDrawer$RecyclerTouchListener;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 272
    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/FragmentDrawer$RecyclerTouchListener;->clickListener:Lcom/conceptglobal/pmc/fragments/FragmentDrawer$ClickListener;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result p1

    invoke-interface {p2, v0, p1}, Lcom/conceptglobal/pmc/fragments/FragmentDrawer$ClickListener;->onClick(Landroid/view/View;I)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.class public Lcom/conceptglobal/ifastscroll/FastScroller;
.super Landroid/widget/LinearLayout;
.source "FastScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/ifastscroll/FastScroller$ScrollListener;
    }
.end annotation


# instance fields
.field private bubble:Lcom/conceptglobal/ifastscroll/FastScrollBubble;

.field private bubbleOffset:I

.field private handle:Landroid/widget/ImageView;

.field private manuallyChangingPosition:Z

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final scrollListener:Lcom/conceptglobal/ifastscroll/FastScroller$ScrollListener;

.field private scrollerOrientation:I

.field private titleProvider:Lcom/conceptglobal/ifastscroll/SectionTitleProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    new-instance p1, Lcom/conceptglobal/ifastscroll/FastScroller$ScrollListener;

    invoke-direct {p1, p0, v0}, Lcom/conceptglobal/ifastscroll/FastScroller$ScrollListener;-><init>(Lcom/conceptglobal/ifastscroll/FastScroller;Lcom/conceptglobal/ifastscroll/FastScroller$1;)V

    iput-object p1, p0, Lcom/conceptglobal/ifastscroll/FastScroller;->scrollListener:Lcom/conceptglobal/ifastscroll/FastScroller$ScrollListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    new-instance p1, Lcom/conceptglobal/ifastscroll/FastScroller$ScrollListener;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/conceptglobal/ifastscroll/FastScroller$ScrollListener;-><init>(Lcom/conceptglobal/ifastscroll/FastScroller;Lcom/conceptglobal/ifastscroll/FastScroller$1;)V

    iput-object p1, p0, Lcom/conceptglobal/ifastscroll/FastScroller;->scrollListener:Lcom/conceptglobal/ifastscroll/FastScroller$ScrollListener;

    const/4 p1, 0x0

    .line 39
    invoke-virtual {p0, p1}, Lcom/conceptglobal/ifastscroll/FastScroller;->setClipChildren(Z)V

    .line 40
    invoke-virtual {p0}, Lcom/conceptglobal/ifastscroll/FastScroller;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 41
    sget p2, Lcom/conceptglobal/ifastscroll/R$layout;->fastscroller:I

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method static synthetic access$100(Lcom/conceptglobal/ifastscroll/FastScroller;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/conceptglobal/ifastscroll/FastScroller;->invalidateVisibility()V

    return-void
.end method

.method static synthetic access$1000(Lcom/conceptglobal/ifastscroll/FastScroller;)Z
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/conceptglobal/ifastscroll/FastScroller;->isVertical()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/conceptglobal/ifastscroll/FastScroller;)Lcom/conceptglobal/ifastscroll/SectionTitleProvider;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/conceptglobal/ifastscroll/FastScroller;->titleProvider:Lcom/conceptglobal/ifastscroll/SectionTitleProvider;

    return-object p0
.end method

.method static synthetic access$300(Lcom/conceptglobal/ifastscroll/FastScroller;)Lcom/conceptglobal/ifastscroll/FastScrollBubble;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/conceptglobal/ifastscroll/FastScroller;->bubble:Lcom/conceptglobal/ifastscroll/FastScrollBubble;

    return-object p0
.end method

.method static synthetic access$400(Lcom/conceptglobal/ifastscroll/FastScroller;)Z
    .locals 0

    .line 17
    iget-boolean p0, p0, Lcom/conceptglobal/ifastscroll/FastScroller;->manuallyChangingPosition:Z

    return p0
.end method

.method static synthetic access$402(Lcom/conceptglobal/ifastscroll/FastScroller;Z)Z
    .locals 0

    .line 17
    iput-boolean p1, p0, Lcom/conceptglobal/ifastscroll/FastScroller;->manuallyChangingPosition:Z

    return p1
.end method

.method static synthetic access$500(Lcom/conceptglobal/ifastscroll/FastScroller;Landroid/view/MotionEvent;)F
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/conceptglobal/ifastscroll/FastScroller;->getRelativeTouchPosition(Landroid/view/MotionEvent;)F

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/conceptglobal/ifastscroll/FastScroller;F)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/conceptglobal/ifastscroll/FastScroller;->setHandlePosition(F)V

    return-void
.end method

.method static synthetic access$700(Lcom/conceptglobal/ifastscroll/FastScroller;F)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/conceptglobal/ifastscroll/FastScroller;->setRecyclerViewPosition(F)V

    return-void
.end method

.method static synthetic access$800(Lcom/conceptglobal/ifastscroll/FastScroller;)Landroid/widget/ImageView;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/conceptglobal/ifastscroll/FastScroller;->handle:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/conceptglobal/ifastscroll/FastScroller;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/conceptglobal/ifastscroll/FastScroller;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method private getRelativeTouchPosition(Landroid/view/MotionEvent;)F
    .locals 2

    .line 131
    invoke-direct {p0}, Lcom/conceptglobal/ifastscroll/FastScroller;->isVertical()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget-object v0, p0, Lcom/conceptglobal/ifastscroll/FastScroller;->handle:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/conceptglobal/ifastscroll/Utils;->getViewRawY(Landroid/view/View;)F

    move-result v0

    sub-float/2addr p1, v0

    .line 133
    invoke-virtual {p0}, Lcom/conceptglobal/ifastscroll/FastScroller;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/conceptglobal/ifastscroll/FastScroller;->handle:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    :goto_0
    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr p1, v0

    return p1

    .line 135
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget-object v0, p0, Lcom/conceptglobal/ifastscroll/FastScroller;->handle:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/conceptglobal/ifastscroll/Utils;->getViewRawX(Landroid/view/View;)F

    move-result v0

    sub-float/2addr p1, v0

    .line 136
    invoke-virtual {p0}, Lcom/conceptglobal/ifastscroll/FastScroller;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/conceptglobal/ifastscroll/FastScroller;->handle:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    goto :goto_0
.end method

.method private initHandleBackground()V
    .locals 4

    .line 88
    invoke-virtual {p0}, Lcom/conceptglobal/ifastscroll/FastScroller;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/conceptglobal/ifastscroll/FastScroller;->handle:Landroid/widget/ImageView;

    .line 91
    invoke-direct {p0}, Lcom/conceptglobal/ifastscroll/FastScroller;->isVertical()Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lcom/conceptglobal/ifastscroll/R$drawable;->fastscroller_handle_vertical:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/conceptglobal/ifastscroll/R$drawable;->fastscroller_handle_horizontal:I

    .line 92
    :goto_0
    invoke-virtual {p0}, Lcom/conceptglobal/ifastscroll/FastScroller;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 90
    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private initHandleMovement()V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/conceptglobal/ifastscroll/FastScroller;->handle:Landroid/widget/ImageView;

    new-instance v1, Lcom/conceptglobal/ifastscroll/FastScroller$2;

    invoke-direct {v1, p0}, Lcom/conceptglobal/ifastscroll/FastScroller$2;-><init>(Lcom/conceptglobal/ifastscroll/FastScroller;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private invalidateVisibility()V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/conceptglobal/ifastscroll/FastScroller;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 142
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/conceptglobal/ifastscroll/FastScroller;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 143
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/conceptglobal/ifastscroll/FastScroller;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    .line 144
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 145
    invoke-direct {p0}, Lcom/conceptglobal/ifastscroll/FastScroller;->isRecyclerViewScrollable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 149
    :cond_0
    invoke-virtual {p0, v1}, Lcom/conceptglobal/ifastscroll/FastScroller;->setVisibility(I)V

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v0, 0x8

    .line 147
    invoke-virtual {p0, v0}, Lcom/conceptglobal/ifastscroll/FastScroller;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private isRecyclerViewScrollable()Z
    .locals 4

    .line 154
    invoke-direct {p0}, Lcom/conceptglobal/ifastscroll/FastScroller;->isVertical()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/conceptglobal/ifastscroll/FastScroller;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v3, p0, Lcom/conceptglobal/ifastscroll/FastScroller;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    mul-int v0, v0, v3

    invoke-virtual {p0}, Lcom/conceptglobal/ifastscroll/FastScroller;->getHeight()I

    move-result v3

    if-gt v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/ifastscroll/FastScroller;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v3, p0, Lcom/conceptglobal/ifastscroll/FastScroller;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    mul-int v0, v0, v3

    invoke-virtual {p0}, Lcom/conceptglobal/ifastscroll/FastScroller;->getWidth()I

    move-result v3

    if-gt v0, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private isVertical()Z
    .locals 2

    .line 219
    iget v0, p0, Lcom/conceptglobal/ifastscroll/FastScroller;->scrollerOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private setHandlePosition(F)V
    .locals 5

    .line 174
    invoke-direct {p0}, Lcom/conceptglobal/ifastscroll/FastScroller;->isVertical()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/conceptglobal/ifastscroll/FastScroller;->bubble:Lcom/conceptglobal/ifastscroll/FastScrollBubble;

    .line 177
    invoke-virtual {p0}, Lcom/conceptglobal/ifastscroll/FastScroller;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/conceptglobal/ifastscroll/FastScroller;->bubble:Lcom/conceptglobal/ifastscroll/FastScrollBubble;

    invoke-virtual {v3}, Lcom/conceptglobal/ifastscroll/FastScrollBubble;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 178
    invoke-virtual {p0}, Lcom/conceptglobal/ifastscroll/FastScroller;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/conceptglobal/ifastscroll/FastScroller;->handle:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float v3, v3, p1

    iget v4, p0, Lcom/conceptglobal/ifastscroll/FastScroller;->bubbleOffset:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    .line 175
    invoke-static {v1, v2, v3}, Lcom/conceptglobal/ifastscroll/Utils;->getValueInRange(FFF)F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/ifastscroll/FastScrollBubble;->setY(F)V

    .line 180
    iget-object v0, p0, Lcom/conceptglobal/ifastscroll/FastScroller;->handle:Landroid/widget/ImageView;

    .line 182
    invoke-virtual {p0}, Lcom/conceptglobal/ifastscroll/FastScroller;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/conceptglobal/ifastscroll/FastScroller;->handle:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 183
    invoke-virtual {p0}, Lcom/conceptglobal/ifastscroll/FastScroller;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/conceptglobal/ifastscroll/FastScroller;->handle:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float p1, p1, v3

    .line 180
    invoke-static {v1, v2, p1}, Lcom/conceptglobal/ifastscroll/Utils;->getValueInRange(FFF)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setY(F)V

    goto :goto_0

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/ifastscroll/FastScroller;->bubble:Lcom/conceptglobal/ifastscroll/FastScrollBubble;

    .line 188
    invoke-virtual {p0}, Lcom/conceptglobal/ifastscroll/FastScroller;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/conceptglobal/ifastscroll/FastScroller;->bubble:Lcom/conceptglobal/ifastscroll/FastScrollBubble;

    invoke-virtual {v3}, Lcom/conceptglobal/ifastscroll/FastScrollBubble;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 189
    invoke-virtual {p0}, Lcom/conceptglobal/ifastscroll/FastScroller;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/conceptglobal/ifastscroll/FastScroller;->handle:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float v3, v3, p1

    iget v4, p0, Lcom/conceptglobal/ifastscroll/FastScroller;->bubbleOffset:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    .line 186
    invoke-static {v1, v2, v3}, Lcom/conceptglobal/ifastscroll/Utils;->getValueInRange(FFF)F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/ifastscroll/FastScrollBubble;->setX(F)V

    .line 191
    iget-object v0, p0, Lcom/conceptglobal/ifastscroll/FastScroller;->handle:Landroid/widget/ImageView;

    .line 193
    invoke-virtual {p0}, Lcom/conceptglobal/ifastscroll/FastScroller;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/conceptglobal/ifastscroll/FastScroller;->handle:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 194
    invoke-virtual {p0}, Lcom/conceptglobal/ifastscroll/FastScroller;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/conceptglobal/ifastscroll/FastScroller;->handle:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float p1, p1, v3

    .line 191
    invoke-static {v1, v2, p1}, Lcom/conceptglobal/ifastscroll/Utils;->getValueInRange(FFF)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setX(F)V

    :goto_0
    return-void
.end method

.method private setRecyclerViewPosition(F)V
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/conceptglobal/ifastscroll/FastScroller;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    int-to-float v1, v1

    int-to-float v0, v0

    mul-float p1, p1, v0

    float-to-int p1, p1

    int-to-float p1, p1

    const/4 v0, 0x0

    .line 165
    invoke-static {v0, v1, p1}, Lcom/conceptglobal/ifastscroll/Utils;->getValueInRange(FFF)F

    move-result p1

    float-to-int p1, p1

    .line 167
    iget-object v0, p0, Lcom/conceptglobal/ifastscroll/FastScroller;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 169
    iget-object v0, p0, Lcom/conceptglobal/ifastscroll/FastScroller;->titleProvider:Lcom/conceptglobal/ifastscroll/SectionTitleProvider;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/conceptglobal/ifastscroll/FastScroller;->bubble:Lcom/conceptglobal/ifastscroll/FastScrollBubble;

    invoke-interface {v0, p1}, Lcom/conceptglobal/ifastscroll/SectionTitleProvider;->getSectionTitle(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/conceptglobal/ifastscroll/FastScrollBubble;->setText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    .line 78
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 79
    sget p1, Lcom/conceptglobal/ifastscroll/R$id;->fastscroller_bubble:I

    invoke-virtual {p0, p1}, Lcom/conceptglobal/ifastscroll/FastScroller;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/ifastscroll/FastScrollBubble;

    iput-object p1, p0, Lcom/conceptglobal/ifastscroll/FastScroller;->bubble:Lcom/conceptglobal/ifastscroll/FastScrollBubble;

    .line 80
    sget p1, Lcom/conceptglobal/ifastscroll/R$id;->fastscroller_handle:I

    invoke-virtual {p0, p1}, Lcom/conceptglobal/ifastscroll/FastScroller;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/conceptglobal/ifastscroll/FastScroller;->handle:Landroid/widget/ImageView;

    .line 81
    invoke-direct {p0}, Lcom/conceptglobal/ifastscroll/FastScroller;->isVertical()Z

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/conceptglobal/ifastscroll/FastScroller;->handle:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, p2

    iget-object p2, p0, Lcom/conceptglobal/ifastscroll/FastScroller;->bubble:Lcom/conceptglobal/ifastscroll/FastScrollBubble;

    invoke-virtual {p2}, Lcom/conceptglobal/ifastscroll/FastScrollBubble;->getHeight()I

    move-result p2

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/ifastscroll/FastScroller;->handle:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, p2

    iget-object p2, p0, Lcom/conceptglobal/ifastscroll/FastScroller;->bubble:Lcom/conceptglobal/ifastscroll/FastScrollBubble;

    invoke-virtual {p2}, Lcom/conceptglobal/ifastscroll/FastScrollBubble;->getWidth()I

    move-result p2

    :goto_0
    int-to-float p2, p2

    sub-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/conceptglobal/ifastscroll/FastScroller;->bubbleOffset:I

    .line 82
    invoke-direct {p0}, Lcom/conceptglobal/ifastscroll/FastScroller;->initHandleBackground()V

    .line 83
    invoke-direct {p0}, Lcom/conceptglobal/ifastscroll/FastScroller;->initHandleMovement()V

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/conceptglobal/ifastscroll/FastScroller;->scrollerOrientation:I

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 49
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void
.end method

.method public setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 59
    iput-object p1, p0, Lcom/conceptglobal/ifastscroll/FastScroller;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 60
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v0, v0, Lcom/conceptglobal/ifastscroll/SectionTitleProvider;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/ifastscroll/SectionTitleProvider;

    iput-object v0, p0, Lcom/conceptglobal/ifastscroll/FastScroller;->titleProvider:Lcom/conceptglobal/ifastscroll/SectionTitleProvider;

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/ifastscroll/FastScroller;->scrollListener:Lcom/conceptglobal/ifastscroll/FastScroller$ScrollListener;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 62
    invoke-direct {p0}, Lcom/conceptglobal/ifastscroll/FastScroller;->invalidateVisibility()V

    .line 63
    new-instance v0, Lcom/conceptglobal/ifastscroll/FastScroller$1;

    invoke-direct {v0, p0}, Lcom/conceptglobal/ifastscroll/FastScroller$1;-><init>(Lcom/conceptglobal/ifastscroll/FastScroller;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method

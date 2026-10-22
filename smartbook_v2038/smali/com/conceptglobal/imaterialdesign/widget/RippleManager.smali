.class public final Lcom/conceptglobal/imaterialdesign/widget/RippleManager;
.super Ljava/lang/Object;
.source "RippleManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/imaterialdesign/widget/RippleManager$ClickRunnable;
    }
.end annotation


# instance fields
.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mClickScheduled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/widget/RippleManager;->mClickScheduled:Z

    return-void
.end method

.method static synthetic access$002(Lcom/conceptglobal/imaterialdesign/widget/RippleManager;Z)Z
    .locals 0

    .line 16
    iput-boolean p1, p0, Lcom/conceptglobal/imaterialdesign/widget/RippleManager;->mClickScheduled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/conceptglobal/imaterialdesign/widget/RippleManager;Landroid/view/View;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/conceptglobal/imaterialdesign/widget/RippleManager;->dispatchClickEvent(Landroid/view/View;)V

    return-void
.end method

.method public static cancelRipple(Landroid/view/View;)V
    .locals 3

    .line 103
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 104
    instance-of v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;

    if-eqz v1, :cond_0

    .line 105
    check-cast v0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->cancel()V

    goto :goto_0

    .line 106
    :cond_0
    instance-of v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;

    if-eqz v1, :cond_1

    .line 107
    check-cast v0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->cancel()V

    .line 109
    :cond_1
    :goto_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 110
    check-cast p0, Landroid/view/ViewGroup;

    .line 111
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 112
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/conceptglobal/imaterialdesign/widget/RippleManager;->cancelRipple(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private dispatchClickEvent(Landroid/view/View;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/RippleManager;->mClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 95
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private getBackground(Landroid/view/View;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 58
    :cond_0
    instance-of v0, p1, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;

    if-eqz v0, :cond_1

    .line 59
    check-cast p1, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;

    invoke-virtual {p1}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_1
    return-object p1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    .line 79
    instance-of v3, v0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;

    if-eqz v3, :cond_0

    .line 80
    check-cast v0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->getClickDelayTime()J

    move-result-wide v3

    goto :goto_0

    .line 81
    :cond_0
    instance-of v3, v0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;

    if-eqz v3, :cond_1

    .line 82
    check-cast v0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->getClickDelayTime()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    move-wide v3, v1

    :goto_0
    cmp-long v0, v3, v1

    if-lez v0, :cond_2

    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/widget/RippleManager;->mClickScheduled:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 86
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/widget/RippleManager;->mClickScheduled:Z

    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/conceptglobal/imaterialdesign/widget/RippleManager$ClickRunnable;

    invoke-direct {v1, p0, p1}, Lcom/conceptglobal/imaterialdesign/widget/RippleManager$ClickRunnable;-><init>(Lcom/conceptglobal/imaterialdesign/widget/RippleManager;Landroid/view/View;)V

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 90
    :cond_2
    invoke-direct {p0, p1}, Lcom/conceptglobal/imaterialdesign/widget/RippleManager;->dispatchClickEvent(Landroid/view/View;)V

    :goto_1
    return-void
.end method

.method public onCreate(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .line 32
    invoke-virtual {p1}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 35
    :cond_0
    sget-object v0, Lcom/conceptglobal/imaterialdesign/R$styleable;->RippleView:[I

    invoke-virtual {p2, p3, v0, p4, p5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 36
    sget v1, Lcom/conceptglobal/imaterialdesign/R$styleable;->RippleView_rd_style:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-eqz v1, :cond_1

    .line 40
    new-instance p3, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;

    invoke-direct {p3, p2, v1}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, p1}, Lcom/conceptglobal/imaterialdesign/widget/RippleManager;->getBackground(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->backgroundDrawable(Landroid/graphics/drawable/Drawable;)Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->build()Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;

    move-result-object p2

    goto :goto_0

    .line 42
    :cond_1
    sget v1, Lcom/conceptglobal/imaterialdesign/R$styleable;->RippleView_rd_enable:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 44
    new-instance v1, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;

    invoke-direct {v1, p2, p3, p4, p5}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-direct {p0, p1}, Lcom/conceptglobal/imaterialdesign/widget/RippleManager;->getBackground(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->backgroundDrawable(Landroid/graphics/drawable/Drawable;)Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->build()Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;

    move-result-object p2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 47
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p2, :cond_3

    .line 50
    invoke-static {p1, p2}, Lcom/conceptglobal/imaterialdesign/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void
.end method

.method public onTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    instance-of v1, v0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;

    invoke-virtual {v0, p1, p2}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/RippleManager;->mClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

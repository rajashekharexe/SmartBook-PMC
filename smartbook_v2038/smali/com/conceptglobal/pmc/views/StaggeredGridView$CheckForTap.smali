.class final Lcom/conceptglobal/pmc/views/StaggeredGridView$CheckForTap;
.super Ljava/lang/Object;
.source "StaggeredGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/views/StaggeredGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CheckForTap"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/views/StaggeredGridView;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/views/StaggeredGridView;)V
    .locals 0

    .line 2255
    iput-object p1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$CheckForTap;->this$0:Lcom/conceptglobal/pmc/views/StaggeredGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 2257
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$CheckForTap;->this$0:Lcom/conceptglobal/pmc/views/StaggeredGridView;

    invoke-static {v0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->access$300(Lcom/conceptglobal/pmc/views/StaggeredGridView;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 2259
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$CheckForTap;->this$0:Lcom/conceptglobal/pmc/views/StaggeredGridView;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->access$302(Lcom/conceptglobal/pmc/views/StaggeredGridView;I)I

    .line 2260
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$CheckForTap;->this$0:Lcom/conceptglobal/pmc/views/StaggeredGridView;

    invoke-static {v0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->access$2300(Lcom/conceptglobal/pmc/views/StaggeredGridView;)I

    move-result v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$CheckForTap;->this$0:Lcom/conceptglobal/pmc/views/StaggeredGridView;

    invoke-static {v2}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->access$1600(Lcom/conceptglobal/pmc/views/StaggeredGridView;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2261
    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v1

    if-nez v1, :cond_5

    .line 2263
    iget-object v1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$CheckForTap;->this$0:Lcom/conceptglobal/pmc/views/StaggeredGridView;

    invoke-static {v1}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->access$400(Lcom/conceptglobal/pmc/views/StaggeredGridView;)Z

    move-result v1

    const/4 v2, 0x5

    if-nez v1, :cond_4

    const/4 v1, 0x1

    .line 2264
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 2265
    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 2267
    iget-object v3, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$CheckForTap;->this$0:Lcom/conceptglobal/pmc/views/StaggeredGridView;

    invoke-virtual {v3, v1}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->setPressed(Z)V

    .line 2268
    iget-object v1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$CheckForTap;->this$0:Lcom/conceptglobal/pmc/views/StaggeredGridView;

    invoke-static {v1}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->access$2300(Lcom/conceptglobal/pmc/views/StaggeredGridView;)I

    move-result v3

    invoke-virtual {v1, v3, v0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->positionSelector(ILandroid/view/View;)V

    .line 2269
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$CheckForTap;->this$0:Lcom/conceptglobal/pmc/views/StaggeredGridView;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->refreshDrawableState()V

    .line 2271
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    .line 2272
    iget-object v1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$CheckForTap;->this$0:Lcom/conceptglobal/pmc/views/StaggeredGridView;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->isLongClickable()Z

    move-result v1

    .line 2274
    iget-object v3, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$CheckForTap;->this$0:Lcom/conceptglobal/pmc/views/StaggeredGridView;

    iget-object v3, v3, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 2275
    iget-object v3, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$CheckForTap;->this$0:Lcom/conceptglobal/pmc/views/StaggeredGridView;

    iget-object v3, v3, Lcom/conceptglobal/pmc/views/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2276
    instance-of v4, v3, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v4, :cond_1

    if-eqz v1, :cond_0

    .line 2278
    check-cast v3, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_0

    .line 2280
    :cond_0
    check-cast v3, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    :cond_1
    :goto_0
    if-eqz v1, :cond_3

    .line 2286
    iget-object v1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$CheckForTap;->this$0:Lcom/conceptglobal/pmc/views/StaggeredGridView;

    invoke-static {v1}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->access$2400(Lcom/conceptglobal/pmc/views/StaggeredGridView;)Lcom/conceptglobal/pmc/views/StaggeredGridView$CheckForLongPress;

    move-result-object v1

    if-nez v1, :cond_2

    .line 2287
    iget-object v1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$CheckForTap;->this$0:Lcom/conceptglobal/pmc/views/StaggeredGridView;

    new-instance v2, Lcom/conceptglobal/pmc/views/StaggeredGridView$CheckForLongPress;

    iget-object v3, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$CheckForTap;->this$0:Lcom/conceptglobal/pmc/views/StaggeredGridView;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/conceptglobal/pmc/views/StaggeredGridView$CheckForLongPress;-><init>(Lcom/conceptglobal/pmc/views/StaggeredGridView;Lcom/conceptglobal/pmc/views/StaggeredGridView$1;)V

    invoke-static {v1, v2}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->access$2402(Lcom/conceptglobal/pmc/views/StaggeredGridView;Lcom/conceptglobal/pmc/views/StaggeredGridView$CheckForLongPress;)Lcom/conceptglobal/pmc/views/StaggeredGridView$CheckForLongPress;

    .line 2289
    :cond_2
    iget-object v1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$CheckForTap;->this$0:Lcom/conceptglobal/pmc/views/StaggeredGridView;

    invoke-static {v1}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->access$2400(Lcom/conceptglobal/pmc/views/StaggeredGridView;)Lcom/conceptglobal/pmc/views/StaggeredGridView$CheckForLongPress;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/views/StaggeredGridView$CheckForLongPress;->rememberWindowAttachCount()V

    .line 2290
    iget-object v1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$CheckForTap;->this$0:Lcom/conceptglobal/pmc/views/StaggeredGridView;

    invoke-static {v1}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->access$2400(Lcom/conceptglobal/pmc/views/StaggeredGridView;)Lcom/conceptglobal/pmc/views/StaggeredGridView$CheckForLongPress;

    move-result-object v2

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 2292
    :cond_3
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$CheckForTap;->this$0:Lcom/conceptglobal/pmc/views/StaggeredGridView;

    invoke-static {v0, v2}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->access$302(Lcom/conceptglobal/pmc/views/StaggeredGridView;I)I

    .line 2295
    :goto_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$CheckForTap;->this$0:Lcom/conceptglobal/pmc/views/StaggeredGridView;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->postInvalidate()V

    goto :goto_2

    .line 2297
    :cond_4
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$CheckForTap;->this$0:Lcom/conceptglobal/pmc/views/StaggeredGridView;

    invoke-static {v0, v2}, Lcom/conceptglobal/pmc/views/StaggeredGridView;->access$302(Lcom/conceptglobal/pmc/views/StaggeredGridView;I)I

    :cond_5
    :goto_2
    return-void
.end method

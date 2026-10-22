.class public Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;
.super Ljava/lang/Object;
.source "ToolbarManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$SimpleAnimator;,
        Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$Animator;,
        Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$OnToolbarGroupChangedListener;,
        Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$NavigationManager;,
        Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$ThemableNavigationManager;,
        Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$BaseNavigationManager;
    }
.end annotation


# instance fields
.field private mAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimator:Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$Animator;

.field private mAppCompatDelegate:Landroidx/appcompat/app/AppCompatDelegate;

.field private mBuilder:Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable$Builder;

.field private mCurrentGroup:I

.field private mGroupChanged:Z

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$OnToolbarGroupChangedListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMenuDataChanged:Z

.field private mMenuView:Landroidx/appcompat/widget/ActionMenuView;

.field private mNavigationManager:Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$NavigationManager;

.field private mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mOutAnimationEndListener:Landroid/view/animation/Animation$AnimationListener;

.field private mRippleStyle:I

.field private mToolbar:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatDelegate;Landroidx/appcompat/widget/Toolbar;IIII)V
    .locals 6

    .line 91
    new-instance v5, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$SimpleAnimator;

    invoke-direct {v5, p5, p6}, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$SimpleAnimator;-><init>(II)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;-><init>(Landroidx/appcompat/app/AppCompatDelegate;Landroidx/appcompat/widget/Toolbar;IILcom/conceptglobal/imaterialdesign/app/ToolbarManager$Animator;)V

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/app/AppCompatDelegate;Landroidx/appcompat/widget/Toolbar;IILcom/conceptglobal/imaterialdesign/app/ToolbarManager$Animator;)V
    .locals 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;->mCurrentGroup:I

    .line 42
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;->mGroupChanged:Z

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;->mMenuDataChanged:Z

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;->mListeners:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$1;

    invoke-direct {v0, p0}, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$1;-><init>(Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;)V

    iput-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;->mAnimations:Ljava/util/ArrayList;

    .line 70
    new-instance v0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$2;

    invoke-direct {v0, p0}, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$2;-><init>(Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;)V

    iput-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;->mOutAnimationEndListener:Landroid/view/animation/Animation$AnimationListener;

    .line 95
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;->mAppCompatDelegate:Landroidx/appcompat/app/AppCompatDelegate;

    .line 96
    iput-object p2, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 97
    iput p3, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;->mCurrentGroup:I

    .line 98
    iput p4, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;->mRippleStyle:I

    .line 99
    iput-object p5, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;->mAnimator:Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$Animator;

    .line 100
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AppCompatDelegate;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;->onGlobalLayout()V

    return-void
.end method

.method static synthetic access$100(Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;)Landroidx/appcompat/app/AppCompatDelegate;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;->mAppCompatDelegate:Landroidx/appcompat/app/AppCompatDelegate;

    return-object p0
.end method

.method private animateIn()V
    .locals 5

    .line 305
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;->getMenuView()Landroidx/appcompat/widget/ActionMenuView;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 307
    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getChildCount()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_2

    .line 308
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 309
    iget-object v4, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;->mAnimator:Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$Animator;

    invoke-interface {v4, v3, v1}, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$Animator;->getInAnimation(Landroid/view/View;I)Landroid/view/animation/Animation;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 311
    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private animateOut()V
    .locals 13

    .line 274
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;->getMenuView()Landroidx/appcompat/widget/ActionMenuView;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 275
    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getChildCount()I

    move-result v2

    .line 277
    :goto_0
    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 278
    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    const/4 v3, 0x0

    move-object v5, v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_3

    .line 281
    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 282
    iget-object v7, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;->mAnimator:Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$Animator;

    invoke-interface {v7, v6, v4}, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$Animator;->getOutAnimation(Landroid/view/View;I)Landroid/view/animation/Animation;

    move-result-object v6

    .line 283
    iget-object v7, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v6, :cond_2

    if-eqz v5, :cond_1

    .line 285
    invoke-virtual {v5}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v7

    invoke-virtual {v5}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v9

    add-long/2addr v7, v9

    invoke-virtual {v6}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v9

    invoke-virtual {v6}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v11

    add-long/2addr v9, v11

    cmp-long v11, v7, v9

    if-gez v11, :cond_2

    :cond_1
    move-object v5, v6

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    if-nez v5, :cond_4

    .line 290
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;->mOutAnimationEndListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v0, v3}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    goto :goto_3

    .line 292
    :cond_4
    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;->mOutAnimationEndListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v5, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :goto_2
    if-ge v1, v2, :cond_6

    .line 295
    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/animation/Animation;

    if-eqz v3, :cond_5

    .line 297
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 301
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private dispatchOnToolbarGroupChanged(II)V
    .locals 3

    .line 131
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 132
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 133
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 134
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 136
    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$OnToolbarGroupChangedListener;

    invoke-interface {v1, p1, p2}, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$OnToolbarGroupChangedListener;->onToolbarGroupChanged(II)V

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getBackground()Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;
    .locals 3

    .line 232
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;->mBuilder:Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable$Builder;

    if-nez v0, :cond_0

    .line 233
    new-instance v0, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable$Builder;

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;->mRippleStyle:I

    invoke-direct {v0, v1, v2}, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable$Builder;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;->mBuilder:Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable$Builder;

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;->mBuilder:Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable$Builder;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable$Builder;->build()Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;

    move-result-object v0

    return-object v0
.end method

.method private getMenuView()Landroidx/appcompat/widget/ActionMenuView;
    .locals 3

    .line 239
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 240
    :goto_0
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 241
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 242
    instance-of v2, v1, Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v2, :cond_0

    .line 243
    check-cast v1, Landroidx/appcompat/widget/ActionMenuView;

    iput-object v1, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 249
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    return-object v0
.end method

.method private onGlobalLayout()V
    .locals 6

    .line 254
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 258
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;->getMenuView()Landroidx/appcompat/widget/ActionMenuView;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 259
    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getChildCount()I

    move-result v2

    :goto_0
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    .line 260
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 261
    iget v5, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;->mRippleStyle:I

    if-eqz v5, :cond_2

    .line 262
    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    instance-of v5, v5, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;

    if-nez v5, :cond_2

    .line 263
    :cond_1
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;->getBackground()Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/conceptglobal/imaterialdesign/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 267
    :cond_3
    iget-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;->mGroupChanged:Z

    if-eqz v0, :cond_4

    .line 268
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;->animateIn()V

    .line 269
    iput-boolean v1, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;->mGroupChanged:Z

    :cond_4
    return-void
.end method


# virtual methods
.method public createMenu(I)V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->inflateMenu(I)V

    const/4 p1, 0x1

    .line 167
    iput-boolean p1, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;->mMenuDataChanged:Z

    .line 168
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;->mAppCompatDelegate:Landroidx/appcompat/app/AppCompatDelegate;

    if-nez p1, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;->onPrepareMenu()V

    :cond_0
    return-void
.end method

.method public getCurrentGroup()I
    .locals 1

    .line 144
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;->mCurrentGroup:I

    return v0
.end method

.method public isNavigationBackState()Z
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;->mNavigationManager:Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$NavigationManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$NavigationManager;->isBackState()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public notifyNavigationStateChanged()V
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;->mNavigationManager:Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$NavigationManager;

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$NavigationManager;->notifyStateChanged()V

    :cond_0
    return-void
.end method

.method public notifyNavigationStateInvalidated()V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;->mNavigationManager:Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$NavigationManager;

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$NavigationManager;->notifyStateInvalidated()V

    :cond_0
    return-void
.end method

.method public notifyNavigationStateProgressChanged(ZF)V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;->mNavigationManager:Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$NavigationManager;

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {v0, p1, p2}, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$NavigationManager;->notifyStateProgressChanged(ZF)V

    :cond_0
    return-void
.end method

.method public onPrepareMenu()V
    .locals 7

    .line 177
    iget-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;->mGroupChanged:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;->mMenuDataChanged:Z

    if-eqz v0, :cond_4

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 180
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 181
    invoke-interface {v0}, Landroid/view/Menu;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    .line 182
    invoke-interface {v0, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 183
    invoke-interface {v4}, Landroid/view/MenuItem;->getGroupId()I

    move-result v5

    iget v6, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;->mCurrentGroup:I

    if-eq v5, v6, :cond_2

    invoke-interface {v4}, Landroid/view/MenuItem;->getGroupId()I

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v5, 0x1

    :goto_2
    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 186
    :cond_3
    iput-boolean v2, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;->mMenuDataChanged:Z

    :cond_4
    return-void
.end method

.method public registerOnToolbarGroupChangedListener(Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$OnToolbarGroupChangedListener;)V
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 108
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 109
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 110
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 111
    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_1

    return-void

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 115
    :cond_2
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;->mListeners:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setCurrentGroup(I)V
    .locals 2

    .line 152
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;->mCurrentGroup:I

    if-eq v0, p1, :cond_0

    .line 154
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;->mCurrentGroup:I

    const/4 v1, 0x1

    .line 155
    iput-boolean v1, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;->mGroupChanged:Z

    .line 156
    invoke-direct {p0, v0, p1}, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;->dispatchOnToolbarGroupChanged(II)V

    .line 157
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;->animateOut()V

    :cond_0
    return-void
.end method

.method public setNavigationManager(Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$NavigationManager;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;->mNavigationManager:Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$NavigationManager;

    .line 195
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;->notifyNavigationStateInvalidated()V

    return-void
.end method

.method public unregisterOnToolbarGroupChangedListener(Lcom/conceptglobal/imaterialdesign/app/ToolbarManager$OnToolbarGroupChangedListener;)V
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 124
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 125
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 126
    :cond_0
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/app/ToolbarManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

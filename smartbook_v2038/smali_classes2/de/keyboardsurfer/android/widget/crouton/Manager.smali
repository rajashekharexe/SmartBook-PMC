.class final Lde/keyboardsurfer/android/widget/crouton/Manager;
.super Landroid/os/Handler;
.source "Manager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/keyboardsurfer/android/widget/crouton/Manager$Messages;
    }
.end annotation


# static fields
.field private static INSTANCE:Lde/keyboardsurfer/android/widget/crouton/Manager;


# instance fields
.field private final croutonQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lde/keyboardsurfer/android/widget/crouton/Crouton;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 59
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lde/keyboardsurfer/android/widget/crouton/Manager;->croutonQueue:Ljava/util/Queue;

    return-void
.end method

.method static synthetic access$000(Lde/keyboardsurfer/android/widget/crouton/Manager;Lde/keyboardsurfer/android/widget/crouton/Crouton;IJ)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lde/keyboardsurfer/android/widget/crouton/Manager;->sendMessageDelayed(Lde/keyboardsurfer/android/widget/crouton/Crouton;IJ)V

    return-void
.end method

.method private addCroutonToView(Lde/keyboardsurfer/android/widget/crouton/Crouton;)V
    .locals 4

    .line 193
    invoke-virtual {p1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 197
    :cond_0
    invoke-virtual {p1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->getView()Landroid/view/View;

    move-result-object v0

    .line 198
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_6

    .line 199
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_1

    .line 201
    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 205
    :cond_1
    invoke-virtual {p1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 206
    invoke-virtual {p1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v2

    .line 207
    invoke-direct {p0, v2}, Lde/keyboardsurfer/android/widget/crouton/Manager;->shouldAddViewWithoutPosition(Landroid/view/ViewGroup;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 208
    invoke-virtual {v2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 210
    invoke-virtual {v2, v0, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 213
    :cond_3
    invoke-virtual {p1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 214
    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    .line 217
    :cond_4
    move-object v3, v1

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, v3, v2}, Lde/keyboardsurfer/android/widget/crouton/Manager;->handleTranslucentActionBar(Landroid/view/ViewGroup$MarginLayoutParams;Landroid/app/Activity;)V

    .line 218
    invoke-direct {p0, v3, v2}, Lde/keyboardsurfer/android/widget/crouton/Manager;->handleActionBarOverlay(Landroid/view/ViewGroup$MarginLayoutParams;Landroid/app/Activity;)V

    .line 220
    invoke-virtual {v2, v0, v1}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_5
    :goto_0
    return-void

    .line 224
    :cond_6
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 225
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 227
    new-instance v2, Lde/keyboardsurfer/android/widget/crouton/Manager$1;

    invoke-direct {v2, p0, v0, p1}, Lde/keyboardsurfer/android/widget/crouton/Manager$1;-><init>(Lde/keyboardsurfer/android/widget/crouton/Manager;Landroid/view/View;Lde/keyboardsurfer/android/widget/crouton/Crouton;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_7
    return-void
.end method

.method public static announceForAccessibilityCompat(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 3

    if-eqz p0, :cond_0

    .line 439
    const-string v0, "accessibility"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 441
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x4000

    .line 457
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 458
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 459
    const-class p1, Lde/keyboardsurfer/android/widget/crouton/Manager;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 460
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 465
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private calculateCroutonDuration(Lde/keyboardsurfer/android/widget/crouton/Crouton;)J
    .locals 4

    .line 112
    invoke-virtual {p1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->getConfiguration()Lde/keyboardsurfer/android/widget/crouton/Configuration;

    move-result-object v0

    iget v0, v0, Lde/keyboardsurfer/android/widget/crouton/Configuration;->durationInMilliseconds:I

    int-to-long v0, v0

    .line 113
    invoke-virtual {p1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->getInAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 114
    invoke-virtual {p1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->getOutAnimation()Landroid/view/animation/Animation;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private displayCrouton()V
    .locals 4

    .line 88
    iget-object v0, p0, Lde/keyboardsurfer/android/widget/crouton/Manager;->croutonQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lde/keyboardsurfer/android/widget/crouton/Manager;->croutonQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/keyboardsurfer/android/widget/crouton/Crouton;

    .line 96
    invoke-virtual {v0}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 97
    iget-object v1, p0, Lde/keyboardsurfer/android/widget/crouton/Manager;->croutonQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 100
    :cond_1
    invoke-virtual {v0}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->isShowing()Z

    move-result v1

    if-nez v1, :cond_2

    const v1, -0x3dff8b23

    .line 102
    invoke-direct {p0, v0, v1}, Lde/keyboardsurfer/android/widget/crouton/Manager;->sendMessage(Lde/keyboardsurfer/android/widget/crouton/Crouton;I)V

    .line 103
    invoke-virtual {v0}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->getLifecycleCallback()Lde/keyboardsurfer/android/widget/crouton/LifecycleCallback;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 104
    invoke-virtual {v0}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->getLifecycleCallback()Lde/keyboardsurfer/android/widget/crouton/LifecycleCallback;

    move-result-object v0

    invoke-interface {v0}, Lde/keyboardsurfer/android/widget/crouton/LifecycleCallback;->onDisplayed()V

    goto :goto_0

    :cond_2
    const v1, 0xc2007

    .line 107
    invoke-direct {p0, v0}, Lde/keyboardsurfer/android/widget/crouton/Manager;->calculateCroutonDuration(Lde/keyboardsurfer/android/widget/crouton/Crouton;)J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lde/keyboardsurfer/android/widget/crouton/Manager;->sendMessageDelayed(Lde/keyboardsurfer/android/widget/crouton/Crouton;IJ)V

    :cond_3
    :goto_0
    return-void
.end method

.method static declared-synchronized getInstance()Lde/keyboardsurfer/android/widget/crouton/Manager;
    .locals 2

    const-class v0, Lde/keyboardsurfer/android/widget/crouton/Manager;

    monitor-enter v0

    .line 66
    :try_start_0
    sget-object v1, Lde/keyboardsurfer/android/widget/crouton/Manager;->INSTANCE:Lde/keyboardsurfer/android/widget/crouton/Manager;

    if-nez v1, :cond_0

    .line 67
    new-instance v1, Lde/keyboardsurfer/android/widget/crouton/Manager;

    invoke-direct {v1}, Lde/keyboardsurfer/android/widget/crouton/Manager;-><init>()V

    sput-object v1, Lde/keyboardsurfer/android/widget/crouton/Manager;->INSTANCE:Lde/keyboardsurfer/android/widget/crouton/Manager;

    .line 70
    :cond_0
    sget-object v1, Lde/keyboardsurfer/android/widget/crouton/Manager;->INSTANCE:Lde/keyboardsurfer/android/widget/crouton/Manager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private handleActionBarOverlay(Landroid/view/ViewGroup$MarginLayoutParams;Landroid/app/Activity;)V
    .locals 2

    .line 271
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    invoke-direct {p0, p1, p2}, Lde/keyboardsurfer/android/widget/crouton/Manager;->setActionBarMargin(Landroid/view/ViewGroup$MarginLayoutParams;Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method private handleTranslucentActionBar(Landroid/view/ViewGroup$MarginLayoutParams;Landroid/app/Activity;)V
    .locals 2

    .line 259
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 262
    invoke-direct {p0, p1, p2}, Lde/keyboardsurfer/android/widget/crouton/Manager;->setActionBarMargin(Landroid/view/ViewGroup$MarginLayoutParams;Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method private removeAllMessages()V
    .locals 1

    const v0, -0x3dff8b23

    .line 405
    invoke-virtual {p0, v0}, Lde/keyboardsurfer/android/widget/crouton/Manager;->removeMessages(I)V

    const v0, 0xc2007

    .line 406
    invoke-virtual {p0, v0}, Lde/keyboardsurfer/android/widget/crouton/Manager;->removeMessages(I)V

    const v0, -0x3dff821f

    .line 407
    invoke-virtual {p0, v0}, Lde/keyboardsurfer/android/widget/crouton/Manager;->removeMessages(I)V

    return-void
.end method

.method private removeAllMessagesForCrouton(Lde/keyboardsurfer/android/widget/crouton/Crouton;)V
    .locals 1

    const v0, -0x3dff8b23

    .line 411
    invoke-virtual {p0, v0, p1}, Lde/keyboardsurfer/android/widget/crouton/Manager;->removeMessages(ILjava/lang/Object;)V

    const v0, 0xc2007

    .line 412
    invoke-virtual {p0, v0, p1}, Lde/keyboardsurfer/android/widget/crouton/Manager;->removeMessages(ILjava/lang/Object;)V

    const v0, -0x3dff821f

    .line 413
    invoke-virtual {p0, v0, p1}, Lde/keyboardsurfer/android/widget/crouton/Manager;->removeMessages(ILjava/lang/Object;)V

    return-void
.end method

.method private removeCroutonFromViewParent(Lde/keyboardsurfer/android/widget/crouton/Crouton;)V
    .locals 1

    .line 396
    invoke-virtual {p1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    invoke-virtual {p1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 399
    invoke-virtual {p1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private sendMessage(Lde/keyboardsurfer/android/widget/crouton/Crouton;I)V
    .locals 0

    .line 127
    invoke-virtual {p0, p2}, Lde/keyboardsurfer/android/widget/crouton/Manager;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    .line 128
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 129
    invoke-virtual {p0, p2}, Lde/keyboardsurfer/android/widget/crouton/Manager;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private sendMessageDelayed(Lde/keyboardsurfer/android/widget/crouton/Crouton;IJ)V
    .locals 0

    .line 143
    invoke-virtual {p0, p2}, Lde/keyboardsurfer/android/widget/crouton/Manager;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    .line 144
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 145
    invoke-virtual {p0, p2, p3, p4}, Lde/keyboardsurfer/android/widget/crouton/Manager;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private setActionBarMargin(Landroid/view/ViewGroup$MarginLayoutParams;Landroid/app/Activity;)V
    .locals 4

    .line 279
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "android"

    const-string v3, "action_bar_container"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 280
    invoke-virtual {p2, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 283
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_0
    return-void
.end method

.method private shouldAddViewWithoutPosition(Landroid/view/ViewGroup;)Z
    .locals 1

    .line 251
    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    instance-of v0, p1, Landroid/widget/AdapterView;

    if-nez v0, :cond_1

    instance-of p1, p1, Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method add(Lde/keyboardsurfer/android/widget/crouton/Crouton;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lde/keyboardsurfer/android/widget/crouton/Manager;->croutonQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 81
    invoke-direct {p0}, Lde/keyboardsurfer/android/widget/crouton/Manager;->displayCrouton()V

    return-void
.end method

.method clearCroutonQueue()V
    .locals 2

    .line 365
    invoke-direct {p0}, Lde/keyboardsurfer/android/widget/crouton/Manager;->removeAllMessages()V

    .line 369
    iget-object v0, p0, Lde/keyboardsurfer/android/widget/crouton/Manager;->croutonQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/keyboardsurfer/android/widget/crouton/Crouton;

    .line 370
    invoke-direct {p0, v1}, Lde/keyboardsurfer/android/widget/crouton/Manager;->removeCroutonFromViewParent(Lde/keyboardsurfer/android/widget/crouton/Crouton;)V

    goto :goto_0

    .line 372
    :cond_0
    iget-object v0, p0, Lde/keyboardsurfer/android/widget/crouton/Manager;->croutonQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    return-void
.end method

.method clearCroutonsForActivity(Landroid/app/Activity;)V
    .locals 3

    .line 380
    iget-object v0, p0, Lde/keyboardsurfer/android/widget/crouton/Manager;->croutonQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 381
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 382
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/keyboardsurfer/android/widget/crouton/Crouton;

    .line 383
    invoke-virtual {v1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 385
    invoke-direct {p0, v1}, Lde/keyboardsurfer/android/widget/crouton/Manager;->removeCroutonFromViewParent(Lde/keyboardsurfer/android/widget/crouton/Crouton;)V

    .line 387
    invoke-direct {p0, v1}, Lde/keyboardsurfer/android/widget/crouton/Manager;->removeAllMessagesForCrouton(Lde/keyboardsurfer/android/widget/crouton/Crouton;)V

    .line 390
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 155
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lde/keyboardsurfer/android/widget/crouton/Crouton;

    if-nez v0, :cond_0

    return-void

    .line 159
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const v2, -0x3dff8b23

    if-eq v1, v2, :cond_3

    const v2, -0x3dff821f

    if-eq v1, v2, :cond_2

    const v0, 0xc2007

    if-eq v1, v0, :cond_1

    .line 179
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 161
    :cond_1
    invoke-direct {p0}, Lde/keyboardsurfer/android/widget/crouton/Manager;->displayCrouton()V

    goto :goto_0

    .line 171
    :cond_2
    invoke-virtual {p0, v0}, Lde/keyboardsurfer/android/widget/crouton/Manager;->removeCrouton(Lde/keyboardsurfer/android/widget/crouton/Crouton;)V

    .line 172
    invoke-virtual {v0}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->getLifecycleCallback()Lde/keyboardsurfer/android/widget/crouton/LifecycleCallback;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 173
    invoke-virtual {v0}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->getLifecycleCallback()Lde/keyboardsurfer/android/widget/crouton/LifecycleCallback;

    move-result-object p1

    invoke-interface {p1}, Lde/keyboardsurfer/android/widget/crouton/LifecycleCallback;->onRemoved()V

    goto :goto_0

    .line 166
    :cond_3
    invoke-direct {p0, v0}, Lde/keyboardsurfer/android/widget/crouton/Manager;->addCroutonToView(Lde/keyboardsurfer/android/widget/crouton/Crouton;)V

    :cond_4
    :goto_0
    return-void
.end method

.method protected removeCrouton(Lde/keyboardsurfer/android/widget/crouton/Crouton;)V
    .locals 3

    .line 296
    invoke-virtual {p1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->getView()Landroid/view/View;

    move-result-object v0

    .line 297
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 300
    invoke-virtual {p1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->getOutAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 303
    iget-object v2, p0, Lde/keyboardsurfer/android/widget/crouton/Manager;->croutonQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/keyboardsurfer/android/widget/crouton/Crouton;

    .line 306
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    if-eqz v2, :cond_1

    .line 308
    invoke-virtual {v2}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->detachActivity()V

    .line 309
    invoke-virtual {v2}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->detachViewGroup()V

    .line 310
    invoke-virtual {v2}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->getLifecycleCallback()Lde/keyboardsurfer/android/widget/crouton/LifecycleCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {v2}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->getLifecycleCallback()Lde/keyboardsurfer/android/widget/crouton/LifecycleCallback;

    move-result-object v0

    invoke-interface {v0}, Lde/keyboardsurfer/android/widget/crouton/LifecycleCallback;->onRemoved()V

    .line 313
    :cond_0
    invoke-virtual {v2}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->detachLifecycleCallback()V

    .line 318
    :cond_1
    invoke-virtual {p1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->getOutAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v0

    const v2, 0xc2007

    invoke-direct {p0, p1, v2, v0, v1}, Lde/keyboardsurfer/android/widget/crouton/Manager;->sendMessageDelayed(Lde/keyboardsurfer/android/widget/crouton/Crouton;IJ)V

    :cond_2
    return-void
.end method

.method removeCroutonImmediately(Lde/keyboardsurfer/android/widget/crouton/Crouton;)V
    .locals 3

    .line 335
    invoke-virtual {p1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 336
    invoke-virtual {p1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 339
    invoke-direct {p0, p1}, Lde/keyboardsurfer/android/widget/crouton/Manager;->removeAllMessagesForCrouton(Lde/keyboardsurfer/android/widget/crouton/Crouton;)V

    .line 342
    :cond_0
    iget-object v0, p0, Lde/keyboardsurfer/android/widget/crouton/Manager;->croutonQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 343
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 344
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/keyboardsurfer/android/widget/crouton/Crouton;

    .line 345
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 347
    invoke-direct {p0, p1}, Lde/keyboardsurfer/android/widget/crouton/Manager;->removeCroutonFromViewParent(Lde/keyboardsurfer/android/widget/crouton/Crouton;)V

    .line 350
    invoke-direct {p0, v1}, Lde/keyboardsurfer/android/widget/crouton/Manager;->removeAllMessagesForCrouton(Lde/keyboardsurfer/android/widget/crouton/Crouton;)V

    .line 353
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Manager{croutonQueue="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lde/keyboardsurfer/android/widget/crouton/Manager;->croutonQueue:Ljava/util/Queue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

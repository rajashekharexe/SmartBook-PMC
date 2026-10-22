.class Lde/keyboardsurfer/android/widget/crouton/Manager$1;
.super Ljava/lang/Object;
.source "Manager.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/keyboardsurfer/android/widget/crouton/Manager;->addCroutonToView(Lde/keyboardsurfer/android/widget/crouton/Crouton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/keyboardsurfer/android/widget/crouton/Manager;

.field final synthetic val$crouton:Lde/keyboardsurfer/android/widget/crouton/Crouton;

.field final synthetic val$croutonView:Landroid/view/View;


# direct methods
.method constructor <init>(Lde/keyboardsurfer/android/widget/crouton/Manager;Landroid/view/View;Lde/keyboardsurfer/android/widget/crouton/Crouton;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lde/keyboardsurfer/android/widget/crouton/Manager$1;->this$0:Lde/keyboardsurfer/android/widget/crouton/Manager;

    iput-object p2, p0, Lde/keyboardsurfer/android/widget/crouton/Manager$1;->val$croutonView:Landroid/view/View;

    iput-object p3, p0, Lde/keyboardsurfer/android/widget/crouton/Manager$1;->val$crouton:Lde/keyboardsurfer/android/widget/crouton/Crouton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 6

    .line 234
    iget-object v0, p0, Lde/keyboardsurfer/android/widget/crouton/Manager$1;->val$croutonView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 237
    iget-object v0, p0, Lde/keyboardsurfer/android/widget/crouton/Manager$1;->val$crouton:Lde/keyboardsurfer/android/widget/crouton/Crouton;

    invoke-virtual {v0}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->getInAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lde/keyboardsurfer/android/widget/crouton/Manager$1;->val$croutonView:Landroid/view/View;

    iget-object v1, p0, Lde/keyboardsurfer/android/widget/crouton/Manager$1;->val$crouton:Lde/keyboardsurfer/android/widget/crouton/Crouton;

    invoke-virtual {v1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->getInAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 239
    iget-object v0, p0, Lde/keyboardsurfer/android/widget/crouton/Manager$1;->val$crouton:Lde/keyboardsurfer/android/widget/crouton/Crouton;

    invoke-virtual {v0}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lde/keyboardsurfer/android/widget/crouton/Manager$1;->val$crouton:Lde/keyboardsurfer/android/widget/crouton/Crouton;

    invoke-virtual {v1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lde/keyboardsurfer/android/widget/crouton/Manager;->announceForAccessibilityCompat(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 240
    iget-object v0, p0, Lde/keyboardsurfer/android/widget/crouton/Manager$1;->val$crouton:Lde/keyboardsurfer/android/widget/crouton/Crouton;

    invoke-virtual {v0}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->getConfiguration()Lde/keyboardsurfer/android/widget/crouton/Configuration;

    move-result-object v0

    iget v0, v0, Lde/keyboardsurfer/android/widget/crouton/Configuration;->durationInMilliseconds:I

    const/4 v1, -0x1

    if-eq v1, v0, :cond_0

    .line 241
    iget-object v0, p0, Lde/keyboardsurfer/android/widget/crouton/Manager$1;->this$0:Lde/keyboardsurfer/android/widget/crouton/Manager;

    iget-object v1, p0, Lde/keyboardsurfer/android/widget/crouton/Manager$1;->val$crouton:Lde/keyboardsurfer/android/widget/crouton/Crouton;

    invoke-virtual {v1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->getConfiguration()Lde/keyboardsurfer/android/widget/crouton/Configuration;

    move-result-object v2

    iget v2, v2, Lde/keyboardsurfer/android/widget/crouton/Configuration;->durationInMilliseconds:I

    int-to-long v2, v2

    iget-object v4, p0, Lde/keyboardsurfer/android/widget/crouton/Manager$1;->val$crouton:Lde/keyboardsurfer/android/widget/crouton/Crouton;

    invoke-virtual {v4}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->getInAnimation()Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v4

    add-long/2addr v2, v4

    const v4, -0x3dff821f

    invoke-static {v0, v1, v4, v2, v3}, Lde/keyboardsurfer/android/widget/crouton/Manager;->access$000(Lde/keyboardsurfer/android/widget/crouton/Manager;Lde/keyboardsurfer/android/widget/crouton/Crouton;IJ)V

    :cond_0
    return-void
.end method

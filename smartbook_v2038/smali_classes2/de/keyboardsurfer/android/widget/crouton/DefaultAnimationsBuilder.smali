.class final Lde/keyboardsurfer/android/widget/crouton/DefaultAnimationsBuilder;
.super Ljava/lang/Object;
.source "DefaultAnimationsBuilder.java"


# static fields
.field private static final DURATION:J = 0x190L

.field private static lastInAnimationHeight:I

.field private static lastOutAnimationHeight:I

.field private static slideInDownAnimation:Landroid/view/animation/Animation;

.field private static slideOutUpAnimation:Landroid/view/animation/Animation;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static areLastMeasuredAnimationHeightAndCurrentEqual(ILandroid/view/View;)Z
    .locals 0

    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static areLastMeasuredInAnimationHeightAndCurrentEqual(Landroid/view/View;)Z
    .locals 1

    .line 70
    sget v0, Lde/keyboardsurfer/android/widget/crouton/DefaultAnimationsBuilder;->lastInAnimationHeight:I

    invoke-static {v0, p0}, Lde/keyboardsurfer/android/widget/crouton/DefaultAnimationsBuilder;->areLastMeasuredAnimationHeightAndCurrentEqual(ILandroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private static areLastMeasuredOutAnimationHeightAndCurrentEqual(Landroid/view/View;)Z
    .locals 1

    .line 74
    sget v0, Lde/keyboardsurfer/android/widget/crouton/DefaultAnimationsBuilder;->lastOutAnimationHeight:I

    invoke-static {v0, p0}, Lde/keyboardsurfer/android/widget/crouton/DefaultAnimationsBuilder;->areLastMeasuredAnimationHeightAndCurrentEqual(ILandroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static buildDefaultSlideInDownAnimation(Landroid/view/View;)Landroid/view/animation/Animation;
    .locals 3

    .line 40
    invoke-static {p0}, Lde/keyboardsurfer/android/widget/crouton/DefaultAnimationsBuilder;->areLastMeasuredInAnimationHeightAndCurrentEqual(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lde/keyboardsurfer/android/widget/crouton/DefaultAnimationsBuilder;->slideInDownAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_1

    .line 41
    :cond_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    sput-object v0, Lde/keyboardsurfer/android/widget/crouton/DefaultAnimationsBuilder;->slideInDownAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x190

    .line 45
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    invoke-static {p0}, Lde/keyboardsurfer/android/widget/crouton/DefaultAnimationsBuilder;->setLastInAnimationHeight(I)V

    .line 48
    :cond_1
    sget-object p0, Lde/keyboardsurfer/android/widget/crouton/DefaultAnimationsBuilder;->slideInDownAnimation:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static buildDefaultSlideOutUpAnimation(Landroid/view/View;)Landroid/view/animation/Animation;
    .locals 3

    .line 58
    invoke-static {p0}, Lde/keyboardsurfer/android/widget/crouton/DefaultAnimationsBuilder;->areLastMeasuredOutAnimationHeightAndCurrentEqual(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lde/keyboardsurfer/android/widget/crouton/DefaultAnimationsBuilder;->slideOutUpAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_1

    .line 59
    :cond_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v2, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    sput-object v0, Lde/keyboardsurfer/android/widget/crouton/DefaultAnimationsBuilder;->slideOutUpAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x190

    .line 63
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    invoke-static {p0}, Lde/keyboardsurfer/android/widget/crouton/DefaultAnimationsBuilder;->setLastOutAnimationHeight(I)V

    .line 66
    :cond_1
    sget-object p0, Lde/keyboardsurfer/android/widget/crouton/DefaultAnimationsBuilder;->slideOutUpAnimation:Landroid/view/animation/Animation;

    return-object p0
.end method

.method private static setLastInAnimationHeight(I)V
    .locals 0

    .line 82
    sput p0, Lde/keyboardsurfer/android/widget/crouton/DefaultAnimationsBuilder;->lastInAnimationHeight:I

    return-void
.end method

.method private static setLastOutAnimationHeight(I)V
    .locals 0

    .line 86
    sput p0, Lde/keyboardsurfer/android/widget/crouton/DefaultAnimationsBuilder;->lastOutAnimationHeight:I

    return-void
.end method

.class public Lcom/conceptglobal/pmc/utils/BadgeView;
.super Landroid/widget/TextView;
.source "BadgeView.java"


# static fields
.field private static final DEFAULT_CORNER_RADIUS_DIP:I = 0x8

.field private static final DEFAULT_LR_PADDING_DIP:I = 0x5

.field private static final DEFAULT_MARGIN_DIP:I = 0x5

.field private static final DEFAULT_POSITION:I = 0x2

.field private static final DEFAULT_TEXT_COLOR:I = -0x1

.field public static final POSITION_BOTTOM_LEFT:I = 0x3

.field public static final POSITION_BOTTOM_RIGHT:I = 0x4

.field public static final POSITION_CENTER:I = 0x5

.field public static final POSITION_TOP_LEFT:I = 0x1

.field public static final POSITION_TOP_RIGHT:I = 0x2


# instance fields
.field private final DEFAULT_BADGE_COLOR:I

.field private badgeBg:Landroid/graphics/drawable/ShapeDrawable;

.field private badgeColor:I

.field private badgeMarginH:I

.field private badgeMarginV:I

.field private badgePosition:I

.field private context:Landroid/content/Context;

.field private fadeIn:Landroid/view/animation/Animation;

.field private fadeOut:Landroid/view/animation/Animation;

.field private isShown:Z

.field private target:Landroid/view/View;

.field private targetTabIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    .line 49
    move-object v1, v0

    check-cast v1, Landroid/util/AttributeSet;

    const v1, 0x1010084

    invoke-direct {p0, p1, v0, v1}, Lcom/conceptglobal/pmc/utils/BadgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010084

    .line 53
    invoke-direct {p0, p1, p2, v0}, Lcom/conceptglobal/pmc/utils/BadgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 81
    invoke-direct/range {v0 .. v5}, Lcom/conceptglobal/pmc/utils/BadgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View;I)V
    .locals 0

    .line 85
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    const-string p2, "#CCFF0000"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/conceptglobal/pmc/utils/BadgeView;->DEFAULT_BADGE_COLOR:I

    .line 86
    invoke-direct {p0, p1, p4, p5}, Lcom/conceptglobal/pmc/utils/BadgeView;->init(Landroid/content/Context;Landroid/view/View;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 6

    const v3, 0x1010084

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    .line 64
    invoke-direct/range {v0 .. v5}, Lcom/conceptglobal/pmc/utils/BadgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/TabWidget;I)V
    .locals 6

    const/4 v2, 0x0

    const v3, 0x1010084

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    .line 77
    invoke-direct/range {v0 .. v5}, Lcom/conceptglobal/pmc/utils/BadgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View;I)V

    return-void
.end method

.method private applyLayoutParams()V
    .locals 4

    .line 289
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 290
    iget v1, p0, Lcom/conceptglobal/pmc/utils/BadgeView;->badgePosition:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x11

    .line 308
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 309
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x55

    .line 304
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 305
    iget v1, p0, Lcom/conceptglobal/pmc/utils/BadgeView;->badgeMarginH:I

    iget v2, p0, Lcom/conceptglobal/pmc/utils/BadgeView;->badgeMarginV:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x53

    .line 300
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 301
    iget v1, p0, Lcom/conceptglobal/pmc/utils/BadgeView;->badgeMarginH:I

    iget v2, p0, Lcom/conceptglobal/pmc/utils/BadgeView;->badgeMarginV:I

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_3
    const/16 v1, 0x35

    .line 296
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 297
    iget v1, p0, Lcom/conceptglobal/pmc/utils/BadgeView;->badgeMarginV:I

    iget v2, p0, Lcom/conceptglobal/pmc/utils/BadgeView;->badgeMarginH:I

    invoke-virtual {v0, v3, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_4
    const/16 v1, 0x33

    .line 292
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 293
    iget v1, p0, Lcom/conceptglobal/pmc/utils/BadgeView;->badgeMarginH:I

    iget v2, p0, Lcom/conceptglobal/pmc/utils/BadgeView;->badgeMarginV:I

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 314
    :goto_0
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/utils/BadgeView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private applyTo(Landroid/view/View;)V
    .locals 5

    .line 116
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 117
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 118
    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/conceptglobal/pmc/utils/BadgeView;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 119
    instance-of v3, p1, Landroid/widget/TabWidget;

    const/16 v4, 0x8

    if-eqz v3, :cond_0

    .line 121
    check-cast p1, Landroid/widget/TabWidget;

    iget v0, p0, Lcom/conceptglobal/pmc/utils/BadgeView;->targetTabIndex:I

    invoke-virtual {p1, v0}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object p1

    .line 122
    iput-object p1, p0, Lcom/conceptglobal/pmc/utils/BadgeView;->target:Landroid/view/View;

    .line 123
    check-cast p1, Landroid/view/ViewGroup;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    invoke-virtual {p0, v4}, Lcom/conceptglobal/pmc/utils/BadgeView;->setVisibility(I)V

    .line 125
    invoke-virtual {v2, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 128
    :cond_0
    check-cast v1, Landroid/view/ViewGroup;

    .line 129
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 130
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 131
    invoke-virtual {v1, v2, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 132
    invoke-virtual {v2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 133
    invoke-virtual {p0, v4}, Lcom/conceptglobal/pmc/utils/BadgeView;->setVisibility(I)V

    .line 134
    invoke-virtual {v2, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 135
    invoke-virtual {v1}, Landroid/view/ViewGroup;->invalidate()V

    :goto_0
    return-void
.end method

.method private dipToPixels(I)I
    .locals 2

    .line 402
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/utils/BadgeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    int-to-float p1, p1

    .line 403
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method private getDefaultBackground()Landroid/graphics/drawable/ShapeDrawable;
    .locals 3

    const/16 v0, 0x8

    .line 280
    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/utils/BadgeView;->dipToPixels(I)I

    move-result v1

    int-to-float v1, v1

    .line 281
    new-array v0, v0, [F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v2, 0x2

    aput v1, v0, v2

    const/4 v2, 0x3

    aput v1, v0, v2

    const/4 v2, 0x4

    aput v1, v0, v2

    const/4 v2, 0x5

    aput v1, v0, v2

    const/4 v2, 0x6

    aput v1, v0, v2

    const/4 v2, 0x7

    aput v1, v0, v2

    .line 282
    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 283
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 284
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    iget v2, p0, Lcom/conceptglobal/pmc/utils/BadgeView;->badgeColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    return-object v0
.end method

.method private hide(ZLandroid/view/animation/Animation;)V
    .locals 1

    const/16 v0, 0x8

    .line 233
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/utils/BadgeView;->setVisibility(I)V

    if-eqz p1, :cond_0

    .line 235
    invoke-virtual {p0, p2}, Lcom/conceptglobal/pmc/utils/BadgeView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    const/4 p1, 0x0

    .line 237
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/utils/BadgeView;->isShown:Z

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/view/View;I)V
    .locals 3

    .line 90
    iput-object p1, p0, Lcom/conceptglobal/pmc/utils/BadgeView;->context:Landroid/content/Context;

    .line 91
    iput-object p2, p0, Lcom/conceptglobal/pmc/utils/BadgeView;->target:Landroid/view/View;

    .line 92
    iput p3, p0, Lcom/conceptglobal/pmc/utils/BadgeView;->targetTabIndex:I

    const/4 p1, 0x2

    .line 94
    iput p1, p0, Lcom/conceptglobal/pmc/utils/BadgeView;->badgePosition:I

    const/4 p1, 0x5

    .line 95
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/utils/BadgeView;->dipToPixels(I)I

    move-result p2

    iput p2, p0, Lcom/conceptglobal/pmc/utils/BadgeView;->badgeMarginH:I

    .line 96
    iput p2, p0, Lcom/conceptglobal/pmc/utils/BadgeView;->badgeMarginV:I

    .line 97
    iget p2, p0, Lcom/conceptglobal/pmc/utils/BadgeView;->DEFAULT_BADGE_COLOR:I

    iput p2, p0, Lcom/conceptglobal/pmc/utils/BadgeView;->badgeColor:I

    .line 98
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/utils/BadgeView;->dipToPixels(I)I

    move-result p1

    const/4 p2, 0x0

    .line 99
    invoke-virtual {p0, p1, p2, p1, p2}, Lcom/conceptglobal/pmc/utils/BadgeView;->setPadding(IIII)V

    const/4 p1, -0x1

    .line 100
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/utils/BadgeView;->setTextColor(I)V

    .line 101
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    const/4 p3, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p1, p3, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object p1, p0, Lcom/conceptglobal/pmc/utils/BadgeView;->fadeIn:Landroid/view/animation/Animation;

    .line 102
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 103
    iget-object p1, p0, Lcom/conceptglobal/pmc/utils/BadgeView;->fadeIn:Landroid/view/animation/Animation;

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 104
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {p1, v0, p3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object p1, p0, Lcom/conceptglobal/pmc/utils/BadgeView;->fadeOut:Landroid/view/animation/Animation;

    .line 105
    new-instance p3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {p1, p3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 106
    iget-object p1, p0, Lcom/conceptglobal/pmc/utils/BadgeView;->fadeOut:Landroid/view/animation/Animation;

    invoke-virtual {p1, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 107
    iput-boolean p2, p0, Lcom/conceptglobal/pmc/utils/BadgeView;->isShown:Z

    .line 108
    iget-object p1, p0, Lcom/conceptglobal/pmc/utils/BadgeView;->target:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 109
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/utils/BadgeView;->applyTo(Landroid/view/View;)V

    goto :goto_0

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/utils/BadgeView;->show()V

    :goto_0
    return-void
.end method

.method private show(ZLandroid/view/animation/Animation;)V
    .locals 1

    .line 218
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/utils/BadgeView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/BadgeView;->badgeBg:Landroid/graphics/drawable/ShapeDrawable;

    if-nez v0, :cond_0

    .line 220
    invoke-direct {p0}, Lcom/conceptglobal/pmc/utils/BadgeView;->getDefaultBackground()Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/utils/BadgeView;->badgeBg:Landroid/graphics/drawable/ShapeDrawable;

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/BadgeView;->badgeBg:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/utils/BadgeView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 224
    :cond_1
    invoke-direct {p0}, Lcom/conceptglobal/pmc/utils/BadgeView;->applyLayoutParams()V

    if-eqz p1, :cond_2

    .line 226
    invoke-virtual {p0, p2}, Lcom/conceptglobal/pmc/utils/BadgeView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    const/4 p1, 0x0

    .line 228
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/utils/BadgeView;->setVisibility(I)V

    const/4 p1, 0x1

    .line 229
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/utils/BadgeView;->isShown:Z

    return-void
.end method

.method private toggle(ZLandroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 3

    .line 241
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/utils/BadgeView;->isShown:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 242
    :goto_0
    invoke-direct {p0, v1, p3}, Lcom/conceptglobal/pmc/utils/BadgeView;->hide(ZLandroid/view/animation/Animation;)V

    goto :goto_2

    :cond_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 244
    :goto_1
    invoke-direct {p0, v1, p2}, Lcom/conceptglobal/pmc/utils/BadgeView;->show(ZLandroid/view/animation/Animation;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public decrement(I)I
    .locals 0

    neg-int p1, p1

    .line 276
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/utils/BadgeView;->increment(I)I

    move-result p1

    return p1
.end method

.method public getBadgeBackgroundColor()I
    .locals 1

    .line 388
    iget v0, p0, Lcom/conceptglobal/pmc/utils/BadgeView;->badgeColor:I

    return v0
.end method

.method public getBadgePosition()I
    .locals 1

    .line 336
    iget v0, p0, Lcom/conceptglobal/pmc/utils/BadgeView;->badgePosition:I

    return v0
.end method

.method public getHorizontalBadgeMargin()I
    .locals 1

    .line 352
    iget v0, p0, Lcom/conceptglobal/pmc/utils/BadgeView;->badgeMarginH:I

    return v0
.end method

.method public getTarget()Landroid/view/View;
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/BadgeView;->target:Landroid/view/View;

    return-object v0
.end method

.method public getVerticalBadgeMargin()I
    .locals 1

    .line 359
    iget v0, p0, Lcom/conceptglobal/pmc/utils/BadgeView;->badgeMarginV:I

    return v0
.end method

.method public hide()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 168
    invoke-direct {p0, v0, v1}, Lcom/conceptglobal/pmc/utils/BadgeView;->hide(ZLandroid/view/animation/Animation;)V

    return-void
.end method

.method public hide(Landroid/view/animation/Animation;)V
    .locals 1

    const/4 v0, 0x1

    .line 186
    invoke-direct {p0, v0, p1}, Lcom/conceptglobal/pmc/utils/BadgeView;->hide(ZLandroid/view/animation/Animation;)V

    return-void
.end method

.method public hide(Z)V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/BadgeView;->fadeOut:Landroid/view/animation/Animation;

    invoke-direct {p0, p1, v0}, Lcom/conceptglobal/pmc/utils/BadgeView;->hide(ZLandroid/view/animation/Animation;)V

    return-void
.end method

.method public increment(I)I
    .locals 2

    .line 254
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/utils/BadgeView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 258
    :try_start_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    add-int/2addr v1, p1

    .line 266
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/utils/BadgeView;->setText(Ljava/lang/CharSequence;)V

    return v1
.end method

.method public isShown()Z
    .locals 1

    .line 329
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/utils/BadgeView;->isShown:Z

    return v0
.end method

.method public setBadgeBackgroundColor(I)V
    .locals 0

    .line 397
    iput p1, p0, Lcom/conceptglobal/pmc/utils/BadgeView;->badgeColor:I

    .line 398
    invoke-direct {p0}, Lcom/conceptglobal/pmc/utils/BadgeView;->getDefaultBackground()Landroid/graphics/drawable/ShapeDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/utils/BadgeView;->badgeBg:Landroid/graphics/drawable/ShapeDrawable;

    return-void
.end method

.method public setBadgeMargin(I)V
    .locals 0

    .line 368
    iput p1, p0, Lcom/conceptglobal/pmc/utils/BadgeView;->badgeMarginH:I

    .line 369
    iput p1, p0, Lcom/conceptglobal/pmc/utils/BadgeView;->badgeMarginV:I

    return-void
.end method

.method public setBadgeMargin(II)V
    .locals 0

    .line 380
    iput p1, p0, Lcom/conceptglobal/pmc/utils/BadgeView;->badgeMarginH:I

    .line 381
    iput p2, p0, Lcom/conceptglobal/pmc/utils/BadgeView;->badgeMarginV:I

    return-void
.end method

.method public setBadgePosition(I)V
    .locals 0

    .line 345
    iput p1, p0, Lcom/conceptglobal/pmc/utils/BadgeView;->badgePosition:I

    return-void
.end method

.method public show()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 143
    invoke-direct {p0, v0, v1}, Lcom/conceptglobal/pmc/utils/BadgeView;->show(ZLandroid/view/animation/Animation;)V

    return-void
.end method

.method public show(Landroid/view/animation/Animation;)V
    .locals 1

    const/4 v0, 0x1

    .line 161
    invoke-direct {p0, v0, p1}, Lcom/conceptglobal/pmc/utils/BadgeView;->show(ZLandroid/view/animation/Animation;)V

    return-void
.end method

.method public show(Z)V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/BadgeView;->fadeIn:Landroid/view/animation/Animation;

    invoke-direct {p0, p1, v0}, Lcom/conceptglobal/pmc/utils/BadgeView;->show(ZLandroid/view/animation/Animation;)V

    return-void
.end method

.method public toggle()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 193
    invoke-direct {p0, v0, v1, v1}, Lcom/conceptglobal/pmc/utils/BadgeView;->toggle(ZLandroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    return-void
.end method

.method public toggle(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 1

    const/4 v0, 0x1

    .line 213
    invoke-direct {p0, v0, p1, p2}, Lcom/conceptglobal/pmc/utils/BadgeView;->toggle(ZLandroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    return-void
.end method

.method public toggle(Z)V
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/BadgeView;->fadeIn:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/conceptglobal/pmc/utils/BadgeView;->fadeOut:Landroid/view/animation/Animation;

    invoke-direct {p0, p1, v0, v1}, Lcom/conceptglobal/pmc/utils/BadgeView;->toggle(ZLandroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    return-void
.end method

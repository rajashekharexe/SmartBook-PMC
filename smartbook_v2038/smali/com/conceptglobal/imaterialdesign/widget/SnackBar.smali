.class public Lcom/conceptglobal/imaterialdesign/widget/SnackBar;
.super Lcom/conceptglobal/imaterialdesign/widget/FrameLayout;
.source "SnackBar.java"

# interfaces
.implements Lcom/conceptglobal/imaterialdesign/app/ThemeManager$OnThemeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/imaterialdesign/widget/SnackBar$OnActionClickListener;,
        Lcom/conceptglobal/imaterialdesign/widget/SnackBar$BackgroundDrawable;,
        Lcom/conceptglobal/imaterialdesign/widget/SnackBar$OnStateChangeListener;
    }
.end annotation


# static fields
.field public static final MATCH_PARENT:I = -0x1

.field public static final STATE_DISMISSED:I = 0x0

.field public static final STATE_DISMISSING:I = 0x3

.field public static final STATE_SHOWING:I = 0x2

.field public static final STATE_SHOWN:I = 0x1

.field public static final WRAP_CONTENT:I = -0x2


# instance fields
.field private mAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

.field private mActionClickListener:Lcom/conceptglobal/imaterialdesign/widget/SnackBar$OnActionClickListener;

.field private mActionId:I

.field private mBackground:Lcom/conceptglobal/imaterialdesign/widget/SnackBar$BackgroundDrawable;

.field private mDismissRunnable:Ljava/lang/Runnable;

.field private mDuration:J

.field private mHeight:I

.field private mInAnimation:Landroid/view/animation/Animation;

.field private mIsRtl:Z

.field private mMarginBottom:I

.field private mMarginStart:I

.field private mMaxHeight:I

.field private mMinHeight:I

.field private mOutAnimation:Landroid/view/animation/Animation;

.field private mRemoveOnDismiss:Z

.field private mState:I

.field private mStateChangeListener:Lcom/conceptglobal/imaterialdesign/widget/SnackBar$OnStateChangeListener;

.field private mText:Lcom/conceptglobal/imaterialdesign/widget/TextView;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 119
    invoke-direct {p0, p1}, Lcom/conceptglobal/imaterialdesign/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 55
    new-instance p1, Lcom/conceptglobal/imaterialdesign/widget/SnackBar$1;

    invoke-direct {p1, p0}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar$1;-><init>(Lcom/conceptglobal/imaterialdesign/widget/SnackBar;)V

    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mDismissRunnable:Ljava/lang/Runnable;

    const/4 p1, 0x0

    .line 62
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mState:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 123
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/imaterialdesign/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    new-instance p1, Lcom/conceptglobal/imaterialdesign/widget/SnackBar$1;

    invoke-direct {p1, p0}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar$1;-><init>(Lcom/conceptglobal/imaterialdesign/widget/SnackBar;)V

    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mDismissRunnable:Ljava/lang/Runnable;

    const/4 p1, 0x0

    .line 62
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mState:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 127
    invoke-direct {p0, p1, p2, p3}, Lcom/conceptglobal/imaterialdesign/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    new-instance p1, Lcom/conceptglobal/imaterialdesign/widget/SnackBar$1;

    invoke-direct {p1, p0}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar$1;-><init>(Lcom/conceptglobal/imaterialdesign/widget/SnackBar;)V

    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mDismissRunnable:Ljava/lang/Runnable;

    const/4 p1, 0x0

    .line 62
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mState:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 131
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/conceptglobal/imaterialdesign/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 55
    new-instance p1, Lcom/conceptglobal/imaterialdesign/widget/SnackBar$1;

    invoke-direct {p1, p0}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar$1;-><init>(Lcom/conceptglobal/imaterialdesign/widget/SnackBar;)V

    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mDismissRunnable:Ljava/lang/Runnable;

    const/4 p1, 0x0

    .line 62
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mState:I

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/imaterialdesign/widget/SnackBar;)Lcom/conceptglobal/imaterialdesign/widget/SnackBar$OnActionClickListener;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mActionClickListener:Lcom/conceptglobal/imaterialdesign/widget/SnackBar$OnActionClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/conceptglobal/imaterialdesign/widget/SnackBar;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mActionId:I

    return p0
.end method

.method static synthetic access$200(Lcom/conceptglobal/imaterialdesign/widget/SnackBar;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->setState(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/conceptglobal/imaterialdesign/widget/SnackBar;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->startTimer()V

    return-void
.end method

.method static synthetic access$400(Lcom/conceptglobal/imaterialdesign/widget/SnackBar;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mRemoveOnDismiss:Z

    return p0
.end method

.method public static make(Landroid/content/Context;)Lcom/conceptglobal/imaterialdesign/widget/SnackBar;
    .locals 1

    .line 115
    new-instance v0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;

    invoke-direct {v0, p0}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private setState(I)V
    .locals 2

    .line 911
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mState:I

    if-eq v0, p1, :cond_0

    .line 913
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mState:I

    .line 914
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mStateChangeListener:Lcom/conceptglobal/imaterialdesign/widget/SnackBar$OnStateChangeListener;

    if-eqz v1, :cond_0

    .line 915
    invoke-interface {v1, p0, v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar$OnStateChangeListener;->onStateChange(Lcom/conceptglobal/imaterialdesign/widget/SnackBar;II)V

    :cond_0
    return-void
.end method

.method private startTimer()V
    .locals 5

    .line 853
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 854
    iget-wide v0, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mDuration:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 855
    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v0, v1}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public actionClickListener(Lcom/conceptglobal/imaterialdesign/widget/SnackBar$OnActionClickListener;)Lcom/conceptglobal/imaterialdesign/widget/SnackBar;
    .locals 0

    .line 711
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mActionClickListener:Lcom/conceptglobal/imaterialdesign/widget/SnackBar$OnActionClickListener;

    return-object p0
.end method

.method public actionId(I)Lcom/conceptglobal/imaterialdesign/widget/SnackBar;
    .locals 0

    .line 478
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mActionId:I

    return-object p0
.end method

.method public actionRipple(I)Lcom/conceptglobal/imaterialdesign/widget/SnackBar;
    .locals 3

    if-eqz p1, :cond_0

    .line 557
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    new-instance v1, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;

    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->build()Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/conceptglobal/imaterialdesign/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-object p0
.end method

.method public actionText(I)Lcom/conceptglobal/imaterialdesign/widget/SnackBar;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 504
    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->actionText(Ljava/lang/CharSequence;)Lcom/conceptglobal/imaterialdesign/widget/SnackBar;

    move-result-object p1

    return-object p1

    .line 506
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->actionText(Ljava/lang/CharSequence;)Lcom/conceptglobal/imaterialdesign/widget/SnackBar;

    move-result-object p1

    return-object p1
.end method

.method public actionText(Ljava/lang/CharSequence;)Lcom/conceptglobal/imaterialdesign/widget/SnackBar;
    .locals 2

    .line 488
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 489
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/conceptglobal/imaterialdesign/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 491
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/conceptglobal/imaterialdesign/widget/Button;->setVisibility(I)V

    .line 492
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-object p0
.end method

.method public actionTextAppearance(I)Lcom/conceptglobal/imaterialdesign/widget/SnackBar;
    .locals 2

    if-eqz p1, :cond_0

    .line 536
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/conceptglobal/imaterialdesign/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    :cond_0
    return-object p0
.end method

.method public actionTextColor(I)Lcom/conceptglobal/imaterialdesign/widget/SnackBar;
    .locals 1

    .line 515
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/Button;->setTextColor(I)V

    return-object p0
.end method

.method public actionTextColor(Landroid/content/res/ColorStateList;)Lcom/conceptglobal/imaterialdesign/widget/SnackBar;
    .locals 1

    .line 525
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-object p0
.end method

.method public actionTextSize(F)Lcom/conceptglobal/imaterialdesign/widget/SnackBar;
    .locals 2

    .line 546
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/conceptglobal/imaterialdesign/widget/Button;->setTextSize(IF)V

    return-object p0
.end method

.method public animationIn(Landroid/view/animation/Animation;)Lcom/conceptglobal/imaterialdesign/widget/SnackBar;
    .locals 0

    .line 731
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mInAnimation:Landroid/view/animation/Animation;

    return-object p0
.end method

.method public animationOut(Landroid/view/animation/Animation;)Lcom/conceptglobal/imaterialdesign/widget/SnackBar;
    .locals 0

    .line 741
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mOutAnimation:Landroid/view/animation/Animation;

    return-object p0
.end method

.method protected applyStyle(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 16

    move-object/from16 v0, p0

    .line 172
    invoke-super/range {p0 .. p4}, Lcom/conceptglobal/imaterialdesign/widget/FrameLayout;->applyStyle(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 174
    sget-object v1, Lcom/conceptglobal/imaterialdesign/R$styleable;->SnackBar:[I

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 186
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v8, v5

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    if-ge v9, v2, :cond_23

    .line 187
    invoke-virtual {v1, v9}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v14

    .line 188
    sget v15, Lcom/conceptglobal/imaterialdesign/R$styleable;->SnackBar_sb_backgroundColor:I

    if-ne v14, v15, :cond_0

    .line 189
    invoke-virtual {v1, v14, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    invoke-virtual {v0, v14}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->backgroundColor(I)Lcom/conceptglobal/imaterialdesign/widget/SnackBar;

    goto :goto_1

    .line 190
    :cond_0
    sget v15, Lcom/conceptglobal/imaterialdesign/R$styleable;->SnackBar_sb_backgroundCornerRadius:I

    if-ne v14, v15, :cond_1

    .line 191
    invoke-virtual {v1, v14, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    invoke-virtual {v0, v14}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->backgroundRadius(I)Lcom/conceptglobal/imaterialdesign/widget/SnackBar;

    goto :goto_1

    .line 192
    :cond_1
    sget v15, Lcom/conceptglobal/imaterialdesign/R$styleable;->SnackBar_sb_horizontalPadding:I

    if-ne v14, v15, :cond_2

    .line 193
    invoke-virtual {v1, v14, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    :goto_1
    move/from16 p2, v2

    goto/16 :goto_4

    .line 194
    :cond_2
    sget v15, Lcom/conceptglobal/imaterialdesign/R$styleable;->SnackBar_sb_verticalPadding:I

    if-ne v14, v15, :cond_3

    .line 195
    invoke-virtual {v1, v14, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    goto :goto_1

    .line 196
    :cond_3
    sget v15, Lcom/conceptglobal/imaterialdesign/R$styleable;->SnackBar_sb_width:I

    const/16 v4, 0x10

    if-ne v14, v15, :cond_5

    .line 197
    invoke-static {v1, v14}, Lcom/conceptglobal/imaterialdesign/util/ThemeUtil;->getType(Landroid/content/res/TypedArray;I)I

    move-result v15

    if-ne v15, v4, :cond_4

    const/4 v15, 0x0

    .line 198
    invoke-virtual {v1, v14, v15}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->width(I)Lcom/conceptglobal/imaterialdesign/widget/SnackBar;

    goto :goto_2

    :cond_4
    const/4 v15, 0x0

    .line 200
    invoke-virtual {v1, v14, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->width(I)Lcom/conceptglobal/imaterialdesign/widget/SnackBar;

    :goto_2
    move/from16 p2, v2

    :goto_3
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 202
    :cond_5
    sget v15, Lcom/conceptglobal/imaterialdesign/R$styleable;->SnackBar_sb_height:I

    if-ne v14, v15, :cond_7

    .line 203
    invoke-static {v1, v14}, Lcom/conceptglobal/imaterialdesign/util/ThemeUtil;->getType(Landroid/content/res/TypedArray;I)I

    move-result v15

    if-ne v15, v4, :cond_6

    const/4 v4, 0x0

    .line 204
    invoke-virtual {v1, v14, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v14

    invoke-virtual {v0, v14}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->height(I)Lcom/conceptglobal/imaterialdesign/widget/SnackBar;

    goto :goto_1

    :cond_6
    const/4 v4, 0x0

    .line 206
    invoke-virtual {v1, v14, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    invoke-virtual {v0, v14}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->height(I)Lcom/conceptglobal/imaterialdesign/widget/SnackBar;

    goto :goto_1

    :cond_7
    const/4 v4, 0x0

    .line 208
    sget v15, Lcom/conceptglobal/imaterialdesign/R$styleable;->SnackBar_sb_minWidth:I

    if-ne v14, v15, :cond_8

    .line 209
    invoke-virtual {v1, v14, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    invoke-virtual {v0, v14}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->minWidth(I)Lcom/conceptglobal/imaterialdesign/widget/SnackBar;

    goto :goto_1

    .line 210
    :cond_8
    sget v15, Lcom/conceptglobal/imaterialdesign/R$styleable;->SnackBar_sb_maxWidth:I

    if-ne v14, v15, :cond_9

    .line 211
    invoke-virtual {v1, v14, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    invoke-virtual {v0, v14}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->maxWidth(I)Lcom/conceptglobal/imaterialdesign/widget/SnackBar;

    goto :goto_1

    .line 212
    :cond_9
    sget v15, Lcom/conceptglobal/imaterialdesign/R$styleable;->SnackBar_sb_minHeight:I

    if-ne v14, v15, :cond_a

    .line 213
    invoke-virtual {v1, v14, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    invoke-virtual {v0, v14}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->minHeight(I)Lcom/conceptglobal/imaterialdesign/widget/SnackBar;

    goto :goto_1

    .line 214
    :cond_a
    sget v15, Lcom/conceptglobal/imaterialdesign/R$styleable;->SnackBar_sb_maxHeight:I

    if-ne v14, v15, :cond_b

    .line 215
    invoke-virtual {v1, v14, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    invoke-virtual {v0, v14}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->maxHeight(I)Lcom/conceptglobal/imaterialdesign/widget/SnackBar;

    goto :goto_1

    .line 216
    :cond_b
    sget v15, Lcom/conceptglobal/imaterialdesign/R$styleable;->SnackBar_sb_marginStart:I

    if-ne v14, v15, :cond_c

    .line 217
    invoke-virtual {v1, v14, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    invoke-virtual {v0, v14}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->marginStart(I)Lcom/conceptglobal/imaterialdesign/widget/SnackBar;

    goto/16 :goto_1

    .line 218
    :cond_c
    sget v15, Lcom/conceptglobal/imaterialdesign/R$styleable;->SnackBar_sb_marginBottom:I

    if-ne v14, v15, :cond_d

    .line 219
    invoke-virtual {v1, v14, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    invoke-virtual {v0, v14}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->marginBottom(I)Lcom/conceptglobal/imaterialdesign/widget/SnackBar;

    goto/16 :goto_1

    .line 220
    :cond_d
    sget v15, Lcom/conceptglobal/imaterialdesign/R$styleable;->SnackBar_sb_textSize:I

    if-ne v14, v15, :cond_e

    .line 221
    invoke-virtual {v1, v14, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    goto/16 :goto_1

    .line 222
    :cond_e
    sget v15, Lcom/conceptglobal/imaterialdesign/R$styleable;->SnackBar_sb_textColor:I

    move/from16 p2, v2

    const/4 v2, 0x1

    if-ne v14, v15, :cond_f

    .line 223
    invoke-virtual {v1, v14, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v12

    const/4 v10, 0x1

    goto/16 :goto_4

    .line 226
    :cond_f
    sget v15, Lcom/conceptglobal/imaterialdesign/R$styleable;->SnackBar_sb_textAppearance:I

    if-ne v14, v15, :cond_10

    .line 227
    invoke-virtual {v1, v14, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    goto/16 :goto_4

    .line 228
    :cond_10
    sget v4, Lcom/conceptglobal/imaterialdesign/R$styleable;->SnackBar_sb_text:I

    if-ne v14, v4, :cond_11

    .line 229
    invoke-virtual {v1, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->text(Ljava/lang/CharSequence;)Lcom/conceptglobal/imaterialdesign/widget/SnackBar;

    goto/16 :goto_3

    .line 230
    :cond_11
    sget v4, Lcom/conceptglobal/imaterialdesign/R$styleable;->SnackBar_sb_singleLine:I

    if-ne v14, v4, :cond_12

    .line 231
    invoke-virtual {v1, v14, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->singleLine(Z)Lcom/conceptglobal/imaterialdesign/widget/SnackBar;

    goto/16 :goto_3

    .line 232
    :cond_12
    sget v4, Lcom/conceptglobal/imaterialdesign/R$styleable;->SnackBar_sb_maxLines:I

    if-ne v14, v4, :cond_13

    const/4 v4, 0x0

    .line 233
    invoke-virtual {v1, v14, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->maxLines(I)Lcom/conceptglobal/imaterialdesign/widget/SnackBar;

    goto/16 :goto_4

    :cond_13
    const/4 v4, 0x0

    .line 234
    sget v15, Lcom/conceptglobal/imaterialdesign/R$styleable;->SnackBar_sb_lines:I

    if-ne v14, v15, :cond_14

    .line 235
    invoke-virtual {v1, v14, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->lines(I)Lcom/conceptglobal/imaterialdesign/widget/SnackBar;

    goto/16 :goto_4

    .line 236
    :cond_14
    sget v15, Lcom/conceptglobal/imaterialdesign/R$styleable;->SnackBar_sb_ellipsize:I

    if-ne v14, v15, :cond_19

    .line 237
    invoke-virtual {v1, v14, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v14

    if-eq v14, v2, :cond_18

    const/4 v2, 0x2

    if-eq v14, v2, :cond_17

    const/4 v2, 0x3

    if-eq v14, v2, :cond_16

    const/4 v2, 0x4

    if-eq v14, v2, :cond_15

    .line 252
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->ellipsize(Landroid/text/TextUtils$TruncateAt;)Lcom/conceptglobal/imaterialdesign/widget/SnackBar;

    goto/16 :goto_3

    .line 249
    :cond_15
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->ellipsize(Landroid/text/TextUtils$TruncateAt;)Lcom/conceptglobal/imaterialdesign/widget/SnackBar;

    goto/16 :goto_3

    .line 246
    :cond_16
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->ellipsize(Landroid/text/TextUtils$TruncateAt;)Lcom/conceptglobal/imaterialdesign/widget/SnackBar;

    goto/16 :goto_3

    .line 243
    :cond_17
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->ellipsize(Landroid/text/TextUtils$TruncateAt;)Lcom/conceptglobal/imaterialdesign/widget/SnackBar;

    goto/16 :goto_3

    .line 240
    :cond_18
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->ellipsize(Landroid/text/TextUtils$TruncateAt;)Lcom/conceptglobal/imaterialdesign/widget/SnackBar;

    goto/16 :goto_3

    .line 256
    :cond_19
    sget v4, Lcom/conceptglobal/imaterialdesign/R$styleable;->SnackBar_sb_actionTextSize:I

    if-ne v14, v4, :cond_1a

    const/4 v4, 0x0

    .line 257
    invoke-virtual {v1, v14, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    move v7, v2

    goto/16 :goto_4

    :cond_1a
    const/4 v4, 0x0

    .line 258
    sget v15, Lcom/conceptglobal/imaterialdesign/R$styleable;->SnackBar_sb_actionTextColor:I

    if-ne v14, v15, :cond_1b

    .line 259
    invoke-virtual {v1, v14}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    move-object v8, v2

    goto :goto_4

    .line 260
    :cond_1b
    sget v15, Lcom/conceptglobal/imaterialdesign/R$styleable;->SnackBar_sb_actionTextAppearance:I

    if-ne v14, v15, :cond_1c

    .line 261
    invoke-virtual {v1, v14, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    goto :goto_4

    .line 262
    :cond_1c
    sget v15, Lcom/conceptglobal/imaterialdesign/R$styleable;->SnackBar_sb_actionText:I

    if-ne v14, v15, :cond_1d

    .line 263
    invoke-virtual {v1, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->actionText(Ljava/lang/CharSequence;)Lcom/conceptglobal/imaterialdesign/widget/SnackBar;

    goto :goto_4

    .line 264
    :cond_1d
    sget v15, Lcom/conceptglobal/imaterialdesign/R$styleable;->SnackBar_sb_actionRipple:I

    if-ne v14, v15, :cond_1e

    .line 265
    invoke-virtual {v1, v14, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->actionRipple(I)Lcom/conceptglobal/imaterialdesign/widget/SnackBar;

    goto :goto_4

    .line 266
    :cond_1e
    sget v15, Lcom/conceptglobal/imaterialdesign/R$styleable;->SnackBar_sb_duration:I

    if-ne v14, v15, :cond_1f

    .line 267
    invoke-virtual {v1, v14, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    int-to-long v14, v2

    invoke-virtual {v0, v14, v15}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->duration(J)Lcom/conceptglobal/imaterialdesign/widget/SnackBar;

    goto/16 :goto_3

    .line 268
    :cond_1f
    sget v4, Lcom/conceptglobal/imaterialdesign/R$styleable;->SnackBar_sb_removeOnDismiss:I

    if-ne v14, v4, :cond_20

    .line 269
    invoke-virtual {v1, v14, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->removeOnDismiss(Z)Lcom/conceptglobal/imaterialdesign/widget/SnackBar;

    goto/16 :goto_3

    .line 270
    :cond_20
    sget v2, Lcom/conceptglobal/imaterialdesign/R$styleable;->SnackBar_sb_inAnimation:I

    if-ne v14, v2, :cond_21

    .line 271
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v1, v14, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    invoke-static {v2, v14}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->animationIn(Landroid/view/animation/Animation;)Lcom/conceptglobal/imaterialdesign/widget/SnackBar;

    goto :goto_4

    :cond_21
    const/4 v4, 0x0

    .line 272
    sget v2, Lcom/conceptglobal/imaterialdesign/R$styleable;->SnackBar_sb_outAnimation:I

    if-ne v14, v2, :cond_22

    .line 273
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v14, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    invoke-static {v2, v14}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->animationOut(Landroid/view/animation/Animation;)Lcom/conceptglobal/imaterialdesign/widget/SnackBar;

    :cond_22
    :goto_4
    add-int/lit8 v9, v9, 0x1

    move/from16 v2, p2

    goto/16 :goto_0

    .line 276
    :cond_23
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    if-gez v3, :cond_24

    if-ltz v5, :cond_27

    :cond_24
    if-ltz v3, :cond_25

    goto :goto_5

    .line 279
    :cond_25
    iget-object v1, v0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mText:Lcom/conceptglobal/imaterialdesign/widget/TextView;

    invoke-virtual {v1}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->getPaddingLeft()I

    move-result v3

    :goto_5
    if-ltz v5, :cond_26

    goto :goto_6

    :cond_26
    iget-object v1, v0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mText:Lcom/conceptglobal/imaterialdesign/widget/TextView;

    invoke-virtual {v1}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->getPaddingTop()I

    move-result v5

    :goto_6
    invoke-virtual {v0, v3, v5}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->padding(II)Lcom/conceptglobal/imaterialdesign/widget/SnackBar;

    :cond_27
    if-eqz v11, :cond_28

    .line 282
    invoke-virtual {v0, v11}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->textAppearance(I)Lcom/conceptglobal/imaterialdesign/widget/SnackBar;

    :cond_28
    if-ltz v6, :cond_29

    int-to-float v1, v6

    .line 284
    invoke-virtual {v0, v1}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->textSize(F)Lcom/conceptglobal/imaterialdesign/widget/SnackBar;

    :cond_29
    if-eqz v10, :cond_2a

    .line 286
    invoke-virtual {v0, v12}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->textColor(I)Lcom/conceptglobal/imaterialdesign/widget/SnackBar;

    :cond_2a
    if-eqz v11, :cond_2b

    .line 289
    invoke-virtual {v0, v13}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->actionTextAppearance(I)Lcom/conceptglobal/imaterialdesign/widget/SnackBar;

    :cond_2b
    if-ltz v7, :cond_2c

    int-to-float v1, v7

    .line 291
    invoke-virtual {v0, v1}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->actionTextSize(F)Lcom/conceptglobal/imaterialdesign/widget/SnackBar;

    :cond_2c
    if-eqz v8, :cond_2d

    .line 293
    invoke-virtual {v0, v8}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->actionTextColor(Landroid/content/res/ColorStateList;)Lcom/conceptglobal/imaterialdesign/widget/SnackBar;

    :cond_2d
    return-void
.end method

.method public backgroundColor(I)Lcom/conceptglobal/imaterialdesign/widget/SnackBar;
    .locals 1

    .line 577
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mBackground:Lcom/conceptglobal/imaterialdesign/widget/SnackBar$BackgroundDrawable;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar$BackgroundDrawable;->setColor(I)V

    return-object p0
.end method

.method public backgroundRadius(I)Lcom/conceptglobal/imaterialdesign/widget/SnackBar;
    .locals 1

    .line 587
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mBackground:Lcom/conceptglobal/imaterialdesign/widget/SnackBar$BackgroundDrawable;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar$BackgroundDrawable;->setRadius(I)V

    return-object p0
.end method

.method public dismiss()V
    .locals 2

    .line 862
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 865
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 867
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mOutAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    .line 868
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 869
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 870
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mOutAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/conceptglobal/imaterialdesign/widget/SnackBar$4;

    invoke-direct {v1, p0}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar$4;-><init>(Lcom/conceptglobal/imaterialdesign/widget/SnackBar;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 889
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->clearAnimation()V

    .line 890
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 893
    :cond_1
    iget-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mRemoveOnDismiss:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 894
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    const/4 v0, 0x0

    .line 896
    invoke-direct {p0, v0}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->setState(I)V

    const/16 v0, 0x8

    .line 897
    invoke-virtual {p0, v0}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public duration(J)Lcom/conceptglobal/imaterialdesign/widget/SnackBar;
    .locals 0

    .line 567
    iput-wide p1, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mDuration:J

    return-object p0
.end method

.method public ellipsize(Landroid/text/TextUtils$TruncateAt;)Lcom/conceptglobal/imaterialdesign/widget/SnackBar;
    .locals 1

    .line 438
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mText:Lcom/conceptglobal/imaterialdesign/widget/TextView;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    return-object p0
.end method

.method public getState()I
    .locals 1

    .line 907
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mState:I

    return v0
.end method

.method public height(I)Lcom/conceptglobal/imaterialdesign/widget/SnackBar;
    .locals 0

    .line 661
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mHeight:I

    return-object p0
.end method

.method public horizontalPadding(I)Lcom/conceptglobal/imaterialdesign/widget/SnackBar;
    .locals 3

    .line 597
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mText:Lcom/conceptglobal/imaterialdesign/widget/TextView;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mText:Lcom/conceptglobal/imaterialdesign/widget/TextView;

    invoke-virtual {v2}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v0, p1, v1, p1, v2}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setPadding(IIII)V

    .line 598
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/widget/Button;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-virtual {v2}, Lcom/conceptglobal/imaterialdesign/widget/Button;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v0, p1, v1, p1, v2}, Lcom/conceptglobal/imaterialdesign/widget/Button;->setPadding(IIII)V

    return-object p0
.end method

.method protected init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5

    const/4 v0, -0x1

    .line 136
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mWidth:I

    const/4 v0, -0x2

    .line 137
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mHeight:I

    const-wide/16 v1, -0x1

    .line 138
    iput-wide v1, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mDuration:J

    const/4 v1, 0x0

    .line 139
    iput-boolean v1, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mIsRtl:Z

    .line 141
    new-instance v2, Lcom/conceptglobal/imaterialdesign/widget/TextView;

    invoke-direct {v2, p1}, Lcom/conceptglobal/imaterialdesign/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mText:Lcom/conceptglobal/imaterialdesign/widget/TextView;

    const/4 v3, 0x1

    .line 142
    invoke-virtual {v2, v3}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setSingleLine(Z)V

    .line 143
    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mText:Lcom/conceptglobal/imaterialdesign/widget/TextView;

    const v4, 0x800013

    invoke-virtual {v2, v4}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setGravity(I)V

    .line 144
    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mText:Lcom/conceptglobal/imaterialdesign/widget/TextView;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v4}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    new-instance v2, Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-direct {v2, p1}, Lcom/conceptglobal/imaterialdesign/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    .line 147
    invoke-virtual {v2, v1}, Lcom/conceptglobal/imaterialdesign/widget/Button;->setBackgroundResource(I)V

    .line 148
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lcom/conceptglobal/imaterialdesign/widget/Button;->setGravity(I)V

    .line 149
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    new-instance v2, Lcom/conceptglobal/imaterialdesign/widget/SnackBar$2;

    invoke-direct {v2, p0}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar$2;-><init>(Lcom/conceptglobal/imaterialdesign/widget/SnackBar;)V

    invoke-virtual {v1, v2}, Lcom/conceptglobal/imaterialdesign/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    new-instance v0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar$BackgroundDrawable;

    invoke-direct {v0, p0}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar$BackgroundDrawable;-><init>(Lcom/conceptglobal/imaterialdesign/widget/SnackBar;)V

    iput-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mBackground:Lcom/conceptglobal/imaterialdesign/widget/SnackBar$BackgroundDrawable;

    const v1, -0xcdcdce

    .line 163
    invoke-virtual {v0, v1}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar$BackgroundDrawable;->setColor(I)V

    .line 164
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mBackground:Lcom/conceptglobal/imaterialdesign/widget/SnackBar$BackgroundDrawable;

    invoke-static {p0, v0}, Lcom/conceptglobal/imaterialdesign/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 165
    invoke-virtual {p0, v3}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->setClickable(Z)V

    .line 167
    invoke-super {p0, p1, p2, p3, p4}, Lcom/conceptglobal/imaterialdesign/widget/FrameLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public lines(I)Lcom/conceptglobal/imaterialdesign/widget/SnackBar;
    .locals 1

    .line 468
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mText:Lcom/conceptglobal/imaterialdesign/widget/TextView;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setLines(I)V

    return-object p0
.end method

.method public marginBottom(I)Lcom/conceptglobal/imaterialdesign/widget/SnackBar;
    .locals 0

    .line 701
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mMarginBottom:I

    return-object p0
.end method

.method public marginStart(I)Lcom/conceptglobal/imaterialdesign/widget/SnackBar;
    .locals 0

    .line 691
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mMarginStart:I

    return-object p0
.end method

.method public maxHeight(I)Lcom/conceptglobal/imaterialdesign/widget/SnackBar;
    .locals 0

    .line 671
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mMaxHeight:I

    return-object p0
.end method

.method public maxLines(I)Lcom/conceptglobal/imaterialdesign/widget/SnackBar;
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mText:Lcom/conceptglobal/imaterialdesign/widget/TextView;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setMaxLines(I)V

    return-object p0
.end method

.method public maxWidth(I)Lcom/conceptglobal/imaterialdesign/widget/SnackBar;
    .locals 1

    .line 651
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mText:Lcom/conceptglobal/imaterialdesign/widget/TextView;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setMaxWidth(I)V

    return-object p0
.end method

.method public minHeight(I)Lcom/conceptglobal/imaterialdesign/widget/SnackBar;
    .locals 0

    .line 681
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mMinHeight:I

    return-object p0
.end method

.method public minWidth(I)Lcom/conceptglobal/imaterialdesign/widget/SnackBar;
    .locals 1

    .line 641
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mText:Lcom/conceptglobal/imaterialdesign/widget/TextView;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setMinWidth(I)V

    return-object p0
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 363
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->getPaddingLeft()I

    move-result p1

    sub-int/2addr p4, p2

    .line 364
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->getPaddingRight()I

    move-result p2

    sub-int/2addr p4, p2

    .line 365
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->getPaddingTop()I

    move-result p2

    sub-int/2addr p5, p3

    .line 366
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p5, p3

    .line 368
    iget-object p3, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-virtual {p3}, Lcom/conceptglobal/imaterialdesign/widget/Button;->getVisibility()I

    move-result p3

    if-nez p3, :cond_1

    .line 369
    iget-boolean p3, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mIsRtl:Z

    if-eqz p3, :cond_0

    .line 370
    iget-object p3, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-virtual {p3}, Lcom/conceptglobal/imaterialdesign/widget/Button;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p3, p1, p2, v0, p5}, Lcom/conceptglobal/imaterialdesign/widget/Button;->layout(IIII)V

    .line 371
    iget-object p3, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-virtual {p3}, Lcom/conceptglobal/imaterialdesign/widget/Button;->getMeasuredWidth()I

    move-result p3

    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mText:Lcom/conceptglobal/imaterialdesign/widget/TextView;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p3, v0

    add-int/2addr p1, p3

    goto :goto_0

    .line 374
    :cond_0
    iget-object p3, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-virtual {p3}, Lcom/conceptglobal/imaterialdesign/widget/Button;->getMeasuredWidth()I

    move-result v0

    sub-int v0, p4, v0

    invoke-virtual {p3, v0, p2, p4, p5}, Lcom/conceptglobal/imaterialdesign/widget/Button;->layout(IIII)V

    .line 375
    iget-object p3, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-virtual {p3}, Lcom/conceptglobal/imaterialdesign/widget/Button;->getMeasuredWidth()I

    move-result p3

    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mText:Lcom/conceptglobal/imaterialdesign/widget/TextView;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->getPaddingRight()I

    move-result v0

    sub-int/2addr p3, v0

    sub-int/2addr p4, p3

    .line 379
    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mText:Lcom/conceptglobal/imaterialdesign/widget/TextView;

    invoke-virtual {p3, p1, p2, p4, p5}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 314
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 315
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 316
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 317
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 321
    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-virtual {v3}, Lcom/conceptglobal/imaterialdesign/widget/Button;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 322
    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    const/4 v4, 0x0

    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v3, v4, p2}, Lcom/conceptglobal/imaterialdesign/widget/Button;->measure(II)V

    .line 323
    iget-boolean v3, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mIsRtl:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mText:Lcom/conceptglobal/imaterialdesign/widget/TextView;

    invoke-virtual {v3}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->getPaddingLeft()I

    move-result v3

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mText:Lcom/conceptglobal/imaterialdesign/widget/TextView;

    invoke-virtual {v3}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->getPaddingRight()I

    move-result v3

    .line 324
    :goto_0
    iget-object v4, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mText:Lcom/conceptglobal/imaterialdesign/widget/TextView;

    iget-object v5, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-virtual {v5}, Lcom/conceptglobal/imaterialdesign/widget/Button;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v5, v3

    sub-int v5, v0, v5

    invoke-static {v5, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v4, v5, p2}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->measure(II)V

    .line 325
    iget-object p2, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mText:Lcom/conceptglobal/imaterialdesign/widget/TextView;

    invoke-virtual {p2}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->getMeasuredWidth()I

    move-result p2

    iget-object v4, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-virtual {v4}, Lcom/conceptglobal/imaterialdesign/widget/Button;->getMeasuredWidth()I

    move-result v4

    add-int/2addr p2, v4

    sub-int/2addr p2, v3

    goto :goto_1

    .line 328
    :cond_1
    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mText:Lcom/conceptglobal/imaterialdesign/widget/TextView;

    invoke-static {v0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v3, v4, p2}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->measure(II)V

    .line 329
    iget-object p2, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mText:Lcom/conceptglobal/imaterialdesign/widget/TextView;

    invoke-virtual {p2}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->getMeasuredWidth()I

    move-result p2

    .line 332
    :goto_1
    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mText:Lcom/conceptglobal/imaterialdesign/widget/TextView;

    invoke-virtual {v3}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->getMeasuredHeight()I

    move-result v3

    iget-object v4, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-virtual {v4}, Lcom/conceptglobal/imaterialdesign/widget/Button;->getMeasuredHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, -0x80000000

    if-eq p1, v5, :cond_2

    if-eq p1, v4, :cond_3

    move v0, p2

    goto :goto_2

    .line 336
    :cond_2
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_3
    :goto_2
    if-eq v2, v5, :cond_4

    if-eq v2, v4, :cond_5

    move v1, v3

    goto :goto_3

    .line 345
    :cond_4
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 352
    :cond_5
    :goto_3
    iget p1, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mMaxHeight:I

    if-lez p1, :cond_6

    .line 353
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 355
    :cond_6
    iget p1, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mMinHeight:I

    if-lez p1, :cond_7

    .line 356
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 358
    :cond_7
    invoke-virtual {p0, v0, v1}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 300
    :goto_0
    iget-boolean p1, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mIsRtl:Z

    if-eq p1, v0, :cond_3

    .line 301
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mIsRtl:Z

    .line 304
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mText:Lcom/conceptglobal/imaterialdesign/widget/TextView;

    iget-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mIsRtl:Z

    const/4 v1, 0x4

    const/4 v2, 0x3

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    :cond_1
    const/4 v0, 0x3

    :goto_1
    invoke-virtual {p1, v0}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setTextDirection(I)V

    .line 305
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    iget-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mIsRtl:Z

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x3

    :goto_2
    invoke-virtual {p1, v1}, Lcom/conceptglobal/imaterialdesign/widget/Button;->setTextDirection(I)V

    .line 308
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->requestLayout()V

    :cond_3
    return-void
.end method

.method public padding(II)Lcom/conceptglobal/imaterialdesign/widget/SnackBar;
    .locals 1

    .line 620
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mText:Lcom/conceptglobal/imaterialdesign/widget/TextView;

    invoke-virtual {v0, p1, p2, p1, p2}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setPadding(IIII)V

    .line 621
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-virtual {v0, p1, p2, p1, p2}, Lcom/conceptglobal/imaterialdesign/widget/Button;->setPadding(IIII)V

    return-object p0
.end method

.method public removeOnDismiss(Z)Lcom/conceptglobal/imaterialdesign/widget/SnackBar;
    .locals 0

    .line 751
    iput-boolean p1, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mRemoveOnDismiss:Z

    return-object p0
.end method

.method public show()V
    .locals 3

    .line 787
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_6

    .line 788
    iget v1, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_6

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto/16 :goto_3

    .line 791
    :cond_0
    instance-of v1, v0, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_2

    .line 792
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 794
    iget v1, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mWidth:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 795
    iget v1, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mHeight:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const v1, 0x800053

    .line 796
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 797
    iget-boolean v1, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mIsRtl:Z

    if-eqz v1, :cond_1

    .line 798
    iget v1, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mMarginStart:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    .line 800
    :cond_1
    iget v1, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mMarginStart:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 801
    :goto_0
    iget v1, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mMarginBottom:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 803
    invoke-virtual {p0, v0}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 805
    :cond_2
    instance-of v0, v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_4

    .line 806
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 808
    iget v1, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mWidth:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 809
    iget v1, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mHeight:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/16 v1, 0xc

    .line 810
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0x14

    .line 811
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 812
    iget-boolean v1, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mIsRtl:Z

    if-eqz v1, :cond_3

    .line 813
    iget v1, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mMarginStart:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_1

    .line 815
    :cond_3
    iget v1, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mMarginStart:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 816
    :goto_1
    iget v1, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mMarginBottom:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 818
    invoke-virtual {p0, v0}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 821
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mInAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    iget v2, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mState:I

    if-eq v2, v1, :cond_5

    .line 822
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 823
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 824
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mInAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/conceptglobal/imaterialdesign/widget/SnackBar$3;

    invoke-direct {v1, p0}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar$3;-><init>(Lcom/conceptglobal/imaterialdesign/widget/SnackBar;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 842
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->clearAnimation()V

    .line 843
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    .line 846
    invoke-virtual {p0, v0}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->setVisibility(I)V

    .line 847
    invoke-direct {p0, v1}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->setState(I)V

    .line 848
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->startTimer()V

    :cond_6
    :goto_3
    return-void
.end method

.method public show(Landroid/app/Activity;)V
    .locals 1

    .line 760
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->show(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public show(Landroid/view/ViewGroup;)V
    .locals 2

    .line 768
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 771
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p1, :cond_2

    .line 772
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 773
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 775
    :cond_1
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 778
    :cond_2
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->show()V

    :cond_3
    :goto_0
    return-void
.end method

.method public singleLine(Z)Lcom/conceptglobal/imaterialdesign/widget/SnackBar;
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mText:Lcom/conceptglobal/imaterialdesign/widget/TextView;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setSingleLine(Z)V

    return-object p0
.end method

.method public stateChangeListener(Lcom/conceptglobal/imaterialdesign/widget/SnackBar$OnStateChangeListener;)Lcom/conceptglobal/imaterialdesign/widget/SnackBar;
    .locals 0

    .line 721
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mStateChangeListener:Lcom/conceptglobal/imaterialdesign/widget/SnackBar$OnStateChangeListener;

    return-object p0
.end method

.method public text(I)Lcom/conceptglobal/imaterialdesign/widget/SnackBar;
    .locals 1

    .line 398
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->text(Ljava/lang/CharSequence;)Lcom/conceptglobal/imaterialdesign/widget/SnackBar;

    move-result-object p1

    return-object p1
.end method

.method public text(Ljava/lang/CharSequence;)Lcom/conceptglobal/imaterialdesign/widget/SnackBar;
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mText:Lcom/conceptglobal/imaterialdesign/widget/TextView;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public textAppearance(I)Lcom/conceptglobal/imaterialdesign/widget/SnackBar;
    .locals 2

    if-eqz p1, :cond_0

    .line 428
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mText:Lcom/conceptglobal/imaterialdesign/widget/TextView;

    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_0
    return-object p0
.end method

.method public textColor(I)Lcom/conceptglobal/imaterialdesign/widget/SnackBar;
    .locals 1

    .line 407
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mText:Lcom/conceptglobal/imaterialdesign/widget/TextView;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setTextColor(I)V

    return-object p0
.end method

.method public textSize(F)Lcom/conceptglobal/imaterialdesign/widget/SnackBar;
    .locals 2

    .line 417
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mText:Lcom/conceptglobal/imaterialdesign/widget/TextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setTextSize(IF)V

    return-object p0
.end method

.method public verticalPadding(I)Lcom/conceptglobal/imaterialdesign/widget/SnackBar;
    .locals 3

    .line 608
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mText:Lcom/conceptglobal/imaterialdesign/widget/TextView;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mText:Lcom/conceptglobal/imaterialdesign/widget/TextView;

    invoke-virtual {v2}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->getPaddingRight()I

    move-result v2

    invoke-virtual {v0, v1, p1, v2, p1}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setPadding(IIII)V

    .line 609
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/widget/Button;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-virtual {v2}, Lcom/conceptglobal/imaterialdesign/widget/Button;->getPaddingRight()I

    move-result v2

    invoke-virtual {v0, v1, p1, v2, p1}, Lcom/conceptglobal/imaterialdesign/widget/Button;->setPadding(IIII)V

    return-object p0
.end method

.method public width(I)Lcom/conceptglobal/imaterialdesign/widget/SnackBar;
    .locals 0

    .line 631
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/widget/SnackBar;->mWidth:I

    return-object p0
.end method

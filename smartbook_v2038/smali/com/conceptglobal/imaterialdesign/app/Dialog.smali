.class public Lcom/conceptglobal/imaterialdesign/app/Dialog;
.super Landroid/app/Dialog;
.source "Dialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;,
        Lcom/conceptglobal/imaterialdesign/app/Dialog$ContainerFrameLayout;,
        Lcom/conceptglobal/imaterialdesign/app/Dialog$Builder;
    }
.end annotation


# static fields
.field public static final ACTION_NEGATIVE:I

.field public static final ACTION_NEUTRAL:I

.field public static final ACTION_POSITIVE:I

.field public static final TITLE:I


# instance fields
.field protected mActionHeight:I

.field protected mActionMinWidth:I

.field protected mActionOuterHeight:I

.field protected mActionOuterPadding:I

.field protected mActionPadding:I

.field private mCancelable:Z

.field private mCanceledOnTouchOutside:Z

.field private mCardView:Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;

.field private mContainer:Lcom/conceptglobal/imaterialdesign/app/Dialog$ContainerFrameLayout;

.field private mContent:Landroid/view/View;

.field protected mContentPadding:I

.field protected mDialogHorizontalPadding:I

.field protected mDialogVerticalPadding:I

.field private final mDismissAction:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field protected mInAnimationId:I

.field private mLayoutActionVertical:Z

.field private mLayoutHeight:I

.field private mLayoutWidth:I

.field private mMaxHeight:I

.field private mMaxWidth:I

.field protected mNegativeAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

.field protected mNeutralAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

.field protected mOutAnimationId:I

.field protected mPositiveAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

.field protected mTitle:Lcom/conceptglobal/imaterialdesign/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 88
    invoke-static {}, Lcom/conceptglobal/imaterialdesign/util/ViewUtil;->generateViewId()I

    move-result v0

    sput v0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->TITLE:I

    .line 92
    invoke-static {}, Lcom/conceptglobal/imaterialdesign/util/ViewUtil;->generateViewId()I

    move-result v0

    sput v0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->ACTION_POSITIVE:I

    .line 96
    invoke-static {}, Lcom/conceptglobal/imaterialdesign/util/ViewUtil;->generateViewId()I

    move-result v0

    sput v0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->ACTION_NEGATIVE:I

    .line 100
    invoke-static {}, Lcom/conceptglobal/imaterialdesign/util/ViewUtil;->generateViewId()I

    move-result v0

    sput v0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->ACTION_NEUTRAL:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 103
    sget v0, Lcom/conceptglobal/imaterialdesign/R$style;->Material_App_Dialog_Light:I

    invoke-direct {p0, p1, v0}, Lcom/conceptglobal/imaterialdesign/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 108
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, -0x2

    .line 44
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mLayoutWidth:I

    .line 45
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mLayoutHeight:I

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mHandler:Landroid/os/Handler;

    .line 69
    new-instance v0, Lcom/conceptglobal/imaterialdesign/app/Dialog$1;

    invoke-direct {v0, p0}, Lcom/conceptglobal/imaterialdesign/app/Dialog$1;-><init>(Lcom/conceptglobal/imaterialdesign/app/Dialog;)V

    iput-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mDismissAction:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mLayoutActionVertical:Z

    const/4 v0, 0x1

    .line 82
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mCancelable:Z

    .line 83
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mCanceledOnTouchOutside:Z

    .line 112
    invoke-virtual {p0, v0}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->requestWindowFeature(I)Z

    .line 113
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/imaterialdesign/drawable/BlankDrawable;->getInstance()Lcom/conceptglobal/imaterialdesign/drawable/BlankDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 114
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    .line 115
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 116
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 117
    sget v1, Lcom/conceptglobal/imaterialdesign/R$style;->DialogNoAnimation:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 118
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 120
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->init(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$001(Lcom/conceptglobal/imaterialdesign/app/Dialog;)V
    .locals 0

    .line 41
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method static synthetic access$100(Lcom/conceptglobal/imaterialdesign/app/Dialog;)Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mCardView:Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/conceptglobal/imaterialdesign/app/Dialog;)Landroid/view/View;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mContent:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/conceptglobal/imaterialdesign/app/Dialog;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mLayoutActionVertical:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/conceptglobal/imaterialdesign/app/Dialog;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mLayoutActionVertical:Z

    return p1
.end method

.method static synthetic access$200(Lcom/conceptglobal/imaterialdesign/app/Dialog;)Ljava/lang/Runnable;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mDismissAction:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$300(Lcom/conceptglobal/imaterialdesign/app/Dialog;)Landroid/os/Handler;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/conceptglobal/imaterialdesign/app/Dialog;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mCancelable:Z

    return p0
.end method

.method static synthetic access$500(Lcom/conceptglobal/imaterialdesign/app/Dialog;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mCanceledOnTouchOutside:Z

    return p0
.end method

.method static synthetic access$600(Lcom/conceptglobal/imaterialdesign/app/Dialog;)I
    .locals 0

    .line 41
    iget p0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mMaxWidth:I

    return p0
.end method

.method static synthetic access$700(Lcom/conceptglobal/imaterialdesign/app/Dialog;)I
    .locals 0

    .line 41
    iget p0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mMaxHeight:I

    return p0
.end method

.method static synthetic access$800(Lcom/conceptglobal/imaterialdesign/app/Dialog;)I
    .locals 0

    .line 41
    iget p0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mLayoutWidth:I

    return p0
.end method

.method static synthetic access$900(Lcom/conceptglobal/imaterialdesign/app/Dialog;)I
    .locals 0

    .line 41
    iget p0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mLayoutHeight:I

    return p0
.end method

.method private init(Landroid/content/Context;I)V
    .locals 5

    const/16 v0, 0x18

    .line 124
    invoke-static {p1, v0}, Lcom/conceptglobal/imaterialdesign/util/ThemeUtil;->dpToPx(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mContentPadding:I

    const/16 v1, 0x40

    .line 125
    invoke-static {p1, v1}, Lcom/conceptglobal/imaterialdesign/util/ThemeUtil;->dpToPx(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mActionMinWidth:I

    const/16 v1, 0x24

    .line 126
    invoke-static {p1, v1}, Lcom/conceptglobal/imaterialdesign/util/ThemeUtil;->dpToPx(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mActionHeight:I

    const/16 v1, 0x30

    .line 127
    invoke-static {p1, v1}, Lcom/conceptglobal/imaterialdesign/util/ThemeUtil;->dpToPx(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mActionOuterHeight:I

    const/16 v1, 0x8

    .line 128
    invoke-static {p1, v1}, Lcom/conceptglobal/imaterialdesign/util/ThemeUtil;->dpToPx(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mActionPadding:I

    const/16 v1, 0x10

    .line 129
    invoke-static {p1, v1}, Lcom/conceptglobal/imaterialdesign/util/ThemeUtil;->dpToPx(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mActionOuterPadding:I

    const/16 v1, 0x28

    .line 130
    invoke-static {p1, v1}, Lcom/conceptglobal/imaterialdesign/util/ThemeUtil;->dpToPx(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mDialogHorizontalPadding:I

    .line 131
    invoke-static {p1, v0}, Lcom/conceptglobal/imaterialdesign/util/ThemeUtil;->dpToPx(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mDialogVerticalPadding:I

    .line 133
    new-instance v0, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;

    invoke-direct {v0, p0, p1}, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;-><init>(Lcom/conceptglobal/imaterialdesign/app/Dialog;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mCardView:Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;

    .line 134
    new-instance v0, Lcom/conceptglobal/imaterialdesign/app/Dialog$ContainerFrameLayout;

    invoke-direct {v0, p0, p1}, Lcom/conceptglobal/imaterialdesign/app/Dialog$ContainerFrameLayout;-><init>(Lcom/conceptglobal/imaterialdesign/app/Dialog;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mContainer:Lcom/conceptglobal/imaterialdesign/app/Dialog$ContainerFrameLayout;

    .line 135
    new-instance v0, Lcom/conceptglobal/imaterialdesign/widget/TextView;

    invoke-direct {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mTitle:Lcom/conceptglobal/imaterialdesign/widget/TextView;

    .line 136
    new-instance v0, Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-direct {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mPositiveAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    .line 137
    new-instance v0, Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-direct {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mNegativeAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    .line 138
    new-instance v0, Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-direct {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mNeutralAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    .line 140
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mCardView:Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->setPreventCornerOverlap(Z)V

    .line 141
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mCardView:Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->setUseCompatPadding(Z)V

    .line 143
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mTitle:Lcom/conceptglobal/imaterialdesign/widget/TextView;

    sget v3, Lcom/conceptglobal/imaterialdesign/app/Dialog;->TITLE:I

    invoke-virtual {v0, v3}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setId(I)V

    .line 144
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mTitle:Lcom/conceptglobal/imaterialdesign/widget/TextView;

    const v3, 0x800003

    invoke-virtual {v0, v3}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setGravity(I)V

    .line 145
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mTitle:Lcom/conceptglobal/imaterialdesign/widget/TextView;

    iget v3, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mContentPadding:I

    iget v4, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mActionPadding:I

    sub-int v4, v3, v4

    invoke-virtual {v0, v3, v3, v3, v4}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setPadding(IIII)V

    .line 146
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mPositiveAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    sget v3, Lcom/conceptglobal/imaterialdesign/app/Dialog;->ACTION_POSITIVE:I

    invoke-virtual {v0, v3}, Lcom/conceptglobal/imaterialdesign/widget/Button;->setId(I)V

    .line 147
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mPositiveAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    iget v3, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mActionPadding:I

    invoke-virtual {v0, v3, v1, v3, v1}, Lcom/conceptglobal/imaterialdesign/widget/Button;->setPadding(IIII)V

    .line 148
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mPositiveAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/imaterialdesign/widget/Button;->setBackgroundResource(I)V

    .line 149
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mNegativeAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    sget v3, Lcom/conceptglobal/imaterialdesign/app/Dialog;->ACTION_NEGATIVE:I

    invoke-virtual {v0, v3}, Lcom/conceptglobal/imaterialdesign/widget/Button;->setId(I)V

    .line 150
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mNegativeAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    iget v3, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mActionPadding:I

    invoke-virtual {v0, v3, v1, v3, v1}, Lcom/conceptglobal/imaterialdesign/widget/Button;->setPadding(IIII)V

    .line 151
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mNegativeAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/imaterialdesign/widget/Button;->setBackgroundResource(I)V

    .line 152
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mNeutralAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    sget v3, Lcom/conceptglobal/imaterialdesign/app/Dialog;->ACTION_NEUTRAL:I

    invoke-virtual {v0, v3}, Lcom/conceptglobal/imaterialdesign/widget/Button;->setId(I)V

    .line 153
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mNeutralAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    iget v3, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mActionPadding:I

    invoke-virtual {v0, v3, v1, v3, v1}, Lcom/conceptglobal/imaterialdesign/widget/Button;->setPadding(IIII)V

    .line 154
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mNeutralAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/imaterialdesign/widget/Button;->setBackgroundResource(I)V

    .line 156
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mContainer:Lcom/conceptglobal/imaterialdesign/app/Dialog$ContainerFrameLayout;

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mCardView:Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/imaterialdesign/app/Dialog$ContainerFrameLayout;->addView(Landroid/view/View;)V

    .line 157
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mCardView:Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mTitle:Lcom/conceptglobal/imaterialdesign/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->addView(Landroid/view/View;)V

    .line 158
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mCardView:Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mPositiveAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->addView(Landroid/view/View;)V

    .line 159
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mCardView:Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mNegativeAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->addView(Landroid/view/View;)V

    .line 160
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mCardView:Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mNeutralAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->addView(Landroid/view/View;)V

    const/4 v0, -0x1

    .line 162
    invoke-static {p1, v0}, Lcom/conceptglobal/imaterialdesign/util/ThemeUtil;->windowBackground(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->backgroundColor(I)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    const/4 v0, 0x4

    .line 163
    invoke-static {p1, v0}, Lcom/conceptglobal/imaterialdesign/util/ThemeUtil;->dpToPx(Landroid/content/Context;I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->elevation(F)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    const/4 v0, 0x2

    .line 164
    invoke-static {p1, v0}, Lcom/conceptglobal/imaterialdesign/util/ThemeUtil;->dpToPx(Landroid/content/Context;I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->cornerRadius(F)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    const/high16 v0, 0x3f000000    # 0.5f

    .line 165
    invoke-virtual {p0, v0}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->dimAmount(F)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    const/4 v0, 0x3

    .line 166
    invoke-virtual {p0, v0}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->layoutDirection(I)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    .line 167
    sget v0, Landroidx/appcompat/R$style;->TextAppearance_AppCompat_Title:I

    invoke-virtual {p0, v0}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->titleTextAppearance(I)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    .line 168
    sget v0, Landroidx/appcompat/R$style;->TextAppearance_AppCompat_Button:I

    invoke-virtual {p0, v0}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->actionTextAppearance(I)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    const/high16 v0, 0x1e000000

    .line 169
    invoke-virtual {p0, v0}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->dividerColor(I)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    .line 170
    invoke-static {p1, v2}, Lcom/conceptglobal/imaterialdesign/util/ThemeUtil;->dpToPx(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->dividerHeight(I)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    .line 172
    invoke-virtual {p0, v2}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->cancelable(Z)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    .line 173
    invoke-virtual {p0, v2}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->canceledOnTouchOutside(Z)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    .line 174
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->clearContent()Lcom/conceptglobal/imaterialdesign/app/Dialog;

    .line 175
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->onCreate()V

    .line 176
    invoke-virtual {p0, p2}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->applyStyle(I)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    .line 178
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mContainer:Lcom/conceptglobal/imaterialdesign/app/Dialog$ContainerFrameLayout;

    invoke-super {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public actionBackground(I)Lcom/conceptglobal/imaterialdesign/app/Dialog;
    .locals 0

    .line 537
    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->positiveActionBackground(I)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    .line 538
    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->negativeActionBackground(I)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    .line 539
    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->neutralActionBackground(I)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    return-object p0
.end method

.method public actionBackground(Landroid/graphics/drawable/Drawable;)Lcom/conceptglobal/imaterialdesign/app/Dialog;
    .locals 0

    .line 549
    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->positiveActionBackground(Landroid/graphics/drawable/Drawable;)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    .line 550
    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->negativeActionBackground(Landroid/graphics/drawable/Drawable;)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    .line 551
    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->neutralActionBackground(Landroid/graphics/drawable/Drawable;)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    return-object p0
.end method

.method public actionRipple(I)Lcom/conceptglobal/imaterialdesign/app/Dialog;
    .locals 0

    .line 561
    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->positiveActionRipple(I)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    .line 562
    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->negativeActionRipple(I)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    .line 563
    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->neutralActionRipple(I)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    return-object p0
.end method

.method public actionTextAppearance(I)Lcom/conceptglobal/imaterialdesign/app/Dialog;
    .locals 0

    .line 573
    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->positiveActionTextAppearance(I)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    .line 574
    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->negativeActionTextAppearance(I)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    .line 575
    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->neutralActionTextAppearance(I)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    return-object p0
.end method

.method public actionTextColor(I)Lcom/conceptglobal/imaterialdesign/app/Dialog;
    .locals 0

    .line 597
    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->positiveActionTextColor(I)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    .line 598
    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->negativeActionTextColor(I)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    .line 599
    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->neutralActionTextColor(I)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    return-object p0
.end method

.method public actionTextColor(Landroid/content/res/ColorStateList;)Lcom/conceptglobal/imaterialdesign/app/Dialog;
    .locals 0

    .line 585
    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->positiveActionTextColor(Landroid/content/res/ColorStateList;)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    .line 586
    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->negativeActionTextColor(Landroid/content/res/ColorStateList;)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    .line 587
    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->neutralActionTextColor(Landroid/content/res/ColorStateList;)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    return-object p0
.end method

.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 1017
    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->contentView(Landroid/view/View;)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    return-void
.end method

.method public applyStyle(I)Lcom/conceptglobal/imaterialdesign/app/Dialog;
    .locals 30

    move-object/from16 v0, p0

    .line 185
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 186
    sget-object v2, Lcom/conceptglobal/imaterialdesign/R$styleable;->Dialog:[I

    move/from16 v3, p1

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 188
    iget v2, v0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mLayoutWidth:I

    .line 189
    iget v3, v0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mLayoutHeight:I

    .line 211
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v4

    const/4 v6, 0x0

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    :goto_0
    if-ge v10, v4, :cond_22

    .line 212
    invoke-virtual {v1, v10}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v5

    move/from16 v27, v4

    .line 214
    sget v4, Lcom/conceptglobal/imaterialdesign/R$styleable;->Dialog_android_layout_width:I

    move-object/from16 v28, v9

    const/4 v9, -0x2

    move-object/from16 v29, v8

    const/4 v8, 0x1

    if-ne v5, v4, :cond_0

    .line 215
    invoke-virtual {v1, v5, v9}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    :goto_1
    move-object/from16 v9, v28

    move-object/from16 v8, v29

    const/4 v4, 0x0

    const/4 v11, 0x1

    goto/16 :goto_4

    .line 218
    :cond_0
    sget v4, Lcom/conceptglobal/imaterialdesign/R$styleable;->Dialog_android_layout_height:I

    if-ne v5, v4, :cond_1

    .line 219
    invoke-virtual {v1, v5, v9}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v3

    goto :goto_1

    .line 222
    :cond_1
    sget v4, Lcom/conceptglobal/imaterialdesign/R$styleable;->Dialog_di_maxWidth:I

    if-ne v5, v4, :cond_2

    const/4 v4, 0x0

    .line 223
    invoke-virtual {v1, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->maxWidth(I)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    goto/16 :goto_2

    :cond_2
    const/4 v4, 0x0

    .line 224
    sget v9, Lcom/conceptglobal/imaterialdesign/R$styleable;->Dialog_di_maxHeight:I

    if-ne v5, v9, :cond_3

    .line 225
    invoke-virtual {v1, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->maxHeight(I)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    goto/16 :goto_2

    .line 226
    :cond_3
    sget v9, Lcom/conceptglobal/imaterialdesign/R$styleable;->Dialog_di_dimAmount:I

    if-ne v5, v9, :cond_4

    const/4 v8, 0x0

    .line 227
    invoke-virtual {v1, v5, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    invoke-virtual {v0, v5}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->dimAmount(F)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    goto/16 :goto_2

    .line 228
    :cond_4
    sget v9, Lcom/conceptglobal/imaterialdesign/R$styleable;->Dialog_di_backgroundColor:I

    if-ne v5, v9, :cond_5

    .line 229
    invoke-virtual {v1, v5, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->backgroundColor(I)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    goto/16 :goto_2

    .line 230
    :cond_5
    sget v9, Lcom/conceptglobal/imaterialdesign/R$styleable;->Dialog_di_maxElevation:I

    if-ne v5, v9, :cond_6

    .line 231
    invoke-virtual {v1, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0, v5}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->maxElevation(F)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    goto/16 :goto_2

    .line 232
    :cond_6
    sget v9, Lcom/conceptglobal/imaterialdesign/R$styleable;->Dialog_di_elevation:I

    if-ne v5, v9, :cond_7

    .line 233
    invoke-virtual {v1, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0, v5}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->elevation(F)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    goto/16 :goto_2

    .line 234
    :cond_7
    sget v9, Lcom/conceptglobal/imaterialdesign/R$styleable;->Dialog_di_cornerRadius:I

    if-ne v5, v9, :cond_8

    .line 235
    invoke-virtual {v1, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0, v5}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->cornerRadius(F)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    goto/16 :goto_2

    .line 236
    :cond_8
    sget v9, Lcom/conceptglobal/imaterialdesign/R$styleable;->Dialog_di_layoutDirection:I

    if-ne v5, v9, :cond_9

    .line 237
    invoke-virtual {v1, v5, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->layoutDirection(I)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    goto/16 :goto_2

    .line 238
    :cond_9
    sget v9, Lcom/conceptglobal/imaterialdesign/R$styleable;->Dialog_di_titleTextAppearance:I

    if-ne v5, v9, :cond_a

    .line 239
    invoke-virtual {v1, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    goto/16 :goto_2

    .line 240
    :cond_a
    sget v9, Lcom/conceptglobal/imaterialdesign/R$styleable;->Dialog_di_titleTextColor:I

    if-ne v5, v9, :cond_b

    .line 241
    invoke-virtual {v1, v5, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    move-object/from16 v9, v28

    move-object/from16 v8, v29

    const/4 v13, 0x1

    goto/16 :goto_4

    .line 244
    :cond_b
    sget v9, Lcom/conceptglobal/imaterialdesign/R$styleable;->Dialog_di_actionBackground:I

    if-ne v5, v9, :cond_c

    .line 245
    invoke-virtual {v1, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    goto/16 :goto_2

    .line 246
    :cond_c
    sget v9, Lcom/conceptglobal/imaterialdesign/R$styleable;->Dialog_di_actionRipple:I

    if-ne v5, v9, :cond_d

    .line 247
    invoke-virtual {v1, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v16

    goto/16 :goto_2

    .line 248
    :cond_d
    sget v9, Lcom/conceptglobal/imaterialdesign/R$styleable;->Dialog_di_actionTextAppearance:I

    if-ne v5, v9, :cond_e

    .line 249
    invoke-virtual {v1, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    goto/16 :goto_2

    .line 250
    :cond_e
    sget v9, Lcom/conceptglobal/imaterialdesign/R$styleable;->Dialog_di_actionTextColor:I

    if-ne v5, v9, :cond_f

    .line 251
    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    move-object v6, v5

    goto/16 :goto_2

    .line 252
    :cond_f
    sget v9, Lcom/conceptglobal/imaterialdesign/R$styleable;->Dialog_di_positiveActionBackground:I

    if-ne v5, v9, :cond_10

    .line 253
    invoke-virtual {v1, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v18

    goto/16 :goto_2

    .line 254
    :cond_10
    sget v9, Lcom/conceptglobal/imaterialdesign/R$styleable;->Dialog_di_positiveActionRipple:I

    if-ne v5, v9, :cond_11

    .line 255
    invoke-virtual {v1, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v19

    goto/16 :goto_2

    .line 256
    :cond_11
    sget v9, Lcom/conceptglobal/imaterialdesign/R$styleable;->Dialog_di_positiveActionTextAppearance:I

    if-ne v5, v9, :cond_12

    .line 257
    invoke-virtual {v1, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v20

    goto/16 :goto_2

    .line 258
    :cond_12
    sget v9, Lcom/conceptglobal/imaterialdesign/R$styleable;->Dialog_di_positiveActionTextColor:I

    if-ne v5, v9, :cond_13

    .line 259
    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    move-object v7, v5

    goto/16 :goto_2

    .line 260
    :cond_13
    sget v9, Lcom/conceptglobal/imaterialdesign/R$styleable;->Dialog_di_negativeActionBackground:I

    if-ne v5, v9, :cond_14

    .line 261
    invoke-virtual {v1, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v21

    goto/16 :goto_2

    .line 262
    :cond_14
    sget v9, Lcom/conceptglobal/imaterialdesign/R$styleable;->Dialog_di_negativeActionRipple:I

    if-ne v5, v9, :cond_15

    .line 263
    invoke-virtual {v1, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v22

    goto/16 :goto_2

    .line 264
    :cond_15
    sget v9, Lcom/conceptglobal/imaterialdesign/R$styleable;->Dialog_di_negativeActionTextAppearance:I

    if-ne v5, v9, :cond_16

    .line 265
    invoke-virtual {v1, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v23

    goto/16 :goto_2

    .line 266
    :cond_16
    sget v9, Lcom/conceptglobal/imaterialdesign/R$styleable;->Dialog_di_negativeActionTextColor:I

    if-ne v5, v9, :cond_17

    .line 267
    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    move-object v8, v5

    move-object/from16 v9, v28

    goto/16 :goto_4

    .line 268
    :cond_17
    sget v9, Lcom/conceptglobal/imaterialdesign/R$styleable;->Dialog_di_neutralActionBackground:I

    if-ne v5, v9, :cond_18

    .line 269
    invoke-virtual {v1, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v24

    goto/16 :goto_2

    .line 270
    :cond_18
    sget v9, Lcom/conceptglobal/imaterialdesign/R$styleable;->Dialog_di_neutralActionRipple:I

    if-ne v5, v9, :cond_19

    .line 271
    invoke-virtual {v1, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v25

    goto :goto_2

    .line 272
    :cond_19
    sget v9, Lcom/conceptglobal/imaterialdesign/R$styleable;->Dialog_di_neutralActionTextAppearance:I

    if-ne v5, v9, :cond_1a

    .line 273
    invoke-virtual {v1, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v26

    goto :goto_2

    .line 274
    :cond_1a
    sget v9, Lcom/conceptglobal/imaterialdesign/R$styleable;->Dialog_di_neutralActionTextColor:I

    if-ne v5, v9, :cond_1b

    .line 275
    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    move-object v9, v5

    goto :goto_3

    .line 276
    :cond_1b
    sget v9, Lcom/conceptglobal/imaterialdesign/R$styleable;->Dialog_di_inAnimation:I

    if-ne v5, v9, :cond_1c

    .line 277
    invoke-virtual {v1, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->inAnimation(I)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    goto :goto_2

    .line 278
    :cond_1c
    sget v9, Lcom/conceptglobal/imaterialdesign/R$styleable;->Dialog_di_outAnimation:I

    if-ne v5, v9, :cond_1d

    .line 279
    invoke-virtual {v1, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->outAnimation(I)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    goto :goto_2

    .line 280
    :cond_1d
    sget v9, Lcom/conceptglobal/imaterialdesign/R$styleable;->Dialog_di_dividerColor:I

    if-ne v5, v9, :cond_1e

    .line 281
    invoke-virtual {v1, v5, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->dividerColor(I)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    goto :goto_2

    .line 282
    :cond_1e
    sget v9, Lcom/conceptglobal/imaterialdesign/R$styleable;->Dialog_di_dividerHeight:I

    if-ne v5, v9, :cond_1f

    .line 283
    invoke-virtual {v1, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->dividerHeight(I)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    goto :goto_2

    .line 284
    :cond_1f
    sget v9, Lcom/conceptglobal/imaterialdesign/R$styleable;->Dialog_di_cancelable:I

    if-ne v5, v9, :cond_20

    .line 285
    invoke-virtual {v1, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v0, v5}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->cancelable(Z)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    goto :goto_2

    .line 286
    :cond_20
    sget v9, Lcom/conceptglobal/imaterialdesign/R$styleable;->Dialog_di_canceledOnTouchOutside:I

    if-ne v5, v9, :cond_21

    .line 287
    invoke-virtual {v1, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v0, v5}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->canceledOnTouchOutside(Z)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    :cond_21
    :goto_2
    move-object/from16 v9, v28

    :goto_3
    move-object/from16 v8, v29

    :goto_4
    add-int/lit8 v10, v10, 0x1

    move/from16 v4, v27

    goto/16 :goto_0

    :cond_22
    move-object/from16 v29, v8

    move-object/from16 v28, v9

    .line 290
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v11, :cond_23

    .line 293
    invoke-virtual {v0, v2, v3}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->layoutParams(II)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    :cond_23
    if-eqz v12, :cond_24

    .line 296
    invoke-virtual {v0, v12}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->titleTextAppearance(I)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    :cond_24
    if-eqz v13, :cond_25

    .line 299
    invoke-virtual {v0, v14}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->titleColor(I)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    :cond_25
    if-eqz v15, :cond_26

    .line 302
    invoke-virtual {v0, v15}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->actionBackground(I)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    :cond_26
    move/from16 v5, v16

    if-eqz v5, :cond_27

    .line 305
    invoke-virtual {v0, v5}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->actionRipple(I)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    :cond_27
    move/from16 v5, v17

    if-eqz v5, :cond_28

    .line 308
    invoke-virtual {v0, v5}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->actionTextAppearance(I)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    :cond_28
    if-eqz v6, :cond_29

    .line 311
    invoke-virtual {v0, v6}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->actionTextColor(Landroid/content/res/ColorStateList;)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    :cond_29
    move/from16 v5, v18

    if-eqz v5, :cond_2a

    .line 314
    invoke-virtual {v0, v5}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->positiveActionBackground(I)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    :cond_2a
    move/from16 v5, v19

    if-eqz v5, :cond_2b

    .line 317
    invoke-virtual {v0, v5}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->positiveActionRipple(I)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    :cond_2b
    move/from16 v5, v20

    if-eqz v5, :cond_2c

    .line 320
    invoke-virtual {v0, v5}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->positiveActionTextAppearance(I)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    :cond_2c
    if-eqz v7, :cond_2d

    .line 323
    invoke-virtual {v0, v7}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->positiveActionTextColor(Landroid/content/res/ColorStateList;)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    :cond_2d
    move/from16 v5, v21

    if-eqz v5, :cond_2e

    .line 326
    invoke-virtual {v0, v5}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->negativeActionBackground(I)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    :cond_2e
    move/from16 v5, v22

    if-eqz v5, :cond_2f

    .line 329
    invoke-virtual {v0, v5}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->negativeActionRipple(I)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    :cond_2f
    move/from16 v5, v23

    if-eqz v5, :cond_30

    .line 332
    invoke-virtual {v0, v5}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->negativeActionTextAppearance(I)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    :cond_30
    if-eqz v29, :cond_31

    move-object/from16 v6, v29

    .line 335
    invoke-virtual {v0, v6}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->negativeActionTextColor(Landroid/content/res/ColorStateList;)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    :cond_31
    move/from16 v5, v24

    if-eqz v5, :cond_32

    .line 338
    invoke-virtual {v0, v5}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->neutralActionBackground(I)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    :cond_32
    move/from16 v5, v25

    if-eqz v5, :cond_33

    .line 341
    invoke-virtual {v0, v5}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->neutralActionRipple(I)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    :cond_33
    move/from16 v5, v26

    if-eqz v5, :cond_34

    .line 344
    invoke-virtual {v0, v5}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->neutralActionTextAppearance(I)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    :cond_34
    if-eqz v28, :cond_35

    move-object/from16 v6, v28

    .line 347
    invoke-virtual {v0, v6}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->neutralActionTextColor(Landroid/content/res/ColorStateList;)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    :cond_35
    return-object v0
.end method

.method public backgroundColor(I)Lcom/conceptglobal/imaterialdesign/app/Dialog;
    .locals 1

    .line 424
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mCardView:Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->setCardBackgroundColor(I)V

    return-object p0
.end method

.method public cancelable(Z)Lcom/conceptglobal/imaterialdesign/app/Dialog;
    .locals 0

    .line 948
    invoke-super {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 949
    iput-boolean p1, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mCancelable:Z

    return-object p0
.end method

.method public canceledOnTouchOutside(Z)Lcom/conceptglobal/imaterialdesign/app/Dialog;
    .locals 0

    .line 962
    invoke-super {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 963
    iput-boolean p1, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mCanceledOnTouchOutside:Z

    return-object p0
.end method

.method public clearContent()Lcom/conceptglobal/imaterialdesign/app/Dialog;
    .locals 2

    const/4 v0, 0x0

    .line 357
    invoke-virtual {p0, v0}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->title(I)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    .line 358
    invoke-virtual {p0, v0}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->positiveAction(I)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    const/4 v1, 0x0

    .line 359
    invoke-virtual {p0, v1}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->positiveActionClickListener(Landroid/view/View$OnClickListener;)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    .line 360
    invoke-virtual {p0, v0}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->negativeAction(I)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    .line 361
    invoke-virtual {p0, v1}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->negativeActionClickListener(Landroid/view/View$OnClickListener;)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    .line 362
    invoke-virtual {p0, v0}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->neutralAction(I)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    .line 363
    invoke-virtual {p0, v1}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->neutralActionClickListener(Landroid/view/View$OnClickListener;)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    .line 364
    invoke-virtual {p0, v1}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->contentView(Landroid/view/View;)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    return-object p0
.end method

.method public contentMargin(I)Lcom/conceptglobal/imaterialdesign/app/Dialog;
    .locals 1

    .line 973
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mCardView:Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->setContentMargin(I)V

    return-object p0
.end method

.method public contentMargin(IIII)Lcom/conceptglobal/imaterialdesign/app/Dialog;
    .locals 1

    .line 986
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mCardView:Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->setContentMargin(IIII)V

    return-object p0
.end method

.method public contentView(I)Lcom/conceptglobal/imaterialdesign/app/Dialog;
    .locals 2

    if-nez p1, :cond_0

    return-object p0

    .line 938
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 939
    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->contentView(Landroid/view/View;)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public contentView(Landroid/view/View;)Lcom/conceptglobal/imaterialdesign/app/Dialog;
    .locals 2

    .line 916
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mContent:Landroid/view/View;

    if-eq v0, p1, :cond_1

    if-eqz v0, :cond_0

    .line 918
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mCardView:Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;

    invoke-virtual {v1, v0}, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->removeView(Landroid/view/View;)V

    .line 920
    :cond_0
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mContent:Landroid/view/View;

    .line 923
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mContent:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 924
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mCardView:Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->addView(Landroid/view/View;)V

    :cond_2
    return-object p0
.end method

.method public cornerRadius(F)Lcom/conceptglobal/imaterialdesign/app/Dialog;
    .locals 1

    .line 457
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mCardView:Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->setRadius(F)V

    return-object p0
.end method

.method public dimAmount(F)Lcom/conceptglobal/imaterialdesign/app/Dialog;
    .locals 3

    .line 406
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    .line 408
    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 409
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 410
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 411
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0

    .line 414
    :cond_0
    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    :goto_0
    return-object p0
.end method

.method public dismiss()V
    .locals 2

    .line 1048
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1051
    :cond_0
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mOutAnimationId:I

    if-eqz v0, :cond_1

    .line 1052
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mContainer:Lcom/conceptglobal/imaterialdesign/app/Dialog$ContainerFrameLayout;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/app/Dialog$ContainerFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mOutAnimationId:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1053
    new-instance v1, Lcom/conceptglobal/imaterialdesign/app/Dialog$3;

    invoke-direct {v1, p0}, Lcom/conceptglobal/imaterialdesign/app/Dialog$3;-><init>(Lcom/conceptglobal/imaterialdesign/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1066
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mCardView:Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;

    invoke-virtual {v1, v0}, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 1069
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mDismissAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public dismissImmediately()V
    .locals 2

    .line 1040
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 1042
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1043
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mDismissAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public dividerColor(I)Lcom/conceptglobal/imaterialdesign/app/Dialog;
    .locals 1

    .line 467
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mCardView:Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->setDividerColor(I)V

    return-object p0
.end method

.method public dividerHeight(I)Lcom/conceptglobal/imaterialdesign/app/Dialog;
    .locals 1

    .line 477
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mCardView:Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->setDividerHeight(I)V

    return-object p0
.end method

.method public elevation(F)Lcom/conceptglobal/imaterialdesign/app/Dialog;
    .locals 1

    .line 434
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mCardView:Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->getMaxCardElevation()F

    move-result v0

    cmpg-float v0, v0, p1

    if-gez v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mCardView:Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->setMaxCardElevation(F)V

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mCardView:Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->setCardElevation(F)V

    return-object p0
.end method

.method public inAnimation(I)Lcom/conceptglobal/imaterialdesign/app/Dialog;
    .locals 0

    .line 886
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mInAnimationId:I

    return-object p0
.end method

.method public layoutDirection(I)Lcom/conceptglobal/imaterialdesign/app/Dialog;
    .locals 1

    .line 876
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mCardView:Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;

    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->setLayoutDirection(Landroid/view/View;I)V

    return-object p0
.end method

.method public layoutParams(II)Lcom/conceptglobal/imaterialdesign/app/Dialog;
    .locals 0

    .line 375
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mLayoutWidth:I

    .line 376
    iput p2, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mLayoutHeight:I

    return-object p0
.end method

.method public maxElevation(F)Lcom/conceptglobal/imaterialdesign/app/Dialog;
    .locals 1

    .line 447
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mCardView:Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->setMaxCardElevation(F)V

    return-object p0
.end method

.method public maxHeight(I)Lcom/conceptglobal/imaterialdesign/app/Dialog;
    .locals 0

    .line 396
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mMaxHeight:I

    return-object p0
.end method

.method public maxWidth(I)Lcom/conceptglobal/imaterialdesign/app/Dialog;
    .locals 0

    .line 386
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mMaxWidth:I

    return-object p0
.end method

.method public negativeAction(I)Lcom/conceptglobal/imaterialdesign/app/Dialog;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 709
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->negativeAction(Ljava/lang/CharSequence;)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public negativeAction(Ljava/lang/CharSequence;)Lcom/conceptglobal/imaterialdesign/app/Dialog;
    .locals 1

    .line 698
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mNegativeAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 699
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mNegativeAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/Button;->setVisibility(I)V

    return-object p0
.end method

.method public negativeActionBackground(I)Lcom/conceptglobal/imaterialdesign/app/Dialog;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 728
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->negativeActionBackground(Landroid/graphics/drawable/Drawable;)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public negativeActionBackground(Landroid/graphics/drawable/Drawable;)Lcom/conceptglobal/imaterialdesign/app/Dialog;
    .locals 1

    .line 718
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mNegativeAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-static {v0, p1}, Lcom/conceptglobal/imaterialdesign/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

.method public negativeActionClickListener(Landroid/view/View$OnClickListener;)Lcom/conceptglobal/imaterialdesign/app/Dialog;
    .locals 1

    .line 777
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mNegativeAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public negativeActionRipple(I)Lcom/conceptglobal/imaterialdesign/app/Dialog;
    .locals 2

    .line 737
    new-instance v0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;

    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->build()Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;

    move-result-object p1

    .line 738
    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->negativeActionBackground(Landroid/graphics/drawable/Drawable;)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public negativeActionTextAppearance(I)Lcom/conceptglobal/imaterialdesign/app/Dialog;
    .locals 2

    .line 747
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mNegativeAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/conceptglobal/imaterialdesign/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    return-object p0
.end method

.method public negativeActionTextColor(I)Lcom/conceptglobal/imaterialdesign/app/Dialog;
    .locals 1

    .line 767
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mNegativeAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/Button;->setTextColor(I)V

    return-object p0
.end method

.method public negativeActionTextColor(Landroid/content/res/ColorStateList;)Lcom/conceptglobal/imaterialdesign/app/Dialog;
    .locals 1

    .line 757
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mNegativeAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-object p0
.end method

.method public neutralAction(I)Lcom/conceptglobal/imaterialdesign/app/Dialog;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 798
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->neutralAction(Ljava/lang/CharSequence;)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public neutralAction(Ljava/lang/CharSequence;)Lcom/conceptglobal/imaterialdesign/app/Dialog;
    .locals 1

    .line 787
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mNeutralAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 788
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mNeutralAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/Button;->setVisibility(I)V

    return-object p0
.end method

.method public neutralActionBackground(I)Lcom/conceptglobal/imaterialdesign/app/Dialog;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 817
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->neutralActionBackground(Landroid/graphics/drawable/Drawable;)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public neutralActionBackground(Landroid/graphics/drawable/Drawable;)Lcom/conceptglobal/imaterialdesign/app/Dialog;
    .locals 1

    .line 807
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mNeutralAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-static {v0, p1}, Lcom/conceptglobal/imaterialdesign/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

.method public neutralActionClickListener(Landroid/view/View$OnClickListener;)Lcom/conceptglobal/imaterialdesign/app/Dialog;
    .locals 1

    .line 866
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mNeutralAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public neutralActionRipple(I)Lcom/conceptglobal/imaterialdesign/app/Dialog;
    .locals 2

    .line 826
    new-instance v0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;

    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->build()Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;

    move-result-object p1

    .line 827
    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->neutralActionBackground(Landroid/graphics/drawable/Drawable;)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public neutralActionTextAppearance(I)Lcom/conceptglobal/imaterialdesign/app/Dialog;
    .locals 2

    .line 836
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mNeutralAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/conceptglobal/imaterialdesign/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    return-object p0
.end method

.method public neutralActionTextColor(I)Lcom/conceptglobal/imaterialdesign/app/Dialog;
    .locals 1

    .line 856
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mNeutralAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/Button;->setTextColor(I)V

    return-object p0
.end method

.method public neutralActionTextColor(Landroid/content/res/ColorStateList;)Lcom/conceptglobal/imaterialdesign/app/Dialog;
    .locals 1

    .line 846
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mNeutralAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-object p0
.end method

.method protected onCreate()V
    .locals 0

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 1022
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 1023
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mCardView:Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->setVisibility(I)V

    .line 1024
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mInAnimationId:I

    if-eqz v0, :cond_0

    .line 1025
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mCardView:Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/conceptglobal/imaterialdesign/app/Dialog$2;

    invoke-direct {v1, p0}, Lcom/conceptglobal/imaterialdesign/app/Dialog$2;-><init>(Lcom/conceptglobal/imaterialdesign/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    return-void
.end method

.method public outAnimation(I)Lcom/conceptglobal/imaterialdesign/app/Dialog;
    .locals 0

    .line 896
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mOutAnimationId:I

    return-object p0
.end method

.method public positiveAction(I)Lcom/conceptglobal/imaterialdesign/app/Dialog;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 620
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->positiveAction(Ljava/lang/CharSequence;)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public positiveAction(Ljava/lang/CharSequence;)Lcom/conceptglobal/imaterialdesign/app/Dialog;
    .locals 1

    .line 609
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mPositiveAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 610
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mPositiveAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/Button;->setVisibility(I)V

    return-object p0
.end method

.method public positiveActionBackground(I)Lcom/conceptglobal/imaterialdesign/app/Dialog;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 639
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->positiveActionBackground(Landroid/graphics/drawable/Drawable;)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public positiveActionBackground(Landroid/graphics/drawable/Drawable;)Lcom/conceptglobal/imaterialdesign/app/Dialog;
    .locals 1

    .line 629
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mPositiveAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-static {v0, p1}, Lcom/conceptglobal/imaterialdesign/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

.method public positiveActionClickListener(Landroid/view/View$OnClickListener;)Lcom/conceptglobal/imaterialdesign/app/Dialog;
    .locals 1

    .line 688
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mPositiveAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public positiveActionRipple(I)Lcom/conceptglobal/imaterialdesign/app/Dialog;
    .locals 2

    .line 648
    new-instance v0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;

    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Builder;->build()Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;

    move-result-object p1

    .line 649
    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->positiveActionBackground(Landroid/graphics/drawable/Drawable;)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public positiveActionTextAppearance(I)Lcom/conceptglobal/imaterialdesign/app/Dialog;
    .locals 2

    .line 658
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mPositiveAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/conceptglobal/imaterialdesign/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    return-object p0
.end method

.method public positiveActionTextColor(I)Lcom/conceptglobal/imaterialdesign/app/Dialog;
    .locals 1

    .line 678
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mPositiveAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/Button;->setTextColor(I)V

    return-object p0
.end method

.method public positiveActionTextColor(Landroid/content/res/ColorStateList;)Lcom/conceptglobal/imaterialdesign/app/Dialog;
    .locals 1

    .line 668
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mPositiveAction:Lcom/conceptglobal/imaterialdesign/widget/Button;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-object p0
.end method

.method public setCancelable(Z)V
    .locals 0

    .line 992
    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->cancelable(Z)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .locals 0

    .line 997
    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->canceledOnTouchOutside(Z)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1007
    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->contentView(I)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 1002
    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->contentView(Landroid/view/View;)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 1012
    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->contentView(Landroid/view/View;)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    return-void
.end method

.method public setTitle(I)V
    .locals 0

    .line 508
    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->title(I)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 503
    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->title(Ljava/lang/CharSequence;)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    return-void
.end method

.method public showDivider(Z)Lcom/conceptglobal/imaterialdesign/app/Dialog;
    .locals 1

    .line 906
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mCardView:Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/app/Dialog$DialogCardView;->setShowDivider(Z)V

    return-object p0
.end method

.method public title(I)Lcom/conceptglobal/imaterialdesign/app/Dialog;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 498
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->title(Ljava/lang/CharSequence;)Lcom/conceptglobal/imaterialdesign/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public title(Ljava/lang/CharSequence;)Lcom/conceptglobal/imaterialdesign/app/Dialog;
    .locals 1

    .line 487
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mTitle:Lcom/conceptglobal/imaterialdesign/widget/TextView;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 488
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mTitle:Lcom/conceptglobal/imaterialdesign/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setVisibility(I)V

    return-object p0
.end method

.method public titleColor(I)Lcom/conceptglobal/imaterialdesign/app/Dialog;
    .locals 1

    .line 517
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mTitle:Lcom/conceptglobal/imaterialdesign/widget/TextView;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setTextColor(I)V

    return-object p0
.end method

.method public titleTextAppearance(I)Lcom/conceptglobal/imaterialdesign/app/Dialog;
    .locals 2

    .line 527
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/Dialog;->mTitle:Lcom/conceptglobal/imaterialdesign/widget/TextView;

    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    return-object p0
.end method

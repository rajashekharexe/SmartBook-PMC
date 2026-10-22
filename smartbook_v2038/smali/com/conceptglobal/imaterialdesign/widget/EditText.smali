.class public Lcom/conceptglobal/imaterialdesign/widget/EditText;
.super Lcom/conceptglobal/imaterialdesign/widget/FrameLayout;
.source "EditText.java"

# interfaces
.implements Lcom/conceptglobal/imaterialdesign/app/ThemeManager$OnThemeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;,
        Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalEditText;,
        Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalAutoCompleteTextView;,
        Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalMultiAutoCompleteTextView;,
        Lcom/conceptglobal/imaterialdesign/widget/EditText$InputTextWatcher;
    }
.end annotation


# static fields
.field public static final AUTOCOMPLETE_MODE_MULTI:I = 0x2

.field public static final AUTOCOMPLETE_MODE_NONE:I = 0x0

.field public static final AUTOCOMPLETE_MODE_SINGLE:I = 0x1

.field public static final SUPPORT_MODE_CHAR_COUNTER:I = 0x3

.field public static final SUPPORT_MODE_HELPER:I = 0x1

.field public static final SUPPORT_MODE_HELPER_WITH_ERROR:I = 0x2

.field public static final SUPPORT_MODE_NONE:I


# instance fields
.field protected mAutoCompleteMode:I

.field private mDivider:Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;

.field private mDividerColors:Landroid/content/res/ColorStateList;

.field private mDividerCompoundPadding:Z

.field private mDividerErrorColors:Landroid/content/res/ColorStateList;

.field private mDividerPadding:I

.field protected mInputView:Landroid/widget/EditText;

.field private mIsRtl:Z

.field private mLabelEnable:Z

.field private mLabelInAnimId:I

.field private mLabelOutAnimId:I

.field protected mLabelView:Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

.field private mLabelVisible:Z

.field private mOnSelectionChangedListener:Lcom/conceptglobal/imaterialdesign/widget/TextView$OnSelectionChangedListener;

.field private mSupportColors:Landroid/content/res/ColorStateList;

.field private mSupportError:Ljava/lang/CharSequence;

.field private mSupportErrorColors:Landroid/content/res/ColorStateList;

.field private mSupportHelper:Ljava/lang/CharSequence;

.field private mSupportMaxChars:I

.field protected mSupportMode:I

.field protected mSupportView:Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Lcom/conceptglobal/imaterialdesign/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 120
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/imaterialdesign/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 124
    invoke-direct {p0, p1, p2, p3}, Lcom/conceptglobal/imaterialdesign/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 128
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/conceptglobal/imaterialdesign/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method static synthetic access$100(Lcom/conceptglobal/imaterialdesign/widget/EditText;ZZ)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->setLabelVisible(ZZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/conceptglobal/imaterialdesign/widget/EditText;I)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->updateCharCounter(I)V

    return-void
.end method

.method private getLabelView()Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mLabelView:Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    if-nez v0, :cond_1

    .line 151
    new-instance v0, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;-><init>(Lcom/conceptglobal/imaterialdesign/widget/EditText;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mLabelView:Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    .line 153
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mLabelView:Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    iget-boolean v1, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mIsRtl:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    :goto_0
    invoke-virtual {v0, v1}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->setTextDirection(I)V

    .line 154
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mLabelView:Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->setGravity(I)V

    .line 155
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mLabelView:Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->setSingleLine(Z)V

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mLabelView:Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    return-object v0
.end method

.method private getSupportView()Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mSupportView:Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    if-nez v0, :cond_0

    .line 163
    new-instance v0, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;-><init>(Lcom/conceptglobal/imaterialdesign/widget/EditText;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mSupportView:Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mSupportView:Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    return-object v0
.end method

.method private hasPasswordTransformationMethod()Z
    .locals 1

    .line 3633
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    instance-of v0, v0, Landroid/text/method/PasswordTransformationMethod;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private needCreateInputView(I)Z
    .locals 3

    .line 169
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_3

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 p1, 0x0

    return p1

    .line 178
    :cond_1
    instance-of p1, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalMultiAutoCompleteTextView;

    xor-int/2addr p1, v1

    return p1

    .line 176
    :cond_2
    instance-of p1, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalAutoCompleteTextView;

    xor-int/2addr p1, v1

    return p1

    .line 174
    :cond_3
    instance-of p1, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalEditText;

    xor-int/2addr p1, v1

    return p1
.end method

.method private setLabelVisible(ZZ)V
    .locals 2

    .line 651
    iget-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mLabelEnable:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mLabelVisible:Z

    if-ne v0, p1, :cond_0

    goto :goto_1

    .line 654
    :cond_0
    iput-boolean p1, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mLabelVisible:Z

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-eqz p2, :cond_4

    if-eqz p1, :cond_2

    .line 658
    iget p1, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mLabelInAnimId:I

    if-eqz p1, :cond_1

    .line 659
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object p1

    iget p2, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mLabelInAnimId:I

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 660
    new-instance p2, Lcom/conceptglobal/imaterialdesign/widget/EditText$1;

    invoke-direct {p2, p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText$1;-><init>(Lcom/conceptglobal/imaterialdesign/widget/EditText;)V

    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 673
    iget-object p2, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mLabelView:Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    invoke-virtual {p2}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->clearAnimation()V

    .line 674
    iget-object p2, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mLabelView:Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    invoke-virtual {p2, p1}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 677
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mLabelView:Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->setVisibility(I)V

    goto :goto_1

    .line 680
    :cond_2
    iget p1, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mLabelOutAnimId:I

    if-eqz p1, :cond_3

    .line 681
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object p1

    iget p2, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mLabelOutAnimId:I

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 682
    new-instance p2, Lcom/conceptglobal/imaterialdesign/widget/EditText$2;

    invoke-direct {p2, p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText$2;-><init>(Lcom/conceptglobal/imaterialdesign/widget/EditText;)V

    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 698
    iget-object p2, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mLabelView:Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    invoke-virtual {p2}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->clearAnimation()V

    .line 699
    iget-object p2, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mLabelView:Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    invoke-virtual {p2, p1}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 702
    :cond_3
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mLabelView:Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    invoke-virtual {p1, v1}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->setVisibility(I)V

    goto :goto_1

    .line 706
    :cond_4
    iget-object p2, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mLabelView:Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x4

    :goto_0
    invoke-virtual {p2, v0}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->setVisibility(I)V

    :cond_6
    :goto_1
    return-void
.end method

.method private updateCharCounter(I)V
    .locals 2

    if-nez p1, :cond_0

    .line 635
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getSupportView()Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mSupportColors:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 636
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mDivider:Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;

    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mDividerColors:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 637
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getSupportView()Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 640
    :cond_0
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mSupportMaxChars:I

    if-lez v0, :cond_3

    .line 641
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getSupportView()Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    move-result-object v0

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mSupportMaxChars:I

    if-le p1, v1, :cond_1

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mSupportErrorColors:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mSupportColors:Landroid/content/res/ColorStateList;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 642
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mDivider:Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mSupportMaxChars:I

    if-le p1, v1, :cond_2

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mDividerErrorColors:Landroid/content/res/ColorStateList;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mDividerColors:Landroid/content/res/ColorStateList;

    :goto_1
    invoke-virtual {v0, v1}, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 643
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getSupportView()Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mSupportMaxChars:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 646
    :cond_3
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getSupportView()Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public addTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 1

    .line 1398
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public final append(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1407
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public append(Ljava/lang/CharSequence;II)V
    .locals 1

    .line 1416
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;II)V

    return-void
.end method

.method protected applyStyle(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    .line 186
    invoke-super/range {p0 .. p4}, Lcom/conceptglobal/imaterialdesign/widget/FrameLayout;->applyStyle(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 188
    iget-object v5, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    const/4 v6, 0x0

    if-nez v5, :cond_0

    move-object v5, v6

    goto :goto_0

    :cond_0
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    .line 189
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->removeAllViews()V

    .line 191
    sget-object v7, Lcom/conceptglobal/imaterialdesign/R$styleable;->EditText:[I

    invoke-virtual {v1, v2, v7, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 208
    sget v8, Lcom/conceptglobal/imaterialdesign/R$styleable;->EditText_et_autoCompleteMode:I

    iget v9, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mAutoCompleteMode:I

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v8

    iput v8, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mAutoCompleteMode:I

    .line 209
    invoke-direct {v0, v8}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->needCreateInputView(I)Z

    move-result v8

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v8, :cond_4

    .line 210
    iget v8, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mAutoCompleteMode:I

    if-eq v8, v10, :cond_2

    if-eq v8, v9, :cond_1

    .line 218
    new-instance v8, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalEditText;

    invoke-direct {v8, v0, v1, v2, v3}, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalEditText;-><init>(Lcom/conceptglobal/imaterialdesign/widget/EditText;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v8, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    goto :goto_1

    .line 215
    :cond_1
    new-instance v8, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalMultiAutoCompleteTextView;

    invoke-direct {v8, v0, v1, v2, v3}, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalMultiAutoCompleteTextView;-><init>(Lcom/conceptglobal/imaterialdesign/widget/EditText;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v8, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    goto :goto_1

    .line 212
    :cond_2
    new-instance v8, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalAutoCompleteTextView;

    invoke-direct {v8, v0, v1, v2, v3}, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalAutoCompleteTextView;-><init>(Lcom/conceptglobal/imaterialdesign/widget/EditText;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v8, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    .line 221
    :goto_1
    iget-object v8, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-static {v8, v2, v3, v4}, Lcom/conceptglobal/imaterialdesign/util/ViewUtil;->applyFont(Landroid/widget/TextView;Landroid/util/AttributeSet;II)V

    if-eqz v5, :cond_3

    .line 223
    iget-object v2, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 225
    :cond_3
    iget-object v2, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    new-instance v3, Lcom/conceptglobal/imaterialdesign/widget/EditText$InputTextWatcher;

    invoke-direct {v3, v0, v6}, Lcom/conceptglobal/imaterialdesign/widget/EditText$InputTextWatcher;-><init>(Lcom/conceptglobal/imaterialdesign/widget/EditText;Lcom/conceptglobal/imaterialdesign/widget/EditText$1;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 227
    iget-object v2, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mDivider:Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;

    if-eqz v2, :cond_5

    .line 228
    invoke-virtual {v2, v11}, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->setAnimEnable(Z)V

    .line 229
    iget-object v2, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    iget-object v3, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mDivider:Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;

    invoke-static {v2, v3}, Lcom/conceptglobal/imaterialdesign/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 230
    iget-object v2, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mDivider:Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;

    invoke-virtual {v2, v10}, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->setAnimEnable(Z)V

    goto :goto_2

    .line 234
    :cond_4
    iget-object v5, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-static {v5, v2, v3, v4}, Lcom/conceptglobal/imaterialdesign/util/ViewUtil;->applyStyle(Landroid/view/View;Landroid/util/AttributeSet;II)V

    .line 235
    :cond_5
    :goto_2
    iget-object v2, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v2, v11}, Landroid/widget/EditText;->setVisibility(I)V

    .line 236
    iget-object v2, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v2, v10}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 238
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    move-object v4, v6

    move-object v5, v4

    move-object v8, v5

    move-object v12, v8

    move-object v13, v12

    move-object v14, v13

    const/4 v3, -0x1

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v21, -0x1

    :goto_3
    if-ge v15, v2, :cond_2a

    .line 239
    invoke-virtual {v7, v15}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v9

    .line 241
    sget v10, Lcom/conceptglobal/imaterialdesign/R$styleable;->EditText_et_labelEnable:I

    if-ne v9, v10, :cond_6

    .line 242
    invoke-virtual {v7, v9, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mLabelEnable:Z

    goto :goto_4

    .line 243
    :cond_6
    sget v10, Lcom/conceptglobal/imaterialdesign/R$styleable;->EditText_et_labelPadding:I

    if-ne v9, v10, :cond_7

    .line 244
    invoke-virtual {v7, v9, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    move/from16 p4, v2

    move/from16 v18, v9

    goto/16 :goto_5

    .line 245
    :cond_7
    sget v10, Lcom/conceptglobal/imaterialdesign/R$styleable;->EditText_et_labelTextSize:I

    if-ne v9, v10, :cond_8

    .line 246
    invoke-virtual {v7, v9, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    move/from16 p4, v2

    move/from16 v19, v9

    goto/16 :goto_5

    .line 247
    :cond_8
    sget v10, Lcom/conceptglobal/imaterialdesign/R$styleable;->EditText_et_labelTextColor:I

    if-ne v9, v10, :cond_9

    .line 248
    invoke-virtual {v7, v9}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    :goto_4
    move/from16 p4, v2

    goto/16 :goto_5

    .line 249
    :cond_9
    sget v10, Lcom/conceptglobal/imaterialdesign/R$styleable;->EditText_et_labelTextAppearance:I

    if-ne v9, v10, :cond_a

    .line 250
    invoke-direct/range {p0 .. p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getLabelView()Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    move-result-object v10

    invoke-virtual {v7, v9, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    invoke-virtual {v10, v1, v9}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_4

    .line 251
    :cond_a
    sget v10, Lcom/conceptglobal/imaterialdesign/R$styleable;->EditText_et_labelEllipsize:I

    move/from16 p4, v2

    const/4 v2, 0x4

    if-ne v9, v10, :cond_f

    .line 252
    invoke-virtual {v7, v9, v11}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_e

    const/4 v10, 0x2

    if-eq v9, v10, :cond_d

    const/4 v10, 0x3

    if-eq v9, v10, :cond_c

    if-eq v9, v2, :cond_b

    .line 267
    invoke-direct/range {p0 .. p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getLabelView()Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    move-result-object v2

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v9}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_5

    .line 264
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getLabelView()Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    move-result-object v2

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v9}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_5

    .line 261
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getLabelView()Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    move-result-object v2

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v9}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_5

    .line 258
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getLabelView()Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    move-result-object v2

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v9}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_5

    .line 255
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getLabelView()Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    move-result-object v2

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v9}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_5

    .line 271
    :cond_f
    sget v10, Lcom/conceptglobal/imaterialdesign/R$styleable;->EditText_et_labelInAnim:I

    if-ne v9, v10, :cond_10

    .line 272
    invoke-virtual {v7, v9, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mLabelInAnimId:I

    goto/16 :goto_5

    .line 273
    :cond_10
    sget v10, Lcom/conceptglobal/imaterialdesign/R$styleable;->EditText_et_labelOutAnim:I

    if-ne v9, v10, :cond_11

    .line 274
    invoke-virtual {v7, v9, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mLabelOutAnimId:I

    goto/16 :goto_5

    .line 275
    :cond_11
    sget v10, Lcom/conceptglobal/imaterialdesign/R$styleable;->EditText_et_supportMode:I

    if-ne v9, v10, :cond_12

    .line 276
    invoke-virtual {v7, v9, v11}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mSupportMode:I

    goto/16 :goto_5

    .line 277
    :cond_12
    sget v10, Lcom/conceptglobal/imaterialdesign/R$styleable;->EditText_et_supportPadding:I

    if-ne v9, v10, :cond_13

    .line 278
    invoke-virtual {v7, v9, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    move/from16 v21, v2

    goto/16 :goto_5

    .line 279
    :cond_13
    sget v10, Lcom/conceptglobal/imaterialdesign/R$styleable;->EditText_et_supportTextSize:I

    if-ne v9, v10, :cond_14

    .line 280
    invoke-virtual {v7, v9, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    move/from16 v20, v2

    goto/16 :goto_5

    .line 281
    :cond_14
    sget v10, Lcom/conceptglobal/imaterialdesign/R$styleable;->EditText_et_supportTextColor:I

    if-ne v9, v10, :cond_15

    .line 282
    invoke-virtual {v7, v9}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    move-object v8, v2

    goto/16 :goto_5

    .line 283
    :cond_15
    sget v10, Lcom/conceptglobal/imaterialdesign/R$styleable;->EditText_et_supportTextErrorColor:I

    if-ne v9, v10, :cond_16

    .line 284
    invoke-virtual {v7, v9}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    move-object v12, v2

    goto/16 :goto_5

    .line 285
    :cond_16
    sget v10, Lcom/conceptglobal/imaterialdesign/R$styleable;->EditText_et_supportTextAppearance:I

    if-ne v9, v10, :cond_17

    .line 286
    invoke-direct/range {p0 .. p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getSupportView()Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    move-result-object v2

    invoke-virtual {v7, v9, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    invoke-virtual {v2, v1, v9}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->setTextAppearance(Landroid/content/Context;I)V

    goto/16 :goto_5

    .line 287
    :cond_17
    sget v10, Lcom/conceptglobal/imaterialdesign/R$styleable;->EditText_et_supportEllipsize:I

    if-ne v9, v10, :cond_1c

    .line 288
    invoke-virtual {v7, v9, v11}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_1b

    const/4 v10, 0x2

    if-eq v9, v10, :cond_1a

    const/4 v10, 0x3

    if-eq v9, v10, :cond_19

    if-eq v9, v2, :cond_18

    .line 303
    invoke-direct/range {p0 .. p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getSupportView()Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    move-result-object v2

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v9}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_5

    .line 300
    :cond_18
    invoke-direct/range {p0 .. p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getSupportView()Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    move-result-object v2

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v9}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_5

    .line 297
    :cond_19
    invoke-direct/range {p0 .. p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getSupportView()Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    move-result-object v2

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v9}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_5

    .line 294
    :cond_1a
    invoke-direct/range {p0 .. p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getSupportView()Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    move-result-object v2

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v9}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_5

    .line 291
    :cond_1b
    invoke-direct/range {p0 .. p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getSupportView()Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    move-result-object v2

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v9}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_5

    .line 307
    :cond_1c
    sget v2, Lcom/conceptglobal/imaterialdesign/R$styleable;->EditText_et_supportMaxLines:I

    if-ne v9, v2, :cond_1d

    .line 308
    invoke-direct/range {p0 .. p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getSupportView()Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    move-result-object v2

    invoke-virtual {v7, v9, v11}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v9

    invoke-virtual {v2, v9}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->setMaxLines(I)V

    goto/16 :goto_5

    .line 309
    :cond_1d
    sget v2, Lcom/conceptglobal/imaterialdesign/R$styleable;->EditText_et_supportLines:I

    if-ne v9, v2, :cond_1e

    .line 310
    invoke-direct/range {p0 .. p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getSupportView()Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    move-result-object v2

    invoke-virtual {v7, v9, v11}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v9

    invoke-virtual {v2, v9}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->setLines(I)V

    goto/16 :goto_5

    .line 311
    :cond_1e
    sget v2, Lcom/conceptglobal/imaterialdesign/R$styleable;->EditText_et_supportSingleLine:I

    if-ne v9, v2, :cond_1f

    .line 312
    invoke-direct/range {p0 .. p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getSupportView()Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    move-result-object v2

    invoke-virtual {v7, v9, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    invoke-virtual {v2, v9}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->setSingleLine(Z)V

    goto/16 :goto_5

    .line 313
    :cond_1f
    sget v2, Lcom/conceptglobal/imaterialdesign/R$styleable;->EditText_et_supportMaxChars:I

    if-ne v9, v2, :cond_20

    .line 314
    invoke-virtual {v7, v9, v11}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mSupportMaxChars:I

    goto/16 :goto_5

    .line 315
    :cond_20
    sget v2, Lcom/conceptglobal/imaterialdesign/R$styleable;->EditText_et_helper:I

    if-ne v9, v2, :cond_21

    .line 316
    invoke-virtual {v7, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v13, v2

    goto :goto_5

    .line 317
    :cond_21
    sget v2, Lcom/conceptglobal/imaterialdesign/R$styleable;->EditText_et_error:I

    if-ne v9, v2, :cond_22

    .line 318
    invoke-virtual {v7, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v14, v2

    goto :goto_5

    .line 319
    :cond_22
    sget v2, Lcom/conceptglobal/imaterialdesign/R$styleable;->EditText_et_inputId:I

    if-ne v9, v2, :cond_23

    .line 320
    iget-object v2, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v7, v9, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/widget/EditText;->setId(I)V

    goto :goto_5

    .line 321
    :cond_23
    sget v2, Lcom/conceptglobal/imaterialdesign/R$styleable;->EditText_et_dividerColor:I

    if-ne v9, v2, :cond_24

    .line 322
    invoke-virtual {v7, v9}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    move-object v6, v2

    goto :goto_5

    .line 323
    :cond_24
    sget v2, Lcom/conceptglobal/imaterialdesign/R$styleable;->EditText_et_dividerErrorColor:I

    if-ne v9, v2, :cond_25

    .line 324
    invoke-virtual {v7, v9}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    move-object v4, v2

    goto :goto_5

    .line 325
    :cond_25
    sget v2, Lcom/conceptglobal/imaterialdesign/R$styleable;->EditText_et_dividerHeight:I

    if-ne v9, v2, :cond_26

    .line 326
    invoke-virtual {v7, v9, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v16

    goto :goto_5

    .line 327
    :cond_26
    sget v2, Lcom/conceptglobal/imaterialdesign/R$styleable;->EditText_et_dividerPadding:I

    if-ne v9, v2, :cond_27

    .line 328
    invoke-virtual {v7, v9, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    move v3, v2

    goto :goto_5

    .line 329
    :cond_27
    sget v2, Lcom/conceptglobal/imaterialdesign/R$styleable;->EditText_et_dividerAnimDuration:I

    if-ne v9, v2, :cond_28

    .line 330
    invoke-virtual {v7, v9, v11}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    move/from16 v17, v2

    goto :goto_5

    .line 331
    :cond_28
    sget v2, Lcom/conceptglobal/imaterialdesign/R$styleable;->EditText_et_dividerCompoundPadding:I

    if-ne v9, v2, :cond_29

    const/4 v2, 0x1

    .line 332
    invoke-virtual {v7, v9, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mDividerCompoundPadding:Z

    :cond_29
    :goto_5
    add-int/lit8 v15, v15, 0x1

    move/from16 v2, p4

    const/4 v10, 0x1

    goto/16 :goto_3

    .line 335
    :cond_2a
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 337
    iget-object v2, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getId()I

    move-result v2

    if-nez v2, :cond_2b

    .line 338
    iget-object v2, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/imaterialdesign/util/ViewUtil;->generateViewId()I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setId(I)V

    .line 340
    :cond_2b
    iget-object v2, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mDivider:Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;

    const/high16 v7, -0x10000

    if-nez v2, :cond_33

    .line 341
    iput-object v6, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mDividerColors:Landroid/content/res/ColorStateList;

    .line 342
    iput-object v4, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mDividerErrorColors:Landroid/content/res/ColorStateList;

    if-nez v6, :cond_2c

    const/4 v2, 0x2

    .line 345
    new-array v4, v2, [[I

    const v2, -0x101009c

    filled-new-array {v2}, [I

    move-result-object v2

    aput-object v2, v4, v11

    const v2, 0x101009c

    const v6, 0x101009e

    filled-new-array {v2, v6}, [I

    move-result-object v2

    const/4 v6, 0x1

    aput-object v2, v4, v6

    const/high16 v2, -0x1000000

    .line 350
    invoke-static {v1, v2}, Lcom/conceptglobal/imaterialdesign/util/ThemeUtil;->colorControlNormal(Landroid/content/Context;I)I

    move-result v6

    .line 351
    invoke-static {v1, v2}, Lcom/conceptglobal/imaterialdesign/util/ThemeUtil;->colorControlActivated(Landroid/content/Context;I)I

    move-result v2

    filled-new-array {v6, v2}, [I

    move-result-object v2

    .line 354
    new-instance v6, Landroid/content/res/ColorStateList;

    invoke-direct {v6, v4, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v6, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mDividerColors:Landroid/content/res/ColorStateList;

    .line 357
    :cond_2c
    iget-object v2, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mDividerErrorColors:Landroid/content/res/ColorStateList;

    if-nez v2, :cond_2d

    .line 358
    invoke-static {v1, v7}, Lcom/conceptglobal/imaterialdesign/util/ThemeUtil;->colorAccent(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mDividerErrorColors:Landroid/content/res/ColorStateList;

    :cond_2d
    if-gez v16, :cond_2e

    const/16 v23, 0x0

    goto :goto_6

    :cond_2e
    move/from16 v23, v16

    :goto_6
    move/from16 v9, v17

    if-gez v3, :cond_2f

    const/4 v3, 0x0

    :cond_2f
    if-gez v9, :cond_30

    .line 367
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v4, 0x10e0000

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v17

    move/from16 v27, v17

    goto :goto_7

    :cond_30
    move/from16 v27, v9

    .line 369
    :goto_7
    iput v3, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mDividerPadding:I

    .line 370
    iget-object v2, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    add-int v3, v3, v23

    invoke-virtual {v2, v11, v11, v11, v3}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 372
    new-instance v2, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;

    iget-boolean v3, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mDividerCompoundPadding:Z

    if-eqz v3, :cond_31

    iget-object v3, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getTotalPaddingLeft()I

    move-result v3

    move/from16 v24, v3

    goto :goto_8

    :cond_31
    const/16 v24, 0x0

    :goto_8
    iget-boolean v3, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mDividerCompoundPadding:Z

    if-eqz v3, :cond_32

    iget-object v3, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getTotalPaddingRight()I

    move-result v3

    move/from16 v25, v3

    goto :goto_9

    :cond_32
    const/16 v25, 0x0

    :goto_9
    iget-object v3, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mDividerColors:Landroid/content/res/ColorStateList;

    move-object/from16 v22, v2

    move-object/from16 v26, v3

    invoke-direct/range {v22 .. v27}, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;-><init>(IIILandroid/content/res/ColorStateList;I)V

    iput-object v2, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mDivider:Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;

    .line 373
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->isInEditMode()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->setInEditMode(Z)V

    .line 374
    iget-object v2, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mDivider:Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;

    invoke-virtual {v2, v11}, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->setAnimEnable(Z)V

    .line 375
    iget-object v2, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    iget-object v3, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mDivider:Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;

    invoke-static {v2, v3}, Lcom/conceptglobal/imaterialdesign/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 376
    iget-object v2, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mDivider:Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->setAnimEnable(Z)V

    goto :goto_d

    :cond_33
    move/from16 v9, v17

    if-gez v16, :cond_34

    if-ltz v3, :cond_39

    :cond_34
    if-gez v16, :cond_35

    .line 381
    invoke-virtual {v2}, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->getDividerHeight()I

    move-result v16

    :cond_35
    move/from16 v2, v16

    if-ltz v3, :cond_36

    .line 384
    iput v3, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mDividerPadding:I

    .line 386
    :cond_36
    iget-object v3, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    iget v10, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mDividerPadding:I

    add-int/2addr v10, v2

    invoke-virtual {v3, v11, v11, v11, v10}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 387
    iget-object v3, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mDivider:Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;

    invoke-virtual {v3, v2}, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->setDividerHeight(I)V

    .line 388
    iget-object v2, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mDivider:Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;

    iget-boolean v3, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mDividerCompoundPadding:Z

    if-eqz v3, :cond_37

    iget-object v3, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getTotalPaddingLeft()I

    move-result v3

    goto :goto_a

    :cond_37
    const/4 v3, 0x0

    :goto_a
    iget-boolean v10, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mDividerCompoundPadding:Z

    if-eqz v10, :cond_38

    iget-object v10, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getTotalPaddingRight()I

    move-result v10

    goto :goto_b

    :cond_38
    const/4 v10, 0x0

    :goto_b
    invoke-virtual {v2, v3, v10}, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->setPadding(II)V

    :cond_39
    if-eqz v6, :cond_3a

    .line 392
    iput-object v6, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mDividerColors:Landroid/content/res/ColorStateList;

    :cond_3a
    if-eqz v4, :cond_3b

    .line 395
    iput-object v4, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mDividerErrorColors:Landroid/content/res/ColorStateList;

    .line 397
    :cond_3b
    iget-object v2, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mDivider:Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getError()Ljava/lang/CharSequence;

    move-result-object v3

    if-nez v3, :cond_3c

    iget-object v3, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mDividerColors:Landroid/content/res/ColorStateList;

    goto :goto_c

    :cond_3c
    iget-object v3, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mDividerErrorColors:Landroid/content/res/ColorStateList;

    :goto_c
    invoke-virtual {v2, v3}, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    if-ltz v9, :cond_3d

    .line 400
    iget-object v2, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mDivider:Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;

    invoke-virtual {v2, v9}, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->setAnimationDuration(I)V

    :cond_3d
    :goto_d
    move/from16 v3, v18

    if-ltz v3, :cond_3e

    .line 404
    invoke-direct/range {p0 .. p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getLabelView()Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    move-result-object v2

    iget-object v4, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mDivider:Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;

    invoke-virtual {v4}, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->getPaddingLeft()I

    move-result v4

    iget-object v6, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mDivider:Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;

    invoke-virtual {v6}, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->getPaddingRight()I

    move-result v6

    invoke-virtual {v2, v4, v11, v6, v3}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->setPadding(IIII)V

    :cond_3e
    move/from16 v3, v19

    if-ltz v3, :cond_3f

    .line 407
    invoke-direct/range {p0 .. p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getLabelView()Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    move-result-object v2

    int-to-float v3, v3

    invoke-virtual {v2, v11, v3}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->setTextSize(IF)V

    :cond_3f
    if-eqz v5, :cond_40

    .line 410
    invoke-direct/range {p0 .. p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getLabelView()Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 412
    :cond_40
    iget-boolean v2, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mLabelEnable:Z

    const/4 v3, -0x2

    if-eqz v2, :cond_41

    const/4 v2, 0x1

    .line 413
    iput-boolean v2, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mLabelVisible:Z

    .line 414
    invoke-direct/range {p0 .. p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getLabelView()Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    move-result-object v2

    iget-object v4, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->setText(Ljava/lang/CharSequence;)V

    .line 415
    invoke-direct/range {p0 .. p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getLabelView()Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    move-result-object v2

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v11, v4}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 416
    iget-object v2, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v4, 0x1

    xor-int/2addr v2, v4

    invoke-direct {v0, v2, v11}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->setLabelVisible(ZZ)V

    :cond_41
    move/from16 v2, v20

    if-ltz v2, :cond_42

    .line 420
    invoke-direct/range {p0 .. p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getSupportView()Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    move-result-object v4

    int-to-float v2, v2

    invoke-virtual {v4, v11, v2}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->setTextSize(IF)V

    :cond_42
    if-eqz v8, :cond_43

    .line 423
    iput-object v8, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mSupportColors:Landroid/content/res/ColorStateList;

    goto :goto_e

    .line 424
    :cond_43
    iget-object v2, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mSupportColors:Landroid/content/res/ColorStateList;

    if-nez v2, :cond_44

    .line 425
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Landroidx/appcompat/R$color;->abc_secondary_text_material_light:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mSupportColors:Landroid/content/res/ColorStateList;

    :cond_44
    :goto_e
    if-eqz v12, :cond_45

    .line 428
    iput-object v12, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mSupportErrorColors:Landroid/content/res/ColorStateList;

    goto :goto_f

    .line 429
    :cond_45
    iget-object v2, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mSupportErrorColors:Landroid/content/res/ColorStateList;

    if-nez v2, :cond_46

    .line 430
    invoke-static {v1, v7}, Lcom/conceptglobal/imaterialdesign/util/ThemeUtil;->colorAccent(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mSupportErrorColors:Landroid/content/res/ColorStateList;

    :cond_46
    :goto_f
    move/from16 v1, v21

    if-ltz v1, :cond_47

    .line 433
    invoke-direct/range {p0 .. p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getSupportView()Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    move-result-object v2

    iget-object v4, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mDivider:Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;

    invoke-virtual {v4}, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->getPaddingLeft()I

    move-result v4

    iget-object v5, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mDivider:Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;

    invoke-virtual {v5}, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->getPaddingRight()I

    move-result v5

    invoke-virtual {v2, v4, v1, v5, v11}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->setPadding(IIII)V

    :cond_47
    if-nez v13, :cond_49

    if-nez v14, :cond_49

    .line 436
    invoke-direct/range {p0 .. p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getSupportView()Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getError()Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_48

    iget-object v2, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mSupportColors:Landroid/content/res/ColorStateList;

    goto :goto_10

    :cond_48
    iget-object v2, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mSupportErrorColors:Landroid/content/res/ColorStateList;

    :goto_10
    invoke-virtual {v1, v2}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_11

    :cond_49
    if-eqz v13, :cond_4a

    .line 438
    invoke-virtual {v0, v13}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->setHelper(Ljava/lang/CharSequence;)V

    goto :goto_11

    .line 440
    :cond_4a
    invoke-virtual {v0, v14}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 442
    :goto_11
    iget v1, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mSupportMode:I

    if-eqz v1, :cond_4d

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4c

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4c

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4b

    goto :goto_12

    .line 445
    :cond_4b
    invoke-direct/range {p0 .. p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getSupportView()Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    move-result-object v1

    const v2, 0x800005

    invoke-virtual {v1, v2}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->setGravity(I)V

    .line 446
    iget-object v1, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->updateCharCounter(I)V

    goto :goto_12

    .line 450
    :cond_4c
    invoke-direct/range {p0 .. p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getSupportView()Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    move-result-object v1

    const v2, 0x800003

    invoke-virtual {v1, v2}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->setGravity(I)V

    .line 453
    :goto_12
    invoke-direct/range {p0 .. p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getSupportView()Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    move-result-object v1

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v2, v4, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_13

    :cond_4d
    const/4 v4, -0x1

    .line 456
    :goto_13
    iget-object v1, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v4, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 458
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->requestLayout()V

    return-void
.end method

.method public beginBatchEdit()V
    .locals 1

    .line 1420
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->beginBatchEdit()V

    return-void
.end method

.method public bringPointIntoView(I)Z
    .locals 1

    .line 1428
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->bringPointIntoView(I)Z

    move-result p1

    return p1
.end method

.method public canCopy()Z
    .locals 1

    .line 3641
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->hasPasswordTransformationMethod()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canCut()Z
    .locals 1

    .line 3637
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->hasPasswordTransformationMethod()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canPaste()Z
    .locals 2

    .line 3645
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3646
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getSelectionStart()I

    move-result v0

    if-ltz v0, :cond_0

    .line 3647
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getSelectionEnd()I

    move-result v0

    if-ltz v0, :cond_0

    .line 3648
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public cancelLongPress()V
    .locals 1

    .line 1432
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->cancelLongPress()V

    return-void
.end method

.method public clearComposingText()V
    .locals 1

    .line 1441
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearComposingText()V

    return-void
.end method

.method public clearError()V
    .locals 1

    const/4 v0, 0x0

    .line 630
    invoke-virtual {p0, v0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public clearListSelection()V
    .locals 1

    .line 1188
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mAutoCompleteMode:I

    if-nez v0, :cond_0

    return-void

    .line 1190
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->clearListSelection()V

    return-void
.end method

.method public computeScroll()V
    .locals 1

    .line 1446
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->computeScroll()V

    return-void
.end method

.method protected convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 2

    .line 720
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mAutoCompleteMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 724
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    check-cast v0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalMultiAutoCompleteTextView;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalMultiAutoCompleteTextView;->superConvertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 722
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    check-cast v0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalAutoCompleteTextView;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalAutoCompleteTextView;->superConvertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method protected convertToLocalHorizontalCoordinate(F)F
    .locals 2

    .line 2109
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getTotalPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    const/4 v0, 0x0

    .line 2111
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 2112
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getTotalPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 2113
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    return p1
.end method

.method public debug(I)V
    .locals 1

    .line 1451
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->debug(I)V

    return-void
.end method

.method public didTouchFocusSelect()Z
    .locals 1

    .line 1461
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->didTouchFocusSelect()Z

    move-result v0

    return v0
.end method

.method public dismissDropDown()V
    .locals 1

    .line 1258
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mAutoCompleteMode:I

    if-nez v0, :cond_0

    return-void

    .line 1260
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    return-void
.end method

.method public endBatchEdit()V
    .locals 1

    .line 1465
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->endBatchEdit()V

    return-void
.end method

.method public enoughToFilter()Z
    .locals 1

    .line 1165
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mAutoCompleteMode:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1167
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->enoughToFilter()Z

    move-result v0

    return v0
.end method

.method public extendSelection(I)V
    .locals 1

    .line 1338
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->extendSelection(I)V

    return-void
.end method

.method public extractText(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z
    .locals 1

    .line 1474
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->extractText(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z

    move-result p1

    return p1
.end method

.method public findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/CharSequence;",
            "I)V"
        }
    .end annotation

    .line 1481
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/EditText;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 1125
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mAutoCompleteMode:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1127
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public final getAutoLinkMask()I
    .locals 1

    .line 1492
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getAutoLinkMask()I

    move-result v0

    return v0
.end method

.method public getBaseline()I
    .locals 1

    .line 1497
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBaseline()I

    move-result v0

    return v0
.end method

.method public getCompletionHint()Ljava/lang/CharSequence;
    .locals 1

    .line 828
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mAutoCompleteMode:I

    if-eqz v0, :cond_0

    .line 830
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getCompletionHint()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCompoundDrawablePadding()I
    .locals 1

    .line 1506
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getCompoundDrawablePadding()I

    move-result v0

    return v0
.end method

.method public getCompoundDrawables()[Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1518
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1524
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getCompoundPaddingBottom()I
    .locals 1

    .line 1534
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getCompoundPaddingBottom()I

    move-result v0

    return v0
.end method

.method public getCompoundPaddingEnd()I
    .locals 1

    .line 1544
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getCompoundPaddingEnd()I

    move-result v0

    return v0
.end method

.method public getCompoundPaddingLeft()I
    .locals 1

    .line 1554
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getCompoundPaddingLeft()I

    move-result v0

    return v0
.end method

.method public getCompoundPaddingRight()I
    .locals 1

    .line 1562
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getCompoundPaddingRight()I

    move-result v0

    return v0
.end method

.method public getCompoundPaddingStart()I
    .locals 1

    .line 1572
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getCompoundPaddingStart()I

    move-result v0

    return v0
.end method

.method public getCompoundPaddingTop()I
    .locals 1

    .line 1582
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getCompoundPaddingTop()I

    move-result v0

    return v0
.end method

.method public final getCurrentHintTextColor()I
    .locals 1

    .line 1591
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getCurrentHintTextColor()I

    move-result v0

    return v0
.end method

.method public final getCurrentTextColor()I
    .locals 1

    .line 1600
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getCurrentTextColor()I

    move-result v0

    return v0
.end method

.method public getCustomSelectionActionModeCallback()Landroid/view/ActionMode$Callback;
    .locals 1

    .line 1611
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getCustomSelectionActionModeCallback()Landroid/view/ActionMode$Callback;

    move-result-object v0

    return-object v0
.end method

.method public getDropDownAnchor()I
    .locals 1

    .line 908
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mAutoCompleteMode:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 910
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getDropDownAnchor()I

    move-result v0

    return v0
.end method

.method public getDropDownBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 938
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mAutoCompleteMode:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 940
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getDropDownBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getDropDownHeight()I
    .locals 1

    .line 877
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mAutoCompleteMode:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 879
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getDropDownHeight()I

    move-result v0

    return v0
.end method

.method public getDropDownHorizontalOffset()I
    .locals 1

    .line 1022
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mAutoCompleteMode:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1024
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getDropDownHorizontalOffset()I

    move-result v0

    return v0
.end method

.method public getDropDownVerticalOffset()I
    .locals 1

    .line 994
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mAutoCompleteMode:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 996
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getDropDownVerticalOffset()I

    move-result v0

    return v0
.end method

.method public getDropDownWidth()I
    .locals 1

    .line 844
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mAutoCompleteMode:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 846
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getDropDownWidth()I

    move-result v0

    return v0
.end method

.method public getEditableText()Landroid/text/Editable;
    .locals 1

    .line 1623
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public getEllipsize()Landroid/text/TextUtils$TruncateAt;
    .locals 1

    .line 1631
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    return-object v0
.end method

.method public getError()Ljava/lang/CharSequence;
    .locals 1

    .line 623
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mSupportError:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getExtendedPaddingBottom()I
    .locals 1

    .line 1640
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getExtendedPaddingBottom()I

    move-result v0

    return v0
.end method

.method public getExtendedPaddingTop()I
    .locals 1

    .line 1649
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getExtendedPaddingTop()I

    move-result v0

    return v0
.end method

.method protected getFilter()Landroid/widget/Filter;
    .locals 2

    .line 775
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mAutoCompleteMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 779
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    check-cast v0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalMultiAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalMultiAutoCompleteTextView;->superGetFilter()Landroid/widget/Filter;

    move-result-object v0

    return-object v0

    .line 777
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    check-cast v0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalAutoCompleteTextView;->superGetFilter()Landroid/widget/Filter;

    move-result-object v0

    return-object v0
.end method

.method public getFilters()[Landroid/text/InputFilter;
    .locals 1

    .line 1658
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getFilters()[Landroid/text/InputFilter;

    move-result-object v0

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 1

    .line 1663
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->getFocusedRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getFontFeatureSettings()Ljava/lang/String;
    .locals 1

    .line 1675
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getFontFeatureSettings()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFreezesText()Z
    .locals 1

    .line 1688
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getFreezesText()Z

    move-result v0

    return v0
.end method

.method public getGravity()I
    .locals 1

    .line 1698
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getGravity()I

    move-result v0

    return v0
.end method

.method public getHelper()Ljava/lang/CharSequence;
    .locals 1

    .line 594
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mSupportHelper:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getHighlightColor()I
    .locals 1

    .line 1711
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getHighlightColor()I

    move-result v0

    return v0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 1

    .line 1723
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getHintTextColors()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1737
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getImeActionId()I
    .locals 1

    .line 1747
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getImeActionId()I

    move-result v0

    return v0
.end method

.method public getImeActionLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 1757
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getImeActionLabel()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getImeOptions()I
    .locals 1

    .line 1767
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getImeOptions()I

    move-result v0

    return v0
.end method

.method public getIncludeFontPadding()Z
    .locals 1

    .line 1780
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getIncludeFontPadding()Z

    move-result v0

    return v0
.end method

.method public getInputExtras(Z)Landroid/os/Bundle;
    .locals 1

    .line 1794
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->getInputExtras(Z)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public getInputType()I
    .locals 1

    .line 1804
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getInputType()I

    move-result v0

    return v0
.end method

.method public final getKeyListener()Landroid/text/method/KeyListener;
    .locals 1

    .line 1819
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v0

    return-object v0
.end method

.method public final getLayout()Landroid/text/Layout;
    .locals 1

    .line 1827
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v0

    return-object v0
.end method

.method public getLetterSpacing()F
    .locals 1

    .line 1839
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLetterSpacing()F

    move-result v0

    return v0
.end method

.method protected getLineAtCoordinate(F)I
    .locals 2

    .line 2118
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getTotalPaddingTop()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    const/4 v0, 0x0

    .line 2120
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 2121
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getTotalPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 2122
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 2123
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v0

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result p1

    return p1
.end method

.method public getLineBounds(ILandroid/graphics/Rect;)I
    .locals 1

    .line 1852
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->getLineBounds(ILandroid/graphics/Rect;)I

    move-result p1

    return p1
.end method

.method public getLineCount()I
    .locals 1

    .line 1860
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLineCount()I

    move-result v0

    return v0
.end method

.method public getLineHeight()I
    .locals 1

    .line 1870
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLineHeight()I

    move-result v0

    return v0
.end method

.method public getLineSpacingExtra()F
    .locals 1

    .line 1886
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLineSpacingExtra()F

    move-result v0

    return v0
.end method

.method public getLineSpacingMultiplier()F
    .locals 1

    .line 1903
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLineSpacingMultiplier()F

    move-result v0

    return v0
.end method

.method public final getLinkTextColors()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1917
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLinkTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public final getLinksClickable()Z
    .locals 1

    .line 1929
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLinksClickable()Z

    move-result v0

    return v0
.end method

.method public getListSelection()I
    .locals 1

    .line 1217
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mAutoCompleteMode:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1219
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getListSelection()I

    move-result v0

    return v0
.end method

.method public getMarqueeRepeatLimit()I
    .locals 1

    .line 1946
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getMarqueeRepeatLimit()I

    move-result v0

    return v0
.end method

.method public getMaxEms()I
    .locals 1

    .line 1963
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getMaxEms()I

    move-result v0

    return v0
.end method

.method public getMaxHeight()I
    .locals 1

    .line 1979
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getMaxHeight()I

    move-result v0

    return v0
.end method

.method public getMaxLines()I
    .locals 1

    .line 1995
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getMaxLines()I

    move-result v0

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .line 2012
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getMaxWidth()I

    move-result v0

    return v0
.end method

.method public getMinEms()I
    .locals 1

    .line 2029
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getMinEms()I

    move-result v0

    return v0
.end method

.method public getMinHeight()I
    .locals 1

    .line 2045
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getMinHeight()I

    move-result v0

    return v0
.end method

.method public getMinLines()I
    .locals 1

    .line 2061
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getMinLines()I

    move-result v0

    return v0
.end method

.method public getMinWidth()I
    .locals 1

    .line 2078
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getMinWidth()I

    move-result v0

    return v0
.end method

.method public final getMovementMethod()Landroid/text/method/MovementMethod;
    .locals 1

    .line 2088
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    return-object v0
.end method

.method protected getOffsetAtCoordinate(IF)I
    .locals 1

    .line 2127
    invoke-virtual {p0, p2}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->convertToLocalHorizontalCoordinate(F)F

    move-result p2

    .line 2128
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result p1

    return p1
.end method

.method public getOffsetForPosition(FF)I
    .locals 1

    .line 2102
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 2103
    :cond_0
    invoke-virtual {p0, p2}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getLineAtCoordinate(F)I

    move-result p2

    .line 2104
    invoke-virtual {p0, p2, p1}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getOffsetAtCoordinate(IF)I

    move-result p1

    return p1
.end method

.method public getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .line 1100
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mAutoCompleteMode:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1102
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    return-object v0
.end method

.method public getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 1

    .line 1113
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mAutoCompleteMode:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1115
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    return-object v0
.end method

.method public getPaint()Landroid/text/TextPaint;
    .locals 1

    .line 2136
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    return-object v0
.end method

.method public getPaintFlags()I
    .locals 1

    .line 2144
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getPaintFlags()I

    move-result v0

    return v0
.end method

.method public getPrivateImeOptions()Ljava/lang/String;
    .locals 1

    .line 2154
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getPrivateImeOptions()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectionEnd()I
    .locals 1

    .line 2161
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    return v0
.end method

.method public getSelectionStart()I
    .locals 1

    .line 2168
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method public getShadowColor()I
    .locals 1

    .line 2181
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getShadowColor()I

    move-result v0

    return v0
.end method

.method public getShadowDx()F
    .locals 1

    .line 2196
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getShadowDx()F

    move-result v0

    return v0
.end method

.method public getShadowDy()F
    .locals 1

    .line 2211
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getShadowDy()F

    move-result v0

    return v0
.end method

.method public getShadowRadius()F
    .locals 1

    .line 2228
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getShadowRadius()F

    move-result v0

    return v0
.end method

.method public final getShowSoftInputOnFocus()Z
    .locals 1

    .line 2240
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getShowSoftInputOnFocus()Z

    move-result v0

    return v0
.end method

.method public getText()Landroid/text/Editable;
    .locals 1

    .line 1342
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public final getTextColors()Landroid/content/res/ColorStateList;
    .locals 1

    .line 2253
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getTextLocale()Ljava/util/Locale;
    .locals 1

    .line 2263
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTextLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getTextScaleX()F
    .locals 1

    .line 2273
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTextScaleX()F

    move-result v0

    return v0
.end method

.method public getTextSize()F
    .locals 1

    .line 2280
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTextSize()F

    move-result v0

    return v0
.end method

.method public getThreshold()I
    .locals 1

    .line 1039
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mAutoCompleteMode:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1041
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getThreshold()I

    move-result v0

    return v0
.end method

.method public getTotalPaddingBottom()I
    .locals 2

    .line 2289
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getPaddingBottom()I

    move-result v0

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getTotalPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mSupportMode:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mSupportView:Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    invoke-virtual {v1}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->getHeight()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public getTotalPaddingEnd()I
    .locals 2

    .line 2299
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getPaddingEnd()I

    move-result v0

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getTotalPaddingEnd()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getTotalPaddingLeft()I
    .locals 2

    .line 2309
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getTotalPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getTotalPaddingRight()I
    .locals 2

    .line 2317
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getPaddingRight()I

    move-result v0

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getTotalPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getTotalPaddingStart()I
    .locals 2

    .line 2327
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getPaddingStart()I

    move-result v0

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getTotalPaddingStart()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getTotalPaddingTop()I
    .locals 2

    .line 2338
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getPaddingTop()I

    move-result v0

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getTotalPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mLabelEnable:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mLabelView:Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    invoke-virtual {v1}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->getHeight()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final getTransformationMethod()Landroid/text/method/TransformationMethod;
    .locals 1

    .line 2350
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    return-object v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 2364
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public getUrls()[Landroid/text/style/URLSpan;
    .locals 1

    .line 2375
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getUrls()[Landroid/text/style/URLSpan;

    move-result-object v0

    return-object v0
.end method

.method public getValidator()Landroid/widget/AutoCompleteTextView$Validator;
    .locals 1

    .line 1297
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mAutoCompleteMode:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1299
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getValidator()Landroid/widget/AutoCompleteTextView$Validator;

    move-result-object v0

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .line 2381
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasOverlappingRendering()Z

    move-result v0

    return v0
.end method

.method public hasSelection()Z
    .locals 1

    .line 2388
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasSelection()Z

    move-result v0

    return v0
.end method

.method protected init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    const/4 v0, 0x0

    .line 135
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mLabelEnable:Z

    .line 136
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mLabelVisible:Z

    .line 137
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mSupportMode:I

    .line 138
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mAutoCompleteMode:I

    const/4 v1, 0x1

    .line 139
    iput-boolean v1, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mDividerCompoundPadding:Z

    const/4 v1, -0x1

    .line 140
    iput v1, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mDividerPadding:I

    .line 141
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mIsRtl:Z

    .line 143
    invoke-super {p0, p1, p2, p3, p4}, Lcom/conceptglobal/imaterialdesign/widget/FrameLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 145
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 146
    sget p1, Lcom/conceptglobal/imaterialdesign/R$style;->Material_Widget_EditText:I

    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->applyStyle(I)V

    :cond_0
    return-void
.end method

.method public isCursorVisible()Z
    .locals 1

    .line 2400
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isCursorVisible()Z

    move-result v0

    return v0
.end method

.method public isInputMethodTarget()Z
    .locals 1

    .line 2408
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isInputMethodTarget()Z

    move-result v0

    return v0
.end method

.method public isPerformingCompletion()Z
    .locals 1

    .line 1240
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mAutoCompleteMode:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1242
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->isPerformingCompletion()Z

    move-result v0

    return v0
.end method

.method public isPopupShowing()Z
    .locals 1

    .line 1177
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mAutoCompleteMode:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1179
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    return v0
.end method

.method public isSuggestionsEnabled()Z
    .locals 1

    .line 2435
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isSuggestionsEnabled()Z

    move-result v0

    return v0
.end method

.method public isTextSelectable()Z
    .locals 1

    .line 2452
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isTextSelectable()Z

    move-result v0

    return v0
.end method

.method public length()I
    .locals 1

    .line 2459
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    return v0
.end method

.method public moveCursorToVisibleOffset()Z
    .locals 1

    .line 2471
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->moveCursorToVisibleOffset()Z

    move-result v0

    return v0
.end method

.method public onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .locals 2

    .line 2485
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mAutoCompleteMode:I

    if-nez v0, :cond_0

    .line 2486
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    check-cast v0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalEditText;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalEditText;->superOnCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2488
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    check-cast v0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalAutoCompleteTextView;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalAutoCompleteTextView;->superOnCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V

    goto :goto_0

    .line 2490
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    check-cast v0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalMultiAutoCompleteTextView;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalMultiAutoCompleteTextView;->superOnCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V

    :goto_0
    return-void
.end method

.method public onCommitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V
    .locals 2

    .line 2502
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mAutoCompleteMode:I

    if-nez v0, :cond_0

    .line 2503
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    check-cast v0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalEditText;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalEditText;->superOnCommitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2505
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    check-cast v0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalAutoCompleteTextView;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalAutoCompleteTextView;->superOnCommitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V

    goto :goto_0

    .line 2507
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    check-cast v0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalMultiAutoCompleteTextView;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalMultiAutoCompleteTextView;->superOnCommitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V

    :goto_0
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2

    .line 2512
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mAutoCompleteMode:I

    if-nez v0, :cond_0

    .line 2513
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    check-cast v0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalEditText;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalEditText;->superOnCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2515
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    check-cast v0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalAutoCompleteTextView;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalAutoCompleteTextView;->superOnCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    return-object p1

    .line 2517
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    check-cast v0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalMultiAutoCompleteTextView;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalMultiAutoCompleteTextView;->superOnCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    return-object p1
.end method

.method public onEditorAction(I)V
    .locals 2

    .line 2541
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mAutoCompleteMode:I

    if-nez v0, :cond_0

    .line 2542
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    check-cast v0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalEditText;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalEditText;->superOnEditorAction(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2544
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    check-cast v0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalAutoCompleteTextView;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalAutoCompleteTextView;->superOnEditorAction(I)V

    goto :goto_0

    .line 2546
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    check-cast v0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalMultiAutoCompleteTextView;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalMultiAutoCompleteTextView;->superOnEditorAction(I)V

    :goto_0
    return-void
.end method

.method public onFilterComplete(I)V
    .locals 2

    .line 1247
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mAutoCompleteMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1248
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    check-cast v0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalAutoCompleteTextView;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalAutoCompleteTextView;->superOnFilterComplete(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1250
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    check-cast v0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalMultiAutoCompleteTextView;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalMultiAutoCompleteTextView;->superOnFilterComplete(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 2551
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mAutoCompleteMode:I

    if-nez v0, :cond_0

    .line 2552
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    check-cast v0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalEditText;

    invoke-virtual {v0, p1, p2}, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalEditText;->superOnKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2554
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    check-cast v0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalAutoCompleteTextView;

    invoke-virtual {v0, p1, p2}, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalAutoCompleteTextView;->superOnKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 2556
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    check-cast v0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalMultiAutoCompleteTextView;

    invoke-virtual {v0, p1, p2}, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalMultiAutoCompleteTextView;->superOnKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 2

    .line 2561
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mAutoCompleteMode:I

    if-nez v0, :cond_0

    .line 2562
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    check-cast v0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalEditText;

    invoke-virtual {v0, p1, p2, p3}, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalEditText;->superOnKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2564
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    check-cast v0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalAutoCompleteTextView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalAutoCompleteTextView;->superOnKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 2566
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    check-cast v0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalMultiAutoCompleteTextView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalMultiAutoCompleteTextView;->superOnKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 2571
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mAutoCompleteMode:I

    if-nez v0, :cond_0

    .line 2572
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    check-cast v0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalEditText;

    invoke-virtual {v0, p1, p2}, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalEditText;->superOnKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2574
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    check-cast v0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalAutoCompleteTextView;

    invoke-virtual {v0, p1, p2}, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalAutoCompleteTextView;->superOnKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 2576
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    check-cast v0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalMultiAutoCompleteTextView;

    invoke-virtual {v0, p1, p2}, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalMultiAutoCompleteTextView;->superOnKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 2581
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mAutoCompleteMode:I

    if-nez v0, :cond_0

    .line 2582
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    check-cast v0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalEditText;

    invoke-virtual {v0, p1, p2}, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalEditText;->superOnKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2584
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    check-cast v0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalAutoCompleteTextView;

    invoke-virtual {v0, p1, p2}, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalAutoCompleteTextView;->superOnKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 2586
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    check-cast v0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalMultiAutoCompleteTextView;

    invoke-virtual {v0, p1, p2}, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalMultiAutoCompleteTextView;->superOnKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 2591
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mAutoCompleteMode:I

    if-nez v0, :cond_0

    .line 2592
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    check-cast v0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalEditText;

    invoke-virtual {v0, p1, p2}, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalEditText;->superOnKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2594
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    check-cast v0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalAutoCompleteTextView;

    invoke-virtual {v0, p1, p2}, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalAutoCompleteTextView;->superOnKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 2596
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    check-cast v0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalMultiAutoCompleteTextView;

    invoke-virtual {v0, p1, p2}, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalMultiAutoCompleteTextView;->superOnKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 563
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getPaddingLeft()I

    move-result p1

    sub-int/2addr p4, p2

    .line 564
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getPaddingRight()I

    move-result p2

    sub-int/2addr p4, p2

    .line 565
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getPaddingTop()I

    move-result p2

    sub-int/2addr p5, p3

    .line 566
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p5, p3

    .line 568
    iget-object p3, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mLabelView:Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    if-eqz p3, :cond_0

    .line 569
    invoke-virtual {p3}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p3, p1, p2, p4, v0}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->layout(IIII)V

    .line 570
    iget-object p3, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mLabelView:Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    invoke-virtual {p3}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->getMeasuredHeight()I

    move-result p3

    add-int/2addr p2, p3

    .line 573
    :cond_0
    iget-object p3, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mSupportView:Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    if-eqz p3, :cond_1

    .line 574
    invoke-virtual {p3}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->getMeasuredHeight()I

    move-result v0

    sub-int v0, p5, v0

    invoke-virtual {p3, p1, v0, p4, p5}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->layout(IIII)V

    .line 575
    iget-object p3, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mSupportView:Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    invoke-virtual {p3}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->getMeasuredHeight()I

    move-result p3

    sub-int/2addr p5, p3

    .line 578
    :cond_1
    iget-object p3, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {p3, p1, p2, p4, p5}, Landroid/widget/EditText;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 16

    move-object/from16 v0, p0

    .line 482
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 483
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 484
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 485
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    if-nez v1, :cond_0

    move/from16 v5, p1

    goto :goto_0

    .line 487
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getPaddingLeft()I

    move-result v5

    sub-int v5, v2, v5

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v5, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    :goto_0
    const/4 v6, 0x0

    .line 488
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 496
    iget-object v8, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mLabelView:Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    const/4 v9, 0x1

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    .line 497
    :goto_1
    iget-object v10, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mSupportView:Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    if-eqz v10, :cond_2

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    :goto_2
    if-eqz v8, :cond_3

    .line 500
    iget-object v10, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mLabelView:Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    invoke-virtual {v10, v5, v7}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->measure(II)V

    .line 501
    iget-object v10, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mLabelView:Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    invoke-virtual {v10}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->getMeasuredWidth()I

    move-result v10

    .line 502
    iget-object v11, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mLabelView:Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    invoke-virtual {v11}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->getMeasuredHeight()I

    move-result v11

    goto :goto_3

    :cond_3
    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 505
    :goto_3
    iget-object v12, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v12, v5, v7}, Landroid/widget/EditText;->measure(II)V

    .line 506
    iget-object v12, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v12

    .line 507
    iget-object v13, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v13

    if-eqz v9, :cond_4

    .line 510
    iget-object v14, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mSupportView:Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    invoke-virtual {v14, v5, v7}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->measure(II)V

    .line 511
    iget-object v5, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mSupportView:Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    invoke-virtual {v5}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->getMeasuredWidth()I

    move-result v5

    .line 512
    iget-object v14, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mSupportView:Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    invoke-virtual {v14}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->getMeasuredHeight()I

    move-result v14

    goto :goto_4

    :cond_4
    const/4 v5, 0x0

    const/4 v14, 0x0

    :goto_4
    const/high16 v15, -0x80000000

    const/high16 v6, 0x40000000    # 2.0f

    if-eq v1, v15, :cond_6

    if-eqz v1, :cond_5

    if-eq v1, v6, :cond_7

    const/4 v2, 0x0

    goto :goto_5

    .line 520
    :cond_5
    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getPaddingRight()I

    move-result v2

    add-int/2addr v2, v1

    goto :goto_5

    .line 523
    :cond_6
    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getPaddingLeft()I

    move-result v5

    add-int/2addr v1, v5

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getPaddingRight()I

    move-result v5

    add-int/2addr v1, v5

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 530
    :cond_7
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getPaddingLeft()I

    move-result v1

    sub-int v1, v2, v1

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getPaddingRight()I

    move-result v5

    sub-int/2addr v1, v5

    .line 531
    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    if-eqz v8, :cond_8

    .line 532
    iget-object v8, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mLabelView:Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    invoke-virtual {v8}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->getWidth()I

    move-result v8

    if-eq v8, v1, :cond_8

    .line 533
    iget-object v8, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mLabelView:Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    invoke-virtual {v8, v5, v7}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->measure(II)V

    .line 534
    iget-object v8, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mLabelView:Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    invoke-virtual {v8}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->getMeasuredHeight()I

    move-result v11

    :cond_8
    if-eqz v9, :cond_9

    .line 537
    iget-object v8, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mSupportView:Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    invoke-virtual {v8}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->getWidth()I

    move-result v8

    if-eq v8, v1, :cond_9

    .line 538
    iget-object v8, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mSupportView:Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    invoke-virtual {v8, v5, v7}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->measure(II)V

    .line 539
    iget-object v7, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mSupportView:Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    invoke-virtual {v7}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->getMeasuredHeight()I

    move-result v14

    :cond_9
    if-eq v3, v15, :cond_b

    if-eqz v3, :cond_a

    if-eq v3, v6, :cond_c

    const/4 v4, 0x0

    goto :goto_6

    :cond_a
    add-int/2addr v13, v11

    add-int/2addr v13, v14

    .line 544
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getPaddingTop()I

    move-result v3

    add-int/2addr v13, v3

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getPaddingBottom()I

    move-result v3

    add-int v4, v13, v3

    goto :goto_6

    :cond_b
    add-int/2addr v13, v11

    add-int/2addr v13, v14

    .line 547
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getPaddingTop()I

    move-result v3

    add-int/2addr v13, v3

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getPaddingBottom()I

    move-result v3

    add-int/2addr v13, v3

    invoke-static {v4, v13}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 554
    :cond_c
    :goto_6
    invoke-virtual {v0, v2, v4}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->setMeasuredDimension(II)V

    sub-int/2addr v4, v11

    sub-int/2addr v4, v14

    .line 556
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getPaddingTop()I

    move-result v2

    sub-int/2addr v4, v2

    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v4, v2

    .line 557
    iget-object v2, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v2

    if-ne v2, v1, :cond_d

    iget-object v1, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v1

    if-eq v1, v4, :cond_e

    .line 558
    :cond_d
    iget-object v1, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v1, v5, v2}, Landroid/widget/EditText;->measure(II)V

    :cond_e
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 465
    :goto_0
    iget-boolean p1, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mIsRtl:Z

    if-eq p1, v0, :cond_5

    .line 466
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mIsRtl:Z

    .line 469
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mLabelView:Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    const/4 v0, 0x4

    const/4 v1, 0x3

    if-eqz p1, :cond_2

    .line 470
    iget-boolean v2, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mIsRtl:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_1

    :cond_1
    const/4 v2, 0x3

    :goto_1
    invoke-virtual {p1, v2}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->setTextDirection(I)V

    .line 472
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mSupportView:Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    if-eqz p1, :cond_4

    .line 473
    iget-boolean v2, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mIsRtl:Z

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x3

    :goto_2
    invoke-virtual {p1, v0}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->setTextDirection(I)V

    .line 476
    :cond_4
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->requestLayout()V

    :cond_5
    return-void
.end method

.method protected onSelectionChanged(II)V
    .locals 2

    .line 2611
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    if-nez v0, :cond_0

    return-void

    .line 2614
    :cond_0
    instance-of v1, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalEditText;

    if-eqz v1, :cond_1

    .line 2615
    check-cast v0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalEditText;

    invoke-virtual {v0, p1, p2}, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalEditText;->superOnSelectionChanged(II)V

    goto :goto_0

    .line 2616
    :cond_1
    instance-of v1, v0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalAutoCompleteTextView;

    if-eqz v1, :cond_2

    .line 2617
    check-cast v0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalAutoCompleteTextView;

    invoke-virtual {v0, p1, p2}, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalAutoCompleteTextView;->superOnSelectionChanged(II)V

    goto :goto_0

    .line 2619
    :cond_2
    check-cast v0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalMultiAutoCompleteTextView;

    invoke-virtual {v0, p1, p2}, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalMultiAutoCompleteTextView;->superOnSelectionChanged(II)V

    .line 2621
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mOnSelectionChangedListener:Lcom/conceptglobal/imaterialdesign/widget/TextView$OnSelectionChangedListener;

    if-eqz v0, :cond_3

    .line 2622
    invoke-interface {v0, p0, p1, p2}, Lcom/conceptglobal/imaterialdesign/widget/TextView$OnSelectionChangedListener;->onSelectionChanged(Landroid/view/View;II)V

    :cond_3
    return-void
.end method

.method public performCompletion()V
    .locals 1

    .line 1229
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mAutoCompleteMode:I

    if-nez v0, :cond_0

    return-void

    .line 1231
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->performCompletion()V

    return-void
.end method

.method protected performFiltering(Ljava/lang/CharSequence;I)V
    .locals 2

    .line 741
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mAutoCompleteMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 746
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    check-cast v0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalMultiAutoCompleteTextView;

    invoke-virtual {v0, p1, p2}, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalMultiAutoCompleteTextView;->superPerformFiltering(Ljava/lang/CharSequence;I)V

    goto :goto_0

    .line 743
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    check-cast v0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalAutoCompleteTextView;

    invoke-virtual {v0, p1, p2}, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalAutoCompleteTextView;->superPerformFiltering(Ljava/lang/CharSequence;I)V

    :goto_0
    return-void
.end method

.method protected performFiltering(Ljava/lang/CharSequence;III)V
    .locals 2

    .line 792
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mAutoCompleteMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 793
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    check-cast v0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalMultiAutoCompleteTextView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalMultiAutoCompleteTextView;->superPerformFiltering(Ljava/lang/CharSequence;III)V

    :cond_0
    return-void
.end method

.method public performValidation()V
    .locals 1

    .line 1311
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mAutoCompleteMode:I

    if-nez v0, :cond_0

    return-void

    .line 1313
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->performValidation()V

    return-void
.end method

.method public removeTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 1

    .line 2631
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method protected replaceText(Ljava/lang/CharSequence;)V
    .locals 2

    .line 759
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mAutoCompleteMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 764
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    check-cast v0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalMultiAutoCompleteTextView;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalMultiAutoCompleteTextView;->superReplaceText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 761
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    check-cast v0, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalAutoCompleteTextView;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/EditText$InternalAutoCompleteTextView;->superReplaceText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public selectAll()V
    .locals 1

    .line 1349
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/widget/ListAdapter;",
            ":",
            "Landroid/widget/Filterable;",
            ">(TT;)V"
        }
    .end annotation

    .line 1152
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mAutoCompleteMode:I

    if-nez v0, :cond_0

    return-void

    .line 1154
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAllCaps(Z)V
    .locals 1

    .line 2649
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setAllCaps(Z)V

    return-void
.end method

.method public final setAutoLinkMask(I)V
    .locals 1

    .line 2660
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setAutoLinkMask(I)V

    return-void
.end method

.method public setCompletionHint(Ljava/lang/CharSequence;)V
    .locals 1

    .line 811
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mAutoCompleteMode:I

    if-nez v0, :cond_0

    return-void

    .line 813
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setCompletionHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setCompoundDrawablePadding(I)V
    .locals 4

    .line 2670
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setCompoundDrawablePadding(I)V

    .line 2671
    iget-boolean p1, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mDividerCompoundPadding:Z

    if-eqz p1, :cond_1

    .line 2672
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mDivider:Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;

    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTotalPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getTotalPaddingRight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->setPadding(II)V

    .line 2673
    iget-boolean p1, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mLabelEnable:Z

    if-eqz p1, :cond_0

    .line 2674
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mLabelView:Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mDivider:Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mLabelView:Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    invoke-virtual {v1}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mDivider:Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;

    invoke-virtual {v2}, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->getPaddingRight()I

    move-result v2

    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mLabelView:Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    invoke-virtual {v3}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->setPadding(IIII)V

    .line 2675
    :cond_0
    iget p1, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mSupportMode:I

    if-eqz p1, :cond_1

    .line 2676
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mSupportView:Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mDivider:Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mSupportView:Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    invoke-virtual {v1}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mDivider:Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;

    invoke-virtual {v2}, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->getPaddingRight()I

    move-result v2

    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mSupportView:Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    invoke-virtual {v3}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->setPadding(IIII)V

    :cond_1
    return-void
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 2695
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/EditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2696
    iget-boolean p1, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mDividerCompoundPadding:Z

    if-eqz p1, :cond_1

    .line 2697
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mDivider:Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;

    iget-object p2, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getTotalPaddingLeft()I

    move-result p2

    iget-object p3, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {p3}, Landroid/widget/EditText;->getTotalPaddingRight()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->setPadding(II)V

    .line 2698
    iget-boolean p1, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mLabelEnable:Z

    if-eqz p1, :cond_0

    .line 2699
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mLabelView:Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    iget-object p2, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mDivider:Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;

    invoke-virtual {p2}, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->getPaddingLeft()I

    move-result p2

    iget-object p3, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mLabelView:Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    invoke-virtual {p3}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->getPaddingTop()I

    move-result p3

    iget-object p4, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mDivider:Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;

    invoke-virtual {p4}, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->getPaddingRight()I

    move-result p4

    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mLabelView:Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->getPaddingBottom()I

    move-result v0

    invoke-virtual {p1, p2, p3, p4, v0}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->setPadding(IIII)V

    .line 2700
    :cond_0
    iget p1, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mSupportMode:I

    if-eqz p1, :cond_1

    .line 2701
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mSupportView:Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    iget-object p2, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mDivider:Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;

    invoke-virtual {p2}, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->getPaddingLeft()I

    move-result p2

    iget-object p3, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mSupportView:Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    invoke-virtual {p3}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->getPaddingTop()I

    move-result p3

    iget-object p4, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mDivider:Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;

    invoke-virtual {p4}, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->getPaddingRight()I

    move-result p4

    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mSupportView:Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->getPaddingBottom()I

    move-result v0

    invoke-virtual {p1, p2, p3, p4, v0}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->setPadding(IIII)V

    :cond_1
    return-void
.end method

.method public setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 2722
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/EditText;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V
    .locals 1

    .line 2769
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/EditText;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    return-void
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 2743
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/EditText;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .locals 1

    .line 2811
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    return-void
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 2789
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCursorVisible(Z)V
    .locals 1

    .line 2823
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 1

    .line 2853
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    return-void
.end method

.method public setDropDownAnchor(I)V
    .locals 1

    .line 924
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mAutoCompleteMode:I

    if-nez v0, :cond_0

    return-void

    .line 926
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setDropDownAnchor(I)V

    return-void
.end method

.method public setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 952
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mAutoCompleteMode:I

    if-nez v0, :cond_0

    return-void

    .line 954
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setDropDownBackgroundResource(I)V
    .locals 1

    .line 966
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mAutoCompleteMode:I

    if-nez v0, :cond_0

    return-void

    .line 968
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundResource(I)V

    return-void
.end method

.method public setDropDownHeight(I)V
    .locals 1

    .line 894
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mAutoCompleteMode:I

    if-nez v0, :cond_0

    return-void

    .line 896
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setDropDownHeight(I)V

    return-void
.end method

.method public setDropDownHorizontalOffset(I)V
    .locals 1

    .line 1008
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mAutoCompleteMode:I

    if-nez v0, :cond_0

    return-void

    .line 1010
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setDropDownHorizontalOffset(I)V

    return-void
.end method

.method public setDropDownVerticalOffset(I)V
    .locals 1

    .line 980
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mAutoCompleteMode:I

    if-nez v0, :cond_0

    return-void

    .line 982
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setDropDownVerticalOffset(I)V

    return-void
.end method

.method public setDropDownWidth(I)V
    .locals 1

    .line 860
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mAutoCompleteMode:I

    if-nez v0, :cond_0

    return-void

    .line 862
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setDropDownWidth(I)V

    return-void
.end method

.method public final setEditableFactory(Landroid/text/Editable$Factory;)V
    .locals 1

    .line 2860
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEditableFactory(Landroid/text/Editable$Factory;)V

    return-void
.end method

.method public setElegantTextHeight(Z)V
    .locals 1

    .line 2875
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setElegantTextHeight(Z)V

    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 1

    .line 1367
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    return-void
.end method

.method public setEms(I)V
    .locals 1

    .line 2889
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEms(I)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 1331
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    return-void
.end method

.method public setError(Ljava/lang/CharSequence;)V
    .locals 5

    .line 602
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mSupportError:Ljava/lang/CharSequence;

    .line 604
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mSupportMode:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 608
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getSupportView()Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mSupportErrorColors:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 609
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mDivider:Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;

    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mDividerErrorColors:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 610
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getSupportView()Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    move-result-object p1

    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mSupportMode:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mSupportError:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mSupportHelper:Ljava/lang/CharSequence;

    aput-object v4, v0, v3

    const-string v3, ", "

    aput-object v3, v0, v2

    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mSupportError:Ljava/lang/CharSequence;

    aput-object v2, v0, v1

    invoke-static {v0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 613
    :cond_2
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getSupportView()Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mSupportColors:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 614
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mDivider:Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;

    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mDividerColors:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/imaterialdesign/drawable/DividerDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 615
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->getSupportView()Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mSupportHelper:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method public setExtractedText(Landroid/view/inputmethod/ExtractedText;)V
    .locals 1

    .line 2897
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setExtractedText(Landroid/view/inputmethod/ExtractedText;)V

    return-void
.end method

.method public setFilters([Landroid/text/InputFilter;)V
    .locals 1

    .line 2907
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method public setFontFeatureSettings(Ljava/lang/String;)V
    .locals 1

    .line 2924
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setFontFeatureSettings(Ljava/lang/String;)V

    return-void
.end method

.method public setFreezesText(Z)V
    .locals 1

    .line 2941
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setFreezesText(Z)V

    return-void
.end method

.method public setGravity(I)V
    .locals 1

    .line 2953
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setGravity(I)V

    return-void
.end method

.method public setHelper(Ljava/lang/CharSequence;)V
    .locals 0

    .line 586
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mSupportHelper:Ljava/lang/CharSequence;

    .line 587
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mSupportError:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setHighlightColor(I)V
    .locals 1

    .line 2962
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHighlightColor(I)V

    return-void
.end method

.method public final setHint(I)V
    .locals 1

    .line 2985
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(I)V

    .line 2986
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mLabelView:Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    if-eqz v0, :cond_0

    .line 2987
    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->setText(I)V

    :cond_0
    return-void
.end method

.method public final setHint(Ljava/lang/CharSequence;)V
    .locals 1

    .line 2973
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 2974
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mLabelView:Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;

    if-eqz v0, :cond_0

    .line 2975
    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/EditText$LabelView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final setHintTextColor(I)V
    .locals 1

    .line 3015
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHintTextColor(I)V

    return-void
.end method

.method public final setHintTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 3001
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setHorizontallyScrolling(Z)V
    .locals 1

    .line 3025
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHorizontallyScrolling(Z)V

    return-void
.end method

.method public setImeActionLabel(Ljava/lang/CharSequence;I)V
    .locals 1

    .line 3039
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public setImeOptions(I)V
    .locals 1

    .line 3051
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setImeOptions(I)V

    return-void
.end method

.method public setIncludeFontPadding(Z)V
    .locals 1

    .line 3064
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setIncludeFontPadding(Z)V

    return-void
.end method

.method public setInputExtras(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3079
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setInputExtras(I)V

    return-void
.end method

.method public setInputType(I)V
    .locals 1

    .line 3098
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setInputType(I)V

    return-void
.end method

.method public setKeyListener(Landroid/text/method/KeyListener;)V
    .locals 1

    .line 3124
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    return-void
.end method

.method public setLetterSpacing(F)V
    .locals 1

    .line 3138
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setLetterSpacing(F)V

    return-void
.end method

.method public setLineSpacing(FF)V
    .locals 1

    .line 3149
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->setLineSpacing(FF)V

    return-void
.end method

.method public setLines(I)V
    .locals 1

    .line 3161
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setLines(I)V

    return-void
.end method

.method public final setLinkTextColor(I)V
    .locals 1

    .line 3189
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setLinkTextColor(I)V

    return-void
.end method

.method public final setLinkTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 3175
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final setLinksClickable(Z)V
    .locals 1

    .line 3201
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setLinksClickable(Z)V

    return-void
.end method

.method public setListSelection(I)V
    .locals 1

    .line 1200
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mAutoCompleteMode:I

    if-nez v0, :cond_0

    return-void

    .line 1202
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setListSelection(I)V

    return-void
.end method

.method public setMarqueeRepeatLimit(I)V
    .locals 1

    .line 3213
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setMarqueeRepeatLimit(I)V

    return-void
.end method

.method public setMaxEms(I)V
    .locals 1

    .line 3222
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setMaxEms(I)V

    return-void
.end method

.method public setMaxHeight(I)V
    .locals 1

    .line 3234
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setMaxHeight(I)V

    return-void
.end method

.method public setMaxLines(I)V
    .locals 1

    .line 3245
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setMaxLines(I)V

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 1

    .line 3254
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setMaxWidth(I)V

    return-void
.end method

.method public setMinEms(I)V
    .locals 1

    .line 3263
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setMinEms(I)V

    return-void
.end method

.method public setMinHeight(I)V
    .locals 1

    .line 3274
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setMinHeight(I)V

    return-void
.end method

.method public setMinLines(I)V
    .locals 1

    .line 3288
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setMinLines(I)V

    return-void
.end method

.method public setMinWidth(I)V
    .locals 1

    .line 3297
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setMinWidth(I)V

    return-void
.end method

.method public final setMovementMethod(Landroid/text/method/MovementMethod;)V
    .locals 1

    .line 3312
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method public setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
    .locals 1

    .line 3324
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 1

    .line 3345
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1

    .line 1074
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mAutoCompleteMode:I

    if-nez v0, :cond_0

    return-void

    .line 1076
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 1

    .line 1087
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mAutoCompleteMode:I

    if-nez v0, :cond_0

    return-void

    .line 1089
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method public setOnKeyListener(Landroid/view/View$OnKeyListener;)V
    .locals 1

    .line 3335
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method public setOnSelectionChangedListener(Lcom/conceptglobal/imaterialdesign/widget/TextView$OnSelectionChangedListener;)V
    .locals 0

    .line 2600
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mOnSelectionChangedListener:Lcom/conceptglobal/imaterialdesign/widget/TextView$OnSelectionChangedListener;

    return-void
.end method

.method public setRawInputType(I)V
    .locals 1

    .line 3356
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setRawInputType(I)V

    return-void
.end method

.method public setScroller(Landroid/widget/Scroller;)V
    .locals 1

    .line 3360
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setScroller(Landroid/widget/Scroller;)V

    return-void
.end method

.method public setSelectAllOnFocus(Z)V
    .locals 1

    .line 3370
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    .line 3375
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelected(Z)V

    return-void
.end method

.method public setSelection(I)V
    .locals 1

    .line 1374
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method public setSelection(II)V
    .locals 1

    .line 1381
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->setSelection(II)V

    return-void
.end method

.method public setShadowLayer(FFFI)V
    .locals 1

    .line 3395
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/EditText;->setShadowLayer(FFFI)V

    return-void
.end method

.method public final setShowSoftInputOnFocus(Z)V
    .locals 1

    .line 3403
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setShowSoftInputOnFocus(Z)V

    return-void
.end method

.method public setSingleLine()V
    .locals 1

    .line 3413
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->setSingleLine()V

    return-void
.end method

.method public final setSpannableFactory(Landroid/text/Spannable$Factory;)V
    .locals 1

    .line 3420
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSpannableFactory(Landroid/text/Spannable$Factory;)V

    return-void
.end method

.method public final setText(I)V
    .locals 1

    .line 3424
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(I)V

    return-void
.end method

.method public final setText(ILandroid/widget/TextView$BufferType;)V
    .locals 1

    .line 3432
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->setText(ILandroid/widget/TextView$BufferType;)V

    return-void
.end method

.method public final setText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 3436
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1

    .line 1385
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method

.method public final setText([CII)V
    .locals 1

    .line 3428
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/EditText;->setText([CII)V

    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 1

    .line 3444
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->setTextAppearance(Landroid/content/Context;I)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .line 3471
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTextColor(I)V

    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 3458
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTextIsSelectable(Z)V
    .locals 1

    .line 3501
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTextIsSelectable(Z)V

    return-void
.end method

.method public final setTextKeepState(Ljava/lang/CharSequence;)V
    .locals 1

    .line 3513
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTextKeepState(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTextKeepState(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1

    .line 3523
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->setTextKeepState(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method

.method public setTextLocale(Ljava/util/Locale;)V
    .locals 1

    .line 3538
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTextLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public setTextScaleX(F)V
    .locals 1

    .line 3547
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTextScaleX(F)V

    return-void
.end method

.method public setTextSize(F)V
    .locals 1

    .line 3560
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTextSize(F)V

    return-void
.end method

.method public setTextSize(IF)V
    .locals 1

    .line 3573
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->setTextSize(IF)V

    return-void
.end method

.method public setThreshold(I)V
    .locals 1

    .line 1061
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mAutoCompleteMode:I

    if-nez v0, :cond_0

    return-void

    .line 1063
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    return-void
.end method

.method public setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V
    .locals 2

    .line 1322
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mAutoCompleteMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    .line 1324
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    check-cast v0, Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0, p1}, Landroid/widget/MultiAutoCompleteTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    return-void
.end method

.method public final setTransformationMethod(Landroid/text/method/TransformationMethod;)V
    .locals 1

    .line 3584
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 3614
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .locals 1

    .line 3597
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;I)V

    return-void
.end method

.method public setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V
    .locals 1

    .line 1283
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mAutoCompleteMode:I

    if-nez v0, :cond_0

    return-void

    .line 1285
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V

    return-void
.end method

.method public showDropDown()V
    .locals 1

    .line 1268
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mAutoCompleteMode:I

    if-nez v0, :cond_0

    return-void

    .line 1270
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/EditText;->mInputView:Landroid/widget/EditText;

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    return-void
.end method

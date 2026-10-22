.class Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;
.super Landroid/widget/FrameLayout;
.source "TimePickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/conceptglobal/imaterialdesign/widget/TimePicker$OnTimeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimePickerLayout"
.end annotation


# static fields
.field private static final BASE_TEXT:Ljava/lang/String; = "0"

.field private static final FORMAT:Ljava/lang/String; = "%02d"

.field private static final FORMAT_NO_LEADING_ZERO:Ljava/lang/String; = "%d"

.field private static final TIME_DIVIDER:Ljava/lang/String; = ":"


# instance fields
.field private mAmView:Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;

.field private mBaseHeight:F

.field private mBaseY:F

.field private mCheckBoxSize:I

.field private mDividerX:F

.field private mHeaderBackground:Landroid/graphics/Path;

.field private mHeaderHeight:I

.field private mHeaderRealHeight:I

.field private mHeaderRealWidth:I

.field private mHour:Ljava/lang/String;

.field private mHourWidth:F

.field private mHourX:F

.field private mIsAm:Z

.field private mIsLeadingZero:Z

.field private mLocationDirty:Z

.field private mMidday:Ljava/lang/String;

.field private mMiddayX:F

.field private mMinute:Ljava/lang/String;

.field private mMinuteWidth:F

.field private mMinuteX:F

.field private mOnTimeChangedListener:Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$OnTimeChangedListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mPmView:Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;

.field private mRect:Landroid/graphics/RectF;

.field private mTextTimeColor:I

.field private mTextTimeSize:I

.field private mTimePicker:Lcom/conceptglobal/imaterialdesign/widget/TimePicker;

.field final synthetic this$0:Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;


# direct methods
.method public constructor <init>(Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;Landroid/content/Context;)V
    .locals 6

    .line 184
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->this$0:Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;

    .line 185
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v0, -0x1000000

    .line 145
    iput v0, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mTextTimeColor:I

    const/4 v0, 0x0

    .line 147
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mIsLeadingZero:Z

    const/4 v1, 0x1

    .line 149
    iput-boolean v1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mIsAm:Z

    .line 168
    iput-boolean v1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mLocationDirty:Z

    .line 187
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mPaint:Landroid/graphics/Paint;

    .line 188
    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 189
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mHeaderBackground:Landroid/graphics/Path;

    .line 190
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mRect:Landroid/graphics/RectF;

    .line 192
    new-instance v2, Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;

    invoke-direct {v2, p2}, Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mAmView:Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;

    .line 193
    new-instance v2, Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;

    invoke-direct {v2, p2}, Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mPmView:Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;

    .line 194
    new-instance v2, Lcom/conceptglobal/imaterialdesign/widget/TimePicker;

    invoke-direct {v2, p2}, Lcom/conceptglobal/imaterialdesign/widget/TimePicker;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mTimePicker:Lcom/conceptglobal/imaterialdesign/widget/TimePicker;

    .line 196
    iget v3, p1, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;->mContentPadding:I

    iget v4, p1, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;->mContentPadding:I

    iget v5, p1, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;->mContentPadding:I

    iget p1, p1, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;->mContentPadding:I

    invoke-virtual {v2, v3, v4, v5, p1}, Lcom/conceptglobal/imaterialdesign/widget/TimePicker;->setPadding(IIII)V

    .line 197
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mTimePicker:Lcom/conceptglobal/imaterialdesign/widget/TimePicker;

    invoke-virtual {p1, p0}, Lcom/conceptglobal/imaterialdesign/widget/TimePicker;->setOnTimeChangedListener(Lcom/conceptglobal/imaterialdesign/widget/TimePicker$OnTimeChangedListener;)V

    .line 198
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mAmView:Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;

    const/16 v2, 0x11

    invoke-virtual {p1, v2}, Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;->setGravity(I)V

    .line 199
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mPmView:Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;

    invoke-virtual {p1, v2}, Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;->setGravity(I)V

    .line 201
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mAmView:Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;->setTextAlignment(I)V

    .line 202
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mPmView:Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;

    invoke-virtual {p1, v2}, Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;->setTextAlignment(I)V

    .line 204
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mAmView:Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;

    iget-boolean v2, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mIsAm:Z

    invoke-virtual {p1, v2}, Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;->setCheckedImmediately(Z)V

    .line 205
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mPmView:Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;

    iget-boolean v2, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mIsAm:Z

    xor-int/2addr v1, v2

    invoke-virtual {p1, v1}, Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;->setCheckedImmediately(Z)V

    .line 206
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mAmView:Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;

    invoke-virtual {p1, p0}, Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mPmView:Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;

    invoke-virtual {p1, p0}, Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mTimePicker:Lcom/conceptglobal/imaterialdesign/widget/TimePicker;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->addView(Landroid/view/View;)V

    .line 210
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mAmView:Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->addView(Landroid/view/View;)V

    .line 211
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mPmView:Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->addView(Landroid/view/View;)V

    .line 213
    invoke-virtual {p0, v0}, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->setWillNotDraw(Z)V

    const/16 p1, 0x30

    .line 215
    invoke-static {p2, p1}, Lcom/conceptglobal/imaterialdesign/util/ThemeUtil;->dpToPx(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mCheckBoxSize:I

    const/16 p1, 0x78

    .line 216
    invoke-static {p2, p1}, Lcom/conceptglobal/imaterialdesign/util/ThemeUtil;->dpToPx(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mHeaderHeight:I

    .line 217
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/conceptglobal/imaterialdesign/R$dimen;->abc_text_size_headline_material:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mTextTimeSize:I

    return-void
.end method

.method private isTouched(FFFFFF)Z
    .locals 0

    cmpl-float p1, p5, p1

    if-ltz p1, :cond_0

    cmpg-float p1, p5, p3

    if-gtz p1, :cond_0

    cmpl-float p1, p6, p2

    if-ltz p1, :cond_0

    cmpg-float p1, p6, p4

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private measureTimeText()V
    .locals 6

    .line 523
    iget-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mLocationDirty:Z

    if-nez v0, :cond_0

    return-void

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mTextTimeSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 528
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 529
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mPaint:Landroid/graphics/Paint;

    const-string v2, "0"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 530
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mBaseHeight:F

    .line 532
    iget v1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mHeaderRealHeight:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v1, v0

    iput v1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mBaseY:F

    .line 534
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mPaint:Landroid/graphics/Paint;

    const-string v2, ":"

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v1

    .line 535
    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mHour:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v4, v3, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v2

    iput v2, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mHourWidth:F

    .line 536
    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mMinute:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v4, v3, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v2

    iput v2, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mMinuteWidth:F

    .line 538
    iget v4, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mHeaderRealWidth:I

    int-to-float v4, v4

    sub-float/2addr v4, v1

    div-float/2addr v4, v0

    iput v4, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mDividerX:F

    .line 539
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mHourWidth:F

    sub-float v0, v4, v0

    iput v0, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mHourX:F

    add-float/2addr v4, v1

    .line 540
    iput v4, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mMinuteX:F

    add-float/2addr v4, v2

    .line 541
    iput v4, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mMiddayX:F

    .line 543
    iput-boolean v3, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mLocationDirty:Z

    return-void
.end method

.method private setAm(ZZ)V
    .locals 3

    .line 314
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mTimePicker:Lcom/conceptglobal/imaterialdesign/widget/TimePicker;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/widget/TimePicker;->is24Hour()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 317
    :cond_0
    iget-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mIsAm:Z

    if-eq v0, p1, :cond_3

    .line 318
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->getHour()I

    move-result v0

    .line 320
    iput-boolean p1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mIsAm:Z

    if-eqz p2, :cond_1

    .line 322
    iget-object p2, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mAmView:Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;

    invoke-virtual {p2, p1}, Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;->setChecked(Z)V

    .line 323
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mPmView:Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;

    iget-boolean p2, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mIsAm:Z

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;->setChecked(Z)V

    goto :goto_0

    .line 326
    :cond_1
    iget-object p2, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mAmView:Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;

    invoke-virtual {p2, p1}, Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;->setCheckedImmediately(Z)V

    .line 327
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mPmView:Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;

    iget-boolean p2, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mIsAm:Z

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;->setCheckedImmediately(Z)V

    .line 329
    :goto_0
    iget-boolean p1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mIsAm:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mAmView:Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mPmView:Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;

    :goto_1
    invoke-virtual {p1}, Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mMidday:Ljava/lang/String;

    .line 330
    iget p1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mHeaderRealWidth:I

    iget p2, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mHeaderRealHeight:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, p1, p2}, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->invalidate(IIII)V

    .line 332
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mOnTimeChangedListener:Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$OnTimeChangedListener;

    if-eqz p1, :cond_3

    .line 333
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->getMinute()I

    move-result p2

    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->getHour()I

    move-result v1

    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->getMinute()I

    move-result v2

    invoke-interface {p1, v0, p2, v1, v2}, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$OnTimeChangedListener;->onTimeChanged(IIII)V

    :cond_3
    return-void
.end method


# virtual methods
.method public applyStyle(I)V
    .locals 8

    .line 221
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mTimePicker:Lcom/conceptglobal/imaterialdesign/widget/TimePicker;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/TimePicker;->applyStyle(I)V

    .line 223
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 224
    sget-object v1, Lcom/conceptglobal/imaterialdesign/R$styleable;->TimePickerDialog:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 229
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_6

    .line 230
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v5

    .line 232
    sget v6, Lcom/conceptglobal/imaterialdesign/R$styleable;->TimePickerDialog_tp_headerHeight:I

    if-ne v5, v6, :cond_0

    .line 233
    invoke-virtual {p1, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mHeaderHeight:I

    goto :goto_1

    .line 234
    :cond_0
    sget v6, Lcom/conceptglobal/imaterialdesign/R$styleable;->TimePickerDialog_tp_textTimeColor:I

    if-ne v5, v6, :cond_1

    .line 235
    invoke-virtual {p1, v5, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mTextTimeColor:I

    goto :goto_1

    .line 236
    :cond_1
    sget v6, Lcom/conceptglobal/imaterialdesign/R$styleable;->TimePickerDialog_tp_textTimeSize:I

    if-ne v5, v6, :cond_2

    .line 237
    invoke-virtual {p1, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mTextTimeSize:I

    goto :goto_1

    .line 238
    :cond_2
    sget v6, Lcom/conceptglobal/imaterialdesign/R$styleable;->TimePickerDialog_tp_leadingZero:I

    if-ne v5, v6, :cond_3

    .line 239
    invoke-virtual {p1, v5, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mIsLeadingZero:Z

    goto :goto_1

    .line 240
    :cond_3
    sget v6, Lcom/conceptglobal/imaterialdesign/R$styleable;->TimePickerDialog_tp_am:I

    if-ne v5, v6, :cond_4

    .line 241
    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 242
    :cond_4
    sget v6, Lcom/conceptglobal/imaterialdesign/R$styleable;->TimePickerDialog_tp_pm:I

    if-ne v5, v6, :cond_5

    .line 243
    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_5
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 246
    :cond_6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-nez v1, :cond_7

    .line 249
    invoke-static {v2}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    :cond_7
    const/4 p1, 0x1

    if-nez v3, :cond_8

    .line 252
    invoke-static {p1}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    :cond_8
    const/4 v0, 0x2

    .line 254
    new-array v0, v0, [[I

    const v4, -0x10100a0

    filled-new-array {v4}, [I

    move-result-object v4

    aput-object v4, v0, v2

    const v4, 0x10100a0

    filled-new-array {v4}, [I

    move-result-object v4

    aput-object v4, v0, p1

    .line 258
    iget-object v4, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mTimePicker:Lcom/conceptglobal/imaterialdesign/widget/TimePicker;

    .line 259
    invoke-virtual {v4}, Lcom/conceptglobal/imaterialdesign/widget/TimePicker;->getTextColor()I

    move-result v4

    iget-object v5, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mTimePicker:Lcom/conceptglobal/imaterialdesign/widget/TimePicker;

    .line 260
    invoke-virtual {v5}, Lcom/conceptglobal/imaterialdesign/widget/TimePicker;->getTextHighlightColor()I

    move-result v5

    filled-new-array {v4, v5}, [I

    move-result-object v4

    .line 263
    iget-object v5, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mAmView:Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;

    iget-object v6, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mTimePicker:Lcom/conceptglobal/imaterialdesign/widget/TimePicker;

    invoke-virtual {v6}, Lcom/conceptglobal/imaterialdesign/widget/TimePicker;->getSelectionColor()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;->setBackgroundColor(I)V

    .line 264
    iget-object v5, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mAmView:Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;

    iget-object v6, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mTimePicker:Lcom/conceptglobal/imaterialdesign/widget/TimePicker;

    invoke-virtual {v6}, Lcom/conceptglobal/imaterialdesign/widget/TimePicker;->getAnimDuration()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;->setAnimDuration(I)V

    .line 265
    iget-object v5, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mAmView:Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;

    iget-object v6, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mTimePicker:Lcom/conceptglobal/imaterialdesign/widget/TimePicker;

    invoke-virtual {v6}, Lcom/conceptglobal/imaterialdesign/widget/TimePicker;->getInInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v6

    iget-object v7, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mTimePicker:Lcom/conceptglobal/imaterialdesign/widget/TimePicker;

    invoke-virtual {v7}, Lcom/conceptglobal/imaterialdesign/widget/TimePicker;->getOutInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;->setInterpolator(Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)V

    .line 266
    iget-object v5, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mAmView:Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;

    iget-object v6, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mTimePicker:Lcom/conceptglobal/imaterialdesign/widget/TimePicker;

    invoke-virtual {v6}, Lcom/conceptglobal/imaterialdesign/widget/TimePicker;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 267
    iget-object v5, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mAmView:Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;

    iget-object v6, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mTimePicker:Lcom/conceptglobal/imaterialdesign/widget/TimePicker;

    invoke-virtual {v6}, Lcom/conceptglobal/imaterialdesign/widget/TimePicker;->getTextSize()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v2, v6}, Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;->setTextSize(IF)V

    .line 268
    iget-object v5, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mAmView:Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;

    new-instance v6, Landroid/content/res/ColorStateList;

    invoke-direct {v6, v0, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v5, v6}, Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 269
    iget-object v5, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mAmView:Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;

    invoke-virtual {v5, v1}, Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mPmView:Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;

    iget-object v5, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mTimePicker:Lcom/conceptglobal/imaterialdesign/widget/TimePicker;

    invoke-virtual {v5}, Lcom/conceptglobal/imaterialdesign/widget/TimePicker;->getSelectionColor()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;->setBackgroundColor(I)V

    .line 272
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mPmView:Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;

    iget-object v5, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mTimePicker:Lcom/conceptglobal/imaterialdesign/widget/TimePicker;

    invoke-virtual {v5}, Lcom/conceptglobal/imaterialdesign/widget/TimePicker;->getAnimDuration()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;->setAnimDuration(I)V

    .line 273
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mPmView:Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;

    iget-object v5, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mTimePicker:Lcom/conceptglobal/imaterialdesign/widget/TimePicker;

    invoke-virtual {v5}, Lcom/conceptglobal/imaterialdesign/widget/TimePicker;->getInInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v5

    iget-object v6, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mTimePicker:Lcom/conceptglobal/imaterialdesign/widget/TimePicker;

    invoke-virtual {v6}, Lcom/conceptglobal/imaterialdesign/widget/TimePicker;->getOutInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;->setInterpolator(Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)V

    .line 274
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mPmView:Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;

    iget-object v5, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mTimePicker:Lcom/conceptglobal/imaterialdesign/widget/TimePicker;

    invoke-virtual {v5}, Lcom/conceptglobal/imaterialdesign/widget/TimePicker;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 275
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mPmView:Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;

    iget-object v5, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mTimePicker:Lcom/conceptglobal/imaterialdesign/widget/TimePicker;

    invoke-virtual {v5}, Lcom/conceptglobal/imaterialdesign/widget/TimePicker;->getTextSize()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1, v2, v5}, Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;->setTextSize(IF)V

    .line 276
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mPmView:Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;

    new-instance v5, Landroid/content/res/ColorStateList;

    invoke-direct {v5, v0, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v1, v5}, Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 277
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mPmView:Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;

    invoke-virtual {v0, v3}, Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mTimePicker:Lcom/conceptglobal/imaterialdesign/widget/TimePicker;

    invoke-virtual {v1}, Lcom/conceptglobal/imaterialdesign/widget/TimePicker;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 281
    iget-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mIsLeadingZero:Z

    const-string v1, "%02d"

    if-eqz v0, :cond_9

    move-object v0, v1

    goto :goto_2

    :cond_9
    const-string v0, "%d"

    :goto_2
    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mTimePicker:Lcom/conceptglobal/imaterialdesign/widget/TimePicker;

    invoke-virtual {v3}, Lcom/conceptglobal/imaterialdesign/widget/TimePicker;->is24Hour()Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mTimePicker:Lcom/conceptglobal/imaterialdesign/widget/TimePicker;

    invoke-virtual {v3}, Lcom/conceptglobal/imaterialdesign/widget/TimePicker;->getHour()I

    move-result v3

    if-nez v3, :cond_a

    const/16 v3, 0xc

    goto :goto_3

    :cond_a
    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mTimePicker:Lcom/conceptglobal/imaterialdesign/widget/TimePicker;

    invoke-virtual {v3}, Lcom/conceptglobal/imaterialdesign/widget/TimePicker;->getHour()I

    move-result v3

    :goto_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v4, p1, [Ljava/lang/Object;

    aput-object v3, v4, v2

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mHour:Ljava/lang/String;

    .line 282
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mTimePicker:Lcom/conceptglobal/imaterialdesign/widget/TimePicker;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/widget/TimePicker;->getMinute()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v3, p1, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mMinute:Ljava/lang/String;

    .line 284
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mTimePicker:Lcom/conceptglobal/imaterialdesign/widget/TimePicker;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/widget/TimePicker;->is24Hour()Z

    move-result v0

    if-nez v0, :cond_c

    .line 285
    iget-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mIsAm:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mAmView:Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;

    goto :goto_4

    :cond_b
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mPmView:Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;

    :goto_4
    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mMidday:Ljava/lang/String;

    .line 287
    :cond_c
    iput-boolean p1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mLocationDirty:Z

    .line 288
    iget p1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mHeaderRealWidth:I

    iget v0, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mHeaderRealHeight:I

    invoke-virtual {p0, v2, v2, p1, v0}, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->invalidate(IIII)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 548
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 550
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 551
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mTimePicker:Lcom/conceptglobal/imaterialdesign/widget/TimePicker;

    invoke-virtual {v1}, Lcom/conceptglobal/imaterialdesign/widget/TimePicker;->getSelectionColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 552
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mHeaderBackground:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 554
    invoke-direct {p0}, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->measureTimeText()V

    .line 556
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mTextTimeSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 557
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mTimePicker:Lcom/conceptglobal/imaterialdesign/widget/TimePicker;

    invoke-virtual {v1}, Lcom/conceptglobal/imaterialdesign/widget/TimePicker;->getMode()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mTimePicker:Lcom/conceptglobal/imaterialdesign/widget/TimePicker;

    invoke-virtual {v1}, Lcom/conceptglobal/imaterialdesign/widget/TimePicker;->getTextHighlightColor()I

    move-result v1

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mTextTimeColor:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 558
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mHour:Ljava/lang/String;

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mHourX:F

    iget v2, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mBaseY:F

    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 560
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mTextTimeColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 561
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mDividerX:F

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mBaseY:F

    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mPaint:Landroid/graphics/Paint;

    const-string v3, ":"

    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 563
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mTimePicker:Lcom/conceptglobal/imaterialdesign/widget/TimePicker;

    invoke-virtual {v1}, Lcom/conceptglobal/imaterialdesign/widget/TimePicker;->getMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mTimePicker:Lcom/conceptglobal/imaterialdesign/widget/TimePicker;

    invoke-virtual {v1}, Lcom/conceptglobal/imaterialdesign/widget/TimePicker;->getTextHighlightColor()I

    move-result v1

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mTextTimeColor:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 564
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mMinute:Ljava/lang/String;

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mMinuteX:F

    iget v2, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mBaseY:F

    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 566
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mTimePicker:Lcom/conceptglobal/imaterialdesign/widget/TimePicker;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/widget/TimePicker;->is24Hour()Z

    move-result v0

    if-nez v0, :cond_2

    .line 567
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mTimePicker:Lcom/conceptglobal/imaterialdesign/widget/TimePicker;

    invoke-virtual {v1}, Lcom/conceptglobal/imaterialdesign/widget/TimePicker;->getTextSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 568
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mTextTimeColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 569
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mMidday:Ljava/lang/String;

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mMiddayX:F

    iget v2, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mBaseY:F

    iget-object v3, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method public getFormattedTime(Ljava/text/DateFormat;)Ljava/lang/String;
    .locals 3

    .line 338
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    .line 339
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->getHour()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    .line 340
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->getMinute()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    const/4 v2, 0x0

    .line 341
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    .line 342
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 344
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHour()I
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mTimePicker:Lcom/conceptglobal/imaterialdesign/widget/TimePicker;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/widget/TimePicker;->is24Hour()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mIsAm:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mTimePicker:Lcom/conceptglobal/imaterialdesign/widget/TimePicker;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/widget/TimePicker;->getHour()I

    move-result v0

    add-int/lit8 v0, v0, 0xc

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mTimePicker:Lcom/conceptglobal/imaterialdesign/widget/TimePicker;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/widget/TimePicker;->getHour()I

    move-result v0

    :goto_1
    return v0
.end method

.method public getMinute()I
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mTimePicker:Lcom/conceptglobal/imaterialdesign/widget/TimePicker;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/widget/TimePicker;->getMinute()I

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 353
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mAmView:Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->setAm(ZZ)V

    return-void
.end method

.method public onHourChanged(II)V
    .locals 4

    .line 363
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mTimePicker:Lcom/conceptglobal/imaterialdesign/widget/TimePicker;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/widget/TimePicker;->is24Hour()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mIsAm:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0xc

    .line 365
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mIsLeadingZero:Z

    if-eqz v0, :cond_2

    const-string v0, "%02d"

    goto :goto_1

    :cond_2
    const-string v0, "%d"

    :goto_1
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mTimePicker:Lcom/conceptglobal/imaterialdesign/widget/TimePicker;

    invoke-virtual {v1}, Lcom/conceptglobal/imaterialdesign/widget/TimePicker;->is24Hour()Z

    move-result v1

    if-nez v1, :cond_3

    if-nez p2, :cond_3

    const/16 p2, 0xc

    :cond_3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mHour:Ljava/lang/String;

    .line 366
    iput-boolean v1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mLocationDirty:Z

    .line 367
    iget p2, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mHeaderRealWidth:I

    iget v0, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mHeaderRealHeight:I

    invoke-virtual {p0, v3, v3, p2, v0}, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->invalidate(IIII)V

    .line 369
    iget-object p2, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mOnTimeChangedListener:Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$OnTimeChangedListener;

    if-eqz p2, :cond_4

    .line 370
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->getMinute()I

    move-result v0

    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->getHour()I

    move-result v1

    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->getMinute()I

    move-result v2

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$OnTimeChangedListener;->onTimeChanged(IIII)V

    :cond_4
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 490
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 491
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mTimePicker:Lcom/conceptglobal/imaterialdesign/widget/TimePicker;

    invoke-virtual {p1}, Lcom/conceptglobal/imaterialdesign/widget/TimePicker;->is24Hour()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mCheckBoxSize:I

    :goto_1
    if-eqz p3, :cond_3

    .line 494
    iget-object p3, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->this$0:Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;

    iget p3, p3, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;->mContentPadding:I

    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->this$0:Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;

    iget v0, v0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;->mActionPadding:I

    add-int/2addr p3, v0

    .line 495
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->this$0:Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;

    iget v0, v0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;->mContentPadding:I

    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->this$0:Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;

    iget v1, v1, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;->mActionPadding:I

    sub-int/2addr v0, v1

    if-lez p1, :cond_2

    .line 498
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mAmView:Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;

    sub-int v0, p5, v0

    sub-int v2, v0, p1

    add-int v3, p3, p1

    invoke-virtual {v1, p3, v2, v3, v0}, Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;->layout(IIII)V

    .line 499
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mPmView:Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;

    sub-int p3, p4, p3

    sub-int v3, p3, p1

    invoke-virtual {v1, v3, v2, p3, v0}, Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;->layout(IIII)V

    .line 502
    :cond_2
    iget p3, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mHeaderRealHeight:I

    sub-int/2addr p5, p1

    .line 504
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mTimePicker:Lcom/conceptglobal/imaterialdesign/widget/TimePicker;

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/conceptglobal/imaterialdesign/widget/TimePicker;->layout(IIII)V

    goto :goto_2

    .line 507
    :cond_3
    div-int/lit8 p2, p4, 0x2

    iget-object p3, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mTimePicker:Lcom/conceptglobal/imaterialdesign/widget/TimePicker;

    invoke-virtual {p3}, Lcom/conceptglobal/imaterialdesign/widget/TimePicker;->getMeasuredWidth()I

    move-result p3

    sub-int p3, p2, p3

    div-int/lit8 p3, p3, 0x2

    .line 508
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mTimePicker:Lcom/conceptglobal/imaterialdesign/widget/TimePicker;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/widget/TimePicker;->getMeasuredHeight()I

    move-result v0

    sub-int v0, p5, v0

    div-int/lit8 v0, v0, 0x2

    .line 509
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mTimePicker:Lcom/conceptglobal/imaterialdesign/widget/TimePicker;

    sub-int/2addr p4, p3

    invoke-virtual {v1}, Lcom/conceptglobal/imaterialdesign/widget/TimePicker;->getMeasuredWidth()I

    move-result p3

    sub-int p3, p4, p3

    iget-object v2, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mTimePicker:Lcom/conceptglobal/imaterialdesign/widget/TimePicker;

    invoke-virtual {v2}, Lcom/conceptglobal/imaterialdesign/widget/TimePicker;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, p3, v0, p4, v2}, Lcom/conceptglobal/imaterialdesign/widget/TimePicker;->layout(IIII)V

    if-lez p1, :cond_4

    .line 514
    iget-object p3, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->this$0:Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;

    iget p3, p3, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;->mContentPadding:I

    iget-object p4, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->this$0:Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;

    iget p4, p4, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;->mActionPadding:I

    add-int/2addr p3, p4

    .line 515
    iget-object p4, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->this$0:Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;

    iget p4, p4, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;->mContentPadding:I

    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->this$0:Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;

    iget v0, v0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;->mActionPadding:I

    sub-int/2addr p4, v0

    .line 516
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mAmView:Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;

    sub-int/2addr p5, p4

    sub-int p4, p5, p1

    add-int v1, p3, p1

    invoke-virtual {v0, p3, p4, v1, p5}, Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;->layout(IIII)V

    .line 517
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mPmView:Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;

    sub-int/2addr p2, p3

    sub-int p1, p2, p1

    invoke-virtual {v0, p1, p4, p2, p5}, Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;->layout(IIII)V

    :cond_4
    :goto_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 385
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 386
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 387
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 388
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    .line 390
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 392
    :goto_0
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mTimePicker:Lcom/conceptglobal/imaterialdesign/widget/TimePicker;

    invoke-virtual {v1}, Lcom/conceptglobal/imaterialdesign/widget/TimePicker;->is24Hour()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mCheckBoxSize:I

    :goto_1
    const/high16 v4, -0x80000000

    const/high16 v5, 0x40000000    # 2.0f

    const/16 v6, 0x8

    if-eqz v3, :cond_4

    if-ne p2, v4, :cond_2

    add-int p2, v1, v0

    .line 396
    iget v3, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mHeaderHeight:I

    add-int/2addr p2, v3

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_2
    if-lez v1, :cond_3

    .line 399
    iget p2, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mCheckBoxSize:I

    invoke-static {p2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 400
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mAmView:Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;

    invoke-virtual {v1, v2}, Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;->setVisibility(I)V

    .line 401
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mPmView:Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;

    invoke-virtual {v1, v2}, Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;->setVisibility(I)V

    .line 402
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mAmView:Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;

    invoke-virtual {v1, p2, p2}, Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;->measure(II)V

    .line 403
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mPmView:Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;

    invoke-virtual {v1, p2, p2}, Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;->measure(II)V

    goto :goto_2

    .line 406
    :cond_3
    iget-object p2, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mAmView:Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;

    invoke-virtual {p2, v6}, Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;->setVisibility(I)V

    .line 407
    iget-object p2, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mPmView:Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;

    invoke-virtual {p2, v6}, Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;->setVisibility(I)V

    .line 410
    :goto_2
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 411
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mTimePicker:Lcom/conceptglobal/imaterialdesign/widget/TimePicker;

    invoke-virtual {v1, p2, p2}, Lcom/conceptglobal/imaterialdesign/widget/TimePicker;->measure(II)V

    .line 413
    invoke-virtual {p0, v0, p1}, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->setMeasuredDimension(II)V

    goto :goto_4

    .line 416
    :cond_4
    div-int/lit8 v3, v0, 0x2

    if-ne p2, v4, :cond_6

    .line 419
    iget p2, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mHeaderHeight:I

    if-lez v1, :cond_5

    add-int/2addr p2, v1

    iget-object v4, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->this$0:Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;

    iget v4, v4, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;->mContentPadding:I

    add-int/2addr p2, v4

    :cond_5
    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_6
    if-lez v1, :cond_7

    .line 422
    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 423
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mAmView:Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;

    invoke-virtual {v1, v2}, Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;->setVisibility(I)V

    .line 424
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mPmView:Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;

    invoke-virtual {v1, v2}, Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;->setVisibility(I)V

    .line 425
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mAmView:Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;

    invoke-virtual {v1, p2, p2}, Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;->measure(II)V

    .line 426
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mPmView:Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;

    invoke-virtual {v1, p2, p2}, Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;->measure(II)V

    goto :goto_3

    .line 429
    :cond_7
    iget-object p2, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mAmView:Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;

    invoke-virtual {p2, v6}, Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;->setVisibility(I)V

    .line 430
    iget-object p2, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mPmView:Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;

    invoke-virtual {p2, v6}, Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;->setVisibility(I)V

    .line 433
    :goto_3
    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 434
    iget-object v1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mTimePicker:Lcom/conceptglobal/imaterialdesign/widget/TimePicker;

    invoke-virtual {v1, p2, p2}, Lcom/conceptglobal/imaterialdesign/widget/TimePicker;->measure(II)V

    .line 436
    invoke-virtual {p0, v0, p1}, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->setMeasuredDimension(II)V

    :goto_4
    return-void
.end method

.method public onMinuteChanged(II)V
    .locals 4

    .line 375
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "%02d"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mMinute:Ljava/lang/String;

    .line 376
    iput-boolean v1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mLocationDirty:Z

    .line 377
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mHeaderRealWidth:I

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mHeaderRealHeight:I

    invoke-virtual {p0, v3, v3, v0, v1}, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->invalidate(IIII)V

    .line 379
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mOnTimeChangedListener:Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$OnTimeChangedListener;

    if-eqz v0, :cond_0

    .line 380
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->getHour()I

    move-result v1

    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->getHour()I

    move-result v2

    invoke-interface {v0, v1, p1, v2, p2}, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$OnTimeChangedListener;->onTimeChanged(IIII)V

    :cond_0
    return-void
.end method

.method public onModeChanged(I)V
    .locals 2

    .line 358
    iget p1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mHeaderRealWidth:I

    iget v0, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mHeaderRealHeight:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, p1, v0}, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->invalidate(IIII)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 11

    .line 442
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    iget p3, p3, Landroid/content/res/Configuration;->orientation:I

    const/4 p4, 0x0

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 444
    :goto_0
    iput-boolean v0, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mLocationDirty:Z

    .line 445
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mTimePicker:Lcom/conceptglobal/imaterialdesign/widget/TimePicker;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/widget/TimePicker;->is24Hour()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mCheckBoxSize:I

    :goto_1
    const/high16 v1, 0x43340000    # 180.0f

    const/high16 v2, 0x42b40000    # 90.0f

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    if-eqz p3, :cond_3

    .line 448
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mHeaderRealWidth:I

    sub-int/2addr p2, v0

    sub-int/2addr p2, p1

    .line 449
    iput p2, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mHeaderRealHeight:I

    .line 450
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mHeaderBackground:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 451
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->this$0:Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;

    invoke-static {p1}, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;->access$000(Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;)F

    move-result p1

    cmpl-float p1, p1, v4

    if-nez p1, :cond_2

    .line 452
    iget-object v5, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mHeaderBackground:Landroid/graphics/Path;

    iget p1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mHeaderRealWidth:I

    int-to-float v8, p1

    iget p1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mHeaderRealHeight:I

    int-to-float v9, p1

    sget-object v10, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto/16 :goto_2

    .line 454
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mHeaderBackground:Landroid/graphics/Path;

    iget p2, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mHeaderRealHeight:I

    int-to-float p2, p2

    invoke-virtual {p1, v4, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 455
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mHeaderBackground:Landroid/graphics/Path;

    iget-object p2, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->this$0:Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;

    invoke-static {p2}, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;->access$000(Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;)F

    move-result p2

    invoke-virtual {p1, v4, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 456
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mRect:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->this$0:Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;

    invoke-static {p2}, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;->access$000(Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;)F

    move-result p2

    mul-float p2, p2, v3

    iget-object p3, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->this$0:Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;

    invoke-static {p3}, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;->access$000(Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;)F

    move-result p3

    mul-float p3, p3, v3

    invoke-virtual {p1, v4, v4, p2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 457
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mHeaderBackground:Landroid/graphics/Path;

    iget-object p2, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mRect:Landroid/graphics/RectF;

    invoke-virtual {p1, p2, v1, v2, p4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 458
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mHeaderBackground:Landroid/graphics/Path;

    iget p2, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mHeaderRealWidth:I

    int-to-float p2, p2

    iget-object p3, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->this$0:Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;

    invoke-static {p3}, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;->access$000(Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;)F

    move-result p3

    sub-float/2addr p2, p3

    invoke-virtual {p1, p2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 459
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mRect:Landroid/graphics/RectF;

    iget p2, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mHeaderRealWidth:I

    int-to-float p2, p2

    iget-object p3, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->this$0:Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;

    invoke-static {p3}, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;->access$000(Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;)F

    move-result p3

    mul-float p3, p3, v3

    sub-float/2addr p2, p3

    iget p3, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mHeaderRealWidth:I

    int-to-float p3, p3

    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->this$0:Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;

    invoke-static {v0}, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;->access$000(Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;)F

    move-result v0

    mul-float v0, v0, v3

    invoke-virtual {p1, p2, v4, p3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 460
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mHeaderBackground:Landroid/graphics/Path;

    iget-object p2, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mRect:Landroid/graphics/RectF;

    const/high16 p3, 0x43870000    # 270.0f

    invoke-virtual {p1, p2, p3, v2, p4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 461
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mHeaderBackground:Landroid/graphics/Path;

    iget p2, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mHeaderRealWidth:I

    int-to-float p2, p2

    iget p3, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mHeaderRealHeight:I

    int-to-float p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 462
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mHeaderBackground:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    goto :goto_2

    .line 466
    :cond_3
    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mHeaderRealWidth:I

    if-lez v0, :cond_4

    sub-int/2addr p2, v0

    .line 467
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->this$0:Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;

    iget p1, p1, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;->mContentPadding:I

    sub-int/2addr p2, p1

    :cond_4
    iput p2, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mHeaderRealHeight:I

    .line 468
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mHeaderBackground:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 469
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->this$0:Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;

    invoke-static {p1}, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;->access$000(Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;)F

    move-result p1

    cmpl-float p1, p1, v4

    if-nez p1, :cond_5

    .line 470
    iget-object v5, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mHeaderBackground:Landroid/graphics/Path;

    iget p1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mHeaderRealWidth:I

    int-to-float v8, p1

    iget p1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mHeaderRealHeight:I

    int-to-float v9, p1

    sget-object v10, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto :goto_2

    .line 472
    :cond_5
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mHeaderBackground:Landroid/graphics/Path;

    iget p2, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mHeaderRealHeight:I

    int-to-float p2, p2

    invoke-virtual {p1, v4, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 473
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mHeaderBackground:Landroid/graphics/Path;

    iget-object p2, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->this$0:Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;

    invoke-static {p2}, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;->access$000(Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;)F

    move-result p2

    invoke-virtual {p1, v4, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 474
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mRect:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->this$0:Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;

    invoke-static {p2}, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;->access$000(Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;)F

    move-result p2

    mul-float p2, p2, v3

    iget-object p3, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->this$0:Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;

    invoke-static {p3}, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;->access$000(Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog;)F

    move-result p3

    mul-float p3, p3, v3

    invoke-virtual {p1, v4, v4, p2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 475
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mHeaderBackground:Landroid/graphics/Path;

    iget-object p2, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mRect:Landroid/graphics/RectF;

    invoke-virtual {p1, p2, v1, v2, p4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 476
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mHeaderBackground:Landroid/graphics/Path;

    iget p2, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mHeaderRealWidth:I

    int-to-float p2, p2

    invoke-virtual {p1, p2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 477
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mHeaderBackground:Landroid/graphics/Path;

    iget p2, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mHeaderRealWidth:I

    int-to-float p2, p2

    iget p3, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mHeaderRealHeight:I

    int-to-float p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 478
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mHeaderBackground:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    :goto_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 579
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 584
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_1

    goto/16 :goto_0

    .line 593
    :cond_1
    iget v4, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mHourX:F

    iget v7, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mBaseY:F

    iget v0, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mBaseHeight:F

    sub-float v5, v7, v0

    iget v0, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mHourWidth:F

    add-float v6, v4, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->isTouched(FFFFFF)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 594
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mTimePicker:Lcom/conceptglobal/imaterialdesign/widget/TimePicker;

    invoke-virtual {v0, v1, v2}, Lcom/conceptglobal/imaterialdesign/widget/TimePicker;->setMode(IZ)V

    .line 596
    :cond_2
    iget v4, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mMinuteX:F

    iget v7, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mBaseY:F

    iget v0, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mBaseHeight:F

    sub-float v5, v7, v0

    iget v0, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mMinuteWidth:F

    add-float v6, v4, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->isTouched(FFFFFF)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 597
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mTimePicker:Lcom/conceptglobal/imaterialdesign/widget/TimePicker;

    invoke-virtual {p1, v2, v2}, Lcom/conceptglobal/imaterialdesign/widget/TimePicker;->setMode(IZ)V

    goto :goto_0

    .line 586
    :cond_3
    iget v4, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mHourX:F

    iget v7, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mBaseY:F

    iget v0, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mBaseHeight:F

    sub-float v5, v7, v0

    iget v0, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mHourWidth:F

    add-float v6, v4, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->isTouched(FFFFFF)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 587
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mTimePicker:Lcom/conceptglobal/imaterialdesign/widget/TimePicker;

    invoke-virtual {p1}, Lcom/conceptglobal/imaterialdesign/widget/TimePicker;->getMode()I

    move-result p1

    if-ne p1, v2, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1

    .line 589
    :cond_5
    iget v4, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mMinuteX:F

    iget v7, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mBaseY:F

    iget v0, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mBaseHeight:F

    sub-float v5, v7, v0

    iget v0, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mMinuteWidth:F

    add-float v6, v4, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->isTouched(FFFFFF)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 590
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mTimePicker:Lcom/conceptglobal/imaterialdesign/widget/TimePicker;

    invoke-virtual {p1}, Lcom/conceptglobal/imaterialdesign/widget/TimePicker;->getMode()I

    move-result p1

    if-nez p1, :cond_6

    const/4 v1, 0x1

    :cond_6
    :goto_0
    return v1
.end method

.method public setHour(I)V
    .locals 2

    .line 292
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mTimePicker:Lcom/conceptglobal/imaterialdesign/widget/TimePicker;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/widget/TimePicker;->is24Hour()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0xb

    const/4 v1, 0x0

    if-le p1, v0, :cond_0

    const/16 v0, 0x18

    if-ge p1, v0, :cond_0

    .line 294
    invoke-direct {p0, v1, v1}, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->setAm(ZZ)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 296
    invoke-direct {p0, v0, v1}, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->setAm(ZZ)V

    .line 298
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mTimePicker:Lcom/conceptglobal/imaterialdesign/widget/TimePicker;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/TimePicker;->setHour(I)V

    return-void
.end method

.method public setMinute(I)V
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mTimePicker:Lcom/conceptglobal/imaterialdesign/widget/TimePicker;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/widget/TimePicker;->setMinute(I)V

    return-void
.end method

.method public setOnTimeChangedListener(Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$OnTimeChangedListener;)V
    .locals 0

    .line 348
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$TimePickerLayout;->mOnTimeChangedListener:Lcom/conceptglobal/imaterialdesign/app/TimePickerDialog$OnTimeChangedListener;

    return-void
.end method

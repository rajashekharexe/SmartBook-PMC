.class public Lcom/conceptglobal/pmc/utils/ScrollTextView;
.super Landroid/widget/TextView;
.source "ScrollTextView.java"


# instance fields
.field context:Landroid/content/Context;

.field private mPaused:Z

.field private mRndDuration:I

.field private mSlr:Landroid/widget/Scroller;

.field private mXPaused:I

.field val:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, v0}, Lcom/conceptglobal/pmc/utils/ScrollTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    iput-object p1, p0, Lcom/conceptglobal/pmc/utils/ScrollTextView;->context:Landroid/content/Context;

    .line 44
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/utils/ScrollTextView;->setSingleLine()V

    .line 45
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/utils/ScrollTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 p1, 0x4

    .line 46
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/utils/ScrollTextView;->setVisibility(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010084

    .line 54
    invoke-direct {p0, p1, p2, v0}, Lcom/conceptglobal/pmc/utils/ScrollTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/utils/ScrollTextView;->setSingleLine()V

    const/4 p1, 0x0

    .line 57
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/utils/ScrollTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 p1, 0x4

    .line 58
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/utils/ScrollTextView;->setVisibility(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x2710

    .line 24
    iput p1, p0, Lcom/conceptglobal/pmc/utils/ScrollTextView;->mRndDuration:I

    const/4 p1, 0x0

    .line 27
    iput p1, p0, Lcom/conceptglobal/pmc/utils/ScrollTextView;->mXPaused:I

    const/4 p2, 0x1

    .line 30
    iput-boolean p2, p0, Lcom/conceptglobal/pmc/utils/ScrollTextView;->mPaused:Z

    .line 33
    iput p1, p0, Lcom/conceptglobal/pmc/utils/ScrollTextView;->val:I

    .line 68
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/utils/ScrollTextView;->setSingleLine()V

    const/4 p1, 0x0

    .line 69
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/utils/ScrollTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 p1, 0x4

    .line 70
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/utils/ScrollTextView;->setVisibility(I)V

    return-void
.end method

.method private calculateScrollingLen()I
    .locals 5

    .line 155
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/utils/ScrollTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 156
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 157
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/utils/ScrollTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 158
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 159
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/utils/ScrollTextView;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private resumeScroll()V
    .locals 10

    .line 102
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/utils/ScrollTextView;->mPaused:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 107
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/utils/ScrollTextView;->setHorizontallyScrolling(Z)V

    .line 110
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/utils/ScrollTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/utils/ScrollTextView;->mSlr:Landroid/widget/Scroller;

    .line 111
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/utils/ScrollTextView;->setScroller(Landroid/widget/Scroller;)V

    .line 113
    invoke-direct {p0}, Lcom/conceptglobal/pmc/utils/ScrollTextView;->calculateScrollingLen()I

    move-result v0

    .line 114
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/utils/ScrollTextView;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/conceptglobal/pmc/utils/ScrollTextView;->mXPaused:I

    add-int/2addr v1, v2

    sub-int v5, v0, v1

    const/16 v1, 0x2710

    if-gt v0, v1, :cond_1

    .line 117
    iput v1, p0, Lcom/conceptglobal/pmc/utils/ScrollTextView;->mRndDuration:I

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    goto :goto_1

    :cond_1
    const v2, 0xc350

    if-gt v0, v2, :cond_2

    const/16 v1, 0x7530

    .line 120
    iput v1, p0, Lcom/conceptglobal/pmc/utils/ScrollTextView;->mRndDuration:I

    const-wide/high16 v1, 0x4014000000000000L    # 5.0

    goto :goto_1

    :cond_2
    const-wide/high16 v3, 0x4049000000000000L    # 50.0

    const v6, 0x186a0

    if-lt v0, v2, :cond_3

    if-ge v0, v6, :cond_3

    const/16 v1, 0x4e20

    .line 124
    iput v1, p0, Lcom/conceptglobal/pmc/utils/ScrollTextView;->mRndDuration:I

    :goto_0
    move-wide v1, v3

    goto :goto_1

    :cond_3
    const v7, 0x249f0

    if-lt v0, v6, :cond_4

    if-ge v0, v7, :cond_4

    .line 127
    iput v2, p0, Lcom/conceptglobal/pmc/utils/ScrollTextView;->mRndDuration:I

    goto :goto_0

    :cond_4
    const v2, 0x2e630

    if-lt v0, v7, :cond_5

    if-ge v0, v2, :cond_5

    const v1, 0xea60

    .line 130
    iput v1, p0, Lcom/conceptglobal/pmc/utils/ScrollTextView;->mRndDuration:I

    const-wide v1, 0x4052c00000000000L    # 75.0

    goto :goto_1

    :cond_5
    const-wide v3, 0x405cc00000000000L    # 115.0

    if-lt v0, v2, :cond_6

    .line 133
    iput v1, p0, Lcom/conceptglobal/pmc/utils/ScrollTextView;->mRndDuration:I

    goto :goto_0

    :cond_6
    if-lt v0, v2, :cond_7

    .line 136
    iput v1, p0, Lcom/conceptglobal/pmc/utils/ScrollTextView;->mRndDuration:I

    goto :goto_0

    :cond_7
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 139
    :goto_1
    new-instance v3, Ljava/lang/Double;

    iget v4, p0, Lcom/conceptglobal/pmc/utils/ScrollTextView;->mRndDuration:I

    mul-int v4, v4, v5

    int-to-double v6, v4

    mul-double v6, v6, v1

    int-to-double v8, v0

    div-double/2addr v6, v8

    invoke-direct {v3, v6, v7}, Ljava/lang/Double;-><init>(D)V

    .line 140
    invoke-virtual {v3}, Ljava/lang/Double;->intValue()I

    .line 141
    new-instance v0, Ljava/lang/Double;

    iget v3, p0, Lcom/conceptglobal/pmc/utils/ScrollTextView;->mRndDuration:I

    mul-int v3, v3, v5

    int-to-double v3, v3

    mul-double v3, v3, v1

    div-double/2addr v3, v8

    invoke-direct {v0, v3, v4}, Ljava/lang/Double;-><init>(D)V

    .line 142
    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v7

    const/4 v0, 0x0

    .line 143
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/utils/ScrollTextView;->setVisibility(I)V

    .line 144
    iget-object v2, p0, Lcom/conceptglobal/pmc/utils/ScrollTextView;->mSlr:Landroid/widget/Scroller;

    iget v3, p0, Lcom/conceptglobal/pmc/utils/ScrollTextView;->mXPaused:I

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 145
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/utils/ScrollTextView;->invalidate()V

    .line 146
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/utils/ScrollTextView;->mPaused:Z

    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 3

    .line 190
    invoke-super {p0}, Landroid/widget/TextView;->computeScroll()V

    .line 192
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/ScrollTextView;->mSlr:Landroid/widget/Scroller;

    if-nez v0, :cond_0

    return-void

    .line 194
    :cond_0
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/conceptglobal/pmc/utils/ScrollTextView;->mPaused:Z

    if-nez v0, :cond_1

    .line 195
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/utils/ScrollTextView;->pauseScroll()V

    .line 196
    iget v0, p0, Lcom/conceptglobal/pmc/utils/ScrollTextView;->val:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/conceptglobal/pmc/utils/ScrollTextView;->val:I

    .line 197
    new-instance v0, Landroid/content/Intent;

    const-string v1, "gettickercall"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 198
    const-string v1, "tickerpos"

    iget v2, p0, Lcom/conceptglobal/pmc/utils/ScrollTextView;->val:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 199
    iget-object v1, p0, Lcom/conceptglobal/pmc/utils/ScrollTextView;->context:Landroid/content/Context;

    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    :cond_1
    return-void
.end method

.method public getRndDuration()I
    .locals 1

    .line 204
    iget v0, p0, Lcom/conceptglobal/pmc/utils/ScrollTextView;->mRndDuration:I

    return v0
.end method

.method public getVal()I
    .locals 2

    .line 89
    iget v0, p0, Lcom/conceptglobal/pmc/utils/ScrollTextView;->val:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/conceptglobal/pmc/utils/ScrollTextView;->val:I

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .line 212
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/utils/ScrollTextView;->mPaused:Z

    return v0
.end method

.method public pauseScroll()V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/ScrollTextView;->mSlr:Landroid/widget/Scroller;

    if-nez v0, :cond_0

    return-void

    .line 172
    :cond_0
    iget-boolean v1, p0, Lcom/conceptglobal/pmc/utils/ScrollTextView;->mPaused:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    .line 175
    iput-boolean v1, p0, Lcom/conceptglobal/pmc/utils/ScrollTextView;->mPaused:Z

    .line 179
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/utils/ScrollTextView;->mXPaused:I

    .line 181
    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/ScrollTextView;->mSlr:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    return-void
.end method

.method public setRndDuration(I)V
    .locals 0

    .line 208
    iput p1, p0, Lcom/conceptglobal/pmc/utils/ScrollTextView;->mRndDuration:I

    return-void
.end method

.method public setVal(I)V
    .locals 0

    .line 93
    iput p1, p0, Lcom/conceptglobal/pmc/utils/ScrollTextView;->val:I

    return-void
.end method

.method public startScroll()V
    .locals 1

    .line 81
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/utils/ScrollTextView;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/conceptglobal/pmc/utils/ScrollTextView;->mXPaused:I

    const/4 v0, 0x1

    .line 83
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/utils/ScrollTextView;->mPaused:Z

    .line 84
    invoke-direct {p0}, Lcom/conceptglobal/pmc/utils/ScrollTextView;->resumeScroll()V

    return-void
.end method

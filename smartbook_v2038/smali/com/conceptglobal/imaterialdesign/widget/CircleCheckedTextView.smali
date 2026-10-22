.class public Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;
.super Landroid/widget/CheckedTextView;
.source "CircleCheckedTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView$OnCheckedChangeListener;
    }
.end annotation


# instance fields
.field private mBackground:Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable;

.field private mCheckedChangeListener:Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView$OnCheckedChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 27
    invoke-direct {p0, p1}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 29
    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 35
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 41
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 48
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method protected init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    const/16 p1, 0x11

    .line 52
    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;->setGravity(I)V

    const/4 p1, 0x0

    .line 53
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;->setPadding(IIII)V

    .line 55
    new-instance p2, Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable;

    invoke-direct {p2}, Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable;-><init>()V

    iput-object p2, p0, Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;->mBackground:Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable;

    .line 56
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;->isInEditMode()Z

    move-result p3

    invoke-virtual {p2, p3}, Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable;->setInEditMode(Z)V

    .line 57
    iget-object p2, p0, Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;->mBackground:Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable;

    invoke-virtual {p2, p1}, Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable;->setAnimEnable(Z)V

    .line 58
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;->mBackground:Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable;

    invoke-static {p0, p1}, Lcom/conceptglobal/imaterialdesign/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 59
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;->mBackground:Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable;->setAnimEnable(Z)V

    return-void
.end method

.method public setAnimDuration(I)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;->mBackground:Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable;->setAnimDuration(I)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;->mBackground:Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable;->setColor(I)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 95
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;->isChecked()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 98
    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 100
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;->mCheckedChangeListener:Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView$OnCheckedChangeListener;

    if-eqz v0, :cond_0

    .line 101
    invoke-interface {v0, p0, p1}, Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView$OnCheckedChangeListener;->onCheckedChanged(Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;Z)V

    :cond_0
    return-void
.end method

.method public setCheckedImmediately(Z)V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;->mBackground:Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable;->setAnimEnable(Z)V

    .line 107
    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;->setChecked(Z)V

    .line 108
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;->mBackground:Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable;->setAnimEnable(Z)V

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;->mBackground:Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable;

    invoke-virtual {v0, p1, p2}, Lcom/conceptglobal/imaterialdesign/drawable/CircleDrawable;->setInterpolator(Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView$OnCheckedChangeListener;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView;->mCheckedChangeListener:Lcom/conceptglobal/imaterialdesign/widget/CircleCheckedTextView$OnCheckedChangeListener;

    return-void
.end method

.method public setTextAppearance(I)V
    .locals 0

    .line 68
    invoke-static {p0, p1}, Lcom/conceptglobal/imaterialdesign/util/ViewUtil;->applyTextAppearance(Landroid/widget/TextView;I)V

    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 0

    .line 73
    invoke-static {p0, p2}, Lcom/conceptglobal/imaterialdesign/util/ViewUtil;->applyTextAppearance(Landroid/widget/TextView;I)V

    return-void
.end method

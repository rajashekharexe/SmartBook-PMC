.class public Lcom/conceptglobal/imaterialdesign/widget/RadioButton;
.super Lcom/conceptglobal/imaterialdesign/widget/CompoundButton;
.source "RadioButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/conceptglobal/imaterialdesign/widget/CompoundButton;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/imaterialdesign/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/conceptglobal/imaterialdesign/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/conceptglobal/imaterialdesign/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method protected applyStyle(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 28
    invoke-super {p0, p1, p2, p3, p4}, Lcom/conceptglobal/imaterialdesign/widget/CompoundButton;->applyStyle(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 30
    new-instance v0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable$Builder;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable$Builder;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable$Builder;->build()Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;

    move-result-object p1

    .line 31
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/RadioButton;->isInEditMode()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->setInEditMode(Z)V

    const/4 p2, 0x0

    .line 32
    invoke-virtual {p1, p2}, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->setAnimEnable(Z)V

    .line 33
    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/widget/RadioButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x1

    .line 34
    invoke-virtual {p1, p2}, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->setAnimEnable(Z)V

    return-void
.end method

.method public setCheckedImmediately(Z)V
    .locals 2

    .line 51
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/RadioButton;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/RadioButton;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;

    const/4 v1, 0x0

    .line 53
    invoke-virtual {v0, v1}, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->setAnimEnable(Z)V

    .line 54
    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/widget/RadioButton;->setChecked(Z)V

    const/4 p1, 0x1

    .line 55
    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/drawable/RadioButtonDrawable;->setAnimEnable(Z)V

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/widget/RadioButton;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method public toggle()V
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/RadioButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    invoke-super {p0}, Lcom/conceptglobal/imaterialdesign/widget/CompoundButton;->toggle()V

    :cond_0
    return-void
.end method

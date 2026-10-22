.class public Lcom/conceptglobal/imaterialdesign/widget/CheckBox;
.super Lcom/conceptglobal/imaterialdesign/widget/CompoundButton;
.source "CheckBox.java"


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
    new-instance v0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable$Builder;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable$Builder;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable$Builder;->build()Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;

    move-result-object p1

    .line 31
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/CheckBox;->isInEditMode()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->setInEditMode(Z)V

    const/4 p2, 0x0

    .line 32
    invoke-virtual {p1, p2}, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->setAnimEnable(Z)V

    .line 33
    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x1

    .line 34
    invoke-virtual {p1, p2}, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->setAnimEnable(Z)V

    return-void
.end method

.method public setCheckedImmediately(Z)V
    .locals 2

    .line 42
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/CheckBox;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/widget/CheckBox;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;

    const/4 v1, 0x0

    .line 44
    invoke-virtual {v0, v1}, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->setAnimEnable(Z)V

    .line 45
    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/widget/CheckBox;->setChecked(Z)V

    const/4 p1, 0x1

    .line 46
    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/drawable/CheckBoxDrawable;->setAnimEnable(Z)V

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/widget/CheckBox;->setChecked(Z)V

    :goto_0
    return-void
.end method

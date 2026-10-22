.class public Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "PaddingDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# instance fields
.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mPaddingBottom:I

.field private mPaddingLeft:I

.field private mPaddingRight:I

.field private mPaddingTop:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 26
    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->setWrappedDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public getChangingConfigurations()I
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->mPaddingTop:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->mPaddingBottom:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->mPaddingLeft:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->mPaddingRight:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getMinimumHeight()I
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->mPaddingTop:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->mPaddingBottom:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getMinimumWidth()I
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->mPaddingLeft:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->mPaddingRight:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 6

    .line 161
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 163
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->mPaddingLeft:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 164
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->mPaddingTop:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 165
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->mPaddingRight:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 166
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->mPaddingBottom:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    .line 169
    :cond_1
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->mPaddingLeft:I

    iget v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->mPaddingTop:I

    iget v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->mPaddingRight:I

    iget v5, p0, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->mPaddingBottom:I

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 170
    iget p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->mPaddingLeft:I

    if-nez p1, :cond_3

    iget p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->mPaddingTop:I

    if-nez p1, :cond_3

    iget p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->mPaddingRight:I

    if-nez p1, :cond_3

    iget p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->mPaddingBottom:I

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_1
    move v0, v1

    :goto_2
    return v0
.end method

.method public getPaddingBottom()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->mPaddingBottom:I

    return v0
.end method

.method public getPaddingLeft()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->mPaddingLeft:I

    return v0
.end method

.method public getPaddingRight()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->mPaddingRight:I

    return v0
.end method

.method public getPaddingTop()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->mPaddingTop:I

    return v0
.end method

.method public getState()[I
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getTransparentRegion()Landroid/graphics/Region;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getWrappedDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 180
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->invalidateSelf()V

    return-void
.end method

.method public isAutoMirrored()Z
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->isAutoMirrored(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStateful()Z
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public jumpToCurrentState()V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 116
    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->jumpToCurrentState(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 5

    .line 60
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 61
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->mPaddingLeft:I

    add-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->mPaddingTop:I

    add-int/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->mPaddingRight:I

    sub-int/2addr v3, v4

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->mPaddingBottom:I

    sub-int/2addr p1, v4

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    .line 187
    invoke-virtual {p0, p2, p3, p4}, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    return-void
.end method

.method public setAutoMirrored(Z)V
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 205
    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setAutoMirrored(Landroid/graphics/drawable/Drawable;Z)V

    :cond_0
    return-void
.end method

.method public setChangingConfigurations(I)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    return-void
.end method

.method public setDither(Z)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    :cond_0
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    :cond_0
    return-void
.end method

.method public setHotspot(FF)V
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 234
    invoke-static {v0, p1, p2}, Landroidx/core/graphics/drawable/DrawableCompat;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    :cond_0
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 240
    invoke-static {v0, p1, p2, p3, p4}, Landroidx/core/graphics/drawable/DrawableCompat;->setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V

    :cond_0
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    .line 30
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->mPaddingLeft:I

    .line 31
    iput p2, p0, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->mPaddingTop:I

    .line 32
    iput p3, p0, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->mPaddingRight:I

    .line 33
    iput p4, p0, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->mPaddingBottom:I

    return-void
.end method

.method public setState([I)Z
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setTint(I)V
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 216
    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    :cond_0
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 222
    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 228
    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1

    .line 126
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public setWrappedDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 249
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 252
    :cond_0
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 255
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 258
    :cond_1
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 259
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->invalidateSelf()V

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    .line 194
    invoke-virtual {p0, p2}, Lcom/conceptglobal/imaterialdesign/drawable/PaddingDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method

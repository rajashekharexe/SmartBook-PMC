.class public Lcom/conceptglobal/imaterialdesign/drawable/NavigationDrawerDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "NavigationDrawerDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/imaterialdesign/drawable/NavigationDrawerDrawable$Builder;
    }
.end annotation


# static fields
.field public static final STATE_ARROW:I = 0x1

.field public static final STATE_DRAWER:I


# instance fields
.field private mLineDrawable:Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;

.field private mRippleDrawable:Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;


# direct methods
.method public constructor <init>(Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/NavigationDrawerDrawable;->mRippleDrawable:Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;

    .line 23
    iput-object p2, p0, Lcom/conceptglobal/imaterialdesign/drawable/NavigationDrawerDrawable;->mLineDrawable:Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;

    .line 25
    invoke-virtual {p1, p0}, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 26
    iget-object p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/NavigationDrawerDrawable;->mLineDrawable:Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;

    invoke-virtual {p1, p0}, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/NavigationDrawerDrawable;->mRippleDrawable:Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 48
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/NavigationDrawerDrawable;->mLineDrawable:Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getIconAnimProgress()F
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/NavigationDrawerDrawable;->mLineDrawable:Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->getAnimProgress()F

    move-result v0

    return v0
.end method

.method public getIconState()I
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/NavigationDrawerDrawable;->mLineDrawable:Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;

    invoke-virtual {v0}, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->getLineState()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 82
    invoke-virtual {p0}, Lcom/conceptglobal/imaterialdesign/drawable/NavigationDrawerDrawable;->invalidateSelf()V

    return-void
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/NavigationDrawerDrawable;->mRippleDrawable:Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->onStateChange([I)Z

    move-result p1

    return p1
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    .line 87
    invoke-virtual {p0, p2, p3, p4}, Lcom/conceptglobal/imaterialdesign/drawable/NavigationDrawerDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/NavigationDrawerDrawable;->mRippleDrawable:Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->setAlpha(I)V

    .line 54
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/NavigationDrawerDrawable;->mLineDrawable:Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->setAlpha(I)V

    return-void
.end method

.method public setBounds(IIII)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/NavigationDrawerDrawable;->mRippleDrawable:Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->setBounds(IIII)V

    .line 71
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/NavigationDrawerDrawable;->mLineDrawable:Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->setBounds(IIII)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/NavigationDrawerDrawable;->mRippleDrawable:Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 60
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/NavigationDrawerDrawable;->mLineDrawable:Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setDither(Z)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/NavigationDrawerDrawable;->mRippleDrawable:Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/drawable/ToolbarRippleDrawable;->setDither(Z)V

    .line 77
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/NavigationDrawerDrawable;->mLineDrawable:Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->setDither(Z)V

    return-void
.end method

.method public setIconState(IF)Z
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/NavigationDrawerDrawable;->mLineDrawable:Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;

    invoke-virtual {v0, p1, p2}, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->setLineState(IF)Z

    move-result p1

    return p1
.end method

.method public switchIconState(IZ)V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/NavigationDrawerDrawable;->mLineDrawable:Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;

    invoke-virtual {v0, p1, p2}, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;->switchLineState(IZ)V

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    .line 92
    invoke-virtual {p0, p2}, Lcom/conceptglobal/imaterialdesign/drawable/NavigationDrawerDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method

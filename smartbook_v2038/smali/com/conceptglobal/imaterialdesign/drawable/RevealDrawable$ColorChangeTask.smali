.class public Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable$ColorChangeTask;
.super Ljava/lang/Object;
.source "RevealDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColorChangeTask"
.end annotation


# instance fields
.field public final color:I

.field public final duration:I

.field public final interpolator:Landroid/view/animation/Interpolator;

.field public final isOut:Z

.field public final x:F

.field public final y:F


# direct methods
.method public constructor <init>(IILandroid/view/animation/Interpolator;FFZ)V
    .locals 0

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable$ColorChangeTask;->color:I

    .line 286
    iput p2, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable$ColorChangeTask;->duration:I

    if-nez p3, :cond_0

    .line 287
    new-instance p3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    :cond_0
    iput-object p3, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable$ColorChangeTask;->interpolator:Landroid/view/animation/Interpolator;

    .line 288
    iput p4, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable$ColorChangeTask;->x:F

    .line 289
    iput p5, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable$ColorChangeTask;->y:F

    .line 290
    iput-boolean p6, p0, Lcom/conceptglobal/imaterialdesign/drawable/RevealDrawable$ColorChangeTask;->isOut:Z

    return-void
.end method

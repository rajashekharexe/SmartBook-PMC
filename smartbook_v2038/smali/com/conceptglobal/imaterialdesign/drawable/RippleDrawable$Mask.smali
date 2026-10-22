.class public Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Mask;
.super Ljava/lang/Object;
.source "RippleDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mask"
.end annotation


# static fields
.field public static final TYPE_OVAL:I = 0x1

.field public static final TYPE_RECTANGLE:I


# instance fields
.field final bottom:I

.field final cornerRadius:[F

.field final left:I

.field final right:I

.field final top:I

.field final type:I


# direct methods
.method public constructor <init>(IIIIIIIII)V
    .locals 1

    .line 472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    .line 465
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Mask;->cornerRadius:[F

    .line 473
    iput p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Mask;->type:I

    int-to-float p1, p2

    const/4 p2, 0x0

    .line 475
    aput p1, v0, p2

    const/4 p2, 0x1

    .line 476
    aput p1, v0, p2

    int-to-float p1, p3

    const/4 p2, 0x2

    .line 478
    aput p1, v0, p2

    const/4 p2, 0x3

    .line 479
    aput p1, v0, p2

    int-to-float p1, p4

    const/4 p2, 0x4

    .line 481
    aput p1, v0, p2

    const/4 p2, 0x5

    .line 482
    aput p1, v0, p2

    int-to-float p1, p5

    const/4 p2, 0x6

    .line 484
    aput p1, v0, p2

    const/4 p2, 0x7

    .line 485
    aput p1, v0, p2

    .line 487
    iput p6, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Mask;->left:I

    .line 488
    iput p7, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Mask;->top:I

    .line 489
    iput p8, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Mask;->right:I

    .line 490
    iput p9, p0, Lcom/conceptglobal/imaterialdesign/drawable/RippleDrawable$Mask;->bottom:I

    return-void
.end method

.class public Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$State;
.super Ljava/lang/Object;
.source "LineMorphingDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# instance fields
.field links:[I

.field points:[F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([F[I)V
    .locals 0

    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 382
    iput-object p1, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$State;->points:[F

    .line 383
    iput-object p2, p0, Lcom/conceptglobal/imaterialdesign/drawable/LineMorphingDrawable$State;->links:[I

    return-void
.end method

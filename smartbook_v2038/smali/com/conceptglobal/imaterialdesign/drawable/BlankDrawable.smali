.class public Lcom/conceptglobal/imaterialdesign/drawable/BlankDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "BlankDrawable.java"


# static fields
.field private static mInstance:Lcom/conceptglobal/imaterialdesign/drawable/BlankDrawable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/conceptglobal/imaterialdesign/drawable/BlankDrawable;
    .locals 2

    .line 18
    sget-object v0, Lcom/conceptglobal/imaterialdesign/drawable/BlankDrawable;->mInstance:Lcom/conceptglobal/imaterialdesign/drawable/BlankDrawable;

    if-nez v0, :cond_1

    .line 19
    const-class v0, Lcom/conceptglobal/imaterialdesign/drawable/BlankDrawable;

    monitor-enter v0

    .line 20
    :try_start_0
    sget-object v1, Lcom/conceptglobal/imaterialdesign/drawable/BlankDrawable;->mInstance:Lcom/conceptglobal/imaterialdesign/drawable/BlankDrawable;

    if-nez v1, :cond_0

    .line 21
    new-instance v1, Lcom/conceptglobal/imaterialdesign/drawable/BlankDrawable;

    invoke-direct {v1}, Lcom/conceptglobal/imaterialdesign/drawable/BlankDrawable;-><init>()V

    sput-object v1, Lcom/conceptglobal/imaterialdesign/drawable/BlankDrawable;->mInstance:Lcom/conceptglobal/imaterialdesign/drawable/BlankDrawable;

    .line 22
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 24
    :cond_1
    :goto_0
    sget-object v0, Lcom/conceptglobal/imaterialdesign/drawable/BlankDrawable;->mInstance:Lcom/conceptglobal/imaterialdesign/drawable/BlankDrawable;

    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

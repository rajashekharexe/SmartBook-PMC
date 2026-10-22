.class Lcom/github/amlcurran/showcaseview/targets/Target$1;
.super Ljava/lang/Object;
.source "Target.java"

# interfaces
.implements Lcom/github/amlcurran/showcaseview/targets/Target;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/amlcurran/showcaseview/targets/Target;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPoint()Landroid/graphics/Point;
    .locals 2

    .line 25
    new-instance v0, Landroid/graphics/Point;

    const v1, 0xf4240

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

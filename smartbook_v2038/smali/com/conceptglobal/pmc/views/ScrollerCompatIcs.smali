.class Lcom/conceptglobal/pmc/views/ScrollerCompatIcs;
.super Ljava/lang/Object;
.source "ScrollerCompatIcs.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrVelocity(Landroid/widget/Scroller;)F
    .locals 0

    .line 29
    invoke-virtual {p0}, Landroid/widget/Scroller;->getCurrVelocity()F

    move-result p0

    return p0
.end method

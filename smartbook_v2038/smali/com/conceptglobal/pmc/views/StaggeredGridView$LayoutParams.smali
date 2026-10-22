.class public Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "StaggeredGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/views/StaggeredGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field private static final LAYOUT_ATTRS:[I

.field private static final SPAN_INDEX:I


# instance fields
.field column:I

.field id:J

.field position:I

.field public span:I

.field viewType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x101014d

    .line 1853
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutParams;->LAYOUT_ATTRS:[I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    const/4 v0, -0x1

    .line 1885
    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/4 p1, 0x1

    .line 1862
    iput p1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutParams;->span:I

    const-wide/16 v1, -0x1

    .line 1882
    iput-wide v1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutParams;->id:J

    .line 1887
    iget p1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutParams;->height:I

    if-ne p1, v0, :cond_0

    .line 1888
    const-string p1, "StaggeredGridView"

    const-string v0, "Constructing LayoutParams with height FILL_PARENT - impossible! Falling back to WRAP_CONTENT"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x2

    .line 1890
    iput p1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutParams;->height:I

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 1895
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 1862
    iput v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutParams;->span:I

    const-wide/16 v1, -0x1

    .line 1882
    iput-wide v1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutParams;->id:J

    .line 1897
    iget v1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutParams;->width:I

    const-string v2, "StaggeredGridView"

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 1898
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Inflation setting LayoutParams width to "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutParams;->width:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " - must be MATCH_PARENT"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1900
    iput v3, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutParams;->width:I

    .line 1902
    :cond_0
    iget v1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutParams;->height:I

    if-ne v1, v3, :cond_1

    .line 1903
    const-string v1, "Inflation setting LayoutParams height to MATCH_PARENT - impossible! Falling back to WRAP_CONTENT"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x2

    .line 1905
    iput v1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutParams;->height:I

    .line 1908
    :cond_1
    sget-object v1, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutParams;->LAYOUT_ATTRS:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 1909
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutParams;->span:I

    .line 1910
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    .line 1914
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    .line 1862
    iput p1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutParams;->span:I

    const-wide/16 v0, -0x1

    .line 1882
    iput-wide v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutParams;->id:J

    .line 1916
    iget p1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutParams;->width:I

    const-string v0, "StaggeredGridView"

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 1917
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Constructing LayoutParams with width "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutParams;->width:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " - must be MATCH_PARENT"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1919
    iput v1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutParams;->width:I

    .line 1921
    :cond_0
    iget p1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutParams;->height:I

    if-ne p1, v1, :cond_1

    .line 1922
    const-string p1, "Constructing LayoutParams with height MATCH_PARENT - impossible! Falling back to WRAP_CONTENT"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x2

    .line 1924
    iput p1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutParams;->height:I

    :cond_1
    return-void
.end method

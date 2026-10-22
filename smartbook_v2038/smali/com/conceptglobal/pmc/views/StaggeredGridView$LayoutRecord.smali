.class final Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutRecord;
.super Ljava/lang/Object;
.source "StaggeredGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/views/StaggeredGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LayoutRecord"
.end annotation


# instance fields
.field public column:I

.field public height:I

.field public id:J

.field private mMargins:[I

.field public span:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 241
    iput-wide v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutRecord;->id:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/conceptglobal/pmc/views/StaggeredGridView$1;)V
    .locals 0

    .line 239
    invoke-direct {p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutRecord;-><init>()V

    return-void
.end method

.method private final ensureMargins()V
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutRecord;->mMargins:[I

    if-nez v0, :cond_0

    .line 250
    iget v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutRecord;->span:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutRecord;->mMargins:[I

    :cond_0
    return-void
.end method


# virtual methods
.method public final getMarginAbove(I)I
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutRecord;->mMargins:[I

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    mul-int/lit8 p1, p1, 0x2

    .line 258
    aget p1, v0, p1

    return p1
.end method

.method public final getMarginBelow(I)I
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutRecord;->mMargins:[I

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    .line 265
    aget p1, v0, p1

    return p1
.end method

.method public final setMarginAbove(II)V
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutRecord;->mMargins:[I

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    return-void

    .line 272
    :cond_0
    invoke-direct {p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutRecord;->ensureMargins()V

    .line 273
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutRecord;->mMargins:[I

    mul-int/lit8 p1, p1, 0x2

    aput p2, v0, p1

    return-void
.end method

.method public final setMarginBelow(II)V
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutRecord;->mMargins:[I

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    return-void

    .line 280
    :cond_0
    invoke-direct {p0}, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutRecord;->ensureMargins()V

    .line 281
    iget-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutRecord;->mMargins:[I

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    aput p2, v0, p1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LayoutRecord{c="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutRecord;->column:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutRecord;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " h="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutRecord;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " s="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutRecord;->span:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 288
    iget-object v1, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutRecord;->mMargins:[I

    if-eqz v1, :cond_1

    .line 289
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " margins[above, below]("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 290
    :goto_0
    iget-object v2, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutRecord;->mMargins:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 291
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutRecord;->mMargins:[I

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/conceptglobal/pmc/views/StaggeredGridView$LayoutRecord;->mMargins:[I

    add-int/lit8 v3, v1, 0x1

    aget v0, v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 293
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 295
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

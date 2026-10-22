.class final Lcom/squareup/picasso/PicassoDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "PicassoDrawable.java"


# static fields
.field private static final DEBUG_PAINT:Landroid/graphics/Paint;

.field private static final FADE_DURATION:F = 200.0f


# instance fields
.field alpha:I

.field animating:Z

.field private final debugging:Z

.field private final density:F

.field final image:Landroid/graphics/drawable/BitmapDrawable;

.field private final loadedFrom:Lcom/squareup/picasso/Picasso$LoadedFrom;

.field placeholder:Landroid/graphics/drawable/Drawable;

.field startTimeMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/squareup/picasso/PicassoDrawable;->DEBUG_PAINT:Landroid/graphics/Paint;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;ZZ)V
    .locals 1

    .line 84
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/16 v0, 0xff

    .line 81
    iput v0, p0, Lcom/squareup/picasso/PicassoDrawable;->alpha:I

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 87
    iput-boolean p6, p0, Lcom/squareup/picasso/PicassoDrawable;->debugging:Z

    .line 88
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p6

    iget p6, p6, Landroid/util/DisplayMetrics;->density:F

    iput p6, p0, Lcom/squareup/picasso/PicassoDrawable;->density:F

    .line 90
    iput-object p4, p0, Lcom/squareup/picasso/PicassoDrawable;->loadedFrom:Lcom/squareup/picasso/Picasso$LoadedFrom;

    .line 92
    new-instance p6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p6, p1, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object p6, p0, Lcom/squareup/picasso/PicassoDrawable;->image:Landroid/graphics/drawable/BitmapDrawable;

    .line 94
    sget-object p1, Lcom/squareup/picasso/Picasso$LoadedFrom;->MEMORY:Lcom/squareup/picasso/Picasso$LoadedFrom;

    if-eq p4, p1, :cond_0

    if-nez p5, :cond_0

    .line 96
    iput-object p2, p0, Lcom/squareup/picasso/PicassoDrawable;->placeholder:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x1

    .line 97
    iput-boolean p1, p0, Lcom/squareup/picasso/PicassoDrawable;->animating:Z

    .line 98
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/squareup/picasso/PicassoDrawable;->startTimeMillis:J

    :cond_0
    return-void
.end method

.method private drawDebugIndicator(Landroid/graphics/Canvas;)V
    .locals 5

    .line 166
    sget-object v0, Lcom/squareup/picasso/PicassoDrawable;->DEBUG_PAINT:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 167
    new-instance v1, Landroid/graphics/Point;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    const/high16 v3, 0x41800000    # 16.0f

    iget v4, p0, Lcom/squareup/picasso/PicassoDrawable;->density:F

    mul-float v4, v4, v3

    float-to-int v3, v4

    invoke-static {v1, v3}, Lcom/squareup/picasso/PicassoDrawable;->getTrianglePath(Landroid/graphics/Point;I)Landroid/graphics/Path;

    move-result-object v1

    .line 168
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 170
    iget-object v1, p0, Lcom/squareup/picasso/PicassoDrawable;->loadedFrom:Lcom/squareup/picasso/Picasso$LoadedFrom;

    iget v1, v1, Lcom/squareup/picasso/Picasso$LoadedFrom;->debugColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 171
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    const/high16 v2, 0x41700000    # 15.0f

    iget v3, p0, Lcom/squareup/picasso/PicassoDrawable;->density:F

    mul-float v3, v3, v2

    float-to-int v2, v3

    invoke-static {v1, v2}, Lcom/squareup/picasso/PicassoDrawable;->getTrianglePath(Landroid/graphics/Point;I)Landroid/graphics/Path;

    move-result-object v1

    .line 172
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private static getTrianglePath(Landroid/graphics/Point;I)Landroid/graphics/Path;
    .locals 4

    .line 176
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Landroid/graphics/Point;->x:I

    add-int/2addr v1, p1

    iget v2, p0, Landroid/graphics/Point;->y:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 177
    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Landroid/graphics/Point;->x:I

    iget v3, p0, Landroid/graphics/Point;->y:I

    add-int/2addr v3, p1

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 179
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 180
    iget v2, p0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget p0, p0, Landroid/graphics/Point;->y:I

    int-to-float p0, p0

    invoke-virtual {p1, v2, p0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 181
    iget p0, v0, Landroid/graphics/Point;->x:I

    int-to-float p0, p0

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {p1, p0, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 182
    iget p0, v1, Landroid/graphics/Point;->x:I

    int-to-float p0, p0

    iget v0, v1, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {p1, p0, v0}, Landroid/graphics/Path;->lineTo(FF)V

    return-object p1
.end method

.method static setBitmap(Landroid/widget/ImageView;Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;ZZ)V
    .locals 8

    .line 48
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 49
    instance-of v0, v2, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 50
    move-object v0, v2

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 52
    :cond_0
    new-instance v7, Lcom/squareup/picasso/PicassoDrawable;

    move-object v0, v7

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/squareup/picasso/PicassoDrawable;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;ZZ)V

    .line 54
    invoke-virtual {p0, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static setPlaceholder(Landroid/widget/ImageView;ILandroid/graphics/drawable/Drawable;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 63
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    instance-of p1, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz p1, :cond_1

    .line 68
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_1
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 103
    iget-boolean v0, p0, Lcom/squareup/picasso/PicassoDrawable;->animating:Z

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/squareup/picasso/PicassoDrawable;->image:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 106
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/squareup/picasso/PicassoDrawable;->startTimeMillis:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x43480000    # 200.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_1

    const/4 v0, 0x0

    .line 108
    iput-boolean v0, p0, Lcom/squareup/picasso/PicassoDrawable;->animating:Z

    const/4 v0, 0x0

    .line 109
    iput-object v0, p0, Lcom/squareup/picasso/PicassoDrawable;->placeholder:Landroid/graphics/drawable/Drawable;

    .line 110
    iget-object v0, p0, Lcom/squareup/picasso/PicassoDrawable;->image:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 112
    :cond_1
    iget-object v1, p0, Lcom/squareup/picasso/PicassoDrawable;->placeholder:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 113
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 116
    :cond_2
    iget v1, p0, Lcom/squareup/picasso/PicassoDrawable;->alpha:I

    int-to-float v1, v1

    mul-float v1, v1, v0

    float-to-int v0, v1

    .line 117
    iget-object v1, p0, Lcom/squareup/picasso/PicassoDrawable;->image:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 118
    iget-object v0, p0, Lcom/squareup/picasso/PicassoDrawable;->image:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 119
    iget-object v0, p0, Lcom/squareup/picasso/PicassoDrawable;->image:Landroid/graphics/drawable/BitmapDrawable;

    iget v1, p0, Lcom/squareup/picasso/PicassoDrawable;->alpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 120
    invoke-virtual {p0}, Lcom/squareup/picasso/PicassoDrawable;->invalidateSelf()V

    .line 124
    :goto_0
    iget-boolean v0, p0, Lcom/squareup/picasso/PicassoDrawable;->debugging:Z

    if-eqz v0, :cond_3

    .line 125
    invoke-direct {p0, p1}, Lcom/squareup/picasso/PicassoDrawable;->drawDebugIndicator(Landroid/graphics/Canvas;)V

    :cond_3
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/squareup/picasso/PicassoDrawable;->image:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/squareup/picasso/PicassoDrawable;->image:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/squareup/picasso/PicassoDrawable;->image:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 157
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 159
    iget-object v0, p0, Lcom/squareup/picasso/PicassoDrawable;->image:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 160
    iget-object v0, p0, Lcom/squareup/picasso/PicassoDrawable;->placeholder:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 138
    iput p1, p0, Lcom/squareup/picasso/PicassoDrawable;->alpha:I

    .line 139
    iget-object v0, p0, Lcom/squareup/picasso/PicassoDrawable;->placeholder:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/squareup/picasso/PicassoDrawable;->image:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/squareup/picasso/PicassoDrawable;->placeholder:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/squareup/picasso/PicassoDrawable;->image:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

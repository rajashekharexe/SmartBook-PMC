.class Lcom/squareup/picasso/ResourceBitmapHunter;
.super Lcom/squareup/picasso/BitmapHunter;
.source "ResourceBitmapHunter.java"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/Dispatcher;Lcom/squareup/picasso/Cache;Lcom/squareup/picasso/Stats;Lcom/squareup/picasso/Action;)V
    .locals 6

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 31
    invoke-direct/range {v0 .. v5}, Lcom/squareup/picasso/BitmapHunter;-><init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/Dispatcher;Lcom/squareup/picasso/Cache;Lcom/squareup/picasso/Stats;Lcom/squareup/picasso/Action;)V

    .line 32
    iput-object p1, p0, Lcom/squareup/picasso/ResourceBitmapHunter;->context:Landroid/content/Context;

    return-void
.end method

.method private decodeResource(Landroid/content/res/Resources;ILcom/squareup/picasso/Request;)Landroid/graphics/Bitmap;
    .locals 2

    .line 46
    invoke-static {p3}, Lcom/squareup/picasso/ResourceBitmapHunter;->createBitmapOptions(Lcom/squareup/picasso/Request;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 47
    invoke-virtual {p3}, Lcom/squareup/picasso/Request;->hasSize()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 48
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 49
    invoke-static {p1, p2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 50
    iget v1, p3, Lcom/squareup/picasso/Request;->targetWidth:I

    iget p3, p3, Lcom/squareup/picasso/Request;->targetHeight:I

    invoke-static {v1, p3, v0}, Lcom/squareup/picasso/ResourceBitmapHunter;->calculateInSampleSize(IILandroid/graphics/BitmapFactory$Options;)V

    .line 52
    :cond_0
    invoke-static {p1, p2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method decode(Lcom/squareup/picasso/Request;)Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/squareup/picasso/ResourceBitmapHunter;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/squareup/picasso/Utils;->getResources(Landroid/content/Context;Lcom/squareup/picasso/Request;)Landroid/content/res/Resources;

    move-result-object v0

    .line 37
    invoke-static {v0, p1}, Lcom/squareup/picasso/Utils;->getResourceId(Landroid/content/res/Resources;Lcom/squareup/picasso/Request;)I

    move-result v1

    .line 38
    invoke-direct {p0, v0, v1, p1}, Lcom/squareup/picasso/ResourceBitmapHunter;->decodeResource(Landroid/content/res/Resources;ILcom/squareup/picasso/Request;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method getLoadedFrom()Lcom/squareup/picasso/Picasso$LoadedFrom;
    .locals 1

    .line 42
    sget-object v0, Lcom/squareup/picasso/Picasso$LoadedFrom;->DISK:Lcom/squareup/picasso/Picasso$LoadedFrom;

    return-object v0
.end method

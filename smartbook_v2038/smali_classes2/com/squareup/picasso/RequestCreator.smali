.class public Lcom/squareup/picasso/RequestCreator;
.super Ljava/lang/Object;
.source "RequestCreator.java"


# instance fields
.field private final data:Lcom/squareup/picasso/Request$Builder;

.field private deferred:Z

.field private errorDrawable:Landroid/graphics/drawable/Drawable;

.field private errorResId:I

.field private noFade:Z

.field private final picasso:Lcom/squareup/picasso/Picasso;

.field private placeholderDrawable:Landroid/graphics/drawable/Drawable;

.field private placeholderResId:I

.field private skipMemoryCache:Z


# direct methods
.method constructor <init>()V
    .locals 3

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    .line 57
    new-instance v1, Lcom/squareup/picasso/Request$Builder;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/squareup/picasso/Request$Builder;-><init>(Landroid/net/Uri;I)V

    iput-object v1, p0, Lcom/squareup/picasso/RequestCreator;->data:Lcom/squareup/picasso/Request$Builder;

    return-void
.end method

.method constructor <init>(Lcom/squareup/picasso/Picasso;Landroid/net/Uri;I)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iget-boolean v0, p1, Lcom/squareup/picasso/Picasso;->shutdown:Z

    if-nez v0, :cond_0

    .line 51
    iput-object p1, p0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    .line 52
    new-instance p1, Lcom/squareup/picasso/Request$Builder;

    invoke-direct {p1, p2, p3}, Lcom/squareup/picasso/Request$Builder;-><init>(Landroid/net/Uri;I)V

    iput-object p1, p0, Lcom/squareup/picasso/RequestCreator;->data:Lcom/squareup/picasso/Request$Builder;

    return-void

    .line 48
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Picasso instance already shut down. Cannot submit new requests."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public centerCrop()Lcom/squareup/picasso/RequestCreator;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/squareup/picasso/RequestCreator;->data:Lcom/squareup/picasso/Request$Builder;

    invoke-virtual {v0}, Lcom/squareup/picasso/Request$Builder;->centerCrop()Lcom/squareup/picasso/Request$Builder;

    return-object p0
.end method

.method public centerInside()Lcom/squareup/picasso/RequestCreator;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/squareup/picasso/RequestCreator;->data:Lcom/squareup/picasso/Request$Builder;

    invoke-virtual {v0}, Lcom/squareup/picasso/Request$Builder;->centerInside()Lcom/squareup/picasso/Request$Builder;

    return-object p0
.end method

.method public config(Landroid/graphics/Bitmap$Config;)Lcom/squareup/picasso/RequestCreator;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/squareup/picasso/RequestCreator;->data:Lcom/squareup/picasso/Request$Builder;

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Request$Builder;->config(Landroid/graphics/Bitmap$Config;)Lcom/squareup/picasso/Request$Builder;

    return-object p0
.end method

.method public error(I)Lcom/squareup/picasso/RequestCreator;
    .locals 1

    if-eqz p1, :cond_1

    .line 97
    iget-object v0, p0, Lcom/squareup/picasso/RequestCreator;->errorDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 100
    iput p1, p0, Lcom/squareup/picasso/RequestCreator;->errorResId:I

    return-object p0

    .line 98
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Error image already set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 95
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Error image resource invalid."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public error(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/RequestCreator;
    .locals 1

    if-eqz p1, :cond_1

    .line 109
    iget v0, p0, Lcom/squareup/picasso/RequestCreator;->errorResId:I

    if-nez v0, :cond_0

    .line 112
    iput-object p1, p0, Lcom/squareup/picasso/RequestCreator;->errorDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0

    .line 110
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Error image already set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 107
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Error image may not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public fetch()V
    .locals 5

    .line 234
    iget-boolean v0, p0, Lcom/squareup/picasso/RequestCreator;->deferred:Z

    if-nez v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/squareup/picasso/RequestCreator;->data:Lcom/squareup/picasso/Request$Builder;

    invoke-virtual {v0}, Lcom/squareup/picasso/Request$Builder;->hasImage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    iget-object v1, p0, Lcom/squareup/picasso/RequestCreator;->data:Lcom/squareup/picasso/Request$Builder;

    invoke-virtual {v1}, Lcom/squareup/picasso/Request$Builder;->build()Lcom/squareup/picasso/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->transformRequest(Lcom/squareup/picasso/Request;)Lcom/squareup/picasso/Request;

    move-result-object v0

    .line 239
    invoke-static {v0}, Lcom/squareup/picasso/Utils;->createKey(Lcom/squareup/picasso/Request;)Ljava/lang/String;

    move-result-object v1

    .line 241
    new-instance v2, Lcom/squareup/picasso/FetchAction;

    iget-object v3, p0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    iget-boolean v4, p0, Lcom/squareup/picasso/RequestCreator;->skipMemoryCache:Z

    invoke-direct {v2, v3, v0, v4, v1}, Lcom/squareup/picasso/FetchAction;-><init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/Request;ZLjava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v0, v2}, Lcom/squareup/picasso/Picasso;->enqueueAndSubmit(Lcom/squareup/picasso/Action;)V

    :cond_0
    return-void

    .line 235
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fit cannot be used with fetch."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public fit()Lcom/squareup/picasso/RequestCreator;
    .locals 1

    const/4 v0, 0x1

    .line 123
    iput-boolean v0, p0, Lcom/squareup/picasso/RequestCreator;->deferred:Z

    return-object p0
.end method

.method public get()Landroid/graphics/Bitmap;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    invoke-static {}, Lcom/squareup/picasso/Utils;->checkNotMain()V

    .line 214
    iget-boolean v0, p0, Lcom/squareup/picasso/RequestCreator;->deferred:Z

    if-nez v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/squareup/picasso/RequestCreator;->data:Lcom/squareup/picasso/Request$Builder;

    invoke-virtual {v0}, Lcom/squareup/picasso/Request$Builder;->hasImage()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    iget-object v1, p0, Lcom/squareup/picasso/RequestCreator;->data:Lcom/squareup/picasso/Request$Builder;

    invoke-virtual {v1}, Lcom/squareup/picasso/Request$Builder;->build()Lcom/squareup/picasso/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->transformRequest(Lcom/squareup/picasso/Request;)Lcom/squareup/picasso/Request;

    move-result-object v0

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Lcom/squareup/picasso/Utils;->createKey(Lcom/squareup/picasso/Request;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    .line 224
    new-instance v7, Lcom/squareup/picasso/GetAction;

    iget-object v2, p0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    iget-boolean v3, p0, Lcom/squareup/picasso/RequestCreator;->skipMemoryCache:Z

    invoke-direct {v7, v2, v0, v3, v1}, Lcom/squareup/picasso/GetAction;-><init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/Request;ZLjava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    iget-object v2, v0, Lcom/squareup/picasso/Picasso;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    iget-object v4, v3, Lcom/squareup/picasso/Picasso;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    iget-object v0, p0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    iget-object v5, v0, Lcom/squareup/picasso/Picasso;->cache:Lcom/squareup/picasso/Cache;

    iget-object v0, p0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    iget-object v6, v0, Lcom/squareup/picasso/Picasso;->stats:Lcom/squareup/picasso/Stats;

    iget-object v0, p0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    iget-object v0, v0, Lcom/squareup/picasso/Picasso;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    iget-object v8, v0, Lcom/squareup/picasso/Dispatcher;->downloader:Lcom/squareup/picasso/Downloader;

    invoke-static/range {v2 .. v8}, Lcom/squareup/picasso/BitmapHunter;->forRequest(Landroid/content/Context;Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/Dispatcher;Lcom/squareup/picasso/Cache;Lcom/squareup/picasso/Stats;Lcom/squareup/picasso/Action;Lcom/squareup/picasso/Downloader;)Lcom/squareup/picasso/BitmapHunter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/picasso/BitmapHunter;->hunt()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 215
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fit cannot be used with get."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public into(Landroid/widget/ImageView;)V
    .locals 1

    const/4 v0, 0x0

    .line 326
    invoke-virtual {p0, p1, v0}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;Lcom/squareup/picasso/Callback;)V

    return-void
.end method

.method public into(Landroid/widget/ImageView;Lcom/squareup/picasso/Callback;)V
    .locals 11

    if-eqz p1, :cond_7

    .line 343
    iget-object v0, p0, Lcom/squareup/picasso/RequestCreator;->data:Lcom/squareup/picasso/Request$Builder;

    invoke-virtual {v0}, Lcom/squareup/picasso/Request$Builder;->hasImage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Picasso;->cancelRequest(Landroid/widget/ImageView;)V

    .line 345
    iget v0, p0, Lcom/squareup/picasso/RequestCreator;->placeholderResId:I

    iget-object v1, p0, Lcom/squareup/picasso/RequestCreator;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v0, v1}, Lcom/squareup/picasso/PicassoDrawable;->setPlaceholder(Landroid/widget/ImageView;ILandroid/graphics/drawable/Drawable;)V

    return-void

    .line 349
    :cond_0
    iget-boolean v0, p0, Lcom/squareup/picasso/RequestCreator;->deferred:Z

    if-eqz v0, :cond_4

    .line 350
    iget-object v0, p0, Lcom/squareup/picasso/RequestCreator;->data:Lcom/squareup/picasso/Request$Builder;

    invoke-virtual {v0}, Lcom/squareup/picasso/Request$Builder;->hasSize()Z

    move-result v0

    if-nez v0, :cond_3

    .line 353
    invoke-virtual {p1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    .line 354
    invoke-virtual {p1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    if-eqz v0, :cond_2

    if-nez v1, :cond_1

    goto :goto_0

    .line 360
    :cond_1
    iget-object v3, p0, Lcom/squareup/picasso/RequestCreator;->data:Lcom/squareup/picasso/Request$Builder;

    invoke-virtual {v3, v0, v1}, Lcom/squareup/picasso/Request$Builder;->resize(II)Lcom/squareup/picasso/Request$Builder;

    goto :goto_1

    .line 356
    :cond_2
    :goto_0
    iget v0, p0, Lcom/squareup/picasso/RequestCreator;->placeholderResId:I

    iget-object v1, p0, Lcom/squareup/picasso/RequestCreator;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v0, v1}, Lcom/squareup/picasso/PicassoDrawable;->setPlaceholder(Landroid/widget/ImageView;ILandroid/graphics/drawable/Drawable;)V

    .line 357
    iget-object v0, p0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    new-instance v1, Lcom/squareup/picasso/DeferredRequestCreator;

    invoke-direct {v1, p0, p1, p2}, Lcom/squareup/picasso/DeferredRequestCreator;-><init>(Lcom/squareup/picasso/RequestCreator;Landroid/widget/ImageView;Lcom/squareup/picasso/Callback;)V

    invoke-virtual {v0, p1, v1}, Lcom/squareup/picasso/Picasso;->defer(Landroid/widget/ImageView;Lcom/squareup/picasso/DeferredRequestCreator;)V

    return-void

    .line 351
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fit cannot be used with resize."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 363
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    iget-object v1, p0, Lcom/squareup/picasso/RequestCreator;->data:Lcom/squareup/picasso/Request$Builder;

    invoke-virtual {v1}, Lcom/squareup/picasso/Request$Builder;->build()Lcom/squareup/picasso/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->transformRequest(Lcom/squareup/picasso/Request;)Lcom/squareup/picasso/Request;

    move-result-object v3

    .line 364
    invoke-static {v3}, Lcom/squareup/picasso/Utils;->createKey(Lcom/squareup/picasso/Request;)Ljava/lang/String;

    move-result-object v8

    .line 366
    iget-boolean v0, p0, Lcom/squareup/picasso/RequestCreator;->skipMemoryCache:Z

    if-nez v0, :cond_6

    .line 367
    iget-object v0, p0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v0, v8}, Lcom/squareup/picasso/Picasso;->quickMemoryCacheCheck(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 369
    iget-object v0, p0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Picasso;->cancelRequest(Landroid/widget/ImageView;)V

    .line 370
    iget-object v0, p0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    iget-object v1, v0, Lcom/squareup/picasso/Picasso;->context:Landroid/content/Context;

    sget-object v3, Lcom/squareup/picasso/Picasso$LoadedFrom;->MEMORY:Lcom/squareup/picasso/Picasso$LoadedFrom;

    iget-boolean v5, p0, Lcom/squareup/picasso/RequestCreator;->noFade:Z

    iget-object v0, p0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    iget-boolean v6, v0, Lcom/squareup/picasso/Picasso;->debugging:Z

    move-object v0, p1

    move-object v2, v4

    move v4, v5

    move v5, v6

    invoke-static/range {v0 .. v5}, Lcom/squareup/picasso/PicassoDrawable;->setBitmap(Landroid/widget/ImageView;Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;ZZ)V

    if-eqz p2, :cond_5

    .line 373
    invoke-interface {p2}, Lcom/squareup/picasso/Callback;->onSuccess()V

    :cond_5
    return-void

    .line 379
    :cond_6
    iget v0, p0, Lcom/squareup/picasso/RequestCreator;->placeholderResId:I

    iget-object v1, p0, Lcom/squareup/picasso/RequestCreator;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v0, v1}, Lcom/squareup/picasso/PicassoDrawable;->setPlaceholder(Landroid/widget/ImageView;ILandroid/graphics/drawable/Drawable;)V

    .line 381
    new-instance v10, Lcom/squareup/picasso/ImageViewAction;

    iget-object v1, p0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    iget-boolean v4, p0, Lcom/squareup/picasso/RequestCreator;->skipMemoryCache:Z

    iget-boolean v5, p0, Lcom/squareup/picasso/RequestCreator;->noFade:Z

    iget v6, p0, Lcom/squareup/picasso/RequestCreator;->errorResId:I

    iget-object v7, p0, Lcom/squareup/picasso/RequestCreator;->errorDrawable:Landroid/graphics/drawable/Drawable;

    move-object v0, v10

    move-object v2, p1

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/squareup/picasso/ImageViewAction;-><init>(Lcom/squareup/picasso/Picasso;Landroid/widget/ImageView;Lcom/squareup/picasso/Request;ZZILandroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/squareup/picasso/Callback;)V

    .line 385
    iget-object v0, p0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v0, v10}, Lcom/squareup/picasso/Picasso;->enqueueAndSubmit(Lcom/squareup/picasso/Action;)V

    return-void

    .line 340
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Target must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public into(Lcom/squareup/picasso/Target;)V
    .locals 9

    if-eqz p1, :cond_4

    .line 287
    iget-boolean v0, p0, Lcom/squareup/picasso/RequestCreator;->deferred:Z

    if-nez v0, :cond_3

    .line 291
    iget v0, p0, Lcom/squareup/picasso/RequestCreator;->placeholderResId:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    iget-object v0, v0, Lcom/squareup/picasso/Picasso;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/squareup/picasso/RequestCreator;->placeholderResId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/squareup/picasso/RequestCreator;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 295
    :goto_0
    iget-object v1, p0, Lcom/squareup/picasso/RequestCreator;->data:Lcom/squareup/picasso/Request$Builder;

    invoke-virtual {v1}, Lcom/squareup/picasso/Request$Builder;->hasImage()Z

    move-result v1

    if-nez v1, :cond_1

    .line 296
    iget-object v1, p0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v1, p1}, Lcom/squareup/picasso/Picasso;->cancelRequest(Lcom/squareup/picasso/Target;)V

    .line 297
    invoke-interface {p1, v0}, Lcom/squareup/picasso/Target;->onPrepareLoad(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 301
    :cond_1
    iget-object v1, p0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    iget-object v2, p0, Lcom/squareup/picasso/RequestCreator;->data:Lcom/squareup/picasso/Request$Builder;

    invoke-virtual {v2}, Lcom/squareup/picasso/Request$Builder;->build()Lcom/squareup/picasso/Request;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/Picasso;->transformRequest(Lcom/squareup/picasso/Request;)Lcom/squareup/picasso/Request;

    move-result-object v6

    .line 302
    invoke-static {v6}, Lcom/squareup/picasso/Utils;->createKey(Lcom/squareup/picasso/Request;)Ljava/lang/String;

    move-result-object v8

    .line 304
    iget-boolean v1, p0, Lcom/squareup/picasso/RequestCreator;->skipMemoryCache:Z

    if-nez v1, :cond_2

    .line 305
    iget-object v1, p0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v1, v8}, Lcom/squareup/picasso/Picasso;->quickMemoryCacheCheck(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 307
    iget-object v0, p0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Picasso;->cancelRequest(Lcom/squareup/picasso/Target;)V

    .line 308
    sget-object v0, Lcom/squareup/picasso/Picasso$LoadedFrom;->MEMORY:Lcom/squareup/picasso/Picasso$LoadedFrom;

    invoke-interface {p1, v1, v0}, Lcom/squareup/picasso/Target;->onBitmapLoaded(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V

    return-void

    .line 313
    :cond_2
    invoke-interface {p1, v0}, Lcom/squareup/picasso/Target;->onPrepareLoad(Landroid/graphics/drawable/Drawable;)V

    .line 315
    new-instance v0, Lcom/squareup/picasso/TargetAction;

    iget-object v4, p0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    iget-boolean v7, p0, Lcom/squareup/picasso/RequestCreator;->skipMemoryCache:Z

    move-object v3, v0

    move-object v5, p1

    invoke-direct/range {v3 .. v8}, Lcom/squareup/picasso/TargetAction;-><init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/Target;Lcom/squareup/picasso/Request;ZLjava/lang/String;)V

    .line 316
    iget-object p1, p0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/Picasso;->enqueueAndSubmit(Lcom/squareup/picasso/Action;)V

    return-void

    .line 288
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Fit cannot be used with a Target."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 285
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Target must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public noFade()Lcom/squareup/picasso/RequestCreator;
    .locals 1

    const/4 v0, 0x1

    .line 207
    iput-boolean v0, p0, Lcom/squareup/picasso/RequestCreator;->noFade:Z

    return-object p0
.end method

.method public placeholder(I)Lcom/squareup/picasso/RequestCreator;
    .locals 1

    if-eqz p1, :cond_1

    .line 69
    iget-object v0, p0, Lcom/squareup/picasso/RequestCreator;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 72
    iput p1, p0, Lcom/squareup/picasso/RequestCreator;->placeholderResId:I

    return-object p0

    .line 70
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Placeholder image already set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Placeholder image resource invalid."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public placeholder(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/RequestCreator;
    .locals 1

    .line 85
    iget v0, p0, Lcom/squareup/picasso/RequestCreator;->placeholderResId:I

    if-nez v0, :cond_0

    .line 88
    iput-object p1, p0, Lcom/squareup/picasso/RequestCreator;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0

    .line 86
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Placeholder image already set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public resize(II)Lcom/squareup/picasso/RequestCreator;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/squareup/picasso/RequestCreator;->data:Lcom/squareup/picasso/Request$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/picasso/Request$Builder;->resize(II)Lcom/squareup/picasso/Request$Builder;

    return-object p0
.end method

.method public resizeDimen(II)Lcom/squareup/picasso/RequestCreator;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/squareup/picasso/RequestCreator;->picasso:Lcom/squareup/picasso/Picasso;

    iget-object v0, v0, Lcom/squareup/picasso/Picasso;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 136
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 137
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 138
    invoke-virtual {p0, p1, p2}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    return-object p1
.end method

.method public rotate(F)Lcom/squareup/picasso/RequestCreator;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/squareup/picasso/RequestCreator;->data:Lcom/squareup/picasso/Request$Builder;

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Request$Builder;->rotate(F)Lcom/squareup/picasso/Request$Builder;

    return-object p0
.end method

.method public rotate(FFF)Lcom/squareup/picasso/RequestCreator;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/squareup/picasso/RequestCreator;->data:Lcom/squareup/picasso/Request$Builder;

    invoke-virtual {v0, p1, p2, p3}, Lcom/squareup/picasso/Request$Builder;->rotate(FFF)Lcom/squareup/picasso/Request$Builder;

    return-object p0
.end method

.method public skipMemoryCache()Lcom/squareup/picasso/RequestCreator;
    .locals 1

    const/4 v0, 0x1

    .line 201
    iput-boolean v0, p0, Lcom/squareup/picasso/RequestCreator;->skipMemoryCache:Z

    return-object p0
.end method

.method public transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/squareup/picasso/RequestCreator;->data:Lcom/squareup/picasso/Request$Builder;

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Request$Builder;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/Request$Builder;

    return-object p0
.end method

.method unfit()Lcom/squareup/picasso/RequestCreator;
    .locals 1

    const/4 v0, 0x0

    .line 129
    iput-boolean v0, p0, Lcom/squareup/picasso/RequestCreator;->deferred:Z

    return-object p0
.end method

.class public final Lcom/squareup/picasso/Request$Builder;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/picasso/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private centerCrop:Z

.field private centerInside:Z

.field private config:Landroid/graphics/Bitmap$Config;

.field private hasRotationPivot:Z

.field private resourceId:I

.field private rotationDegrees:F

.field private rotationPivotX:F

.field private rotationPivotY:F

.field private targetHeight:I

.field private targetWidth:I

.field private transformations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/picasso/Transformation;",
            ">;"
        }
    .end annotation
.end field

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    invoke-virtual {p0, p1}, Lcom/squareup/picasso/Request$Builder;->setResourceId(I)Lcom/squareup/picasso/Request$Builder;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    invoke-virtual {p0, p1}, Lcom/squareup/picasso/Request$Builder;->setUri(Landroid/net/Uri;)Lcom/squareup/picasso/Request$Builder;

    return-void
.end method

.method constructor <init>(Landroid/net/Uri;I)V
    .locals 0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p1, p0, Lcom/squareup/picasso/Request$Builder;->uri:Landroid/net/Uri;

    .line 143
    iput p2, p0, Lcom/squareup/picasso/Request$Builder;->resourceId:I

    return-void
.end method

.method private constructor <init>(Lcom/squareup/picasso/Request;)V
    .locals 2

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iget-object v0, p1, Lcom/squareup/picasso/Request;->uri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/squareup/picasso/Request$Builder;->uri:Landroid/net/Uri;

    .line 148
    iget v0, p1, Lcom/squareup/picasso/Request;->resourceId:I

    iput v0, p0, Lcom/squareup/picasso/Request$Builder;->resourceId:I

    .line 149
    iget v0, p1, Lcom/squareup/picasso/Request;->targetWidth:I

    iput v0, p0, Lcom/squareup/picasso/Request$Builder;->targetWidth:I

    .line 150
    iget v0, p1, Lcom/squareup/picasso/Request;->targetHeight:I

    iput v0, p0, Lcom/squareup/picasso/Request$Builder;->targetHeight:I

    .line 151
    iget-boolean v0, p1, Lcom/squareup/picasso/Request;->centerCrop:Z

    iput-boolean v0, p0, Lcom/squareup/picasso/Request$Builder;->centerCrop:Z

    .line 152
    iget-boolean v0, p1, Lcom/squareup/picasso/Request;->centerInside:Z

    iput-boolean v0, p0, Lcom/squareup/picasso/Request$Builder;->centerInside:Z

    .line 153
    iget v0, p1, Lcom/squareup/picasso/Request;->rotationDegrees:F

    iput v0, p0, Lcom/squareup/picasso/Request$Builder;->rotationDegrees:F

    .line 154
    iget v0, p1, Lcom/squareup/picasso/Request;->rotationPivotX:F

    iput v0, p0, Lcom/squareup/picasso/Request$Builder;->rotationPivotX:F

    .line 155
    iget v0, p1, Lcom/squareup/picasso/Request;->rotationPivotY:F

    iput v0, p0, Lcom/squareup/picasso/Request$Builder;->rotationPivotY:F

    .line 156
    iget-boolean v0, p1, Lcom/squareup/picasso/Request;->hasRotationPivot:Z

    iput-boolean v0, p0, Lcom/squareup/picasso/Request$Builder;->hasRotationPivot:Z

    .line 157
    iget-object v0, p1, Lcom/squareup/picasso/Request;->transformations:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/squareup/picasso/Request;->transformations:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/squareup/picasso/Request$Builder;->transformations:Ljava/util/List;

    .line 160
    :cond_0
    iget-object p1, p1, Lcom/squareup/picasso/Request;->config:Landroid/graphics/Bitmap$Config;

    iput-object p1, p0, Lcom/squareup/picasso/Request$Builder;->config:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/picasso/Request;Lcom/squareup/picasso/Request$1;)V
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lcom/squareup/picasso/Request$Builder;-><init>(Lcom/squareup/picasso/Request;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/squareup/picasso/Request;
    .locals 15

    .line 306
    iget-boolean v7, p0, Lcom/squareup/picasso/Request$Builder;->centerInside:Z

    if-eqz v7, :cond_1

    iget-boolean v0, p0, Lcom/squareup/picasso/Request$Builder;->centerCrop:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 307
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Center crop and center inside can not be used together."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :cond_1
    :goto_0
    iget-boolean v6, p0, Lcom/squareup/picasso/Request$Builder;->centerCrop:Z

    if-eqz v6, :cond_3

    iget v0, p0, Lcom/squareup/picasso/Request$Builder;->targetWidth:I

    if-eqz v0, :cond_2

    goto :goto_1

    .line 310
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Center crop requires calling resize."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    if-eqz v7, :cond_5

    .line 312
    iget v0, p0, Lcom/squareup/picasso/Request$Builder;->targetWidth:I

    if-eqz v0, :cond_4

    goto :goto_2

    .line 313
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Center inside requires calling resize."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 315
    :cond_5
    :goto_2
    new-instance v14, Lcom/squareup/picasso/Request;

    iget-object v1, p0, Lcom/squareup/picasso/Request$Builder;->uri:Landroid/net/Uri;

    iget v2, p0, Lcom/squareup/picasso/Request$Builder;->resourceId:I

    iget-object v3, p0, Lcom/squareup/picasso/Request$Builder;->transformations:Ljava/util/List;

    iget v4, p0, Lcom/squareup/picasso/Request$Builder;->targetWidth:I

    iget v5, p0, Lcom/squareup/picasso/Request$Builder;->targetHeight:I

    iget v8, p0, Lcom/squareup/picasso/Request$Builder;->rotationDegrees:F

    iget v9, p0, Lcom/squareup/picasso/Request$Builder;->rotationPivotX:F

    iget v10, p0, Lcom/squareup/picasso/Request$Builder;->rotationPivotY:F

    iget-boolean v11, p0, Lcom/squareup/picasso/Request$Builder;->hasRotationPivot:Z

    iget-object v12, p0, Lcom/squareup/picasso/Request$Builder;->config:Landroid/graphics/Bitmap$Config;

    const/4 v13, 0x0

    move-object v0, v14

    invoke-direct/range {v0 .. v13}, Lcom/squareup/picasso/Request;-><init>(Landroid/net/Uri;ILjava/util/List;IIZZFFFZLandroid/graphics/Bitmap$Config;Lcom/squareup/picasso/Request$1;)V

    return-object v14
.end method

.method public centerCrop()Lcom/squareup/picasso/Request$Builder;
    .locals 2

    .line 227
    iget-boolean v0, p0, Lcom/squareup/picasso/Request$Builder;->centerInside:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 230
    iput-boolean v0, p0, Lcom/squareup/picasso/Request$Builder;->centerCrop:Z

    return-object p0

    .line 228
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Center crop can not be used after calling centerInside"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public centerInside()Lcom/squareup/picasso/Request$Builder;
    .locals 2

    .line 245
    iget-boolean v0, p0, Lcom/squareup/picasso/Request$Builder;->centerCrop:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 248
    iput-boolean v0, p0, Lcom/squareup/picasso/Request$Builder;->centerInside:Z

    return-object p0

    .line 246
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Center inside can not be used after calling centerCrop"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clearCenterCrop()Lcom/squareup/picasso/Request$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 236
    iput-boolean v0, p0, Lcom/squareup/picasso/Request$Builder;->centerCrop:Z

    return-object p0
.end method

.method public clearCenterInside()Lcom/squareup/picasso/Request$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 254
    iput-boolean v0, p0, Lcom/squareup/picasso/Request$Builder;->centerInside:Z

    return-object p0
.end method

.method public clearResize()Lcom/squareup/picasso/Request$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 214
    iput v0, p0, Lcom/squareup/picasso/Request$Builder;->targetWidth:I

    .line 215
    iput v0, p0, Lcom/squareup/picasso/Request$Builder;->targetHeight:I

    .line 216
    iput-boolean v0, p0, Lcom/squareup/picasso/Request$Builder;->centerCrop:Z

    .line 217
    iput-boolean v0, p0, Lcom/squareup/picasso/Request$Builder;->centerInside:Z

    return-object p0
.end method

.method public clearRotation()Lcom/squareup/picasso/Request$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 275
    iput v0, p0, Lcom/squareup/picasso/Request$Builder;->rotationDegrees:F

    .line 276
    iput v0, p0, Lcom/squareup/picasso/Request$Builder;->rotationPivotX:F

    .line 277
    iput v0, p0, Lcom/squareup/picasso/Request$Builder;->rotationPivotY:F

    const/4 v0, 0x0

    .line 278
    iput-boolean v0, p0, Lcom/squareup/picasso/Request$Builder;->hasRotationPivot:Z

    return-object p0
.end method

.method public config(Landroid/graphics/Bitmap$Config;)Lcom/squareup/picasso/Request$Builder;
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/squareup/picasso/Request$Builder;->config:Landroid/graphics/Bitmap$Config;

    return-object p0
.end method

.method hasImage()Z
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/squareup/picasso/Request$Builder;->uri:Landroid/net/Uri;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/squareup/picasso/Request$Builder;->resourceId:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method hasSize()Z
    .locals 1

    .line 168
    iget v0, p0, Lcom/squareup/picasso/Request$Builder;->targetWidth:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public resize(II)Lcom/squareup/picasso/Request$Builder;
    .locals 0

    if-lez p1, :cond_1

    if-lez p2, :cond_0

    .line 207
    iput p1, p0, Lcom/squareup/picasso/Request$Builder;->targetWidth:I

    .line 208
    iput p2, p0, Lcom/squareup/picasso/Request$Builder;->targetHeight:I

    return-object p0

    .line 205
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Height must be positive number."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 202
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Width must be positive number."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public rotate(F)Lcom/squareup/picasso/Request$Builder;
    .locals 0

    .line 260
    iput p1, p0, Lcom/squareup/picasso/Request$Builder;->rotationDegrees:F

    return-object p0
.end method

.method public rotate(FFF)Lcom/squareup/picasso/Request$Builder;
    .locals 0

    .line 266
    iput p1, p0, Lcom/squareup/picasso/Request$Builder;->rotationDegrees:F

    .line 267
    iput p2, p0, Lcom/squareup/picasso/Request$Builder;->rotationPivotX:F

    .line 268
    iput p3, p0, Lcom/squareup/picasso/Request$Builder;->rotationPivotY:F

    const/4 p1, 0x1

    .line 269
    iput-boolean p1, p0, Lcom/squareup/picasso/Request$Builder;->hasRotationPivot:Z

    return-object p0
.end method

.method public setResourceId(I)Lcom/squareup/picasso/Request$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 194
    iput p1, p0, Lcom/squareup/picasso/Request$Builder;->resourceId:I

    const/4 p1, 0x0

    .line 195
    iput-object p1, p0, Lcom/squareup/picasso/Request$Builder;->uri:Landroid/net/Uri;

    return-object p0

    .line 192
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Image resource ID may not be 0."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setUri(Landroid/net/Uri;)Lcom/squareup/picasso/Request$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 180
    iput-object p1, p0, Lcom/squareup/picasso/Request$Builder;->uri:Landroid/net/Uri;

    const/4 p1, 0x0

    .line 181
    iput p1, p0, Lcom/squareup/picasso/Request$Builder;->resourceId:I

    return-object p0

    .line 178
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Image URI may not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/Request$Builder;
    .locals 2

    if-eqz p1, :cond_1

    .line 297
    iget-object v0, p0, Lcom/squareup/picasso/Request$Builder;->transformations:Ljava/util/List;

    if-nez v0, :cond_0

    .line 298
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/squareup/picasso/Request$Builder;->transformations:Ljava/util/List;

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/squareup/picasso/Request$Builder;->transformations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 295
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Transformation must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

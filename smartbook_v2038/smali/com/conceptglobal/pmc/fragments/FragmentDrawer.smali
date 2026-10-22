.class public Lcom/conceptglobal/pmc/fragments/FragmentDrawer;
.super Landroidx/fragment/app/Fragment;
.source "FragmentDrawer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/fragments/FragmentDrawer$FragmentDrawerListener;,
        Lcom/conceptglobal/pmc/fragments/FragmentDrawer$RecyclerTouchListener;,
        Lcom/conceptglobal/pmc/fragments/FragmentDrawer$ClickListener;,
        Lcom/conceptglobal/pmc/fragments/FragmentDrawer$ImageCompress;
    }
.end annotation


# static fields
.field private static final CAMERA_CAPTURE_IMAGE_REQUEST_CODE:I = 0x64

.field private static TAG:Ljava/lang/String; = "FragmentDrawer"

.field private static drawables:[I

.field private static titles:[Ljava/lang/String;


# instance fields
.field private adapter:Lcom/conceptglobal/pmc/adapter/NavDrawerAdapter;

.field private bitmapdata:[B

.field private containerView:Landroid/view/View;

.field private drawerListener:Lcom/conceptglobal/pmc/fragments/FragmentDrawer$FragmentDrawerListener;

.field private imageFile:Ljava/io/File;

.field public mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

.field private mDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

.field private profilePic:Lcom/conceptglobal/pmc/utils/CircleImageView;

.field private profilePicPath:Ljava/lang/String;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 81
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 75
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    sget-object v0, Lcom/conceptglobal/pmc/common/ConstantsPMC;->profilePicPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FragmentDrawer;->profilePicPath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/fragments/FragmentDrawer;)Ljava/io/File;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/FragmentDrawer;->imageFile:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/fragments/FragmentDrawer;)Lcom/conceptglobal/pmc/fragments/FragmentDrawer$FragmentDrawerListener;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/FragmentDrawer;->drawerListener:Lcom/conceptglobal/pmc/fragments/FragmentDrawer$FragmentDrawerListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/fragments/FragmentDrawer;)Landroid/view/View;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/FragmentDrawer;->containerView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/fragments/FragmentDrawer;)Landroidx/appcompat/app/ActionBarDrawerToggle;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/FragmentDrawer;->mDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    return-object p0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 63
    sget-object v0, Lcom/conceptglobal/pmc/fragments/FragmentDrawer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/conceptglobal/pmc/fragments/FragmentDrawer;)Lcom/conceptglobal/pmc/utils/CircleImageView;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/FragmentDrawer;->profilePic:Lcom/conceptglobal/pmc/utils/CircleImageView;

    return-object p0
.end method

.method private getRealPathFromURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 440
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 441
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FragmentDrawer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    .line 443
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 445
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 446
    const-string p1, "_data"

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 447
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 4

    .line 454
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 455
    iget p1, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-gt v0, p3, :cond_1

    if-le p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    int-to-float v1, v0

    int-to-float v2, p3

    div-float/2addr v1, v2

    .line 459
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v2, p1

    int-to-float v3, p2

    div-float/2addr v2, v3

    .line 460
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    if-ge v1, v2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    mul-int p1, p1, v0

    int-to-float p1, p1

    mul-int p2, p2, p3

    mul-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    :goto_2
    mul-int p3, v1, v1

    int-to-float p3, p3

    div-float p3, p1, p3

    cmpl-float p3, p3, p2

    if-lez p3, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return v1
.end method

.method public compressImage(Ljava/lang/String;)Ljava/lang/String;
    .locals 18

    move-object/from16 v1, p0

    .line 323
    const-string v2, "EXIF"

    .line 0
    const-string v3, "Exif: "

    const-string v4, "size is:::"

    .line 323
    invoke-direct/range {p0 .. p1}, Lcom/conceptglobal/pmc/fragments/FragmentDrawer;->getRealPathFromURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 326
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v0, 0x1

    .line 327
    iput-boolean v0, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 328
    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 330
    iget v8, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 331
    iget v9, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 334
    div-int v10, v9, v8

    int-to-float v10, v10

    int-to-float v11, v8

    const/high16 v12, 0x441a0000    # 616.0f

    const/high16 v13, 0x43ce0000    # 412.0f

    cmpl-float v14, v11, v12

    if-gtz v14, :cond_0

    int-to-float v14, v9

    cmpl-float v14, v14, v13

    if-lez v14, :cond_3

    :cond_0
    const v8, 0x3f2b3885

    cmpg-float v14, v10, v8

    if-gez v14, :cond_1

    div-float v8, v12, v11

    int-to-float v9, v9

    mul-float v8, v8, v9

    float-to-int v9, v8

    float-to-int v8, v12

    goto :goto_1

    :cond_1
    cmpl-float v8, v10, v8

    if-lez v8, :cond_2

    int-to-float v8, v9

    div-float v8, v13, v8

    mul-float v8, v8, v11

    float-to-int v8, v8

    goto :goto_0

    :cond_2
    float-to-int v8, v12

    :goto_0
    float-to-int v9, v13

    .line 353
    :cond_3
    :goto_1
    invoke-virtual {v1, v6, v9, v8}, Lcom/conceptglobal/pmc/fragments/FragmentDrawer;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v10

    iput v10, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v10, 0x0

    .line 354
    iput-boolean v10, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 355
    iput-boolean v10, v6, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 356
    iput-boolean v0, v6, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 357
    iput-boolean v0, v6, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    const/16 v0, 0x4000

    .line 358
    new-array v0, v0, [B

    iput-object v0, v6, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 361
    :try_start_0
    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 363
    :try_start_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 364
    sget-object v11, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v12, 0x64

    invoke-virtual {v7, v11, v12, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 365
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, v1, Lcom/conceptglobal/pmc/fragments/FragmentDrawer;->bitmapdata:[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    move-exception v0

    .line 367
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 368
    sget-object v11, Lcom/conceptglobal/pmc/fragments/FragmentDrawer;->TAG:Ljava/lang/String;

    invoke-static {v11, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1

    .line 375
    :catch_1
    :goto_2
    :try_start_3
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v8, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    .line 377
    sget-object v11, Lcom/conceptglobal/pmc/fragments/FragmentDrawer;->TAG:Ljava/lang/String;

    invoke-static {v11, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_3
    move-object v15, v0

    int-to-float v0, v9

    .line 380
    iget v9, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v9, v9

    div-float v9, v0, v9

    int-to-float v8, v8

    .line 381
    iget v6, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v6, v6

    div-float v6, v8, v6

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v0, v11

    div-float/2addr v8, v11

    .line 385
    new-instance v11, Landroid/graphics/Matrix;

    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    .line 386
    invoke-virtual {v11, v9, v6, v0, v8}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 388
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v15}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 389
    invoke-virtual {v6, v11}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 390
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    const/4 v11, 0x2

    div-int/2addr v9, v11

    int-to-float v9, v9

    sub-float/2addr v0, v9

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    div-int/2addr v9, v11

    int-to-float v9, v9

    sub-float/2addr v8, v9

    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9, v11}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v6, v7, v0, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 393
    :try_start_4
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, v5}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 395
    const-string v6, "Orientation"

    invoke-virtual {v0, v6, v10}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    .line 396
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    const/4 v7, 0x6

    if-ne v0, v7, :cond_4

    const/high16 v7, 0x42b40000    # 90.0f

    .line 399
    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 400
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_4
    const/4 v7, 0x3

    if-ne v0, v7, :cond_5

    const/high16 v7, 0x43340000    # 180.0f

    .line 402
    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 403
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_5
    const/16 v7, 0x8

    if-ne v0, v7, :cond_6

    const/high16 v7, 0x43870000    # 270.0f

    .line 405
    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 406
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_6
    :goto_4
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    const/16 v17, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v11, v15

    move-object v2, v15

    move v15, v0

    move-object/from16 v16, v6

    :try_start_5
    invoke-static/range {v11 .. v17}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v15
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_6

    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    move-object v2, v15

    .line 410
    :goto_5
    sget-object v3, Lcom/conceptglobal/pmc/fragments/FragmentDrawer;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v15, v2

    .line 416
    :goto_6
    :try_start_6
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 417
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x50

    invoke-virtual {v15, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 418
    invoke-virtual {v1, v15}, Lcom/conceptglobal/pmc/fragments/FragmentDrawer;->sizeOf(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 419
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_7

    :catch_5
    move-exception v0

    .line 422
    sget-object v2, Lcom/conceptglobal/pmc/fragments/FragmentDrawer;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_7
    return-object v5
.end method

.method public getData(Landroid/app/Activity;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/NavDrawerItem;",
            ">;"
        }
    .end annotation

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 92
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f030017

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v1, 0x0

    .line 94
    :goto_0
    sget-object v2, Lcom/conceptglobal/pmc/fragments/FragmentDrawer;->titles:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 95
    new-instance v2, Lcom/conceptglobal/pmc/model/NavDrawerItem;

    invoke-direct {v2}, Lcom/conceptglobal/pmc/model/NavDrawerItem;-><init>()V

    .line 96
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    sget-object v4, Lcom/conceptglobal/pmc/fragments/FragmentDrawer;->titles:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/model/NavDrawerItem;->setTitle(Ljava/lang/String;)V

    const/4 v3, -0x1

    .line 97
    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/model/NavDrawerItem;->setDrawable(I)V

    .line 98
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/16 p2, 0x64

    if-ne p1, p2, :cond_0

    .line 195
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FragmentDrawer;->imageFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 197
    new-instance p1, Lcom/conceptglobal/pmc/fragments/FragmentDrawer$ImageCompress;

    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/FragmentDrawer;->profilePicPath:Ljava/lang/String;

    invoke-direct {p1, p0, p2}, Lcom/conceptglobal/pmc/fragments/FragmentDrawer$ImageCompress;-><init>(Lcom/conceptglobal/pmc/fragments/FragmentDrawer;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 198
    new-array p2, p2, [Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/fragments/FragmentDrawer$ImageCompress;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 113
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 116
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FragmentDrawer;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f030018

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/conceptglobal/pmc/fragments/FragmentDrawer;->titles:[Ljava/lang/String;

    .line 117
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FragmentDrawer;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f030017

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    sput-object p1, Lcom/conceptglobal/pmc/fragments/FragmentDrawer;->drawables:[I

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const p3, 0x7f0c00b8

    const/4 v0, 0x0

    .line 125
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09031f

    .line 126
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    const/4 p3, 0x0

    .line 127
    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090359

    .line 128
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/conceptglobal/pmc/utils/CircleImageView;

    iput-object p2, p0, Lcom/conceptglobal/pmc/fragments/FragmentDrawer;->profilePic:Lcom/conceptglobal/pmc/utils/CircleImageView;

    .line 129
    new-instance p2, Ljava/io/File;

    iget-object p3, p0, Lcom/conceptglobal/pmc/fragments/FragmentDrawer;->profilePicPath:Ljava/lang/String;

    invoke-direct {p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/conceptglobal/pmc/fragments/FragmentDrawer;->imageFile:Ljava/io/File;

    .line 130
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 131
    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/FragmentDrawer;->profilePicPath:Ljava/lang/String;

    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 132
    iget-object p3, p0, Lcom/conceptglobal/pmc/fragments/FragmentDrawer;->profilePic:Lcom/conceptglobal/pmc/utils/CircleImageView;

    invoke-virtual {p3, p2}, Lcom/conceptglobal/pmc/utils/CircleImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 134
    :cond_0
    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/FragmentDrawer;->profilePic:Lcom/conceptglobal/pmc/utils/CircleImageView;

    new-instance p3, Lcom/conceptglobal/pmc/fragments/FragmentDrawer$1;

    invoke-direct {p3, p0}, Lcom/conceptglobal/pmc/fragments/FragmentDrawer$1;-><init>(Lcom/conceptglobal/pmc/fragments/FragmentDrawer;)V

    invoke-virtual {p2, p3}, Lcom/conceptglobal/pmc/utils/CircleImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0905de

    .line 156
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/conceptglobal/imaterialdesign/widget/TextView;

    .line 158
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p3

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/Queries;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 159
    invoke-virtual {p2, p3}, Lcom/conceptglobal/imaterialdesign/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 161
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 162
    sget-object p3, Lcom/conceptglobal/pmc/fragments/FragmentDrawer;->TAG:Ljava/lang/String;

    invoke-static {p3, p2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const p2, 0x7f090138

    .line 165
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/conceptglobal/pmc/fragments/FragmentDrawer;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 167
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FragmentDrawer;->setAdapter()V

    .line 168
    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/FragmentDrawer;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FragmentDrawer;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 169
    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/FragmentDrawer;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Lcom/conceptglobal/pmc/fragments/FragmentDrawer$RecyclerTouchListener;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FragmentDrawer;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/FragmentDrawer;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/conceptglobal/pmc/fragments/FragmentDrawer$2;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fragments/FragmentDrawer$2;-><init>(Lcom/conceptglobal/pmc/fragments/FragmentDrawer;)V

    invoke-direct {p3, v0, v1, v2}, Lcom/conceptglobal/pmc/fragments/FragmentDrawer$RecyclerTouchListener;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Lcom/conceptglobal/pmc/fragments/FragmentDrawer$ClickListener;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    return-object p1
.end method

.method public setAdapter()V
    .locals 3

    .line 186
    new-instance v0, Lcom/conceptglobal/pmc/adapter/NavDrawerAdapter;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FragmentDrawer;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FragmentDrawer;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/conceptglobal/pmc/fragments/FragmentDrawer;->getData(Landroid/app/Activity;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/conceptglobal/pmc/adapter/NavDrawerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FragmentDrawer;->adapter:Lcom/conceptglobal/pmc/adapter/NavDrawerAdapter;

    .line 187
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/FragmentDrawer;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public setDrawerListener(Lcom/conceptglobal/pmc/fragments/FragmentDrawer$FragmentDrawerListener;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FragmentDrawer;->drawerListener:Lcom/conceptglobal/pmc/fragments/FragmentDrawer$FragmentDrawerListener;

    return-void
.end method

.method public setUp(ILandroidx/drawerlayout/widget/DrawerLayout;Landroidx/appcompat/widget/Toolbar;)V
    .locals 8

    .line 206
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FragmentDrawer;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FragmentDrawer;->containerView:Landroid/view/View;

    .line 207
    iput-object p2, p0, Lcom/conceptglobal/pmc/fragments/FragmentDrawer;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 208
    new-instance p1, Lcom/conceptglobal/pmc/fragments/FragmentDrawer$3;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FragmentDrawer;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const v5, 0x7f100086

    const v6, 0x7f100085

    move-object v0, p1

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/conceptglobal/pmc/fragments/FragmentDrawer$3;-><init>(Lcom/conceptglobal/pmc/fragments/FragmentDrawer;Landroid/app/Activity;Landroidx/drawerlayout/widget/DrawerLayout;Landroidx/appcompat/widget/Toolbar;IILandroidx/appcompat/widget/Toolbar;)V

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FragmentDrawer;->mDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    .line 228
    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/FragmentDrawer;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p2, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V

    .line 229
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FragmentDrawer;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    new-instance p2, Lcom/conceptglobal/pmc/fragments/FragmentDrawer$4;

    invoke-direct {p2, p0}, Lcom/conceptglobal/pmc/fragments/FragmentDrawer$4;-><init>(Lcom/conceptglobal/pmc/fragments/FragmentDrawer;)V

    invoke-virtual {p1, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected sizeOf(Landroid/graphics/Bitmap;)I
    .locals 0

    .line 434
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result p1

    return p1
.end method

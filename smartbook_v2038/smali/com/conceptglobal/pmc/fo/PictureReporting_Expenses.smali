.class public Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;
.super Lcom/conceptglobal/pmc/BaseActivity;
.source "PictureReporting_Expenses.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$RunShowLoader;
    }
.end annotation


# static fields
.field private static final CAM_IMAGE:I = 0x2712

.field public static ImageSoureceFlag:I = 0x0

.field private static final PICK_IMAGE_REQUEST:I = 0x1

.field private static final REQUEST_READ_EXTERNAL_STORAGE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PictureReporting"


# instance fields
.field private IdTransid:J

.field private activityId:I

.field private assignmentId:I

.field private attrID:I

.field private attrName:Ljava/lang/String;

.field private attributeId:I

.field private bitmapdata:[B

.field private btnDelete:Landroid/widget/Button;

.field private btncancel:Landroid/widget/Button;

.field private btnsave:Landroid/widget/Button;

.field private builder1:Landroid/app/AlertDialog$Builder;

.field private context:Landroid/content/Context;

.field private edtEventType:Landroid/widget/EditText;

.field private edtcomments:Landroid/widget/EditText;

.field private edtsubject:Landroid/widget/EditText;

.field private eventId:Landroid/widget/TextView;

.field private existingimagelist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private expencesGridView:Landroid/widget/GridView;

.field private expencesIimageAdapter:Lcom/conceptglobal/pmc/adapter/GridExpencesAdapter;

.field private expencesImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/ImageDetails;",
            ">;"
        }
    .end annotation
.end field

.field private farmerId:Ljava/lang/String;

.field flagvalue:I

.field private imageFile:Ljava/io/File;

.field private imageId:J

.field private imagePath:Ljava/lang/String;

.field imagePathGallery:Ljava/lang/String;

.field private imagelist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private imgDetails:Lcom/conceptglobal/pmc/model/ImageDetails;

.field private img_view:Landroid/widget/ImageView;

.field private mAppConstants:Lcom/conceptglobal/pmc/common/ConstantsPMC;

.field private mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

.field private progressdialog:Landroid/app/ProgressDialog;

.field private receiverIntent:Landroid/content/Intent;

.field private referenceId:Ljava/lang/String;

.field private referenceType:J

.field private final save:I

.field private strLat:Ljava/lang/String;

.field private strLong:Ljava/lang/String;

.field private tvComments:Landroid/widget/TextView;

.field private tvEvent:Landroid/widget/TextView;

.field private tvImage:Landroid/widget/TextView;

.field private tvSubject:Landroid/widget/TextView;

.field private final update:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 94
    invoke-direct {p0}, Lcom/conceptglobal/pmc/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 102
    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->receiverIntent:Landroid/content/Intent;

    const/4 v0, 0x2

    .line 117
    iput v0, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->update:I

    const/4 v0, 0x1

    .line 118
    iput v0, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->save:I

    .line 129
    iput v0, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->flagvalue:I

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;)J
    .locals 2

    .line 94
    iget-wide v0, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->referenceType:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;)I
    .locals 0

    .line 94
    iget p0, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->activityId:I

    return p0
.end method

.method static synthetic access$1000(Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;)Landroid/widget/EditText;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->edtsubject:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;)Landroid/widget/EditText;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->edtcomments:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;)[B
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->bitmapdata:[B

    return-object p0
.end method

.method static synthetic access$1202(Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;[B)[B
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->bitmapdata:[B

    return-object p1
.end method

.method static synthetic access$1300(Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;)Landroid/widget/ImageView;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->img_view:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;)J
    .locals 2

    .line 94
    iget-wide v0, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->imageId:J

    return-wide v0
.end method

.method static synthetic access$1500(Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;)Landroid/app/ProgressDialog;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->progressdialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->progressdialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->strLat:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->strLong:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;)Landroid/widget/TextView;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->eventId:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;)Ljava/util/ArrayList;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->imagelist:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;)Landroid/content/Context;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;)Ljava/io/File;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->imageFile:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$502(Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;Ljava/io/File;)Ljava/io/File;
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->imageFile:Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$600(Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;)Ljava/lang/String;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->imagePath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$602(Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->imagePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;)Landroid/widget/Button;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->btnsave:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$900(Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;)Lcom/conceptglobal/pmc/model/ImageDetails;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->imgDetails:Lcom/conceptglobal/pmc/model/ImageDetails;

    return-object p0
.end method

.method private fetchLocation()V
    .locals 4

    .line 937
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {v0, p0}, Lcom/conceptglobal/pmc/utils/LocationUtils;->checkPermissions(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 938
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {v0, p0}, Lcom/conceptglobal/pmc/utils/LocationUtils;->requestPermissions(Landroid/app/Activity;)V

    goto :goto_0

    .line 941
    :cond_0
    :try_start_0
    new-instance v0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;

    new-instance v1, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$9;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$9;-><init>(Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;)V

    const-string v2, "PictureReporting"

    const/4 v3, 0x1

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;-><init>(Landroid/app/Activity;ZLcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 958
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private getImageDetails()V
    .locals 4

    .line 187
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-wide v2, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->imageId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getImageDetailQueryBYImageId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getImageDetail(Ljava/lang/String;)Lcom/conceptglobal/pmc/model/ImageDetails;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->imgDetails:Lcom/conceptglobal/pmc/model/ImageDetails;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->btnsave:Landroid/widget/Button;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 190
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->btnsave:Landroid/widget/Button;

    const-string v1, "Update"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->btnsave:Landroid/widget/Button;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_updatePictureButton()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->btnDelete:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->edtsubject:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->imgDetails:Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/ImageDetails;->getSubject()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->edtcomments:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->imgDetails:Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/ImageDetails;->getComments()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->imgDetails:Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/ImageDetails;->getPicturePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->imagePath:Ljava/lang/String;

    .line 196
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->imgDetails:Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/ImageDetails;->getPicturePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 200
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->img_view:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method private getImageDetailsList()V
    .locals 4

    .line 206
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget v2, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->attrID:I

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->referenceId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getImagesPathList(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getImagesPathDetail(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->imagelist:Ljava/util/ArrayList;

    .line 207
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->existingimagelist:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private getRealPathFromURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 861
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 862
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->context:Landroid/content/Context;

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

    .line 864
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 866
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 867
    const-string p1, "_data"

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 868
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 455
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 456
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const p2, 0x10040

    .line 458
    invoke-virtual {p1, v0, p2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private saveImage(Ljava/io/File;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 686
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 689
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 691
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 692
    const-string v1, "_display_name"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    const-string p2, "mime_type"

    const-string v1, "image/jpeg"

    invoke-virtual {v0, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    const-string p2, "relative_path"

    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p2

    .line 697
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p2

    goto :goto_0

    .line 699
    :cond_0
    sget-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 700
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_1

    .line 702
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 703
    :cond_1
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 707
    :goto_0
    :try_start_0
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {p1, v0, v1, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 709
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 710
    throw p1
.end method

.method private setActionBar()V
    .locals 4

    .line 155
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->getIntent()Landroid/content/Intent;

    .line 156
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayOptions(I)V

    .line 157
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 158
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 159
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 160
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0c00c2

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setCustomView(I)V

    .line 161
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060020

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f090591

    .line 162
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090581

    .line 163
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 164
    const-string v1, "Picture Reporting"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setData()V
    .locals 2

    .line 174
    new-instance v0, Lcom/conceptglobal/pmc/adapter/GridExpencesAdapter;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->imagelist:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/conceptglobal/pmc/adapter/GridExpencesAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->expencesIimageAdapter:Lcom/conceptglobal/pmc/adapter/GridExpencesAdapter;

    .line 175
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->expencesGridView:Landroid/widget/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 176
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->expencesGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->expencesIimageAdapter:Lcom/conceptglobal/pmc/adapter/GridExpencesAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 177
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->expencesGridView:Landroid/widget/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->expencesGridView:Landroid/widget/GridView;

    new-instance v1, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$1;-><init>(Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private setEditableFalse(Landroid/widget/EditText;)V
    .locals 2

    const/4 v0, 0x0

    .line 929
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 930
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setClickable(Z)V

    .line 931
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 932
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private uriToFile(Landroid/net/Uri;)Ljava/io/File;
    .locals 8

    .line 997
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 998
    const-string v0, "_data"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    .line 999
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1000
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1001
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 1002
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_0

    .line 999
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v0

    :cond_1
    move-object v0, v1

    :goto_1
    if-eqz p1, :cond_4

    .line 1004
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 1005
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v2, "file"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1006
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    move-object v0, v1

    :cond_4
    :goto_2
    if-eqz v0, :cond_5

    .line 1009
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_5
    return-object v1
.end method


# virtual methods
.method public Initialize()V
    .locals 6

    const-string v0, ""

    .line 219
    iput-object p0, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->context:Landroid/content/Context;

    const v1, 0x7f0900ca

    .line 220
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->btnsave:Landroid/widget/Button;

    const/4 v2, 0x1

    .line 221
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    const v1, 0x7f090543

    .line 222
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->tvImage:Landroid/widget/TextView;

    const v1, 0x7f090527

    .line 223
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->tvEvent:Landroid/widget/TextView;

    const v1, 0x7f09052a

    .line 224
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->tvSubject:Landroid/widget/TextView;

    const v1, 0x7f090529

    .line 225
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->tvComments:Landroid/widget/TextView;

    .line 226
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->tvImage:Landroid/widget/TextView;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_pictureTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->tvEvent:Landroid/widget/TextView;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_eventTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->tvSubject:Landroid/widget/TextView;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_subjectTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->tvComments:Landroid/widget/TextView;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_commentsTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->btnsave:Landroid/widget/Button;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_savePictureButton()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0900c8

    .line 233
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->btncancel:Landroid/widget/Button;

    const v1, 0x7f0900c9

    .line 234
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->btnDelete:Landroid/widget/Button;

    const v1, 0x7f090243

    .line 235
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->img_view:Landroid/widget/ImageView;

    const v1, 0x7f090155

    .line 236
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->edtcomments:Landroid/widget/EditText;

    const v1, 0x7f090156

    .line 237
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->edtsubject:Landroid/widget/EditText;

    const v1, 0x7f090150

    .line 238
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->edtEventType:Landroid/widget/EditText;

    .line 239
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->btncancel:Landroid/widget/Button;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_cancelDialogButtonText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 241
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->eventId:Landroid/widget/TextView;

    .line 242
    const-string v2, "0"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->edtcomments:Landroid/widget/EditText;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 244
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->mAppConstants:Lcom/conceptglobal/pmc/common/ConstantsPMC;

    .line 245
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->receiverIntent:Landroid/content/Intent;

    .line 246
    const-string v2, "activityId"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->activityId:I

    .line 247
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->receiverIntent:Landroid/content/Intent;

    const-string v2, "assignmentId"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->assignmentId:I

    .line 248
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->receiverIntent:Landroid/content/Intent;

    const-string v2, "attributeId"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->attributeId:I

    .line 249
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->receiverIntent:Landroid/content/Intent;

    const-string v2, "farmerId"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->farmerId:Ljava/lang/String;

    .line 250
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->receiverIntent:Landroid/content/Intent;

    const-string v2, "setReferenceType"

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->referenceType:J

    .line 251
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->receiverIntent:Landroid/content/Intent;

    const-string v2, "setReferenceID"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->referenceId:Ljava/lang/String;

    .line 252
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->receiverIntent:Landroid/content/Intent;

    const-string v2, "imageId"

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->imageId:J

    .line 253
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->receiverIntent:Landroid/content/Intent;

    const-string v2, "AttributeID"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->attrID:I

    .line 254
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->receiverIntent:Landroid/content/Intent;

    const-string v2, "AttributeName"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->attrName:Ljava/lang/String;

    .line 255
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->receiverIntent:Landroid/content/Intent;

    const-string v2, "IdTransid"

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->IdTransid:J

    const v1, 0x7f090219

    .line 257
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->expencesGridView:Landroid/widget/GridView;

    const/4 v2, 0x0

    .line 258
    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 259
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->expencesImages:Ljava/util/List;

    .line 260
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->imagelist:Ljava/util/ArrayList;

    .line 261
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->existingimagelist:Ljava/util/ArrayList;

    .line 263
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->fetchLocation()V

    .line 265
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->edtEventType:Landroid/widget/EditText;

    new-instance v2, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$2;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$2;-><init>(Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->eventId:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->attrID:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->edtEventType:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->attrName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->edtEventType:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->setEditableFalse(Landroid/widget/EditText;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 288
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 290
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->img_view:Landroid/widget/ImageView;

    new-instance v1, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$3;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$3;-><init>(Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    # Gallery long press listener - START
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->img_view:Landroid/widget/ImageView;

    new-instance v1, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$GalleryLongClick;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$GalleryLongClick;-><init>(Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    # Gallery long press listener - END

    .line 362
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->btnsave:Landroid/widget/Button;

    new-instance v1, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$4;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$4;-><init>(Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 421
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->btncancel:Landroid/widget/Button;

    new-instance v1, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$5;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$5;-><init>(Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 434
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->btnDelete:Landroid/widget/Button;

    new-instance v1, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$6;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$6;-><init>(Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public alertdialogbox(Ljava/lang/String;)V
    .locals 2

    .line 874
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->builder1:Landroid/app/AlertDialog$Builder;

    .line 876
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_okText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$7;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$7;-><init>(Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 882
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->builder1:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 883
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 884
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 887
    const-string v0, "PictureReporting"

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 4

    .line 841
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 842
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

    .line 846
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v2, p1

    int-to-float v3, p2

    div-float/2addr v2, v3

    .line 847
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

.method public checkAndRequestPermission()V
    .locals 2

    .line 983
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 984
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 986
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->openGallery()V

    :goto_0
    return-void
.end method

.method public checkinsertdata()V
    .locals 7

    .line 497
    const-string v0, "PictureReporting"

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->imagelist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 498
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->existingimagelist:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->imagelist:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 499
    new-instance v3, Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-direct {v3}, Lcom/conceptglobal/pmc/model/ImageDetails;-><init>()V

    .line 500
    iget v4, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->activityId:I

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/model/ImageDetails;->setActivityId(I)V

    .line 501
    iget v4, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->assignmentId:I

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/model/ImageDetails;->setAssignmentId(I)V

    .line 502
    invoke-virtual {v3, v1}, Lcom/conceptglobal/pmc/model/ImageDetails;->setFarmerId(I)V

    .line 503
    iget-wide v4, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->imageId:J

    invoke-virtual {v3, v4, v5}, Lcom/conceptglobal/pmc/model/ImageDetails;->setImageId(J)V

    .line 504
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->mAppConstants:Lcom/conceptglobal/pmc/common/ConstantsPMC;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/model/ImageDetails;->setPdaID(I)V

    .line 505
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->imagelist:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/model/ImageDetails;->setPicturePath(Ljava/lang/String;)V

    .line 506
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->mAppConstants:Lcom/conceptglobal/pmc/common/ConstantsPMC;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/model/ImageDetails;->setCreatedBy(Ljava/lang/String;)V

    .line 507
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->edtcomments:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/model/ImageDetails;->setComments(Ljava/lang/String;)V

    .line 508
    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/model/ImageDetails;->setCtreatedDate(Ljava/lang/String;)V

    .line 509
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->edtsubject:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/model/ImageDetails;->setSubject(Ljava/lang/String;)V

    .line 510
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->mAppConstants:Lcom/conceptglobal/pmc/common/ConstantsPMC;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/model/ImageDetails;->setUpdatedBy(Ljava/lang/String;)V

    .line 511
    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/model/ImageDetails;->setUpdatedDate(Ljava/lang/String;)V

    .line 512
    iget v4, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->attrID:I

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/model/ImageDetails;->setAttributeId(I)V

    .line 513
    iget-wide v4, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->referenceType:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/model/ImageDetails;->setReferenceType(Ljava/lang/String;)V

    .line 514
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->referenceId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/model/ImageDetails;->setReferenceId(Ljava/lang/String;)V

    .line 515
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->eventId:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/model/ImageDetails;->setEventTypeId(I)V

    const/4 v4, 0x1

    .line 516
    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/model/ImageDetails;->setContentTypeId(I)V

    .line 517
    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->btnsave:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 518
    invoke-static {v3, v4}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertFarmerActivityDetailsImage(Lcom/conceptglobal/pmc/model/ImageDetails;Z)V

    goto :goto_1

    .line 520
    :cond_0
    invoke-static {v3, v1}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertFarmerActivityDetailsImage(Lcom/conceptglobal/pmc/model/ImageDetails;Z)V

    .line 521
    :goto_1
    const-string v3, "Navigation"

    const-string v4, "Image details saved in db"

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v0, v5}, Lcom/conceptglobal/pmc/utils/PLog;->location(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v1

    .line 525
    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 526
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-void
.end method

.method public compressImage(Ljava/lang/String;)Ljava/lang/String;
    .locals 20

    move-object/from16 v1, p0

    .line 717
    const-string v2, "PictureReporting Image compression doing scaledBitmap"

    const-string v3, "PictureReporting Image compression"

    const-string v4, "EXIF"

    .line 0
    const-string v5, "Exif: "

    const-string v6, "size is:::"

    .line 717
    invoke-direct/range {p0 .. p1}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->getRealPathFromURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 720
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v0, 0x1

    .line 721
    iput-boolean v0, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 722
    invoke-static {v7, v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 724
    iget v10, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 725
    iget v11, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 728
    div-int v12, v11, v10

    int-to-float v12, v12

    int-to-float v13, v10

    const/high16 v14, 0x441a0000    # 616.0f

    const/high16 v15, 0x43ce0000    # 412.0f

    cmpl-float v16, v13, v14

    if-gtz v16, :cond_0

    int-to-float v0, v11

    cmpl-float v0, v0, v15

    if-lez v0, :cond_3

    :cond_0
    const v0, 0x3f2b3885

    cmpg-float v10, v12, v0

    if-gez v10, :cond_1

    div-float v0, v14, v13

    int-to-float v10, v11

    mul-float v0, v0, v10

    float-to-int v11, v0

    float-to-int v10, v14

    goto :goto_1

    :cond_1
    cmpl-float v0, v12, v0

    if-lez v0, :cond_2

    int-to-float v0, v11

    div-float v0, v15, v0

    mul-float v0, v0, v13

    float-to-int v10, v0

    goto :goto_0

    :cond_2
    float-to-int v10, v14

    :goto_0
    float-to-int v11, v15

    .line 746
    :cond_3
    :goto_1
    invoke-virtual {v1, v8, v11, v10}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    iput v0, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v12, 0x0

    .line 747
    iput-boolean v12, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 748
    iput-boolean v12, v8, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    const/4 v0, 0x1

    .line 749
    iput-boolean v0, v8, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 750
    iput-boolean v0, v8, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    const/16 v0, 0x4000

    .line 751
    new-array v0, v0, [B

    iput-object v0, v8, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 752
    const-string v0, "PictureReporting Converting actual image size to bitmap size using BitmapFactory.Options "

    const-string v13, "Converting original to sizedBitmap"

    invoke-static {v0, v13}, Lcom/conceptglobal/pmc/utils/PLog;->eCam(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    :try_start_0
    invoke-static {v7, v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 757
    :try_start_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 758
    sget-object v13, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v14, 0x64

    invoke-virtual {v9, v13, v14, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 759
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, v1, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->bitmapdata:[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    move-exception v0

    .line 762
    :try_start_2
    invoke-static {v3, v0}, Lcom/conceptglobal/pmc/utils/PLog;->ecam(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 764
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 769
    invoke-static {v3, v0}, Lcom/conceptglobal/pmc/utils/PLog;->ecam(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 773
    :goto_2
    :try_start_3
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v10, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    .line 776
    invoke-static {v2, v0}, Lcom/conceptglobal/pmc/utils/PLog;->ecam(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_3
    move-object v3, v0

    int-to-float v0, v11

    .line 780
    iget v11, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v11, v11

    div-float v11, v0, v11

    int-to-float v10, v10

    .line 781
    iget v8, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v8, v8

    div-float v8, v10, v8

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v0, v13

    div-float/2addr v10, v13

    .line 785
    new-instance v13, Landroid/graphics/Matrix;

    invoke-direct {v13}, Landroid/graphics/Matrix;-><init>()V

    .line 786
    invoke-virtual {v13, v11, v8, v0, v10}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 788
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 789
    invoke-virtual {v8, v13}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 790
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    const/4 v13, 0x2

    div-int/2addr v11, v13

    int-to-float v11, v11

    sub-float/2addr v0, v11

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    div-int/2addr v11, v13

    int-to-float v11, v11

    sub-float/2addr v10, v11

    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11, v13}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v8, v9, v0, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 793
    :try_start_4
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, v7}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 795
    const-string v8, "Orientation"

    invoke-virtual {v0, v8, v12}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    .line 796
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    const/4 v9, 0x6

    if-ne v0, v9, :cond_4

    const/high16 v9, 0x42b40000    # 90.0f

    .line 799
    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 800
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_4
    const/4 v9, 0x3

    if-ne v0, v9, :cond_5

    const/high16 v9, 0x43340000    # 180.0f

    .line 802
    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 803
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_5
    const/16 v9, 0x8

    if-ne v0, v9, :cond_6

    const/high16 v9, 0x43870000    # 270.0f

    .line 805
    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 806
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    :cond_6
    :goto_4
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    const/16 v19, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v13, v3

    move-object/from16 v18, v8

    invoke-static/range {v13 .. v19}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    .line 811
    invoke-static {v2, v0}, Lcom/conceptglobal/pmc/utils/PLog;->ecam(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 818
    :goto_5
    :try_start_5
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 819
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x50

    invoke-virtual {v3, v2, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 820
    invoke-virtual {v1, v3}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->sizeOf(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 821
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_6

    :catch_4
    move-exception v0

    .line 824
    const-string v2, "PictureReporting Image compression doing outputfile"

    invoke-static {v2, v0}, Lcom/conceptglobal/pmc/utils/PLog;->ecam(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_6
    return-object v7
.end method

.method protected displayNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lde/keyboardsurfer/android/widget/crouton/Style;->ALERT:Lde/keyboardsurfer/android/widget/crouton/Style;

    invoke-static {p0, p1, p2}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->showText(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;)V

    return-void
.end method

.method public hideLoader()V
    .locals 1

    .line 915
    new-instance v0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$8;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$8;-><init>(Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;)V

    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public loadDiskThumbnail(Landroid/content/Context;Landroid/widget/ImageView;Ljava/io/File;)V
    .locals 0

    .line 672
    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->imagePath:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 673
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 675
    :try_start_0
    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->imagelist:Ljava/util/ArrayList;

    iget-object p3, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->imagePath:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 676
    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->expencesIimageAdapter:Lcom/conceptglobal/pmc/adapter/GridExpencesAdapter;

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/adapter/GridExpencesAdapter;->notifyDataSetChanged()V

    .line 677
    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->imageFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->saveImage(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 679
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    const-string v0, "image compressed "

    .line 576
    invoke-super {p0, p1, p2, p3}, Lcom/conceptglobal/pmc/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 577
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "dd-M-yyyy"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const/4 v1, -0x1

    if-ne p2, v1, :cond_6

    const/16 v2, 0x2712

    if-eq p1, v2, :cond_camera_ok

    # Check if gallery request code 0x2713
    const/16 v2, 0x2713
    if-ne p1, v2, :cond_3

    # === GALLERY RESULT HANDLER ===
    if-eqz p3, :cond_6

    :try_start_gallery
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;
    move-result-object v0

    if-eqz v0, :cond_6

    # Open InputStream from content URI
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->getContentResolver()Landroid/content/ContentResolver;
    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    move-result-object v2

    if-eqz v2, :cond_6

    # Get the imagePath (already set by GalleryLongClick)
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->imagePath:Ljava/lang/String;

    if-eqz v0, :cond_6

    # Create output stream to imagePath
    new-instance v3, Ljava/io/FileOutputStream;
    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    # Copy buffer = new byte[4096]
    const/16 v4, 0x1000
    new-array v4, v4, [B

    :gallery_copy_loop
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I
    move-result v5

    const/4 v0, -0x1
    if-eq v5, v0, :gallery_copy_done

    const/4 v0, 0x0
    invoke-virtual {v3, v4, v0, v5}, Ljava/io/OutputStream;->write([BII)V

    goto :gallery_copy_loop

    :gallery_copy_done
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    # Compress and display
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->imagePath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->compressImage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    # Load thumbnail
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->imageFile:Ljava/io/File;
    if-eqz v2, :cond_6

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->context:Landroid/content/Context;
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->img_view:Landroid/widget/ImageView;

    invoke-static {v3, v4, v2}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->loadDiskThumbnail(Landroid/content/Context;Landroid/widget/ImageView;Ljava/io/File;)V

    :try_end_gallery
    .catch Ljava/lang/Exception; {:try_start_gallery .. :try_end_gallery} :catch_gallery

    goto/16 :goto_0

    :catch_gallery
    move-exception v0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
    # === END GALLERY HANDLER ===

    :cond_camera_ok

    .line 581
    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Navigation"

    const-string v1, "ImageCaptured "

    const-string v2, "PictureReporting"

    invoke-static {p2, v1, v2, p1}, Lcom/conceptglobal/pmc/utils/PLog;->location(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    :try_start_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->imagePath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const-string v3, "PictureReporting Default Camera after pic captured"

    const-string v4, "DefaultCamera Imagepath"

    if-eqz p1, :cond_1

    if-eqz p3, :cond_0

    .line 585
    :try_start_1
    const-string p1, "PictureReporting CustomCamera bitmapImage returned"

    const-string p2, "CustomCamera Image"

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/utils/PLog;->eCam(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    new-instance p1, Ljava/io/File;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 588
    const-string p2, "bitmapData"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p2

    iput-object p2, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->bitmapdata:[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 590
    :try_start_2
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 591
    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->context:Landroid/content/Context;

    iget-object p3, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->img_view:Landroid/widget/ImageView;

    invoke-virtual {p0, p2, p3, p1}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->loadDiskThumbnail(Landroid/content/Context;Landroid/widget/ImageView;Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 594
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 595
    const-string p2, "PictureReporting Custom Camera after pic captured"

    invoke-static {p2, p1}, Lcom/conceptglobal/pmc/utils/PLog;->ecam(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 600
    :cond_0
    const-string p1, "PictureReporting DefaultCamera imagepath returned"

    invoke-static {p1, v4}, Lcom/conceptglobal/pmc/utils/PLog;->eCam(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->imagePath:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p1, v2, p3}, Lcom/conceptglobal/pmc/utils/PLog;->location(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    new-instance p1, Ljava/io/File;

    iget-object p3, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->imagePath:Ljava/lang/String;

    invoke-direct {p1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 604
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_6

    .line 605
    const-string p3, "image saved in file "

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p3, v2, v1}, Lcom/conceptglobal/pmc/utils/PLog;->location(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->compressImage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 607
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0, v2, v1}, Lcom/conceptglobal/pmc/utils/PLog;->location(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    if-eqz p3, :cond_6

    .line 610
    :try_start_4
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 611
    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->context:Landroid/content/Context;

    iget-object p3, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->img_view:Landroid/widget/ImageView;

    invoke-virtual {p0, p2, p3, p1}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->loadDiskThumbnail(Landroid/content/Context;Landroid/widget/ImageView;Ljava/io/File;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception p1

    .line 614
    :try_start_5
    invoke-static {v3, p1}, Lcom/conceptglobal/pmc/utils/PLog;->ecam(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 616
    invoke-static {v2, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 621
    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 622
    const-string p1, "PictureReporting DefaultCamera imagepath returned through data"

    invoke-static {p1, v4}, Lcom/conceptglobal/pmc/utils/PLog;->eCam(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    new-instance p1, Ljava/io/File;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 625
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 626
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->compressImage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    if-eqz p2, :cond_6

    .line 629
    :try_start_6
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 630
    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->context:Landroid/content/Context;

    iget-object p3, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->img_view:Landroid/widget/ImageView;

    invoke-virtual {p0, p2, p3, p1}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->loadDiskThumbnail(Landroid/content/Context;Landroid/widget/ImageView;Ljava/io/File;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    :catch_2
    move-exception p1

    .line 633
    :try_start_7
    invoke-static {v3, p1}, Lcom/conceptglobal/pmc/utils/PLog;->ecam(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 639
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->img_view:Landroid/widget/ImageView;

    const p2, 0x7f080193

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_0

    :catch_3
    move-exception p1

    .line 642
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 643
    const-string p2, "PictureReporting after pic captured"

    invoke-static {p2, p1}, Lcom/conceptglobal/pmc/utils/PLog;->ecam(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    const/4 p3, 0x1

    if-ne p1, p3, :cond_6

    if-eq p2, v1, :cond_5

    if-eqz p2, :cond_4

    goto :goto_0

    .line 662
    :cond_4
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    const-string p2, "GPSNotTurnedOn"

    invoke-virtual {p1, p0, p2}, Lcom/conceptglobal/pmc/utils/LocationUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 658
    :cond_5
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->fetchLocation()V

    :cond_6
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 136
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c006a

    .line 137
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->setContentView(I)V

    .line 138
    iput-object p0, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->context:Landroid/content/Context;

    .line 139
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getLanguageConfigurations(Landroid/content/Context;)V

    .line 140
    new-instance p1, Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-direct {p1}, Lcom/conceptglobal/pmc/utils/LocationUtils;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    .line 141
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_pictureTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    .line 142
    const-string p1, "PictureReporting"

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Navigation"

    const-string v2, "onCreate()"

    invoke-static {v1, v2, p1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->location(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->Initialize()V

    .line 144
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->getImageDetails()V

    .line 145
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->getImageDetailsList()V

    .line 146
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->setData()V

    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .line 487
    invoke-super {p0}, Lcom/conceptglobal/pmc/BaseActivity;->onDestroy()V

    .line 488
    const-string v0, "PictureReporting"

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Navigation"

    const-string v3, "onDestraoy"

    invoke-static {v2, v3, v0, v1}, Lcom/conceptglobal/pmc/utils/PLog;->location(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onLowMemory()V
    .locals 4

    .line 212
    invoke-super {p0}, Lcom/conceptglobal/pmc/BaseActivity;->onLowMemory()V

    .line 213
    const-string v0, "PictureReporting"

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Navigation"

    const-string v3, "onLowMemory"

    invoke-static {v2, v3, v0, v1}, Lcom/conceptglobal/pmc/utils/PLog;->location(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 469
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 476
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 471
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 966
    const-string p2, "onRequestPermissionResult"

    const-string v0, "PictureReporting"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0x22

    if-ne p1, p2, :cond_2

    .line 968
    array-length p1, p3

    if-gtz p1, :cond_0

    .line 971
    const-string p1, "User interaction was cancelled."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 972
    aget p1, p3, p1

    if-nez p1, :cond_1

    .line 974
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->fetchLocation()V

    goto :goto_0

    .line 977
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    const-string p2, "PermissionDenied"

    invoke-virtual {p1, p0, p2}, Lcom/conceptglobal/pmc/utils/LocationUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "onRestoreInstanceState--loading----"

    if-eqz p1, :cond_0

    .line 545
    const-string v1, "photopath"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 546
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->imagePath:Ljava/lang/String;

    .line 547
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onRestoreInstanceState---"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->imagePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PictureReporting"

    invoke-static {v2, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->imagePath:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 549
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "onRestoreInstanceState-imagePath----"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->imagePath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->imagePath:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 551
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 552
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onRestoreInstanceState--imgFile----"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->compressImage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 556
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 557
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->img_view:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v3, v1}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->loadDiskThumbnail(Landroid/content/Context;Landroid/widget/ImageView;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 561
    invoke-static {v2, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 569
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 481
    invoke-super {p0}, Lcom/conceptglobal/pmc/BaseActivity;->onResume()V

    .line 482
    const-string v0, "PictureReporting"

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Navigation"

    const-string v3, "onResume()"

    invoke-static {v2, v3, v0, v1}, Lcom/conceptglobal/pmc/utils/PLog;->location(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 534
    const-string v0, "photopath"

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->imagePath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSaveInstanceState---"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->imagePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PictureReporting"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public openGallery()V
    .locals 3

    .line 991
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v1, 0x1

    .line 992
    invoke-virtual {p0, v0, v1}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public showLoader(Ljava/lang/String;)V
    .locals 1

    .line 909
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->hideLoader()V

    .line 910
    new-instance v0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$RunShowLoader;

    invoke-direct {v0, p0, p1}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$RunShowLoader;-><init>(Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected sizeOf(Landroid/graphics/Bitmap;)I
    .locals 0

    .line 835
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result p1

    return p1
.end method

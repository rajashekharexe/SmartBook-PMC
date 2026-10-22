.class public Lcom/conceptglobal/pmc/fo/PictureReportingExpences;
.super Lcom/conceptglobal/pmc/BaseActivity;
.source "PictureReportingExpences.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/fo/PictureReportingExpences$RunShowLoader;
    }
.end annotation


# static fields
.field private static final CAM_IMAGE:I = 0x2712

.field private static final TAG:Ljava/lang/String; = "PictureReporting"


# instance fields
.field private activityId:I

.field private assignmentId:I

.field private attributeId:I

.field private bitmapdata:[B

.field private blobcountaddone:I

.field private blobcountfromDB:I

.field private bloburipath:Ljava/lang/String;

.field private btnDelete:Landroid/widget/Button;

.field private btncancel:Landroid/widget/Button;

.field private btnsave:Landroid/widget/Button;

.field private builder1:Landroid/app/AlertDialog$Builder;

.field private context:Landroid/content/Context;

.field private edtEventType:Landroid/widget/EditText;

.field private edtExpencesAmount:Landroid/widget/EditText;

.field private edtExpencesType:Landroid/widget/EditText;

.field private edtcomments:Landroid/widget/EditText;

.field private edtsubject:Landroid/widget/EditText;

.field private eventId:Landroid/widget/TextView;

.field private farmerId:Ljava/lang/String;

.field private imageFile:Ljava/io/File;

.field private imageId:J

.field private imagePath:Ljava/lang/String;

.field private imgDetails:Lcom/conceptglobal/pmc/model/ImageDetails;

.field private img_view:Landroid/widget/ImageView;

.field private llExpencesAmount:Landroid/widget/LinearLayout;

.field private llExpencesType:Landroid/widget/LinearLayout;

.field private mAppConstants:Lcom/conceptglobal/pmc/common/ConstantsPMC;

.field private progressdialog:Landroid/app/ProgressDialog;

.field private receiverIntent:Landroid/content/Intent;

.field private referenceId:Ljava/lang/String;

.field private referenceType:J

.field private final save:I

.field private tvComments:Landroid/widget/TextView;

.field private tvEvent:Landroid/widget/TextView;

.field private tvImage:Landroid/widget/TextView;

.field private tvSubject:Landroid/widget/TextView;

.field private tvlatitude:Landroid/widget/TextView;

.field private tvlongitude:Landroid/widget/TextView;

.field private final update:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Lcom/conceptglobal/pmc/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->receiverIntent:Landroid/content/Intent;

    const/4 v0, 0x2

    .line 96
    iput v0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->update:I

    const/4 v0, 0x1

    .line 97
    iput v0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->save:I

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/fo/PictureReportingExpences;)J
    .locals 2

    .line 72
    iget-wide v0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->referenceType:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/fo/PictureReportingExpences;)I
    .locals 0

    .line 72
    iget p0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->activityId:I

    return p0
.end method

.method static synthetic access$1000(Lcom/conceptglobal/pmc/fo/PictureReportingExpences;)Landroid/widget/EditText;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->edtcomments:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/conceptglobal/pmc/fo/PictureReportingExpences;)[B
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->bitmapdata:[B

    return-object p0
.end method

.method static synthetic access$1102(Lcom/conceptglobal/pmc/fo/PictureReportingExpences;[B)[B
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->bitmapdata:[B

    return-object p1
.end method

.method static synthetic access$1200(Lcom/conceptglobal/pmc/fo/PictureReportingExpences;)Landroid/widget/ImageView;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->img_view:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/conceptglobal/pmc/fo/PictureReportingExpences;)J
    .locals 2

    .line 72
    iget-wide v0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->imageId:J

    return-wide v0
.end method

.method static synthetic access$1400(Lcom/conceptglobal/pmc/fo/PictureReportingExpences;)Landroid/app/ProgressDialog;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->progressdialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/conceptglobal/pmc/fo/PictureReportingExpences;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->progressdialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/fo/PictureReportingExpences;)Landroid/widget/TextView;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->eventId:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/fo/PictureReportingExpences;)Landroid/content/Context;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/fo/PictureReportingExpences;)Ljava/io/File;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->imageFile:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$402(Lcom/conceptglobal/pmc/fo/PictureReportingExpences;Ljava/io/File;)Ljava/io/File;
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->imageFile:Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$500(Lcom/conceptglobal/pmc/fo/PictureReportingExpences;)Ljava/lang/String;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->imagePath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$502(Lcom/conceptglobal/pmc/fo/PictureReportingExpences;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->imagePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/conceptglobal/pmc/fo/PictureReportingExpences;Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/conceptglobal/pmc/fo/PictureReportingExpences;)Landroid/widget/Button;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->btnsave:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$800(Lcom/conceptglobal/pmc/fo/PictureReportingExpences;)Lcom/conceptglobal/pmc/model/ImageDetails;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->imgDetails:Lcom/conceptglobal/pmc/model/ImageDetails;

    return-object p0
.end method

.method static synthetic access$900(Lcom/conceptglobal/pmc/fo/PictureReportingExpences;)Landroid/widget/EditText;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->edtsubject:Landroid/widget/EditText;

    return-object p0
.end method

.method private getImageDetails()V
    .locals 4

    .line 154
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-wide v2, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->imageId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getImageDetailQueryBYImageId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getImageDetail(Ljava/lang/String;)Lcom/conceptglobal/pmc/model/ImageDetails;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->imgDetails:Lcom/conceptglobal/pmc/model/ImageDetails;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->btnsave:Landroid/widget/Button;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 157
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->btnsave:Landroid/widget/Button;

    const-string v1, "Update"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->btnsave:Landroid/widget/Button;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_updatePictureButton()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->btnDelete:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->edtsubject:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->imgDetails:Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/ImageDetails;->getSubject()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->edtcomments:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->imgDetails:Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/ImageDetails;->getComments()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->imgDetails:Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/ImageDetails;->getPicturePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->imagePath:Ljava/lang/String;

    .line 163
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->imgDetails:Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/ImageDetails;->getPicturePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 167
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->img_view:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method private getRealPathFromURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 776
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 777
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->context:Landroid/content/Context;

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

    .line 779
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 781
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 782
    const-string p1, "_data"

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 783
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

    .line 434
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 435
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const p2, 0x10040

    .line 437
    invoke-virtual {p1, v0, p2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public static loadDiskThumbnail(Landroid/content/Context;Landroid/widget/ImageView;Ljava/io/File;)V
    .locals 0

    .line 626
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/squareup/picasso/Picasso;->load(Ljava/io/File;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p0

    const/16 p2, 0x62

    invoke-virtual {p0, p2, p2}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/squareup/picasso/RequestCreator;->skipMemoryCache()Lcom/squareup/picasso/RequestCreator;

    move-result-object p0

    const p2, 0x7f0801d0

    invoke-virtual {p0, p2}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    return-void
.end method

.method private setActionBar()V
    .locals 4

    .line 123
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->getIntent()Landroid/content/Intent;

    .line 124
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayOptions(I)V

    .line 125
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 126
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 127
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 128
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0c00c2

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setCustomView(I)V

    .line 129
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060020

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f090591

    .line 130
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090581

    .line 131
    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 132
    const-string v1, "Picture Reporting"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setData()V
    .locals 8

    const-string v0, ""

    .line 142
    iget-wide v1, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->imageId:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->imgDetails:Lcom/conceptglobal/pmc/model/ImageDetails;

    if-eqz v1, :cond_0

    .line 144
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->eventId:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->imgDetails:Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/ImageDetails;->getEventTypeId()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->edtEventType:Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    const-string v2, "ItemKey"

    const-string v3, "ConfigurablelookupMaster"

    const-string v4, "ItemType"

    const-string v5, "ImageEventType"

    const-string v6, "ItemValue"

    iget-object v7, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->imgDetails:Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/ImageDetails;->getEventTypeId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v1 .. v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getPictureEventDisplayField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 147
    const-string v1, "PictureReporting"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public Initialize()V
    .locals 11

    .line 181
    iput-object p0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->context:Landroid/content/Context;

    const v0, 0x7f0900ca

    .line 182
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->btnsave:Landroid/widget/Button;

    const/4 v1, 0x1

    .line 183
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f090543

    .line 184
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->tvImage:Landroid/widget/TextView;

    const v0, 0x7f090527

    .line 185
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->tvEvent:Landroid/widget/TextView;

    const v0, 0x7f09052a

    .line 186
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->tvSubject:Landroid/widget/TextView;

    const v0, 0x7f090529

    .line 187
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->tvComments:Landroid/widget/TextView;

    .line 188
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->tvImage:Landroid/widget/TextView;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_pictureTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->tvEvent:Landroid/widget/TextView;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_eventTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->tvSubject:Landroid/widget/TextView;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_subjectTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->tvComments:Landroid/widget/TextView;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_commentsTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->btnsave:Landroid/widget/Button;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_savePictureButton()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0900c8

    .line 195
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->btncancel:Landroid/widget/Button;

    const v0, 0x7f0900c9

    .line 196
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->btnDelete:Landroid/widget/Button;

    const v0, 0x7f090243

    .line 197
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->img_view:Landroid/widget/ImageView;

    const v0, 0x7f090155

    .line 198
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->edtcomments:Landroid/widget/EditText;

    const v0, 0x7f090156

    .line 199
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->edtsubject:Landroid/widget/EditText;

    const v0, 0x7f090150

    .line 200
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->edtEventType:Landroid/widget/EditText;

    .line 201
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const v0, 0x7f090152

    .line 202
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->edtExpencesType:Landroid/widget/EditText;

    const v0, 0x7f090151

    .line 203
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->edtExpencesAmount:Landroid/widget/EditText;

    const v0, 0x7f0902a2

    .line 204
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->llExpencesAmount:Landroid/widget/LinearLayout;

    const v0, 0x7f0902a3

    .line 205
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->llExpencesType:Landroid/widget/LinearLayout;

    .line 206
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->btncancel:Landroid/widget/Button;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_cancelDialogButtonText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 207
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->eventId:Landroid/widget/TextView;

    .line 208
    const-string v2, "0"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->edtcomments:Landroid/widget/EditText;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 210
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->mAppConstants:Lcom/conceptglobal/pmc/common/ConstantsPMC;

    .line 211
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->receiverIntent:Landroid/content/Intent;

    .line 212
    const-string v2, "activityId"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->activityId:I

    .line 213
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->receiverIntent:Landroid/content/Intent;

    const-string v2, "assignmentId"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->assignmentId:I

    .line 214
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->receiverIntent:Landroid/content/Intent;

    const-string v2, "attributeId"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->attributeId:I

    .line 215
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->receiverIntent:Landroid/content/Intent;

    const-string v2, "farmerId"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->farmerId:Ljava/lang/String;

    .line 216
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->receiverIntent:Landroid/content/Intent;

    const-string v2, "setReferenceType"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->referenceType:J

    .line 217
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->receiverIntent:Landroid/content/Intent;

    const-string v2, "setReferenceID"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->referenceId:Ljava/lang/String;

    .line 218
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->receiverIntent:Landroid/content/Intent;

    const-string v2, "imageId"

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->imageId:J

    .line 220
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->edtEventType:Landroid/widget/EditText;

    new-instance v2, Lcom/conceptglobal/pmc/fo/PictureReportingExpences$1;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fo/PictureReportingExpences$1;-><init>(Lcom/conceptglobal/pmc/fo/PictureReportingExpences;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->edtExpencesType:Landroid/widget/EditText;

    new-instance v2, Lcom/conceptglobal/pmc/fo/PictureReportingExpences$2;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fo/PictureReportingExpences$2;-><init>(Lcom/conceptglobal/pmc/fo/PictureReportingExpences;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-wide v6, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->referenceType:J

    invoke-virtual {v2, v6, v7}, Lcom/conceptglobal/pmc/common/Queries;->gettingDropdownValuesBasedItemCode(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getlotdata(Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v0

    .line 253
    iget-wide v6, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->referenceType:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-wide/16 v8, 0x1

    const-string v2, ""

    cmp-long v10, v6, v8

    if-nez v10, :cond_0

    :try_start_1
    iget-wide v8, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->imageId:J

    cmp-long v10, v8, v4

    if-nez v10, :cond_0

    .line 254
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->eventId:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, v0, v1

    aget-object v2, v2, v3

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->edtEventType:Landroid/widget/EditText;

    aget-object v0, v0, v1

    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_0
    const-wide/16 v8, 0x2

    cmp-long v10, v6, v8

    if-eqz v10, :cond_1

    const-wide/16 v8, 0x3

    cmp-long v10, v6, v8

    if-nez v10, :cond_2

    .line 256
    :cond_1
    iget-wide v8, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->imageId:J

    cmp-long v10, v8, v4

    if-nez v10, :cond_2

    .line 257
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->eventId:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x3

    aget-object v6, v0, v2

    aget-object v3, v6, v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->edtEventType:Landroid/widget/EditText;

    aget-object v0, v0, v2

    aget-object v0, v0, v1

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_2
    const-wide/16 v8, 0xa

    cmp-long v10, v6, v8

    if-nez v10, :cond_4

    .line 259
    iget-wide v6, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->imageId:J

    cmp-long v8, v6, v4

    if-nez v8, :cond_4

    .line 260
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->receiverIntent:Landroid/content/Intent;

    const-string v1, "EventTypeId"

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 261
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->eventId:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->edtEventType:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->receiverIntent:Landroid/content/Intent;

    const-string v5, "EventText"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 263
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->edtEventType:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 264
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->edtEventType:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setClickable(Z)V

    .line 265
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->edtEventType:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 266
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->edtEventType:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0800e2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 270
    :try_start_2
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    const-string v5, "Expenses"

    const-string v6, "ImageEventType"

    invoke-virtual {v4, v5, v6}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLookupValue(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v2, v4, v0

    if-nez v2, :cond_3

    .line 272
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->llExpencesType:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 273
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->llExpencesAmount:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 275
    :cond_3
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->llExpencesType:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 276
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->llExpencesAmount:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 279
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 282
    :cond_4
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->eventId:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, v0, v3

    aget-object v2, v2, v3

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->edtEventType:Landroid/widget/EditText;

    aget-object v0, v0, v3

    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 286
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 288
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->img_view:Landroid/widget/ImageView;

    new-instance v1, Lcom/conceptglobal/pmc/fo/PictureReportingExpences$3;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/PictureReportingExpences$3;-><init>(Lcom/conceptglobal/pmc/fo/PictureReportingExpences;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    # Gallery long press listener - START
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->img_view:Landroid/widget/ImageView;

    new-instance v1, Lcom/conceptglobal/pmc/fo/PictureReportingExpences$GalleryLongClick;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/PictureReportingExpences$GalleryLongClick;-><init>(Lcom/conceptglobal/pmc/fo/PictureReportingExpences;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    # Gallery long press listener - END

    .line 342
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->btnsave:Landroid/widget/Button;

    new-instance v1, Lcom/conceptglobal/pmc/fo/PictureReportingExpences$4;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/PictureReportingExpences$4;-><init>(Lcom/conceptglobal/pmc/fo/PictureReportingExpences;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 400
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->btncancel:Landroid/widget/Button;

    new-instance v1, Lcom/conceptglobal/pmc/fo/PictureReportingExpences$5;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/PictureReportingExpences$5;-><init>(Lcom/conceptglobal/pmc/fo/PictureReportingExpences;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 413
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->btnDelete:Landroid/widget/Button;

    new-instance v1, Lcom/conceptglobal/pmc/fo/PictureReportingExpences$6;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/PictureReportingExpences$6;-><init>(Lcom/conceptglobal/pmc/fo/PictureReportingExpences;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public alertdialogbox(Ljava/lang/String;)V
    .locals 2

    .line 794
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->builder1:Landroid/app/AlertDialog$Builder;

    .line 796
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

    new-instance v1, Lcom/conceptglobal/pmc/fo/PictureReportingExpences$7;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/PictureReportingExpences$7;-><init>(Lcom/conceptglobal/pmc/fo/PictureReportingExpences;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 802
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->builder1:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 803
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 804
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 807
    const-string v0, "PictureReporting"

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 4

    .line 756
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 757
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

    .line 761
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v2, p1

    int-to-float v3, p2

    div-float/2addr v2, v3

    .line 762
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

.method public checkinsertdata()V
    .locals 6

    .line 476
    const-string v0, "PictureReporting"

    :try_start_0
    new-instance v1, Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-direct {v1}, Lcom/conceptglobal/pmc/model/ImageDetails;-><init>()V

    .line 477
    iget v2, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->activityId:I

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/model/ImageDetails;->setActivityId(I)V

    .line 478
    iget v2, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->assignmentId:I

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/model/ImageDetails;->setAssignmentId(I)V

    const/4 v2, 0x0

    .line 479
    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/model/ImageDetails;->setFarmerId(I)V

    .line 480
    iget-wide v3, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->imageId:J

    invoke-virtual {v1, v3, v4}, Lcom/conceptglobal/pmc/model/ImageDetails;->setImageId(J)V

    .line 481
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->mAppConstants:Lcom/conceptglobal/pmc/common/ConstantsPMC;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/conceptglobal/pmc/model/ImageDetails;->setPdaID(I)V

    .line 482
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->imagePath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/conceptglobal/pmc/model/ImageDetails;->setPicturePath(Ljava/lang/String;)V

    .line 483
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->mAppConstants:Lcom/conceptglobal/pmc/common/ConstantsPMC;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/conceptglobal/pmc/model/ImageDetails;->setCreatedBy(Ljava/lang/String;)V

    .line 485
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->edtExpencesType:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/conceptglobal/pmc/model/ImageDetails;->setComments(Ljava/lang/String;)V

    .line 486
    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/conceptglobal/pmc/model/ImageDetails;->setCtreatedDate(Ljava/lang/String;)V

    .line 488
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->edtExpencesAmount:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/conceptglobal/pmc/model/ImageDetails;->setSubject(Ljava/lang/String;)V

    .line 489
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->mAppConstants:Lcom/conceptglobal/pmc/common/ConstantsPMC;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/conceptglobal/pmc/model/ImageDetails;->setUpdatedBy(Ljava/lang/String;)V

    .line 490
    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/conceptglobal/pmc/model/ImageDetails;->setUpdatedDate(Ljava/lang/String;)V

    .line 491
    iget v3, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->attributeId:I

    invoke-virtual {v1, v3}, Lcom/conceptglobal/pmc/model/ImageDetails;->setAttributeId(I)V

    .line 492
    iget-wide v3, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->referenceType:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/conceptglobal/pmc/model/ImageDetails;->setReferenceType(Ljava/lang/String;)V

    .line 493
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->referenceId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/conceptglobal/pmc/model/ImageDetails;->setReferenceId(Ljava/lang/String;)V

    .line 494
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->eventId:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/conceptglobal/pmc/model/ImageDetails;->setEventTypeId(I)V

    const/4 v3, 0x1

    .line 495
    invoke-virtual {v1, v3}, Lcom/conceptglobal/pmc/model/ImageDetails;->setContentTypeId(I)V

    .line 496
    iget-object v4, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->btnsave:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 497
    invoke-static {v1, v3}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertFarmerActivityDetailsImageAttendance(Lcom/conceptglobal/pmc/model/ImageDetails;Z)V

    goto :goto_0

    .line 499
    :cond_0
    invoke-static {v1, v2}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertFarmerActivityDetailsImageAttendance(Lcom/conceptglobal/pmc/model/ImageDetails;Z)V

    .line 500
    :goto_0
    const-string v1, "Navigation"

    const-string v2, "Image details saved in db"

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Lcom/conceptglobal/pmc/utils/PLog;->location(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 502
    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 503
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public compressImage(Ljava/lang/String;)Ljava/lang/String;
    .locals 20

    move-object/from16 v1, p0

    .line 632
    const-string v2, "PictureReporting Image compression doing scaledBitmap"

    const-string v3, "PictureReporting Image compression"

    const-string v4, "EXIF"

    .line 0
    const-string v5, "Exif: "

    const-string v6, "size is:::"

    .line 632
    invoke-direct/range {p0 .. p1}, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->getRealPathFromURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 635
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v0, 0x1

    .line 636
    iput-boolean v0, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 637
    invoke-static {v7, v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 639
    iget v10, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 640
    iget v11, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 643
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

    .line 661
    :cond_3
    :goto_1
    invoke-virtual {v1, v8, v11, v10}, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    iput v0, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v12, 0x0

    .line 662
    iput-boolean v12, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 663
    iput-boolean v12, v8, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    const/4 v0, 0x1

    .line 664
    iput-boolean v0, v8, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 665
    iput-boolean v0, v8, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    const/16 v0, 0x4000

    .line 666
    new-array v0, v0, [B

    iput-object v0, v8, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 667
    const-string v0, "PictureReporting Converting actual image size to bitmap size using BitmapFactory.Options "

    const-string v13, "Converting original to sizedBitmap"

    invoke-static {v0, v13}, Lcom/conceptglobal/pmc/utils/PLog;->eCam(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    :try_start_0
    invoke-static {v7, v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 672
    :try_start_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 673
    sget-object v13, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v14, 0x64

    invoke-virtual {v9, v13, v14, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 674
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, v1, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->bitmapdata:[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    move-exception v0

    .line 677
    :try_start_2
    invoke-static {v3, v0}, Lcom/conceptglobal/pmc/utils/PLog;->ecam(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 679
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 684
    invoke-static {v3, v0}, Lcom/conceptglobal/pmc/utils/PLog;->ecam(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 688
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

    .line 691
    invoke-static {v2, v0}, Lcom/conceptglobal/pmc/utils/PLog;->ecam(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_3
    move-object v3, v0

    int-to-float v0, v11

    .line 695
    iget v11, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v11, v11

    div-float v11, v0, v11

    int-to-float v10, v10

    .line 696
    iget v8, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v8, v8

    div-float v8, v10, v8

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v0, v13

    div-float/2addr v10, v13

    .line 700
    new-instance v13, Landroid/graphics/Matrix;

    invoke-direct {v13}, Landroid/graphics/Matrix;-><init>()V

    .line 701
    invoke-virtual {v13, v11, v8, v0, v10}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 703
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 704
    invoke-virtual {v8, v13}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 705
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

    .line 708
    :try_start_4
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, v7}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 710
    const-string v8, "Orientation"

    invoke-virtual {v0, v8, v12}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    .line 711
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    const/4 v9, 0x6

    if-ne v0, v9, :cond_4

    const/high16 v9, 0x42b40000    # 90.0f

    .line 714
    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 715
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

    .line 717
    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 718
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

    .line 720
    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 721
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
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

    .line 726
    invoke-static {v2, v0}, Lcom/conceptglobal/pmc/utils/PLog;->ecam(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 733
    :goto_5
    :try_start_5
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 734
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x50

    invoke-virtual {v3, v2, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 735
    invoke-virtual {v1, v3}, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->sizeOf(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 736
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

    .line 739
    const-string v2, "PictureReporting Image compression doing outputfile"

    invoke-static {v2, v0}, Lcom/conceptglobal/pmc/utils/PLog;->ecam(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_6
    return-object v7
.end method

.method protected displayNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 138
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

    .line 835
    new-instance v0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences$8;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/PictureReportingExpences$8;-><init>(Lcom/conceptglobal/pmc/fo/PictureReportingExpences;)V

    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .line 553
    const-string v0, "bitmapData"

    .line 0
    const-string v1, "image compressed "

    .line 553
    invoke-super {p0, p1, p2, p3}, Lcom/conceptglobal/pmc/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v2, -0x1

    if-ne p2, v2, :cond_3

    const/16 p2, 0x2712

    if-eq p1, p2, :cond_camera_ok

    # Check if gallery request code 0x2713
    const/16 p2, 0x2713
    if-ne p1, p2, :cond_3

    # === GALLERY RESULT HANDLER ===
    # p3 = intent with data URI from gallery
    if-eqz p3, :cond_3

    :try_start_gallery
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;
    move-result-object v0

    if-eqz v0, :cond_3

    # Open InputStream from content URI
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->getContentResolver()Landroid/content/ContentResolver;
    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    move-result-object v1

    if-eqz v1, :cond_3

    # Get the imagePath (already set by GalleryLongClick)
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->imagePath:Ljava/lang/String;

    if-eqz v0, :cond_3

    # Create output stream to imagePath
    new-instance v2, Ljava/io/FileOutputStream;
    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    # Copy input to output: buffer = new byte[4096]
    const/16 v3, 0x1000
    new-array v3, v3, [B

    # Copy loop
    :gallery_copy_loop
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I
    move-result v4

    const/4 v5, -0x1
    if-eq v4, v5, :gallery_copy_done

    const/4 v5, 0x0
    invoke-virtual {v2, v3, v5, v4}, Ljava/io/OutputStream;->write([BII)V

    goto :gallery_copy_loop

    :gallery_copy_done
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    # Now compress and display the image (same as camera default path)
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->imagePath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->compressImage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    # Load thumbnail into img_view
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->imageFile:Ljava/io/File;
    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->context:Landroid/content/Context;
    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->img_view:Landroid/widget/ImageView;

    invoke-static {v2, v3, v1}, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->loadDiskThumbnail(Landroid/content/Context;Landroid/widget/ImageView;Ljava/io/File;)V

    :try_end_gallery
    .catch Ljava/lang/Exception; {:try_start_gallery .. :try_end_gallery} :catch_gallery

    goto/16 :goto_0

    :catch_gallery
    move-exception v0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
    # === END GALLERY HANDLER ===

    :cond_camera_ok

    .line 557
    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Navigation"

    const-string v2, "ImageCaptured "

    const-string v3, "PictureReporting"

    invoke-static {p2, v2, v3, p1}, Lcom/conceptglobal/pmc/utils/PLog;->location(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    :try_start_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->imagePath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const-string v4, "PictureReporting Default Camera after pic captured"

    const-string v5, "DefaultCamera Imagepath"

    if-eqz p1, :cond_1

    if-eqz p3, :cond_0

    .line 560
    :try_start_1
    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 561
    const-string p1, "PictureReporting CustomCamera bitmapImage returned"

    const-string p2, "CustomCamera Image"

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/utils/PLog;->eCam(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    new-instance p1, Ljava/io/File;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 564
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p2

    iput-object p2, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->bitmapdata:[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 566
    :try_start_2
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 567
    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->context:Landroid/content/Context;

    iget-object p3, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->img_view:Landroid/widget/ImageView;

    invoke-static {p2, p3, p1}, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->loadDiskThumbnail(Landroid/content/Context;Landroid/widget/ImageView;Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 570
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 571
    const-string p2, "PictureReporting Custom Camera after pic captured"

    invoke-static {p2, p1}, Lcom/conceptglobal/pmc/utils/PLog;->ecam(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 576
    :cond_0
    const-string p1, "PictureReporting DefaultCamera imagepath returned"

    invoke-static {p1, v5}, Lcom/conceptglobal/pmc/utils/PLog;->eCam(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->imagePath:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p1, v3, p3}, Lcom/conceptglobal/pmc/utils/PLog;->location(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    new-instance p1, Ljava/io/File;

    iget-object p3, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->imagePath:Ljava/lang/String;

    invoke-direct {p1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 580
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 581
    const-string p3, "image saved in file "

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3, v3, v0}, Lcom/conceptglobal/pmc/utils/PLog;->location(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->compressImage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0, v3, v1}, Lcom/conceptglobal/pmc/utils/PLog;->location(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    if-eqz p3, :cond_3

    .line 586
    :try_start_4
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 587
    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->context:Landroid/content/Context;

    iget-object p3, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->img_view:Landroid/widget/ImageView;

    invoke-static {p2, p3, p1}, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->loadDiskThumbnail(Landroid/content/Context;Landroid/widget/ImageView;Ljava/io/File;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 590
    :try_start_5
    invoke-static {v4, p1}, Lcom/conceptglobal/pmc/utils/PLog;->ecam(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 592
    invoke-static {v3, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 597
    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 598
    const-string p1, "PictureReporting DefaultCamera imagepath returned through data"

    invoke-static {p1, v5}, Lcom/conceptglobal/pmc/utils/PLog;->eCam(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    new-instance p1, Ljava/io/File;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 601
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 602
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->compressImage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    if-eqz p2, :cond_3

    .line 605
    :try_start_6
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 606
    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->context:Landroid/content/Context;

    iget-object p3, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->img_view:Landroid/widget/ImageView;

    invoke-static {p2, p3, p1}, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->loadDiskThumbnail(Landroid/content/Context;Landroid/widget/ImageView;Ljava/io/File;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    :catch_2
    move-exception p1

    .line 609
    :try_start_7
    invoke-static {v4, p1}, Lcom/conceptglobal/pmc/utils/PLog;->ecam(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 615
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->img_view:Landroid/widget/ImageView;

    const p2, 0x7f080193

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_0

    :catch_3
    move-exception p1

    .line 618
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 619
    const-string p2, "PictureReporting after pic captured"

    invoke-static {p2, p1}, Lcom/conceptglobal/pmc/utils/PLog;->ecam(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 103
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0069

    .line 107
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->setContentView(I)V

    .line 108
    iput-object p0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->context:Landroid/content/Context;

    .line 109
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getLanguageConfigurations(Landroid/content/Context;)V

    .line 110
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

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    .line 111
    const-string p1, "PictureReporting"

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Navigation"

    const-string v2, "onCreate()"

    invoke-static {v1, v2, p1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->location(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->Initialize()V

    .line 113
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->getImageDetails()V

    .line 114
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->setData()V

    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .line 466
    invoke-super {p0}, Lcom/conceptglobal/pmc/BaseActivity;->onDestroy()V

    .line 467
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

    .line 174
    invoke-super {p0}, Lcom/conceptglobal/pmc/BaseActivity;->onLowMemory()V

    .line 175
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

    .line 448
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 455
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 450
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "onRestoreInstanceState--loading----"

    if-eqz p1, :cond_0

    .line 522
    const-string v1, "photopath"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 523
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->imagePath:Ljava/lang/String;

    .line 524
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onRestoreInstanceState---"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->imagePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PictureReporting"

    invoke-static {v2, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->imagePath:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 526
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "onRestoreInstanceState-imagePath----"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->imagePath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->imagePath:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 528
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 529
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onRestoreInstanceState--imgFile----"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->compressImage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 533
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 534
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->img_view:Landroid/widget/ImageView;

    invoke-static {v0, v3, v1}, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->loadDiskThumbnail(Landroid/content/Context;Landroid/widget/ImageView;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 538
    invoke-static {v2, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 546
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 460
    invoke-super {p0}, Lcom/conceptglobal/pmc/BaseActivity;->onResume()V

    .line 461
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

    .line 511
    const-string v0, "photopath"

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->imagePath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSaveInstanceState---"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->imagePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PictureReporting"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public showLoader(Ljava/lang/String;)V
    .locals 1

    .line 829
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->hideLoader()V

    .line 830
    new-instance v0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences$RunShowLoader;

    invoke-direct {v0, p0, p1}, Lcom/conceptglobal/pmc/fo/PictureReportingExpences$RunShowLoader;-><init>(Lcom/conceptglobal/pmc/fo/PictureReportingExpences;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected sizeOf(Landroid/graphics/Bitmap;)I
    .locals 0

    .line 750
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result p1

    return p1
.end method

.class public Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;
.super Lcom/conceptglobal/pmc/BaseActivity;
.source "I2VAttendanceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DATEDIALOGID:I = 0x1

.field private static final Tag:Ljava/lang/String; = "I2VAttendanceActivity"


# instance fields
.field functionID:I

.field private images:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/ImageDetails;",
            ">;"
        }
    .end annotation
.end field

.field private mDatePickerTextView:Landroid/widget/TextView;

.field private mDistance:Ljava/lang/String;

.field private mFOAttendanceTextView:Landroid/widget/TextView;

.field private mFODatePickerTextView:Landroid/widget/TextView;

.field private mFODistanceEditText:Landroid/widget/EditText;

.field private mFOLayout:Landroid/widget/RelativeLayout;

.field private mFOName:Ljava/lang/String;

.field private mFONameEditText:Landroid/widget/EditText;

.field private mFONightHalt:Ljava/lang/String;

.field private mFoNameId:Landroid/widget/TextView;

.field private mFoNightHaltSpinner:Landroid/widget/Spinner;

.field private mNightHalt:Ljava/lang/String;

.field private mNightHaltArray:[Ljava/lang/String;

.field private mSelectedDate:Ljava/lang/String;

.field private mSelfAttendanceTextView:Landroid/widget/TextView;

.field private mSelfDistanceEditText:Landroid/widget/EditText;

.field private mSelfLayout:Landroid/widget/RelativeLayout;

.field private mSelfNightHalt:Ljava/lang/String;

.field private mSelfNightHaltSpinner:Landroid/widget/Spinner;

.field private mSubmitFOAttendanceTextView:Landroid/widget/TextView;

.field private mSubmitSelfAttendanceTextView:Landroid/widget/TextView;

.field private respondantNum:Ljava/lang/String;

.field private userFunctions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/UserFunctions;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 61
    invoke-direct {p0}, Lcom/conceptglobal/pmc/BaseActivity;-><init>()V

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mSelfNightHalt:Ljava/lang/String;

    .line 76
    iput-object v0, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mFONightHalt:Ljava/lang/String;

    .line 77
    iput-object v0, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mFOName:Ljava/lang/String;

    .line 78
    const-string v1, "Yes"

    const-string v2, "No"

    const-string v3, "Select value"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mNightHaltArray:[Ljava/lang/String;

    .line 81
    iput-object v0, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mDistance:Ljava/lang/String;

    .line 82
    iput-object v0, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mSelectedDate:Ljava/lang/String;

    .line 83
    iput-object v0, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mNightHalt:Ljava/lang/String;

    const/4 v1, -0x1

    .line 84
    iput v1, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->functionID:I

    .line 85
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->userFunctions:Ljava/util/List;

    .line 86
    iput-object v0, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->respondantNum:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mSelfNightHalt:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;)[Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mNightHaltArray:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mFONightHalt:Ljava/lang/String;

    return-object p1
.end method

.method private captureImage(J)V
    .locals 6

    .line 498
    :try_start_0
    new-instance v0, Lcom/conceptglobal/pmc/utils/CompressHelper;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/utils/CompressHelper;-><init>()V

    invoke-virtual {v0, p0}, Lcom/conceptglobal/pmc/utils/CompressHelper;->getCompressLoaction(Landroid/content/Context;)Ljava/io/File;

    .line 499
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->setPictureReportingContext(Landroid/content/Context;)V

    .line 500
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/conceptglobal/pmc/fo/PictureReporting;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 501
    const-string v1, "activityId"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 502
    const-string v1, "assignmentId"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 503
    const-string v1, "setReferenceType"

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    const-string v5, "Attendance"

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLookupValue(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 504
    const-string v1, "setReferenceID"

    iget-object v3, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->respondantNum:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 505
    const-string v1, "attributeId"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 506
    const-string v1, "farmerId"

    iget-object v2, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->respondantNum:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 507
    const-string v1, "imageId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 508
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 510
    const-string p2, "I2VAttendanceActivity"

    invoke-static {p2, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private clearFOFields()V
    .locals 2

    .line 477
    const-string v0, ""

    iput-object v0, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mFOName:Ljava/lang/String;

    .line 478
    iput-object v0, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mFONightHalt:Ljava/lang/String;

    .line 479
    iget-object v1, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mFODistanceEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 480
    iget-object v1, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mFODatePickerTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 481
    iget-object v0, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mFoNightHaltSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method

.method private clearSelfFields()V
    .locals 2

    .line 470
    iget-object v0, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mSelfDistanceEditText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 471
    iget-object v0, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mDatePickerTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 472
    iput-object v1, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mSelfNightHalt:Ljava/lang/String;

    .line 473
    iget-object v0, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mSelfNightHaltSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method

.method private enableFOLayout(Z)V
    .locals 3

    const v0, 0x7f060138

    const v1, 0x7f060032

    if-eqz p1, :cond_0

    .line 245
    iget-object p1, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mFOLayout:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 246
    iget-object p1, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mFOAttendanceTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 247
    iget-object p1, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mFOAttendanceTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_0

    .line 249
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mFOLayout:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 250
    iget-object p1, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mFOAttendanceTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 251
    iget-object p1, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mFOAttendanceTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method

.method private enableSelfLayout(Z)V
    .locals 3

    const v0, 0x7f060138

    const v1, 0x7f060032

    if-eqz p1, :cond_0

    .line 233
    iget-object p1, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mSelfLayout:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 234
    iget-object p1, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mSelfAttendanceTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 235
    iget-object p1, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mSelfAttendanceTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_0

    .line 237
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mSelfLayout:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 238
    iget-object p1, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mSelfAttendanceTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 239
    iget-object p1, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mSelfAttendanceTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method

.method private generateResPondentNumber()Ljava/lang/String;
    .locals 3

    .line 487
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getInstance()Lcom/conceptglobal/pmc/fotracker/database/Queries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/fotracker/database/Queries;->getPdaId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/fotracker/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 489
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 491
    const-string v0, ""

    return-object v0
.end method

.method private initTabs()V
    .locals 3

    .line 107
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget v2, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->functionID:I

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->gettingReportsFunctionNames(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getModules(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->userFunctions:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 108
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 109
    iget-object v0, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mFOAttendanceTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mFOLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mFOAttendanceTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mFOLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 122
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private initialization()V
    .locals 5

    const v0, 0x7f0904ce

    .line 142
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mSelfAttendanceTextView:Landroid/widget/TextView;

    const v0, 0x7f0904a0

    .line 143
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mFOAttendanceTextView:Landroid/widget/TextView;

    const v0, 0x7f090393

    .line 144
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mSelfLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f090390

    .line 145
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mFOLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f09048b

    .line 146
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mDatePickerTextView:Landroid/widget/TextView;

    const v0, 0x7f0904a1

    .line 147
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mFODatePickerTextView:Landroid/widget/TextView;

    const v0, 0x7f09048a

    .line 148
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f10007d

    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090494

    .line 149
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f100082

    invoke-virtual {p0, v2}, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0904b9

    .line 150
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f1000f9

    invoke-virtual {p0, v3}, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0904aa

    .line 151
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v4, 0x7f100097

    invoke-virtual {p0, v4}, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0904a8

    .line 152
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0904a9

    .line 153
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0904ac

    .line 154
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0904da

    .line 155
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mSubmitSelfAttendanceTextView:Landroid/widget/TextView;

    const v0, 0x7f0904d9

    .line 156
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mSubmitFOAttendanceTextView:Landroid/widget/TextView;

    const v0, 0x7f09014f

    .line 157
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mSelfDistanceEditText:Landroid/widget/EditText;

    const v0, 0x7f0903f6

    .line 158
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mSelfNightHaltSpinner:Landroid/widget/Spinner;

    const v0, 0x7f0903f5

    .line 159
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mFoNightHaltSpinner:Landroid/widget/Spinner;

    const v0, 0x7f090153

    .line 160
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mFODistanceEditText:Landroid/widget/EditText;

    const v0, 0x7f0904ab

    .line 161
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mFoNameId:Landroid/widget/TextView;

    const v0, 0x7f09016b

    .line 162
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mFONameEditText:Landroid/widget/EditText;

    .line 163
    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    invoke-direct {p0}, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->setSelfNightHaltSpinnerData()V

    .line 165
    invoke-direct {p0}, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->setFONightHaltSpinnerData()V

    return-void
.end method

.method private saveAttendanceDetails()V
    .locals 9

    const-string v0, "Attendance for "

    .line 355
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    .line 357
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mSelectedDate:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getAttendanceDetailsQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 356
    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getAttendanceDetailsForDate(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    .line 359
    iget-object v0, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mDistance:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mDistance:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 360
    :goto_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->getInstance()Lcom/conceptglobal/pmc/database/DataBaseHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 361
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 362
    const-string v4, "AttendanceDate"

    iget-object v5, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mSelectedDate:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const-string v4, "TransId"

    iget-object v5, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->respondantNum:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const-string v4, "FoTravel"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 365
    iget-object v0, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mNightHalt:Ljava/lang/String;

    const-string v4, "yes"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "FoNightHalt"

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eqz v0, :cond_1

    .line 366
    :try_start_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 368
    :cond_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 369
    :goto_1
    const-string v0, "serverUpdatedStatus"

    const-string v4, "false"

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const-string v0, "CreatedBy"

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 371
    const-string v0, "CreatedDate"

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    const-string v0, "UpdatedBy"

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 373
    const-string v0, "UpdatedDate"

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const-string v0, "PdaId"

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/common/Queries;->geetingPdaid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->userFunctions:Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v4, "IsApproved"

    const-string v7, "IsSelfAttendance"

    const-string v8, "FoUserId"

    if-eqz v0, :cond_2

    :try_start_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v6, :cond_2

    .line 377
    iget-object v0, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mFoNameId:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 379
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 380
    const-string v0, "SVUserId"

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 381
    const-string v0, "SVApprovedDate"

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateInDDMMYYYY()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 383
    :cond_2
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 384
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 385
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 387
    :goto_2
    const-string v0, "PMCAttendanceDetails"

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-lez v5, :cond_4

    .line 390
    const-string v0, "Attendance details saved successfully."

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 391
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 394
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mSelectedDate:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is already made."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 395
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 397
    :cond_4
    :goto_3
    invoke-direct {p0}, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->sendDataToServer()V

    .line 398
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->finish()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 401
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    return-void
.end method

.method private sendDataToServer()V
    .locals 3

    .line 406
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/conceptglobal/pmc/service/SyncDataService;

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isServiceRunning(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 408
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Service initiated"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 409
    new-instance v0, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;-><init>(Landroid/content/Context;)V

    .line 410
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;->startService()V

    :cond_0
    return-void
.end method

.method private setFONightHaltSpinnerData()V
    .locals 3

    .line 445
    :try_start_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mNightHaltArray:[Ljava/lang/String;

    const v2, 0x7f0c00d3

    invoke-direct {v0, p0, v2, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 447
    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 449
    iget-object v1, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mFoNightHaltSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 450
    iget-object v0, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mFoNightHaltSpinner:Landroid/widget/Spinner;

    new-instance v1, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity$3;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity$3;-><init>(Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 465
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private setListeners()V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mSelfAttendanceTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v0, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mFOAttendanceTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v0, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mDatePickerTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v0, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mFODatePickerTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v0, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mSubmitSelfAttendanceTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v0, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mSubmitFOAttendanceTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setSelfNightHaltSpinnerData()V
    .locals 3

    .line 418
    :try_start_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mNightHaltArray:[Ljava/lang/String;

    const v2, 0x7f0c00d3

    invoke-direct {v0, p0, v2, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 420
    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 422
    iget-object v1, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mSelfNightHaltSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 423
    iget-object v0, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mSelfNightHaltSpinner:Landroid/widget/Spinner;

    new-instance v1, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity$2;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity$2;-><init>(Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 438
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private showDatePicker(Landroid/widget/TextView;)V
    .locals 9

    .line 256
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 257
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x1

    .line 258
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v2, 0x2

    .line 259
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/4 v2, 0x5

    .line 260
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 261
    new-instance v1, Landroid/app/DatePickerDialog;

    new-instance v5, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity$1;

    invoke-direct {v5, p0, v0, p1}, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity$1;-><init>(Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;Ljava/util/Calendar;Landroid/widget/TextView;)V

    move-object v3, v1

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 282
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 283
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 284
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v3, -0x2

    .line 285
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 286
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 287
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 288
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 289
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 290
    invoke-virtual {v1}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 291
    invoke-virtual {v1}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object p1

    invoke-virtual {p1, v4, v5}, Landroid/widget/DatePicker;->setMaxDate(J)V

    .line 292
    invoke-virtual {v1}, Landroid/app/DatePickerDialog;->show()V

    return-void
.end method

.method private validateFODetails()Z
    .locals 5

    const/4 v0, 0x1

    .line 326
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mFODatePickerTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 327
    iget-object v2, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mFODistanceEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 328
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 329
    :goto_0
    iget-object v3, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mFONameEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mFOName:Ljava/lang/String;

    .line 330
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v1, :cond_1

    .line 332
    :try_start_1
    const-string v0, "Please select Date."

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_1
    const/4 v0, 0x0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_1
    if-gtz v2, :cond_2

    .line 335
    const-string v0, "Please enter Distance."

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 336
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mFONightHalt:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v1, :cond_3

    .line 338
    :try_start_3
    const-string v0, "Please select Night Halt."

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 341
    :cond_3
    :goto_2
    :try_start_4
    iget-object v1, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mFOName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->userFunctions:Ljava/util/List;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 343
    :try_start_5
    const-string v0, "Please select FO Name"

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_4

    :cond_4
    move v4, v0

    goto :goto_4

    :catch_1
    move-exception v1

    move v4, v0

    move-object v0, v1

    goto :goto_3

    :catch_2
    move-exception v1

    move-object v0, v1

    const/4 v4, 0x1

    .line 346
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    return v4
.end method

.method private validateSelfDetails()Z
    .locals 5

    const/4 v0, 0x1

    .line 304
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mDatePickerTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 305
    iget-object v2, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mSelfDistanceEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 306
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 307
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_1

    .line 309
    :try_start_1
    const-string v0, "Please select Date."

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_1
    const/4 v0, 0x0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    if-gtz v2, :cond_2

    .line 312
    const-string v0, "Please enter Distance."

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 313
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mSelfNightHalt:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v1, :cond_3

    .line 315
    :try_start_3
    const-string v0, "Please select Night Halt."

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v0, v1

    const/4 v4, 0x1

    .line 318
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v4

    :cond_3
    :goto_3
    return v0
.end method


# virtual methods
.method protected displayNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 179
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 195
    :sswitch_0
    invoke-direct {p0}, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->validateSelfDetails()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 196
    const-string p1, ""

    iput-object p1, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mFOName:Ljava/lang/String;

    .line 197
    iget-object p1, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mSelfDistanceEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mDistance:Ljava/lang/String;

    .line 198
    iget-object p1, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mDatePickerTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mSelectedDate:Ljava/lang/String;

    .line 199
    iget-object p1, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mSelfNightHalt:Ljava/lang/String;

    iput-object p1, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mNightHalt:Ljava/lang/String;

    .line 200
    iget-object p1, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->userFunctions:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 201
    iget-object p1, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mFoNameId:Landroid/widget/TextView;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    :cond_0
    invoke-direct {p0}, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->clearSelfFields()V

    .line 203
    invoke-direct {p0}, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->saveAttendanceDetails()V

    goto/16 :goto_0

    .line 207
    :sswitch_1
    invoke-direct {p0}, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->validateFODetails()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 208
    iget-object p1, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mFONameEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mFOName:Ljava/lang/String;

    .line 209
    iget-object p1, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mFODistanceEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mDistance:Ljava/lang/String;

    .line 210
    iget-object p1, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mFODatePickerTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mSelectedDate:Ljava/lang/String;

    .line 211
    iget-object p1, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mFONightHalt:Ljava/lang/String;

    iput-object p1, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mNightHalt:Ljava/lang/String;

    .line 213
    invoke-direct {p0}, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->clearFOFields()V

    .line 214
    invoke-direct {p0}, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->saveAttendanceDetails()V

    goto :goto_0

    .line 181
    :sswitch_2
    invoke-direct {p0, v2}, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->enableSelfLayout(Z)V

    .line 182
    invoke-direct {p0, v1}, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->enableFOLayout(Z)V

    goto :goto_0

    .line 192
    :sswitch_3
    iget-object p1, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mFODatePickerTextView:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->showDatePicker(Landroid/widget/TextView;)V

    goto :goto_0

    .line 185
    :sswitch_4
    invoke-direct {p0, v2}, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->enableFOLayout(Z)V

    .line 186
    invoke-direct {p0, v1}, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->enableSelfLayout(Z)V

    goto :goto_0

    .line 189
    :sswitch_5
    iget-object p1, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mDatePickerTextView:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->showDatePicker(Landroid/widget/TextView;)V

    goto :goto_0

    .line 218
    :sswitch_6
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->hideInputKeyboard(Landroid/content/Context;)V

    .line 220
    :try_start_0
    new-instance v6, Lcom/conceptglobal/pmc/common/ListPopupOne;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectOneDropDownTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/Queries;->getFoNames()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->mFoNameId:Landroid/widget/TextView;

    move-object v0, v6

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/conceptglobal/pmc/common/ListPopupOne;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;)V

    .line 222
    invoke-virtual {v6}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const v0, 0x7f1101b9

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 223
    invoke-virtual {v6}, Lcom/conceptglobal/pmc/common/ListPopupOne;->show()V

    .line 224
    invoke-virtual {v6}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f09016b -> :sswitch_6
        0x7f09048b -> :sswitch_5
        0x7f0904a0 -> :sswitch_4
        0x7f0904a1 -> :sswitch_3
        0x7f0904ce -> :sswitch_2
        0x7f0904d9 -> :sswitch_1
        0x7f0904da -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 93
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0060

    .line 94
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->setContentView(I)V

    .line 95
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Attendance ("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    .line 96
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "FunctionID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->functionID:I

    .line 99
    :cond_0
    invoke-direct {p0}, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->initialization()V

    .line 100
    invoke-direct {p0}, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->initTabs()V

    .line 101
    invoke-direct {p0}, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->setListeners()V

    .line 102
    invoke-direct {p0}, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->generateResPondentNumber()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->respondantNum:Ljava/lang/String;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 133
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 138
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/attendance/I2VAttendanceActivity;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method protected onResume()V
    .locals 0

    .line 128
    invoke-super {p0}, Lcom/conceptglobal/pmc/BaseActivity;->onResume()V

    return-void
.end method

.class public Lcom/conceptglobal/pmc/AttendanceActivity;
.super Lcom/conceptglobal/pmc/BaseActivity;
.source "AttendanceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DATEDIALOGID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AttendanceActivity"


# instance fields
.field private LocationReq:Ljava/lang/String;

.field attendanceDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/AttendanceModel;",
            ">;"
        }
    .end annotation
.end field

.field attendanceEXpenseNotRequiredRoles:Ljava/lang/String;

.field private btnClear:Landroid/widget/Button;

.field private btnDraft:Landroid/widget/Button;

.field private btnEndDayLatLng:Landroid/widget/ImageView;

.field private btnLatLng:Landroid/widget/ImageView;

.field private btnSave:Landroid/widget/Button;

.field private endDayGridView:Landroid/widget/GridView;

.field private endDayIimageAdapter:Lcom/conceptglobal/pmc/adapter/GridImageAdapter;

.field private endDayImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/ImageDetails;",
            ">;"
        }
    .end annotation
.end field

.field private endDayText:Ljava/lang/String;

.field endday:J

.field private enddayImagelist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private etEndKM:Landroid/widget/EditText;

.field private etEndLatlongTime:Landroid/widget/EditText;

.field private etFromDate:Landroid/widget/EditText;

.field private etLeaveType:Landroid/widget/EditText;

.field private etNoOfdays:Landroid/widget/EditText;

.field private etRemarks:Landroid/widget/EditText;

.field private etSelected:Landroid/widget/EditText;

.field private etStartKM:Landroid/widget/EditText;

.field private etStartLatlongTime:Landroid/widget/EditText;

.field private etToDate:Landroid/widget/EditText;

.field private etTotalExpences:Landroid/widget/EditText;

.field private etTravelDistance:Landroid/widget/EditText;

.field private etTravelType:Landroid/widget/EditText;

.field private expencesDayText:Ljava/lang/String;

.field private expencesGridView:Landroid/widget/GridView;

.field private expencesImagelist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private expencesImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/ImageDetails;",
            ">;"
        }
    .end annotation
.end field

.field expencesday:J

.field expensesNotRequired:Z

.field private getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

.field private imagelist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isPastDayAttendance:Z

.field latlongTag:Ljava/lang/String;

.field private llActivity_bg:Landroid/widget/LinearLayout;

.field private llExpenseView:Landroid/widget/LinearLayout;

.field private llSaveBG:Landroid/widget/LinearLayout;

.field private mCamera1ImageView:Landroid/widget/ImageView;

.field private mCamera2ImageView:Landroid/widget/ImageView;

.field private mCamera3ImageView:Landroid/widget/ImageView;

.field private mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private mDay:I

.field private mFiledStr:Ljava/lang/String;

.field private mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

.field private mMonth:I

.field private mNOC1ImageView:Landroid/widget/ImageView;

.field private mNOC2ImageView:Landroid/widget/ImageView;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mYear:I

.field private rlExpenseViewImages:Landroid/widget/RelativeLayout;

.field private startDayGridView:Landroid/widget/GridView;

.field private startDayIimageAdapter:Lcom/conceptglobal/pmc/adapter/GridImageAdapter;

.field private startDayImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/ImageDetails;",
            ">;"
        }
    .end annotation
.end field

.field private startDayText:Ljava/lang/String;

.field startday:J

.field private startdayImagelist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private strDate:Ljava/lang/String;

.field title:Ljava/lang/String;

.field private transId:J

.field private tvDraftText:Landroid/widget/TextView;

.field private tvEndAddress:Landroid/widget/TextView;

.field private tvEndDay:Lcom/conceptglobal/pmc/utils/Ibutton;

.field private tvEndKM:Landroid/widget/TextView;

.field private tvEndLatitude:Landroid/widget/TextView;

.field private tvEndLocation:Landroid/widget/TextView;

.field private tvEndLongitude:Landroid/widget/TextView;

.field private tvExpences:Landroid/widget/TextView;

.field private tvLatitude:Landroid/widget/TextView;

.field private tvLeave:Landroid/widget/TextView;

.field private tvLeaveType:Landroid/widget/TextView;

.field private tvLongitude:Landroid/widget/TextView;

.field private tvNoOfDays:Landroid/widget/TextView;

.field private tvReason:Landroid/widget/TextView;

.field private tvRemarks:Landroid/widget/TextView;

.field private tvStartAddress:Landroid/widget/TextView;

.field private tvStartDay:Lcom/conceptglobal/pmc/utils/Ibutton;

.field private tvStartKM:Landroid/widget/TextView;

.field private tvStartLocation:Landroid/widget/TextView;

.field private tvToDate:Landroid/widget/TextView;

.field private tvTotalDistance:Landroid/widget/TextView;

.field private tvTotalExpences:Landroid/widget/TextView;

.field private tvTravelType:Landroid/widget/TextView;

.field private tvTravelTypeId:Landroid/widget/TextView;

.field private tvfromDate:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 75
    invoke-direct {p0}, Lcom/conceptglobal/pmc/BaseActivity;-><init>()V

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->mFiledStr:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 122
    iput-wide v1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->startday:J

    .line 123
    iput-wide v1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->endday:J

    .line 124
    iput-wide v1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->expencesday:J

    .line 125
    iput-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->startDayText:Ljava/lang/String;

    .line 126
    iput-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->endDayText:Ljava/lang/String;

    .line 127
    iput-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->expencesDayText:Ljava/lang/String;

    .line 128
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->attendanceDetails:Ljava/util/List;

    .line 130
    iput-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->LocationReq:Ljava/lang/String;

    .line 131
    iput-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->latlongTag:Ljava/lang/String;

    const/4 v1, 0x1

    .line 133
    iput-boolean v1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->expensesNotRequired:Z

    .line 134
    iput-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->title:Ljava/lang/String;

    .line 135
    iput-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->strDate:Ljava/lang/String;

    .line 524
    new-instance v0, Lcom/conceptglobal/pmc/AttendanceActivity$5;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/AttendanceActivity$5;-><init>(Lcom/conceptglobal/pmc/AttendanceActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 1014
    new-instance v0, Lcom/conceptglobal/pmc/AttendanceActivity$6;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/AttendanceActivity$6;-><init>(Lcom/conceptglobal/pmc/AttendanceActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/AttendanceActivity;)Landroid/widget/EditText;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etLeaveType:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/AttendanceActivity;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/conceptglobal/pmc/AttendanceActivity;->caliculateDistance()V

    return-void
.end method

.method static synthetic access$1002(Lcom/conceptglobal/pmc/AttendanceActivity;I)I
    .locals 0

    .line 75
    iput p1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->mDay:I

    return p1
.end method

.method static synthetic access$1100(Lcom/conceptglobal/pmc/AttendanceActivity;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/conceptglobal/pmc/AttendanceActivity;->updateDisplay()V

    return-void
.end method

.method static synthetic access$1200(Lcom/conceptglobal/pmc/AttendanceActivity;)Lcom/conceptglobal/pmc/utils/Ibutton;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvStartDay:Lcom/conceptglobal/pmc/utils/Ibutton;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/conceptglobal/pmc/AttendanceActivity;)Lcom/conceptglobal/pmc/utils/Ibutton;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvEndDay:Lcom/conceptglobal/pmc/utils/Ibutton;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/conceptglobal/pmc/AttendanceActivity;)Landroid/widget/TextView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvStartAddress:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/conceptglobal/pmc/AttendanceActivity;Landroid/location/Location;Landroid/widget/TextView;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/AttendanceActivity;->bindAddress(Landroid/location/Location;Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/conceptglobal/pmc/AttendanceActivity;)Landroid/widget/TextView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvLatitude:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/conceptglobal/pmc/AttendanceActivity;)Landroid/widget/EditText;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etStartLatlongTime:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/conceptglobal/pmc/AttendanceActivity;)Landroid/widget/TextView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvStartLocation:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/conceptglobal/pmc/AttendanceActivity;)Landroid/widget/TextView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvEndAddress:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/AttendanceActivity;)Ljava/util/List;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->startDayImages:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/conceptglobal/pmc/AttendanceActivity;)Landroid/widget/TextView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvEndLatitude:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/conceptglobal/pmc/AttendanceActivity;)Landroid/widget/EditText;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etEndLatlongTime:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/conceptglobal/pmc/AttendanceActivity;)Landroid/widget/TextView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvEndLocation:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/conceptglobal/pmc/AttendanceActivity;)Landroid/widget/Button;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->btnSave:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/conceptglobal/pmc/AttendanceActivity;)Landroid/widget/Button;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->btnDraft:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/AttendanceActivity;)Ljava/util/List;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->endDayImages:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/AttendanceActivity;)Ljava/util/List;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->expencesImages:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/conceptglobal/pmc/AttendanceActivity;)Ljava/lang/String;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->startDayText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/conceptglobal/pmc/AttendanceActivity;JJLjava/lang/String;)V
    .locals 0

    .line 75
    invoke-direct/range {p0 .. p5}, Lcom/conceptglobal/pmc/AttendanceActivity;->captureImage(JJLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/conceptglobal/pmc/AttendanceActivity;)Ljava/lang/String;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->endDayText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$802(Lcom/conceptglobal/pmc/AttendanceActivity;I)I
    .locals 0

    .line 75
    iput p1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->mYear:I

    return p1
.end method

.method static synthetic access$902(Lcom/conceptglobal/pmc/AttendanceActivity;I)I
    .locals 0

    .line 75
    iput p1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->mMonth:I

    return p1
.end method

.method private bindAddress(Landroid/location/Location;Landroid/widget/TextView;)V
    .locals 4

    .line 1383
    :try_start_0
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {p0, v0, v1, v2, v3}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getAddressWithLatLong(Landroid/content/Context;DD)Ljava/lang/String;

    move-result-object p1

    .line 1384
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1386
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private caliculateDistance()V
    .locals 5

    .line 486
    iget-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etStartKM:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 487
    iget-object v1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etEndKM:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 489
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 490
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 491
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 492
    iget-object v4, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etTravelDistance:Landroid/widget/EditText;

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etTravelDistance:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private captureImage(JJLjava/lang/String;)V
    .locals 7

    .line 1083
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1084
    const-string v1, "activityId"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1085
    const-string v1, "assignmentId"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1087
    :try_start_0
    const-string v1, "setReferenceType"

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    const-string v5, "Attendance"

    const-string v6, "ImageReferenceType"

    invoke-virtual {v4, v5, v6}, Lcom/conceptglobal/pmc/common/Queries;->getItemValuewithType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLookupValue(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1089
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1090
    const-string v3, "AttendanceActivity"

    invoke-static {v3, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1092
    :goto_0
    iget-wide v3, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->transId:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v3, "setReferenceID"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1093
    const-string v1, "attributeId"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1094
    const-string v1, "farmerId"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1095
    const-string v1, "imageId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1096
    const-string p1, "EventTypeId"

    invoke-virtual {v0, p1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1097
    const-string p1, "EventText"

    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1098
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/AttendanceActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private fetchEndDayLocation(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 2

    .line 1237
    iget-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvEndLatitude:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1238
    const-string v0, "AttendanceActivity"

    iput-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->latlongTag:Ljava/lang/String;

    .line 1241
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {v0, p0}, Lcom/conceptglobal/pmc/utils/LocationUtils;->checkPermissions(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1242
    iget-object p1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {p1, p0}, Lcom/conceptglobal/pmc/utils/LocationUtils;->requestPermissions(Landroid/app/Activity;)V

    goto :goto_0

    .line 1245
    :cond_1
    :try_start_0
    new-instance v0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;

    new-instance v1, Lcom/conceptglobal/pmc/AttendanceActivity$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/conceptglobal/pmc/AttendanceActivity$8;-><init>(Lcom/conceptglobal/pmc/AttendanceActivity;Landroid/widget/TextView;Landroid/widget/TextView;)V

    iget-object p1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->latlongTag:Ljava/lang/String;

    const/4 p2, 0x1

    invoke-direct {v0, p0, p2, v1, p1}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;-><init>(Landroid/app/Activity;ZLcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1276
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private fetchLocation(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 2

    .line 1193
    iget-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvLatitude:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1194
    const-string v0, "AttendanceActivity"

    iput-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->latlongTag:Ljava/lang/String;

    .line 1197
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {v0, p0}, Lcom/conceptglobal/pmc/utils/LocationUtils;->checkPermissions(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1198
    iget-object p1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-virtual {p1, p0}, Lcom/conceptglobal/pmc/utils/LocationUtils;->requestPermissions(Landroid/app/Activity;)V

    goto :goto_0

    .line 1201
    :cond_1
    :try_start_0
    new-instance v0, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;

    new-instance v1, Lcom/conceptglobal/pmc/AttendanceActivity$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/conceptglobal/pmc/AttendanceActivity$7;-><init>(Lcom/conceptglobal/pmc/AttendanceActivity;Landroid/widget/TextView;Landroid/widget/TextView;)V

    iget-object p1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->latlongTag:Ljava/lang/String;

    const/4 p2, 0x1

    invoke-direct {v0, p0, p2, v1, p1}, Lcom/conceptglobal/pmc/locationprovider/FetchLocation;-><init>(Landroid/app/Activity;ZLcom/conceptglobal/pmc/interfaces/OnLocationFoundListener;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1230
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private initialization()V
    .locals 8

    .line 174
    const-string v0, "Expenses"

    const-string v1, "ImageEventType"

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 175
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "HH:mm:ss a"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->strDate:Ljava/lang/String;

    .line 178
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/Queries;->getPastAttendanceDetails()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getAttendanceDetails(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->attendanceDetails:Ljava/util/List;

    .line 179
    new-instance v2, Lcom/conceptglobal/pmc/utils/LocationUtils;

    invoke-direct {v2}, Lcom/conceptglobal/pmc/utils/LocationUtils;-><init>()V

    iput-object v2, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    .line 180
    iget-object v2, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->attendanceDetails:Ljava/util/List;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 181
    iput-boolean v3, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->isPastDayAttendance:Z

    goto :goto_0

    .line 183
    :cond_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/common/Queries;->getAttendanceDetails()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getAttendanceDetails(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->attendanceDetails:Ljava/util/List;

    .line 185
    :goto_0
    iget-object v2, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->attendanceDetails:Ljava/util/List;

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->attendanceDetails:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/AttendanceModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttendanceModel;->getTransId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 186
    iget-object v2, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->attendanceDetails:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/AttendanceModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/AttendanceModel;->getTransId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->transId:J

    goto :goto_1

    .line 188
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->transId:J

    .line 190
    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->startDayImages:Ljava/util/List;

    .line 191
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->endDayImages:Ljava/util/List;

    .line 192
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->expencesImages:Ljava/util/List;

    .line 193
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    iput-object v2, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    .line 194
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->startdayImagelist:Ljava/util/ArrayList;

    .line 195
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->enddayImagelist:Ljava/util/ArrayList;

    .line 196
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->expencesImagelist:Ljava/util/ArrayList;

    .line 197
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->imagelist:Ljava/util/ArrayList;

    const v2, 0x7f090219

    .line 200
    invoke-virtual {p0, v2}, Lcom/conceptglobal/pmc/AttendanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    iput-object v2, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->expencesGridView:Landroid/widget/GridView;

    const/4 v5, 0x0

    .line 201
    invoke-virtual {v2, v5}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v2, 0x7f0904b4

    .line 202
    invoke-virtual {p0, v2}, Lcom/conceptglobal/pmc/AttendanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvLeaveType:Landroid/widget/TextView;

    const v2, 0x7f0905a8

    .line 203
    invoke-virtual {p0, v2}, Lcom/conceptglobal/pmc/AttendanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvfromDate:Landroid/widget/TextView;

    const v2, 0x7f0904df

    .line 204
    invoke-virtual {p0, v2}, Lcom/conceptglobal/pmc/AttendanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvTotalDistance:Landroid/widget/TextView;

    const v2, 0x7f0904e2

    .line 205
    invoke-virtual {p0, v2}, Lcom/conceptglobal/pmc/AttendanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvTravelType:Landroid/widget/TextView;

    const v2, 0x7f0904e0

    .line 206
    invoke-virtual {p0, v2}, Lcom/conceptglobal/pmc/AttendanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvTotalExpences:Landroid/widget/TextView;

    const v2, 0x7f090089

    .line 208
    invoke-virtual {p0, v2}, Lcom/conceptglobal/pmc/AttendanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/utils/Ibutton;

    iput-object v2, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvStartDay:Lcom/conceptglobal/pmc/utils/Ibutton;

    .line 209
    invoke-virtual {v2, p0}, Lcom/conceptglobal/pmc/utils/Ibutton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f09007b

    .line 210
    invoke-virtual {p0, v2}, Lcom/conceptglobal/pmc/AttendanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/utils/Ibutton;

    iput-object v2, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvEndDay:Lcom/conceptglobal/pmc/utils/Ibutton;

    .line 211
    invoke-virtual {v2, p0}, Lcom/conceptglobal/pmc/utils/Ibutton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f090496

    .line 212
    invoke-virtual {p0, v2}, Lcom/conceptglobal/pmc/AttendanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvDraftText:Landroid/widget/TextView;

    const v2, 0x7f0904d3

    .line 213
    invoke-virtual {p0, v2}, Lcom/conceptglobal/pmc/AttendanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvStartKM:Landroid/widget/TextView;

    const v2, 0x7f09049b

    .line 214
    invoke-virtual {p0, v2}, Lcom/conceptglobal/pmc/AttendanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvEndKM:Landroid/widget/TextView;

    const v2, 0x7f090172

    .line 218
    invoke-virtual {p0, v2}, Lcom/conceptglobal/pmc/AttendanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etLeaveType:Landroid/widget/EditText;

    const v2, 0x7f09025f

    .line 219
    invoke-virtual {p0, v2}, Lcom/conceptglobal/pmc/AttendanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->mNOC1ImageView:Landroid/widget/ImageView;

    const v2, 0x7f090260

    .line 220
    invoke-virtual {p0, v2}, Lcom/conceptglobal/pmc/AttendanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->mNOC2ImageView:Landroid/widget/ImageView;

    const v2, 0x7f090254

    .line 221
    invoke-virtual {p0, v2}, Lcom/conceptglobal/pmc/AttendanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->mCamera1ImageView:Landroid/widget/ImageView;

    const v2, 0x7f090255

    .line 222
    invoke-virtual {p0, v2}, Lcom/conceptglobal/pmc/AttendanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->mCamera2ImageView:Landroid/widget/ImageView;

    .line 224
    iget-object v2, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->mCamera1ImageView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    iget-object v2, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->mCamera2ImageView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f090182

    .line 228
    invoke-virtual {p0, v2}, Lcom/conceptglobal/pmc/AttendanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etTravelDistance:Landroid/widget/EditText;

    const v2, 0x7f090291

    .line 229
    invoke-virtual {p0, v2}, Lcom/conceptglobal/pmc/AttendanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->llActivity_bg:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    .line 230
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v2, 0x7f090183

    .line 231
    invoke-virtual {p0, v2}, Lcom/conceptglobal/pmc/AttendanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etTravelType:Landroid/widget/EditText;

    .line 232
    invoke-virtual {v2, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f090181

    .line 233
    invoke-virtual {p0, v2}, Lcom/conceptglobal/pmc/AttendanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etTotalExpences:Landroid/widget/EditText;

    const v2, 0x7f0904e3

    .line 234
    invoke-virtual {p0, v2}, Lcom/conceptglobal/pmc/AttendanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvTravelTypeId:Landroid/widget/TextView;

    const v2, 0x7f09017e

    .line 235
    invoke-virtual {p0, v2}, Lcom/conceptglobal/pmc/AttendanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etStartKM:Landroid/widget/EditText;

    const v2, 0x7f090169

    .line 236
    invoke-virtual {p0, v2}, Lcom/conceptglobal/pmc/AttendanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etEndKM:Landroid/widget/EditText;

    const v2, 0x7f0902ac

    .line 237
    invoke-virtual {p0, v2}, Lcom/conceptglobal/pmc/AttendanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->llSaveBG:Landroid/widget/LinearLayout;

    const v2, 0x7f0904d4

    .line 239
    invoke-virtual {p0, v2}, Lcom/conceptglobal/pmc/AttendanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvStartLocation:Landroid/widget/TextView;

    .line 240
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f09049c

    .line 241
    invoke-virtual {p0, v2}, Lcom/conceptglobal/pmc/AttendanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvEndLocation:Landroid/widget/TextView;

    .line 242
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v6

    const-string v7, "Start Day"

    invoke-virtual {v6, v7, v1}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLookupValue(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->startday:J

    .line 247
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v6

    const-string v7, "End Day"

    invoke-virtual {v6, v7, v1}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLookupValue(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->endday:J

    .line 248
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLookupValue(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->expencesday:J

    .line 249
    const-string v1, "Start travel"

    iput-object v1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->startDayText:Ljava/lang/String;

    .line 250
    const-string v1, "Travel submission"

    iput-object v1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->endDayText:Ljava/lang/String;

    .line 251
    iput-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->expencesDayText:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 253
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 256
    :goto_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etLeaveType:Landroid/widget/EditText;

    new-instance v1, Lcom/conceptglobal/pmc/AttendanceActivity$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/AttendanceActivity$1;-><init>(Lcom/conceptglobal/pmc/AttendanceActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 270
    iget-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etStartKM:Landroid/widget/EditText;

    new-instance v1, Lcom/conceptglobal/pmc/AttendanceActivity$2;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/AttendanceActivity$2;-><init>(Lcom/conceptglobal/pmc/AttendanceActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 284
    iget-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etEndKM:Landroid/widget/EditText;

    new-instance v1, Lcom/conceptglobal/pmc/AttendanceActivity$3;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/AttendanceActivity$3;-><init>(Lcom/conceptglobal/pmc/AttendanceActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 316
    iget-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etLeaveType:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09016d

    .line 317
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/AttendanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etFromDate:Landroid/widget/EditText;

    const v0, 0x7f09017d

    .line 318
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/AttendanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etStartLatlongTime:Landroid/widget/EditText;

    const v0, 0x7f090168

    .line 319
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/AttendanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etEndLatlongTime:Landroid/widget/EditText;

    const v0, 0x7f0900af

    .line 327
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/AttendanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->btnSave:Landroid/widget/Button;

    .line 328
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090096

    .line 329
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/AttendanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->btnClear:Landroid/widget/Button;

    .line 330
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900b3

    .line 331
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/AttendanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->btnDraft:Landroid/widget/Button;

    .line 332
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0904b5

    .line 333
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/AttendanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvLeave:Landroid/widget/TextView;

    const v0, 0x7f0904c4

    .line 334
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/AttendanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvReason:Landroid/widget/TextView;

    .line 336
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    .line 337
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->mDay:I

    const/4 v1, 0x2

    .line 338
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->mMonth:I

    .line 339
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->mYear:I

    .line 341
    iget-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvLeaveType:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvLeaveType:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<font color=\'#ff0000\'>*</font>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    iget-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvfromDate:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvfromDate:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    iget-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvTotalDistance:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvTotalDistance:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    iget-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvTravelType:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvTravelType:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    iget-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvTotalExpences:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvTotalExpences:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    iget-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvStartDay:Lcom/conceptglobal/pmc/utils/Ibutton;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvStartDay:Lcom/conceptglobal/pmc/utils/Ibutton;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/Ibutton;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/utils/Ibutton;->setText(Ljava/lang/CharSequence;)V

    .line 347
    iget-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvEndDay:Lcom/conceptglobal/pmc/utils/Ibutton;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvEndDay:Lcom/conceptglobal/pmc/utils/Ibutton;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/Ibutton;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/utils/Ibutton;->setText(Ljava/lang/CharSequence;)V

    .line 350
    iget-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvStartKM:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvStartKM:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    iget-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvEndKM:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvEndKM:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f09054c

    .line 353
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/AttendanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvLatitude:Landroid/widget/TextView;

    .line 354
    iget-object v1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_latitudeText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    const v0, 0x7f090555

    .line 355
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/AttendanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvLongitude:Landroid/widget/TextView;

    .line 356
    iget-object v1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_longitudeText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    const v0, 0x7f0904ef

    .line 357
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/AttendanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvEndLatitude:Landroid/widget/TextView;

    .line 358
    iget-object v1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_latitudeText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    const v0, 0x7f0904f0

    .line 359
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/AttendanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvEndLongitude:Landroid/widget/TextView;

    .line 360
    iget-object v1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_longitudeText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    const v0, 0x7f0900a0

    .line 361
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/AttendanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->btnLatLng:Landroid/widget/ImageView;

    const v0, 0x7f0904d0

    .line 362
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/AttendanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvStartAddress:Landroid/widget/TextView;

    const v0, 0x7f090498

    .line 363
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/AttendanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvEndAddress:Landroid/widget/TextView;

    const v0, 0x7f0902a1

    .line 365
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/AttendanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->llExpenseView:Landroid/widget/LinearLayout;

    const v0, 0x7f09038b

    .line 366
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/AttendanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->rlExpenseViewImages:Landroid/widget/RelativeLayout;

    .line 368
    iget-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->llExpenseView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 369
    iget-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->rlExpenseViewImages:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 371
    iget-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->btnLatLng:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09009e

    .line 372
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/AttendanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->btnEndDayLatLng:Landroid/widget/ImageView;

    .line 373
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->isPastDayAttendance:Z

    if-eqz v0, :cond_2

    .line 376
    iget-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etFromDate:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->attendanceDetails:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/AttendanceModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttendanceModel;->getFromDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 380
    iget-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->btnSave:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    .line 381
    iget-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->attendanceDetails:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/AttendanceModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttendanceModel;->getFromDate()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/AttendanceActivity;->insertDataAftre12(Ljava/lang/String;)V

    goto :goto_3

    .line 384
    :cond_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etFromDate:Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateInDDMMYYYY()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 385
    iget-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvDraftText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 387
    :goto_3
    iget-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etFromDate:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/AttendanceActivity;->setEditableFalse(Landroid/widget/EditText;)V

    .line 388
    iget-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etStartLatlongTime:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/AttendanceActivity;->setEditableFalse(Landroid/widget/EditText;)V

    .line 389
    iget-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etEndLatlongTime:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/AttendanceActivity;->setEditableFalse(Landroid/widget/EditText;)V

    .line 390
    iget-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etTravelDistance:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/AttendanceActivity;->setEditableFalse(Landroid/widget/EditText;)V

    .line 391
    iget-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etTotalExpences:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/AttendanceActivity;->setEditableFalse(Landroid/widget/EditText;)V

    const v0, 0x7f0901de

    .line 401
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/AttendanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;

    .line 403
    new-instance v1, Lcom/conceptglobal/pmc/AttendanceActivity$4;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/AttendanceActivity$4;-><init>(Lcom/conceptglobal/pmc/AttendanceActivity;)V

    invoke-virtual {v0, v1}, Lcom/conceptglobal/imaterialdesign/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 415
    iget-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->attendanceDetails:Ljava/util/List;

    if-eqz v0, :cond_f

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_f

    .line 416
    iget-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->attendanceDetails:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/AttendanceModel;

    .line 417
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttendanceModel;->getLeaveType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 418
    iget-object v1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etLeaveType:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttendanceModel;->getLeaveType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 420
    :cond_3
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttendanceModel;->getNoOfDays()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-nez v1, :cond_4

    .line 421
    iget-object v1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etTravelDistance:Landroid/widget/EditText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttendanceModel;->getNoOfDays()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 423
    :cond_4
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttendanceModel;->getStartKM()I

    move-result v1

    if-eqz v1, :cond_5

    .line 424
    iget-object v1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etStartKM:Landroid/widget/EditText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttendanceModel;->getStartKM()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 426
    :cond_5
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttendanceModel;->getEndKM()I

    move-result v1

    if-eqz v1, :cond_6

    .line 427
    iget-object v1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etEndKM:Landroid/widget/EditText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttendanceModel;->getEndKM()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 433
    :cond_6
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttendanceModel;->getRemarks()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 434
    iget-object v1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etTotalExpences:Landroid/widget/EditText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttendanceModel;->getRemarks()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 436
    :cond_7
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttendanceModel;->getStartLatitude()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 437
    iget-object v1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvLatitude:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttendanceModel;->getStartLatitude()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    iget-object v1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvStartDay:Lcom/conceptglobal/pmc/utils/Ibutton;

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/utils/Ibutton;->setVisibility(I)V

    .line 439
    iget-object v1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvEndDay:Lcom/conceptglobal/pmc/utils/Ibutton;

    invoke-virtual {v1, v4}, Lcom/conceptglobal/pmc/utils/Ibutton;->setVisibility(I)V

    goto :goto_4

    .line 441
    :cond_8
    iget-object v1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvStartDay:Lcom/conceptglobal/pmc/utils/Ibutton;

    invoke-virtual {v1, v4}, Lcom/conceptglobal/pmc/utils/Ibutton;->setVisibility(I)V

    .line 442
    iget-object v1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvEndDay:Lcom/conceptglobal/pmc/utils/Ibutton;

    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/utils/Ibutton;->setVisibility(I)V

    .line 444
    :goto_4
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttendanceModel;->getStartLongitude()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 445
    iget-object v1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvLongitude:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttendanceModel;->getStartLongitude()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 447
    :cond_9
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttendanceModel;->getStartLocationTime()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 448
    iget-object v1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etStartLatlongTime:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttendanceModel;->getStartLocationTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 450
    :cond_a
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttendanceModel;->getEndLatitude()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 451
    iget-object v1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvEndLatitude:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttendanceModel;->getEndLatitude()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    :cond_b
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttendanceModel;->getEndLongitude()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 454
    iget-object v1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvEndLongitude:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttendanceModel;->getEndLongitude()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 456
    :cond_c
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttendanceModel;->getEndLocationTime()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 457
    iget-object v1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etEndLatlongTime:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttendanceModel;->getEndLocationTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 461
    :cond_d
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttendanceModel;->getStartLocationAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 462
    iget-object v1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvStartAddress:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttendanceModel;->getStartLocationAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    :cond_e
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttendanceModel;->getEndLocationAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 465
    iget-object v1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvEndAddress:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttendanceModel;->getEndLocationAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_f
    return-void
.end method

.method private insertData()V
    .locals 10

    const-string v0, "Update ActivityImageDetails set ServerStatus =\'false\'  where ReferenceID =\'"

    .line 719
    iget-object v1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etTravelDistance:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 720
    iget-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etTravelDistance:Landroid/widget/EditText;

    const-string v1, "Travel Distance"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 721
    iget-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etTravelDistance:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 722
    const-string v0, "Enter Travel Distance "

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void

    .line 726
    :cond_1
    iget-object v1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etStartKM:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etEndKM:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 728
    iget-object v1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etStartKM:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 729
    iget-object v1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etEndKM:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    sub-double/2addr v5, v3

    .line 731
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide v5, 0x408f380000000000L    # 999.0

    cmpl-double v1, v3, v5

    if-lez v1, :cond_2

    .line 733
    const-string v0, "Distance must be less than or equal to 999"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 737
    :cond_2
    iget-object v1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etStartKM:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 738
    iget-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etStartKM:Landroid/widget/EditText;

    const-string v1, "Start KM"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 739
    const-string v0, "Enter Start KM"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 742
    :cond_3
    iget-object v1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etEndKM:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 743
    iget-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etEndKM:Landroid/widget/EditText;

    const-string v1, "End KM"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 744
    const-string v0, "Enter End KM"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 747
    :cond_4
    invoke-direct {p0}, Lcom/conceptglobal/pmc/AttendanceActivity;->isValidDistance()Z

    move-result v1

    if-nez v1, :cond_5

    return-void

    .line 750
    :cond_5
    iget-boolean v1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->expensesNotRequired:Z

    if-nez v1, :cond_6

    .line 751
    iget-object v1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etTotalExpences:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 752
    iget-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etTotalExpences:Landroid/widget/EditText;

    const-string v1, "Total Expences"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 753
    const-string v0, "Enter Total Expences"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 757
    :cond_6
    iget-object v1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etEndLatlongTime:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_7

    .line 758
    iget-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvEndLocation:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 759
    const-string v0, "Please click end location to take end location"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 762
    :cond_7
    iget-object v1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etStartLatlongTime:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 763
    iget-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvStartLocation:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 764
    const-string v0, "Please click start location to take start location"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 767
    :cond_8
    iget-object v1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    iget-wide v5, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->transId:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    iget-wide v6, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->startday:J

    invoke-virtual {v4, v5, v6, v7}, Lcom/conceptglobal/pmc/common/Queries;->getImageDetailsQry_Assignment(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getImageDetailsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 768
    iget-object v4, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v5

    iget-wide v6, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->transId:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    iget-wide v7, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->endday:J

    invoke-virtual {v5, v6, v7, v8}, Lcom/conceptglobal/pmc/common/Queries;->getImageDetailsQry_Assignment(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getImageDetailsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 769
    iget-object v5, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v6

    iget-wide v7, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->transId:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    iget-wide v8, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->expencesday:J

    invoke-virtual {v6, v7, v8, v9}, Lcom/conceptglobal/pmc/common/Queries;->getImageDetailsQry_Assignment(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getImageDetailsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    if-eqz v1, :cond_12

    .line 770
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_9

    goto/16 :goto_5

    :cond_9
    if-eqz v4, :cond_11

    .line 774
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_a

    goto/16 :goto_4

    .line 778
    :cond_a
    iget-boolean v1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->expensesNotRequired:Z

    if-nez v1, :cond_c

    .line 779
    iget-object v1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etTotalExpences:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    if-eqz v5, :cond_b

    .line 780
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_c

    .line 781
    :cond_b
    const-string v0, "Please capture Expenses images"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 806
    :cond_c
    new-instance v1, Lcom/conceptglobal/pmc/model/AttendanceModel;

    invoke-direct {v1}, Lcom/conceptglobal/pmc/model/AttendanceModel;-><init>()V

    .line 807
    iget-object v4, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etFromDate:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/conceptglobal/pmc/model/AttendanceModel;->setFromDate(Ljava/lang/String;)V

    .line 811
    iget-object v4, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etTravelDistance:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/conceptglobal/pmc/model/AttendanceModel;->setNoOfDays(Ljava/lang/String;)V

    .line 812
    iget-object v4, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etTotalExpences:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/conceptglobal/pmc/model/AttendanceModel;->setRemarks(Ljava/lang/String;)V

    .line 813
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v5, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->transId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/conceptglobal/pmc/model/AttendanceModel;->setTransId(Ljava/lang/String;)V

    .line 814
    iget-object v4, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvLatitude:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/conceptglobal/pmc/model/AttendanceModel;->setStartLatitude(Ljava/lang/String;)V

    .line 815
    iget-object v4, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvLongitude:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/conceptglobal/pmc/model/AttendanceModel;->setStartLongitude(Ljava/lang/String;)V

    .line 816
    iget-object v4, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvEndLatitude:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/conceptglobal/pmc/model/AttendanceModel;->setEndLatitude(Ljava/lang/String;)V

    .line 817
    iget-object v4, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvEndLongitude:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/conceptglobal/pmc/model/AttendanceModel;->setEndLongitude(Ljava/lang/String;)V

    .line 818
    iget-object v4, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etStartLatlongTime:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/conceptglobal/pmc/model/AttendanceModel;->setStartLocationTime(Ljava/lang/String;)V

    .line 819
    iget-object v4, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etEndLatlongTime:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/conceptglobal/pmc/model/AttendanceModel;->setEndLocationTime(Ljava/lang/String;)V

    .line 820
    iget-object v4, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvStartAddress:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/conceptglobal/pmc/model/AttendanceModel;->setStartLocationAddress(Ljava/lang/String;)V

    .line 821
    iget-object v4, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvEndAddress:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/conceptglobal/pmc/model/AttendanceModel;->setEndLocationAddress(Ljava/lang/String;)V

    .line 822
    iget-object v4, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etStartKM:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    iget-object v4, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etStartKM:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    :cond_d
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v1, v4}, Lcom/conceptglobal/pmc/model/AttendanceModel;->setStartKM(I)V

    .line 823
    iget-object v4, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etEndKM:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    iget-object v4, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etEndKM:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_1

    :cond_e
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v1, v4}, Lcom/conceptglobal/pmc/model/AttendanceModel;->setEndKM(I)V

    .line 824
    iget-object v4, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->attendanceDetails:Ljava/util/List;

    if-eqz v4, :cond_f

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_f

    .line 825
    iget-object v4, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->attendanceDetails:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/AttendanceModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/AttendanceModel;->getAttendanceID()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/conceptglobal/pmc/model/AttendanceModel;->setAttendanceID(I)V

    goto :goto_2

    .line 829
    :cond_f
    :try_start_0
    const-string v3, "SELECT max(AttendanceID) from AttendanceDetails"

    invoke-static {v3}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->getRecordCount(Ljava/lang/String;)I

    move-result v3

    int-to-float v3, v3

    .line 830
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Lcom/conceptglobal/pmc/model/AttendanceModel;->setAttendanceID(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    .line 832
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 836
    :goto_2
    :try_start_1
    iget-object v3, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v4

    iget-wide v5, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->transId:J

    invoke-virtual {v4, v5, v6}, Lcom/conceptglobal/pmc/common/Queries;->deleteAttendanceDraftDetails(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V

    .line 837
    invoke-static {v1}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertAttendanceData(Lcom/conceptglobal/pmc/model/AttendanceModel;)V

    .line 838
    iget-object v1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->transId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQuery(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 840
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 842
    :goto_3
    const-string v0, "Data saved successfully"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 843
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 844
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/AttendanceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/conceptglobal/pmc/service/SyncDataService;

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isServiceRunning(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 845
    new-instance v0, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;-><init>(Landroid/content/Context;)V

    .line 846
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;->startService()V

    .line 849
    :cond_10
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/AttendanceActivity;->finish()V

    return-void

    .line 775
    :cond_11
    :goto_4
    const-string v0, "Please capture Travel submission reading"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 771
    :cond_12
    :goto_5
    const-string v0, "Please capture Start travel reading"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private insertDataAftre12(Ljava/lang/String;)V
    .locals 6

    const-string v0, "Update ActivityImageDetails set ServerStatus =\'false\'  where ReferenceID =\'"

    .line 906
    iget-object v1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-wide v3, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->transId:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->startday:J

    invoke-virtual {v2, v3, v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->getImageDetailsQry_Assignment(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getImageDetailsList(Ljava/lang/String;)Ljava/util/List;

    .line 945
    new-instance v1, Lcom/conceptglobal/pmc/model/AttendanceModel;

    invoke-direct {v1}, Lcom/conceptglobal/pmc/model/AttendanceModel;-><init>()V

    .line 946
    invoke-virtual {v1, p1}, Lcom/conceptglobal/pmc/model/AttendanceModel;->setFromDate(Ljava/lang/String;)V

    .line 950
    iget-object p1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etTravelDistance:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/conceptglobal/pmc/model/AttendanceModel;->setNoOfDays(Ljava/lang/String;)V

    .line 951
    iget-object p1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etTotalExpences:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/conceptglobal/pmc/model/AttendanceModel;->setRemarks(Ljava/lang/String;)V

    .line 952
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->transId:J

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/conceptglobal/pmc/model/AttendanceModel;->setTransId(Ljava/lang/String;)V

    .line 953
    iget-object p1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvLatitude:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/conceptglobal/pmc/model/AttendanceModel;->setStartLatitude(Ljava/lang/String;)V

    .line 954
    iget-object p1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvLongitude:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/conceptglobal/pmc/model/AttendanceModel;->setStartLongitude(Ljava/lang/String;)V

    .line 955
    iget-object p1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvEndLatitude:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/conceptglobal/pmc/model/AttendanceModel;->setEndLatitude(Ljava/lang/String;)V

    .line 956
    iget-object p1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvEndLongitude:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/conceptglobal/pmc/model/AttendanceModel;->setEndLongitude(Ljava/lang/String;)V

    .line 957
    iget-object p1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etStartLatlongTime:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/conceptglobal/pmc/model/AttendanceModel;->setStartLocationTime(Ljava/lang/String;)V

    .line 958
    iget-object p1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etEndLatlongTime:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/conceptglobal/pmc/model/AttendanceModel;->setEndLocationTime(Ljava/lang/String;)V

    .line 959
    iget-object p1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvStartAddress:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/conceptglobal/pmc/model/AttendanceModel;->setStartLocationAddress(Ljava/lang/String;)V

    .line 960
    iget-object p1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvEndAddress:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/conceptglobal/pmc/model/AttendanceModel;->setEndLocationAddress(Ljava/lang/String;)V

    .line 961
    iget-object p1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etStartKM:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etStartKM:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v1, p1}, Lcom/conceptglobal/pmc/model/AttendanceModel;->setStartKM(I)V

    .line 962
    iget-object p1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etEndKM:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etEndKM:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v1, p1}, Lcom/conceptglobal/pmc/model/AttendanceModel;->setEndKM(I)V

    .line 963
    iget-object p1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->attendanceDetails:Ljava/util/List;

    const/4 v3, 0x1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 964
    iget-object p1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->attendanceDetails:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/model/AttendanceModel;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/AttendanceModel;->getAttendanceID()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/conceptglobal/pmc/model/AttendanceModel;->setAttendanceID(I)V

    goto :goto_2

    .line 968
    :cond_2
    :try_start_0
    const-string p1, "SELECT max(AttendanceID) from AttendanceDetails"

    invoke-static {p1}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->getRecordCount(Ljava/lang/String;)I

    move-result p1

    int-to-float p1, p1

    .line 969
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    add-int/2addr p1, v3

    invoke-virtual {v1, p1}, Lcom/conceptglobal/pmc/model/AttendanceModel;->setAttendanceID(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 971
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 975
    :goto_2
    :try_start_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-wide v4, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->transId:J

    invoke-virtual {v2, v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->deleteAttendanceDraftDetails(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V

    .line 976
    invoke-static {v1}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertAttendanceData(Lcom/conceptglobal/pmc/model/AttendanceModel;)V

    .line 977
    iget-object p1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->transId:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQuery(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 979
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 981
    :goto_3
    const-string p1, "Data saved successfully"

    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 982
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 983
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/AttendanceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lcom/conceptglobal/pmc/service/SyncDataService;

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isServiceRunning(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 984
    new-instance p1, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;

    invoke-direct {p1, p0}, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;-><init>(Landroid/content/Context;)V

    .line 985
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;->startService()V

    .line 988
    :cond_3
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/AttendanceActivity;->finish()V

    return-void
.end method

.method private insertDraftData()V
    .locals 6

    .line 654
    new-instance v0, Lcom/conceptglobal/pmc/model/AttendanceModel;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/AttendanceModel;-><init>()V

    .line 655
    iget-object v1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etFromDate:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/AttendanceModel;->setFromDate(Ljava/lang/String;)V

    .line 657
    iget-object v1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etLeaveType:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/AttendanceModel;->setLeaveType(Ljava/lang/String;)V

    .line 659
    iget-object v1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etTravelDistance:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/AttendanceModel;->setNoOfDays(Ljava/lang/String;)V

    .line 660
    iget-object v1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etTotalExpences:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/AttendanceModel;->setRemarks(Ljava/lang/String;)V

    .line 661
    iget-object v1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvLatitude:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/AttendanceModel;->setStartLatitude(Ljava/lang/String;)V

    .line 662
    iget-object v1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvLongitude:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/AttendanceModel;->setStartLongitude(Ljava/lang/String;)V

    .line 663
    iget-object v1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvEndLatitude:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/AttendanceModel;->setEndLatitude(Ljava/lang/String;)V

    .line 664
    iget-object v1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvEndLongitude:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/AttendanceModel;->setEndLongitude(Ljava/lang/String;)V

    .line 665
    iget-object v1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etStartLatlongTime:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/AttendanceModel;->setStartLocationTime(Ljava/lang/String;)V

    .line 666
    iget-object v1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etEndLatlongTime:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/AttendanceModel;->setEndLocationTime(Ljava/lang/String;)V

    .line 667
    iget-object v1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvStartAddress:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/AttendanceModel;->setStartLocationAddress(Ljava/lang/String;)V

    .line 668
    iget-object v1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvEndAddress:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/AttendanceModel;->setEndLocationAddress(Ljava/lang/String;)V

    .line 669
    iget-object v1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etStartKM:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etStartKM:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/AttendanceModel;->setStartKM(I)V

    .line 670
    iget-object v1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etEndKM:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etEndKM:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/AttendanceModel;->setEndKM(I)V

    .line 671
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->transId:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/AttendanceModel;->setTransId(Ljava/lang/String;)V

    .line 672
    iget-object v1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->attendanceDetails:Ljava/util/List;

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 673
    iget-object v1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->attendanceDetails:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/AttendanceModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttendanceModel;->getAttendanceID()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/AttendanceModel;->setAttendanceID(I)V

    goto :goto_2

    .line 677
    :cond_2
    :try_start_0
    const-string v1, "SELECT max(AttendanceID) from AttendanceDetails"

    invoke-static {v1}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->getRecordCount(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    .line 678
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/AttendanceModel;->setAttendanceID(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 680
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 684
    :goto_2
    :try_start_1
    iget-object v1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-wide v4, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->transId:J

    invoke-virtual {v2, v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->deleteAttendanceDraftDetails(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V

    .line 685
    invoke-static {v0}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertAttendanceDataDraft(Lcom/conceptglobal/pmc/model/AttendanceModel;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    nop

    .line 689
    :goto_3
    const-string v0, "Data saved successfully"

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 690
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 691
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/AttendanceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/conceptglobal/pmc/service/SyncDataService;

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isServiceRunning(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 692
    new-instance v0, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;-><init>(Landroid/content/Context;)V

    .line 693
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;->startService()V

    .line 696
    :cond_3
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/AttendanceActivity;->finish()V

    return-void
.end method

.method private isValidDistance()Z
    .locals 5

    .line 505
    iget-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etStartKM:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etEndKM:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etStartKM:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 507
    iget-object v2, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etEndKM:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    .line 509
    const-string v0, "Please enter proper End KM value"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$setBottomViewPadding$0(Landroid/view/View;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 3

    .line 1392
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p1

    if-eqz p0, :cond_0

    .line 1397
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .line 1398
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    .line 1399
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    iget p1, p1, Landroidx/core/graphics/Insets;->bottom:I

    .line 1396
    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    return-object p2
.end method

.method private setAdapter()V
    .locals 6

    .line 1102
    iget-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-wide v2, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->transId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->startday:J

    invoke-virtual {v1, v2, v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->getImageDetailsQry_Assignment(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getImageDetailsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->startDayImages:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1103
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1104
    iget-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->mNOC1ImageView:Landroid/widget/ImageView;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->startDayImages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/ImageDetails;->getPicturePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, v2}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->loadDiskThumbnail(Landroid/content/Context;Landroid/widget/ImageView;Ljava/io/File;)V

    .line 1115
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-wide v3, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->transId:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->endday:J

    invoke-virtual {v2, v3, v4, v5}, Lcom/conceptglobal/pmc/common/Queries;->getImageDetailsQry_Assignment(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getImageDetailsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->endDayImages:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1116
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1117
    iget-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->mNOC2ImageView:Landroid/widget/ImageView;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->endDayImages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/ImageDetails;->getPicturePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, v2}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->loadDiskThumbnail(Landroid/content/Context;Landroid/widget/ImageView;Ljava/io/File;)V

    :cond_1
    return-void
.end method

.method private setBottomViewPadding(Landroid/view/View;)V
    .locals 1

    .line 1391
    new-instance v0, Lcom/conceptglobal/pmc/AttendanceActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/conceptglobal/pmc/AttendanceActivity$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;)V

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    return-void
.end method

.method private setEditableFalse(Landroid/widget/EditText;)V
    .locals 2

    const/4 v0, 0x0

    .line 519
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 520
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setClickable(Z)V

    .line 521
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/AttendanceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080097

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private showAlertDialog()V
    .locals 4

    .line 1335
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1336
    const-string v1, "Please fill all mandatory fields and click on submit button to save the attendance."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_okText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/conceptglobal/pmc/AttendanceActivity$12;

    invoke-direct {v3, p0}, Lcom/conceptglobal/pmc/AttendanceActivity$12;-><init>(Lcom/conceptglobal/pmc/AttendanceActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1342
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1343
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1344
    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showClearDataAlertDialog()V
    .locals 4

    .line 1350
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1351
    const-string v1, "Are you sure, you want to delete all the entered details? "

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_okText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/conceptglobal/pmc/AttendanceActivity$13;

    invoke-direct {v3, p0}, Lcom/conceptglobal/pmc/AttendanceActivity$13;-><init>(Lcom/conceptglobal/pmc/AttendanceActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1368
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_cancelDialogButtonText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/AttendanceActivity$14;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/AttendanceActivity$14;-><init>(Lcom/conceptglobal/pmc/AttendanceActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1375
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1376
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1377
    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showGoBackDialog()V
    .locals 4

    .line 1306
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1307
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_addCustomerGoBackDialog()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_cancelDialogButtonText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/conceptglobal/pmc/AttendanceActivity$9;

    invoke-direct {v3, p0}, Lcom/conceptglobal/pmc/AttendanceActivity$9;-><init>(Lcom/conceptglobal/pmc/AttendanceActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1313
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_draftFarmerText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/AttendanceActivity$10;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/AttendanceActivity$10;-><init>(Lcom/conceptglobal/pmc/AttendanceActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1320
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_okText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/AttendanceActivity$11;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/AttendanceActivity$11;-><init>(Lcom/conceptglobal/pmc/AttendanceActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1327
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1328
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1329
    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private updateDisplay()V
    .locals 3

    .line 1036
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->mDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v2, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->mMonth:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->mYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->mFiledStr:Ljava/lang/String;

    .line 1037
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MM-yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1039
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->mFiledStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 1040
    iget-object v1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etSelected:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->mFiledStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1041
    iget-object v1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etFromDate:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etToDate:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1042
    iget-object v1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etFromDate:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etToDate:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/conceptglobal/pmc/AttendanceActivity;->setNoOfDays(Ljava/util/Date;Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method protected displayNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 1158
    invoke-super {p0, p1, p2, p3}, Lcom/conceptglobal/pmc/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/16 p2, 0x65

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 1164
    :cond_0
    const-string p1, "AttendanceActivity"

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Navigation"

    const-string v1, "Image Capture End"

    invoke-static {v0, v1, p1, p2}, Lcom/conceptglobal/pmc/utils/PLog;->location(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_5

    .line 1166
    const-string p1, "ImagePath"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1167
    iget-object p2, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->imagelist:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    if-eq p2, p1, :cond_3

    if-eqz p2, :cond_2

    goto :goto_0

    .line 1184
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    const-string p2, "GPSNotTurnedOn"

    invoke-virtual {p1, p0, p2}, Lcom/conceptglobal/pmc/utils/LocationUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 1177
    :cond_3
    iget-object p1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->LocationReq:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->LocationReq:Ljava/lang/String;

    const-string p2, "Start"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1178
    iget-object p1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvLatitude:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvLongitude:Landroid/widget/TextView;

    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/AttendanceActivity;->fetchLocation(Landroid/widget/TextView;Landroid/widget/TextView;)V

    goto :goto_0

    .line 1180
    :cond_4
    iget-object p1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvEndLatitude:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvEndLongitude:Landroid/widget/TextView;

    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/AttendanceActivity;->fetchEndDayLocation(Landroid/widget/TextView;Landroid/widget/TextView;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11

    .line 546
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_1

    .line 574
    :sswitch_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etFromDate:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etFromDate:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 578
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etToDate:Landroid/widget/EditText;

    iput-object p1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etSelected:Landroid/widget/EditText;

    .line 580
    new-instance p1, Landroid/app/DatePickerDialog;

    iget-object v2, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v3, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->mYear:I

    iget v4, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->mMonth:I

    iget v5, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->mDay:I

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->show()V

    goto/16 :goto_1

    .line 575
    :cond_1
    :goto_0
    const-string p1, "Please select from date"

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    .line 548
    :sswitch_1
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->hideInputKeyboard(Landroid/content/Context;)V

    .line 550
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 552
    :try_start_1
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    const-string v3, "AttendanceType"

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->getDropdownValuesLookup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerAssociatedBrands(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-object v3, v0

    .line 556
    :try_start_2
    new-instance v0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;

    const-string v5, "Select Activity"

    new-instance v7, Landroid/widget/EditText;

    invoke-direct {v7, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/16 v8, 0xa

    move-object v1, v0

    move-object v2, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v10}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;-><init>(Landroid/content/Context;Ljava/util/List;ILjava/lang/String;Landroid/view/View;Landroid/widget/TextView;III)V

    .line 557
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const v1, 0x7f1101b9

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 558
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->show()V

    .line 559
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 569
    :sswitch_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etFromDate:Landroid/widget/EditText;

    iput-object p1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etSelected:Landroid/widget/EditText;

    .line 571
    new-instance p1, Landroid/app/DatePickerDialog;

    iget-object v2, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v3, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->mYear:I

    iget v4, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->mMonth:I

    iget v5, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->mDay:I

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->show()V

    goto :goto_1

    .line 600
    :sswitch_3
    invoke-direct {p0}, Lcom/conceptglobal/pmc/AttendanceActivity;->insertDraftData()V

    goto :goto_1

    .line 594
    :sswitch_4
    invoke-direct {p0}, Lcom/conceptglobal/pmc/AttendanceActivity;->insertData()V

    goto :goto_1

    .line 597
    :sswitch_5
    invoke-direct {p0}, Lcom/conceptglobal/pmc/AttendanceActivity;->showClearDataAlertDialog()V

    goto :goto_1

    .line 605
    :sswitch_6
    iget-object p1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->startDayImages:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_2

    .line 606
    const-string p1, "Please take Start KM reading image"

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 608
    :cond_2
    const-string p1, "Start"

    iput-object p1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->LocationReq:Ljava/lang/String;

    .line 609
    iget-object p1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvLatitude:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvLongitude:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/conceptglobal/pmc/AttendanceActivity;->fetchLocation(Landroid/widget/TextView;Landroid/widget/TextView;)V

    goto :goto_1

    .line 615
    :sswitch_7
    iget-object p1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->endDayImages:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_3

    .line 616
    const-string p1, "Please take End KM reading image"

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 618
    :cond_3
    iget-object p1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etEndLatlongTime:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-nez p1, :cond_4

    .line 619
    const-string p1, "End"

    iput-object p1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->LocationReq:Ljava/lang/String;

    .line 620
    iget-object p1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvEndLatitude:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvEndLongitude:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/conceptglobal/pmc/AttendanceActivity;->fetchEndDayLocation(Landroid/widget/TextView;Landroid/widget/TextView;)V

    goto :goto_1

    .line 622
    :cond_4
    iget-object p1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->btnSave:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->performClick()Z

    :catch_1
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09007b -> :sswitch_7
        0x7f090089 -> :sswitch_6
        0x7f090096 -> :sswitch_5
        0x7f09009e -> :sswitch_7
        0x7f0900a0 -> :sswitch_6
        0x7f0900af -> :sswitch_4
        0x7f0900b3 -> :sswitch_3
        0x7f09016d -> :sswitch_2
        0x7f090172 -> :sswitch_1
        0x7f090180 -> :sswitch_0
        0x7f09049c -> :sswitch_7
        0x7f0904d4 -> :sswitch_6
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 139
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c001f

    .line 140
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/AttendanceActivity;->setContentView(I)V

    .line 141
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/AttendanceActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "Title"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/AttendanceActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->title:Ljava/lang/String;

    .line 144
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    .line 145
    invoke-direct {p0}, Lcom/conceptglobal/pmc/AttendanceActivity;->initialization()V

    .line 146
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/AttendanceActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 147
    iget-object p1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->llSaveBG:Landroid/widget/LinearLayout;

    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/AttendanceActivity;->setBottomViewPadding(Landroid/view/View;)V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 6

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 996
    :cond_0
    new-instance p1, Landroid/app/DatePickerDialog;

    iget-object v2, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v3, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->mYear:I

    iget v4, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->mMonth:I

    iget v5, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->mDay:I

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    return-object p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 1003
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/AttendanceActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1011
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 160
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_1

    const v1, 0x7f09024c

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->btnDraft:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    goto :goto_0

    .line 162
    :cond_1
    invoke-direct {p0}, Lcom/conceptglobal/pmc/AttendanceActivity;->showGoBackDialog()V

    .line 169
    :goto_0
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 1284
    const-string p2, "onRequestPermissionResult"

    const-string v0, "AttendanceActivity"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0x22

    if-ne p1, p2, :cond_3

    .line 1286
    array-length p1, p3

    if-gtz p1, :cond_0

    .line 1289
    const-string p1, "User interaction was cancelled."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1290
    aget p1, p3, p1

    if-nez p1, :cond_2

    .line 1292
    iget-object p1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->LocationReq:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->LocationReq:Ljava/lang/String;

    const-string p2, "Start"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1293
    iget-object p1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvLatitude:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvLongitude:Landroid/widget/TextView;

    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/AttendanceActivity;->fetchLocation(Landroid/widget/TextView;Landroid/widget/TextView;)V

    goto :goto_0

    .line 1295
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvEndLatitude:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->tvEndLongitude:Landroid/widget/TextView;

    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/AttendanceActivity;->fetchEndDayLocation(Landroid/widget/TextView;Landroid/widget/TextView;)V

    goto :goto_0

    .line 1298
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->mLocationUtils:Lcom/conceptglobal/pmc/utils/LocationUtils;

    const-string p2, "PermissionDenied"

    invoke-virtual {p1, p0, p2}, Lcom/conceptglobal/pmc/utils/LocationUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 153
    invoke-super {p0}, Lcom/conceptglobal/pmc/BaseActivity;->onResume()V

    .line 154
    invoke-direct {p0}, Lcom/conceptglobal/pmc/AttendanceActivity;->setAdapter()V

    return-void
.end method

.method public setNoOfDays(Ljava/util/Date;Ljava/util/Date;)V
    .locals 4

    .line 1052
    :try_start_0
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    sub-long/2addr v0, p1

    const-wide/32 p1, 0x5265c00

    .line 1058
    div-long/2addr v0, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 p1, 0x1

    add-long/2addr v0, p1

    const-wide/16 p1, 0x0

    .line 1059
    const-string v2, ""

    cmp-long v3, v0, p1

    if-gtz v3, :cond_0

    .line 1060
    :try_start_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etToDate:Landroid/widget/EditText;

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1061
    iget-object p1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etNoOfdays:Landroid/widget/EditText;

    const-string p2, "0"

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1062
    const-string p1, "Please select proper to date"

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1064
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/AttendanceActivity;->etNoOfdays:Landroid/widget/EditText;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1067
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

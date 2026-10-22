.class public Lcom/conceptglobal/pmc/ResignationActivity;
.super Lcom/conceptglobal/pmc/BaseActivity;
.source "ResignationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/ResignationActivity$ArrovalStatusTask;
    }
.end annotation


# static fields
.field private static final DATEDIALOGID:I = 0x0

.field private static final DATEDIALOGID_TWO:I = 0x1


# instance fields
.field private btnSave:Landroid/widget/Button;

.field private defaultMaxDate:J

.field private defaultMinDate:J

.field private etArrovedDateStatus:Landroid/widget/EditText;

.field private etDescription:Landroid/widget/EditText;

.field private etDescriptionStatus:Landroid/widget/EditText;

.field private etLastWorkingDay:Landroid/widget/EditText;

.field private etLastWorkingDayStatus:Landroid/widget/EditText;

.field private etReason:Landroid/widget/EditText;

.field private etReasonStatus:Landroid/widget/EditText;

.field private etReviewdByName:Landroid/widget/EditText;

.field private etSelected:Landroid/widget/EditText;

.field private etStatus:Landroid/widget/EditText;

.field private etresignationDate:Landroid/widget/EditText;

.field private etresignationDateStatus:Landroid/widget/EditText;

.field private ivRefresh:Landroid/widget/ImageView;

.field private ll_resignation:Landroid/widget/LinearLayout;

.field private ll_status:Landroid/widget/LinearLayout;

.field private mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private mDay:I

.field private mFiledStr:Ljava/lang/String;

.field private mMonth:I

.field private mYear:I

.field private pbSvDataRefresh:Landroid/widget/ProgressBar;

.field resignationDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/ResignationDetails;",
            ">;"
        }
    .end annotation
.end field

.field private tab_selected:I

.field private tvArrovedDateStatus:Landroid/widget/TextView;

.field private tvDescription:Landroid/widget/TextView;

.field private tvDescriptionStatus:Landroid/widget/TextView;

.field private tvLastWorkingDay:Landroid/widget/TextView;

.field private tvLastWorkingDayStatus:Landroid/widget/TextView;

.field private tvReason:Landroid/widget/TextView;

.field private tvReasonID:Landroid/widget/TextView;

.field private tvReasonStatus:Landroid/widget/TextView;

.field private tvStatus:Landroid/widget/TextView;

.field private tvStatusUpdatedTime:Landroid/widget/TextView;

.field private tvTab1:Landroid/widget/TextView;

.field private tvTab2:Landroid/widget/TextView;

.field private tvresignationDate:Landroid/widget/TextView;

.field private tvresignationDateStatus:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 51
    invoke-direct {p0}, Lcom/conceptglobal/pmc/BaseActivity;-><init>()V

    const-wide/16 v0, -0x1

    .line 59
    iput-wide v0, p0, Lcom/conceptglobal/pmc/ResignationActivity;->defaultMinDate:J

    .line 60
    iput-wide v0, p0, Lcom/conceptglobal/pmc/ResignationActivity;->defaultMaxDate:J

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/conceptglobal/pmc/ResignationActivity;->mFiledStr:Ljava/lang/String;

    const/4 v0, 0x1

    .line 63
    iput v0, p0, Lcom/conceptglobal/pmc/ResignationActivity;->tab_selected:I

    .line 417
    new-instance v0, Lcom/conceptglobal/pmc/ResignationActivity$1;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/ResignationActivity$1;-><init>(Lcom/conceptglobal/pmc/ResignationActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/ResignationActivity;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    return-void
.end method

.method static synthetic access$102(Lcom/conceptglobal/pmc/ResignationActivity;I)I
    .locals 0

    .line 51
    iput p1, p0, Lcom/conceptglobal/pmc/ResignationActivity;->mYear:I

    return p1
.end method

.method static synthetic access$202(Lcom/conceptglobal/pmc/ResignationActivity;I)I
    .locals 0

    .line 51
    iput p1, p0, Lcom/conceptglobal/pmc/ResignationActivity;->mMonth:I

    return p1
.end method

.method static synthetic access$302(Lcom/conceptglobal/pmc/ResignationActivity;I)I
    .locals 0

    .line 51
    iput p1, p0, Lcom/conceptglobal/pmc/ResignationActivity;->mDay:I

    return p1
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/ResignationActivity;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/conceptglobal/pmc/ResignationActivity;->updateDisplay()V

    return-void
.end method

.method static synthetic access$500(Lcom/conceptglobal/pmc/ResignationActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/conceptglobal/pmc/ResignationActivity;->ivRefresh:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/conceptglobal/pmc/ResignationActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/conceptglobal/pmc/ResignationActivity;->pbSvDataRefresh:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$700(Lcom/conceptglobal/pmc/ResignationActivity;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/conceptglobal/pmc/ResignationActivity;->getResignationStatusDetails()V

    return-void
.end method

.method private getResignationStatusDetails()V
    .locals 7

    .line 492
    const-string v0, "/"

    const-string v1, "data"

    .line 494
    :try_start_0
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 500
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getWcfToken()Ljava/lang/String;

    move-result-object v3

    .line 501
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v5

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUrlPMCService(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getMethodResignedUserStatus()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 503
    invoke-static {}, Lcom/conceptglobal/pmc/asynctask/WebService;->getInstance()Lcom/conceptglobal/pmc/asynctask/WebService;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Lcom/conceptglobal/pmc/asynctask/WebService;->sendGetRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 504
    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const-class v4, Lcom/conceptglobal/pmc/model/ResponseModel;

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/ResponseModel;

    .line 505
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 506
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/ResponseModel;->getStatus()Ljava/lang/String;

    move-result-object v0

    const-string v5, "AUTHORISED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0xa

    if-le v0, v3, :cond_1

    .line 508
    new-instance v0, Ljava/io/StringReader;

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/conceptglobal/pmc/model/ResignationStatusDetails;

    invoke-virtual {v2, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/ResignationStatusDetails;

    .line 509
    invoke-static {v0}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->UpdateResignationData(Lcom/conceptglobal/pmc/model/ResignationStatusDetails;)V

    .line 510
    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RESIGNATION_STATUS_SYNC_TIME"

    invoke-static {p0, v0, v1}, Lcom/conceptglobal/pmc/utils/SharedPrefManager;->storeString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 512
    :cond_0
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/ResponseModel;->getStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UNAUTHORISED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 513
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/ResponseModel;->getStatusMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Invalid Token"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 515
    new-instance v0, Lcom/conceptglobal/pmc/sync/GetToken;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/conceptglobal/pmc/sync/GetToken;-><init>(Landroid/content/Context;I)V

    .line 516
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/sync/GetToken;->StartGetToken()V

    .line 518
    const-string v0, "com.conceptglobal.pmc.LoginActivity"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 519
    const-string v1, "getGeoDetails"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x1

    .line 520
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 521
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 522
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 526
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private initialization()V
    .locals 4

    const v0, 0x7f0905b0

    .line 106
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/ResignationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/ResignationActivity;->tvresignationDate:Landroid/widget/TextView;

    const v0, 0x7f0904bf

    .line 107
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/ResignationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/ResignationActivity;->tvReason:Landroid/widget/TextView;

    const v0, 0x7f0904c0

    .line 108
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/ResignationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/ResignationActivity;->tvReasonID:Landroid/widget/TextView;

    const v0, 0x7f090490

    .line 109
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/ResignationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/ResignationActivity;->tvDescription:Landroid/widget/TextView;

    const v0, 0x7f0904b2

    .line 110
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/ResignationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/ResignationActivity;->tvLastWorkingDay:Landroid/widget/TextView;

    const v0, 0x7f0904db

    .line 112
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/ResignationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/ResignationActivity;->tvTab1:Landroid/widget/TextView;

    const v0, 0x7f0904dc

    .line 113
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/ResignationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/ResignationActivity;->tvTab2:Landroid/widget/TextView;

    const v0, 0x7f090263

    .line 114
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/ResignationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/ResignationActivity;->ivRefresh:Landroid/widget/ImageView;

    .line 115
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090349

    .line 116
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/ResignationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/conceptglobal/pmc/ResignationActivity;->pbSvDataRefresh:Landroid/widget/ProgressBar;

    .line 117
    invoke-virtual {v0, p0}, Landroid/widget/ProgressBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0902c2

    .line 119
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/ResignationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/ResignationActivity;->ll_resignation:Landroid/widget/LinearLayout;

    const v0, 0x7f0902c4

    .line 120
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/ResignationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/ResignationActivity;->ll_status:Landroid/widget/LinearLayout;

    const v0, 0x7f0901d7

    .line 122
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/ResignationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/ResignationActivity;->etresignationDate:Landroid/widget/EditText;

    const v0, 0x7f090177

    .line 123
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/ResignationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/ResignationActivity;->etReason:Landroid/widget/EditText;

    const v0, 0x7f090164

    .line 124
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/ResignationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/ResignationActivity;->etDescription:Landroid/widget/EditText;

    const v0, 0x7f090170

    .line 125
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/ResignationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/ResignationActivity;->etLastWorkingDay:Landroid/widget/EditText;

    const v0, 0x7f0905b1

    .line 129
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/ResignationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/ResignationActivity;->tvresignationDateStatus:Landroid/widget/TextView;

    const v0, 0x7f0904c2

    .line 130
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/ResignationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/ResignationActivity;->tvReasonStatus:Landroid/widget/TextView;

    const v0, 0x7f090492

    .line 131
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/ResignationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/ResignationActivity;->tvDescriptionStatus:Landroid/widget/TextView;

    const v0, 0x7f0904b3

    .line 132
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/ResignationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/ResignationActivity;->tvLastWorkingDayStatus:Landroid/widget/TextView;

    const v0, 0x7f0904d7

    .line 133
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/ResignationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/ResignationActivity;->tvStatus:Landroid/widget/TextView;

    const v0, 0x7f090471

    .line 134
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/ResignationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/ResignationActivity;->tvArrovedDateStatus:Landroid/widget/TextView;

    const v0, 0x7f0904d8

    .line 135
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/ResignationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/ResignationActivity;->tvStatusUpdatedTime:Landroid/widget/TextView;

    const v0, 0x7f0901d8

    .line 137
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/ResignationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/ResignationActivity;->etresignationDateStatus:Landroid/widget/EditText;

    .line 138
    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/ResignationActivity;->setEditableFalse(Landroid/widget/EditText;)V

    const v0, 0x7f090178

    .line 139
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/ResignationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/ResignationActivity;->etReasonStatus:Landroid/widget/EditText;

    .line 140
    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/ResignationActivity;->setEditableFalse(Landroid/widget/EditText;)V

    const v0, 0x7f090165

    .line 141
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/ResignationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/ResignationActivity;->etDescriptionStatus:Landroid/widget/EditText;

    .line 142
    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/ResignationActivity;->setEditableFalse(Landroid/widget/EditText;)V

    const v0, 0x7f090171

    .line 143
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/ResignationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/ResignationActivity;->etLastWorkingDayStatus:Landroid/widget/EditText;

    .line 144
    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/ResignationActivity;->setEditableFalse(Landroid/widget/EditText;)V

    const v0, 0x7f09017f

    .line 145
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/ResignationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/ResignationActivity;->etStatus:Landroid/widget/EditText;

    .line 146
    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/ResignationActivity;->setEditableFalse(Landroid/widget/EditText;)V

    const v0, 0x7f09017b

    .line 147
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/ResignationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/ResignationActivity;->etReviewdByName:Landroid/widget/EditText;

    const v0, 0x7f090162

    .line 148
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/ResignationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/ResignationActivity;->etArrovedDateStatus:Landroid/widget/EditText;

    .line 149
    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/ResignationActivity;->setEditableFalse(Landroid/widget/EditText;)V

    .line 151
    iget-object v0, p0, Lcom/conceptglobal/pmc/ResignationActivity;->etReason:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v0, p0, Lcom/conceptglobal/pmc/ResignationActivity;->tvTab1:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v0, p0, Lcom/conceptglobal/pmc/ResignationActivity;->tvTab2:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v0, p0, Lcom/conceptglobal/pmc/ResignationActivity;->etLastWorkingDay:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900af

    .line 158
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/ResignationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/ResignationActivity;->btnSave:Landroid/widget/Button;

    .line 159
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    .line 162
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/ResignationActivity;->mDay:I

    const/4 v1, 0x2

    .line 163
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/ResignationActivity;->mMonth:I

    const/4 v1, 0x1

    .line 164
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/ResignationActivity;->mYear:I

    .line 166
    iget-object v0, p0, Lcom/conceptglobal/pmc/ResignationActivity;->tvresignationDate:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/conceptglobal/pmc/ResignationActivity;->tvresignationDate:Landroid/widget/TextView;

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

    .line 167
    iget-object v0, p0, Lcom/conceptglobal/pmc/ResignationActivity;->tvReason:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/conceptglobal/pmc/ResignationActivity;->tvReason:Landroid/widget/TextView;

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

    .line 168
    iget-object v0, p0, Lcom/conceptglobal/pmc/ResignationActivity;->tvDescription:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/conceptglobal/pmc/ResignationActivity;->tvDescription:Landroid/widget/TextView;

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

    .line 169
    iget-object v0, p0, Lcom/conceptglobal/pmc/ResignationActivity;->tvLastWorkingDay:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/conceptglobal/pmc/ResignationActivity;->tvLastWorkingDay:Landroid/widget/TextView;

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

    .line 171
    iget-object v0, p0, Lcom/conceptglobal/pmc/ResignationActivity;->tvresignationDateStatus:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/conceptglobal/pmc/ResignationActivity;->tvresignationDateStatus:Landroid/widget/TextView;

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

    .line 172
    iget-object v0, p0, Lcom/conceptglobal/pmc/ResignationActivity;->tvReasonStatus:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/conceptglobal/pmc/ResignationActivity;->tvReasonStatus:Landroid/widget/TextView;

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

    .line 173
    iget-object v0, p0, Lcom/conceptglobal/pmc/ResignationActivity;->tvDescriptionStatus:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/conceptglobal/pmc/ResignationActivity;->tvDescriptionStatus:Landroid/widget/TextView;

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

    .line 174
    iget-object v0, p0, Lcom/conceptglobal/pmc/ResignationActivity;->tvLastWorkingDayStatus:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/conceptglobal/pmc/ResignationActivity;->tvLastWorkingDayStatus:Landroid/widget/TextView;

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

    .line 175
    iget-object v0, p0, Lcom/conceptglobal/pmc/ResignationActivity;->tvStatus:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/conceptglobal/pmc/ResignationActivity;->tvStatus:Landroid/widget/TextView;

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

    .line 176
    iget-object v0, p0, Lcom/conceptglobal/pmc/ResignationActivity;->tvArrovedDateStatus:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/conceptglobal/pmc/ResignationActivity;->tvArrovedDateStatus:Landroid/widget/TextView;

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

    .line 178
    iget-object v0, p0, Lcom/conceptglobal/pmc/ResignationActivity;->etresignationDate:Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateInDDMMYYYY()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v0, p0, Lcom/conceptglobal/pmc/ResignationActivity;->etresignationDate:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/ResignationActivity;->setEditableFalse(Landroid/widget/EditText;)V

    return-void
.end method

.method private insertData()V
    .locals 5

    .line 325
    iget-object v0, p0, Lcom/conceptglobal/pmc/ResignationActivity;->etresignationDate:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, "Please Select "

    const-string v2, "Select "

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/conceptglobal/pmc/ResignationActivity;->etresignationDate:Landroid/widget/EditText;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/conceptglobal/pmc/ResignationActivity;->tvresignationDate:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/conceptglobal/pmc/ResignationActivity;->tvresignationDate:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/ResignationActivity;->etReason:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 331
    iget-object v0, p0, Lcom/conceptglobal/pmc/ResignationActivity;->etReason:Landroid/widget/EditText;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/conceptglobal/pmc/ResignationActivity;->tvReason:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/conceptglobal/pmc/ResignationActivity;->tvReason:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 335
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/ResignationActivity;->etDescription:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 336
    iget-object v0, p0, Lcom/conceptglobal/pmc/ResignationActivity;->etDescription:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Enter "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/conceptglobal/pmc/ResignationActivity;->tvDescription:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Please Enter "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/conceptglobal/pmc/ResignationActivity;->tvDescription:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 340
    :cond_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/ResignationActivity;->etLastWorkingDay:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 341
    iget-object v0, p0, Lcom/conceptglobal/pmc/ResignationActivity;->etLastWorkingDay:Landroid/widget/EditText;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/conceptglobal/pmc/ResignationActivity;->tvLastWorkingDay:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/conceptglobal/pmc/ResignationActivity;->tvLastWorkingDay:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 359
    :cond_3
    new-instance v0, Lcom/conceptglobal/pmc/model/ResignationDetails;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/ResignationDetails;-><init>()V

    .line 360
    iget-object v1, p0, Lcom/conceptglobal/pmc/ResignationActivity;->etresignationDate:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/ResignationDetails;->setApplieddate(Ljava/lang/String;)V

    .line 361
    iget-object v1, p0, Lcom/conceptglobal/pmc/ResignationActivity;->etReason:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/ResignationDetails;->setReason(Ljava/lang/String;)V

    .line 362
    iget-object v1, p0, Lcom/conceptglobal/pmc/ResignationActivity;->etDescription:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/ResignationDetails;->setDescription(Ljava/lang/String;)V

    .line 363
    iget-object v1, p0, Lcom/conceptglobal/pmc/ResignationActivity;->etLastWorkingDay:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/ResignationDetails;->setLastworkingdate(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 366
    :try_start_0
    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertResignationData(Lcom/conceptglobal/pmc/model/ResignationDetails;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 369
    :goto_0
    const-string v0, "Data saved successfully"

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 370
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 371
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/ResignationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/conceptglobal/pmc/service/SyncDataService;

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isServiceRunning(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 372
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/ResignationActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Service initiated"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 373
    new-instance v0, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;-><init>(Landroid/content/Context;)V

    .line 374
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/SendDataServiceUtil;->startService()V

    .line 377
    :cond_4
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/ResignationActivity;->finish()V

    return-void
.end method

.method private setEditableFalse(Landroid/widget/EditText;)V
    .locals 2

    const/4 v0, 0x0

    .line 185
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 186
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setClickable(Z)V

    .line 187
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 188
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/ResignationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080097

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private showAlert(Ljava/lang/String;)V
    .locals 3

    .line 532
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 533
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_okText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/ResignationActivity$2;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/ResignationActivity$2;-><init>(Lcom/conceptglobal/pmc/ResignationActivity;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 540
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 541
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private updateDisplay()V
    .locals 3

    .line 439
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p0, Lcom/conceptglobal/pmc/ResignationActivity;->mDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v2, p0, Lcom/conceptglobal/pmc/ResignationActivity;->mMonth:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lcom/conceptglobal/pmc/ResignationActivity;->mYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/ResignationActivity;->mFiledStr:Ljava/lang/String;

    .line 440
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MM-yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 442
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/ResignationActivity;->mFiledStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 443
    iget-object v0, p0, Lcom/conceptglobal/pmc/ResignationActivity;->etSelected:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/conceptglobal/pmc/ResignationActivity;->mFiledStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 445
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public bindResignationTabData()V
    .locals 6

    .line 294
    iget-object v0, p0, Lcom/conceptglobal/pmc/ResignationActivity;->resignationDetails:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 295
    iget-object v0, p0, Lcom/conceptglobal/pmc/ResignationActivity;->resignationDetails:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/ResignationDetails;

    .line 296
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/ResignationDetails;->getResignationstatus()I

    move-result v2

    const/4 v3, 0x2

    const-string v4, ""

    if-ne v2, v3, :cond_0

    .line 297
    iget-object v2, p0, Lcom/conceptglobal/pmc/ResignationActivity;->etresignationDate:Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateInDDMMYYYY()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 298
    iget-object v2, p0, Lcom/conceptglobal/pmc/ResignationActivity;->etresignationDate:Landroid/widget/EditText;

    invoke-direct {p0, v2}, Lcom/conceptglobal/pmc/ResignationActivity;->setEditableFalse(Landroid/widget/EditText;)V

    goto :goto_1

    .line 300
    :cond_0
    iget-object v2, p0, Lcom/conceptglobal/pmc/ResignationActivity;->etresignationDate:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/ResignationDetails;->getApplieddate()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/ResignationDetails;->getApplieddate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/ResignationDetails;->getApplieddate()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_1
    move-object v5, v4

    :goto_0
    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 305
    :goto_1
    iget-object v2, p0, Lcom/conceptglobal/pmc/ResignationActivity;->etReason:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/ResignationDetails;->getReason()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/ResignationDetails;->getReason()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_2
    move-object v5, v4

    :goto_2
    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 306
    iget-object v2, p0, Lcom/conceptglobal/pmc/ResignationActivity;->etDescription:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/ResignationDetails;->getDescription()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/ResignationDetails;->getDescription()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_3
    move-object v5, v4

    :goto_3
    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 307
    iget-object v2, p0, Lcom/conceptglobal/pmc/ResignationActivity;->etLastWorkingDay:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/ResignationDetails;->getLastworkingdate()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/ResignationDetails;->getLastworkingdate()Ljava/lang/String;

    move-result-object v4

    :cond_4
    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 309
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/ResignationDetails;->getResignationstatus()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_5

    .line 310
    iget-object v0, p0, Lcom/conceptglobal/pmc/ResignationActivity;->btnSave:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 311
    iget-object v0, p0, Lcom/conceptglobal/pmc/ResignationActivity;->btnSave:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/ResignationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080097

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 313
    :cond_5
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/ResignationDetails;->getResignationstatus()I

    move-result v1

    if-ne v1, v3, :cond_6

    .line 314
    iget-object v0, p0, Lcom/conceptglobal/pmc/ResignationActivity;->btnSave:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_4

    .line 318
    :cond_6
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/ResignationDetails;->getResignationstatus()I

    move-result v0

    if-nez v0, :cond_7

    .line 319
    iget-object v0, p0, Lcom/conceptglobal/pmc/ResignationActivity;->btnSave:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_7
    :goto_4
    return-void
.end method

.method public bindStatusTabData()V
    .locals 5

    .line 265
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/Queries;->getSelectResignationDetails()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getResignationDetails(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/ResignationActivity;->resignationDetails:Ljava/util/List;

    .line 266
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 267
    iget-object v0, p0, Lcom/conceptglobal/pmc/ResignationActivity;->resignationDetails:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/ResignationDetails;

    .line 268
    iget-object v2, p0, Lcom/conceptglobal/pmc/ResignationActivity;->etresignationDateStatus:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/ResignationDetails;->getApplieddate()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/ResignationDetails;->getApplieddate()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 269
    iget-object v2, p0, Lcom/conceptglobal/pmc/ResignationActivity;->etReasonStatus:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/ResignationDetails;->getReason()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/ResignationDetails;->getReason()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v4

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 270
    iget-object v2, p0, Lcom/conceptglobal/pmc/ResignationActivity;->etDescriptionStatus:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/ResignationDetails;->getDescription()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/ResignationDetails;->getDescription()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v4

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 271
    iget-object v2, p0, Lcom/conceptglobal/pmc/ResignationActivity;->etLastWorkingDayStatus:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/ResignationDetails;->getLastworkingdate()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/ResignationDetails;->getLastworkingdate()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_3
    move-object v3, v4

    :goto_3
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v2, p0, Lcom/conceptglobal/pmc/ResignationActivity;->etArrovedDateStatus:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/ResignationDetails;->getReviweddate()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/ResignationDetails;->getReviweddate()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_4
    move-object v3, v4

    :goto_4
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 273
    iget-object v2, p0, Lcom/conceptglobal/pmc/ResignationActivity;->etReviewdByName:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/ResignationDetails;->getReviewedbyname()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/ResignationDetails;->getReviewedbyname()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_5
    move-object v3, v4

    :goto_5
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v2, p0, Lcom/conceptglobal/pmc/ResignationActivity;->etReviewdByName:Landroid/widget/EditText;

    invoke-direct {p0, v2}, Lcom/conceptglobal/pmc/ResignationActivity;->setEditableFalse(Landroid/widget/EditText;)V

    .line 275
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/ResignationDetails;->getResignationstatus()I

    move-result v2

    if-nez v2, :cond_6

    .line 276
    iget-object v0, p0, Lcom/conceptglobal/pmc/ResignationActivity;->etStatus:Landroid/widget/EditText;

    const-string v1, "Approval Pending"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 277
    :cond_6
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/ResignationDetails;->getResignationstatus()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 278
    iget-object v0, p0, Lcom/conceptglobal/pmc/ResignationActivity;->etStatus:Landroid/widget/EditText;

    const-string v2, "Approved"

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v0, p0, Lcom/conceptglobal/pmc/ResignationActivity;->btnSave:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 280
    iget-object v0, p0, Lcom/conceptglobal/pmc/ResignationActivity;->btnSave:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/ResignationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080097

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    .line 281
    :cond_7
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/ResignationDetails;->getResignationstatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    .line 282
    iget-object v0, p0, Lcom/conceptglobal/pmc/ResignationActivity;->etStatus:Landroid/widget/EditText;

    const-string v1, "Rejected"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 287
    :cond_8
    :goto_6
    const-string v0, "RESIGNATION_STATUS_SYNC_TIME"

    invoke-static {p0, v0}, Lcom/conceptglobal/pmc/utils/SharedPrefManager;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    move-object v4, v0

    .line 289
    :cond_9
    iget-object v0, p0, Lcom/conceptglobal/pmc/ResignationActivity;->tvStatusUpdatedTime:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Resignation Status verified  time: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    return-void
.end method

.method protected displayNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 194
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/16 v1, 0x8

    const v2, 0x7f080200

    const v3, 0x7f0801ff

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 234
    :sswitch_0
    iget p1, p0, Lcom/conceptglobal/pmc/ResignationActivity;->tab_selected:I

    if-ne p1, v6, :cond_1

    .line 235
    iget-object p1, p0, Lcom/conceptglobal/pmc/ResignationActivity;->tvTab1:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/ResignationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 236
    iget-object p1, p0, Lcom/conceptglobal/pmc/ResignationActivity;->tvTab2:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/ResignationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 237
    iput v5, p0, Lcom/conceptglobal/pmc/ResignationActivity;->tab_selected:I

    .line 238
    iget-object p1, p0, Lcom/conceptglobal/pmc/ResignationActivity;->ll_resignation:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 239
    iget-object p1, p0, Lcom/conceptglobal/pmc/ResignationActivity;->ll_status:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 240
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/ResignationActivity;->bindStatusTabData()V

    .line 241
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 242
    new-instance p1, Lcom/conceptglobal/pmc/ResignationActivity$ArrovalStatusTask;

    invoke-direct {p1, p0, v4}, Lcom/conceptglobal/pmc/ResignationActivity$ArrovalStatusTask;-><init>(Lcom/conceptglobal/pmc/ResignationActivity;Lcom/conceptglobal/pmc/ResignationActivity$1;)V

    new-array v0, v7, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/ResignationActivity$ArrovalStatusTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 225
    :sswitch_1
    iget p1, p0, Lcom/conceptglobal/pmc/ResignationActivity;->tab_selected:I

    if-ne p1, v5, :cond_1

    .line 226
    iget-object p1, p0, Lcom/conceptglobal/pmc/ResignationActivity;->tvTab1:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/ResignationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 227
    iget-object p1, p0, Lcom/conceptglobal/pmc/ResignationActivity;->tvTab2:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/ResignationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 228
    iput v6, p0, Lcom/conceptglobal/pmc/ResignationActivity;->tab_selected:I

    .line 229
    iget-object p1, p0, Lcom/conceptglobal/pmc/ResignationActivity;->ll_resignation:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 230
    iget-object p1, p0, Lcom/conceptglobal/pmc/ResignationActivity;->ll_status:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 218
    :sswitch_2
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 219
    new-instance p1, Lcom/conceptglobal/pmc/ResignationActivity$ArrovalStatusTask;

    invoke-direct {p1, p0, v4}, Lcom/conceptglobal/pmc/ResignationActivity$ArrovalStatusTask;-><init>(Lcom/conceptglobal/pmc/ResignationActivity;Lcom/conceptglobal/pmc/ResignationActivity$1;)V

    new-array v0, v7, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/ResignationActivity$ArrovalStatusTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 221
    :cond_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_pleaseCheckDataError()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/ResignationActivity;->showAlert(Ljava/lang/String;)V

    goto :goto_0

    .line 208
    :sswitch_3
    iget-object p1, p0, Lcom/conceptglobal/pmc/ResignationActivity;->etresignationDate:Landroid/widget/EditText;

    iput-object p1, p0, Lcom/conceptglobal/pmc/ResignationActivity;->etSelected:Landroid/widget/EditText;

    .line 209
    invoke-virtual {p0, v7}, Lcom/conceptglobal/pmc/ResignationActivity;->showDialog(I)V

    goto :goto_0

    .line 196
    :sswitch_4
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->hideInputKeyboard(Landroid/content/Context;)V

    .line 199
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

    const-string v1, "ResignationReason"

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/common/Queries;->getDropdownValuesBasedItemType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/conceptglobal/pmc/ResignationActivity;->tvReasonID:Landroid/widget/TextView;

    move-object v0, v6

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/conceptglobal/pmc/common/ListPopupOne;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;)V

    .line 201
    invoke-virtual {v6}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const v0, 0x7f1101b9

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 202
    invoke-virtual {v6}, Lcom/conceptglobal/pmc/common/ListPopupOne;->show()V

    .line 203
    invoke-virtual {v6}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 213
    :sswitch_5
    iget-object p1, p0, Lcom/conceptglobal/pmc/ResignationActivity;->etLastWorkingDay:Landroid/widget/EditText;

    iput-object p1, p0, Lcom/conceptglobal/pmc/ResignationActivity;->etSelected:Landroid/widget/EditText;

    .line 214
    invoke-virtual {p0, v6}, Lcom/conceptglobal/pmc/ResignationActivity;->showDialog(I)V

    goto :goto_0

    .line 259
    :sswitch_6
    invoke-direct {p0}, Lcom/conceptglobal/pmc/ResignationActivity;->insertData()V

    :catch_0
    :cond_1
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0900af -> :sswitch_6
        0x7f090170 -> :sswitch_5
        0x7f090177 -> :sswitch_4
        0x7f0901d7 -> :sswitch_3
        0x7f090263 -> :sswitch_2
        0x7f0904db -> :sswitch_1
        0x7f0904dc -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 78
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0039

    .line 79
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/ResignationActivity;->setContentView(I)V

    .line 80
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Apply Resignation ("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    .line 81
    invoke-direct {p0}, Lcom/conceptglobal/pmc/ResignationActivity;->initialization()V

    .line 82
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/ResignationActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 84
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/Queries;->getSelectResignationDetails()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getResignationDetails(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/ResignationActivity;->resignationDetails:Ljava/util/List;

    .line 85
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/ResignationActivity;->bindResignationTabData()V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 9

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 386
    :cond_0
    new-instance p1, Landroid/app/DatePickerDialog;

    iget-object v3, p0, Lcom/conceptglobal/pmc/ResignationActivity;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v4, p0, Lcom/conceptglobal/pmc/ResignationActivity;->mYear:I

    iget v5, p0, Lcom/conceptglobal/pmc/ResignationActivity;->mMonth:I

    iget v6, p0, Lcom/conceptglobal/pmc/ResignationActivity;->mDay:I

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 388
    :try_start_0
    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/DatePicker;->getMinDate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/conceptglobal/pmc/ResignationActivity;->defaultMinDate:J

    .line 389
    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/DatePicker;->getMaxDate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/conceptglobal/pmc/ResignationActivity;->defaultMaxDate:J

    .line 390
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 392
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 393
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 395
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 396
    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/widget/DatePicker;->setMinDate(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p1

    .line 410
    :cond_1
    :try_start_1
    new-instance p1, Landroid/app/DatePickerDialog;

    iget-object v5, p0, Lcom/conceptglobal/pmc/ResignationActivity;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v6, p0, Lcom/conceptglobal/pmc/ResignationActivity;->mYear:I

    iget v7, p0, Lcom/conceptglobal/pmc/ResignationActivity;->mMonth:I

    iget v8, p0, Lcom/conceptglobal/pmc/ResignationActivity;->mDay:I

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 96
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/ResignationActivity;->finish()V

    .line 100
    :goto_0
    invoke-super {p0, p1}, Lcom/conceptglobal/pmc/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onResume()V
    .locals 0

    .line 90
    invoke-super {p0}, Lcom/conceptglobal/pmc/BaseActivity;->onResume()V

    return-void
.end method
